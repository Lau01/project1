class ReviewsController < ApplicationController
  before_action :fetch_user
  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new (review_params)

    # Cloudinary upload happens between .new and .save

    #if file uploaded
    if params[:file].present?
      response = Cloudinary::Uploader.upload params[:file]
      @review.image = response["public_id"]
    end

    @review.user = @current_user
    @review.save

    if @review.persisted?
      restaurant = Restaurant.find params[:review][:restaurant_id].to_i
      # raise "hell"
      redirect_to restaurant_path(restaurant)
    else
      flash[:errors] = @review.errors.full_messages
      render :new
    end
  end

  def index

    if params[:content]
      @reviews = Review.where('content LIKE ?', "%#{params[:content]}%")
    else
      @reviews = Review.all
    end

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
    @review = Review.find params[:id]
    unless @review.user == @current_user
        redirect_to reviews_path
        return
      else
        @review.destroy
    end

    redirect_to reviews_path
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id, :image)
  end
end
