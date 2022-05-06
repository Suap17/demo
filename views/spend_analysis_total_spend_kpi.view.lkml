# The name of this view in Looker is "Spend Analysis Total Spend Kpi"
view: spend_analysis_total_spend_kpi {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_analytics.spend_analysis_total_spend_kpi`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Contract Leakage Green" in Explore.

  dimension: contract_leakage___green {
    type: number
    sql: ${TABLE}.Contract_Leakage___GREEN ;;
  }

  dimension: contract_leakage___red {
    type: number
    sql: ${TABLE}.Contract_Leakage___RED ;;
  }

  dimension: contract_leakage___yellow {
    type: number
    sql: ${TABLE}.Contract_Leakage___YELLOW ;;
  }

  dimension: contract_spend {
    type: number
    sql: ${TABLE}.Contract_Spend ;;
  }

  dimension: inv_turns {
    type: number
    sql: ${TABLE}.Inv_Turns ;;
  }

  dimension: inventory_turns___green {
    type: number
    sql: ${TABLE}.Inventory_Turns___GREEN ;;
  }

  dimension: inventory_turns___red {
    type: number
    sql: ${TABLE}.Inventory_Turns___RED ;;
  }

  dimension: inventory_turns___yellow {
    type: number
    sql: ${TABLE}.Inventory_Turns___YELLOW ;;
  }

  dimension: leakage_pct {
    type: number
    sql: ${TABLE}.Leakage_Pct ;;
  }

  dimension: number_of_records {
    type: number
    sql: ${TABLE}.Number_of_Records ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_of_records {
    type: sum
    sql: ${number_of_records} ;;
  }

  measure: average_number_of_records {
    type: average
    sql: ${number_of_records} ;;
  }

  dimension: obsolete_inventory___green {
    type: number
    sql: ${TABLE}.Obsolete_Inventory___GREEN ;;
  }

  dimension: obsolete_inventory___red {
    type: number
    sql: ${TABLE}.Obsolete_Inventory___RED ;;
  }

  dimension: obsolete_inventory___yellow {
    type: number
    sql: ${TABLE}.Obsolete_Inventory___YELLOW ;;
  }

  dimension: obsolete_pct {
    type: number
    sql: ${TABLE}.Obsolete_Pct ;;
  }

  dimension: total_spend {
    type: number
    sql: ${TABLE}.Total_Spend ;;
  }

  dimension: vendor_spend {
    type: number
    sql: ${TABLE}.Vendor_Spend ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.Year ;;
  }

  dimension: year__contract_leakage_ {
    type: string
    sql: ${TABLE}.Year__ContractLeakage_ ;;
  }

  dimension: year__contract_spend_ {
    type: string
    sql: ${TABLE}.Year__ContractSpend_ ;;
  }

  dimension: year__inv_turns_ {
    type: string
    sql: ${TABLE}.Year__InvTurns_ ;;
  }

  dimension: year__obsolete_inv_ {
    type: string
    sql: ${TABLE}.Year__ObsoleteInv_ ;;
  }

  dimension: year__vendor_spend_ {
    type: string
    sql: ${TABLE}.Year__VendorSpend_ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
