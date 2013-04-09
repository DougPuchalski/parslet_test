# -*- coding: utf-8 -*-
ROOT = File.expand_path('..', __FILE__)

$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'rubygems'
require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'parslet_test'
end

begin
  $: << File.join(ROOT, 'vendor/lock-o-motion/lib')
  require 'lock-o-motion'

  $: << File.join(ROOT, 'vendor/MocRuby/lib')
  require 'moc_ruby'

  Lotion.setup do |app|
    app.require 'strscan'
    app.require 'stringio'
    app.require 'blankslate'
  end
end
