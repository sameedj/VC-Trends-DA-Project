# VC Unicorns Trends Analysis

# Summary and Overview

The goal of this exploratory data analysis project was to find key trends and changes in unicorn investments over time. The data set was sourced from Kaggle and goes from 2007-2022. For reference, unicorns are referred to as start-ups which have achieved a valuation of $1B. Such entities are rare, and it takes significant market competency to achieve such a feat.

The RDBMS used was MySQL. This project is also my first collaboration project with another Github user. They are added as an official collaborator to this repository. Our collaboration process was brainstorming effective questions and solving the questions appropriately via SQL code. Some of our questions differ, however we peer-reviewed each other's code and added our own work to our own repositories. No queries were copied or plagiarized from any other analysis conducted using this specific Kaggle data set. 

Minimal data cleaning and editing was required. With Excel I made sure that blank industry types were categorized as 'Other' which seemed to be the only minor flaw in the data. 

The questions and their direct answers are shown below with the official SQL code included in their separate repository files which could be found in the main repository site.


# Analysis
1. The Fed raised interest rates in March 2022, the data goes to Sept 2022. Was there an increasing/decreasing trend in funding?

| Pre-Hike Average Valuation | Post-Hike Average Valuation |
| :-----: | :---: |
| 2.02 | 1.58   |

This query proved that there was a difference in average valuations starting March 2022 which was the first month in which the Fed started to raise the federal funds rate compared to the average valuations of companies before the hikes began.

To determine the effect on overall counts of investments made once the Fed began its conservative monetary policy, I decided to check for the amount of investments which were made once the Fed began raising rates.

| Pre-Hike Count | Post-Hike Count   | Difference (Delta) |
| :-----: | :---: | :---: |
| 367 | 136 | 237 |

In terms of the count of activity, counts decreased drastically post-Fed hikes. A difference of 231 is extremely drastic given how massive the VC industry was during the QE recovery period. What a difference a few months of contractionary monetary policy can make on industries.


2. Was San Francisco Bay Area still the hub for VC over time? Were there any changes in terms of geography (i.e. new cities) for investments throughout the US during COVID and before?

| City | Count |
| :-----: | :---: |
| San Francisco | 134 |
| New York | 99 |
| Palo Alto | 15 |
| Boston | 14 |
| Mountain View | 13 |

According to the query results, the Bay Area remained in the top 5 for VC activity.

Before COVID, the Bay Area remained a top location for VC activity as well:

| City | Count |
| :-----: | :---: |
| San Francisco | 27 |
| New York | 11 |
| Boston | 6 |
| Redwood City | 4 |
| Mountain View | 3 |

This was really no surprise. Given the tech culture of the Bay Area, the location does not seem that it will lose its reputation and spot for being a fertile ground for tech startups.

3. Is China really on the rise? How many investments have Chinese firms received?

| Year | Count |
| :-----: | :---: |
| 2022 | 8 |
| 2021 | 44 |
| 2020 | 11 |
| 2019 | 23 |
| 2018 | 37 |
| 2017 | 19 |
| 2016 | 12 |
| 2015 | 19 |
| 2014 | 3 |

There has been a clear increase in Chinese firms receiving investments over time compared to the beginning of the data set. Given how 2022 data has been cut, 2021 was the most successful year for Chinese firms. There seemed to be an overall decrease from 2018, however that may be due to the Trump Administration anti-China sentiment over time. 

4. Has there been a shift away from tech startup investing in recent years compared to the early 2010s?

| Early 2010's Tech Count | Early 2010's Non-Tech Count | Recent Years Tech Count |  Recent Years Non-Tech Count |
| :-----: | :---: | :---: | :---: |
| 6 | 49 | 242 | 725 |

Tech makes up a huge proportion of investments, however there was a major increase in the last half of the 2010s for non-tech firms as well.

5. Has tech still been king? Are average valuations (in $ billions) higher for tech startups?

| Average Tech Valuation | Average Non-Tech Valuation |
| :-----: | :---: |
| 3.06 | 2.81 |

Valuations are higher for tech startups in general which was not surprising.

6. Other than China, which other countries have been prevalent in the start-up funding space in the past 5 years? Germany? Netherlands? India?

| Country | Count |
| :-----: | :---: |
| USA | 607 |
| China | 142 |
| India | 67 |
| UK | 44 |
| Germany | 29 |
| Israel | 22 |
| France | 21 |
| Canada | 19 |
| Brazil | 17 |
| South Korea | 14 |

Germany and India are in the top five spots however to my surprise the UK came out in fourth place ahead of Germany. It will be interesting to see if Germany will surpass the UK with more German firms becoming successful.


7. Which year saw the most investments? Has it to do something with the economic outlook/situation? What was the era with the least amount of investment activity other than the financial crisis era?

| Year | Count |
| :-----: | :---: |
| 2022 | 228 |
| 2021 | 529 |
| 2020 | 108 |
| 2019 | 102 |
| 2018 | 98 |
| 2017 | 44 |
| 2016 | 21 |
| 2015 | 34 |
| 2014 | 12 |
| 2013 | 3 |

2021 was the best year for VC firms. To my surprise, 2016 had poor performance. This was probably due to the uncertainty of the election coming up at the end of the year. Even though there was an administration with a completely different economic policy than the previous one, it seems that VC activity picked up the following year and began to continue its normal cycle. My earlier analysis question showed that Chinese firms had difficulty in 2018, as the Trump administration picked up its anti-China rhetoric.

8. Do Bay Area VC firms primarily tend to invest in Tech firms? Is the trend changing?

| Year | Tech Count | Non-Tech Count | 
| :-----: | :---: | :---: |
| 2022 | 11 | 41 |
| 2021 | 32 | 95 |
| 2020 | 4 | 22 |
| 2019 | 7 | 14 |
| 2018 | 4 | 13 |
| 2017 | 0 | 7 |
| 2016 | 0 | 0 |
| 2015 | 1 | 5 |
| 2014 | 1 | 3 |

There has been a steady increase in tech funding over the past few years for Bay Area firms. Non-tech firms are still receiving investments as well.

9. Which year saw the most VC activity?

| Year | Count |
| :-----: | :---: |
| 2022 | 228 |
| 2021 | 529 |
| 2020 | 108 |
| 2019 | 102 |
| 2018 | 98 |
| 2017 | 44 |
| 2016 | 21 |
| 2015 | 34 |
| 2014 | 12 |
| 2013 | 3 |

2021 came out on top for VC activity. The interest rates definitely put pressure on the entire industry.

10. What are the most common invested industries in the data set?

| Year | Count |
| :-----: | :---: |
| Fintech | 239 |
| Internet Software & Services | 224 |
| E-Commerce and Direct-to-Consumer | 103 |
| Health | 94 |
| AI | 85 |
| Other | 82 |
| Supply Chain, Logistics, & Delivery | 65 |
| Cybersecurity | 58 |
| Data Management & Analytics | 45 |
| Auto & Transportation | 40 |
| Hardware | 48 |
| Mobile & Telecommunications | 37 |
| Edtech | 32 |
| Consumer & Retail | 28 |
| Travel | 14 |
| Internet | 2 |

Not surprisingly, tech related industries were the most active in the entire data set. 
