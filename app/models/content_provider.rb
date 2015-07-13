class ContentProvider < ActiveRecord::Base
  has_many :materials

  attr_accessor :name, :description, :image_url, :homepage #, :node_id

  validates :name, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :homepage, presence: true

  def initialize(attributes = {})
    @name  = attributes[:name]
    @description  = attributes[:description]
    @image_url  = attributes[:image_url]
    @homepage  = attributes[:homepage]
  end

end
