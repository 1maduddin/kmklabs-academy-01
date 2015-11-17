class Problem < ActiveRecord::Base

    validates :status, inclusion: {in: %w{new assigned fixed closed}}

end
