NetComm NB604N Stats
====================

These scripts use the default `user` credentials for the NetComm NB604N router
to demostrate how to retrieve and reset the tracked statistics.

It relies on scraping the HTML provided by the HTTP interface, however there
would be alternatives to this approach such as telnet, ssh and possibly SNMP,
however HTTP is almost always available by default from within the LAN and
pretty easy to scrape.

It does require the `oga` gem to handle parsing the HTML, but I chose to do this
because it was the simplest implementation I could think of at the time.
It may be possible to do this without any gem dependencies but without resorting
to regex, this approach was very easy!

Be sure to `bundle install`.
