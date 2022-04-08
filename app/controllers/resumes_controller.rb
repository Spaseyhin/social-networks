class ResumesController < ApplicationController
   def index
      @resumes = Resume.all
   end
   
   def new
      @resume = Resume.new
   end

   def create
      @resume = Resume.new(resume_params)
      
      if @resume.save
         redirect_to resumes_path, notice: "Книга #{@resume.name} Опубликована"
      else
         render "new"
      end
      
   end
   
   def destroy
      @resume = Resume.find(params[:id])
      @resume.destroy
      redirect_to resumes_path, notice:  "Книга #{@resume.name} удалена"
   end

   def download_pdf
   send_file(
    "#{Rails.root}/public/1.pdf",
    filename: "your_custom_file_name.pdf",
    type: "application/pdf")
   end

   
   private
      def resume_params
      params.require(:resume).permit(:name, :attachment, :desc, :page, :image)
   end
   
end