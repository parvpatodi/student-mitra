class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :articles
  has_many :techwords


  ROLES = %w[admin author guest].freeze

  def full_name
   "#{self.first_name} #{self.last_name}"
  end


  def admin?
    self.role == "admin"
  end

  def author?
    self.role == "author"
  end
end
