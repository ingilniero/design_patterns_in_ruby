require 'spec_helper'

describe Strategy::SkillsStats do
  let(:context) { Strategy::Hero.new subject }

  describe '#print_skills' do
    it 'prints context skills' do
      expect(subject.print(context)).to eq "Stealth\nDriving\nIntimidation\n"
    end
  end

end

