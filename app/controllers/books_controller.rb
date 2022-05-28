class BooksController < ApplicationController
   def index
      @books = Book.all
   end
   
   def new
      @book = Book.new
   end

   def create
      @book = Book.new(book_params)
      
      if @book.save
         redirect_to book_path, notice: "Книга #{@book.name} Опубликована"
      else
         render "new"
      end
      
   end
   
   def destroy
      @book = Book.find(params[:id])
      @book.destroy
      redirect_to book_path, notice:  "Книга #{@book.name} удалена"
   end

   def download_pdf
      send_file "#{Rails.root}/public/books/Книга", x_sendfile: true

   end
   
   private
      def book_params
      params.require(:book).permit(:name, :attachment, :desc, :page, :image)
   end
   
end