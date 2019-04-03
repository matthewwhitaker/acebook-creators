require 'rails_helper'

RSpec.feature 'As a user', type: :feature, js: true do
  scenario 'I can add a friend' do
    another_user = User.create(email: 'another@an.com', password: '123456')
    Post.create(message: 'Hey!!!', user_id: another_user.id.to_s)
    user_sign_up
    create_new_post('Hello')
    click_link another_user.id.to_s
    expect(current_path).to eq "/users/#{another_user.id}"
    click_button 'Add Friend'
    expect(page).to have_button 'Un Friend'
  end
end
