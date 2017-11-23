require_relative 'boot'

require 'rails/all'
require 'neo4j/railtie'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleNeo4j
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    
    config.neo4j.session_type = :http
    config.neo4j.session_path = ENV['NEO4J_URL'] || 'http://neo4j:neo4jadmin@localhost:7474'
    config.generators { |g| g.orm :neo4j }
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
