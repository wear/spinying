# coding: utf-8

require File.dirname(__FILE__) + '/core_ext'

module Spingying
  def self.included(base)
    base.send :extend, ClassMethods
    base.send :include, InstanceMethods
  end
  
  module ClassMethods
    def acts_as_spingying(options = {})
      cattr_accessor :spingying_field,:pingyingable_field
      self.pingyingable_field = (options[:pingyingable] || :name)
      self.spingying_field = (options[:spingying] || :spingying)
      before_save :generate_pingying
    end
  end
  
  def generate_pingying
    send("#{self.class.spingying_field}=",CoreExt.get_pinying(self.send(pingyingable_field)))
  end
  
  module InstanceMethods
  end
  
end

ActiveRecord::Base.send :include, Spingying