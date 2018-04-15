#
require 'net/http'
require 'uri'
# Page Title
#
# Write a method that takes a URL and
# returns the website's title.
#
# Examples:
# pageTitle("http://google.com") => "Google"
# pageTitle("http://www.reddit.com") => "reddit: the front page of the internet"
#
# Check your answers by running the tests:
# ruby tests/16_page_title_test.rb
#



def pageTitle(url)

   page_content = Net::HTTP.get(URI.parse(url))
   titlefind = /<title>(.*)<\/title>/.match(page_content)
   return titlefind[1]

end
# pageTitle('http://www.google.com.au/?gfe_rd=cr&amp;dcr=0&amp;ei=WCe8WsKlJ6fM8geTw6GIDA')
