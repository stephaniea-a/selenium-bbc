require_relative 'bbc_site'

class BbcHomepage < BbcSite

	def find_id(id_name)
		@driver.find_element(:id, id_name)
	end

	def get_site(site)
		@driver.get(site)
	end

	def current_url
		@driver.current_url
	end

end


# bbc homepage, click on sign in link, send_keys invalid and try and log in 

# ruby system block that pauses for 5 secs
# sleep(1)

# # pass symbol and then reference
# driver.find_element(:id, 'idcta-username').click
# # Usernames can only include... Letters, numbers and these characters: ?/|}{+=_-^~`%$#
# driver.find_element(:id, 'username-input').send_keys(random.generate_code(8))
# # six characters or more
# driver.find_element(:id, 'password-input').send_keys(random.generate_code(8))
# # driver.find_element(:id, 'submit-button').click
# driver.find_element(:id, 'submit-button').submit
# sleep(3)

# driver.get 'http://bbc.co.uk'
# driver.find_element(:id, 'idcta-username').displayed?
# sleep(3)
# driver.find_element(:id, 'idcta-username').selected?
# sleep(3)

# def generate_code(number)
	#   range = [*'0'..'9',*'A'..'Z',*'a'..'z']
	#   Array.new(number){ range.sample }.join
	# end
