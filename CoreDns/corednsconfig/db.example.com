$ORIGIN example.com.
example.com.  3600   IN       SOA     ns1.example.com. webmaster.example.com. 2120051007 3600 600 604800 1800
; Serial is based on date UTC time

; Name Servers
example.com.  3600    IN     NS    ns1.example.com. ; CoreDNS
example.com.  3600    IN     NS    ns2.example.com. ; CoreDNS

; A Records
@               IN     A       10.0.0.20
ns1             IN     A       10.0.0.1
ns2             IN     A       10.0.0.2
mail            IN     A       10.0.0.100
; CNAME Records
www         IN     CNAME   example.com.
