class Rent < ActiveRecord::Base
  belongs_to :movie

  validates :movie, presence: true
  validates :status, presence: true
  validates :rent_at, presence: true, date: true
end
