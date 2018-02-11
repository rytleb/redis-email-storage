# # encoding: utf-8

# Inspec test for recipe exim-redis::python

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

command ('which python') do
  its('stdout') { should eq "/usr/bin/python")
end