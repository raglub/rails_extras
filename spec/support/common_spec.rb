require 'spec_helper'

describe ::RailsExtras::RSpec::Support::Common do
  include RailsExtras::RSpec::Support::Common

  it "#upload_file" do
    upload_file('example.txt').original_filename.should eq('example.txt')
    upload_file('example.txt').tempfile.should be_a(File)
  end
end
