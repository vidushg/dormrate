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
    val = rand(1...8)
    arr = "Younker","Main","Smith","Haines","Dibble","Lazier","Clangrala","Loose"
    @result = arr[val]
  end
  
end
