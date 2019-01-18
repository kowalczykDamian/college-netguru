class QuotesController < ApplicationController

  def index
    @quotes = Quote.readonly.all
  end

  def show
    @quote = Quote.readonly.find(params[:id])
  end

  def new
    @quote = Quote.new
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      redirect_to quotes_path
    else
      render 'new'
    end
  end

  def update
    @quote = Quote.find(params[:id])

    if @quote.update(quote_params)
      redirect_to quotes_path
    else
      render 'edit'
    end
  end

  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy

    redirect_to quotes_path
  end

  private def quote_params
    params.require(:quote).permit(:content)
  end

end
