require 'sinatra'
require './lib/resume_builder.rb'
require 'prawn'


get '/' do 
	erb :index
end 

post '/resume' do 
	
	
	# basic information 
	@name = params.fetch 'name'
	@email = params.fetch 'email'
	@phone = params.fetch 'phone'
	
	# objective / skills 
	@objective = params.fetch 'objective'
	@skills = params.fetch 'skills'
	
	# job 1 
	@job_1_position = params.fetch 'job-1-position'
	@job_1_employer = params.fetch 'job-1-employer'
	@job_1_date_started = params.fetch 'job-1-date-started'
	@job_1_date_ended = params.fetch 'job-1-date-ended'
	@job_1_description = params.fetch 'job-1-description'
	
	@job1 = Job.new(@job_1_date_started, @job_1_date_ended, @job_1_position, @job_1_employer, @job_1_description)
	
	# job 2
	@job_2_position = params.fetch 'job-2-position'
	@job_2_employer = params.fetch 'job-2-employer'
	@job_2_date_started = params.fetch 'job-2-date-started'
	@job_2_date_ended = params.fetch 'job-2-date-ended'
	@job_2_description = params.fetch 'job-2-description'
	
	@job2 = Job.new(@job_2_date_started, @job_2_date_ended, @job_2_position, @job_2_employer, @job_2_description)
	
	# job 3
	@job_3_position = params.fetch 'job-3-position'
	@job_3_employer = params.fetch 'job-3-employer'
	@job_3_date_started = params.fetch 'job-3-date-started'
	@job_3_date_ended = params.fetch 'job-3-date-ended'
	@job_3_description = params.fetch 'job-3-description'
	
	# position, employer, date-started, date-ended, responsibilities 
	
	@job3 = Job.new(@job_3_date_started, @job_3_date_ended, @job_3_position, @job_3_employer, @job_3_description)
	
	# education 
		# high school 
		@high_school_name = params.fetch 'high-school-name'
		@high_school_gpa = params.fetch 'high-school-gpa'
		@high_school_date_started = params.fetch 'high-school-date-started'
		@high_school_date_ended = params.fetch 'high-school-date-ended'
		
		# undergraduate 
		@undergraduate_name = params.fetch 'undergraduate-name'
		@undergraduate_field = params.fetch 'undergraduate-field'
		@undergraduate_gpa = params.fetch 'undergraduate-gpa'
		@undergraduate_date_started = params.fetch 'undergraduate-date-started' 
		@undergraduate_date_ended = params.fetch 'undergraduate-date-ended'

		# graduate
		@graduate_name = params.fetch 'graduate-name'
		@graduate_program = params.fetch 'graduate-program'
		@graduate_gpa = params.fetch 'graduate-gpa'
		@graduate_date_started = params.fetch 'graduate-date-started'
		@graduate_date_ended = params.fetch 'graduate-date-ended'
		
		## ADD METHOD FOR EDUCATION 
		
	# social media links 
	
		@linkedin = params.fetch 'linkedin'
		@facebook = params.fetch 'facebook'
		
	
	
	erb :resume 
end 

get '/download' do 
	
 # Using explicit block form and rendering to a file
  content = "Hello World"
 	
  Prawn::Document.generate "example.pdf" do |pdf|
    # self here is left alone
    pdf.font "Times-Roman"
    pdf.draw_text content, :at => [200,720], :size => 32
    pdf.draw_text @name, :at => [0,0]
  end
end 

# get '/download' do 

# 	content_type 'application/pdf'
	
# 	pdf = Prawn::Document.new
# 	pdf.text "Hello World"
# 	pdf.render_file "assignment.pdf" 
	
# end 

# get '/download' do 

# 	@bitches = "bitches"
# 	Prawn::Document.generate 'font_cacluations.pdf' do 
# 		font "Courier", :size => 16, :style => :bold 
# 		text "#{@bitches}"
# 		font "Courier", :size => 16, :style => :normal 
# 		text "normal text"
# 		text "this is normal, <b>but this is bold</b>", :inline_format => true 
# 		text "normal <font size='18'>bigger</font> normal", :inline_format => true 
# 	end 
	
# end 

