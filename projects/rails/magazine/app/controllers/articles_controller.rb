class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    def index
        @articles = Article.all
     end
    def new 
        @article = Article.new

    end
    def edit
        # @article = Article.find(params[:id])
      end

      def update
        # @article = Article.find(params[:id])
        if @article.update(article_params)
          redirect_to @article
      else
          render 'edit'
        end
      end


    def destroy
        # @article = Article.find(params[:id]) 
        @article.destroy
        redirect_to articles_path
    end
    
    def create
        # render plain: params[:article].inspect
        #creates a new instance of the article model populated with the params hash
        # @article = Article.new(article_params)
        #save me article to the db
        if @article.save
            redirect_to @article
       else
            render 'new'
       end
    end
    
    def show
        # @article = Article.find(params[:id])
    end
    
    private
    
    def article_params
        params.require(:article).permit(:title, :content)
    end

    def set_article
        @article = Article.find(params[:id])
      end
end
