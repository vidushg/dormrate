class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def contact
      end

  def about
      end

  def hall
    val = rand(1...11)
    arr = "Younker","Main","Smith","Haines","Dibble","Lazier","Gates","Loose","Clark","Norris","Langan"
    @result = arr[val]
  end

end
