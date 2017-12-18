require 'random_data'

# Create Posts
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

#Create unique post
Post.find_or_create_by(
  title: "Unique Post Title",
  body: "Unique post body. This post's body is super unique. Unique."
)

#Create unique comment
Comment.find_or_create_by(
  post: posts.find_or_create_by(title: "Unique Post Title"),
  body: "Unique comment body. This comments's body is super unique. Unique."
)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
