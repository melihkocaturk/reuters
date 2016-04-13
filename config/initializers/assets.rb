# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( allegro/reset.css )
Rails.application.config.assets.precompile += %w( allegro/main-stylesheet.css )
Rails.application.config.assets.precompile += %w( allegro/lightbox.css )
Rails.application.config.assets.precompile += %w( allegro/shortcode.css )
Rails.application.config.assets.precompile += %w( allegro/fonts.css )
Rails.application.config.assets.precompile += %w( allegro/colors.css )
Rails.application.config.assets.precompile += %w( allegro/responsive.css )
Rails.application.config.assets.precompile += %w( allegro/demo-settings.css )

Rails.application.config.assets.precompile += %w( allegro/jquery-latest.min.js )
Rails.application.config.assets.precompile += %w( allegro/theme-scripts.js )
Rails.application.config.assets.precompile += %w( allegro/lightbox.js )
#Rails.application.config.assets.precompile += %w( allegro/demo-settings.js )
