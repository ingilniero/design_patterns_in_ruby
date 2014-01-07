require 'spec_helper'

describe Composite::CompositeQuest do
  let(:quest) do
    Composite::Quest.new
  end

  let(:mega_quest) do
    Composite::MegaQuest.new
  end

  describe '#add' do
    before do
      quest.add(Composite::Puzzle.new)
      quest.add(Composite::Encounter.new)
      mega_quest.add(quest)
      mega_quest.add(Composite::Encounter.new)
      mega_quest.add(Composite::Diplomacy.new)
      subject.add(mega_quest)
      subject.add(Composite::Puzzle.new)
      subject.add(Composite::Diplomacy.new)
    end

    it 'sums rewards from the given taks' do
      expect(subject.reward).to eq(1600)
    end
  end
end
