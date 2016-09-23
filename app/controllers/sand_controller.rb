class SandController < ApplicationController
  def new
    @username=params[:username]
    @password=params[:password]
    @n=Sand.new
    @n.username=@username
    @n.password=@password
    if @n.save
      render "show"
    end
  end

  def show
    @s=Sand.all
  end

  def insert
  end

  def delete
    @id=params[:id]
    @s=Sand.find(@id)
    if @s.destroy
      @msg="user deleted"
      redirect_to :action=>"show" 
    end
  end

  def update
    @id=params[:id]
  end

  def update2
    @id=params[:id]
    @username=params[:Sand][:username]
    @password=params[:Sand][:password]

    @u=Sand.find(@id)
    @u.username=@username
    @u.password=@password
    if @u.save

      redirect_to :action=>"show"


    end




  end

  

end
