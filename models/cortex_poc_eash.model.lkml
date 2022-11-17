# Define the database connection to be used for this model.
connection: "cortex-sap-reporting"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: cortex_poc_eash_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cortex_poc_eash_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Cortex Poc Eash"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: billing_blocking_reasons_md {}

explore: business_partners_md {}

explore: bill_of_materials_md {}

explore: batches_md {}

explore: addresses_md {}

explore: accounting_documents_receivables {}

explore: billing {}

explore: accounting_documents {}

explore: customers_md {}

explore: cost_center_amounts_hierarchy_sample {}

explore: currencies_md {}

explore: countries_md {}

explore: companies_md {}

explore: cost_centers_md {}

explore: currency_conv_util {}

explore: deliveries {}

explore: delivery_blocking_reasons_md {}

explore: distribution_channels_md {}

explore: divisions_md {}

explore: invoice_documents_flow {}

explore: glaccounts_md {}

explore: holiday_calendar {}

explore: deliveries_status_per_sales_org {}

explore: languages_t002 {}

explore: ledgers_md {}

explore: material_plants_md {}

explore: material_movement_types_md {}

explore: material_groups_md {}

explore: materials_md {}

explore: material_types_md {}

explore: materials_movement {}

explore: materials_valuation {}

explore: order_to_cash {}

explore: pofulfillment {}

explore: poschedule {}

explore: poorder_history {}

explore: plants_md {}

explore: product_hierarchies_md {}

explore: povendor_confirmation {}

explore: production_orders {}

explore: product_hierarchy_flatten {}

explore: profit_centers_md {}

explore: purchase_document_types_md {}

explore: profit_center_amounts_hierarchy_sample {}

explore: purchase_documents {}

explore: purchasing_organizations_md {}

explore: purchasing_groups_md {}

explore: purchase_documents_flow {}

explore: regions_t005_s {}

explore: sdstatus_items {}

explore: reason_for_movement_types_md {}

explore: sddocument_flow {}

explore: sales_fulfillment {}

explore: sales_fulfillment_per_order {}

explore: special_stocks_md {}

explore: sales_organizations_md {}

explore: sales_status_items {}

explore: sales_orders_v2 {}

explore: stock_non_valuated {}

explore: sales_orders {}

explore: stock_per_plant {}

explore: stock_unrestricted_vs_sales {}

explore: storage_locations_md {}

explore: trends {}

explore: uo_musage_sample {}

explore: uo_mconversion_util {}

explore: uo_mmd {}

explore: telephone_codes_t005_k {}

explore: vendors_md {}

explore: weather {}

explore: valuation_areas_md {}

explore: weather_daily {}
