movie = c("World War Z", "Coco", "Frozen", 
          "Wall-E", "Pac-Max", "LEGO Movie", 
          "Saw VII", "Us", "All Quiet on the Western Front", "1917")

rating = runif(n=10, min=0, max=10)

genre = c("Action", "Animated", "Animated",
          "Animated", "Animated", "Animated",
          "Horror", "Horror", "War", "War")

percent = 0.6
col_name = 'rating'

test_df = data.frame(movie, rating, genre)