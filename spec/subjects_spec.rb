class Person
	attr_reader :first_name, :second_name
	def initialize(first_name, second_name)
		@first_name = first_name
		@second_name = second_name
	end

end


# Rspec Code:

# describe Person do 
# 	it 'creates a new person with first and last name' do 
# 		person = Person.new 'Adarsh', 'Singh'
# 		expect(person).to have_attributes(first_name: 'Adarsh')
# 		expect(person).to have_attributes(second_name: 'Singh')
# 	end
# end

# These all code can be reduced to two it statements using subjects

describe Person.new 'Adarsh', 'Singh' do 
	it { is_expected.to have_attributes(first_name: 'Adarsh') }
	it { is_expected.to have_attributes(second_name: 'Singh') }
end
