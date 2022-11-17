# The name of this view in Looker is "Holiday Calendar"
view: holiday_calendar {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `REPORTING.HolidayCalendar`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Country Code" in Explore.

  dimension: country_code {
    type: string
    sql: ${TABLE}.CountryCode ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: holiday {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.HolidayDate ;;
  }

  dimension: quarter_of_year {
    type: number
    sql: ${TABLE}.QuarterOfYear ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_quarter_of_year {
    type: sum
    sql: ${quarter_of_year} ;;
  }

  measure: average_quarter_of_year {
    type: average
    sql: ${quarter_of_year} ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.Week ;;
  }

  dimension: week_day {
    type: string
    sql: ${TABLE}.WeekDay ;;
  }

  dimension: year_value {
    type: number
    sql: ${TABLE}.YearValue ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
