class User < ActiveRecord::Base
	has_many :workouts, :dependent => :destroy
end
