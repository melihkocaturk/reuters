class News < ActiveRecord::Base
	extend FriendlyId
	friendly_id :alias, use: [:slugged, :finders]
	
	cattr_accessor :author
  belongs_to :user
  belongs_to :category
  has_many :news_tags
  has_many :tags, through: :news_tags, dependent: :destroy

  paginates_per 8

  has_attached_file :image, styles: { large: "855x395#", medium: "200x130#", thumb: "160x117#", small: "59x42#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  after_initialize do
    if new_record?
      self.user_id ||= self.author.id
    end
  end

  def alias
    "#{title} - #{id}"
  end

  def should_generate_new_friendly_id?
    title_changed?
  end
end
