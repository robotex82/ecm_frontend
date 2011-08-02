require 'rails/generators/migration'

module Ecm
  module Frontend
    module Generators
      class LegalGenerator < Rails::Generators::Base
        desc "Generates views for Home#imprint and Home#terms_of_service"

        def generate_imprint
          generate "ecm:core:root_level_action", "Home", "imprint"
        end      
        
        def generate_terms_of_service
          generate "ecm:core:root_level_action", "Home", "terms_of_service"
        end      
      end
    end
  end
end        
