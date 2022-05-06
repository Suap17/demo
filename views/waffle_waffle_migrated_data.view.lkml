# The name of this view in Looker is "Waffle Waffle Migrated Data"
view: waffle_waffle_migrated_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_analytics.Waffle_Waffle_Migrated Data`
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

  dimension: cost_sla {
    type: string
    sql: ${TABLE}.Cost_SLA ;;
  }

  dimension: cost_sla_validation {
    type: yesno
    sql: ${TABLE}.Cost_SLA_Validation ;;
  }

  dimension: delivery_sla {
    type: string
    sql: ${TABLE}.Delivery_SLA ;;
  }

  dimension: delivery_sla_validation {
    type: yesno
    sql: ${TABLE}.Delivery_SLA_Validation ;;
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

  dimension: quality_sla {
    type: string
    sql: ${TABLE}.Quality_SLA ;;
  }

  dimension: quality_sla_validation {
    type: yesno
    sql: ${TABLE}.Quality_SLA_Validation ;;
  }

  dimension: ratio {
    type: string
    sql: ${TABLE}.Ratio ;;
  }

  dimension: row {
    type: number
    sql: ${TABLE}.Row ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
