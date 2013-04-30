class TodoItem < ActiveRecord::Base
  attr_accessible :completed, :name, :location, :latitude, :longitude

  validates :location, :presence => :true

  geocoded_by :geocoding_method
  after_validation :geocode

  has_many :comments
  belongs_to :destination

  def geocoding_method
  	"#{self.location} #{destination.name}"

  end
end
