# coding: utf-8
require 'test_helper'
 
class Bird < ActiveRecord::Base
  acts_as_spingying
end 

class Pet < ActiveRecord::Base
  acts_as_spingying :pingyingable => :nickname,:spingying => :py
end
 
class ActsAsSpingyingTest < Test::Unit::TestCase
  load_schema

   def test_pingying_generate
     bird = Bird.create(:name => "愤怒的小鸟")
     assert_equal "fndxn", bird.spingying
   end
   
   def test_pingying_generate_with_para
     bird = Pet.create(:nickname => "当当")
     assert_equal "dd", bird.py
   end
   
   def test_pingying_generate_for_blank
     bird = Pet.create(:nickname => "")
     assert_equal "", bird.py
   end
   
end