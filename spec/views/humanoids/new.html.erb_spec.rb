require 'spec_helper'

describe "humanoids/new" do
  before(:each) do
    assign(:humanoid, stub_model(Humanoid).as_new_record)
  end

  it "renders new humanoid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", humanoids_path, "post" do
    end
  end
end
