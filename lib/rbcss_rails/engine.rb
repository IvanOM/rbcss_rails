module RbcssRails
  class Engine < ::Rails::Engine
    config.generators do |g|
      g.test_framework :rspec, :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end
    
    config.to_prepare do |c|
      Rails.application.assets.register_mime_type "text/css", ".rb"
      Rails.application.assets.register_engine '.rb', RbcssRails::Template
    end
  end
end