# encoding: utf-8
module SamlIdp
  module Default
    NAME_ID_FORMAT = "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
    X509_CERTIFICATE = <<EOS.strip
MIIDqzCCAxSgAwIBAgIBATANBgkqhkiG9w0BAQsFADCBhjELMAkGA1UEBhMCQVUx
DDAKBgNVBAgTA05TVzEPMA0GA1UEBxMGU3lkbmV5MQwwCgYDVQQKDANQSVQxCTAH
BgNVBAsMADEYMBYGA1UEAwwPbGF3cmVuY2VwaXQuY29tMSUwIwYJKoZIhvcNAQkB
DBZsYXdyZW5jZS5waXRAZ21haWwuY29tMB4XDTEyMDQyODAyMjIyOFoXDTMyMDQy
MzAyMjIyOFowgYYxCzAJBgNVBAYTAkFVMQwwCgYDVQQIEwNOU1cxDzANBgNVBAcT
BlN5ZG5leTEMMAoGA1UECgwDUElUMQkwBwYDVQQLDAAxGDAWBgNVBAMMD2xhd3Jl
bmNlcGl0LmNvbTElMCMGCSqGSIb3DQEJAQwWbGF3cmVuY2UucGl0QGdtYWlsLmNv
bTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEAuBywPNlC1FopGLYfF96SotiK
8Nj6/nW084O4omRMifzy7x955RLEy673q2aiJNB3LvE6Xvkt9cGtxtNoOXw1g2Uv
HKpldQbr6bOEjLNeDNW7j0ob+JrRvAUOK9CRgdyw5MC6lwqVQQ5C1DnaT/2fSBFj
asBFTR24dEpfTy8HfKECAwEAAaOCASUwggEhMAkGA1UdEwQCMAAwCwYDVR0PBAQD
AgUgMB0GA1UdDgQWBBQNBGmmt3ytKpcJaBaYNbnyU2xkazATBgNVHSUEDDAKBggr
BgEFBQcDATAdBglghkgBhvhCAQ0EEBYOVGVzdCBYNTA5IGNlcnQwgbMGA1UdIwSB
qzCBqIAUDQRpprd8rSqXCWgWmDW58lNsZGuhgYykgYkwgYYxCzAJBgNVBAYTAkFV
MQwwCgYDVQQIEwNOU1cxDzANBgNVBAcTBlN5ZG5leTEMMAoGA1UECgwDUElUMQkw
BwYDVQQLDAAxGDAWBgNVBAMMD2xhd3JlbmNlcGl0LmNvbTElMCMGCSqGSIb3DQEJ
AQwWbGF3cmVuY2UucGl0QGdtYWlsLmNvbYIBATANBgkqhkiG9w0BAQsFAAOBgQAE
cVUPBX7uZmzqZJfy+tUPOT5ImNQj8VE2lerhnFjnGPHmHIqhpzgnwHQujJfs/a30
9Wm5qwcCaC1eO5cWjcG0x3OjdllsgYDatl5GAumtBx8J3NhWRqNUgitCIkQlxHIw
UfgQaCushYgDDL5YbIQa++egCgpIZ+T0Dj5oRew//A==
EOS
    FINGERPRINT = "9E:65:2E:03:06:8D:80:F2:86:C7:6C:77:A1:D9:14:97:0A:4D:F4:4D"
    SECRET_KEY = <<EOS
-----BEGIN RSA PRIVATE KEY-----
MIICXAIBAAKBgQC4HLA82ULUWikYth8X3pKi2Irw2Pr+dbTzg7iiZEyJ/PLvH3nl
EsTLrverZqIk0Hcu8Tpe+S31wa3G02g5fDWDZS8cqmV1Buvps4SMs14M1buPShv4
mtG8BQ4r0JGB3LDkwLqXCpVBDkLUOdpP/Z9IEWNqwEVNHbh0Sl9PLwd8oQIDAQAB
AoGAQmUGIUtwUEgbXe//kooPc26H3IdDLJSiJtcvtFBbUb/Ik/dT7AoysgltA4DF
pGURNfqERE+0BVZNJtCCW4ixew4uEhk1XowYXHCzjkzyYoFuT9v5SP4cu4q3t1kK
51JF237F0eCY3qC3k96CzPGG67bwOu9EeXAu4ka/plLdsAECQQDkg0uhR/vsJffx
tiWxcDRNFoZpCpzpdWfQBnHBzj9ZC0xrdVilxBgBpupCljO2Scy4MeiY4S1Mleel
CWRqh7RBAkEAzkIjUnllEkr5sjVb7pNy+e/eakuDxvZck0Z8X3USUki/Nm3E/GPP
c+CwmXR4QlpMpJr3/Prf1j59l/LAK9AwYQJBAL9eRSQYCJ3HXlGKXR6v/NziFEY7
oRTSQdIw02ueseZ8U89aQpbwFbqsclq5Ny1duJg5E7WUPj94+rl3mCSu6QECQBVh
0duY7htpXl1VHsSq0H6MmVgXn/+eRpaV9grHTjDtjbUMyCEKD9WJc4VVB6qJRezC
i/bT4ySIsehwp+9i08ECQEH03lCpHpbwiWH4sD25l/z3g2jCbIZ+RTV6yHIz7Coh
gAbBqA04wh64JhhfG69oTBwqwj3imlWF8+jDzV9RNNw=
-----END RSA PRIVATE KEY-----
EOS

    NEW_X509_CERTIFICATE = <<EOS
