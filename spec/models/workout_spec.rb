require 'spec_helper'

describe Workout do
  it "requires a name" do
    subject.should_not be_valid
  end
end
