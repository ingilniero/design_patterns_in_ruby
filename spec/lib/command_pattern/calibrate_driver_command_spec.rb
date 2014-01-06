require 'spec_helper'

describe Command::CalibrateDriverCommand do
  it 'calibrates driver' do
    expect(subject.execute).to eq 'Calibrated Uranium-Rod Driver'
  end
end
