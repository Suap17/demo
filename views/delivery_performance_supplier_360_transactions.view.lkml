# The name of this view in Looker is "Delivery Performance Supplier 360 Transactions"
view: delivery_performance_supplier_360_transactions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_analytics.delivery_performance_supplier_360_transactions`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Accident and Statistics" in Explore.

  dimension: accident_and_statistics {
    type: number
    sql: ${TABLE}.Accident_and_Statistics ;;
  }

  dimension: accident_and_statistics_weightage {
    type: string
    sql: ${TABLE}.Accident_and_Statistics_Weightage ;;
  }

  dimension: average_delivery_time {
    type: number
    sql: ${TABLE}.Average_Delivery_Time ;;
  }

  dimension: average_delivery_time_color_coding {
    type: string
    sql: ${TABLE}.Average_Delivery_Time_Color_coding ;;
  }

  dimension: certification_errors {
    type: number
    sql: ${TABLE}.Certification_errors ;;
  }

  dimension: certification_errors_weightage {
    type: string
    sql: ${TABLE}.Certification_errors_Weightage ;;
  }

  dimension: concession_requests {
    type: number
    sql: ${TABLE}.Concession_Requests ;;
  }

  dimension: concession_requests_weightage {
    type: string
    sql: ${TABLE}.Concession_Requests_Weightage ;;
  }

  dimension: cost {
    type: string
    sql: ${TABLE}.Cost ;;
  }

  dimension: cost_score {
    type: number
    sql: ${TABLE}.Cost_score ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cost_score {
    type: sum
    sql: ${cost_score} ;;
  }

  measure: average_cost_score {
    type: average
    sql: ${cost_score} ;;
  }

  dimension: cost_weightage {
    type: number
    sql: ${TABLE}.Cost_Weightage ;;
  }

  dimension: delivery {
    type: string
    sql: ${TABLE}.Delivery ;;
  }

  dimension: delivery_score {
    type: number
    sql: ${TABLE}.Delivery_score ;;
  }

  dimension: delivery_weightage {
    type: number
    sql: ${TABLE}.Delivery_weightage ;;
  }

  dimension: good_deliverables_weightage {
    type: string
    sql: ${TABLE}.Good_Deliverables_Weightage ;;
  }

  dimension: hse {
    type: string
    sql: ${TABLE}.HSE ;;
  }

  dimension: hse_policy {
    type: number
    sql: ${TABLE}.HSE_Policy ;;
  }

  dimension: hse_policy_weightage {
    type: string
    sql: ${TABLE}.HSE_Policy_Weightage ;;
  }

  dimension: hse_score {
    type: number
    sql: ${TABLE}.HSE_Score ;;
  }

  dimension: hse_weightage {
    type: number
    sql: ${TABLE}.HSE_Weightage ;;
  }

  dimension: individual_cost_reductions {
    type: number
    sql: ${TABLE}.Individual_Cost_Reductions ;;
  }

  dimension: individual_cost_reductions_weightage {
    type: string
    sql: ${TABLE}.Individual_Cost_Reductions_Weightage ;;
  }

  dimension: iso_14001 {
    type: number
    sql: ${TABLE}.Iso_14001 ;;
  }

  dimension: iso_14001_weightage {
    type: string
    sql: ${TABLE}.Iso_14001_Weightage ;;
  }

  dimension: iso_18001 {
    type: number
    sql: ${TABLE}.Iso_18001 ;;
  }

  dimension: iso_18001_weightage {
    type: number
    sql: ${TABLE}.Iso_18001_Weightage ;;
  }

  dimension: item {
    type: string
    sql: ${TABLE}.Item ;;
  }

  dimension: late_deliverables {
    type: number
    sql: ${TABLE}.Late_Deliverables ;;
  }

  dimension: late_deliverables_weightage {
    type: string
    sql: ${TABLE}.Late_Deliverables_Weightage ;;
  }

  dimension: late_sqcs {
    type: number
    sql: ${TABLE}.Late_SQCs ;;
  }

  dimension: late_sqcs_weightage {
    type: string
    sql: ${TABLE}.Late_SQCs_Weightage ;;
  }

  dimension: latest_shipment1 {
    type: number
    sql: ${TABLE}.Latest_shipment ;;
    value_format: "0 \" Day(s)\""
    html: <p style = "color:green; font-size: 20px"> {{rendered_value}} ;;
  }

  dimension: latest_shipment_color_coding {
    type: string
    sql: ${TABLE}.Latest_Shipment_Color_coding ;;
  }

  dimension: no_of_deliverables {
    type: number
    sql: ${TABLE}.No_of_Deliverables ;;
  }

  dimension: no_of_incidents {
    type: number
    sql: ${TABLE}.No_of_Incidents ;;
  }

  dimension: no_of_incidents_weightage {
    type: string
    sql: ${TABLE}.No_of_Incidents_Weightage ;;
  }

  dimension: no_of_orders {
    type: number
    sql: ${TABLE}.No_of_Orders ;;
  }

  dimension: number_of_records {
    type: number
    sql: ${TABLE}.Number_of_Records ;;
  }

  dimension: number_of_records1 {
    type: number
    sql: ${TABLE}.Number_of_Records1 ;;
  }

  dimension: ordered_date {
    type: string
    sql: ${TABLE}.Ordered_Date ;;
  }

  dimension: out_of_cost {
    type: number
    sql: ${TABLE}.Out_of_Cost ;;
  }

  dimension: out_of_hse {
    type: number
    sql: ${TABLE}.Out_of_HSE ;;
  }

  dimension: out_of_quality {
    type: number
    sql: ${TABLE}.Out_of_Quality ;;
  }

  dimension: price_enquiries {
    type: number
    sql: ${TABLE}.Price_Enquiries ;;
  }

  dimension: price_enquiries_weightage {
    type: string
    sql: ${TABLE}.Price_Enquiries_Weightage ;;
  }

  dimension: quality {
    type: string
    sql: ${TABLE}.Quality ;;
  }

  dimension: quality_score {
    type: number
    sql: ${TABLE}.Quality_score ;;
  }

  dimension: quality_weightage {
    type: number
    sql: ${TABLE}.Quality_Weightage ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.Quarter ;;
  }

  dimension: quicket_shippment {
    type: number
    sql: ${TABLE}.Quicket_Shippment ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.Rank ;;
  }

  dimension: rebate_reduction {
    type: number
    sql: ${TABLE}.Rebate_Reduction ;;
  }

  dimension: rebate_reduction_weightage {
    type: string
    sql: ${TABLE}.Rebate_Reduction_Weightage ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.Revenue ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.Score ;;
  }

  dimension: score_range {
    type: string
    sql: ${TABLE}.Score_Range ;;
  }

  dimension: shipped_date {
    type: string
    sql: ${TABLE}.Shipped_date ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}.Supplier ;;
  }

  dimension: supplier_cost {
    type: string
    sql: ${TABLE}.Supplier_Cost ;;
  }

  dimension: supplier_delivery {
    type: string
    sql: ${TABLE}.Supplier_Delivery ;;
  }

  dimension: supplier_hse {
    type: string
    sql: ${TABLE}.Supplier_HSE ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}.Supplier_Name ;;
  }

  dimension: supplier_quality {
    type: string
    sql: ${TABLE}.Supplier_Quality ;;
  }

  dimension: target {
    type: number
    sql: ${TABLE}.Target ;;
  }

  dimension: unspsc_code {
    type: number
    sql: ${TABLE}.UNSPSC_Code ;;
  }

  dimension: zero {
    type: number
    sql: ${TABLE}.Zero ;;
  }

  measure: count {
    type: count
    drill_fields: [supplier_name]
  }
}
