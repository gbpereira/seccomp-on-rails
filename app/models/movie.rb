class Movie < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :year, numericality: { greater_than: 1895 }
end
