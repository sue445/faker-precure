source 'https://rubygems.org'

# Specify your gem's dependencies in faker-precure.gemspec
gemspec

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.7.0")
  # term-ansicolor 1.9.0+ doesn't work on Ruby < 2.7
  gem "term-ansicolor", "< 1.9.0"
end

if Gem::Version.create(RUBY_VERSION) >= Gem::Version.create("4.0.0")
  # rdoc is bundled gem since ruby 4.0
  gem "rdoc"
end

if Gem::Version.new(RUBY_VERSION) < Gem::Version.new("3.2.0")
  # NOTE: i18n 1.15.0+ requires Ruby 3.2+
  gem "i18n", "< 1.15.0"
end
