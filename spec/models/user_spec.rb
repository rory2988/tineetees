require 'spec_helper'

describe User do 
  it { should have_many(:purchases) }
  it { should have_many(:products) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:email) }
end
