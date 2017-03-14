require 'rails_helper'

RSpec.describe Entry, type: :model do
  before {
    @entry = Entry.new(name: 'Rspec', description: 'Testing Framework')
  }
  it { expect(@entry.name).to eql('Rspec') }
  it { expect(@entry.description).to eql('Testing Framework') }
end
