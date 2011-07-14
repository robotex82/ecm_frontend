require 'spec_helper'

describe HomeController do
  render_views 
  
  it "should use the right layout" do
    get :index
    response.should render_template("layouts/frontend")
  end
end
