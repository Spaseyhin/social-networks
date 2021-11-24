module ApplicationHelper
  def full_title(page_title = '') #титул полученый из вьюхи
    base_title = "Ruby on Rails Tutorial Sample App"#базовый титул
    if page_title.empty? #если титула в вьюхе нет то
      base_title #базовый титул
    else #иначе
      "#{page_title} | #{base_title}" # титул из вьюхи и базовый
    end
  end
end
