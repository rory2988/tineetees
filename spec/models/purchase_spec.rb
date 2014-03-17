require 'spec_helper'

describe Purchase do 
  it { should belong_to(:user) }
  it { should have_and_belong_to_many(:products) }
end
