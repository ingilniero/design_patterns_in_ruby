require_relative '../lib/template_pattern/hero'
require_relative '../lib/template_pattern/warrior'
require_relative '../lib/template_pattern/mage'
require_relative '../lib/strategy_pattern/hero'
require_relative '../lib/strategy_pattern/battle_stats'
require_relative '../lib/strategy_pattern/skills_stats'
require_relative '../lib/observer_pattern/hero'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.order = 'random'
end
