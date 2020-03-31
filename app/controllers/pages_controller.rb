class PagesController < ApplicationController
  def home
    @skills = Skill.all
    @blogs = Blog.all
    @portfolios = Portfolio.all
  end

  def about
  end

  def contact
  end
end
