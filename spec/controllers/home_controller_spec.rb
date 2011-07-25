require 'spec_helper'

describe HomeController do
  render_views 
  
  describe "GET 'index'" do
    it "should " do
      get :index
      response.should render_template("layouts/frontend")
    end
      
    it "should render the correct template" do
      get :index      
      response.should render_template('index')
    end  
  end
end
