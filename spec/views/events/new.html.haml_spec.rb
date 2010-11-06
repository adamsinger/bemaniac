require 'spec_helper'

describe "events/new.html.haml" do
  before(:each) do
    assign(:event, stub_model(Event,
      :new_record? => true,
      :title => "MyString",
      :url => "MyString",
      :city => "MyString",
      :state => "MyString",
      :location => "MyString"
    ))
  end

  it "renders new event form" do
    render

    rendered.should have_selector("form", :action => events_path, :method => "post") do |form|
      form.should have_selector("input#event_title", :name => "event[title]")
      form.should have_selector("input#event_url", :name => "event[url]")
      form.should have_selector("input#event_city", :name => "event[city]")
      form.should have_selector("input#event_state", :name => "event[state]")
      form.should have_selector("input#event_location", :name => "event[location]")
    end
  end
end
