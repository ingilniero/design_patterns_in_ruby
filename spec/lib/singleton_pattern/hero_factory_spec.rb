require 'spec_helper'

describe Singleton::HeroFactory do
  describe '#instance' do
    it 'returns instance of HeroFactory' do
      expect(Singleton::HeroFactory.instance)
      .to be_instance_of(Singleton::HeroFactory)
    end
  end
end
