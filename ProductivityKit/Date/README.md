# Date
The extension for the `Date` class.

## Usage

### Utility

1. IsSameDayAs  
    
    Compares 2 dates and check if they are both are on the same day.
    
     ```Swift
    let nowDate = Date()
    let otherDate = nowDate.addingTimeInterval(5 * 60) // add 5 minutes from nowDate
    let isSameDay = nowDate.isSameDayAs(other: otherDate) // true
     ```

 1. IsBetween  
     
     Check if a date is between 2 dates.
     
     ```Swift
     let nowDate = Date()
     let aMinute = TimeInterval(60)
     let startDate = nowDate.addingTimeInterval(-aMinute) // remove 1 minute from nowDate
     let endDate = nowDate.addingTimeInterval(aMinute) // add 1 minute to nowDate
     let isBetween2Dates = nowDate.isBetween(start: startDate, end: endDate) // true
     ```
