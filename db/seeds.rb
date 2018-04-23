# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Account.destroy_all
TodoList.destroy_all
TodoItem.destroy_all
Tag.destroy_all

User.create! [
	{ login: "Matt", password: "abc123" },
	{ login: "Tim", password: "abc123" },
	{ login: "jkim", password: "abc123" },
]

User.first.create_account!({ gender: "male", age: "22", first_name: "Matt", last_name: "Ice" })
User.second.create_account!({ gender: "male", age: "25", first_name: "Tim", last_name: "Jim" })
User.last.create_account!({ gender: "male", age: "28", first_name: "Johnny", last_name: "Kim" })

User.first.todo_lists.create!({list_name: "Take the car to the shop", list_due_date: '2020-08-31'})
User.first.todo_lists.create!({list_name: "Buy Tickets", list_due_date: '2018-05-15'})
User.first.todo_lists.create!({list_name: "Plan Vacation", list_due_date: '2018-06-21'})
User.first.todo_lists.create!({list_name: "Test", list_due_date: '2018-09-21'})
User.first.todo_lists.create!({list_name: "Ballgame", list_due_date: '2019-03-21'})
User.first.todo_lists.create!({list_name: "Practice", list_due_date: '2018-11-30'})
User.second.todo_lists.create!({list_name: "Buy Tickets", list_due_date: '2018-05-15'})
User.last.todo_lists.create!({list_name: "Plan Vacation", list_due_date: '2018-06-21'})

TodoList.first.todo_items.create!(
	{due_date: '2020-04-17', task_title: "Take the car to the shop", description: "Check if oil is leaking", done: false}
)
TodoList.first.todo_items.create!(
	{due_date: '2019-08-14', task_title: "Check tire pressure", description: "Check tire pressure", done: false}
)
TodoList.first.todo_items.create!(
	{due_date: '2018-05-14', task_title: "Check brake fluid", description: "Check brake fluid", done: true}
)
TodoList.first.todo_items.create!(
	{due_date: '2016-12-30', task_title: "Fill gas", description: "Fill gas", done: true}
)
TodoList.first.todo_items.create!(
	{due_date: '2019-06-14', task_title: "Change fluids", description: "Change fluids", done: false}
)
TodoList.first.todo_items.create!(
	{due_date: '2018-02-14', task_title: "Buy tires", description: "Buy tires", done: true}
)
TodoItem.first.tags.create!( tag_name: "car" )
TodoItem.first.tags.create!( tag_name: "car" )
TodoItem.first.tags.create!( tag_name: "car" )