# The name of this view in Looker is "Sddocument Flow"
view: sddocument_flow {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `REPORTING.SDDocumentFlow`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Client Mandt" in Explore.

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: delivered_qty_rfmng {
    type: number
    sql: ${TABLE}.DeliveredQty_RFMNG ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_delivered_qty_rfmng {
    type: sum
    sql: ${delivered_qty_rfmng} ;;
  }

  measure: average_delivered_qty_rfmng {
    type: average
    sql: ${delivered_qty_rfmng} ;;
  }

  dimension: delivered_uo_m_meins {
    type: string
    sql: ${TABLE}.DeliveredUoM_MEINS ;;
  }

  dimension: delivery_item_posnv {
    type: string
    sql: ${TABLE}.DeliveryItem_POSNV ;;
  }

  dimension: delivery_number_vbelv {
    type: string
    sql: ${TABLE}.DeliveryNumber_VBELV ;;
  }

  dimension: invoice_currency_waers {
    type: string
    sql: ${TABLE}.InvoiceCurrency_WAERS ;;
  }

  dimension: invoice_item_posnn {
    type: string
    sql: ${TABLE}.InvoiceItem_POSNN ;;
  }

  dimension: invoice_number_vbeln {
    type: string
    sql: ${TABLE}.InvoiceNumber_VBELN ;;
  }

  dimension: invoice_qty_rfmng {
    type: number
    sql: ${TABLE}.InvoiceQty_RFMNG ;;
  }

  dimension: invoice_uo_m_meins {
    type: string
    sql: ${TABLE}.InvoiceUoM_MEINS ;;
  }

  dimension: invoice_value_rfwrt {
    type: number
    sql: ${TABLE}.InvoiceValue_RFWRT ;;
  }

  dimension: sales_item_posnv {
    type: string
    sql: ${TABLE}.SalesItem_POSNV ;;
  }

  dimension: sales_order_vbelv {
    type: string
    sql: ${TABLE}.SalesOrder_VBELV ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
