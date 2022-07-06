class Author < ApplicationRecord

    
    scope :students, -> {where(type: 'Student')}
    scope :teachers, -> {where(type: 'Teacher')}

    validates :f_name, :l_name, :type, presence: true

end
