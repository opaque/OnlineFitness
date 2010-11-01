class Workout < ActiveRecord::Base

	validates_presence_of :date
	validates_presence_of :exercise
	validates_presence_of :expectedreps
	validates_presence_of :expectedsets
	validates_numericality_of :expectedreps
	validates_numericality_of :expectedsets
	validates_numericality_of :actualreps, :allow_nil => true
	validates_numericality_of :actualsets, :allow_nil => true
	
end
