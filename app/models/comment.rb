class Comment < ActiveRecord::Base
	belongs_to :sujet
validates :commentaire, :presence => true , 
			:length=>{:minimum => 3 }
	

end
