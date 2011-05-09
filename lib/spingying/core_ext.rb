# coding: utf-8
require File.dirname(__FILE__) + '/constant'

module CoreExt
    def self.get_pinying(word)
      pingying = ""
      word.each_codepoint do |codepoint|
        pingying << (hanzi?(codepoint) ? ZHUNICODETABLE[codepoint-ZHUNICODESTART] : codepoint)
      end
      return pingying.downcase
    end
    
    private
    
    def self.hanzi?(hanzi_code_point)  
        (ZHUNICODESTART..ZHUNICODEEND) === hanzi_code_point;  
    end
end