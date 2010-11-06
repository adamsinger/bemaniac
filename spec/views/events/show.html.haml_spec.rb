require 'spec_helper'

describe "events/show.html.haml" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :title => "Title",
      :url => "Url",
      :city => "City",
      :state => "State",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Title".to_s)
    rendered.should contain("Url".to_s)
    rendered.should contain("City".to_s)
    rendered.should contain("State".to_s)
    rendered.should contain("Location".to_s)
  end
end
