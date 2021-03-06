require 'carrierwave/orm/activerecord'

class PostsController < ApplicationController

    def index
      posts = Post.all
      render json: posts
      #render json: PostSerializer.new(posts)
    end 

    # def show
    #   post = Post.find(params[:id])
    #   render json: post
    # end 

    def create
      post = Post.new(brand: params[:brand], price: params[:price], size: params[:size], description: params[:description], website: params[:website], category_id: params[:category_id])
      post.image = params[:image]
     if post.save
        render json: post, status: :accepted
       
      else 
        render json: {errors: post.errors.full_messages}, status: 422
    end 
end 

  def destroy
    post = Post.find(params[:id])
    post.destroy
    render json: {message: "successfully deleted"}
  end 


    private

    def post_params
        params.require(:post).permit(:brand, :image, :price, :size, :description, :website, :category_id)
    end 

end


