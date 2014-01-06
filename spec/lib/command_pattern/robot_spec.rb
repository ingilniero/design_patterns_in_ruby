require 'spec_helper'

describe Command::Robot do
  describe '#add' do
    it { expect { subject.add('command') }.to change{ subject.queue.size}.by(1) }
  end

  describe '#execute' do
    before do
      subject.add Command::CalibrateDriverCommand.new
      subject.add Command::TestComplierCommand.new
    end

    it 'executes all commands in order' do
      expect(subject.execute).to eq %Q{
Calibrated Uranium-Rod Driver
Tested Jupiter Wave Complier
}
    end
  end
end
