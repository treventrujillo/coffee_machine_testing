class CoffeesController < ApplicationController
  before_action :set_coffee, only: [:show, :new, :edit, :destroy]

  def index
    @coffees = current_user.coffees
  end

  def show
  end

  def new
    @coffee = current_user.coffee.new
  end

  def create
    @coffee = current_user.coffee.new(coffee_params)

    if @coffee.save
      redirect_to @coffee, notice: "Coffee Created!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @coffee.update(coffee_params)
      redirect_to @coffee, notice: "Coffee Updated!"
    else
      render :edit
    end
  end

  def destroy
    @coffee.destroy
    redirect_to coffee_index_path
  end 

  private

    def set_coffee
      @coffee = current_user.coffee.find(params[:id])
    end

    def coffee_params
      require.params(:coffee).permit(:amount, :brew, :ice, :caffeine)
    end 
end
