require 'rails_helper'

RSpec.feature 'Like', type: :feature, js: true do
  scenario 'Post has a like button' do
    user_sign_up
    create_new_post('Welcome')
    page.find('#like-button').click
  end

  scenario 'User can like a post' do
    user_sign_up
    create_new_post('Welcome')
    # click_button 'Like'
    page.find('#dislike-button').click
  end

  scenario 'User can unlike a previously liked post' do
    # user_sign_up
    # create_new_post('Welcome')
    # click_button 'Like'
    # expect(page.first('.card .card-like')).to have_button 'Unlike'
    # click_button 'Unlike'
    # expect(page.first('.card .card-like')).to have_button 'Like'
  end
end
