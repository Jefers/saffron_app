require 'spec_helper'

describe "enquiries/index.html.haml" do
  before(:each) do
    assign(:enquiries, [
      stub_model(Enquiry,
        :user_id => 1,
        :title => "Title",
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :address_2 => "Address 2",
        :address_3 => "Address 3",
        :town => "Town",
        :post_code => "Post Code",
        :contact_telephone => "Contact Telephone",
        :email_address => "Email Address",
        :domain_name_required => false,
        :website_hosting_required => false,
        :website_development_needed => false,
        :message => "MyText",
        :active => false
      ),
      stub_model(Enquiry,
        :user_id => 1,
        :title => "Title",
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :address_2 => "Address 2",
        :address_3 => "Address 3",
        :town => "Town",
        :post_code => "Post Code",
        :contact_telephone => "Contact Telephone",
        :email_address => "Email Address",
        :domain_name_required => false,
        :website_hosting_required => false,
        :website_development_needed => false,
        :message => "MyText",
        :active => false
      )
    ])
  end

  it "renders a list of enquiries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address 3".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Town".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Post Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Contact Telephone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
