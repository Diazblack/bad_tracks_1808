require 'rails_helper'

describe 'who cares' do
  it 'should let me see all categories' do
    username = 'Admin'
    password = 'test1234'
    admin = User.create(username: username, password: password, role: 1)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit admin_categories_path
    expect(page).to have_content("Admin Categories")
  end
end
