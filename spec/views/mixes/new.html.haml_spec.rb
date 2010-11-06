require 'spec_helper'

describe "mixes/new.html.haml" do
  before(:each) do
    assign(:mix, stub_model(Mix,
      :new_record? => true,
      :title => "MyString",
      :description => "MyString",
      :tracklist => "MyString",
      :art => "MyString",
      :file => "MyString",
      :duration => 1
    ))
  end

  it "renders new mix form" do
    render

    rendered.should have_selector("form", :action => mixes_path, :method => "post") do |form|
      form.should have_selector("input#mix_title", :name => "mix[title]")
      form.should have_selector("input#mix_description", :name => "mix[description]")
      form.should have_selector("input#mix_tracklist", :name => "mix[tracklist]")
      form.should have_selector("input#mix_art", :name => "mix[art]")
      form.should have_selector("input#mix_file", :name => "mix[file]")
      form.should have_selector("input#mix_duration", :name => "mix[duration]")
    end
  end
end
