class ArticleController < ApplicationController
  def show
    @articles = Article.where(release_year: params[:year], release_month: params[:month], release_day: params[:day])
  end

  def show_one_month
    @articles = Article.where(release_year: params[:year], release_month: params[:month])
  end
end
