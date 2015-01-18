# Faker::Precure
Test data generator using Precure(Pretty Cure)

[![Gem Version](https://badge.fury.io/rb/faker-precure.svg)](http://badge.fury.io/rb/faker-precure)
[![Build Status](https://travis-ci.org/sue445/faker-precure.svg?branch=master)](https://travis-ci.org/sue445/faker-precure)
[![Code Climate](https://codeclimate.com/github/sue445/faker-precure.png)](https://codeclimate.com/github/sue445/faker-precure)
[![Coverage Status](https://coveralls.io/repos/sue445/faker-precure/badge.png)](https://coveralls.io/r/sue445/faker-precure)
[![Dependency Status](https://gemnasium.com/sue445/faker-precure.svg)](https://gemnasium.com/sue445/faker-precure)

## Installation

Add this line to your application's Gemfile:

    gem 'faker-precure'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install faker-precure

## Usage

```ruby
require "faker/precure"

Faker::Precure.human_name
#=> "黄瀬やよい"

Faker::Precure.precure_name
#=> "キュアアクア"

Faker::Precure.cast_name
#=> "豊口めぐみ"

Faker::Precure.title
#=> "Yes！ プリキュア5"

Faker::Precure.transform_message
#=> "レッツプレイ！プリキュアモジュレーション！！\n爪弾くは女神の調べ！ キュアミューズ！\n届け4人の組曲！スイートプリキュア！"

Faker::Precure.user_name
#=> "cure_mint"
```

## Example of factory
```ruby
FactoryGirl.define do
  factory :user do
    name { Faker::Precure.human_name }
  end
end
```

## Changelog
### master
[full changelog](http://github.com/sue445/faker-precure/compare/v0.0.3...master)

### v0.0.3
[full changelog](http://github.com/sue445/faker-precure/compare/v0.0.2...v0.0.3)

* Impl `Faker::Precure#cast_name`
  * https://github.com/sue445/faker-precure/pull/3

### v0.0.2
[full changelog](http://github.com/sue445/faker-precure/compare/v0.0.1...v0.0.2)

* Update dependency gem versions

### v0.0.1
* first release

## Contributing

1. Fork it ( https://github.com/sue445/faker-precure/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
