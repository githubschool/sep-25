require 'rails_helper'

describe Book do
  describe "#old?" do
    it "retruns true for books older than 25 years" do
      book = Book.new(title: "Old Book", year_published: 1965)
      expect(book).to be_old
    end

    it "retruns false for books not older than 25 years" do
      book = Book.new(title: "New Book", year_published: 2009)
      expect(book).to_not be_old
    end
  end
end
