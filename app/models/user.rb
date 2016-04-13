class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :news

  has_attached_file :avatar, styles: { large: "300x300#", medium: "100x100#", small: "30x30#" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
