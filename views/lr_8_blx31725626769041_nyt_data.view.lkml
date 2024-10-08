# The name of this view in Looker is "Lr 8 Blx31725626769041 Nyt Data"
view: lr_8_blx31725626769041_nyt_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker.LR_8BLX31725626769041_nyt_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Confirmed Cases" in Explore.

  dimension: confirmed_cases {
    type: number
    sql: ${TABLE}.confirmed_cases ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_confirmed_cases {
    type: sum
    sql: ${confirmed_cases} ;;  }
  measure: average_confirmed_cases {
    type: average
    sql: ${confirmed_cases} ;;  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: deaths {
    type: number
    sql: ${TABLE}.deaths ;;
  }

  dimension: fips {
    type: number
    sql: ${TABLE}.fips ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }
  measure: count {
    type: count
    drill_fields: [state_name]
  }
}
