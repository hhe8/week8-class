lecutre on securities
1. html5 password type <input type = "password", name = "password">;
   ruby way to do this? text_field_tag;
   <%= password_field_tag :password %>
2. cookies movie controller => show action => recently viewed;
  use cookies hash; to encrypt the cookies, use signed method;

3. encrypt the data in the database.
   one way encryption algorithm to make sure that the password does not get leaked.  
   "bcrypt" is suggested. Coda Hale
   In gem file: add by 'bycrpt', '~> 3.1.7'

Look at week 8 notes; 3 step recipe:

4. has_secure_password; #this adds a attr getter and setter method in the user model

5. modify sign_in
  u = User.find_by_email('@');
  u.authentication("hockey"); this gives you the user object; ruby truish thing: everything but false and nil;
  so an object is always ture;

6. users_controller
  authorization is different from authentication;
  before_action: require_login and authorize_user;

7. customize the page so that only the login users see the add-movie button;

8. don't use string interpolation for the search function. movies_controller;
  use place holder @movies = Movie.where("title LIKE ?", '%#{k}%');
  use ? place holder syntax to avoid sql injection;

  param hash always a string use to_i;

9. mass assignment ruby; in movies_controller create;
   pass in a hash to assign the variables.
   params hash has the values that are not trusted;
   form_params is not even secure enough;
   use params.permit

10. director model:
  has_many :movies, dependent: :destroy;
  or has_many :movies, dependent: :nullify; for the project for al has_many models;


Director.joins(:movies).where("movies.stars > 8").count # the :movies table must be in has_many or belongs_to relationship with director;


11. movies_controller index action;
  cut down the number of queries
  @movies = Movie.all.includes(:director)
  never use Movie.all

  use Movie.limit('');
  the page does not have to display all the movies at once

  rails gem kaminari;
  movies_controller
  page(1).per(4)
  <%= paginate @movies %>
  restart the server after installing new gems
