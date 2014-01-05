require 'spec_helper'

describe Strategy::SkillsStats do
  let(:skills) { [:stealth, :driving, :intimidation] }

  describe '#print_skills' do
    it 'prints context skills' do
      expect(subject.print(nil, nil, skills)).to eq "Stealth\nDriving\nIntimidation\n"
    end
  end

end

