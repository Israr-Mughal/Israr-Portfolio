class PortfoliosController < ApplicationController
      before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]
 
    layout "portfolio"

    def index
        @portfolio_items = Portfolio.all
    end

    def anguler 
        @portfolio_items = Portfolio.anguler
    end

     def rubyonrails 
        @portfolio_items = Portfolio.rubyonrails
    end
    
    def new
        @portfolio_item = Portfolio.new
        3.times {@portfolio_item.technologies.build}
    end
    
    def create
        @portfolio_item = Portfolio.new(portfolio_params)

        respond_to do |format|
            if @portfolio_item.save
                format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
            else
                format.html { render :new }
            end
        end
    end

    def edit 
    end

    # PATCH/PUT /blogs/1
    # PATCH/PUT /blogs/1.json
    def update
        respond_to do |format|
            if @portfolio_item.update(portfolio_params)
                format.html { redirect_to @portfolio_item, notice: 'Portfolio Item was successfully updated.' }
                format.json { render :show, status: :ok, location: @blog }
            else
                format.html { render :edit }
                format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
            end
        end
    end

    def show 
    end


  # DELETE /Portfolio/1
  # DELETE /Portfolio/1.json
  def destroy

    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio was removed.' }
    end
  end

  private
    def set_portfolio_item
        @portfolio_item = Portfolio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image, technologies_attributes: [:name])
    end

end
