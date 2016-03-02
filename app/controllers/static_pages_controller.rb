class StaticPagesController < ApplicationController


  def root
    render :root
  end

  def apply
    render :apply
  end

  def curriculum
    render :curriculum
  end

  def about
    render :about
  end


end
