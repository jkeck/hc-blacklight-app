module ApplicationHelper

  def render_url_fulltext_display(field)
    if field[:value].present?
      field[:value].map do |value|
        link_to(value)
      end.join('<br/>').html_safe
    end
  end

  def render_my_thumbnail(document, options)
    if(document[:isbn_t].present?)
      image_tag("http://stacks.stanford.edu/image/mf774fs2413/#{document[:isbn_t].first}_square")
    else
      nil
    end
  end
  def render_language_facet_value(value)
    if value == "English"
      "Esperanto"
    else
      value
    end
  end
end
