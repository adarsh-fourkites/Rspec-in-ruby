class ClassRoom
	def initialize(students)
		@students = students
	end

	def list_names_students
		@students.map(&:name).join(',')
	end
end