require 'chunky_png'

COLORS = %w(IndianRed OliveDrab DarkSlateBlue DarkKhaki).freeze
  
def generate_profile_images
  COLORS.each do |color|
    width = 200
    height = 200
    png = ChunkyPNG::Image.new(width, height, ChunkyPNG::Color(color))
    filename = "Profile_#{color}.png"
    save_path = "source/images/profiles/#{filename}"
    png.save(save_path)
    puts "Profile Images Generated"
  end
end

def generate_hero_images
  COLORS.each do |color|
    width = 500
    height = 45
    png = ChunkyPNG::Image.new(width, height, ChunkyPNG::Color(color))
    filename = "#{color}.png"
    save_path = "source/images/hero-images/#{filename}"
    png.save(save_path)
    puts "Hero Images Generated"
  end
end

  generate_profile_images
  generate_hero_images