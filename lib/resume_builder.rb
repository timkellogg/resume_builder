class Job

	@@all_jobs = []

	define_method :initialize do |date_started, date_ended, position, employer, description|
		@date_started = date_started 
		@date_ended = date_ended 
		@position = position 
		@employer = employer 
 
	end 
	
	define_singleton_method :all do 
		@@all_jobs
	end 

	define_method :save do 
		@@all_jobs.push self 
	end 
	
end 