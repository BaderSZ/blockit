# blockit

Generate a uBlock list allowing a few subreddits, excluding reddit.

I'm tired of falling into a irritating rage of browsing echochamber subs that end up pissing me off, so I allowed a few subs of use and blocked the rest.
I also wrote a script that generates a blocklist for you.

In case you don't want to download and run a bash script from a stranger, you could write your rules for `My Filters` that looks like this:

```
! Block the homepage
||reddit.com

! Allow my select subreddits.
@@||mod.reddit.com
@@||reddit.com/r/linux
!... add yours here
```
