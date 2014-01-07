require 'spec_helper'

describe Composite::Encounter do
  describe '#reward' do
    it { expect(subject.reward).to eq 100 }
  end

end
