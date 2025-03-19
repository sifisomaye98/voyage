module ApplicationHelper
  def clean_and_format_description(description)

    # Remove all instances of ### and ** (used for headings and bold formatting)
    if description
    cleaned_description = description.gsub(/### /, '').gsub(/\*\*/,'')

    # Now use simple_format to ensure line breaks and paragraphs are handled
    simple_format(cleaned_description)
    end
  end
end

