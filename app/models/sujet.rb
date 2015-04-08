class Sujet < ActiveRecord::Base
	validates :titre , 
		:presence => true  , 
		:length   => { :maximum => 50 , :minimum => 2 }
	validates :contenu , 
			   :presence => true , 
			   :length => {:maximum => 200 , :minimum => 6}
end
