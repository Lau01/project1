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

    # Review.joins(:user).where('name ILIKE :query', query: '%bob%')
    # Review.joins(:user).where('rating >= :val', val: 4)

    if params[:name]
      @reviews = Review.joins(:user).where('name ILIKE :query', query: "%#{params[:name]}%")
    else
      @reviews = Review.all
    end
  end

  def like
    @review = Review.find params[:id].to_i

    # add current user to the liked_by list if the user hasn't liked it
    unless @review.liked_by.include? @current_user
      @review.liked_by << @current_user
    end

    redirect_to review_path(@review)
  end

  def unlike
    @review = Review.find params[:id].to_i

    if @review.liked_by.include? @current_user
      @review.liked_by.delete(@current_user)
    end

    redirect_to review_path(@review)
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
      if params[:file].present?
        response = Cloudinary::Uploader.upload params[:file]
        @review.image = response["public_id"]
        @review.save
      end
      
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
