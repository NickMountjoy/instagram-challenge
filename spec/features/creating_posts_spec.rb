require 'rails_helper'

feature 'Creating posts' do
  scenario 'can create a new post' do
    visit'/'
    click_link 'New post'
    attach_file('Image', "public/files/images/olympic.jpg")
    fill_in 'Caption', with: '2012'
    click_button 'Create Post'
    expect(page).to have_content('2012')
    expect(page).to have_css("img[src*='olympic.jpg']")
  end
end
