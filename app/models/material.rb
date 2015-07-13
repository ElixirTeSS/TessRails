class Material < ActiveRecord::Base
  belongs_to :content_provider

  attr_accessor :title, :description, :url

  validates :name, presence: true
  validates :description, presence: true
  validates :url, presence: true

  def initialize(attributes = {})
    @name  = attributes[:name]
    @description  = attributes[:description]
    @url  = attributes[:url]
  end


end
