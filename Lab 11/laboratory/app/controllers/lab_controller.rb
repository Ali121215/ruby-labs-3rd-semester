class LabController < ApplicationController
  def index
  end

  def create
    n = params[:n].to_i
    if res = Result.find_by_n(n)
      @arr = res.arr.split(' ')
    else
      @arr = n.times.select {|x| is_automorph x+1 }.map {|x| x+1 }
      if @arr.length > 0
        res = Result.create :n => n, :arr => @arr.join(' ')
        res.save
      else
        res = Result.create :n => n, :arr => "Нет"
        res.save
      end
    end
  end

  def is_automorph(x)
    (x**2).to_s.end_with?(x.to_s)
  end

  def results
    render xml: Result.all
  end
end
