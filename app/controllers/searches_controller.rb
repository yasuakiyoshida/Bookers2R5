class SearchesController < ApplicationController
  def search
    @books = Book.where('title Like ? ', "#{params[:search]}") if params[:search].present?
  end
  
  # 完全一致検索 => モデル名.where('カラム名 like ?','検索したい文字列')
  # 
end
