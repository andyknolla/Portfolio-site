class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

# two ways of doing the same thing... For practice only ...
  def self.angular
    where(subtitle: 'Angular')
  end
  # Custome scope...Lambda
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
  ##########################################################

  after_initialize :set_defaults   # initialize happens when the new action is called in the portfolio ctlr...when a NEW portfolio object is created based on this Portfolio class

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
    # without pipes, this would re-assign, even if an image was included. "||" only assigns if value is nil.
  end
end
