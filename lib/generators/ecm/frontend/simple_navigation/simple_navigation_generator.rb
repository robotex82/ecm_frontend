module Ecm
  module Frontend
    module Generators
      class SimpleNavigationGenerator < Rails::Generators::Base 
        source_root File.expand_path('../templates', __FILE__)
        
        def generate_config
          template "navigation.rb", "config/navigation.rb"
        end
        
        def generate_locales
          template "navigation.en.yml", "config/locales/navigation.en.yml"
        end
      end
    end
  end
end        
