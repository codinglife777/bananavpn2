class Config {
  static const String defaultVpnUsername = "info@speedyfix.ca";
  static const String defaultVpnPassword = "123456789";

  static String config = """client
proto udp
explicit-exit-notify
remote 162.19.224.61 1194
dev tun
resolv-retry infinite
nobind
persist-key
persist-tun
remote-cert-tls server
verify-x509-name server_lbbCH9TcQYI0qUAZ name
auth-user-pass
auth SHA256
auth-nocache
cipher AES-128-GCM
tls-client
tls-version-min 1.2
tls-cipher TLS-ECDHE-ECDSA-WITH-AES-128-GCM-SHA256
reneg-sec 0
ignore-unknown-option block-outside-dns
setenv opt block-outside-dns # Prevent Windows 10 DNS leak
verb 3
<ca>
-----BEGIN CERTIFICATE-----
MIIB1zCCAX2gAwIBAgIULqZH0/+QFgAXaZMKRuy5lhZc7AowCgYIKoZIzj0EAwIw
HjEcMBoGA1UEAwwTY25fdENTdmxYS0RaODZoeFByODAeFw0yMzAxMTQwNjQ3MTBa
Fw0zMzAxMTEwNjQ3MTBaMB4xHDAaBgNVBAMME2NuX3RDU3ZsWEtEWjg2aHhQcjgw
WTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAAQSv50V9kyGSf2g2fWEWhiaFBra1JRQ
DhW+c55koR7WHPS7/DKEq5acl/rPhgHzcVs8L2dgEttFjiu/9ldPt4AJo4GYMIGV
MB0GA1UdDgQWBBRIC9VdPjGOh89sQwtwVceVVg3opjBZBgNVHSMEUjBQgBRIC9Vd
PjGOh89sQwtwVceVVg3opqEipCAwHjEcMBoGA1UEAwwTY25fdENTdmxYS0RaODZo
eFByOIIULqZH0/+QFgAXaZMKRuy5lhZc7AowDAYDVR0TBAUwAwEB/zALBgNVHQ8E
BAMCAQYwCgYIKoZIzj0EAwIDSAAwRQIhAM2LfCwUvwQodnD6vtf953++s1aB4aah
HNj3XHV8ZpjKAiBEvtebhdlM6spGL3stHzliL1LcFxLSvBxvap1O06dKtA==
-----END CERTIFICATE-----
</ca>
<cert>
-----BEGIN CERTIFICATE-----
MIIB2jCCAYGgAwIBAgIRAMwORme4LlsgfB5rzY87ZvcwCgYIKoZIzj0EAwIwHjEc
MBoGA1UEAwwTY25fdENTdmxYS0RaODZoeFByODAeFw0yMzAxMTQwNjQ3MTBaFw0y
NTA0MTgwNjQ3MTBaMBMxETAPBgNVBAMMCGNsaWVudDAxMFkwEwYHKoZIzj0CAQYI
KoZIzj0DAQcDQgAESVzt/lVtD1M4U6IVjETEGJnvrQZXnZdfTRb23tXtpDWVh/Hh
TO7AsRvy1Kt/o0uIfLQQrCilf2SpXTBaRDjk96OBqjCBpzAJBgNVHRMEAjAAMB0G
A1UdDgQWBBQZzKKpr8bhBmwXfFK6wRSVaAnKqTBZBgNVHSMEUjBQgBRIC9VdPjGO
h89sQwtwVceVVg3opqEipCAwHjEcMBoGA1UEAwwTY25fdENTdmxYS0RaODZoeFBy
OIIULqZH0/+QFgAXaZMKRuy5lhZc7AowEwYDVR0lBAwwCgYIKwYBBQUHAwIwCwYD
VR0PBAQDAgeAMAoGCCqGSM49BAMCA0cAMEQCICqxUCPcjlHM2/lJ2jNR+xT6B0sd
wBVGks8ft00BU9wcAiAMIfOI6DXhm8xY+BCQH7aIL2onWoMt2BE8Jlunq3Q/zg==
-----END CERTIFICATE-----
</cert>
<key>
-----BEGIN PRIVATE KEY-----
MIGHAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBG0wawIBAQQgiyYwITzd4XeiXsXF
ivp5SVFiGJvAWCC7IH2SbyBaIaihRANCAARJXO3+VW0PUzhTohWMRMQYme+tBled
l19NFvbe1e2kNZWH8eFM7sCxG/LUq3+jS4h8tBCsKKV/ZKldMFpEOOT3
-----END PRIVATE KEY-----
</key>
<tls-crypt>
#
# 2048 bit OpenVPN static key
#
-----BEGIN OpenVPN Static key V1-----
ae69573b12bda9a7354305e214540849
163a712073766ab6c59eed9064b366c8
8d4fbfc0bbb3fc0d6bf58e4fd5becb7d
44f5e8500ae2898655ca5777b3c55273
298c5afbe7580e3b66fac8f7a5a3407c
50347191fd8114b5ee7b2d5141749480
5b826fbbddeca062d17d35faa85b96e7
8a6442ea6955a5c7be587041c8af4f18
bbce2a96488ef19088b7d7dcac2776b6
339622e7ebf634a1c161b908d27be2da
099d32bcecc7f887b73a008d5aabb3d2
3fe1319016a9305f05e8525d6b0b309e
2eddb651807dba711bc1a5bc552cac50
3e613d6d6d641e54cbee223332ecdb49
6410ed648dbb1c9a88df5272e9516380
2d24f1cbd70c15ace7cc44f2fec96332
-----END OpenVPN Static key V1-----
</tls-crypt>""";
}
