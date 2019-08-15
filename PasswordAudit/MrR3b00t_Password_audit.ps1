#import DSInternals

.\pwauditor -DC vuln.lab.local -NC "dc=vuln,dc=lab,dc=local" -blacklists top_1000.txt,top_1000_mangled.txt,top_10000.txt -organisation PSTG

#run with output all data
.\pwauditor -DC vuln.lab.local -NC "dc=vuln,dc=lab,dc=local" -blacklists top_1000.txt,top_1000_mangled.txt,top_10000.txt -organisation PSTG -unsuppress 1


