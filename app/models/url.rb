class Url < ActiveRecord::Base
  #validates :original, uniqueness: true #if false, shorten_it again
  validates :original, format: {with: /[http|https].+/}
  before_create :shorten_it


  def shorten_it
    self.shortened = "deer.ly/#{SecureRandom.hex(4)}"
  end

  def increment
    self.counter += 1
    self.save
  end



end


