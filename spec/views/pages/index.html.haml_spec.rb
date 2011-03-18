require 'spec_helper'

describe "pages/index.html.haml" do
  before(:each) do
    assign(:pages, [
      stub_model(Page,
        :link => "Link",
        :title => "Title",
        :body => "MyText",
        :active => false
      ),
      stub_model(Page,
        :link => "Link",
        :title => "Title",
        :body => "MyText",
        :active => false
      )
    ])
  end

  it "renders a list of pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
