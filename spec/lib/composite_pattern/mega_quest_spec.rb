require 'spec_helper'

describe Composite::MegaQuest do
  let(:quest) do
    Composite::Quest.new
  end

  describe '#add' do
    before do
      quest.add(Composite::Puzzle.new)
      quest.add(Composite::Encounter.new)
      subject.add(quest)
      subject.add(Composite::Encounter.new)
      subject.add(Composite::Diplomacy.new)
    end

    it 'sums rewards from the given taks' do
      expect(subject.reward).to eq(900)
    end
  end
end
