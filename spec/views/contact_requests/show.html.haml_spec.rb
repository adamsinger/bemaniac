require 'spec_helper'

describe "contact_requests/show.html.haml" do
  before(:each) do
    @contact_request = assign(:contact_request, stub_model(ContactRequest,
      :name => "Name",
      :email => "Email",
      :details => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Name".to_s)
    rendered.should contain("Email".to_s)
    rendered.should contain("MyText".to_s)
  end
end
