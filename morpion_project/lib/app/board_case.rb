class BoardCase
	attr_accessor :token, :case_id
	
	def initialize(case_id,token)
		@token = token
		@case_id = case_id
	end
	
end
