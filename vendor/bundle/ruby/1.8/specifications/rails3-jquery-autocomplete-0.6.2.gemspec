# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rails3-jquery-autocomplete}
  s.version = "0.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Padilla"]
  s.date = %q{2011-02-12}
  s.description = %q{Use jQuery's autocomplete plugin with Rails 3.}
  s.email = %q{david.padilla@crowdint.com}
  s.files = [".document", ".gitignore", "Gemfile", "Gemfile.lock", "LICENSE", "README.markdown", "Rakefile", "integration/.gitignore", "integration/Gemfile", "integration/Gemfile.lock", "integration/README", "integration/Rakefile", "integration/app/controllers/application_controller.rb", "integration/app/controllers/autocomplete_controller.rb", "integration/app/controllers/id_elements_controller.rb", "integration/app/controllers/multiple_selections_controller.rb", "integration/app/controllers/nested_models_controller.rb", "integration/app/controllers/sub_classes_controller.rb", "integration/app/helpers/application_helper.rb", "integration/app/helpers/autocomplete_helper.rb", "integration/app/helpers/error_messages_helper.rb", "integration/app/helpers/id_elements_helper.rb", "integration/app/helpers/layout_helper.rb", "integration/app/helpers/sub_classes_helper.rb", "integration/app/models/brand.rb", "integration/app/models/feature.rb", "integration/app/models/foreign_brand.rb", "integration/app/models/product.rb", "integration/app/views/autocomplete/new.html.haml", "integration/app/views/id_elements/new.html.haml", "integration/app/views/layouts/application.html.haml", "integration/app/views/multiple_selections/new.html.haml", "integration/app/views/nested_models/new.html.haml", "integration/app/views/sub_classes/new.html.haml", "integration/config.ru", "integration/config/application.rb", "integration/config/boot.rb", "integration/config/cucumber.yml", "integration/config/database.yml", "integration/config/environment.rb", "integration/config/environments/development.rb", "integration/config/environments/production.rb", "integration/config/environments/test.rb", "integration/config/initializers/backtrace_silencers.rb", "integration/config/initializers/inflections.rb", "integration/config/initializers/mime_types.rb", "integration/config/initializers/secret_token.rb", "integration/config/initializers/session_store.rb", "integration/config/locales/en.yml", "integration/config/routes.rb", "integration/db/migrate/20101209014338_create_brands.rb", "integration/db/migrate/20101209014355_create_products.rb", "integration/db/migrate/20101209053936_add_type_to_brand.rb", "integration/db/migrate/20110209020136_create_features.rb", "integration/db/schema.rb", "integration/db/seeds.rb", "integration/doc/README_FOR_APP", "integration/features/autocomplete.feature", "integration/features/step_definitions/autocomplete_steps.rb", "integration/features/step_definitions/pickle_steps.rb", "integration/features/step_definitions/web_steps.rb", "integration/features/support/env.rb", "integration/features/support/paths.rb", "integration/features/support/pickle.rb", "integration/lib/tasks/cucumber.rake", "integration/public/404.html", "integration/public/422.html", "integration/public/500.html", "integration/public/favicon.ico", "integration/public/images/rails.png", "integration/public/javascripts/application.js", "integration/public/javascripts/autocomplete-rails.js", "integration/public/javascripts/jquery-ui.min.js", "integration/public/javascripts/jquery.js", "integration/public/javascripts/jquery.min.js", "integration/public/javascripts/rails.js", "integration/public/robots.txt", "integration/public/stylesheets/application.css", "integration/public/stylesheets/jquery-ui-1.8.2.custom.css", "integration/public/stylesheets/sass/application.sass", "integration/script/cucumber", "integration/script/rails", "lib/cucumber/autocomplete.rb", "lib/generators/autocomplete_generator.rb", "lib/generators/templates/autocomplete-rails.js", "lib/rails3-jquery-autocomplete.rb", "lib/rails3-jquery-autocomplete/autocomplete.rb", "lib/rails3-jquery-autocomplete/form_helper.rb", "lib/rails3-jquery-autocomplete/formtastic_plugin.rb", "lib/rails3-jquery-autocomplete/helpers.rb", "lib/rails3-jquery-autocomplete/version.rb", "rails3-jquery-autocomplete.gemspec", "test/form_helper_test.rb", "test/generators/generator_test.rb", "test/helpers.rb", "test/implementations_test.rb", "test/support/active_record.rb", "test/support/mongoid.rb", "test/test_controller.rb", "test/test_helper.rb"]
  s.homepage = %q{http://github.com/crowdint/rails3-jquery-autocomplete}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Use jQuery's autocomplete plugin with Rails 3.}
  s.test_files = ["test/form_helper_test.rb", "test/generators/generator_test.rb", "test/helpers.rb", "test/implementations_test.rb", "test/support/active_record.rb", "test/support/mongoid.rb", "test/test_controller.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.0.0"])
      s.add_development_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_development_dependency(%q<mongoid>, [">= 2.0.0.beta.17"])
      s.add_development_dependency(%q<redgreen>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, ["~> 2.11.1"])
      s.add_development_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 3.0.0"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_dependency(%q<mongoid>, [">= 2.0.0.beta.17"])
      s.add_dependency(%q<redgreen>, [">= 0"])
      s.add_dependency(%q<shoulda>, ["~> 2.11.1"])
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.0.0"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
    s.add_dependency(%q<mongoid>, [">= 2.0.0.beta.17"])
    s.add_dependency(%q<redgreen>, [">= 0"])
    s.add_dependency(%q<shoulda>, ["~> 2.11.1"])
    s.add_dependency(%q<json>, [">= 0"])
  end
end
