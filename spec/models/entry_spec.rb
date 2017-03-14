require 'rails_helper'

RSpec.describe Entry, type: :model do
  context "new entry with attributes" do
    before { @entry = Entry.new(name: 'Rspec', description: 'Testing Framework')}

    it { expect(@entry.name).to eql('Rspec') }
    it { expect(@entry.description).to eql('Testing Framework') }
    it { expect(@entry).to be_valid }
  end


  context "new entry without a name" do
    before { @entry = Entry.new() }
    describe "validations" do
      it { expect(@entry).to_not be_valid }
    end
  end

  context "new entry with a duplicate name" do
    before {
      @original_entry = Entry.create(name: 'JS')
      @entry = Entry.new(name: 'JS')
     }
    describe "validations" do
      it { expect(@entry).to_not be_valid }
    end
  end
end
