class Noval < ApplicationRecord
    belongs_to :writeable, polymorphic: true

end
