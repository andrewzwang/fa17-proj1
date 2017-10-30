# Q0: Why is this error being thrown?
The Pokemon model has not been created yet.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They all have the same table attributes and belong to a trainer/is wild.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This line creates a button, and sets a path to the button that routes to the method of that object.
# Question 3: What would you name your own Pokemon?
Hilfinger
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed the trainer's profile into redirect_to. This was obtained by using rake routes.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This error message is shown when there are duplicate Pokemon, determined by validations.
# Give us feedback on the project and decal below!
There were some bugs that were hard to fix on windows.
# Extra credit: Link your Heroku deployed app
