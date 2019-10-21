require 'rails_helper'

RSpec.describe Article, type: :model do
  it "To be able to obtain data when the col is set" do
    article = Article.new(
          title:  "test",
          release_year: 2019,
          release_month: 10,
          release_day: 13,
          unlocking_word: "test",
          meaning: "test meaning",
          example: "test example",
          article_url: "https://test",
          category: "art"
    )
    expect(article.title).to eq "test"
    expect(article.release_year).to eq 2019
    expect(article.release_month).to eq 10
    expect(article.release_day).to eq 13
    expect(article.unlocking_word).to eq "test"
    expect(article.meaning).to eq "test meaning"
    expect(article.example).to eq "test example"
    expect(article.article_url).to eq "https://test"
    expect(article.category).to eq "art"
  end
end
