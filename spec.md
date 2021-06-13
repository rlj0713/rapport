# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project - This is pretty self-explanatory
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) - A User has many notes
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) - Notes belong to many Users
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) - Users have many levels through notes, Users also have many categories through notes.
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) Users have many notes and Notes have many users (through some aliased foreign keys)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) - Users can submit a priority level and a category.
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) - Validations for presence and uniqueness are used throughout the app.
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) - Both the notes and users controllers utilize .where
- [x] Include signup (how e.g. Devise) - Visible in the users/new view
- [x] Include login (how e.g. Devise) - Visible in the sessions/new view
- [x] Include logout (how e.g. Devise) - Visible in the layout file
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) - Omniauth used
- [x] Include nested resource show or index (URL e.g. users/2/recipes) - see user_notes_path in the notes controller
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) - see edit_note_path in the notes index view
- [x] Include form display of validation errors (form URL e.g. /recipes/new) - see form partial in the notes - new view

Confirm:
- [x] The application is pretty DRY - There is always room for improvement, but I abstracted a form using a partial and avoided redundant code wherever I saw possible.
- [x] Limited logic in controllers - Yes
- [x] Views use helper methods if appropriate - I could not find any use for helpers, but I am open to refactoring.
- [x] Views use partials if appropriate - Yes


Blog Post - https://rlj0713.medium.com/rails-for-the-first-time-b1d333d04576

