class HelloWorld
	def say_hello
		"Hello World!"
	end
end

# RSpec code −

describe HelloWorld do 
    context "When testing the HelloWorld class" do 
    	it "Should say 'Hello World' when we call say_hello method" do 
    		hw = HelloWorld.new
    		message = hw.say_hello
    		expect(message).to eq "Hello World!"
    	end
    end

    context "To understand how Equal works in expect" do 
    	it "should show how comparison Matcher works" do 
    		a = 1
    		b = 2
    		c = 3
    		d = 'test string'

    		#The following expectations must pass
    		expect(b).to be > a 
    		expect(a).to be >= a 
    		expect(a<b).to be true
    		expect(c).to be_between(1,3).inclusive
    		expect(b).to be_between(1,3).exclusive
    		expect(d).to match /TEST/i
    	end

    	it "should show other functions in expect clause" do 
    		x = 1
    		y = 2.3
    		z = 'test string'
    	
    		expect(x).to be_instance_of Fixnum 
    		expect(y).to be_kind_of Numeric
    		expect(z).to respond_to(:length)
    	end

    	it "should show how error match works" do 
    		expect {1/0}.to raise_error (ZeroDivisionError)
    		expect {1/0}.to raise_error ("divided by 0")
    		expect {1/0}.to raise_error("divided by 0", ZeroDivisionError)
    	end
    end

end

