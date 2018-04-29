class HomeController < ApplicationController
  def index
    @posts=Daygram.all
  end

  def new
  end

  def create
    @post=Daygram.new
    @post.date=params[:date]
    @post.content=params[:content]
    @post.save

    redirect_to '/'
  end
  def show
    
    @post=Daygram.find(params[:daygram_id])
  end
  def destroy
    @post=Daygram.find(params[:daygram_id])
    @post.destroy
    redirect_to '/'
  end
  def edit
    @post=Daygram.find(params[:daygram_id])
  end
  def update
    @post=Daygram.find(params[:daygram_id])
    @post.date=params[:date]
    @post.content=params[:content]
    @post.save
    
    redirect_to '/'
  end

end
