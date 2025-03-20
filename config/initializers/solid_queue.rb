SolidQueue.configure do |config|
  # Tells SolidQueue to use the same environment key
  # e.g. "development" locally, "production" on Heroku
  config.database_key = Rails.env
end
