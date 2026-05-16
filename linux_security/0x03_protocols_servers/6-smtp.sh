#!/bin/bash
level=$(postconf -h smtpd_tls_security_level 2>/dev/null)

if [ -z "$level" ] || [ "$level" = "none" ]; then
    echo "STARTTLS not configured"
else
    postconf smtpd_tls_security_level
fi
