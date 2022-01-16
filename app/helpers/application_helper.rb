# frozen_string_literal: true

module ApplicationHelper
  # титул полученый из вьюхи
  def full_title(page_title = '')
    base_title = 'Ruby on Rails Tutorial Sample App' # базовый титул
    if page_title.empty? # если титула в вьюхе нет то
      base_title # базовый титул
    else # иначе
      "#{page_title} | #{base_title}" # титул из вьюхи и базовый
    end
  end
end
