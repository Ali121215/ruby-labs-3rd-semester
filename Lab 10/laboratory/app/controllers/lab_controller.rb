class LabController < ApplicationController
  def index
  end

  def create
    num = params[:num].to_i
    @arr = num.times.select {|x| is_automorph x+1 }.map {|x| x+1 }.join(' ')

    respond_to do |format|
      format.xml
    end
  end

  def is_automorph(x)
    (x**2).to_s.end_with?(x.to_s)
  end
end
