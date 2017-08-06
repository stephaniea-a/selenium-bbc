require 'spec_helper'


describe Selenium do

	before(:all) do
		@bbc_site = BbcSite.new
		@bbc_homepage.get_site("http://www.bbc.co.uk/news")
	end

	it 'should go to the bbc page' do
		expect(@bbc_site.bbc_homepage.current_url).to eq 'http://www.bbc.co.uk/news'
	end

	it 'should check the bbc sign in link is displayed' do
		expect(@bbc_homepage.find_id('idcta-link').displayed?).to eq true
	end

	it 'clicking on the sign in link should open sign in page' do
		@bbc_homepage.find_id('idcta-link').click

		expect(@bbc_homepage.current_url).to eq('https://account.bbc.com/signin')
		expect(@bbc_homepage.find_id('username-input').displayed?).to eq true
		expect(@bbc_homepage.find_id('password-input').displayed?).to eq true

	end

	it 'should enter a username on the sign in page' do
		@bbc_homepage.find_id('username-input').send_keys("testname")
		
		expect(@bbc_homepage.find_id('username-input')['value']).to eq "testname"
	end

	it 'should enter a password on the sign in page' do
		@bbc_homepage.find_id('password-input').send_keys("password")

		expect(@bbc_homepage.find_id('password-input')['value']).to eq "password"

	end

	it 'should click on sign in button and throw an error' do
		@bbc_homepage.find_id('submit-button').click

		# expect()'form-message--error'
	end


end
