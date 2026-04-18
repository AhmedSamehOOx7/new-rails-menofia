# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

PostEditor.delete_all
Post.delete_all
User.delete_all
Editor.delete_all

users = [
	User.create!(name: "Amina Hassan", email: "amina@example.com"),
	User.create!(name: "Youssef Ali", email: "youssef@example.com"),
	User.create!(name: "Salma Nabil", email: "salma@example.com")
]

editors = [
	Editor.create!(name: "Mariam Ibrahim", email: "mariam.editor@example.com"),
	Editor.create!(name: "Kareem Adel", email: "kareem.editor@example.com"),
	Editor.create!(name: "Nour Samy", email: "nour.editor@example.com")
]

posts = [
	Post.create!(title: "Fishing Tips for Spring", content: "Use lighter tackle and keep baits natural.", creator: users[0]),
	Post.create!(title: "Best Nile Spots", content: "Early morning around calm inlets gives best results.", creator: users[1]),
	Post.create!(title: "Bait Preparation Guide", content: "Prepare bait one day ahead and keep it cool.", creator: users[2])
]

PostEditor.create!(post: posts[0], editor: editors[0])
PostEditor.create!(post: posts[0], editor: editors[1])
PostEditor.create!(post: posts[1], editor: editors[1])
PostEditor.create!(post: posts[2], editor: editors[2])
