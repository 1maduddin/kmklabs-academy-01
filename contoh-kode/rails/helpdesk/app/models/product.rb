class Product < ActiveRecord::Base
    validates :code, presence: true
end
