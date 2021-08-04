describe "How to run specific examples using tags" do 
	it "is a slow test", :slow => true do 
		sleep 5
		puts 'This is slow test!'
	end

	it "is a fast test", :fast => true do 
		puts 'This is fast test!'
	end
end