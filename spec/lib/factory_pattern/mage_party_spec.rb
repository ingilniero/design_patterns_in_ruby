require 'spec_helper'

describe Factory::MageParty do
  let(:factory) { Factory::MageParty.new number: 4 }

  it 'creates several mages' do
    expect(factory.members.count{ |member| member.class == Mage }).to eq 4
  end
end
