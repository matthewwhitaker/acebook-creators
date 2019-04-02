require 'rails_helper'

RSpec.feature 'Like', type: :feature, js: true do
  scenario 'Post has a like button' do
    user_sign_up
    create_new_post("Welcome")
    expect(page.first('.card .card-like')).to have_button 'Like'
  end
end
