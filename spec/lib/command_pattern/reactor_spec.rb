require 'spec_helper'

describe Command::Reactor do
  let(:right_commands) do
    %Q{
Installed Hidroelectric Magnetosphere Regulator
Calibrated Uranium-Rod Driver
Tested Jupiter Wave Complier
Amplified Plutonium-Gamma Shield
}
  end

  describe '#functional?' do
    context 'when is functional' do
      before { subject.fix(right_commands) }
      it { expect(subject.functional?).to be_true }
    end

    context 'when is not functional' do
      it { expect(subject.functional?).to be_false }
    end
  end

  describe '#fix' do
    context 'when it receives the right commands' do
      it { expect{ subject.fix(right_commands) }
           .to change{ subject.functional?}.from(false).to(true) }
    end

    context 'when it receives the wrong commands' do
      it { expect{ subject.fix('wrong_commands') }
           .to_not change{ subject.functional?  } }
    end
  end
end
