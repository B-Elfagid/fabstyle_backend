class Api::V1::PostsController < ApplicationController

    def index
      posts = Post.all
      #render json: posts
      render json: PostSerializer.new(posts)
    end 

    def create
      post = Post.new(post_params)
      if post.save
        render json: post, status: :accepted
      else 
        render json: {errors: post.errors.full_message}, status: :unprocessible_entity
    end 
end 

    private

    def post_params
        params.require(:post).permit(:brand, :image_url, :price, :size, :description, :website, :category_id)
    end 

end


