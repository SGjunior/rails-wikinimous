class ArticlesController < ApplicationController
  # CRUD

  # CREATE
    def new
      @article = Article.new
    end

    def create
      @article = Article.new(param_filter)
      @article.save
      redirect_to articles_path
    end

  # READ
    def index
      @articles = Article.all
    end

    def show
      @article = Article.find(params['id'])
    end

  # UPDATE
    def edit
      @article = Article.find(params['id'])
    end

    def update
      @article = Article.find(params['id'])
      @article.update(param_filter)
      redirect_to articles_path
    end
  # DELETE
    def destroy
      @article = Article.find(params['id'])
      @article.delete
      redirect_to articles_path
    end

  private

  def param_filter
    params.require(:article).permit(:title, :content)
  end
end
