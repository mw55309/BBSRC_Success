## BBSRC grant success statistics

BBSRC publish grant success statistics from each response mode round [on their website](http://www.bbsrc.ac.uk/funding/post-application/awarded-grants/).

Assuming you have downloaded them to a local directory and have readxl installed, then these can be read into R:

```R
source("load_data.R")
```

This loads data into a massive list:

```R
names(lst)
```

The top level names are the names of the committee meetings.  Underneath that there are two options:

```R
names(lst[["2015-rm3"]])
```

* rank: the whole ranked list
* funded: more details on just those grants funded

Within each of those are the individual committees [A](http://www.bbsrc.ac.uk/about/governance-structure/committees/committee-a/), [B](http://www.bbsrc.ac.uk/about/governance-structure/committees/committee-b), [C](http://www.bbsrc.ac.uk/about/governance-structure/committees/committee-c) and [D](http://www.bbsrc.ac.uk/about/governance-structure/committees/committee-d).

Each one of those is a data frame of the data in the spreadsheets:

```R
lst[["2015-rm3"]][["rank"]][["A"]]
lst[["2015-rm3"]][["funded"]][["A"]]
```

We can so some simple plots of the ranked data:

```R
source("functions.R")

plot.rank("2013-rm3", "D")
```

A brief summary from what I understand.  

* "Funded" are those grants that were funded.  
* "Fundable" are those grants that were good but not funded.
* "Not fundable" well, not so good grants
* "Invited resubmission" not good enough but would like to see again

The Priority ordering is the rank list with best grants at the top and worst at the bottom.

What's interesting is the uplift.  There are four categories of uplift:

* NI: New Investigator
* GPA: I am not sure but I think it is a Government Partnership Award
* IPA: Industry Partnership Award (industry has to contribute at least 10%)
* LINK: Industry partner has to contribute at least 50%

The plots are interesting as you can see worse grants leapfrog better grants to get funded because they have an uplift, e.g. in 2013-rm3 committee D, a grant ranked 90th in terms of the priority order was funded because it was a LINK grant
