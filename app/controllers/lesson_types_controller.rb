class LessonTypesController < ApplicationController
  def index
    @lesson_types = LessonType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @lesson_types }
    end
  end

  # GET /lesson_types/1
  # GET /lesson_types/1.json
  def show
    @lesson_type = LessonType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @lesson_type }
    end
  end

  # GET /lesson_types/new
  # GET /lesson_types/new.json
  def new
    @lesson_type = LessonType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @lesson_type }
    end
  end

  # GET /lesson_types/1/edit
  def edit
    @lesson_type = LessonType.find(params[:id])
  end

  # POST /lesson_types
  # POST /lesson_types.json
  def create
    @lesson_type = LessonType.new(params[:lesson_type])

    respond_to do |format|
      if @lesson_type.save
        format.html { redirect_to @lesson_type, :notice => 'LessonType was successfully created.' }
        format.json { render :json => @lesson_type, :status => :created, :location => @lesson_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @lesson_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lesson_types/1
  # PUT /lesson_types/1.json
  def update
    @lesson_type = LessonType.find(params[:id])

    respond_to do |format|
      if @lesson_type.update_attributes(params[:lesson_type])
        format.html { redirect_to @lesson_type, :notice => 'LessonType was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @lesson_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_types/1
  # DELETE /lesson_types/1.json
  def destroy
    @lesson_type = LessonType.find(params[:id])
    @lesson_type.destroy

    respond_to do |format|
      format.html { redirect_to lesson_types_url }
      format.json { head :no_content }
    end
  end
end
