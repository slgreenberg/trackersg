class FitnessClassesController < ApplicationController
  # GET /fitness_classes
  # GET /fitness_classes.json
  def index
    @fitness_classes = FitnessClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fitness_classes }
    end
  end

  # GET /fitness_classes/1
  # GET /fitness_classes/1.json
  def show
    @fitness_class = FitnessClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fitness_class }
    end
  end

  # GET /fitness_classes/new
  # GET /fitness_classes/new.json
  def new
    @fitness_class = FitnessClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fitness_class }
    end
  end

  # GET /fitness_classes/1/edit
  def edit
    @fitness_class = FitnessClass.find(params[:id])
  end

  # POST /fitness_classes
  # POST /fitness_classes.json
  def create
    @fitness_class = FitnessClass.new(params[:fitness_class])

    respond_to do |format|
      if @fitness_class.save
        format.html { redirect_to @fitness_class, notice: 'Fitness class was successfully created.' }
        format.json { render json: @fitness_class, status: :created, location: @fitness_class }
      else
        format.html { render action: "new" }
        format.json { render json: @fitness_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fitness_classes/1
  # PUT /fitness_classes/1.json
  def update
    @fitness_class = FitnessClass.find(params[:id])

    respond_to do |format|
      if @fitness_class.update_attributes(params[:fitness_class])
        format.html { redirect_to @fitness_class, notice: 'Fitness class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fitness_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fitness_classes/1
  # DELETE /fitness_classes/1.json
  def destroy
    @fitness_class = FitnessClass.find(params[:id])
    @fitness_class.destroy

    respond_to do |format|
      format.html { redirect_to fitness_classes_url }
      format.json { head :no_content }
    end
  end
end
