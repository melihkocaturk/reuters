class Category < ActiveRecord::Base
	extend FriendlyId
	friendly_id :alias, use: [:slugged, :finders]

	has_many :news

  def alias
    "#{name} - #{id}"
  end

  def should_generate_new_friendly_id?
    name_changed?
  end
end
