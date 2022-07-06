<!-- BEGIN Left Aside -->
<!-- Debut de SideBar-->
<aside class="page-sidebar">
    <div class="page-logo">
        <a href="#" class="page-logo-link press-scale-down d-flex align-items-center position-relative" data-toggle="modal" data-target="#modal-shortcut">
            <img src="{{asset('template/assets/img/logo.png') }}" alt="SmartAdmin WebApp" aria-roledescription="logo">
            <span class="page-logo-text mr-1">SmartAdmin WebApp</span>
            <span class="position-absolute text-white opacity-50 small pos-top pos-right mr-2 mt-n2"></span>
            <i class="fal fa-angle-down d-inline-block ml-1 fs-lg color-primary-300"></i>
        </a>
    </div>
    <!-- BEGIN PRIMARY NAVIGATION -->
    <nav id="js-primary-nav" class="primary-nav" role="navigation">
        <div class="nav-filter">
            <div class="position-relative">
                <input type="text" id="nav_filter_input" placeholder="Filter menu" class="form-control" tabindex="0">
                <a href="#" onclick="return false;" class="btn-primary btn-search-close js-waves-off" data-action="toggle" data-class="list-filter-active" data-target=".page-sidebar">
                    <i class="fal fa-chevron-up"></i>
                </a>
            </div>
        </div>
        <div class="info-card">
            <img src="{{asset('template/assets/img/demo/avatars/avatar-admin.png') }}" class="profile-image rounded-circle" alt="Dr. Codex Lantern">
            <div class="info-card-text">
                <a href="#" class="d-flex align-items-center text-white">
                                    <span class="text-truncate text-truncate-sm d-inline-block">
                                        Dr. Codex Lantern
                                    </span>
                </a>
                <span class="d-inline-block text-truncate text-truncate-sm">Toronto, Canada</span>
            </div>
            <img src="{{asset('template/assets/img/card-backgrounds/cover-2-lg.png') }}" class="cover" alt="cover">
            <a href="#" onclick="return false;" class="pull-trigger-btn" data-action="toggle" data-class="list-filter-active" data-target=".page-sidebar" data-focus="nav_filter_input">
                <i class="fal fa-angle-down"></i>
            </a>
        </div>
        <ul id="js-nav-menu" class="nav-menu">

            <li class="nav-title">Gestion</li>
            <li>
                <a href="#" title="Plugins" data-filter-tags="plugins">
                    <i class="fal fa-shield-alt"></i>
                    <span class="nav-link-text" data-i18n="nav.plugins">Tableau de Bords</span>
                </a>
            </li>
            <li>
                <a href="#" title="UI Components" data-filter-tags="ui components">
                    <i class="fal fa-window"></i>
                    <span class="nav-link-text" data-i18n="nav.ui_components">Type d'Informatons</span>
                </a>
                <ul>
                    <li>
                        <a href="ui_alerts.html" title="Alerts" data-filter-tags="ui components alerts">
                            <span class="nav-link-text" data-i18n="nav.ui_components_alerts">Alerts</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_accordion.html" title="Accordions" data-filter-tags="ui components accordions">
                            <span class="nav-link-text" data-i18n="nav.ui_components_accordions">Accordions</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_badges.html" title="Badges" data-filter-tags="ui components badges">
                            <span class="nav-link-text" data-i18n="nav.ui_components_badges">Badges</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_breadcrumbs.html" title="Breadcrumbs" data-filter-tags="ui components breadcrumbs">
                            <span class="nav-link-text" data-i18n="nav.ui_components_breadcrumbs">Breadcrumbs</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_buttons.html" title="Buttons" data-filter-tags="ui components buttons">
                            <span class="nav-link-text" data-i18n="nav.ui_components_buttons">Buttons</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_button_group.html" title="Button Group" data-filter-tags="ui components button group">
                            <span class="nav-link-text" data-i18n="nav.ui_components_button_group">Button Group</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_cards.html" title="Cards" data-filter-tags="ui components cards">
                            <span class="nav-link-text" data-i18n="nav.ui_components_cards">Cards</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_carousel.html" title="Carousel" data-filter-tags="ui components carousel">
                            <span class="nav-link-text" data-i18n="nav.ui_components_carousel">Carousel</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_collapse.html" title="Collapse" data-filter-tags="ui components collapse">
                            <span class="nav-link-text" data-i18n="nav.ui_components_collapse">Collapse</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_dropdowns.html" title="Dropdowns" data-filter-tags="ui components dropdowns">
                            <span class="nav-link-text" data-i18n="nav.ui_components_dropdowns">Dropdowns</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_list_filter.html" title="List Filter" data-filter-tags="ui components list filter">
                            <span class="nav-link-text" data-i18n="nav.ui_components_list_filter">List Filter</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_modal.html" title="Modal" data-filter-tags="ui components modal">
                            <span class="nav-link-text" data-i18n="nav.ui_components_modal">Modal</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_navbars.html" title="Navbars" data-filter-tags="ui components navbars">
                            <span class="nav-link-text" data-i18n="nav.ui_components_navbars">Navbars</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_panels.html" title="Panels" data-filter-tags="ui components panels">
                            <span class="nav-link-text" data-i18n="nav.ui_components_panels">Panels</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_pagination.html" title="Pagination" data-filter-tags="ui components pagination">
                            <span class="nav-link-text" data-i18n="nav.ui_components_pagination">Pagination</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_popovers.html" title="Popovers" data-filter-tags="ui components popovers">
                            <span class="nav-link-text" data-i18n="nav.ui_components_popovers">Popovers</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_progress_bars.html" title="Progress Bars" data-filter-tags="ui components progress bars">
                            <span class="nav-link-text" data-i18n="nav.ui_components_progress_bars">Progress Bars</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_scrollspy.html" title="ScrollSpy" data-filter-tags="ui components scrollspy">
                            <span class="nav-link-text" data-i18n="nav.ui_components_scrollspy">ScrollSpy</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_side_panel.html" title="Side Panel" data-filter-tags="ui components side panel">
                            <span class="nav-link-text" data-i18n="nav.ui_components_side_panel">Side Panel</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_spinners.html" title="Spinners" data-filter-tags="ui components spinners">
                            <span class="nav-link-text" data-i18n="nav.ui_components_spinners">Spinners</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_tabs_pills.html" title="Tabs & Pills" data-filter-tags="ui components tabs & pills">
                            <span class="nav-link-text" data-i18n="nav.ui_components_tabs_&_pills">Tabs & Pills</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_toasts.html" title="Toasts" data-filter-tags="ui components toasts">
                            <span class="nav-link-text" data-i18n="nav.ui_components_toasts">Toasts</span>
                        </a>
                    </li>
                    <li>
                        <a href="ui_tooltips.html" title="Tooltips" data-filter-tags="ui components tooltips">
                            <span class="nav-link-text" data-i18n="nav.ui_components_tooltips">Tooltips</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#" title="Utilities" data-filter-tags="utilities">
                    <i class="fal fa-bolt"></i>
                    <span class="nav-link-text" data-i18n="nav.utilities">Informations</span>
                </a>
                <ul>
                    <li>
                        <a href="utilities_borders.html" title="Borders" data-filter-tags="utilities borders">
                            <span class="nav-link-text" data-i18n="nav.utilities_borders">Borders</span>
                        </a>
                    </li>
                    <li>
                        <a href="utilities_clearfix.html" title="Clearfix" data-filter-tags="utilities clearfix">
                            <span class="nav-link-text" data-i18n="nav.utilities_clearfix">Clearfix</span>
                        </a>
                    </li>
                    <li>
                        <a href="utilities_color_pallet.html" title="Color Pallet" data-filter-tags="utilities color pallet">
                            <span class="nav-link-text" data-i18n="nav.utilities_color_pallet">Color Pallet</span>
                        </a>
                    </li>
                    <li>
                        <a href="utilities_display_property.html" title="Display Property" data-filter-tags="utilities display property">
                            <span class="nav-link-text" data-i18n="nav.utilities_display_property">Display Property</span>
                        </a>
                    </li>
                    <li>
                        <a href="utilities_fonts.html" title="Fonts" data-filter-tags="utilities fonts">
                            <span class="nav-link-text" data-i18n="nav.utilities_fonts">Fonts</span>
                        </a>
                    </li>
                    <li>
                        <a href="utilities_flexbox.html" title="Flexbox" data-filter-tags="utilities flexbox">
                            <span class="nav-link-text" data-i18n="nav.utilities_flexbox">Flexbox</span>
                        </a>
                    </li>
                    <li>
                        <a href="utilities_helpers.html" title="Helpers" data-filter-tags="utilities helpers">
                            <span class="nav-link-text" data-i18n="nav.utilities_helpers">Helpers</span>
                        </a>
                    </li>
                    <li>
                        <a href="utilities_position.html" title="Position" data-filter-tags="utilities position">
                            <span class="nav-link-text" data-i18n="nav.utilities_position">Position</span>
                        </a>
                    </li>
                    <li>
                        <a href="utilities_responsive_grid.html" title="Responsive Grid" data-filter-tags="utilities responsive grid">
                            <span class="nav-link-text" data-i18n="nav.utilities_responsive_grid">Responsive Grid</span>
                        </a>
                    </li>
                    <li>
                        <a href="utilities_sizing.html" title="Sizing" data-filter-tags="utilities sizing">
                            <span class="nav-link-text" data-i18n="nav.utilities_sizing">Sizing</span>
                        </a>
                    </li>
                    <li>
                        <a href="utilities_spacing.html" title="Spacing" data-filter-tags="utilities spacing">
                            <span class="nav-link-text" data-i18n="nav.utilities_spacing">Spacing</span>
                        </a>
                    </li>
                    <li>
                        <a href="utilities_typography.html" title="Typography" data-filter-tags="utilities typography fonts headings bold lead colors sizes link text states list styles truncate alignment">
                            <span class="nav-link-text" data-i18n="nav.utilities_typography">Typography</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" title="Menu child" data-filter-tags="utilities menu child">
                            <span class="nav-link-text" data-i18n="nav.utilities_menu_child">Menu child</span>
                        </a>
                        <ul>
                            <li>
                                <a href="javascript:void(0);" title="Sublevel Item" data-filter-tags="utilities menu child sublevel item">
                                    <span class="nav-link-text" data-i18n="nav.utilities_menu_child_sublevel_item">Sublevel Item</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" title="Another Item" data-filter-tags="utilities menu child another item">
                                    <span class="nav-link-text" data-i18n="nav.utilities_menu_child_another_item">Another Item</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="disabled">
                        <a href="javascript:void(0);" title="Disabled item" data-filter-tags="utilities disabled item">
                            <span class="nav-link-text" data-i18n="nav.utilities_disabled_item">Disabled item</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#" title="Font Icons" data-filter-tags="font icons">
                    <i class="fal fa-map-marker-alt"></i>
                    <span class="nav-link-text" data-i18n="nav.font_icons">Propostions d'idées</span>
                    <span class="dl-ref bg-primary-500 hidden-nav-function-minify hidden-nav-function-top">+9</span>
                </a>
                <ul>
                    <li>
                        <a href="javascript:void(0);" title="FontAwesome" data-filter-tags="font icons fontawesome">
                            <span class="nav-link-text" data-i18n="nav.font_icons_fontawesome">FontAwesome Pro</span>
                        </a>
                        <ul>
                            <li>
                                <a href="icons_fontawesome_light.html" title="Light" data-filter-tags="font icons fontawesome light">
                                    <span class="nav-link-text" data-i18n="nav.font_icons_fontawesome_light">Light</span>
                                </a>
                            </li>
                            <li>
                                <a href="icons_fontawesome_regular.html" title="Regular" data-filter-tags="font icons fontawesome regular">
                                    <span class="nav-link-text" data-i18n="nav.font_icons_fontawesome_regular">Regular</span>
                                </a>
                            </li>
                            <li>
                                <a href="icons_fontawesome_solid.html" title="Solid" data-filter-tags="font icons fontawesome solid">
                                    <span class="nav-link-text" data-i18n="nav.font_icons_fontawesome_solid">Solid</span>
                                </a>
                            </li>
                            <li>
                                <a href="icons_fontawesome_brand.html" title="Brand" data-filter-tags="font icons fontawesome brand">
                                    <span class="nav-link-text" data-i18n="nav.font_icons_fontawesome_brand">Brand</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" title="NextGen Icons" data-filter-tags="font icons nextgen icons">
                            <span class="nav-link-text" data-i18n="nav.font_icons_nextgen_icons">NextGen Icons</span>
                        </a>
                        <ul>
                            <li>
                                <a href="icons_nextgen_general.html" title="General" data-filter-tags="font icons nextgen icons general">
                                    <span class="nav-link-text" data-i18n="nav.font_icons_nextgen_icons_general">General</span>
                                </a>
                            </li>
                            <li>
                                <a href="icons_nextgen_base.html" title="Base" data-filter-tags="font icons nextgen icons base">
                                    <span class="nav-link-text" data-i18n="nav.font_icons_nextgen_icons_base">Base</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" title="Stack Icons" data-filter-tags="font icons stack icons">
                            <span class="nav-link-text" data-i18n="nav.font_icons_stack_icons">Stack Icons</span>
                        </a>
                        <ul>
                            <li>
                                <a href="icons_stack_showcase.html" title="Showcase" data-filter-tags="font icons stack icons showcase">
                                    <span class="nav-link-text" data-i18n="nav.font_icons_stack_icons_showcase">Showcase</span>
                                </a>
                            </li>
                            <li>
                                <a href="icons_stack_generate.html?layers=3" title="Generate Stack" data-filter-tags="font icons stack icons generate stack">
                                    <span class="nav-link-text" data-i18n="nav.font_icons_stack_icons_generate_stack">Generate Stack</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#" title="Tables" data-filter-tags="tables">
                    <i class="fal fa-th-list"></i>
                    <span class="nav-link-text" data-i18n="nav.tables">Domaines</span>
                </a>
                <ul>
                    <li>
                        <a href="tables_basic.html" title="Basic Tables" data-filter-tags="tables basic tables">
                            <span class="nav-link-text" data-i18n="nav.tables_basic_tables">Basic Tables</span>
                        </a>
                    </li>
                    <li>
                        <a href="tables_generate_style.html" title="Generate Table Style" data-filter-tags="tables generate table style">
                            <span class="nav-link-text" data-i18n="nav.tables_generate_table_style">Generate Table Style</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#" title="Form Stuff" data-filter-tags="form stuff">
                    <i class="fal fa-edit"></i>
                    <span class="nav-link-text" data-i18n="nav.form_stuff">Réagir</span>
                </a>
                <ul>
                    <li>
                        <a href="form_basic_inputs.html" title="Basic Inputs" data-filter-tags="form stuff basic inputs">
                            <span class="nav-link-text" data-i18n="nav.form_stuff_basic_inputs">Basic Inputs</span>
                        </a>
                    </li>
                    <li>
                        <a href="form_checkbox_radio.html" title="Checkbox & Radio" data-filter-tags="form stuff checkbox & radio">
                            <span class="nav-link-text" data-i18n="nav.form_stuff_checkbox_&_radio">Checkbox & Radio</span>
                        </a>
                    </li>
                    <li>
                        <a href="form_input_groups.html" title="Input Groups" data-filter-tags="form stuff input groups">
                            <span class="nav-link-text" data-i18n="nav.form_stuff_input_groups">Input Groups</span>
                        </a>
                    </li>
                    <li>
                        <a href="form_validation.html" title="Validation" data-filter-tags="form stuff validation">
                            <span class="nav-link-text" data-i18n="nav.form_stuff_validation">Validation</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-title">Outils</li>
            <li>
                <a href="#" title="Plugins" data-filter-tags="plugins">
                    <i class="fal fa-shield-alt"></i>
                    <span class="nav-link-text" data-i18n="nav.plugins">Core Plugins</span>
                </a>
                <ul>
                    <li>
                        <a href="plugin_faq.html" title="Plugins FAQ" data-filter-tags="plugins plugins faq">
                            <span class="nav-link-text" data-i18n="nav.plugins_plugins_faq">Plugins FAQ</span>
                        </a>
                    </li>
                    <li>
                        <a href="plugin_waves.html" title="Waves" data-filter-tags="plugins waves">
                            <span class="nav-link-text" data-i18n="nav.plugins_waves">Waves</span>
                            <span class="dl-ref label bg-primary-400 ml-2">9 KB</span>
                        </a>
                    </li>
                    <li>
                        <a href="plugin_pacejs.html" title="PaceJS" data-filter-tags="plugins pacejs">
                            <span class="nav-link-text" data-i18n="nav.plugins_pacejs">PaceJS</span>
                            <span class="dl-ref label bg-primary-500 ml-2">13 KB</span>
                        </a>
                    </li>
                    <li>
                        <a href="plugin_smartpanels.html" title="SmartPanels" data-filter-tags="plugins smartpanels">
                            <span class="nav-link-text" data-i18n="nav.plugins_smartpanels">SmartPanels</span>
                            <span class="dl-ref label bg-primary-600 ml-2">9 KB</span>
                        </a>
                    </li>
                    <li>
                        <a href="plugin_bootbox.html" title="BootBox" data-filter-tags="plugins bootbox alert sound">
                            <span class="nav-link-text" data-i18n="nav.plugins_bootbox">BootBox</span>
                            <span class="dl-ref label bg-primary-600 ml-2">15 KB</span>
                        </a>
                    </li>
                    <li>
                        <a href="plugin_slimscroll.html" title="Slimscroll" data-filter-tags="plugins slimscroll">
                            <span class="nav-link-text" data-i18n="nav.plugins_slimscroll">Slimscroll</span>
                            <span class="dl-ref label bg-primary-700 ml-2">5 KB</span>
                        </a>
                    </li>
                    <li>
                        <a href="plugin_throttle.html" title="Throttle" data-filter-tags="plugins throttle">
                            <span class="nav-link-text" data-i18n="nav.plugins_throttle">Throttle</span>
                            <span class="dl-ref label bg-primary-700 ml-2">1 KB</span>
                        </a>
                    </li>
                    <li>
                        <a href="plugin_navigation.html" title="Navigation" data-filter-tags="plugins navigation">
                            <span class="nav-link-text" data-i18n="nav.plugins_navigation">Navigation</span>
                            <span class="dl-ref label bg-primary-700 ml-2">2 KB</span>
                        </a>
                    </li>
                    <li>
                        <a href="plugin_i18next.html" title="i18next" data-filter-tags="plugins i18next">
                            <span class="nav-link-text" data-i18n="nav.plugins_i18next">i18next</span>
                            <span class="dl-ref label bg-primary-700 ml-2">10 KB</span>
                        </a>
                    </li>
                    <li>
                        <a href="plugin_appcore.html" title="App.Core" data-filter-tags="plugins app.core">
                            <span class="nav-link-text" data-i18n="nav.plugins_app.core">App.Core</span>
                            <span class="dl-ref label bg-success-700 ml-2">14 KB</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#" title="Datatables" data-filter-tags="datatables datagrid">
                    <i class="fal fa-table"></i>
                    <span class="nav-link-text" data-i18n="nav.datatables">Datatables</span>
                    <span class="dl-ref bg-primary-500 hidden-nav-function-minify hidden-nav-function-top">235 KB</span>
                </a>
                <ul>
                    <li>
                        <a href="datatables_basic.html" title="Basic" data-filter-tags="datatables datagrid basic">
                            <span class="nav-link-text" data-i18n="nav.datatables_basic">Basic</span>
                        </a>
                    </li>
                    <li>
                        <a href="datatables_autofill.html" title="Autofill" data-filter-tags="datatables datagrid autofill">
                            <span class="nav-link-text" data-i18n="nav.datatables_autofill">Autofill</span>
                        </a>
                    </li>
                    <li>
                        <a href="datatables_buttons.html" title="Buttons" data-filter-tags="datatables datagrid buttons">
                            <span class="nav-link-text" data-i18n="nav.datatables_buttons">Buttons</span>
                        </a>
                    </li>
                    <li>
                        <a href="datatables_export.html" title="Export" data-filter-tags="datatables datagrid export tables pdf excel print csv">
                            <span class="nav-link-text" data-i18n="nav.datatables_export">Export</span>
                        </a>
                    </li>
                    <li>
                        <a href="datatables_colreorder.html" title="ColReorder" data-filter-tags="datatables datagrid colreorder">
                            <span class="nav-link-text" data-i18n="nav.datatables_colreorder">ColReorder</span>
                        </a>
                    </li>
                    <li>
                        <a href="datatables_columnfilter.html" title="ColumnFilter" data-filter-tags="datatables datagrid columnfilter">
                            <span class="nav-link-text" data-i18n="nav.datatables_columnfilter">ColumnFilter</span>
                        </a>
                    </li>
                    <li>
                        <a href="datatables_fixedcolumns.html" title="FixedColumns" data-filter-tags="datatables datagrid fixedcolumns">
                            <span class="nav-link-text" data-i18n="nav.datatables_fixedcolumns">FixedColumns</span>
                        </a>
                    </li>
                    <li>
                        <a href="datatables_fixedheader.html" title="FixedHeader" data-filter-tags="datatables datagrid fixedheader">
                            <span class="nav-link-text" data-i18n="nav.datatables_fixedheader">FixedHeader</span>
                        </a>
                    </li>
                    <li>
                        <a href="datatables_keytable.html" title="KeyTable" data-filter-tags="datatables datagrid keytable">
                            <span class="nav-link-text" data-i18n="nav.datatables_keytable">KeyTable</span>
                        </a>
                    </li>
                    <li>
                        <a href="datatables_responsive.html" title="Responsive" data-filter-tags="datatables datagrid responsive">
                            <span class="nav-link-text" data-i18n="nav.datatables_responsive">Responsive</span>
                        </a>
                    </li>
                    <li>
                        <a href="datatables_responsive_alt.html" title="Responsive Alt" data-filter-tags="datatables datagrid responsive alt">
                            <span class="nav-link-text" data-i18n="nav.datatables_responsive_alt">Responsive Alt</span>
                        </a>
                    </li>
                    <li>
                        <a href="datatables_rowgroup.html" title="RowGroup" data-filter-tags="datatables datagrid rowgroup">
                            <span class="nav-link-text" data-i18n="nav.datatables_rowgroup">RowGroup</span>
                        </a>
                    </li>
                    <li>
                        <a href="datatables_rowreorder.html" title="RowReorder" data-filter-tags="datatables datagrid rowreorder">
                            <span class="nav-link-text" data-i18n="nav.datatables_rowreorder">RowReorder</span>
                        </a>
                    </li>
                    <li>
                        <a href="datatables_scroller.html" title="Scroller" data-filter-tags="datatables datagrid scroller">
                            <span class="nav-link-text" data-i18n="nav.datatables_scroller">Scroller</span>
                        </a>
                    </li>
                    <li>
                        <a href="datatables_select.html" title="Select" data-filter-tags="datatables datagrid select">
                            <span class="nav-link-text" data-i18n="nav.datatables_select">Select</span>
                        </a>
                    </li>
                    <li>
                        <a href="datatables_alteditor.html" title="AltEditor" data-filter-tags="datatables datagrid alteditor">
                            <span class="nav-link-text" data-i18n="nav.datatables_alteditor">AltEditor</span>
                        </a>
                    </li>
                </ul>
            </li>


        </ul>
        <div class="filter-message js-filter-message bg-success-600"></div>
    </nav>
    <!-- END PRIMARY NAVIGATION -->
    <!-- NAV FOOTER -->
    <div class="nav-footer shadow-top">
        <a href="#" onclick="return false;" data-action="toggle" data-class="nav-function-minify" class="hidden-md-down">
            <i class="ni ni-chevron-right"></i>
            <i class="ni ni-chevron-right"></i>
        </a>
        <ul class="list-table m-auto nav-footer-buttons">
            <li>
                <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Chat logs">
                    <i class="fal fa-comments"></i>
                </a>
            </li>
            <li>
                <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Support Chat">
                    <i class="fal fa-life-ring"></i>
                </a>
            </li>
            <li>
                <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Make a call">
                    <i class="fal fa-phone"></i>
                </a>
            </li>
        </ul>
    </div> <!-- END NAV FOOTER -->
</aside>
<!-- Fin de SideBar-->
<!-- END Left Aside -->
