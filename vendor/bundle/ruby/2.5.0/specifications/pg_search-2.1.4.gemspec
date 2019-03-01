# -*- encoding: utf-8 -*-
# stub: pg_search 2.1.4 ruby lib

Gem::Specification.new do |s|
  s.name = "pg_search".freeze
  s.version = "2.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Grant Hutchins".freeze, "Case Commons, LLC".freeze]
  s.date = "2019-01-26"
  s.description = "PgSearch builds Active Record named scopes that take advantage of PostgreSQL's full text search".freeze
  s.email = ["gems@nertzy.com".freeze, "casecommons-dev@googlegroups.com".freeze]
  s.homepage = "https://github.com/Casecommons/pg_search".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "PgSearch builds Active Record named scopes that take advantage of PostgreSQL's full text search".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 4.2"])
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 4.2"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 3.3"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0.63.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<with_model>.freeze, [">= 1.2"])
    else
      s.add_dependency(%q<activerecord>.freeze, [">= 4.2"])
      s.add_dependency(%q<activesupport>.freeze, [">= 4.2"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 3.3"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0.63.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<with_model>.freeze, [">= 1.2"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 4.2"])
    s.add_dependency(%q<activesupport>.freeze, [">= 4.2"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 3.3"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0.63.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<with_model>.freeze, [">= 1.2"])
  end
end
