class Comment < ActiveRecord::Base
	belongs_to :sujet

	def to_s
	return "++++++++++#{@sujet_id}"
	end

end
