# blockit

Generate a uBlock list allowing a few subreddits, excluding the homepage.

I'm tired of falling into a irritating rage of browsing echochamber subs that end up pissing me off, so I allowed a few subs of use and blocked the rest.
I also wrote a script that generates a blocklist for you.

In case you don't want to download and run a bash script from a stranger, you could write your rules for `My Filters` that looks like this:

```
! Block the homepage
||reddit.com

! Allow my subdomains.
@@||mod.reddit.com
@@||gql.reddit.com
@@||gql-realtime.reddit.com
@@||oauth.reddit.com
@@||meta-api.reddit.com
@@||reddit.com/prefs

! Allow my select subreddits.
@@||reddit.com/r/linux
!... add yours here
```
