module CocktailsHelper
  def render_stars(value)
    output = ''
    if (1..5).include?(value.to_i)
      value.to_i.times { output += '<i class="fas fa-star"></i>'}
    end
    output
  end
end
