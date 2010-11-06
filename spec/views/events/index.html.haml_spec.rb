require 'spec_helper'

describe "events/index.html.haml" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :title => "Title",
        :url => "Url",
        :city => "City",
        :state => "State",
        :location => "Location"
      ),
      stub_model(Event,
        :title => "Title",
        :url => "Url",
        :city => "City",
        :state => "State",
        :location => "Location"
      )
    ])
  end

  it "renders a list of events" do
    render
    rendered.should have_selector("tr>td", :content => "Title".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Url".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "City".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "State".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Location".to_s, :count => 2)
  end
end
