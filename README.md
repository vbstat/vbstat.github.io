
## Clone reposetory
```
git clone https://github.com/mrinalcs/vbstat.git
```

or [fork reposetory](https://github.com/mrinalcs/vbstat/fork)

## Install dependency
```
bundle
```
Run Locally
```
jekyll serve
```


## Resouces
- Bootstrap 5.3.2


## Front Matter


### Faculty

```
---
title:  Name
date:  YYYY-MM-DD HH:MM:SS +/-TTTT
image: "/assets/images/faculty/{{ page.faculty }}" 
designation: ""   
linkedin: ""     # proper url
g_scholar: ""    # complete url
website: ""      # proper url
email: 
github: ""       # proper url
weight:          # integer value to make ordered
description: ""  # for meta description
---

```




###  Students
```
---
title: Mrinal Chandra Sarkar                    
date: 2023-09-10T13:45:06+10:00    # date of update 
image: "/assets/images/student/mrinal-chandra-sarkar.jpg" 
email: mrinalvbu@gmail.com
facebook: "mrinalcs"       # profile id || link || username 
instagram: "mrinalcs"
linkedin: "mrinalchandrasarkar"     
github: "mrinalcs"             
twitter: "mrinalcs"      
youtube: "mrinalcs"         # if any username || profile link
mobile: "95934579**"        # comment out or/to remove
website: "mrinal.tk"        # if any 
googlescholar: ""           # for scholars
description: ""             # add meta description for your profile
degrees:                    # add your qualifications
  - name: B.Sc Statistics            
    passing_year: 2023
  - name: Pursuing M.Sc in Statistics
    passing_year:  
ug: 2020     # iff from vb , to  be used for alumni , student page
pg: 2023     # iff from vb , same as above
working: ""  #  applied to alumni page
---
```


## Timeline

- Nav fix dropdown anchor tag to button
- Hamberger Menu Icon toogle 
- Dropdown icon change
- completed nav 

- New jekyll project creat
- Setup and build structures
- Instead Bootstrap setup SASS to compress css
- Dropdown borders css changed

- page > about done 
- page > location done
- page > contact done
- page > admission > ug,pg,phd >> created > done
- page > admission > ug,pg done
- page > admision >phd done , notice page done
- question > question-paper dynamically listing done
- question > question-paper script to filter by name done (chatGPT) done
- question > question-paper fiter to year sem done

- notes > listing done > <s>structured</s>
- notes > bootsrap group list done > count added
- note  > add id to share specefic paper
- faculty page created with listing data.faculty 
- another way >  add collection>faculty 
- created dummy faculty/content.md
- real faculty data collected from visvabharati website
- compressed images > 
- ! mistakenly push mixedup codes
- ### New Repo created 
- new blank project created
- copied uninfectated codes
- check new repolyment with bootstrap sass **netlify** > **github pages** 
- got error in gemlock **fixed**
- **faculty** pages added
- *scholers* page added
- **student** page added
- few student pages add 
- **alumni** page, single page added
- **v3** branch created alumni page based on -data/alumni 
- **note:** upto this no separate students page

- UG PG Alumni page merged to Alumni categoresd on Years
- [v3](#v3) to place student name in Student or Alumni page



## branches summery
- [v1](https://github.com/mrinalcs/vbstat/tree/v1)
- just to backup
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