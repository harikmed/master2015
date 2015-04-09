class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :destroy]
def set_comment
	@comment=Comment.find(params[:id])
	@sujet=@comment.sujet
end

def create
	
		#recuperer le sujet du commentaire 
	 @sujet=Sujet.find(params[:sujet_id])
	session[:titre]=@sujet.titre
	@comment=@sujet.comments.create(comment_params)
  
   respond_to do |format|
      if @comment.save
        format.html { redirect_to @sujet, notice: t('succes_created') }
        format.json { render action: 'show', status: :created, location: @sujet }
      else
      	flash[:error] =@comment.errors.full_messages.join(',').gsub(','," et le ")
        format.html { redirect_to @sujet}
       # format.json { render json: @comment.errors, status: :unprocessable_entity }
      end

    end


end 
=begin

    respond_to do |format|
      if @sujet.save
        format.html { redirect_to @sujet, notice: t('succes_created') }
        format.json { render action: 'show', status: :created, location: @sujet }
      else
        format.html { render action: 'new' }
        format.json { render json: @sujet.errors, status: :unprocessable_entity }
      end

    end
=end 

 

  def destroy

    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @sujet }
      format.json { head :no_content }
    end
end 
  def new
  end

  def show

  end

   def comment_params
   	 @param='test param'
   	  params.require(:comment).permit(:commentaire)
   end

end
