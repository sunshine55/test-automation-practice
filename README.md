# Prerequisites

- Ruby 1.9.3 or greater: [Download Ruby](http://www.ruby-lang.org/en/downloads/)
- Ruby Gems: [RubyGems](http://rubygems.org/)
- Bundler: `gem install bundler rake`

# Configuration

- Run `bundle install`

# Running Features

- To run all features: `rake`
- To run all features against a specific environment: `rake TEST_ENV=your_environment_name_here`
- To run a specific feature: `rspec spec/integration/session_spec.rb`
- To run a specific feature against a specific environment: `TEST_ENV=your_environment_name_here rspec spec/integration/session_spec.rb`
- To generate HTML documentation: `rspec --format h --out test-results.html spec`
- To see more RSpec options: `rspec --help`

# Additional Documentation

- [RSpec Documentation](http://relishapp.com/rspec)
- [Capybara GitHub Repository](http://github.com/jnicklas/capybara) (for actions such as `click_link`, `click_button`, etc.)
- [Integration Testing Example](http://testerstories.com/?p=30)
- Rails style coding guide:
  - [Rails Style Guide](https://github.com/bbatsov/rails-style-guide#rspec)
  - [Better Specs](http://betterspecs.org/)
- Ruby coding guide style:
  - [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide)

# RSpec Guidelines

- Avoid duplication like the plague! One change to the production code can mean many, many changes to the test code otherwise.
- The spec should be understandable to a tester who is not a programmer. Put operations requiring many little steps in the helper class for that page, so that the spec is more readable.
- Try to write your method names and code so that your tests read like simple English sentences.
- Use custom matchers to make tests more readable and to avoid duplication (see `matchers.rb`). For a more complex example, see [this gist](https://gist.github.com/1233333).

# Notes on Capybara

- Timing can be a problem with UIs that use a lot of AJAX (e.g., auto-complete). Sometimes it is just not worth it!
- The following Capybara methods (among others) will wait up to the configured timeout period for the element to appear and will throw an exception if nothing is found:
  - `click_link_or_button`
  - `find`
  - `fill_in`
- The following Capybara methods do not wait and will return immediately with results, which will be empty or `nil` if no element(s) is found:
  - `all`
  - `first`
- Avoid using the Capybara method `wait_until`. It is almost always unnecessary, as the Capybara methods noted above will wait for elements to appear.  
  See [this page](http://www.elabs.se/blog/53-why-wait_until-was-removed-from-capybara) for more details.
