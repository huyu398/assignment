require 'rubygems'
require 'active_support/core_ext/object/blank'

ruby_dir = {
  assignment: 'lib',
  spec: 'spec/lib',
}

desc 'Create new assignment'
task :new_assignment, :title do |t, args|
  title = args.title.presence || get_stdin('Enter a title for assignment: ')

  assignment_number = Dir["#{ruby_dir[:assignment]}/*.rb"].length
  File.open("#{ruby_dir[:assignment]}/#{title}.rb", 'w') do |f|
    f.write "# Q#{assignment_number}. #{title}"
  end

  File.open("#{ruby_dir[:spec]}/#{title}_spec.rb", 'w') do |f|
    f.write <<-CODE.gsub(/^\s*/, '')
    require 'spec_helper'"
    # A#{assignment_number}. #{title}
    CODE
  end
end

def get_stdin(message)
  print message
  STDIN.gets.chomp
end
