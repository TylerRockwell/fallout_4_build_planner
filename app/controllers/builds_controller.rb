class BuildsController < ApplicationController
  before_action :set_build, only: [:show, :edit, :update, :destroy]

  # GET /builds
  def index
    @builds = Build.all
  end

  # GET /builds/1
  def show
  end

  # GET /builds/new
  def new
    @build = Build.new
  end

  # GET /builds/1/edit
  def edit
  end

  # POST /builds
  def create
    @build = Build.new(build_params)

    if @build.save
      redirect_to @build, notice: 'Build was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /builds/1
  def update
    if @build.update(build_params)
      redirect_to @build, notice: 'Build was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /builds/1
  def destroy
    @build.destroy
    redirect_to builds_url, notice: 'Build was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_build
      @build = Build.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def build_params
      params.require(:build).permit(:name, :description)
    end
end
