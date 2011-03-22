require 'spec_helper'

describe "enquiries/edit.html.haml" do
  before(:each) do
    @enquiry = assign(:enquiry, stub_model(Enquiry,
      :user_id => 1,
      :title => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :address => "MyString",
      :address_2 => "MyString",
      :address_3 => "MyString",
      :town => "MyString",
      :post_code => "MyString",
      :contact_telephone => "MyString",
      :email_address => "MyString",
      :domain_name_required => false,
      :website_hosting_required => false,
      :website_development_needed => false,
      :message => "MyText",
      :active => false
    ))
  end

  it "renders the edit enquiry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enquiry_path(@enquiry), :method => "post" do
      assert_select "input#enquiry_user_id", :name => "enquiry[user_id]"
      assert_select "input#enquiry_title", :name => "enquiry[title]"
      assert_select "input#enquiry_first_name", :name => "enquiry[first_name]"
      assert_select "input#enquiry_last_name", :name => "enquiry[last_name]"
      assert_select "input#enquiry_address", :name => "enquiry[address]"
      assert_select "input#enquiry_address_2", :name => "enquiry[address_2]"
      assert_select "input#enquiry_address_3", :name => "enquiry[address_3]"
      assert_select "input#enquiry_town", :name => "enquiry[town]"
      assert_select "input#enquiry_post_code", :name => "enquiry[post_code]"
      assert_select "input#enquiry_contact_telephone", :name => "enquiry[contact_telephone]"
      assert_select "input#enquiry_email_address", :name => "enquiry[email_address]"
      assert_select "input#enquiry_domain_name_required", :name => "enquiry[domain_name_required]"
      assert_select "input#enquiry_website_hosting_required", :name => "enquiry[website_hosting_required]"
      assert_select "input#enquiry_website_development_needed", :name => "enquiry[website_development_needed]"
      assert_select "textarea#enquiry_message", :name => "enquiry[message]"
      assert_select "input#enquiry_active", :name => "enquiry[active]"
    end
  end
end
