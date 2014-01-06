require 'spec_helper'

describe Factory::WarriorParty do
  let(:factory) { Factory::WarriorParty.new number: 2 }

  it 'creates several warriors' do
    expect(factory.members.count{ |member| member.class == Warrior }).to eq 2
  end
end
