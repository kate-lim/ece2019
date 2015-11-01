class ClassmatesController < ApplicationController
  # GET /classmates
  # GET /classmates.json
  def index
    @classmates = Classmate.all
  end

  # GET /classmates/1
  # GET /classmates/1.json
  def show
    @classmate = Classmate.find(params[:id])
  end

  # GET /classmates/new
  # GET /classmates/new.json
  def new
  end

  # POST /classmates
  # POST /classmates.json
  def create
    @classmate = Classmate.new(params[:classmate])

    @classmate.save
    redirect_to @classmate
  end
end