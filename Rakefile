desc "Create Kata structure"
task :create_structure do
  project_name = ENV['NAME']
  mkdir "#{project_name}"
  mkdir "#{project_name}/lib"
  mkdir "#{project_name}/spec"
  FileUtils.touch "#{project_name}/lib/#{project_name}.rb"
  FileUtils.touch "#{project_name}/spec/#{project_name}_spec.rb"
  FileUtils.touch "#{project_name}/spec/spec_helper.rb"
  File.open("#{project_name}/spec/spec_helper.rb", "w") do |s|
    s << <<-SPEC
require 'spec'

Spec::Runner.configure do |config|
end
    SPEC
  end
end