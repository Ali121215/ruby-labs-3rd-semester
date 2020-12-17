class LabController < ApplicationController
  def index
  end

  def create
    n = params[:n].to_i
    @arr = n.times.select {|x| is_automorph x+1 }.map {|x| x+1 }

    respond_to do |format|
      format.html
      format.json do
        render json:
            { arr: @arr }
      end
    end
  end

  def is_automorph(x)
    (x**2).to_s.end_with?(x.to_s)
  end
end
