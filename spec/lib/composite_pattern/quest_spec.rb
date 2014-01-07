require 'spec_helper'

describe Composite::Quest do
  describe '#add' do
    before do
      subject.add(Composite::Encounter.new)
      subject.add(Composite::Diplomacy.new)
    end

    it 'sums rewards from the given taks' do
      expect(subject.reward).to eq(600)
    end
  end
end
