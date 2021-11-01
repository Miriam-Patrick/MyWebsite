#install necessary packages

install.packages("distill")
install.packages("postcards")

#check package versions
packageVersion("distill")
packageVersion("rmarkdown")
packageVersion("postcards")


library(distill)
create_website(dir = ".", title = "mfeo", gh_pages = TRUE)

#create a postcard
library(postcards)
create_postcard(file = "miriam.Rmd") # future name of .Rmd file

#add a theme
create_theme("postcards")

#add a blog
create_post("welcome")
file.edit("blog.Rmd")

#Publishing 
library(usethis)
use_git_config(user.name = "Miriam-Patrick", user.email = "miriampatrick1229@gmail.com")

usethis::use_git()

