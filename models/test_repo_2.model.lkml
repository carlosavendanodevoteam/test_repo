# Define the database connection to be used for this model.
connection: "carlos-looker-training"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: test_repo_2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_repo_2_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Test Repo 2"

explore: lr_8_bdes1725627130479_user_order_summary {
  join: users {
    type: left_outer 
    sql_on: ${lr_8_bdes1725627130479_user_order_summary.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: lr_8_b34_c1725627173356_open_data_main {}

explore: lr_8_b81_w1725613253852_max_date_covid {}

explore: lr_8_bhw81725670499917_italy_province {}

explore: lr_8_bb731725626768187_kpis_by_county_by_date {}

explore: lr_8_bjrr1725670508691_italy_regions {}

explore: lr_8_b2_xq1725627170096_italy_region_stats {}

explore: lr_8_bclv1725613253877_population_by_county_state_country {}

explore: lr_8_blx31725626769041_nyt_data {}

explore: lr_8_bmhl1725627156030_siglo {
  join: users {
    type: left_outer 
    sql_on: ${lr_8_bmhl1725627156030_siglo.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer 
    sql_on: ${lr_8_bmhl1725627156030_siglo.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }
}

explore: lr_8_bnvr1725627124417_hospital_bed_summary {}

explore: lr_8_bv4_m1725627121278_italy_province_stats {}

explore: lr_8_bvaz1725627191557_max_date_tracking_project {}

explore: lr_8_bs5_t1725626848289_kpis_by_country_by_date {}

explore: lr_8_bvpn1725613254119_prior_days_cases_covid {}

explore: lr_8_bxb71725613253754_covid_tracking_project {}

explore: connection_reg_r3 {}

explore: lr_8_bxku1725613253699_covid_combined {}

explore: distribution_centers {}

explore: events {
  join: users {
    type: left_outer 
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: inventory_items {
  join: products {
    type: left_outer 
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: distribution_centers {
    type: left_outer 
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: order_items {
  join: users {
    type: left_outer 
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer 
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer 
    sql_on: ${order_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer 
    sql_on: ${order_items.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: distribution_centers {
    type: left_outer 
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: users {
    type: left_outer 
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: products {
  join: distribution_centers {
    type: left_outer 
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: users {}

explore: viewbq {}

