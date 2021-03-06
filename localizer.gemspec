# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{localizer}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Elia Schito"]
  s.date = %q{2010-01-09}
  s.description = %q{Includes localization helpers for: routing, views and controllers.}
  s.email = %q{perlelia@gmail.com}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "MIT-LICENSE",
     "README",
     "Rakefile",
     "VERSION",
     "init.rb",
     "install.rb",
     "lib/localizer.rb",
     "lib/localizer/assets/flags/de.gif",
     "lib/localizer/assets/flags/de_big.png",
     "lib/localizer/assets/flags/de_medium.png",
     "lib/localizer/assets/flags/en.gif",
     "lib/localizer/assets/flags/en_big.png",
     "lib/localizer/assets/flags/en_medium.png",
     "lib/localizer/assets/flags/es.gif",
     "lib/localizer/assets/flags/es_big.png",
     "lib/localizer/assets/flags/es_medium.png",
     "lib/localizer/assets/flags/fr.gif",
     "lib/localizer/assets/flags/fr_big.png",
     "lib/localizer/assets/flags/fr_medium.png",
     "lib/localizer/assets/flags/gb.gif",
     "lib/localizer/assets/flags/gb_big.png",
     "lib/localizer/assets/flags/gb_medium.png",
     "lib/localizer/assets/flags/it.gif",
     "lib/localizer/assets/flags/it_big.png",
     "lib/localizer/assets/flags/it_medium.png",
     "lib/localizer/assets/flags/shadow.gif",
     "lib/localizer/assets/flags/us.gif",
     "lib/localizer/assets/flags/us_big.png",
     "lib/localizer/assets/flags/us_medium.png",
     "lib/localizer/config.rb",
     "lib/localizer/controller.rb",
     "lib/localizer/helper.rb",
     "lib/localizer/routes.rb",
     "localizer.gemspec",
     "tasks/localizer_tasks.rake",
     "test/localizer_test.rb",
     "test/test_helper.rb",
     "uninstall.rb"
  ]
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Rails Plugin for easing simple sites localization.}
  s.test_files = [
    "test/localizer_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end

