if ENV['AIRBRAKE_API_KEY'].present?
  if defined?(Airbrake::AIRBRAKE_VERSION)
    Airbrake.configure do |config|
      config.project_id = 1 # required, but any positive integer works
      config.project_key = Runtime.errbit_api_key
      config.host = ENV.fetch('AIRBRAKE_URL')
      config.environment = Rails.env
      config.ignore_environments = %w(development test)
    end
  else
    Airbrake.configure do |config|
      config.api_key = Runtime.errbit_api_key
      config.host = ENV.fetch('AIRBRAKE_HOST')
      config.port = 80
      config.secure = config.port == 443
    end
  end
end

unless defined?(Airbrake::AIRBRAKE_VERSION)
  module RailsFiveAirbrakeWorkaround
    private

    # Monkey-patching to work around usage of `ActionController::Parameters#to_hash`
    # https://github.com/airbrake/airbrake/blob/v4.3.8/lib/airbrake/rails/controller_methods.rb#L21
    def to_hash(params)
      params.to_unsafe_hash
    end
  end

  ActionController::Base.prepend RailsFiveAirbrakeWorkaround
end
