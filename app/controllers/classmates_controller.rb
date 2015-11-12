class ClassmatesController < ApplicationController
  def index
    # @showNav = true
    @classmates = Classmate.all
  end

  def show
    @showNav = true
    @classmate = Classmate.find(params[:id])
  end

  def new
  end

  def create
    @showNav = true
    @classmate = Classmate.new(params[:classmate])

    respond_to do |format|
      if @classmate.save
        format.html { redirect_to @classmate, notice: 'classmate was successfully created.' }
        format.json { render json: @classmate, status: :created, location: @classmate }
      else
        format.html { render action: "new" }
        format.json { render json: @classmate.errors, status: :unprocessable_entity }
      end
    end
  end
end
