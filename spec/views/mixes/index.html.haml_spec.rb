require 'spec_helper'

describe "mixes/index.html.haml" do
  before(:each) do
    assign(:mixes, [
      stub_model(Mix,
        :title => "Title",
        :description => "Description",
        :tracklist => "Tracklist",
        :art => "Art",
        :file => "File",
        :duration => 1
      ),
      stub_model(Mix,
        :title => "Title",
        :description => "Description",
        :tracklist => "Tracklist",
        :art => "Art",
        :file => "File",
        :duration => 1
      )
    ])
  end

  it "renders a list of mixes" do
    render
    rendered.should have_selector("tr>td", :content => "Title".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Description".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Tracklist".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Art".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "File".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
