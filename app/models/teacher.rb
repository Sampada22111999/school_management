class Teacher < ApplicationRecord
	has_many :marks, dependent: :destroy
end
