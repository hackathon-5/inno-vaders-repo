class User < ActiveRecord::Base
  include Authem::User
  has_many :food_trucks
end
