# RailsExtras
[![Gem Version](https://badge.fury.io/rb/rails_extras.png)](http://badge.fury.io/rb/rails_extras)

This gem provides extras methods for Rails application.

## Installation

Add this line to your application's Gemfile:

    gem 'rails_extras'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_extras

## Usage

```ruby
add_link('http://example.com', class: 'text-info') do |tag|
  tag.space "link"
  [1, 2, 3].each do |item|
    tag << item.to_s
  end
end #=> <a href='http://example.com', class: 'text-info'>link 123</a>
```
# License

RailsExtras uses the MIT license. Please check the [LICENSE][] file for more details.

[license]: https://github.com/raglub/rails_extras/blob/master/LICENSE
