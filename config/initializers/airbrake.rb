if ENV['AIRBRAKE_API_KEY'].present?
  Airbrake.configure do |config|
    config.project_id = 1 # required, but any positive integer works
    config.project_key = ENV['AIRBRAKE_API_KEY']
    config.host = ENV.fetch('AIRBRAKE_URL')
    config.environment = Rails.env
    config.ignore_environments = %w(development test)
  end
end
