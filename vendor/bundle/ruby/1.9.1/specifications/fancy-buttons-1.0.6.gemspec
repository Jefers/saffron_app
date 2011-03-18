# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{fancy-buttons}
  s.version = "1.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brandon Mathis"]
  s.date = %q{2011-01-22}
  s.description = %q{Fancy Buttons helps you easily style buttons with beautiful CSS3 features like gradients, rounded corners, etc. Don't worry the buttons also degrade nicely for browsers with no support. This requires the Compass stylesheet authoring framework.}
  s.email = %q{brandon@imathis.com}
  s.files = ["README.markdown", "VERSION.yml", "Rakefile", "lib/fancy-buttons.rb", "lib/stylesheets/_fancy-buttons.sass", "lib/stylesheets/_fancy-gradient.sass", "lib/stylesheets/_fancy_buttons.sass", "lib/templates/project/button_bg.png", "lib/templates/project/ie6.sass", "lib/templates/project/manifest.rb", "lib/version.rb"]
  s.homepage = %q{http://github.com/imathis/fancy-buttons}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{Make fancy CSS3 buttons with the Compass stylesheet authoring framework.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<compass>, ["= 0.10.6"])
    else
      s.add_dependency(%q<compass>, ["= 0.10.6"])
    end
  else
    s.add_dependency(%q<compass>, ["= 0.10.6"])
  end
end
