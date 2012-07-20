class LessonsController < ApplicationController
  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = Lesson.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @lessons }
    end
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    @lesson = Lesson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @lesson }
    end
  end

  # GET /lessons/new
  # GET /lessons/new.json
  def new
    @lesson = Lesson.new
    @lesson.teacher = Teacher.find(params[:teacher_id]) if params[:teacher_id]
    @lesson.pupil = Pupil.find(params[:pupil_id]) if params[:pupil_id]
    @lesson.lesson_type = LessonType.find(params[:lesson_type_id]) if params[:lesson_type_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @lesson }
    end
  end

  # GET /lessons/1/edit
  def edit
    @lesson = Lesson.find(params[:id])
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = Lesson.new
    @lesson.start = params[:lesson][:start]
    @lesson.end = params[:lesson][:end]
    @lesson.teacher = Teacher.find(params[:lesson][:teacher])
    @lesson.pupil = Pupil.find(params[:lesson][:pupil])
    @lesson.lesson_type = LessonType.find(params[:lesson][:lesson_type])

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, :notice => 'Lesson was successfully created.' }
        format.json { render :json => @lesson, :status => :created, :location => @lesson }
      else
        format.html { render :action => "new" }
        format.json { render :json => @lesson.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lessons/1
  # PUT /lessons/1.json
  def update
    @lesson = Lesson.find(params[:id])

    respond_to do |format|
      if @lesson.update_attributes(params[:lesson])
        format.html { redirect_to @lesson, :notice => 'Lesson was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @lesson.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy

    respond_to do |format|
      format.html { redirect_to lessons_url }
      format.json { head :no_content }
    end
  end
end
