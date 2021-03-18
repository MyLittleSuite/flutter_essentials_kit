# extensions

<details>
    <summary>Color</summary>
    
    * `textColorBasedOnLuminance`, calculate the correct text color for the background.
</details>

<details>
    <summary>Commons</summary>
    
    * `let`, calls the specified function block with this value as its argument and returns its result.
</details>

<details>
    <summary>DateTime</summary>
    
    final date = DateTime.now() // => Example: "12/03/2020 23:40:23"
    date.startOfDay() // => "12/03/2020 00:00:00"
    date.endOfDay() // => "12/03/2020 23:59:59"
    date.yesterday() // => "11/03/2020 23:40:23"
    date.tomorrow() // => "13/03/2020 23:40:23"
    
    date.firstDayOfMonth() // => "01/03/2020 23:40:23"
    date.lastDayOfMonth() // => "31/03/2020 23:40:23"
    date.nextMonth() // => "12/04/2020 23:40:23"
    date.previousMonth() // => "12/02/2020 23:40:23"
    date.nextWeek() // => "19/03/2020 23:40:23"
    date.previousWeek() // => "05/03/2020 23:40:23"
    date.nextYear() // => "12/03/2021 23:40:23"
    date.previousYear() // => "12/03/2019 23:40:23"
    
    date.onlyDate() // => "12/03/2020 00:00:00"
    date.onlyTime() // => "00/00/0000 23:40:23"
</details>

<details>
    <summary>Iterable</summary>
    
    * `filterNull()`, remove all null values from this iterable.
    * `groupBy`, group elements with criteria. If you want to sort the map, you should specify the **sprtingCriteria** param.
</details>
