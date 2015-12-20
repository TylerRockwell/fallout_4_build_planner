class BuildsController < ApplicationController
  before_action :set_build, only: [:show, :edit, :update, :destroy]

  # GET /builds
  def index
    @builds = Build.all
  end

  # GET /builds/1
  def show
    @perk_specials = SpecialStatType.all
  end

  # GET /builds/new
  # def new
  #   @build = Build.create
  #
  #   redirect_to edit_build_path(@build)
  # end

  # GET /builds/1/edit
  def edit
  end

  # POST /builds
  def create
    @build = Build.new

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
      @build = Build.includes([{perks: :perk_type}, {special_stats: :special_stat_type}]).find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def build_params
      params.require(:build).permit(:name, :description, perks_attributes: [:id, :current_rank],
          special_stats_attributes: [:level, :id])
    end
end
