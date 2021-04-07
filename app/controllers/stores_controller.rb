class StoresController < ApplicationController

    def index
        stores = Store.all
        render json: stores
    end

    def show
        store = Store.find(params[:id])
    end

    def create
        store = Store.create(store_params)
        render json: store
    end

    def update
        @store.update(store_params)
        render json: @store
    end

    private

    def store_params
        params.permit(:name)
    end

end
