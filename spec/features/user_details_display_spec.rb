require 'rails_helper'

RSpec.feature 'As a user', type: :feature, js: true do
  scenario 'I can see the details of another user' do
    another_user = User.create(firstname: 'Joe', lastname: 'Bloggs', email: 'another@an.com', password: '123456')
    Post.create(message: 'Hey!!!', user_id: another_user.id.to_s)
    user_sign_up
    create_new_post('Hello')
    click_link "#{another_user.firstname} #{another_user.lastname}"
    expect(current_path).to eq "/users/#{another_user.id}"
    expect(page).to have_content "#{another_user.firstname} #{another_user.lastname}"
    expect(page).to have_content "#{another_user.email}"
    expect("#{another_user.firstname} #{another_user.lastname}").to appear_before("#{another_user.email}")
  end
end
