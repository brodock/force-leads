# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: force_leads 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "force_leads"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Gabriel Mazetto"]
  s.date = "2014-07-01"
  s.description = "This is a Salesforce REST integration demo gem that was create as a proof of concept and can be used to create a new Lead on a OAuth2 authenticated organization"
  s.email = "brodock@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".travis.yml",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "force_leads.gemspec",
    "lib/force_leads.rb",
    "lib/force_leads/lead.rb",
    "lib/force_leads/oauth_credential.rb",
    "spec/fixtures/create_success_response.json",
    "spec/spec_helper.rb",
    "spec/support/fixture_helpers.rb",
    "spec/unit/lead_spec.rb",
    "spec/unit/oauth_credential_spec.rb"
  ]
  s.homepage = "http://github.com/brodock/force-leads"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Salesforce REST integration demo gem"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<restforce>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8"])
      s.add_development_dependency(%q<shoulda>, ["~> 3.5"])
      s.add_development_dependency(%q<yard>, ["~> 0.7"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.8"])
      s.add_development_dependency(%q<faker>, ["~> 1.3"])
      s.add_development_dependency(%q<webmock>, ["~> 1.13"])
    else
      s.add_dependency(%q<restforce>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.8"])
      s.add_dependency(%q<shoulda>, ["~> 3.5"])
      s.add_dependency(%q<yard>, ["~> 0.7"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_dependency(%q<simplecov>, ["~> 0.8"])
      s.add_dependency(%q<faker>, ["~> 1.3"])
      s.add_dependency(%q<webmock>, ["~> 1.13"])
    end
  else
    s.add_dependency(%q<restforce>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.8"])
    s.add_dependency(%q<shoulda>, ["~> 3.5"])
    s.add_dependency(%q<yard>, ["~> 0.7"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0"])
    s.add_dependency(%q<simplecov>, ["~> 0.8"])
    s.add_dependency(%q<faker>, ["~> 1.3"])
    s.add_dependency(%q<webmock>, ["~> 1.13"])
  end
end

