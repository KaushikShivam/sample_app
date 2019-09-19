if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key => ENV['S3_SECRET_KEY']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
    config.fog_provider = 'fog/aws'
  end
end

# heroku config:set S3_ACCESS_KEY="AKIA35CGNHAN7O25T3K6"
# heroku config:set S3_SECRET_KEY="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"
# heroku config:set S3_BUCKET="us-east-2"