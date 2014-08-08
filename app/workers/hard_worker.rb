class HardWorker
	include Sidekiq::Worker

	def perform(name, count)
		puts "This is #{name}"
	end
end