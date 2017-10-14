CarrierWave.configure do |config|
  
  
  config.fog_credentials = {
    :provider               => 'AWS',                             # required
    :aws_access_key_id      => 'S3_KEY',            # required
    :aws_secret_access_key  => 'S3_SECRET',     # required
    :region                 => 'S3_REGION'                        # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'S3_BUCKET'               # required
  #config.fog_host       = 'https://assets.example.com'           # optional, defaults to nil
  #config.fog_public     = false                                  # optional, defaults to true

end

