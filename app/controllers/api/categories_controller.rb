class Api::CategoriesController < ApplicationController

    def index
        render json: Category.all 
    end

    def create
        cate = Category.create(name: params[:name])
            render json: cat
    end

    def update
        cate = Category.find(params[:id])
        cate.update            
        render json: cate
    end

    def destroy
        Category.find(params[:id]).destroy
    end
end
