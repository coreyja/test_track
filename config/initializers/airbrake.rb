if ENV['AIRBRAKE_API_KEY'].present?
  Airbrake.configure do |config|
    config.project_id = ENV['AIRBRAKE_PROJECT_ID']
    config.project_key = ENV['AIRBRAKE_API_KEY']
    config.host = ENV['AIRBRAKE_URL'] if ENV['AIRBRAKE_URL'].present?
    config.environment = Rails.env
    config.ignore_environments = %w(development test)
  end
end
