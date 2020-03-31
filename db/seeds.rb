3.times do |topic|
    Topic.create!(
        title: "Topic Post Number is #{topic}"
    )
end

10.times do |blogs|
    Blog.create!(
        title: "Blog Post Number is #{blogs}",
        body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
        topic_id: Topic.last.id

        )
end

5.times do |skills|
    Skill.create!(
        title: "Rails Number is #{skills}",
        percent_utilized: 10+(skills).to_i
    )
end

5.times do |portfolios|
    Portfolio.create!(
        title: "Portfolios title is #{portfolios}",
        subtitle: "Ruby On Rails",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        main_image: "http://via.placeholder.com/300",
        thumb_image: "http://via.placeholder.com/100"
    )
end

3.times do |portfolios|
    Portfolio.create!(
        title: "Portfolios title is #{portfolios}",
        subtitle: "AngulerJS",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        main_image: "http://via.placeholder.com/300",
        thumb_image: "http://via.placeholder.com/100"
    )
end