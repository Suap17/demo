# The name of this view in Looker is "Supplier Scorecard Transactions Procurement"
view: supplier_scorecard_transactions_procurement {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_analytics.supplier_scorecard_transactions_procurement`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " of Orders" in Explore.

  dimension: __of_orders {
    type: number
    sql: ${TABLE}.__of_Orders ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total___of_orders {
    type: sum
    sql: ${__of_orders} ;;
  }

  measure: average___of_orders {
    type: average
    sql: ${__of_orders} ;;
  }

  dimension: __of_orders_1 {
    type: number
    sql: ${TABLE}.__of_Orders_1 ;;
  }

  dimension: accident_and_statistics {
    type: number
    sql: ${TABLE}.Accident_and_Statistics ;;
  }

  dimension: certification_errors {
    type: number
    sql: ${TABLE}.Certification_errors ;;
  }

  dimension: concession_requests {
    type: number
    sql: ${TABLE}.Concession_Requests ;;
  }

  dimension: cost_score {
    type: string
    sql: ${TABLE}.Cost_score ;;
  }

  dimension: cost_sla {
    type: string
    sql: ${TABLE}.Cost_SLA ;;
  }

  dimension: cost_sla_1 {
    type: number
    sql: ${TABLE}.Cost_SLA_1 ;;
  }

  dimension: cost_sla___r {
    type: number
    sql: ${TABLE}.Cost_SLA___R ;;
  }

  dimension: cost_sla___r_1 {
    type: number
    sql: ${TABLE}.Cost_SLA___R_1 ;;
  }

  dimension: cost_weightage {
    type: number
    sql: ${TABLE}.Cost_Weightage ;;
  }

  dimension: delivery_score {
    type: string
    sql: ${TABLE}.Delivery_score ;;
  }

  dimension: delivery_weightage {
    type: number
    sql: ${TABLE}.Delivery_weightage ;;
  }

  dimension: hse_policy {
    type: number
    sql: ${TABLE}.HSE_Policy ;;
  }

  dimension: hse_score {
    type: string
    sql: ${TABLE}.HSE_Score ;;
  }

  dimension: hse_weightage {
    type: number
    sql: ${TABLE}.HSE_Weightage ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }

  dimension: image_1 {
    type: string
    sql: ${TABLE}.image_1 ;;
  }

  dimension: individual_cost_reductions {
    type: number
    sql: ${TABLE}.Individual_Cost_Reductions ;;
  }

  dimension: iso_14001 {
    type: number
    sql: ${TABLE}.Iso_14001 ;;
  }

  dimension: iso_18001 {
    type: number
    sql: ${TABLE}.Iso_18001 ;;
  }

  dimension: late_deliverables {
    type: number
    sql: ${TABLE}.Late_Deliverables ;;
  }

  dimension: late_sqcs {
    type: number
    sql: ${TABLE}.Late_SQCs ;;
  }

  dimension: no_of_deliverables {
    type: number
    sql: ${TABLE}.No_of_Deliverables ;;
  }

  dimension: no_of_incidents {
    type: number
    sql: ${TABLE}.No_of_Incidents ;;
  }

  dimension: number_of_records {
    type: number
    sql: ${TABLE}.Number_of_Records ;;
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

  dimension: overall_score {
    type: string
    sql: ${TABLE}.Overall_Score ;;
  }

  dimension: price_enquiries {
    type: number
    sql: ${TABLE}.Price_Enquiries ;;
  }

  dimension: purchase_amount {
    type: string
    sql: ${TABLE}.Purchase_Amount ;;
  }

  dimension: quality_score {
    type: string
    sql: ${TABLE}.Quality_Score ;;
  }

  dimension: quality_score_ {
    type: string
    sql: ${TABLE}.Quality_score_ ;;
  }

  dimension: quality_score_1 {
    type: number
    sql: ${TABLE}.Quality_Score_1 ;;
  }

  dimension: quality_weightage {
    type: number
    sql: ${TABLE}.Quality_Weightage ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.Quarter ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.Rank ;;
  }

  dimension: rank_color {
    type: yesno
    sql: ${TABLE}.Rank_Color ;;
  }

  dimension: rebate_reduction {
    type: number
    sql: ${TABLE}.Rebate_Reduction ;;
  }

  dimension: score {
    type: string
    sql: ${TABLE}.Score ;;
  }

  dimension: sla {
    type: number
    sql: ${TABLE}.SLA ;;
  }

  dimension: sla_1 {
    type: number
    sql: ${TABLE}.SLA_1 ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}.Supplier ;;
  }

  dimension: supplier_dashboard_title {
    type: string
    sql: ${TABLE}.Supplier_Dashboard_Title ;;
  }

  dimension: supplier_dashboard_title_1 {
    type: string
    sql: ${TABLE}.Supplier_Dashboard_Title_1 ;;
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
    sql: ${TABLE}.zero ;;
  }

  dimension: zero_1 {
    type: number
    sql: ${TABLE}.zero_1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
