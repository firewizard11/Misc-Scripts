if ($args.Count -ne 1) {
	echo "usage: .\dns_all.ps1 domain_name"
	exit
}

$types = @('UNKNOWN', 'A_AAAA', 'A', 'NS', 'MD', 'MF', 'CNAME', 'SOA', 'MB', 'MG', 'MR', 'NULL', 'WKS', 'PTR', 'HINFO', 'MINFO', 'MX', 'TXT', 'RP', 'AFSDB', 'X25', 'ISDN', 'RT', 'AAAA', 'SRV', 'DNAME', 'OPT', 'DS', 'RRSIG', 'NSEC', 'DNSKEY', 'DHCID', 'NSEC3', 'NSEC3PARAM', 'ANY', 'ALL', 'WINS')

$name = $args[0]

echo "Target: $name"
foreach ($type in $types) {
    echo "=== $type ==="
    Resolve-DnsName -Name $name -Type $type
}