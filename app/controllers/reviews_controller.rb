class ReviewsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new (review_params)
    @review.user = @current_user
    @review.save

    if @review.persisted?
      redirect_to reviews_path
    else
      flash[:errors] = @review.errors.full_messages
      render :new
    end
  end

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find params[:id]
  end

  def edit
    @review = Review.find params[:id]
  end

  def update
    @review = Review.find params[:id]

    unless @review.user == @current_user
      redirect_to restaurants_path
      return
    end

    if @review.update(review_params)
      redirect_to review_path(@review)
    else
      flash[:errors] = @review.errors.full_messages
      render :edit
    end
  end

  def destroy
    unless @review.user == @current_user
      redirect_to reviews_path
      return
    end

    Review.find(params[:id]).destroy
    redirect_to reviews_path
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id, :image)
  end
end
