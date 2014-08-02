class MembersController < ApplicationController

	def home
	
		# Hardworker.perform_async('bob', 5) ignore this line... was trying to setup automatic updater/worker

		require "rubygems"
		require "google_drive"

			session = GoogleDrive.login("mygmailname", "mypassword")

				ws = session.spreadsheet_by_key("1q8CzSMk2ro_AbEf_oEBkHSr5bVYL2jzKMI2GmbWzCZE").worksheets[0]

					@b2 = p ws[2,2]
					@c2 = p ws[2,3]
					@d2 = p ws[2,4]
					@e2 = p ws[2,5]
					@f2 = p ws[2,6]
					@g2 = p ws[2,7]
					@h2 = p ws[2,8]
					@i2 = p ws[2,9]

					@b3 = p ws[3,2]
					@c3 = p ws[3,3]
					@d3 = p ws[3,4]
					@e3 = p ws[3,5]
					@f3 = p ws[3,6]
					@g3 = p ws[3,7]
					@h3 = p ws[3,8]
					@i3 = p ws[3,9]

	end

end