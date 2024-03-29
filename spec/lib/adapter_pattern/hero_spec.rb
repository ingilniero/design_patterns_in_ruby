require 'spec_helper'

describe Adapter::Hero do
  let(:quest) { Adapter::Quest.new }
  let(:old_quest) { Adapter::QuestAdapter.new Adapter::OldQuest.new, difficulty: 3 }

  it 'has a level' do
    expect(subject.level).to eq 1
  end

  it 'has exp' do
    expect(subject.exp).to eq 0
  end

  describe '#take_quest' do
    it 'adds a quest to the hero\'s quests' do
      expect { subject.take_quest(quest) }.to change { subject.quests.size }.by(1)
    end
  end

  describe '#finish_quest' do
    context 'normal quest' do
      before { subject.take_quest(quest) }

      it 'deletes the quest from hero\'s quests' do
        expect { subject.finish_quest(quest) }.to change { subject.quests.size }.by(-1)
      end
    end

    context 'old quest' do
      before { subject.take_quest(old_quest) }

      it 'deletes the quest from hero\'s quests' do
        expect { subject.finish_quest(old_quest) }.to change { subject.quests.size }.by(-1)
      end
    end
  end

end
