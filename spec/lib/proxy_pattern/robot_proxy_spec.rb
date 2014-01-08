require 'spec_helper'

describe Proxy::RobotProxy do

  let(:robot) { double('robot', add: [], queue: [], execute: true) }

  subject { Proxy::RobotProxy.new robot }

  describe '#add' do
    before { robot.should_receive(:add) }

    it 'delegates all method to the robot' do
      subject.add
    end
  end

  describe '#add' do
    before { robot.should_receive(:execute) }

    it 'delegates all method to the robot' do
      subject.execute
    end
  end
end
