def to_html_list(list)
  output = ""
  list.each do |arg|
    output << "<li>#{arg}</li>"
  end
  output = "<ul>#{output}</ul>"
end

puts to_html_list(ARGV)
