require 'rubygems'
require 'i18n'
require 'active_support/core_ext'

ruby_dir = {
  assignment: 'lib',
  spec: 'spec/lib',
}
repository = 'https://github.com/enfactv/assignment'

desc 'Create new assignment'
task :new_assignment, :title do |t, args|
  title = args.title.presence || get_stdin('Enter a title for assignment: ')

  assignment_number = Dir["#{ruby_dir[:assignment]}/*.rb"].length
  puts "Create new assignment: #{title}"
  assignment_path = "#{ruby_dir[:assignment]}/#{title}.rb"
  File.open(assignment_path, 'w') do |f|
    f.write <<-CODE.gsub(/^\s{4}/, '')
    # Q#{assignment_number}. #{title}

    module #{title.camelcase}
    end
    CODE
  end

  File.open("#{ruby_dir[:spec]}/#{title}_spec.rb", 'w') do |f|
    f.write <<-CODE.gsub(/^\s{4}/, '')
    require 'spec_helper'

    # Rspec for Q.#{assignment_number} #{title}
    # #{assignment_path}

    describe #{title.camelcase} do
    end
    CODE
  end
end

desc 'Solve the assignment'
task :solve, :title do |t, args|
  title = ''
  loop do
    title = get_stdin('Enter a title for assignment: ')
    assignment_path = "#{ruby_dir[:assignment]}/#{title}.rb"
    if File.exists?(assignment_path)
      break
    else
      puts "Not found: #{assignment_path}"
    end
  end

  branch = owner? ? "answer_alpaca_#{title}" : "answer_#{title}"
  sys "git checkout -b #{branch}"
end

desc 'Send pull-request'
task :pull_request, :title do |t, args|
  branch = branch_name
  message = "[#{branch}](#{ENV['USER']}) #{Time.now.strftime('%x %R')} "
  sys "git push #{repository} #{branch}"
  sys "hub pull-request '#{message}' -b enfactv:master -h enfactv:#{branch}"
end

def owner?
  ENV['USER'] == 'alpaca-tc'
end

def get_stdin(message)
  print message
  STDIN.gets.chomp
end

def branch_name
  File.read('.git/HEAD').strip.gsub('ref: refs/heads/', '')
end

def sys(message)
  print "#{message}\n"
  `#{message}`
end
