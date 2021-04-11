# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [X] Use ActiveRecord for storing information in a database
    - used active record to create tables for each model class created
- [x] Include more than one model class (e.g. User, Post, Category) 
    - created User, Library, Book, Friend, and List models
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
    - User class has many libraries and many lists
    - User class has many books through libraries and lists tables
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
    - library belongs to book and user
    - list belongs to book and user
- [x] Include user accounts with unique login attribute (username or email)
    - all users have a unique username
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
    -friends can be added, created, and viewed.
    -lists can be deleted, added, updated, or created.
- [x] Ensure that users can't modify content created by other users
    -user can view but not edit or add to friends libraries or lists
- [x] Include user input validations
    -bcrypt gem is used to validate user, then user_id is saved as session id.
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
    -user is redirected to failure and other pages in case of failed sign up or username of friend not found.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits 
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
