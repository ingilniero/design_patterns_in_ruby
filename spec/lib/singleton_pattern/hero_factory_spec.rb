require 'spec_helper'

describe Singleton::HeroFactory do
  let(:hero_factory) { Singleton::HeroFactory.instance }

  let(:another_factory) { Singleton::HeroFactory.instance }

  describe '#instance' do
    it 'returns instance of HeroFactory' do
      expect(hero_factory)
      .to be_instance_of(Singleton::HeroFactory)
    end

    it 'returns always the same instance' do
      expect(hero_factory).to be another_factory
    end

    it 'doesn\'t allows use of new method' do
      expect { Singleton::HeroFactory.new }.to raise_exception
    end
  end
end
