class HomeController < ApplicationController
  def top
  end

  def search
    if params[:title] != ''
      words_in_article = Article.where(title: params[:title])
    elsif params[:word] != ''
      articles = Article.find_by(unlocking_word: params[:word])
      words_in_article = Article.where(title: articles.title)
    elsif params[:date] != ''
      date = params[:date].split('-')
      words_in_article = Article.where(release_year: date[0], release_month: date[1], release_day: date[2])
    else
      flash[:notice] = "No search conditions!"
      redirect_to("/") and return
    end

    if words_in_article[0]
      year = words_in_article[0].release_year
      month = words_in_article[0].release_month
      day = words_in_article[0].release_day
      redirect_to("/article/show/#{year}/#{month}/#{day}")
    else
      flash[:notice] = "No results!"
      redirect_to("/") and return
    end

  end

  def search_one_month
    if params[:year] != '' and params[:month] != ''
      words_in_article = Article.where(release_year: params[:year], release_month: params[:month])
      redirect_to("/article/show_one_month/#{params[:year]}/#{params[:month]}")
    else
      flash[:notice] = "No search conditions!"
      redirect_to("/")
    end
  end

end
