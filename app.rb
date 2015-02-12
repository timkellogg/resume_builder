require 'sinatra'
require './lib/resume_builder.rb'

get '/' do 
	erb :index
end 

post '/resume' do 
	
	
	# basic information 
	name = params.fetch 'name'
	email = params.fetch 'email'
	phone = params.fetch 'phone'
	
	# objective / skills 
	objective = params.fetch 'objective'
	skills = params.fetch 'skills'
	
	# job 1 
	job_1_position = params.fetch 'job-1-position'
	job_1_employer = params.fetch 'job-1-employer'
	job_1_date = (params.fetch 'job-1-date-started' - 'job-1-date-ended')
	job_1_description = params.fetch 'job-1-description'
	
	job1 = Job.new(job_1_date, job_1_position, job_1_employer, job_1_date)
	
	# job 2
	job_2_position = params.fetch 'job-2-position'
	job_2_employer = params.fetch 'job-2-employer'
	job_2_date = (params.fetch 'job-2-date-started' - 'job-2-date-ended')
	job_2_description = params.fetch 'job-2-description'
	
	job2 = Job.new(job_2_date, job_2_position, job_2_employer, job_2_date)
	
	# job 3
	job_3_position = params.fetch 'job-3-position'
	job_3_employer = params.fetch 'job-3-employer'
	job_3_date = (params.fetch 'job-3-date-started' - 'job-3-date-ended')
	job_3_description = params.fetch 'job-3-description'
	
	# position, employer, date-started, date-ended, responsibilities 
	
	job3 = Job.new(job_3_date, job_3_position, job_3_employer, job_3_date)
	
	# education 
		# high school 
		high_school_name = params.fetch 'high-school-name'
		high_school_gpa = params.fetch 'high-school-gpa'
		high_school_date = params.fetch 'high-school-date-started' - 'high-school-date-ended'
	
		# undergraduate 
		undergraduate_name = params.fetch 'undergraduate-name'
		undergraduate_field = params.fetch 'undergraduate-field'
		undergraduate_gpa = params.fetch 'undergraduate-gpa'
		undergraduate_date = params.fetch 'undergraduate-date-started' - 'undergraduate-date-ended'

		# graduate
		graduate_name = params.fetch 'graduate-name'
		graduate_program = params.fetch 'graduate-program'
		graduate_gpa = params.fetch 'graduate-gpa'
		graduate_date = params.fetch 'graduate-date-started' - 'graduate-date-ended'
		
		## ADD METHOD FOR EDUCATION 
		
	# social media links 
	
		linkedin = params.fetch 'linkedin'
		facebook = params.fetch 'facebook'
		
	
	erb :resume 
end 