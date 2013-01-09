# Spingying - 获得汉字拼音首字母


## 简介

汉字自动生成拼音首字母.比如"蜂鸟"可转成"fn"，简单，方便，不依赖任何外部服务！


## 用法

 `
 Spinying.parse(:word => '南方周末').should == 'nfzm'
 `

简体中文会返回拼音首字母，英文则返回原文。

注意：经测试繁体字母对应还有问题

## 作者

Stephen wear636359220@gmail.com

Copyright (c) 2013 Stephen, released under the MIT license
