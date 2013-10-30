require_relative './spec_helper.rb'

describe "RootController" do
  def app
    RootController
  end

  def session
    @session ||= {}
  end

  before(:each) do
    RootController.any_instance.stub(:session).and_return(session)
  end

  it "sets session" do
    get '/'
    session[:whatever].should eq("whatever, guy")
  end

  it "is better to test the state of something that uses session" do
    get '/'
    get '/test'
    last_response.body.should include("whatever, guy")
  end
end
