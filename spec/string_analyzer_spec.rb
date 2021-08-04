require_relative '../code/string_analyzer'

describe StringAnalyzer do
	context "With a valid input" do 

		it "should detect when a string contains vowels" do 
			sa = StringAnalyzer.new
			test_string = 'uuu'
			expect(sa.has_vowels?(test_string)).to eq true
		end

		it "should detect when a string doesn't contain vowels" do 
			sa = StringAnalyzer.new
			test_string = 'bcd'
			expect(sa.has_vowels?(test_string)).to eq false
		end

	end
end