-----BEGIN CERTIFICATE-----
MIICBzCCAXACCQCBoe7nMGoWCTANBgkqhkiG9w0BAQUFADBIMQswCQYDVQQGEwJC
UjESMBAGA1UECAwJU0FPIFBBVUxPMRIwEAYDVQQHDAlTQU8gUEFVTE8xETAPBgNV
BAoMCEJJT1JJVE1PMB4XDTE5MDgxMzEzMDg1N1oXDTIyMDgxMjEzMDg1N1owSDEL
MAkGA1UEBhMCQlIxEjAQBgNVBAgMCVNBTyBQQVVMTzESMBAGA1UEBwwJU0FPIFBB
VUxPMREwDwYDVQQKDAhCSU9SSVRNTzCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkC
gYEAsyBKUfq5x3a2s8OM9cziALyFJpKZzJ03E/t+ys77B0VRAsE8zLCu0IFDIrg7
pOzrhSCB47lLSiP3vYCP1lGsNxoXRt2l4D98fKHtmA+pF5DbODuCZRmFoS/6eFQN
or1uuQMI5VrnSboju81aopNxJQ5pUC4kwqyQ5fFMJu3E/AECAwEAATANBgkqhkiG
9w0BAQUFAAOBgQAe4/zE9lEeDVfcTDBNflb4Vm7j2a6xRtELhKPNhFm15Z/ouC5Q
kKXJEDXTxTAIwfzLWzKNiAS7z/9sq4CKNccVFdGo7LfZ13VD/ReBdmqWBjLyHR9+
U29DVHTc8N3kW8Pp8i2cZtpPGT6CG8I82Ol1xUf+ABeEbLDeM0GXpAZmiQ==
-----END CERTIFICATE-----
EOS

    NEW_SECRET_KEY = <<EOS
-----BEGIN RSA PRIVATE KEY-----
MIICXQIBAAKBgQCzIEpR+rnHdrazw4z1zOIAvIUmkpnMnTcT+37KzvsHRVECwTzM
sK7QgUMiuDuk7OuFIIHjuUtKI/e9gI/WUaw3GhdG3aXgP3x8oe2YD6kXkNs4O4Jl
GYWhL/p4VA2ivW65AwjlWudJuiO7zVqik3ElDmlQLiTCrJDl8Uwm7cT8AQIDAQAB
AoGBAKcIHUWEv2g4UvYeC3vJqZV2NdNaMQCUOZ/wjLMhfwOwp3IiL0fQGbNkVe4y
TavlIVnqjjSDvKlOEN4s2/PGBQdtcK9eqqf7JsAoVxRR/LeYaIz2+7/ktO2CZAJq
x9wDKVbW7wr4J/3IVyEYyARr+IauUDgXO/keQgV1HswXRKxhAkEA2Fucnl5U2BWx
UfwF0+rsA9i3nHJ+Q0FUW6LRipGRKLtXzpQODbdolQlRmz/HzmF9C23yuc2UHKpN
gZWDdMPgqwJBANPyTafURKKfe6hRkHPnr2ZnLyewQzHeewuywEuAqjdp6Zk8kOVJ
ZBNr8a+jF/JILip/V8sNnvyAMzMSbGuQDgMCQHox05UGRfj813csVcZIih/qCFmN
uI4XmaNfo+UVLdzJYmBD8mQA0EpMRxDdxuVi3hLUeCBEYYCHFts3LFWIQ50CQQCe
DvMOl+RfiqQDUGBzr3JE4epupKpXxFzqynFRXTCThq6oklxUQbkaKsPggbZX/rA/
DRyB1zSbhVepXLHyPUnVAkAN7i3yBoiLkbzfJNtAVUi1q1eYPseJPa6RoqdHwxA9
UyhcfzgMjQYW5qw8hBlA5GkG0CJO7LuisjH64zqOH02y
-----END RSA PRIVATE KEY-----
EOS

    SERVICE_PROVIDER = {
      fingerprint: FINGERPRINT
    }
  end
end
