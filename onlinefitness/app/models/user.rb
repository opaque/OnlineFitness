class User < ActiveRecord::Base
	has_many :workouts, :dependent => :destroy
	validates_presence_of :name
	validates_numericality_of :weight, :allow_nil => true
	validates_numericality_of :height, :allow_nil => true
end
