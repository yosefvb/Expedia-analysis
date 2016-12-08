airbnb_rev = read.csv("reviews_1.csv")
names(airbnb_rev)
length(unique(airbnb_rev$reviewer_id))/length(airbnb_rev$reviewer_id)

airbnb_rev %>%
  select(reviewer_id) %>%
  group_by(reviewer_id) %>%
  summarize(counts = n()) %>%
  filter(counts > 2)

head(airbnb_rev$comments)

expedia = read.csv("train.csv")
names(expedia)
# [1] "srch_id"                     "date_time"                   "site_id"                    
# [4] "visitor_location_country_id" "visitor_hist_starrating"     "visitor_hist_adr_usd"       
# [7] "prop_country_id"             "prop_id"                     "prop_starrating"            
# [10] "prop_review_score"           "prop_brand_bool"             "prop_location_score1"       
# [13] "prop_location_score2"        "prop_log_historical_price"   "position"                   
# [16] "price_usd"                   "promotion_flag"              "srch_destination_id"        
# [19] "srch_length_of_stay"         "srch_booking_window"         "srch_adults_count"          
# [22] "srch_children_count"         "srch_room_count"             "srch_saturday_night_bool"   
# [25] "srch_query_affinity_score"   "orig_destination_distance"   "random_bool"                
# [28] "comp1_rate"                  "comp1_inv"                   "comp1_rate_percent_diff"    
# [31] "comp2_rate"                  "comp2_inv"                   "comp2_rate_percent_diff"    
# [34] "comp3_rate"                  "comp3_inv"                   "comp3_rate_percent_diff"    
# [37] "comp4_rate"                  "comp4_inv"                   "comp4_rate_percent_diff"    
# [40] "comp5_rate"                  "comp5_inv"                   "comp5_rate_percent_diff"    
# [43] "comp6_rate"                  "comp6_inv"                   "comp6_rate_percent_diff"    
# [46] "comp7_rate"                  "comp7_inv"                   "comp7_rate_percent_diff"    
# [49] "comp8_rate"                  "comp8_inv"                   "comp8_rate_percent_diff"    
# [52] "click_bool"                  "gross_bookings_usd"          "booking_bool"               

sapply(expedia, function(x) length(unique(x)))

# to date time
date_time   
# to factor
site id 
visitor_location_country_id
prop_country_id
prop_id - The ID of the hotel
prop_starrating
prop_brand_bool - if independant hotel
prop_location_score1 - 1st location score ~350 levels
prop_location_score2 - 2nd, ~ 9550 levels
position
promotion_flag
srch_destination_id - 23700 levels?

srch_length_of_stay
srch_booking_window
srch_adults_count
srch_children_count             
srch_room_count    
srch_saturday_night_bool 
random_bool
booking_bool
comp1_rate - done
comp1_inv - done


# to number / integer?
visitor_hist_adr_usd

srch_query_affinity_score - 305368 factors?
orig_destination_distance
gross_bookings_usd
comp1_rate_percent_diff - ALL of these?