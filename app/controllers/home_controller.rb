class HomeController < ApplicationController
  def feed
  	@posts = Post.order(score: :desc)
  end

  def show
  	@post = Post.find(params[:id])
  end

  def create_post
    Post.create(link: params[:link], caption: params[:caption], user_id: current_user.id, score: 0)
    redirect_to root_path
  end

  def upvote
  	@post = Post.find(params[:id])
  	@post.score += 1
  	@post.save
  	redirect_to :back
  end

  def downvote
  	@post = Post.find(params[:id])
  	@post.score -= 1
  	@post.save
  	redirect_to :back
  end

  def create_comment
    Comment.create(comment_entry: params[:comment_entry], user_id: current_user.id, post_id: params[:post_id])
    redirect_to :back
  end

  def delete_comment
    Comment.find(params[:id]).destroy
    redirect_to :back
  end
end
