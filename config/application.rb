require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BackendRails
  class Application < Rails::Application

    puts("TEST:", ENV.fetch("REDIS_HOST", 'redis://localhost:6379'))
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Support SQL (enum types are supported in Rails 7 but we will need to migrate in the future)
    config.active_record.schema_format :sql

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
