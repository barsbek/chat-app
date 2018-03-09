require 'rails_helper'

RSpec.describe "chats/index", type: :view do
  before(:each) do
    assign(:chats, [
      Chat.create!(
        :title => "Title",
        :user => nil
      ),
      Chat.create!(
        :title => "Title",
        :user => nil
      )
    ])
  end

  it "renders a list of chats" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
