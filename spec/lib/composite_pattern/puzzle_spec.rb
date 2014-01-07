require 'spec_helper'

describe Composite::Puzzle do
  describe '#reward' do
    it { expect(subject.reward).to eq 200 }
  end
end
