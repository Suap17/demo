# The name of this view in Looker is "Spend Analysis Multiple Connections 2"
view: spend_analysis_multiple_connections_2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_analytics.spend_analysis_multiple_connections_2`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Average" in Explore.

  dimension: average {
    type: number
    sql: ${TABLE}.Average ;;
  }

  dimension: calender_year {
    type: string
    sql: ${TABLE}.Calender_Year ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.Country_Region ;;
  }

  dimension: excess_inventory {
    type: number
    sql: ${TABLE}.Excess_inventory ;;
  }

  dimension: expired_inventory {
    type: number
    sql: ${TABLE}.Expired_Inventory ;;
  }

  dimension: hospital_name1 {
    type: string
    sql: ${TABLE}.Hospital_Name1 ;;
  }

  dimension: indicator {
    type: string
    sql: ${TABLE}.Indicator ;;
  }

  dimension: inventory_turns {
    type: number
    sql: ${TABLE}.Inventory_turns ;;
  }

  dimension: inventory_value {
    type: number
    sql: ${TABLE}.Inventory_Value ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: location_number {
    type: number
    sql: ${TABLE}.Location_Number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_location_number {
    type: sum
    sql: ${location_number} ;;
  }

  measure: average_location_number {
    type: average
    sql: ${location_number} ;;
  }

  dimension: location_number__location_ {
    type: number
    sql: ${TABLE}.Location_Number__Location_ ;;
  }

  dimension: location_region {
    type: string
    sql: ${TABLE}.Location_Region ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: number_of_records {
    type: number
    sql: ${TABLE}.Number_of_Records ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.Size ;;
  }

  dimension: state1 {
    type: string
    sql: ${TABLE}.State1 ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.Value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
