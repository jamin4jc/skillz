require 'rails_helper'

RSpec.describe Link, type: :model do

  context "Link that isn't connected to an entry" do
    before {@link = Link.new(uri: 'http://google.com')}
    it { expect(@link.entry).to eql(nil)}
  end

  context "Link that is connected to an entry" do
    before {
      @link = Link.new(uri: 'http://spark.apache.org/')
      @entry = Entry.new(name: 'Spark', description: 'Apache Spark™ is a fast and general engine for large-scale data processing')
      @link.entry = @entry
    }
    it { expect(@link.entry.name).to eql('Spark')}
  end

end
