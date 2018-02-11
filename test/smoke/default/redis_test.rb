# # encoding: utf-8

# Inspec test for recipe exim-redis::redis

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe service('redis') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe port(6379) do
  it {should be_listening}
end