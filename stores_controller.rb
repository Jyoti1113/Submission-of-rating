class StoresController < ApplicationController
  before_action :require_login

  def index
    @stores = Store.all
    @ratings = Rating.where(user_id: @current_user.id)
  end

  def show
    @store = Store.find(params[:id])
    @rating = Rating.find_by(user_id: @current_user.id, store_id: @store.id)
  end
end
