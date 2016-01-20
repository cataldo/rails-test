class BooksController < InheritedResources::Base

  def index
    @books = Book.page(params[:page])
    @book = Book.new
  end

  private

    def book_params
      params.require(:book).permit(:name, :date, :descr, :photo )
    end
end

