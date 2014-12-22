class SpellingPrefixesController < ApplicationController
  unloadable
  menu_item :spelling
  before_filter :find_project, :authorize

  def index
    @spelling_prefixes = SpellingPrefix.find(
      :all, :conditions => ["project_id = #{@project.id}"])
  end

  def new
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

end
