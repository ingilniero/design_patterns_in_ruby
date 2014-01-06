require 'spec_helper'

describe Command::Robot do
  describe '#add' do
    it { expect { subject.add('command') }.to change{ subject.queue.size}.by(1) }
  end
end
