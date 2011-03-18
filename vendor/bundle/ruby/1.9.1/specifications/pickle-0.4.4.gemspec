# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pickle}
  s.version = "0.4.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ian White"]
  s.date = %q{2010-12-14}
  s.description = %q{Easy model creation and reference in your cucumber features}
  s.email = %q{ian.w.white@gmail.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = [".gitignore", "Gemfile", "Gemfile.lock", "History.txt", "License.txt", "README.rdoc", "Rakefile", "Rakefile.d/cucumber.rake", "Rakefile.d/jeweler.rake", "Rakefile.d/rcov.rake", "Rakefile.d/rspec.rake", "Rakefile.d/yard.rake", "Todo.txt", "VERSION", "features/app/app.rb", "features/app/blueprints.rb", "features/app/factories.rb", "features/app/views/notifier/email.erb", "features/app/views/notifier/user_email.erb", "features/email/email.feature", "features/generator/generators.feature", "features/path/models_page.feature", "features/path/named_route_page.feature", "features/pickle/create_from_active_record.feature", "features/pickle/create_from_factory_girl.feature", "features/pickle/create_from_machinist.feature", "features/step_definitions/email_steps.rb", "features/step_definitions/extra_email_steps.rb", "features/step_definitions/fork_steps.rb", "features/step_definitions/generator_steps.rb", "features/step_definitions/path_steps.rb", "features/step_definitions/pickle_steps.rb", "features/step_definitions/raise_error_steps.rb", "features/support/email.rb", "features/support/env.rb", "features/support/paths.rb", "features/support/pickle.rb", "features/support/pickle_app.rb", "init.rb", "lib/generators/pickle_generator.rb", "lib/pickle.rb", "lib/pickle/adapter.rb", "lib/pickle/adapters/active_record.rb", "lib/pickle/adapters/data_mapper.rb", "lib/pickle/adapters/mongoid.rb", "lib/pickle/config.rb", "lib/pickle/email.rb", "lib/pickle/email/parser.rb", "lib/pickle/email/world.rb", "lib/pickle/parser.rb", "lib/pickle/parser/matchers.rb", "lib/pickle/path.rb", "lib/pickle/path/world.rb", "lib/pickle/session.rb", "lib/pickle/session/parser.rb", "lib/pickle/version.rb", "lib/pickle/world.rb", "pickle.gemspec", "rails_generators/pickle/pickle_generator.rb", "rails_generators/pickle/templates/email.rb", "rails_generators/pickle/templates/email_steps.rb", "rails_generators/pickle/templates/paths.rb", "rails_generators/pickle/templates/pickle.rb", "rails_generators/pickle/templates/pickle_steps.rb", "spec/pickle/adapter_spec.rb", "spec/pickle/config_spec.rb", "spec/pickle/email/parser_spec.rb", "spec/pickle/email_spec.rb", "spec/pickle/parser/matchers_spec.rb", "spec/pickle/parser_spec.rb", "spec/pickle/path_spec.rb", "spec/pickle/session_spec.rb", "spec/pickle_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{http://github.com/ianwhite/pickle/tree}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{Easy model creation and reference in your cucumber features}
  s.test_files = ["spec/pickle/adapter_spec.rb", "spec/pickle/config_spec.rb", "spec/pickle/email/parser_spec.rb", "spec/pickle/email_spec.rb", "spec/pickle/parser/matchers_spec.rb", "spec/pickle/parser_spec.rb", "spec/pickle/path_spec.rb", "spec/pickle/session_spec.rb", "spec/pickle_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, [">= 1.3"])
      s.add_runtime_dependency(%q<cucumber>, [">= 0.8"])
      s.add_runtime_dependency(%q<yard>, [">= 0"])
      s.add_runtime_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 1.3"])
      s.add_dependency(%q<cucumber>, [">= 0.8"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.3"])
    s.add_dependency(%q<cucumber>, [">= 0.8"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end