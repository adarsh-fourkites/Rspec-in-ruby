describe 'Get time' do 
	let(:current_time) { Time.now }
	let!(:current_time_before) { Time.now }

	before(:each) do 
		puts 'before: ', Time.now
	end

	it 'gets the same time over and over again' do 
		puts 'In let -', current_time
		puts 'In let! -', current_time_before
		sleep 5
		puts 'In let -', current_time
		puts 'In let! -', current_time_before
	end
end