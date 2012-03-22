# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_ajax_cart'
  s.version     = '0.70.4'
  s.summary     = 'Add link_to_ajax_cart helper for Spree'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Damiano Giacomello'
  s.email             = 'damiano.giacomello@diginess.it'
  # s.rubyforge_project = 'actionmailer'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*', 'db/**/*', 'config/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core'
  s.add_development_dependency 'rspec-rails'
end

