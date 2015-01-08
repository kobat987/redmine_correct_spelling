Redmine::Plugin.register :redmine_correct_spelling do
  name 'Redmine Correct Spelling plugin'
  author 'kobat'
  description 'This is a plug-in to create a glossary of correct spelling in Redmine.'
  version '1.0.0'
  url 'https://github.com/kobat987/redmine_correct_spelling/'
  author_url 'http://otsukare-tion.com/'

  project_module :spelling do
  permission :view_spelling_prefix, :spelling_prefixes => [:index]
  permission :manage_spelling_prefix,
    :spelling_prefixes => [:new, :edit, :create, :show, :update, :destroy],
    :require => :member
  end

  menu :project_menu, :spelling,
       {:controller => 'spelling_prefixes', :action => 'index'},
       :param => :project_id

end
