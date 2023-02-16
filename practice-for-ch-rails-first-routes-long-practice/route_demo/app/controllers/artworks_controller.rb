class ArtworksController < ApplicationController
    def index
    #   debugger
      @user = User.find(params[:user_id])
    #   @artworks = Artwork.find_by(artist_id: params[:user_id])
      render json: @user.artworks + @user.shared_artworks
    end
  
    def create
      # debugger
      artwork = Artwork.new(artwork_params)
      if artwork.save
        render json: artwork
      else
        render json: artwork.errors.full_messages, status: 422
      end
    end
  
    def show
      @artwork = Artwork.find(params[:id])
      render json: @artwork
    end
  
    def update
      @artwork = Artwork.find(params[:id])
      if @artwork.update(artwork_params)
        redirect_to artwork_url(@artwork.id)
      else
        render json: @artwork.errors.full_messages, status: 422
      end
  
    end
  
  
    def destroy
      @artwork = Artwork.find(params[:id])
      if @artwork.destroy 
        render json: "artwork deleted"
      else
        render json: @artwork.errors.full_messages, status: 422
      end
    end
  
    private
    def artwork_params
      params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
  end