# The name of this view in Looker is "Lr 8 Bmhl1725627156030 Siglo"
view: lr_8_bmhl1725627156030_siglo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker.LR_8BMHL1725627156030_siglo` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Average Order Revenue" in Explore.

  dimension: average_order_revenue {
    type: number
    sql: ${TABLE}.average_order_revenue ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_average_order_revenue {
    type: sum
    sql: ${average_order_revenue} ;;  }
  measure: average_average_order_revenue {
    type: average
    sql: ${average_order_revenue} ;;  }

  dimension: order_count {
    type: number
    sql: ${TABLE}.order_count ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_item_count {
    type: number
    sql: ${TABLE}.order_item_count ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [users.last_name, users.id, users.first_name, orders.order_id]
  }
}
