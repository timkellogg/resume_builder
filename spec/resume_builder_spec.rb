require 'rspec'
require './lib/resume_builder'


describe Job do 
	before do 
		@@all_jobs = []
	end 
	
	describe "#save" do 
		it "stores the job into the all_jobs array" do 
			job1 = Job.new "Jan00", "Jan12", "accountant", "Meyers,Inc", "embezzled funds"
			job1.save
			expect(Job.all).to(eq([job1]))
		end 
	end 
	
	describe ".all" do 
		it "prints out all jobs" do
			job1 = Job.new "Jan00", "Jan12", "accountant", "Meyers,Inc", "embezzled funds"
			job1.save
			job2 = Job.new "Oct13", "Jun14", "butler", "Jimmy Eat Word", "opened and closed doors"
			job2.save
			expect(Job.all).to(eq([job1, job2]))
		end 
	end 
end 

# describe Education do 
# end 

	