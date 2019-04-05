require 'rails_helper'

RSpec.feature 'Like', type: :feature, js: true do
  scenario 'Post has a like button' do
    user_sign_up
    create_new_post('Welcome')
    expect(page.first('.card .card-like')).to have_button 'Like'
  end

  scenario 'User can like a post' do
    user_sign_up
    create_new_post('Welcome')
    click_button 'Like'
    expect(page.first('.card .card-like')).to have_button 'Unlike'
  end

  scenario 'User can unlike a previously liked post' do
    user_sign_up
    create_new_post('Welcome')
    click_button 'Like'
    expect(page.first('.card .card-like')).to have_button 'Unlike'
    click_button 'Unlike'
    expect(page.first('.card .card-like')).to have_button 'Like'
  end

  scenario 'User can see the total likes for a post if there is at least 1 like for it' do
    user_sign_up
    create_new_post('Welcome')
    expect(page.first('.card .card-like')).not_to have_content 'Total Likes:'
    click_button 'Like'
    expect(page.first('.card .card-like')).to have_content 'Total Likes: 1'
    click_button 'Unlike'
    expect(page.first('.card .card-like')).not_to have_content 'Total Likes:'
  end

end
