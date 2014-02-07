require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Webship
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Mexico City'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    I18n.config.enforce_available_locales = false
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :es

    config.assets.precompile << Proc.new { |path|
      if path =~ /\.(css|js|png|jpg|jpeg|gif|eot|svg|ttf|woff)\z/
        full_path = Rails.application.assets.resolve(path).to_path
        app_assets_path = Rails.root.join('app', 'assets').to_path
        vendor_assets_path = Rails.root.join('vendor', 'assets').to_path

        if ((full_path.starts_with? app_assets_path) || (full_path.starts_with? vendor_assets_path)) && (!path.starts_with? '_')
          puts "\t" + full_path.slice(Rails.root.to_path.size..-1)
          true
        else
          false
        end
      else
        false
      end
    }
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
  end
end
