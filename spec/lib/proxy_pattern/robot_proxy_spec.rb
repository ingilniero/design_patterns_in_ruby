require 'spec_helper'

describe Proxy::RobotProxy do

  let(:robot) { double('robot', add: [], queue: [], execute: true) }
  let(:operator) { double('operator', vehicles: [ :robot ]) }

  let(:robot_proxy) { Proxy::RobotProxy.new robot, operator }

  describe '#add' do
    before { robot.should_receive(:add) }

    it 'delegates all method to the robot' do
      robot_proxy.add
    end
  end

  describe '#execute' do
    context 'when operator has permission' do
      before { robot.should_receive(:execute) }

      it 'delegates all method to the robot' do
        robot_proxy.execute
      end
    end

    context 'when operator is unauthorized' do
      before { operator.stub(:vehicles).and_return(:batimovil) }

      it { expect{ robot_proxy.execute }.to raise_exception }
    end
  end
end
