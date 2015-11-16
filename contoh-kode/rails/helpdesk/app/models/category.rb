class Category < ActiveRecord::Base

    validates :code, :name, presence: true

end
