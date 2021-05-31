class StoresController < ApplicationController

    def index
        stores = Store.all
        render json: stores
    end

    def show
        store = Store.find(params[:id])
        render json: store
    end

    def create
        store = Store.create(store_params)
        render json: store
    end

    def destroy
        store = Store.find(params[:id])
        store.destroy
        render json: {message: "#{store.name} has been deleted."}
    end

    def update
        item = Item.find(params[:id])
        item.update(item_params)
        render json: Item.new(item)
    end

    

    private

    def store_params
        params.require(:store).permit(:name, :id)
    end

end
