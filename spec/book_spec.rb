require 'spec_helper'

describe Book do

    before :each do
        @book = Book.new "Title", "Author", :category
    end

    describe "#new" do
        it "returns a new book object" do
            @book.should be_an_instance_of Book
        end

        it "throws an ArgumentError when given fewer than 3 parameters" do
            lambda { Book.new "Title", "Author" }.should raise_exception ArgumentError
        end

    end

    describe "#title" do
        it "returns the correct title" do
            @book.title.should eq "Title"
        end
    end

    describe "#title" do
        it "returns the correct author" do
            @book.author.should eq "Author"
        end
    end

    describe "#title" do
        it "returns the correct category" do
            @book.category.should eq :category
        end
    end
end
