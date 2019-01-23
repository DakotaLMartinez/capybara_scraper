# CapybaraScraper

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/capybara_scraper`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capybara_scraper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capybara_scraper

## Usage

To use this gem you'll want to `require 'capybara_scraper'` and then create a Browser object which you can call `.visit` on to go to specific urls. Once you visit a page, you can call `.page` on the browser object and that will return a Nokogiri node structure for the html of the page.

```
@browser = CapybaraScraper::Browser.new
@browser.visit("https://www.islands.com/top-20-best-islands-to-live-on/")
@browser.page.css("#article-body") #=> returns Nokogiri data structure for nodes matching the id 'article-body'
```

If you're transitioning from using Nokogiri without integrating capybara and poltergeist, you can do something like this as well:

```
doc = CapybaraScraper::Browser.new.visit("https://www.islands.com/top-20-best-islands-to-live-on/").page
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'DakotaLMartinez'/capybara_scraper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CapybaraScraper project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'DakotaLMartinez'/capybara_scraper/blob/master/CODE_OF_CONDUCT.md).
