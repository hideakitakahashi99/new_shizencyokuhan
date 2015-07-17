Tabulous.setup do

  tabs do

    mapus_tab do
      text          { 'Mapus' }
      link_path     { mapus_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('mapus') }
    end

    tests_tab do
      text          { 'Tests' }
      link_path     { tests_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('tests') }
    end

    calendar_tab do
      text          { 'Calendar' }
      link_path     { calendar_index_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('calendar') }
    end

    projects_tab do
      text          { 'Projects' }
      link_path     { projects_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('projects') }
    end

    staff_top_tab do
      text          { 'Staff Top' }
      link_path     { staff_root_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('staff/top') }
    end

    staff_inquiry_tab do
      text          { 'Staff Inquiry' }
      link_path     { staff_inquiry_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('staff/inquiry') }
    end

    staff_customers_tab do
      text          { 'Staff Customers' }
      link_path     { staff_customers_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('staff/customers') }
    end

    staff_staff_addresses_tab do
      text          { 'Staff Staff Addresses' }
      link_path     { staff_staff_addresses_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('staff/staff_addresses') }
    end

    staff_additional_infos_tab do
      text          { 'Staff Additional Infos' }
      link_path     { staff_additional_infos_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('staff/additional_infos') }
    end

    staff_sales_terms_tab do
      text          { 'Staff Sales Terms' }
      link_path     { staff_sales_terms_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('staff/sales_terms') }
    end

    staff_banks_tab do
      text          { 'Staff Banks' }
      link_path     { staff_banks_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('staff/banks') }
    end

    staff_orders_tab do
      text          { 'Staff Orders' }
      link_path     { staff_orders_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('staff/orders') }
    end

    staff_products_tab do
      text          { 'Staff Products' }
      link_path     { staff_products_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('staff/products') }
    end

    admin_top_tab do
      text          { 'Admin Top' }
      link_path     { admin_root_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('admin/top') }
    end

    admin_staff_events_tab do
      text          { 'Admin Staff Events' }
      link_path     { admin_staff_events_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('admin/staff_events') }
    end

    admin_staff_members_tab do
      text          { 'Admin Staff Members' }
      link_path     { admin_staff_members_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('admin/staff_members') }
    end

    customer_top_tab do
      text          { 'Customer Top' }
      link_path     { customer_root_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('customer/top') }
    end

    customer_mypages_tab do
      text          { 'Customer Mypages' }
      link_path     { customer_mypages_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('customer/mypages') }
    end

    customer_store_tab do
      text          { 'Customer Store' }
      link_path     { customer_staff_member_store_index_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('customer/store') }
    end

    customer_carts_tab do
      text          { 'Customer Carts' }
      link_path     { customer_staff_member_carts_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('customer/carts') }
    end

    customer_line_items_tab do
      text          { 'Customer Line Items' }
      link_path     { customer_staff_member_line_items_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('customer/line_items') }
    end

    customer_orders_tab do
      text          { 'Customer Orders' }
      link_path     { customer_staff_member_orders_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('customer/orders') }
    end

    customer_addresses_tab do
      text          { 'Customer Addresses' }
      link_path     { customer_staff_member_addresses_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('customer/addresses') }
    end

    customer_staff_members_tab do
      text          { 'Customer Staff Members' }
      link_path     { customer_staff_members_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('customer/staff_members') }
    end

  end

  customize do

    # which class to use to generate HTML
    # :default, :html5, :bootstrap, :bootstrap_pill or :bootstrap_navbar
    # or create your own renderer class and reference it here
    # renderer :default

    # whether to allow the active tab to be clicked
    # defaults to true
    # active_tab_clickable true

    # what to do when there is no active tab for the current controller action
    # :render -- draw the tabset, even though no tab is active
    # :do_not_render -- do not draw the tabset
    # :raise_error -- raise an error
    # defaults to :do_not_render
    # when_action_has_no_tab :do_not_render

    # whether to always add the HTML markup for subtabs, even if empty
    # defaults to false
    # render_subtabs_when_empty false

  end

  # The following will insert some CSS straight into your HTML so that you
  # can quickly prototype an app with halfway-decent looking tabs.
  #
  # This scaffolding should be turned off and replaced by your own custom
  # CSS before using tabulous in production.
  use_css_scaffolding do
    background_color '#ccc'
    text_color '#444'
    active_tab_color '#fff'
    hover_tab_color '#ddd'
    inactive_tab_color '#aaa'
    inactive_text_color '#888'
  end

end
