# coding: utf-8
require "spinying/version.rb"
require 'spinying/core_ext'

module Spinying  
  def self.parse(options = {})
    Spinying::CoreExt.get_pinying(options[:word])
  end
end




