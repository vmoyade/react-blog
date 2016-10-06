class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = {list: Comment.all}
  end

  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    if request.xhr?
      render :json => Comment.last(5)
    else
      redirect_to comments_path
    end   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:author, :body)
    end
end
