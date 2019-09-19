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

# if Rails.env.production?
#   CarrierWave.configure do |config|
#     config.fog_credentials = {
#       # Configuration for Amazon S3
#       :provider              => 'AWS',
#       :aws_access_key_id     => ENV['AKIA35CGNHAN7O25T3K6'],
#       :aws_secret_access_key => ENV['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']
#     }
#     config.fog_directory     =  ENV['us-east-2']
#     config.fog_provider = 'fog/aws'
#   end
# end