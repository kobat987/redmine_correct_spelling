class SpellingPrefixesController < ApplicationController
  unloadable
  menu_item :spelling
  before_filter :find_project, :authorize
  before_filter :find_spelling_prefix, :except => [:index, :new, :create]

  def index
    @spelling_prefixes = SpellingPrefix.find(
      :all, :conditions => ["project_id = #{@project.id}"])
  end

  def new
    @spelling_prefix=SpellingPrefix.new()
  end

  def create
    @spelling_prefix = SpellingPrefix.new(params[:spelling_prefix])
    @spelling_prefix.project_id = @project.id
    @spelling_prefix.assigned = 0
    if @spelling_prefix.save
      flash[:notice] = l(:notice_successful_create)
      redirect_to project_spelling_prefixes_path(@project)
    end
  end

  def update
    @spelling_prefix.attributes = params[:spelling_prefix]
    if @spelling_prefix.save
      flash[:notice] = l(:notice_successful_update)
      redirect_to project_spelling_prefixes_path(@project)
    end
  end

  def destroy
    @spelling_prefix.destroy
    redirect_to project_spelling_prefixes_path(@project)
  end

  def show
  end

  def edit
  
  end
  
private

  def find_project
    @project = Project.find(params[:project_id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end

  def find_spelling_prefix
    @spelling_prefix = SpellingPrefix.find_by_id(params[:id])
    render_404 unless @spelling_prefix
  end

end
