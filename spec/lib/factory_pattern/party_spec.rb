require 'spec_helper'

describe Factory::Party do
  it 'has members' do
    expect(subject.members).to eq []
  end
end
