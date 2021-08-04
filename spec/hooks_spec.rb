class SimpleClass
	attr_accessor :message
	def initialize()
		puts "Creating a new class"
		@message = 'howdy'
	end

	def update_message(new_message)
		@message = new_message
	end
end


# Rspec code:
describe SimpleClass do 
	before(:each) do 
        puts "Runs before each Example" 
       	@simpleClass = SimpleClass.new
    end 
   
    after(:each) do 
       puts "Runs after each Example" 
    end 
   
    before(:all) do 
        puts "Runs before all Examples" 
    end 
   
    after(:all) do 
       puts "Runs after all Examples"
    end 
	it "should have initial message" do 
		expect(@simpleClass).to_not be_nil
	end

	it "should be able to update message" do 
		@simpleClass.update_message("A new message")
		expect(@simpleClass.message).to_not be 'howdy'
	end

end
