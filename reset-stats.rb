require 'open-uri'

open(
  "http://192.168.1.1/statswanreset.html",
  http_basic_authentication: ["user", "user"]
)
