# The name of this view in Looker is "Invoice Item"
view: invoice_item {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_analytics.invoice_item`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " Index Level 0 " in Explore.

  dimension: __index_level_0__ {
    type: number
    sql: ${TABLE}.__index_level_0__ ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.Day ;;
  }

  dimension: day_of_week_no {
    type: number
    sql: ${TABLE}.Day_Of_Week_No ;;
  }

  dimension: day_of_year {
    type: number
    sql: ${TABLE}.Day_Of_Year ;;
  }

  dimension: discount_days_0 {
    type: number
    sql: ${TABLE}.Discount_Days_0 ;;
  }

  dimension: discount_days_10 {
    type: number
    sql: ${TABLE}.Discount_Days_10 ;;
  }

  dimension: discount_days_15 {
    type: number
    sql: ${TABLE}.Discount_Days_15 ;;
  }

  dimension: invoice_loc_amount {
    type: number
    sql: ${TABLE}.Invoice_LOC_Amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_invoice_loc_amount {
    type: sum
    sql: ${invoice_loc_amount} ;;
  }

  measure: average_invoice_loc_amount {
    type: average
    sql: ${invoice_loc_amount} ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: line_item_quantity {
    type: number
    sql: ${TABLE}.Line_Item_Quantity ;;
  }

  dimension: location_number {
    type: number
    sql: ${TABLE}.Location_Number ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: month_no {
    type: number
    sql: ${TABLE}.Month_No ;;
  }

  dimension: payment_terms_days {
    type: number
    sql: ${TABLE}.Payment_Terms_Days ;;
  }

  dimension: qtr_no_1 {
    type: number
    sql: ${TABLE}.Qtr_No_1 ;;
  }

  dimension: qtr_no_2 {
    type: number
    sql: ${TABLE}.Qtr_No_2 ;;
  }

  dimension: qtr_no_3 {
    type: number
    sql: ${TABLE}.Qtr_No_3 ;;
  }

  dimension: qtr_no_4 {
    type: number
    sql: ${TABLE}.Qtr_No_4 ;;
  }

  dimension: savings {
    type: number
    sql: ${TABLE}.Savings ;;
  }

  dimension: tier_1 {
    type: number
    sql: ${TABLE}.Tier_1 ;;
  }

  dimension: tier_10 {
    type: number
    sql: ${TABLE}.Tier_10 ;;
  }

  dimension: tier_2 {
    type: number
    sql: ${TABLE}.Tier_2 ;;
  }

  dimension: tier_3 {
    type: number
    sql: ${TABLE}.Tier_3 ;;
  }

  dimension: tier_4 {
    type: number
    sql: ${TABLE}.Tier_4 ;;
  }

  dimension: tier_5 {
    type: number
    sql: ${TABLE}.Tier_5 ;;
  }

  dimension: tier_6 {
    type: number
    sql: ${TABLE}.Tier_6 ;;
  }

  dimension: tier_7 {
    type: number
    sql: ${TABLE}.Tier_7 ;;
  }

  dimension: tier_8 {
    type: number
    sql: ${TABLE}.Tier_8 ;;
  }

  dimension: total_spend {
    type: number
    sql: ${TABLE}.Total_Spend ;;
  }

  dimension: unit_price_loc {
    type: number
    sql: ${TABLE}.Unit_Price_LOC ;;
  }

  dimension: week_no {
    type: number
    sql: ${TABLE}.Week_No ;;
  }

  dimension: year_2010 {
    type: number
    sql: ${TABLE}.Year_2010 ;;
  }

  dimension: year_2011 {
    type: number
    sql: ${TABLE}.Year_2011 ;;
  }

  dimension: year_2012 {
    type: number
    sql: ${TABLE}.Year_2012 ;;
  }

  dimension: year_2013 {
    type: number
    sql: ${TABLE}.Year_2013 ;;
  }

  dimension: year_2014 {
    type: number
    sql: ${TABLE}.Year_2014 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
