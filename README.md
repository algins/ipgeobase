[![Actions Status](https://github.com/algins/ipgeobase/workflows/Ruby/badge.svg)](https://github.com/algins/ipgeobase/actions)

# Ipgeobase

IP geolocation. Provides information about IP address geolocation.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ipgeobase'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ipgeobase

## Usage

```ruby
ip_meta = Ipgeobase.lookup('24.48.0.1')
ip_meta.city # => Montreal
ip_meta.country # => Canada
ip_meta.countryCode # => CA
ip_meta.lat # => 45.6085
ip_meta.lon # => -73.5493
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/algins/ipgeobase.
