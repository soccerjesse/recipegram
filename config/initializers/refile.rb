Refile.secret_key = '9cf91134c4ab51886f357a6a4d7d4eb7f33a4d395061980e924dd546169dc427b705f60e2744c51e7be09b1da56b2cf5a901964e7c823c3660c758c50042ddd6'

require "refile/s3"

aws = {
  access_key_id: "AWS_ACCESS_KEY_ID",
  secret_access_key: "AWS_SECRET_ACCESS_KEY",
  region: ap-northeast-1
  bucket: rails-recipe
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)