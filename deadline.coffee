class Deadline
  constructor: (@date) ->

  getTime: ->
    hours = @date.getHours()
    minutes = @date.getMinutes()

    # Special cases: "midnight" and "noon"
    return "midnight" if hours == 0 and minutes == 0
    return "noon" if hours == 12 and minutes == 0

    timeOfDay = if hours < 12 then 'a.m.' else 'p.m.'
    hour = formatHours(hours)

    # Special case: Don't show minutes at the top of the hour
    return "#{hour} #{timeOfDay}" if topOfHour(minutes)

    minute = formatMinutes(minutes)

    "#{hour}:#{minute} #{timeOfDay}"

  # FIX: Incomplete
  getDate: ->
    month = @date.getMonth()
    date = @date.getDate()
    year = @date.getFullYear()

    monthName = monthNames[month]

    "#{monthName} #{date}, #{year}"

module.exports = Deadline


################
# Time Helpers #
################

formatHours = (hours) ->
  return 12 if hours == 0
  return hours - 12 if hours > 12
  hours

topOfHour = (minutes) ->
  minutes == 0

formatMinutes = (minutes) ->
  return "0#{minutes}" if minutes < 10
  minutes


################
# Date Helpers #
################

monthNames = [
  "Jan."
  "Feb."
  "March"
  "April"
  "May"
  "June"
  "July"
  "Aug."
  "Sept."
  "Oct."
  "Nov."
  "Dec."
]
