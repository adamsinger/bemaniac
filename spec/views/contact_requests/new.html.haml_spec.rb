require 'spec_helper'

describe "contact_requests/new.html.haml" do
  before(:each) do
    assign(:contact_request, stub_model(ContactRequest,
      :new_record? => true,
      :name => "MyString",
      :email => "MyString",
      :details => "MyText"
    ))
  end

  it "renders new contact_request form" do
    render

    rendered.should have_selector("form", :action => contact_requests_path, :method => "post") do |form|
      form.should have_selector("input#contact_request_name", :name => "contact_request[name]")
      form.should have_selector("input#contact_request_email", :name => "contact_request[email]")
      form.should have_selector("textarea#contact_request_details", :name => "contact_request[details]")
    end
  end
end
