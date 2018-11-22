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
