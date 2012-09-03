class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.json
  def index
    if params[:pupil_id]
      @pupil = Pupil.find(params[:pupil_id])
      @courses = @pupil.courses
    else
      @courses = Course.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = Course.find(params[:id])
    @required_hours = @course.course_type.min_minutes / 60
    @completed_hours = 3
    @required_payment = @required_hours * @course.course_type.hourly_rate
    if not @course.already_paid
      @course.already_paid = 0
    end


    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
    @course = Course.new
    @course.pupil = Pupil.find(params[:pupil_id]) if params[:pupil_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @course }
    end
  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new

    @course.pupil = Pupil.find params[:course][:pupil]
    @course.course_type = CourseType.find params[:course][:course_type]

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, :notice => 'Course was successfully created.' }
        format.json { render :json => @course, :status => :created, :location => @course }
      else
        format.html { render :action => "new" }
        format.json { render :json => @course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.json
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, :notice => 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end
end
