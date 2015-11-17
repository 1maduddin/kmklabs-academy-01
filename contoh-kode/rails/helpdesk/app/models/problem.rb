class Problem < ActiveRecord::Base

    validates :status, inclusion: {in: %w{new assigned fixed closed}}
    
    belongs_to :user
    belongs_to :product
    has_many :comments

end
