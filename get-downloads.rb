require 'open-uri'
require 'oga'

resp = open(
  "http://192.168.1.1/statswan.cmd",
  http_basic_authentication: ["user", "user"]
)

doc = Oga.parse_html(resp.read)
bytes = doc.at_xpath("/html/body/blockquote/form/table/tr[4]/td[3]").text
puts "Downloaded: #{bytes.to_i / 1_000_000}MB"
