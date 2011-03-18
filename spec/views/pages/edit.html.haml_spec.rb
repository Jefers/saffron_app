require 'spec_helper'

describe "pages/edit.html.haml" do
  before(:each) do
    @page = assign(:page, stub_model(Page,
      :link => "MyString",
      :title => "MyString",
      :body => "MyText",
      :active => false
    ))
  end

  it "renders the edit page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => page_path(@page), :method => "post" do
      assert_select "input#page_link", :name => "page[link]"
      assert_select "input#page_title", :name => "page[title]"
      assert_select "textarea#page_body", :name => "page[body]"
      assert_select "input#page_active", :name => "page[active]"
    end
  end
end
