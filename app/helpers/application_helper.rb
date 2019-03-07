module ApplicationHelper
  def stars(rating)
    output = ""
    refresh_rating = rating
    while rating > 0 do
      output += "<i class='fas fa-star'></i>"
      rating -= 1
    end

    count = 5 - refresh_rating
    while count > 0 do
      output += "<i class='far fa-star'></i>"
      count -= 1
    end

    output.html_safe
  end
end

