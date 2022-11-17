# The name of this view in Looker is "Uo Musage Sample"
view: uo_musage_sample {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `REPORTING.UoMUsage_SAMPLE`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Conv Factor" in Explore.

  dimension: conv_factor {
    type: number
    sql: ${TABLE}.conv_factor ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_conv_factor {
    type: sum
    sql: ${conv_factor} ;;
  }

  measure: average_conv_factor {
    type: average
    sql: ${conv_factor} ;;
  }

  dimension: converted {
    type: number
    sql: ${TABLE}.converted ;;
  }

  dimension: delivered_qty {
    type: number
    sql: ${TABLE}.DeliveredQty ;;
  }

  dimension: delivered_uo_m_meins {
    type: string
    sql: ${TABLE}.DeliveredUoM_MEINS ;;
  }

  dimension: material_number_matnr {
    type: string
    sql: ${TABLE}.MaterialNumber_MATNR ;;
  }

  dimension: material_text_maktx {
    type: string
    sql: ${TABLE}.MaterialText_MAKTX ;;
  }

  dimension: to_conv {
    type: string
    sql: ${TABLE}.to_conv ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
