Gem::Specification.new do |s|
  s.name        = 'logstash-input-http_poller'
  s.version     = '5.4.0'
  s.licenses    = ['Apache License (2.0)']
  s.summary     = "Decodes the output of an HTTP API into events"
  s.description = "This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/logstash-plugin install gemname. This gem is not a stand-alone program"
  s.authors     = [ "Elastic", "andrewvc"]
  s.email       = 'info@elastic.co'
  s.homepage    = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir["lib/**/*","spec/**/*","*.gemspec","*.md","CONTRIBUTORS","Gemfile","LICENSE","NOTICE.TXT", "vendor/jar-dependencies/**/*.jar", "vendor/jar-dependencies/**/*.rb", "VERSION", "docs/**/*"]
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency "logstash-mixin-http_client", ">= 7.2.0"
  s.add_runtime_dependency 'logstash-mixin-scheduler', '~> 1.0'
  s.add_runtime_dependency 'logstash-mixin-ecs_compatibility_support', '~>1.3'
  s.add_runtime_dependency 'logstash-mixin-event_support', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'logstash-mixin-validator_support', '~> 1.0'

  s.add_development_dependency 'logstash-codec-json'
  s.add_development_dependency 'logstash-codec-line'
  s.add_development_dependency 'logstash-devutils'
  s.add_development_dependency 'flores'
  s.add_development_dependency 'timecop'
end
