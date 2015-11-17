class User < ActiveRecord::Base
    validates :email, format: {with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/}
end
