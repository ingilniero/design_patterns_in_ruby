require 'spec_helper'

describe Composite::Diplomacy do
  describe '#reward' do
    it { expect(subject.reward).to eq 500 }
  end
end
