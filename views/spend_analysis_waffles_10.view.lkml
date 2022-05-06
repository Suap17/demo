# The name of this view in Looker is "Spend Analysis Waffles 10"
view: spend_analysis_waffles_10 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_analytics.spend_analysis_waffles_10`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Column" in Explore.

  dimension: column {
    type: number
    sql: ${TABLE}.Column ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_column {
    type: sum
    sql: ${column} ;;
  }

  measure: average_column {
    type: average
    sql: ${column} ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.Percentage ;;
  }

  dimension: q1 {
    type: number
    sql: ${TABLE}.Q1 ;;
  }

  dimension: q2 {
    type: number
    sql: ${TABLE}.Q2 ;;
  }

  dimension: q3 {
    type: number
    sql: ${TABLE}.Q3 ;;
  }

  dimension: q4 {
    type: number
    sql: ${TABLE}.Q4 ;;
  }

  dimension: row {
    type: number
    sql: ${TABLE}.Row ;;
  }

  dimension: total_spend {
    type: number
    sql: ${TABLE}.Total_Spend ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
