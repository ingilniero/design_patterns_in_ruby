require 'spec_helper'

describe Command::TestComplierCommand do
  it 'tests complier' do
    expect(subject.execute).to eq 'Tested Jupiter Wave Complier'
  end
end
