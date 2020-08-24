class ProfilesController < ApplicationController

  before_action :common_params

  def en
    @nav_title = 'Profile'
  end

  def tw
    @nav_title = '履歷'
  end

  private

  def common_params
    @proficient = ['Ruby', 'Ruby on Rails', 'Ruby on Jets', 'HAML', 'SCSS', 'Redis', 'Docker',
      'Docker-Compose', 'Bootstrap', 'Git', 'Vagrant', 'Travis-CI', 'Gitlab-CI', 'Cucumber', 'Rspec']
    @familier = ['AWS', 'Javascript', 'CoffeeScript', 'jQuery', 'AngularJS', 'NodeJS', 'Mocha', 'Serverless',
      'C', 'SQL', 'HTML/CSS', 'Bash/Shell Script', 'Chef']
    @tools = ['iTerm2 (macOS Terminal)','Sublime Text 3 (code editor)', 'Sequel Pro (MySQL client)', 'Medis (Redis client)',
      'SourceTree (Git GUI)', 'Postman (API client)', 'Typora (Markdown editor)']
  end

end
