# The name of this view in Looker is "Weather Daily"
view: weather_daily {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `REPORTING.WeatherDaily`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Country" in Explore.

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension_group: insert_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.InsertTimestamp ;;
  }

  dimension: max_temp {
    type: number
    sql: ${TABLE}.MaxTemp ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_max_temp {
    type: sum
    sql: ${max_temp} ;;
  }

  measure: average_max_temp {
    type: average
    sql: ${max_temp} ;;
  }

  dimension: min_temp {
    type: number
    sql: ${TABLE}.MinTemp ;;
  }

  dimension: post_code {
    type: string
    sql: ${TABLE}.PostCode ;;
  }

  dimension_group: update_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.UpdateTimestamp ;;
  }

  dimension: value_type {
    type: string
    sql: ${TABLE}.ValueType ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
