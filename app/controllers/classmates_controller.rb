class ClassmatesController < ApplicationController
  def index
    @navBarTitle = "Classmates"
    @pageName = "Classmates"
    @showNav = true
    @classmates = Classmate.all.order(:created_at)
    @stick_footer = true
  end

  def create
    @classmate = Classmate.new(params[:classmate])
    @classmate.avatar = params[:file]

    name = @classmate.name
    github = @classmate.githubProfile
    site = @classmate.website
    @classmate.approved = false

    respond_to do |format|
      if @classmate.save
        format.html { redirect_to action: "index"}
        format.json { render json: @classmate, status: :created, location: @classmate }
      else
        format.html { render action: "new" }
        format.json { render json: @classmate.errors, status: :unprocessable_entity }
      end
    end
  end
end
