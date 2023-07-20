# VC Unicorns Trends Analysis

# Summary and Overview

The goal of this exploratory data analysis project was to find key trends and changes in unicorn investments over time. The data set was sourced from Kaggle and goes from 2007-2022. For reference, unicorns are referred to as start-ups which have achieved a valuation of $1B. Such entities are rare, and it takes significant market competency to achieve such a feat.

The RDBMS used was MySQL. This project is also my first collaboration project with another Github user. They are added as an official collaborator to this repository. Our collaboration process was brainstorming effective questions and solving the questions appropriately via SQL code. Some of our questions differ, however we peer-reviewed each other's code and added our own work to our own repositories. No queries were copied or plagiarized from any other analysis conducted using this specific Kaggle data set. 

Minimal data cleaning and editing was required. With Excel I made sure that blank industry types were categorized as 'Other' which seemed to be the only minor flaw in the data. 

The questions and their direct answers are shown below with the official SQL code included in their separate repository files which could be found in the main repository site.

# Analysis Questions
1. The Fed raised interest rates in March 2022, the data goes to Sept 2022. Was there an increasing/decreasing trend in funding?

| Pre-Hike Average Valuation | Post-Hike Average Valuation |
| :-----: | :---: |
| 2.02 | 1.58   |

This query proved that there was a difference in average valuations starting March 2022 which was the first month in which the Fed started to raise the federal funds rate compared to the average valuations of companies before the hikes began.

To determine the effect on overall counts of investments made once the Fed began its conservative monetary policy, I decided to check for the amount of investments which were made once the Fed began raising rates.

| Pre-Hike Count | Post-Hike Count   | Difference (Delta) |
| :-----: | :---: | :---: |
| 367 | 136   | 237   |
