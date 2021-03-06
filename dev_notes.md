## Development Notes

0. Load Site
	> rails server
	> [Site](localhost:3000/products)
1. Generate scaffold: model, controller, views, tests
	rails generate scaffold MODEL_NAME model_field_1:text model_field_2:string model_field_3:decimal
2. Database migration: applies un-applied changes to DB
	> rake db:migrate
3. Dev database: populate db/seeds.rb with test rows
	> rake db:seed
4. Style changes: SCSS editing to change site appearance
5. Validation
	- Null () [presence: true]
	- File format (gif, png, jpg, txt, etc.) [format: {with %r{regex}, message: 'error'}]
	- Valid numbers (> 0.01) [numericality: {greater_than_or_equal_to: 0.01}]
	- Uniqueness [uniqueness: true]
6. Testing
	> rake test
	- products_controller_tes.rb --> create model that passes validation
	- test/fixtures/products.yml --> all fields should be valid
7. Style Changes for entire site
  - Layout changes in `application.html.erb` propagates through entire site
    - `<% yield %>` is particularly important to load in page-specific data (ex: store/index.html.erb)
  - `application.css.scss` will have `require .` which will load in all CSS 
8. Testing
  > rake test:controllers
    - `assert_select` can help verify the HTML generated has expected CSS selectors 
  > rake test:models 
9. Fragment Caching: "Russian Doll Caching"
  - Turn on/off caching in development mode --> environments/development.rb
  - TODO: Figure out how to test caching and what expected results are
  - Add code to return most recently updated object 
  - Add caching layer to template so it knows what to update (ex: change to template, product)
10. Consider modularizing code by moving functions that multiple controllers will use into `concerns`
11. Use generator to create new scaffold for `Cart`
  - Add relationships between `Cart`, `LineItem`, `Product` in model definitions (:belongs_to, :has_many)
12. Add button that POSTs to `LineItem` causing `LineItem` to build the relationship so referenced `Product` tracks the `LineItem`
13. Create filters/callbacks to call certain functions before/after call to specified method
14. Added key to session that tracks number of visits to home page (stores/index):
  - Checks for: nil, number of times accessed
  - Resets counter to zero when user adds something to cart