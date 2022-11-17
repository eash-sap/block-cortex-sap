# The name of this view in Looker is "Weather"
view: weather {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `REPORTING.Weather`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Avg Max Temp" in Explore.

  dimension: avg_max_temp {
    type: number
    sql: ${TABLE}.AvgMaxTemp ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_avg_max_temp {
    type: sum
    sql: ${avg_max_temp} ;;
  }

  measure: average_avg_max_temp {
    type: average
    sql: ${avg_max_temp} ;;
  }

  dimension: avg_min_temp {
    type: number
    sql: ${TABLE}.AvgMinTemp ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: max_temp {
    type: number
    sql: ${TABLE}.MaxTemp ;;
  }

  dimension: min_temp {
    type: number
    sql: ${TABLE}.MinTemp ;;
  }

  dimension: post_code {
    type: string
    sql: ${TABLE}.PostCode ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: week_start {
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
    sql: ${TABLE}.WeekStartDate ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
