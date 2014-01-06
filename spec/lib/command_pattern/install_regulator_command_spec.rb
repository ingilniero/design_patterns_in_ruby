require 'spec_helper'

describe Command::InstallRegulatorCommand do
  it 'installes regulator' do
    expect(subject.execute).to eq 'Installed Hydroelectric Magnetosphere Regulator'
  end
end
