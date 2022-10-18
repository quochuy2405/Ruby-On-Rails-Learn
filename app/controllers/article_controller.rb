class ArticleController < ApplicationController
    before_action :get_service

    def index
      render :json => @service.get_all
    end
    
    def get_by_id
      render :json => @service.get_by_id(params[:id])
    end

    def delete
      render :json => @service.delete(params[:id])
    end

    def update
      render :json => @service.update(params[:id], params)
    end

    private

    def get_service
       @service ||= ArticleService.new
    end

    def article_params
      params.require(:articles).permit(
        :title,
        :name
      )
    end

end
