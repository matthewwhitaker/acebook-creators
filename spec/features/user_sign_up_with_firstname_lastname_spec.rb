require 'rails_helper'
require 'simple_send_keys'

RSpec.feature 'sign_up', type: :feature, js: true do
  scenario 'user can sign_up with firstname and lastname' do
    user_sign_up
    expect(page).to have_content('Jack Ross')
  end
end
