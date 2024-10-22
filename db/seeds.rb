require 'securerandom'

25.times do
  project = Project.create(
    author: "Seed",
    name: "Project #{SecureRandom.hex(4)}",
    start_date: Time.current,
    end_date: Time.current + 1.month
  )

  5.times do
    Comment.create(
      author: "Seed",
      body: "Comment #{SecureRandom.hex(4)}",
      commentable: project
    )
  end
end
