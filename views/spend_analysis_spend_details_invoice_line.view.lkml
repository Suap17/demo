# The name of this view in Looker is "Spend Analysis Spend Details Invoice Line"
view: spend_analysis_spend_details_invoice_line {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_analytics.spend_analysis_spend_details_invoice_line`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: commodity {
    type: string
    sql: ${TABLE}.Commodity ;;
  }

  dimension: commodity_detail {
    type: string
    sql: ${TABLE}.Commodity_Detail ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.Country_Region ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.Currency_ID ;;
  }

  dimension: date_currency_id {
    type: number
    sql: ${TABLE}.Date_Currency_ID ;;
  }

  dimension: date_id {
    type: number
    sql: ${TABLE}.Date_ID ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.Day ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.Day_Of_Week ;;
  }

  dimension: day_of_week_no {
    type: number
    sql: ${TABLE}.Day_Of_Week_No ;;
  }

  dimension: day_of_year {
    type: number
    sql: ${TABLE}.Day_Of_Year ;;
  }

  dimension: discount_days {
    type: number
    sql: ${TABLE}.Discount_Days ;;
  }

  dimension: discount_percent {
    type: number
    sql: ${TABLE}.Discount_Percent ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.Exchange_Rate ;;
  }

  dimension: hospital_name___business_unit {
    type: string
    sql: ${TABLE}.Hospital_Name___Business_Unit ;;
  }

  dimension: invoice_amount {
    type: number
    sql: ${TABLE}.Invoice_Amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_invoice_amount {
    type: sum
    sql: ${invoice_amount} ;;
  }

  measure: average_invoice_amount {
    type: average
    sql: ${invoice_amount} ;;
  }

  dimension: invoice_date {
    type: string
    sql: ${TABLE}.Invoice_Date ;;
  }

  dimension: invoice_date_id {
    type: number
    sql: ${TABLE}.Invoice_Date_ID ;;
  }

  dimension: invoice_date_id__invoice_ {
    type: number
    sql: ${TABLE}.InvoiceDateID__Invoice_ ;;
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.Invoice_ID ;;
  }

  dimension: invoice_loc_amount {
    type: number
    sql: ${TABLE}.Invoice_LOC_Amount ;;
  }

  dimension: invoice_number {
    type: number
    sql: ${TABLE}.Invoice_Number ;;
  }

  dimension: item {
    type: string
    sql: ${TABLE}.Item ;;
  }

  dimension: item_category {
    type: string
    sql: ${TABLE}.Item_Category ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.Item_ID ;;
  }

  dimension: item_id__item_ {
    type: number
    sql: ${TABLE}.ItemID__Item_ ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: line_item {
    type: number
    sql: ${TABLE}.Line_Item ;;
  }

  dimension: line_item_quantity {
    type: number
    sql: ${TABLE}.Line_Item_Quantity ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: location_id__location_ {
    type: number
    sql: ${TABLE}.LocationID__Location_ ;;
  }

  dimension: location_number {
    type: number
    sql: ${TABLE}.Location_Number ;;
  }

  dimension: location_region {
    type: string
    sql: ${TABLE}.Location_Region ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: mon {
    type: string
    sql: ${TABLE}.Mon ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }

  dimension: month_no {
    type: number
    sql: ${TABLE}.Month_No ;;
  }

  dimension: number_of_records {
    type: number
    sql: ${TABLE}.Number_of_Records ;;
  }

  dimension: payment_terms_days {
    type: number
    sql: ${TABLE}.Payment_Terms_Days ;;
  }

  dimension: qtr_no {
    type: number
    sql: ${TABLE}.Qtr_No ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.Quarter ;;
  }

  dimension: savings {
    type: number
    sql: ${TABLE}.Savings ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}.Supplier_Name ;;
  }

  dimension: tier {
    type: number
    sql: ${TABLE}.Tier ;;
  }

  dimension: total_spend {
    type: number
    sql: ${TABLE}.Total_Spend ;;
  }

  dimension: unit_price_loc {
    type: number
    sql: ${TABLE}.Unit_Price_LOC ;;
  }

  dimension: vendor_city {
    type: string
    sql: ${TABLE}.Vendor_City ;;
  }

  dimension: vendor_country_region {
    type: string
    sql: ${TABLE}.Vendor_Country_Region ;;
  }

  dimension: vendor_id {
    type: number
    sql: ${TABLE}.Vendor_ID ;;
  }

  dimension: vendor_id__vendor_ {
    type: number
    sql: ${TABLE}.VendorID__Vendor_ ;;
  }

  dimension: vendor_name {
    type: string
    sql: ${TABLE}.Vendor_Name ;;
  }

  dimension: vendor_postal_code {
    type: string
    sql: ${TABLE}.Vendor_Postal_Code ;;
  }

  dimension: vendor_state {
    type: string
    sql: ${TABLE}.Vendor_State ;;
  }

  dimension: week_no {
    type: number
    sql: ${TABLE}.Week_No ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [vendor_name, supplier_name]
  }
}
