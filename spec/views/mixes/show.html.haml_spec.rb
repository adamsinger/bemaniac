require 'spec_helper'

describe "mixes/show.html.haml" do
  before(:each) do
    @mix = assign(:mix, stub_model(Mix,
      :title => "Title",
      :description => "Description",
      :tracklist => "Tracklist",
      :art => "Art",
      :file => "File",
      :duration => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Title".to_s)
    rendered.should contain("Description".to_s)
    rendered.should contain("Tracklist".to_s)
    rendered.should contain("Art".to_s)
    rendered.should contain("File".to_s)
    rendered.should contain(1.to_s)
  end
end
