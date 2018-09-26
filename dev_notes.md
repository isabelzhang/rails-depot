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
