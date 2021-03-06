# frozen_string_literal: true

# Articles
class ArticlesController < ApplicationController
  http_basic_authenticate_with name: helpers.secret_admin_name,
                               password: helpers.secret_admin_password,
                               except: %i[index show]

  layout 'article'
  def index
    @articles = set_page_and_extract_portion_from Article.all, per_page: [10]
  end

  def new
    @article = @articles || Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def edit
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
