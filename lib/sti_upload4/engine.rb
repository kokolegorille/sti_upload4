module StiUpload4
  class Engine < ::Rails::Engine
    # Configure engine to use RSpec
    config.generators.integration_tool :rspec
    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: true,
        request_specs: false
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end
  end # End class
end
