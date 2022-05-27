class BooksController < ApplicationController
   def index
      @books = Resume.all
   end
   
   def new
      @book = Resume.new
   end

   def create
      @book = Resume.new(book_params)
      
      if @book.save
         redirect_to book_path, notice: "Книга #{@book.name} Опубликована"
      else
         render "new"
      end
      
   end
   
   def destroy
      @book = Resume.find(params[:id])
      @book.destroy
      redirect_to book_path, notice:  "Книга #{@book.name} удалена"
   end
   
   private
      def book_params
      params.require(:book).permit(:name, :attachment, :desc, :page, :image)
   end
   
end