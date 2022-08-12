
##to build both a paged html version and a gitbook follow the steps below

#######################################################################################
##change your VErsion #
#######################################################################################

# name_project_name<- 'nupqu-elk-fish-passage'

##we need to get our private data file moved over
file.copy('C:/scripts/private_info.R', 'R/private_info.R')

##move projects file moved over
file.copy('C:/Users/allan/OneDrive/New_Graph/Current/hoursr/data/projects.xlsx', 'data/projects.xlsx', overwrite = T)

pagedown::chrome_print('safety_plan.Rmd')


##move the html to the docs folder so it can be viewed online
file.rename('safety_plan.html', 'docs/index.html')
file.rename('safety_plan.pdf', paste0('docs/safety_plan_', name_project_name, '.pdf'))


