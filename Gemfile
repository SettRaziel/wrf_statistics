# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"
gem 'ruby_utils', github: 'SettRaziel/ruby_utils'
gem 'wrf_library', github: 'SettRaziel/wrf_library'

group :test do
  gem "coveralls", require: false, group: :coverage
  gem "rspec"
  gem "rake"
  gem "rack-test"
end
