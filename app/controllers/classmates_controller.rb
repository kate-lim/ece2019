class ClassmatesController < ApplicationController
  def index
    @navBarTitle = "Classmates"
    @showNav = true
    @classmates = Classmate.all
  end

  def create
    @showNav = true
    @classmate = Classmate.new(params[:classmate])
    @classmate.avatar = params[:file]

    name = @classmate.name
    github = @classmate.githubProfile
    site = @classmate.website

    @classmate.githubProfile = ((github.split('//')[-1]).split('www.')[-1]).split('/')[-1]
    @classmate.website = ((site.split('//')[-1]).split('www.')[-1])

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
