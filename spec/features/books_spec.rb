require 'rails_helper'

describe "creating a book", type: :feature do
  it "creates a new book" do
    visit "/books/new"
    within "#as_books-create--form" do
      fill_in "Title", with: "Pro Git"
      fill_in "Author", with: "Scott Chacon"
      fill_in "Description", with: <<-EOF.strip_heredoc
      Git is the version control system developed by Linus Torvalds for Linux
      kernel development. It took the open source world by storm since its
      inception in 2005, and is used by small development shops and giants like
      Google, Red Hat, and IBM, and of course many open source projects.
      EOF
      fill_in "Website", with: "https://git-scm.com/book/en/v2"
      fill_in "Year published", with: "2009"
    end

    click_button "Create"
    expect(page).to have_text "Created"
  end
end
