# Pewlett_Hackard_Analysis

Note: In the CSV files for this module, the data for employees in the to_date column in several CSVs was interpreted by my computer as '1999-01-01' instead of '9999-01-1'. To avoid any issues with the date, I filtered by '1999-01-01' instead of '9999-01-01' to show current employees. 

## Overview of Analysis and Methodology

The primary objective of this analysis is to gather data on employees who are nearing retirement so that we can better prepare the organization to replace their positions with new hires. In order to do so, we need to determine who is likely to retire within the next few years, and we can do this by filtering our dataset by age, position, and department, and creating several tables to store and reproduce this information on demand. 

The secondary objective of this analysis is to determine which employees are eligible for a new Mentorship program, designed to pass on information from long term workers to new joiners. We do this by creating a table of employees who were born in 1965 so that we can track employees who might be retiring soon. This way we can ensure that we invest in new employee development as much as possible, and that there's minimal loss of knowledge as employees leave the organization. 

## Results

The first table we designed combines data from the Employees and Titles tables we created during this module. This table serves as a preliminary analysis, showing us all employees who are eligible for retirement and their tenure with the organization.

<img width="754" alt="Screen Shot 2022-07-08 at 1 56 33 AM" src="https://user-images.githubusercontent.com/99847786/177928164-4d617916-5ca4-4d81-b4bb-856481a4ae76.png">

The next table builds off of our preliminary analysis and narrows the data further to show the most recent titles of the employees who are still with the organization, and removes those who have already left. 

<img width="505" alt="Screen Shot 2022-07-08 at 1 57 20 AM" src="https://user-images.githubusercontent.com/99847786/177928222-59e56fdc-4622-45dd-b4cd-c761b698977f.png">

The next table provides a count of how many senior employees occupy each title. Note that there's only two employees with a managerial title. We'll need to investigate further in order to determine whether this is indeed correct or not. 

<img width="227" alt="Screen Shot 2022-07-08 at 1 57 09 AM" src="https://user-images.githubusercontent.com/99847786/177928215-4d1d167c-c8b4-4f66-b54a-aaa53e247270.png">

Finally, the last table shows which employees are eligible to participate in the mentorship program we'll be developing, and fulfills the secondary objective of our analysis.

<img width="754" alt="Screen Shot 2022-07-08 at 1 56 54 AM" src="https://user-images.githubusercontent.com/99847786/177928143-f2485f93-bee3-4689-86a4-3d41530cd30f.png">


## Summary

By looking at the various tables we can draw a few conclusions. In total, 72,464 employees are projected to retire within the next few years. As such, we'll need to make preparations to fill these roles. Of the employees who are expected to retire, 25,914 hold positions as senior engineers, 24,928 hold positions as senior staff members, and 2 hold managerial positions (although we'll need to verify that this is actually true). To replace these employees we'll either need to attract around 50,844 candidates that can fulfill these roles or identify individuals within the organization who can be placed on a promotion track to replace the retirees. 

The remainder of the positions (21,620 openings) can be filled by interns or talent that's new to the industry - and here's where the mentorship program comes in handy. In our mentorship_eligibility table we identified 1,550 workers who can serve as mentors over a period of 10 years. As we'll have some 21,000 new employees, each mentor would have to train approximately 14 new joiners; this is an excessive commitment so we'll need to expand the mentorship program. 

We could use SQL to create a table showing which employees will become eligible for the mentorship program within the next few years, and instead of having each employee train 14 new hires, we could expand the program to include employees born in 1966, 1967, etc.., and develop a program where each mentor guides two new employees, each for a 6 month period each year, over the course of several years. Finally, we could create a second table keeping track of each new hire and their corresponding mentor. We could even join the expanded mentorship program table with the table showing the mentors for each new hire and create an even more in-depth and streamlined table storing a wealth of pertinent information. 
