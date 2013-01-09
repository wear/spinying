# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "spinying/version"

Gem::Specification.new do |s|
  s.name        = "spinying"
  s.version     = Spinying::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['wear']
  s.email       = ['wear63659220@gmail.com']
  s.summary     = %q{汉字自动生成首字母拼音.比如"蜂鸟"可转成"fn"}
  s.description = %q{汉字自动生成首字母拼音.比如"蜂鸟"可转成"fn"，简单，方便，不依赖任何外部服务！}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end
