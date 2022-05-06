# The name of this view in Looker is "Waffle Template 1"
view: waffle_template_1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_analytics.waffle_template_1`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Number of Records" in Explore.

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

  dimension: total_spend {
    type: number
    sql: ${TABLE}.TotalSpend ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
