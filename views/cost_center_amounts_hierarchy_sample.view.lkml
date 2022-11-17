# The name of this view in Looker is "Cost Center Amounts Hierarchy Sample"
view: cost_center_amounts_hierarchy_sample {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `REPORTING.CostCenterAmountsHierarchy_SAMPLE`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount In Document Currency Wrbtr" in Explore.

  dimension: amount_in_document_currency_wrbtr {
    type: number
    sql: ${TABLE}.AmountInDocumentCurrency_WRBTR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount_in_document_currency_wrbtr {
    type: sum
    sql: ${amount_in_document_currency_wrbtr} ;;
  }

  measure: average_amount_in_document_currency_wrbtr {
    type: average
    sql: ${amount_in_document_currency_wrbtr} ;;
  }

  dimension: amount_in_local_currency_dmbtr {
    type: number
    sql: ${TABLE}.AmountInLocalCurrency_DMBTR ;;
  }

  dimension: child_hierarchy {
    type: string
    sql: ${TABLE}.ChildHierarchy ;;
  }

  dimension: cost_center_kostl {
    type: string
    sql: ${TABLE}.CostCenter_KOSTL ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: description_ltext {
    type: string
    sql: ${TABLE}.Description_LTEXT ;;
  }

  dimension: parent_hierarchy {
    type: string
    sql: ${TABLE}.ParentHierarchy ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
