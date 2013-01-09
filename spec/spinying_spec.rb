# encoding: utf-8
require 'spec_helper'

describe Spinying do
  it 'should get correct pingying for simple english' do
    Spinying.parse(:word => '南方周末').should == 'nfzm'
  end

  it 'should return english itself if english' do
    Spinying.parse(:word => 'southWeekend').should == 'southweekend'
  end

  # 繁体中文还有问题
  # it 'should return correct pingying for trandition chinese' do
  #   Spinying.parse(:word => '中華民族').should == 'zhmz'    
  # end
end