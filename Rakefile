#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

AhnCallengine::Application.load_tasks


# This file is for the "rake" tool which automates project-related tasks. If you need to automate things, you can create
# a new Rake task here. See http://rake.rubyforge.org for more info.
require 'rubygems'
require 'bundler'

begin
  require 'adhearsion/tasks'
rescue LoadError
  STDERR.puts "\nCannot load Adhearsion! Not all Rake tasks will be loaded!\n\n"
end

desc "Writes a .gitignore file that ignores certain SCM annoyances such as log files"
task :gitignore do
  ignore_file = "#{Dir.pwd}/.gitignore"
  if File.exists? ignore_file
    STDERR.puts "File #{ignore_file} already exists!"
  else
    File.open ignore_file, 'w' do |file|
      # Add other files to the Array below
      %w[ log ].each do |pattern|
        file.puts pattern
      end
    end
  end
end
