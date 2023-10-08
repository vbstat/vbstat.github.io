# VBSTAT
Handouts and Notes BSc Statistics VisvaBharati. You can clone or fork this repository to work on the project locally or contribute to its development.

## Run Locally

### Clone Repository
To clone this repository to your local machine, use the following command:
```
git clone https://github.com/mrinalcs/vbstat.git
```
### Install dependency
Before running the project locally, make sure to install the required dependencies using Bundler. Navigate to the project directory and run:
```
bundle install
jekyll serve
```

## Contribute
[Fork reposetory](https://github.com/mrinalcs/vbstat/fork)


## branches summery
- [v1](https://github.com/mrinalcs/vbstat/tree/v1)
  -  just to backup
- [v2](https://github.com/mrinalcs/vbstat/tree/v2)
  - notes listing
  - question paper list based on folder structure
  - along with all basic pages 
  - faculty scholar alumni project page
- [v3](https://github.com/mrinalcs/vbstat/tree/v3)
  - bootstrap sass
  - faculty single page
- [main](https://github.com/mrinalcs/vbstat/tree/main)
  - student alumni page based on front matter




## Resouces
- **Bootstrap**: Version 5.3.2 is used for styling and layout.
- **Font Awesome**: For Icons.



## Timeline
- Nav>dropdown>button
- Dropdown,Hamberger>Icon toogle 

- New jekyll project
- Instead Bootstrap setup SASS

- page > about,location,contact,admission(ug,pg,phd),notice,event done 

- question-paper dynamically listing + filtering done

- notes > listing+count+id
- faculty,student,alumni yml created 
- another way >  add collection>faculty

- similarly based on front matter fiter students
```
ug-alumni : iff ug != null || ug+3 <= current_year
pg-alumni : iff pg != null || pg+2 <= current_year

*** sep || year

students: bsc#1st-year iff  ug == current_year
students: bsc#2st-year iff  ug+1 == current_year
students: bsc#3st-year iff  ug+2 == current_year
students: msc#1st-year = 2023 = current yaer
students: msc#2st-year = 2023 = current yaer
```

alternatively first calculate difference 

0
1
2

0
1