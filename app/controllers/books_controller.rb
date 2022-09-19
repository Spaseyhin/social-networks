class BooksController < ApplicationController
   def index
      @books = Book.all
   end
   
   def show
      @book = Book.find(params[:id])
   end
   def new
      @book = Book.new
   end

   def create
      @book = Book.new(book_params)
      
      if @book.save
         redirect_to root_path, notice: "Book #{@book.name} Published"
      else
         render "new"
      end
      
   end
   

   def destroy
      @book = Book.find(params[:id])
      @book.destroy
      redirect_to root_path, notice:  "Book #{@book.name} deleted"
   end

   def download_pdf
      send_file "#{Rails.root}/public/books/Книга.docx", x_sendfile: true
   end

   def download_jpg
      send_file "#{Rails.root}/public/books/обложка.jpg", x_sendfile: true
   end
   
   private

   def book_params
      params.require(:book).permit(:name, :attachment, :desc, :page, :image)
   end
end


