require_relative "../code/class_room"

describe ClassRoom do 

	it "should render names of student correctly" do 
		student1 = double('student')  # test double/mock
		student2 = double('student')

		allow(student1).to receive(:name) { 'Adarsh Singh' } # allowing object to keep some values.
		allow(student2).to receive(:name) { 'Amit Singh' }

		cr = ClassRoom.new([student1, student2])
		expect(cr.list_names_students).to eq ('Adarsh Singh,Amit Singh')
	end
end
