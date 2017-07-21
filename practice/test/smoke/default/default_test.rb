# # encoding: utf-8

# Inspec test for recipe practice::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe package 'nano' do
  it { should be_installed } 
end

describe directory '/var/old-website' do
  it { should_not exists}
end

