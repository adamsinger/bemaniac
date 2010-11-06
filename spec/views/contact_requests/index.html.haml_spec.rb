require 'spec_helper'

describe "contact_requests/index.html.haml" do
  before(:each) do
    assign(:contact_requests, [
      stub_model(ContactRequest,
        :name => "Name",
        :email => "Email",
        :details => "MyText"
      ),
      stub_model(ContactRequest,
        :name => "Name",
        :email => "Email",
        :details => "MyText"
      )
    ])
  end

  it "renders a list of contact_requests" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Email".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
  end
end
