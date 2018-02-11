# # encoding: utf-8

# Inspec test for recipe exim-redis::forward

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe user('catchall') do
  it { should exist }
end

describe file('/home/catchall/.forward') do
  its('md5sum') { should eq '51c41d46d08c14b4fb74b5a11d7c9a07' }
end

describe file('/home/catchall/store_to_redis.py') do
  its('md5sum') { should eq '5c9a4117634afab802a62c086fade065' }
end