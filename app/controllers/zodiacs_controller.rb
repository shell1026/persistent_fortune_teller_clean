class ZodiacsController < ApplicationController
  def destroy_row
    z=Zodiac.find(params[:the_id])
    z.destroy
  end

  def sign
    @zodiac=Zodiac.find_by({:sign=>params[:the_sign]})
  end

  def new_form

  end

  def creature
    @zodiac=Zodiac.find_by({:creature=>params[:the_creature]})
    render('show.html.erb')
  end

  def show
    @zodiac=Zodiac.find_by({:id=>params[:the_id]})
    render('show.html.erb')
  end

  def create_row
    z=Zodiac.new
    z.sign=params[:symbol]
    z.creature=params[:animal]
    z.fortune=params[:horoscope]
    z.save

    @sign=params [:symbol]
    @creature=params [:animal]
    @fortune=params [:horoscope]
  end

  def index

  end
end
