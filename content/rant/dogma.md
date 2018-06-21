---
title: "Dogma: not my preferred cook"
date: 2018-06-21T14:23:29-04:00
draft: true
type: "post"
tags: ["rant"]

---


# Just complaining, and probably not making much sense.

    The internet has never been wrong
    because developers don't make mistakes
    and Torval has always been polite when dealing with people he doesn't agree with.

Right?

<hr>




## "idempotent"

pet peeve, if you write good config code it is idempotent by definition, 
  when Adam Jacob started using this term it was like saying all the previous configuration management tools didn't have this feature.
   - Then people took the argument to pick on bash because it wasn't idempotent... right?

    grep -q thing /etc/config.cfg || echo "thing"    >> /etc/config.cfg
    perl -pi -e 's/setting=(.*)/setting=configured/g'   /etc/config.cfg
    # we can use sed if you want it simple

It is not the tool it is how you use it!  Yes this code can be better, and other languages can be more elegant, but that was never the argument.  Plain old-fashioned ignorance was what was winning the arguments for some reason.



## fallacy or just plain wrong 
"chef is better than puppet", " chef was the first cm built for the cloud"

"It makes be want to punch and then hug Andrew Jacob" for this. Its was so wrong but so many bought in to the marketing hype.

I have had noobs think that I didn't know configuration management because I didn't know how to use chef...  Then I ask them if they have heard of Mark Burgess (CFEngine 1995) Not only do I know CFEngine but I have been able to do things in CM that you cant (couldn't at the time ) do in chef.

Example 2012, a five thousand node test, puppet segfaults, and chef takes about 2 hours to recover, but never actually finished the job due to dropped jobs.  NB this was on a system that was at the time already using CFEngine for a couple years.

So what was so cloudy about Chef? it was certainly not [web scale](https://www.youtube.com/watch?v=b2F-DItXtZs).  Ah you argue dynamic scaling? Ok so one node at a time then right?



## "unix tool chain"

The unix-tool-chain was a good idea, and micro-services can be helpful in increasing velocity by allowing for domain specialization of your app.  systemd does not follow "unix tool chain" and makes me want to install BSD everywhere.

At a large scale I would prefer that my daemons done restart themselves, I want to know each time this happens with out having to pull teeth and I want to be in control!


> WTF does tmux have a bug that requires dependancy on systemd? systemd is the emacs of init systems, and I don't mean that as a complement, sorry to the folks that like linux as a boot loader.


