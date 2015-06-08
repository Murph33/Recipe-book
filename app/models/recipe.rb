class Recipe < ActiveRecord::Base

  before_validation :capitalize

  validates_presence_of :title, :ingredients, :directions, :taste, :health
  validates_uniqueness_of :title

  private

  def capitalize
    self.title.capitalize!
  end

end
