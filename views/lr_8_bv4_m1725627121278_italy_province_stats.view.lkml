# The name of this view in Looker is "Lr 8 Bv4 M1725627121278 Italy Province Stats"
view: lr_8_bv4_m1725627121278_italy_province_stats {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker.LR_8BV4M1725627121278_italy_province_stats` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Area Km2" in Explore.

  dimension: area_km2 {
    type: number
    sql: ${TABLE}.area_km2 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_area_km2 {
    type: sum
    sql: ${area_km2} ;;  }
  measure: average_area_km2 {
    type: average
    sql: ${area_km2} ;;  }

  dimension: denominazione_provincia {
    type: string
    sql: ${TABLE}.denominazione_provincia ;;
  }

  dimension: popolazione {
    type: number
    sql: ${TABLE}.popolazione ;;
  }

  dimension: sigla_provincia {
    type: string
    sql: ${TABLE}.sigla_provincia ;;
  }
  measure: count {
    type: count
  }
}
