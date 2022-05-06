# Define the database connection to be used for this model.
connection: "looker_analytics"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: demoproject_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demoproject_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Demoproject"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: waffle_waffle_migrated_data {}

explore: invoice_item {}

explore: spend_analysis_multiple_connections_2 {}

explore: delivery_performance_supplier_360_transactions {}

explore: spend_analysis_total_spend_kpi {}

explore: supplier_scorecard_transactions_procurement {}

explore: timeseries_data {}

explore: waffle_supplier_scorecard {}

explore: waffle_supplier_scorecard_1 {}

explore: waffle_template_1 {}

explore: spend_analysis_invoice_line {}

explore: spend_analysis_spend_details_invoice_line {}

explore: spend_analysis_waffles_10 {}
