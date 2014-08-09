class MembersController < ApplicationController

	def home
		
		# Hardworker.perform_async('bob', 5) ignore this line... was trying to setup automatic updater/worker
				session = GoogleDrive.login(ENV["mindeventsorg@gmail.com"], ENV["events2012"])
				ws = session.spreadsheet_by_key("1q8CzSMk2ro_AbEf_oEBkHSr5bVYL2jzKMI2GmbWzCZE").worksheets[0]
				ws.reload


				@rows = p ws.rows
		# HardWorker.perform_async('bob', 4)

        # @rows = Rails.cache.fetch([key, params], expires: 30.minutes) do	
		# 		session = GoogleDrive.login("my@gmail.com", "")

		# 		ws = session.spreadsheet_by_key(key).worksheets[0]	
		# 		ws.reload.rows
	end
				
				
end