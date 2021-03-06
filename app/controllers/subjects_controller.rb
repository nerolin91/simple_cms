class SubjectsController < ApplicationController
  layout false
  def index
    @subjects=Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new(:name => 'default')
  end

  def create
    #Instantiate a new object using form parameters
    @subject = Subject.new(subject_params)
    # same the object
    if @subject.save
      flash[:notice] = "Subject created successfully"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end


  def update
    #find an existing object using form parameters
    @subject = Subject.find(params[:id])
    # same the object
    if @subject.update_attributes(subject_params)
      flash[:notice] = "Subject updated successfully"
      redirect_to(:action => 'show', :id => @subject.id)
    else
      render('edit')
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject=Subject.find(params[:id]).destroy
    flash[:notice] = "Subject destroyed successfully"
    redirect_to(:action => 'index')
  end

  private
    def subject_params
      params.require(:subject).permit(:name,:position,:visible)
    end
end
