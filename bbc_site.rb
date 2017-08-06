require_relative 'bbc_homepage'
require_relative 'sign_in_page'

class BbcSite

	def initialize
		Selenium::WebDriver::Chrome.driver_path = '/usr/local/bin/chromedriver'
		@driver = Selenium::WebDriver.for :chrome
	end

	def self.bbc_homepage
		@bbc_homepage = BbcHomepage.new
	end

	def self.sign_in_page
		@sign_in_page = SignInPage.new
	end

end