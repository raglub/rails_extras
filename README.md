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

### Helper

```ruby
add_link('http://example.com', class: 'text-info') do |tag|
  tag.space "link"
  [1, 2, 3].each do |item|
    tag << item.to_s
  end
end #=> <a href='http://example.com', class: 'text-info'>link 123</a>
```

### RSpec

Some times are tests which are faster than browser can reload or load page
(click link). For this situations we should use ```wait_for_ajax``` mathod.
If you want use this method you first should add to file ```spec_helper.rb```
this configuration

```ruby
RSpec.configure do |config|
  config.include ::RailsExtras::RSpec::Support::WaitForAjax, type: :feature
end
```

and then you can add ```wait_for_ajax``` method to your scenario

```ruby
click_button "Next"
wait_for_ajax
expect(page).to have_content "Next page"
```

# License

RailsExtras uses the MIT license. Please check the [LICENSE][] file for more details.

[license]: https://github.com/raglub/rails_extras/blob/master/LICENSE
