class QuotesController < ApplicationController

  def index
    @quotes = Quote.readonly.all
  end

  def new

  end

  def create
    Quote.create(quote_params)
    redirect_to quotes_path
  end

  private def quote_params
    params.require(:quote).permit(:content)
  end

end
