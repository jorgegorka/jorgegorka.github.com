class GenerateList
  require 'yaml'

  def self.read_files
    dir = Dir.entries('./')
    dir -= ['.', '..']
    dir.each {|f| read_yaml(f)}
  end

  def self.read_yaml(name)
    content = File.read(File.join('./', name))

    content.sub!(/wp-content\/uploads/, "images")
    File.open(File.join('./', name), "w") {|f| f.write(content) }
    #begin
      #if content =~ /^(---\s*\n.*?\n?)^(---\s*$\n?)/m
        #content = $POSTMATCH
        #data = ::YAML.load($1)
        ##cat  = data['categories']
      #end
    #rescue => e
      #puts "YAML Exception reading #{name}: #{e.message}"
    #end
  end
end

GenerateList.read_files
