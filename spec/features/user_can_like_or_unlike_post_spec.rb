require 'rails_helper'

RSpec.feature 'Like', type: :feature, js: true do
  scenario 'Post has a like button' do
    user_sign_up
    create_new_post('Welcome')
    page.find('#like-button').click
  end

  scenario 'User can see the total likes for a post if there is at least 1 like for it' do
    user_sign_up
    create_new_post('Welcome')
    expect(page.first('.card .card-like')).not_to have_content 'Total Likes:'
    page.find('#like-button').click
    expect(page.first('.card .card-like')).to have_content 'Total Likes: 1'
    page.find('#dislike-button').click
    expect(page.first('.card .card-like')).not_to have_content 'Total Likes:'
  end

end
