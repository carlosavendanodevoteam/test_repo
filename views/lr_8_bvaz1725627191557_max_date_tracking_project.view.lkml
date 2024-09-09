# The name of this view in Looker is "Lr 8 Bvaz1725627191557 Max Date Tracking Project"
view: lr_8_bvaz1725627191557_max_date_tracking_project {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker.LR_8BVAZ1725627191557_max_date_tracking_project` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: max {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.max_date ;;
  }
  measure: count {
    type: count
  }
}
