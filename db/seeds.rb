# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

user_1=User.create :email => 'test1@example.com' , :password => 'password',:name => 'E1'
user_2=User.create :email => 'test2@example.com' , :password => 'password',:name => 'E2'
user_3=User.create :email => 'test3@example.com' , :password => 'password',:name => 'E3'
user_4=User.create :email => 'test4@example.com' , :password => 'password',:name => 'E4'
user_5=User.create :email => 'test5@example.com' , :password => 'password',:name => 'E5'
user_6=User.create :email => 'test6@example.com' , :password => 'password',:name => 'E6'
user_7=User.create :email => 'test7@example.com' , :password => 'password',:name => 'E7'
user_8=User.create :email => 'test8@example.com' , :password => 'password',:name => 'E8'
user_9=User.create :email => 'test9@example.com' , :password => 'password',:name => 'E9'

proj_1=Project.create :title => 'project1', :owner => user_1, :contributers => [user_5,user_3], :watchers => [user_9,user_8]
proj_2=Project.create :title => 'project2', :owner => user_1, :contributers => [user_4], :watchers => [user_7,user_8,user_6,user_9]
proj_3=Project.create :title => 'project3', :owner => user_2, :contributers => [user_3,user_4,user_1]
proj_4=Project.create :title => 'project4', :owner => user_3, :contributers => [user_5,user_9]
proj_5=Project.create :title => 'project5', :owner => user_4

issue_1=project1.issues.create :title => "as a user, i want a fly"
issue_2=project1.issues.create :title => "as a user, i want my fly"
issue_3=project1.issues.create :title => "as a user, i want to fly"
issue_4=project2.issues.create :title => "as a user, i will add project"
issue_5=project2.issues.create :title => "as a developer, i want to kill myself"
issue_6=project3.issues.create :title => "as a user, i want to be human"
issue_7=project4.issues.create :title => "as a user, i want to fuck myself"