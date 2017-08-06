require_relative "../bbc_site"
require 'selenium-webdriver'

RSpec.configure do |config|
  config.formatter = :documentation
  config.color = true
end