 - create login form/view - DONE 
 - create signup form/view - DONE
 - implement user authentication - DONE 
 - create migrations - DONE
    - create_user table: 
      - email
      - first_name
      - household_name
      - shared_password 
      - belongs_to household
 - establish connection view page for user homepage if logged in - connection works but HAVING PROBLEMS USING .authenticate method so currently not using this method
    - create_events table - DONE
      - Description 
      - Attendee - IMPLEMENT BY ITERATING THROUGH ADDED HOUSEHOLD MEMBERS 
      - Date created(timestamp?)
      - Datefrom 
      - Dateto
      - Time 
      - belongs to :user 
    - DO I NEED A HOUSEHOLD MODEL/TABLE???? CREATED
    - create user_event table: 
      - event primary key 
      - user primary key 
 - create details user/index view - user can add family members, create events, create lists(groceries/todo) and can assign list to other family members
 - create events form (Description, who ~ radio button with family members, from/to dates and time)
 - create events view 