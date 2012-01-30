# The PublicBodyCategories structure works like this:
# [
#   "Main category name",
#       [ "tag_to_use_as_category", "Sub category title", "sentence that can describes things in this subcategory" ],
#       [ "another_tag", "Second sub category title", "another descriptive sentence for things in this subcategory"],
#   "Another main category name",
#       [ "another_tag_2", "Another sub category title", "another descriptive sentence"]
# ])

PublicBodyCategories.add(:en, [
    "Silly ministries",
        [ "useless_agency", "Useless ministries", "a useless ministry" ],
        [ "lonely_agency", "Lonely agencies", "a lonely agency"],
    "Popular agencies",
        [ "popular_agency", "Popular agencies", "a lonely agency"]
])
