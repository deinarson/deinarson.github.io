---
title: "Told Sold or Trolled?"
date: 2018-06-21T13:41:30-04:00
draft: false
type: "post"
tags: ["thoughts","Threat Detection","Threat Hunting", "Automation", "tools"]
cover: "/post/pf.png"
---


# Thoughts on Semi-Automated Threat Detection or Hunting

These are merely musings, and by no means an exhaustive list, nor is it intended to be of the quality of a professional publication; lacking references and use of pronouns. However, I wish to bring to light some issues.

Sold, told and trolled are three things we should realize. We may have discouraged the use of important tools due to dogma, or marketing hype. It is not the tools but how you use it, or when put ironically, everything is a nail when you have a hammer. More clearly stated by Sharlyn Lauby "We need [to] choose the tools we work with carefully."

> If you were [Martin Heidegger](https://en.wikipedia.org/wiki/Heideggerian_terminology), the nail would not exists until you were the hammer and you where hitting that nail.


## In side - out side.
Let us just assume you are defending a network; firewalls and internet facing foot-print should be a priority but as long as you have web browsers that can connect the the internet you need to defend your internals too. There are also USB sticks and other means of introducing internal security risks such as the use of unknown libraries in your applications.

Placing audit aside for the moment, it should be noted that this is why for years, folks have suggested "zero trust" networks.  Assume that the attacker is in your network already and start from there.  This is much like the concept of Netflix's ChaosMonkey, assume you will suffer failure and deal with it. If we start from the notion that we are both insecure and fragile we can build a better infrastructure and better applications.

"Secure by design", is to start with these ideals at the beginning of each project.


## Configuration Management
> there is no security without audit!
At L.I.S.A. 1995 when Mark Burgess presented CFEngine there were some that realized this would make their lives easy and some who thought it was too complicated.  The initial focus of CFEngine was to automate the maintenance of a homogenous installation with several nuanced OS's and system installations. 

We were a microscopic subset of the industry but many of us realized configuration management could reduce required man-hours to maintain systems in a more defined way. This became an obvious choice for locations requiring audit or at high-risk sites that needed misconfigured systems to be automatically updated.

By 2013, due to sales and marketing diluting its meaning in to a means to sell products, many of the 2009 founders of the DevOps movement had  already abandoned the term "DevOps". But configuration management, among others, was something that everyone took note of, yet, even with all of the pressure for software developers to adopt configuration management it still remained very difficult to get companies on board.  - There were tons of blogs written about the kinds of comments companies would use to defend not having configuration management. It was both sad and laughable.

In a blinding flash, docker, presented a method where configuration management was seen to be passé. Suddenly everyone wanted docker and many of those companies reluctant to get on board with configuration management, realizing they were delaying progress, jumped on board to not look caught out like the last time.  

Short sited and limited scope has bitten too many organisations. We all jumped the gun and now the norm seems to be a bit worse than 2013.  Now we have tons more open ports due to the micro-service methodology. Sure we can react to our mistakes faster if we do DevOps/Agile correctly but how many sites practice "secure by design" or a "zero trust" network?
  I know that even when working at a unicorn security startup I was laughed at when I requested we install some form of network monitor. ( This was before Sony's 14TB data lost/breach that might have been detected if they had done just that. )

**Baby and the bath water**: it is simple to find places that dont use configuration management. Look for a place that uses kubernetes.  In most places I have seen, the coreos match-box (aka bootcfg ) is the only form of configuration management used. No means to audit and no monitoring of network traffic etc. That is, we now have a far greater threat landscape than with the monolithic apps and no additional security controls.




## Canaries?
Canaries fell out of favour due to all of the buzz words that effectively refocused our attention on virus detection et al. Years after the industry claims that viruses are not the issue but humans are.  - I think we already knew that, but we always try to sell tech to fix a human problem.
  But what about the canary?   imagine the virus is like a spark and the canary is what informs us of gas... would you want to check for sparks or gas as a priority?

Again **Baby and the bath water**: now folks like Haroon Meer have revived the image of this dead bird and there are several other companies trying to cash in on his success in reviving it.


## Threat lists - the noise it can create
Although they are not the only ones, our governments have increasingly been taking computer security more seriously, creating private relationships with several large corporations. In the name of espionage, crime or simply state security these groups exchange inside information about the threats they have detected in an attempt to reduce the attack foot print, and reduce leverage points.

Similarly there are several types of publicly available threat lists, rootkit and malware detection tools. Examples such as the OpenIOC (indicator of compromise list) can be messy and require review, cleaned and curated before becoming useful. Such lists have issues with quality of indicators, including what the threat actually is.  With [Virus Total](https://www.virustotal.com/) anyone can tag a sha hash as a malicious file or better yet, the attackers can log in and tag their malware as safe.

**Baby and the bath water**?  depending on the available resources you have to curate these, they for the most part can be more noise than signal. But there are some that provide more signal than others.

Projects such as [alware-traffic-analysis.net](htps://www.malware-traffic-analysis.net) essentially give us actionable data, requiring a fixed amount of time to implement, but requiring a specific type of environment to benefit from it.  The "bang for the buck" is really a question of your scale and how much of a target you are.

## Defending against drive-by and phishing type attacks 
 These attacks are merely wishful thinking, often automated by an attacker hoping that someone will fall for it or that your network has un-patched holes.
 
  The best defence apart from fixing the human and phishing training, is to have a basic level of security at every boarder of your infrastructure, common-sense network isolation, (HR should never touch R&D ever) and as it turns out canaries are likely the biggest bang for your buck, because they are so cheap.


## Complexity is the enemy of security

I believe this phrase was coined by Bruce Schneier. If you cant clearly and definitively audit your environment you likely dont know where your security holes are. Configuration management again can help here.
 The brilliant marketing term "single pane of glass" is also a winner it selling products, but the most important part of what that glass should show is lacking from any definition. We as an industry would benefit from a means of monitoring everything but without the burnout from reading thousands of lines for hours on end.


###  Lack of salience - noise is the enemy 
  The lesson to learn is, salience is the most important concept security folks should know.  Where should I focus my time, what is the biggest win?  This is much easier to answer if you have a zero noise set of tools that constantly monitor an ever increasing number of things to consider.
  That is, each time a new vulnerability or malware comes to surface, first check and confirm you can efficiently scan for this without noise and then add it to a long list of checks that happen in the background. 
*Now* consider what you need to focus your time on. This is where we would benefit from pre-curated threat lists.



## Arguments ?

### Threat lists wont work for me
Your threat model tells you that your real threats are not something to be found by a threat list?  Well then how do you defend against script kiddies?  These tools can help eliminate some threats and we should be cognizant of the noise they create. If there is zero noise it shouldn't hurt to deploy such tools.
- Lets focus on the zero noise so we can later spend our time working on the harder to discover threats.

## Configuration wont work in our env.
I dont believe this for a second. I have seen way too many places that claim they are too complex only to find that the complexity is just poor design or an artifact of laying patches on patches. - here cruft is the enemy!
  I single-handedly designed and migrated, non-destructively, a highly complex and large scale installation in only three months, only to add the benefit of automated builds, audit, and monitoring as a side effect of that migration.
  - to invoke an aphorism "If you want to eat an elephant, start at the foot" 

## Canaries aren't enough
Defence in layers, deal with it!


# Conclusion

If the industry is to focus on zero noise tooling, and defenders focus on automating the actions of those tools.  Ideally presenting this in a "single pane of glass" there will be lots more time for our defenders to focus on new techniques, with the goal of making those zero noise.

> Yes! noise is the enemy


# Referances will be added as people complain 
1. [Secure_by_design](https://en.wikipedia.org/wiki/Secure_by_design)
2. [CI](https://en.wikipedia.org/wiki/Continuous_integration) /  [CD](https://en.wikipedia.org/wiki/Continuous_delivery)
3. [malware-traffic-analysis](htps://www.malware-traffic-analysis.net)

