require 'rails_helper'

RSpec.describe Frame, :type => :model do
  
  let(:f) {f = Frame.new}
  
  it('can roll pins down') do
    f.roll pins
  end
end
