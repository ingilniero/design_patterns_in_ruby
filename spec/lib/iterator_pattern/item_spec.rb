require 'spec_helper'

describe Iterator::Item do

  it 'has a default cost' do
    expect(subject.cost).to eq 0
  end

  describe '#update_cost' do
    it { expect { subject.update_cost 10 }.to change{ subject.cost }.by(10) }
  end
end
