---
comments: false
date: 2008-07-17 02:22:00
layout: post
slug: attachment_fu-s3-uploads-with-backgroundjob
title: attachment_fu s3 uploads with backgroundjob
alias: [5580/attachment_fu-s3-uploads-with-backgroundjob/, 5580/attachment_fu-s3-uploads-with-backgroundjob]
alias: [5580/attachment_fu-s3-uploads-with-backgroundjob/, 5580/attachment_fu-s3-uploads-with-backgroundjob]
wordpress_id: 5580
categories:
- Desarrollo
tags:
- files
- Internet
- rails
- uploads
---

Thanks to Jon Guymon for his article [bj-makes-attachment_fu-happy](http://blarg.slackworks.com/posts/bj-makes-attachment_fu-happy) that really help me solve a problem I was having with mongrel.





Attachment_fu + s3 sometimes do very weird things that makes mongrel to freeze.  After a lot of googling I realize that the best solution to avoid problems was to do the uploads to S3 in a background proccess apart from mongrel.




I started with Jon Guymon approach and it worked well but i needed to create thumbnails and the local files to be deleted after the uploading to S3 was finished.




Just changing the part of attachment_fu that actually uploads the file to S3 do the trick.




Open  vendor/plugins/attachment_fu/lib/technoweenie/attachment_fu/backends/s3_backend.rb and change the method save_to_storage to background the uploads.




This is the original method:


`
def save_to_storage  

 if save_attachment?  

S3Object.store(  

full_filename,  

(temp_path ? File.open(temp_path) : temp_data),  

bucket_name,  

   :content_type => content_type,  

   :access => attachment_options[:s3_access]  

    )  

    @old_filename = nil  

    true  

  end  

end  

`


In my version I copy the file to a temporary directory in tmp/s3uploads (just to make sure the file does not disappear) then I add the upload task to the background queue


`
def save_to_storage  

 if save_attachment?  

my_temp_file = RAILS_ROOT+'/tmp/s3uploading/'+"#{rand Time.now.to_i}#{filename || 'attachment'}"  

                

             if temp_path  

               File.open(my_temp_file,"w+") do |tmp|  

                 tmp.close  

                 FileUtils.cp temp_path, tmp.path  

               end  

             else  

               File.open(my_temp_file, "w+") do |tmp|  

                 tmp.binmode  

                 tmp.write temp_data  

                 tmp.close  

               end  

               fichero = RAILS_ROOT+'/tmp/s3uploading/' + "#{rand Time.now.to_i}#{filename || 'attachment'}"  

             end  

               

             Bj.submit("./script/runner ./jobs/s3_uploader.rb " +  

               full_filename + " " +  

               my_temp_file  + " " +  

               bucket_name  + " " +  

               content_type + " " +  

               attachment_options[:s3_access].to_s  

             )  

           end  

  

           @old_filename = nil  

           true  

end  

`



This way attachment_fu will spawn a task for every file it creates.




Now edit the file Jon Guymon created to handle the upload (jobs/s3_uploader.rb)




This is how my file looks like


`
Base.establish_connection!(:access_key_id     => ACCESS_KEY,  

                           :secret_access_key => SECRET_KEY)  

  

S3Object.store(ARGV[0],  

                File.open(ARGV[1]),  

                ARGV[2],  

                :content_type => ARGV[3],  

                :access => ARGV[4]  

              )  

              

File.delete(ARGV[1])  

`


A simple upload to S3 and after finishing it I delete the temporary file created in tmp/s3uploads/





So far mongrel is doing its job with no more hangs and as a side effect users can uploads their files faster.




There are a lot of pages about backgrounding tasks and a good recipe in Rails recipes 2
