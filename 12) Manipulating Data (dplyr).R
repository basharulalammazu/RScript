# To manipulate the data, R provides a library called dplyr which consists of many built-in methods to manipulate the data. So to use the data manipulation function, first need to import the dplyr package using library(dplyr) line of code. Below is the list of a few data manipulation functions present in dplyr package.
# filter() -> Produces a subset of a Data Frame
# arrange() -> Recorder the rows of a data Frame
# mutate() -> Created new variables without dropping old ones
# transmute() -> Create new variables by droping the old one

# distinct() -> Remove duplicate rows in Data Frame
# select() -> Produces data in required columns of a Data Frame
# rename() -> Renames the variable names
# summarize() -> Gives summarize data like average, sum etc




#---------------------------------------------------------------------
#                    filter() method
#         filter(dataframeName, condition)
#---------------------------------------------------------------------

library(dplyr)
cricketerInfo <- data.frame(players = c("Jacques Kallis", "Shakib Al Hasan", "Ben Stokes", "Imran Khan", "Sir Garfield Sobers", "Shaun Pollock", "Andrew Flintoff", "Sanath Jayasuriya", "Chris Cairns", "Daniel Vettori", "Shakib Al Hasan"),  
                            runs = c(25534, 14477, 9646, 7516, 8032, 7386, 7315, 21032, 8273, 6989, 14477),
                            wickets = c(577, 692, 219, 544, 235, 829, 400, 440, 420, 705, 692))
# Show the cricketer info
print(cricketerInfo)


# Select players with runs > 10000
filtered_data <- filter(cricketerInfo, runs > 10000)
print("Filtered: Runs > 10000")
print(filtered_data)

# Select players with runs > 10000 and wickets > 500
elite_allrounders <- filter(cricketerInfo, runs > 10000 & wickets > 500)
print("Filtered: Runs > 10000")
print(elite_allrounders)





#---------------------------------------------------------------------
#                    distinct() method
#         distinct(dataframeName, col1, col2,.., .keep_all=TRUE)
#---------------------------------------------------------------------

# Remove duplicate rows
distinct_data <- distinct(cricketerInfo)
print("Distinct Data:")
print(distinct_data)





#---------------------------------------------------------------------
#                    arrange() method
#         arrange(dataframeName, columnName)
#---------------------------------------------------------------------

# Sort by runs acending
arrange(cricketerInfo, runs)

# Sort by runs descending
arrange(cricketerInfo, desc(runs))

arrange(cricketerInfo, desc(runs), desc(wickets))






#---------------------------------------------------------------------
#                    select() method
#         select(dataframeName, col1,col2,…)
#---------------------------------------------------------------------


# Only players and runs columns
selected_data <- select(cricketerInfo, players, runs)
print("Selected columns (players, runs):")
print(selected_data)





#---------------------------------------------------------------------
#                    rename() method
#         rename(dataframeName, newName=oldName)
#---------------------------------------------------------------------

# Rename columns
renamed_data <- rename(cricketerInfo, PlayerName = players, TotalRuns = runs, TotalWickets = wickets)
print("Renamed columns:")
print(renamed_data)





#---------------------------------------------------------------------
#                    mutate() function
#         mutate(dataframeName, newVariable=formula)
#---------------------------------------------------------------------

# Add new column avg
mutate(cricketerInfo, avg = runs/10)

# Add a new column: total_contribution = runs + wickets
mutated_data <- mutate(cricketerInfo, total_contribution = runs + wickets)
print("Mutated (added total_contribution):")
print(mutated_data)


# Add country column using mutate + case_when
cricketerInfo <- cricketerInfo %>%
  mutate(
    country = case_when(
      players == "Jacques Kallis" ~ "South Africa",
      players == "Shakib Al Hasan" ~ "Bangladesh",
      players == "Ben Stokes" ~ "England",
      players == "Imran Khan" ~ "Pakistan",
      players == "Sir Garfield Sobers" ~ "West Indies",
      players == "Shaun Pollock" ~ "South Africa",
      players == "Andrew Flintoff" ~ "England",
      players == "Sanath Jayasuriya" ~ "Sri Lanka",
      players == "Chris Cairns" ~ "New Zealand",
      players == "Daniel Vettori" ~ "New Zealand",
      TRUE ~ "Unknown"
    )
  )

# Show updated data
print("DataFrame with country added using mutate:")
print(cricketerInfo)





#---------------------------------------------------------------------
#                    transmute() function
#         transmute(dataframeName, newVariable=formula)
#---------------------------------------------------------------------

# Drop new column avg
transmute(cricketerInfo, avg = runs/10)





#---------------------------------------------------------------------
#                    summarize() function
#          summarize(dataframeName, aggregate_function(columnName))
#---------------------------------------------------------------------


# Custom function to get mode
get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}


# Summary with detailed statistics
summary_data <- summarize(cricketerInfo,
                          avg_runs = mean(runs),
                          median_runs = median(runs),
                          mode_runs = get_mode(runs),
                          max_runs = max(runs),
                          min_runs = min(runs),
                          sd_runs = sd(runs),
                          
                          avg_wickets = mean(wickets),
                          median_wickets = median(wickets),
                          mode_wickets = get_mode(wickets),
                          max_wickets = max(wickets),
                          min_wickets = min(wickets),
                          sd_wickets = sd(wickets),
                          
                          most_frequent_player = get_mode(players),
                          total_players = n()
                          )
print("Summary:")
print(summary_data)





#---------------------------------------------------------------------
#                    case_when() for labeling
#---------------------------------------------------------------------
# Classify players based on their total contributions
cricketerInfo <- cricketerInfo %>%
  mutate(
    contribution_level = case_when(
      runs + wickets > 25000 ~ "Legend",
      runs + wickets > 15000 ~ "Great",
      runs + wickets > 10000 ~ "Good",
      TRUE ~ "Average"
    )
  )

print("Players with contribution level using case_when:")
print(select(cricketerInfo, players, runs, wickets, contribution_level))






#---------------------------------------------------------------------
#                    if_else() for binary condition
#---------------------------------------------------------------------
# Add a new column: isElite = TRUE if runs > 10000 AND wickets > 500
cricketerInfo <- cricketerInfo %>% mutate(
  isElite = if_else(runs > 10000 & wickets > 500, TRUE, FALSE)
  )

print("Players with isElite flag using if_else:")
print(select(cricketerInfo, players, runs, wickets, isElite))