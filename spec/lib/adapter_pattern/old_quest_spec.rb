require 'spec_helper'

describe Adapter::OldQuest do
  it 'has a difficulty' do
    expect(subject.difficulty).to eq 2
  end

  it 'has a exp' do
    expect(subject.exp).to eq 10
  end

  describe '#done' do
    it 'returns experience earned' do
      expect(subject.done).to eq 20
    end
  end

end
