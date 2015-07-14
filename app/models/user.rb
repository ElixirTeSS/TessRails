class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessor :name, :email

  validates :name, presence: true
  validates :email, presence: true

  #def initialize(attributes = {})
  #  @name  = attributes[:name]
  #  @email = attributes[:email]
  #end

  def formatted_email
    "#{@name} <#{@email}>"
  end

  # Need to add this:
  # http://www.tonyamoyal.com/2010/07/28/rails-authentication-with-devise-and-cancan-customizing-devise-controllers/

end
