class ProfilesController < ApplicationController

  def en
    @nav_title = 'English Profile'
  end

  def tw
    @nav_title = '中文履歷'
  end

end
