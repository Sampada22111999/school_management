class Student < ApplicationRecord
	  has_many :marks, dependent: :destroy
end
