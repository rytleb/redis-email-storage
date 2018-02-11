# # encoding: utf-8

# Inspec test for recipe exim-redis::exim-server

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


describe service('exim') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe port(25) do
  it {should be_listening}
end