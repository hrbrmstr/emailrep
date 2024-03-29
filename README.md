
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-100%25-lightgrey.svg)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/emailrep.svg?branch=master)](https://travis-ci.org/hrbrmstr/emailrep)  
![Minimal R
Version](https://img.shields.io/badge/R%3E%3D-3.2.0-blue.svg)
![License](https://img.shields.io/badge/License-AGPL-blue.svg)

# emailrep

Check Email Address Reputation Against the ‘EmailRep’ API

## Description

EmailRep (<https://emailrep.io/>) is a system of crawlers, scanners and
enrichment services that collects data on email addresses, domains, and
internet personas. EmailRep uses hundreds of data points from social
media profiles, professional networking sites, dark web credential
leaks, data breaches, phishing kits, phishing emails, spam lists, open
mail relays, domain age and reputation, deliverability, and more to
predict the risk of an email address. Tools are provided to gather
reputation information for emails.

  - <https://emailrep.io/>
  - <https://github.com/sublime-security/emailrep.io>
  - <https://emailrep.io/docs/#emailrep-alpha-api>

## What’s Inside The Tin

The following functions are implemented:

  - `email_rep`: Get email reputation

## Installation

``` r
install.packages("emailrep", repos = "https://cinc.rud.is")
# or
remotes::install_git("https://git.rud.is/hrbrmstr/emailrep.git")
# or
remotes::install_git("https://git.sr.ht/~hrbrmstr/emailrep")
# or
remotes::install_gitlab("hrbrmstr/emailrep")
# or
remotes::install_bitbucket("hrbrmstr/emailrep")
# or
remotes::install_github("hrbrmstr/emailrep")
```

NOTE: To use the ‘remotes’ install options you will need to have the
[{remotes} package](https://github.com/r-lib/remotes) installed.

## Usage

``` r
library(emailrep)

# current version
packageVersion("emailrep")
## [1] '0.1.0'
```

``` r
str( email_rep("bill@microsoft.com"), 2 )
## List of 5
##  $ email     : chr "bill@microsoft.com"
##  $ reputation: chr "high"
##  $ suspicious: logi FALSE
##  $ references: int 77
##  $ details   :List of 22
##   ..$ blacklisted               : logi FALSE
##   ..$ malicious_activity        : logi FALSE
##   ..$ malicious_activity_recent : logi FALSE
##   ..$ credentials_leaked        : logi TRUE
##   ..$ credentials_leaked_recent : logi FALSE
##   ..$ data_breach               : logi TRUE
##   ..$ last_seen                 : chr "05/03/2019"
##   ..$ domain_exists             : logi TRUE
##   ..$ domain_reputation         : chr "high"
##   ..$ new_domain                : logi FALSE
##   ..$ days_since_domain_creation: int 10316
##   ..$ suspicious_tld            : logi FALSE
##   ..$ spam                      : logi FALSE
##   ..$ free_provider             : logi FALSE
##   ..$ disposable                : logi FALSE
##   ..$ deliverable               : logi TRUE
##   ..$ accept_all                : logi TRUE
##   ..$ valid_mx                  : logi TRUE
##   ..$ spoofable                 : logi FALSE
##   ..$ spf_strict                : logi TRUE
##   ..$ dmarc_enforced            : logi TRUE
##   ..$ profiles                  : chr [1:8] "linkedin" "angellist" "spotify" "flickr" ...
```

## emailrep Metrics

| Lang | \# Files | (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
| :--- | -------: | --: | --: | ---: | ----------: | ---: | -------: | ---: |
| R    |        4 | 0.8 |  22 | 0.71 |           7 | 0.29 |       27 | 0.46 |
| Rmd  |        1 | 0.2 |   9 | 0.29 |          17 | 0.71 |       32 | 0.54 |

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
