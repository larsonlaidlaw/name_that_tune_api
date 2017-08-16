# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "larsonlaidlaw", email: "larson@gmail.com", password: "password")
User.create(username: "jp", email: "jp@gmail.com", password: "password")

List.create(title: "Test List", user_id: 1)

a = Video.create(video_title: "Kendrick Lamar - DNA", video_id: "NLZRYQMLDW4", video_channel: "Kendrick Lamar VEVO", list_id: 1)
b = Video.create(video_title: "Kanye West - Monster", video_id: "yctBp6n8ROo", video_channel: "Kanye West VEVO", list_id: 1)
c = Video.create(video_title: "Jay-Z - 99 Problems", video_id: "AbpSST1x6AM", video_channel: "Jay-Z VEVO", list_id: 1)
d = Video.create(video_title: "Beyonce - All Night", video_id: "gM89Q5Eng_M", video_channel: "Beyonce VEVO", list_id: 1)
e = Video.create(video_title: "Taylor Swift - Blank Space", video_id: "e-ORhEE9VVg", video_channel: " Taylor Swift VEVO", list_id: 1)
f = Video.create(video_title: "Drake - Hotline Bling", video_id: "uxpDa-c-4Mc", video_channel: "Drake VEVO", list_id: 1)
