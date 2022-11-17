# The name of this view in Looker is "Accounting Documents Receivables"
view: accounting_documents_receivables {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `REPORTING.AccountingDocumentsReceivables`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Account Type Koart" in Explore.

  dimension: account_type_koart {
    type: string
    sql: ${TABLE}.AccountType_KOART ;;
  }

  dimension: accounting_document_number_belnr {
    type: string
    sql: ${TABLE}.AccountingDocumentNumber_BELNR ;;
  }

  dimension: accounts_receivable {
    type: number
    sql: ${TABLE}.AccountsReceivable ;;
  }

  dimension: bad_debt_dmbtr {
    type: number
    sql: ${TABLE}.BadDebt_DMBTR ;;
  }

  dimension: billing_document_vbeln {
    type: string
    sql: ${TABLE}.BillingDocument_VBELN ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: cash_discount_date1 {
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
    sql: ${TABLE}.CashDiscountDate1 ;;
  }

  dimension_group: cash_discount_date2 {
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
    sql: ${TABLE}.CashDiscountDate2 ;;
  }

  dimension: city_ort01 {
    type: string
    sql: ${TABLE}.City_ORT01 ;;
  }

  dimension: cleared_after_due_date {
    type: number
    sql: ${TABLE}.ClearedAfterDueDate ;;
  }

  dimension: cleared_on_or_before_due_date {
    type: number
    sql: ${TABLE}.ClearedOnOrBeforeDueDate ;;
  }

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: company_city {
    type: string
    sql: ${TABLE}.Company_City ;;
  }

  dimension: company_code_bukrs {
    type: string
    sql: ${TABLE}.CompanyCode_BUKRS ;;
  }

  dimension: company_country {
    type: string
    sql: ${TABLE}.Company_Country ;;
  }

  dimension: company_text_butxt {
    type: string
    sql: ${TABLE}.CompanyText_BUTXT ;;
  }

  dimension: country_key_land1 {
    type: string
    sql: ${TABLE}.CountryKey_LAND1 ;;
  }

  dimension: currency_key_waers {
    type: string
    sql: ${TABLE}.CurrencyKey_WAERS ;;
  }

  dimension: current_period {
    type: string
    sql: ${TABLE}.Current_Period ;;
  }

  dimension: customer_number_kunnr {
    type: string
    sql: ${TABLE}.CustomerNumber_KUNNR ;;
  }

  dimension: days_in_arrear {
    type: number
    sql: ${TABLE}.DaysInArrear ;;
  }

  dimension_group: document_date_in_document_bldat {
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
    sql: ${TABLE}.DocumentDateInDocument_BLDAT ;;
  }

  dimension: doubtful_receivables {
    type: number
    sql: ${TABLE}.DoubtfulReceivables ;;
  }

  dimension: exchange_rate_type_kurst {
    type: string
    sql: ${TABLE}.ExchangeRateType_KURST ;;
  }

  dimension: fiscal_year_gjahr {
    type: string
    sql: ${TABLE}.FiscalYear_GJAHR ;;
  }

  dimension: fiscalyear_variant_periv {
    type: string
    sql: ${TABLE}.FiscalyearVariant_PERIV ;;
  }

  dimension: invoice_to_which_the_transaction_belongs_rebzg {
    type: string
    sql: ${TABLE}.InvoiceToWhichTheTransactionBelongs_REBZG ;;
  }

  dimension: local_currency_hwaer {
    type: string
    sql: ${TABLE}.LocalCurrency_HWAER ;;
  }

  dimension: name1_name1 {
    type: string
    sql: ${TABLE}.NAME1_NAME1 ;;
  }

  dimension_group: net_due {
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
    sql: ${TABLE}.NetDueDate ;;
  }

  dimension: number_of_line_item_within_accounting_document_buzei {
    type: string
    sql: ${TABLE}.NumberOfLineItemWithinAccountingDocument_BUZEI ;;
  }

  dimension: open_and_not_due {
    type: number
    sql: ${TABLE}.OpenAndNotDue ;;
  }

  dimension: open_and_over_due {
    type: number
    sql: ${TABLE}.OpenAndOverDue ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.Period ;;
  }

  dimension_group: posting_date_in_the_document_budat {
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
    sql: ${TABLE}.PostingDateInTheDocument_BUDAT ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }

  dimension: written_off_amount_dmbtr {
    type: number
    sql: ${TABLE}.WrittenOffAmount_DMBTR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_written_off_amount_dmbtr {
    type: sum
    sql: ${written_off_amount_dmbtr} ;;
  }

  measure: average_written_off_amount_dmbtr {
    type: average
    sql: ${written_off_amount_dmbtr} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
