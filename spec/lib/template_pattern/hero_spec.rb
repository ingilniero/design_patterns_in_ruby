require 'spec_helper'

describe Hero do
  it 'has default damage rating of "10"' do
    expect(subject.damage).to eq 10
  end

  it 'can attack' do
    expect(subject.attack).to eq 'Attacked dealing 10 damage'
  end

  it 'requires subclasses to implement unique_greeting_line' do
    expect { subject.greet }.to raise_exception
  end
end
