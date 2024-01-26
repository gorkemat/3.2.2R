remind_me <- function() {
  current_day <- weekdays(Sys.Date())
  gym_routine <- switch(current_day,
                        "Sunday" = "Rest day",
                        "Monday" = "Pull day",
                        "Tuesday" = "Push day",
                        "Wednesday" = "Leg day",
                        "Thursday" = "Pull day",
                        "Friday" = "Push day",
                        "Saturday" = "Leg day",
  )
  return(paste("Today's gym routine:", gym_routine))
}
