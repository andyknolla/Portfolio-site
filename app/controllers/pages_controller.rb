class PagesController < ApplicationController
  def about
    @skills = Skill.all
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end
end

# anything in each of these actions will be run when the matching route is hit. ie pages/home will run 'home' code
