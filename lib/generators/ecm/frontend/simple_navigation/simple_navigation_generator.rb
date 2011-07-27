module Ecm
  module Frontend
    module Generators
      class SimpleNavigationGenerator < Rails::Generators::Base 
        source_root File.expand_path('../templates', __FILE__)
        
        def generate_config
          template "config_navigation.rb", "config/navigation.rb"
        end
      end
    end
  end
end        
