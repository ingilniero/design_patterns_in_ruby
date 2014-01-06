require 'spec_helper'

describe Command::AmplifyShieldCommand do
  it 'amplifies shield' do
    expect(subject.execute).to eq 'Amplified Plutonium-Gamma Shield'
  end
end
