require 'rails_helper'

describe 'The posts page' do
  it 'should allow a user to create a post' do
    visit '/posts'
    click_link 'Create Post'
    fill_in 'Title', with: 'Bla'
    fill_in 'Description', with: 'blablabla'
    attach_file 'Image', Rails.root.join('spec/readlinesHero.gif')
    click_button 'Upload'
    expect(page).to have_content 'Bla'
    expect(page).to have_content 'blablabla'
    expect(page).to have_css 'img.uploaded-pic'
  end
end