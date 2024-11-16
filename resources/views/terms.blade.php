<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="shortcut icon" href="{{asset($baseUrl.'/uploads/'.$settingsData['websiteLogo'])}}" type="image/x-icon"
        sizes="32x32">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <title>{{$settingsData['websiteName']}}</title>
    <meta name="robots" content="max-image-preview:large">

    <link rel="stylesheet" id="elementor-frontend-css" href="./homeassets/frontend-lite.min.css" media="all">
    <link rel="stylesheet" id="elementor-post-6-css" href="./homeassets/post-6.css" media="all">
    <link rel="stylesheet" id="elementor-post-174-css" href="./homeassets/post-174.css" media="all">
    <link rel="stylesheet" id="astra-theme-css-css" href="./homeassets/main.min.css" media="all">
    <style id="astra-theme-css-inline-css">
    :root {
        --ast-post-nav-space: 0;
        --ast-container-default-xlg-padding: 2.5em;
        --ast-container-default-lg-padding: 2.5em;
        --ast-container-default-slg-padding: 2em;
        --ast-container-default-md-padding: 2.5em;
        --ast-container-default-sm-padding: 2.5em;
        --ast-container-default-xs-padding: 2.4em;
        --ast-container-default-xxs-padding: 1.8em;
        --ast-code-block-background: #ECEFF3;
        --ast-comment-inputs-background: #F9FAFB;
        --ast-normal-container-width: 1200px;
        --ast-narrow-container-width: 750px;
        --ast-blog-title-font-weight: 600;
        --ast-blog-meta-weight: 600;
    }

    html {
        font-size: 100%;
    }

    a {
        color: var(--ast-global-color-0);
    }

    a:hover,
    a:focus {
        color: var(--ast-global-color-1);
    }

    body,
    button,
    input,
    select,
    textarea,
    .ast-button,
    .ast-custom-button {
        font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen-Sans, Ubuntu, Cantarell, Helvetica Neue, sans-serif;
        font-weight: 400;
        font-size: 16px;
        font-size: 1rem;
        line-height: var(--ast-body-line-height, 1.65);
    }

    blockquote {
        color: var(--ast-global-color-3);
    }

    h1,
    .entry-content h1,
    h2,
    .entry-content h2,
    h3,
    .entry-content h3,
    h4,
    .entry-content h4,
    h5,
    .entry-content h5,
    h6,
    .entry-content h6,
    .site-title,
    .site-title a {
        font-weight: 600;
    }

    .site-title {
        font-size: 26px;
        font-size: 1.625rem;
        display: block;
    }

    .site-header .site-description {
        font-size: 15px;
        font-size: 0.9375rem;
        display: none;
    }

    .entry-title {
        font-size: 20px;
        font-size: 1.25rem;
    }

    .ast-blog-single-element.ast-taxonomy-container a {
        font-size: 14px;
        font-size: 0.875rem;
    }

    .ast-blog-meta-container {
        font-size: 13px;
        font-size: 0.8125rem;
    }

    .archive .ast-article-post .ast-article-inner,
    .blog .ast-article-post .ast-article-inner,
    .archive .ast-article-post .ast-article-inner:hover,
    .blog .ast-article-post .ast-article-inner:hover {
        border-top-left-radius: 6px;
        border-top-right-radius: 6px;
        border-bottom-right-radius: 6px;
        border-bottom-left-radius: 6px;
        overflow: hidden;
    }

    h1,
    .entry-content h1 {
        font-size: 36px;
        font-size: 2.25rem;
        font-weight: 600;
        line-height: 1.4em;
    }

    h2,
    .entry-content h2 {
        font-size: 30px;
        font-size: 1.875rem;
        font-weight: 600;
        line-height: 1.3em;
    }

    h3,
    .entry-content h3 {
        font-size: 24px;
        font-size: 1.5rem;
        font-weight: 600;
        line-height: 1.3em;
    }

    h4,
    .entry-content h4 {
        font-size: 20px;
        font-size: 1.25rem;
        line-height: 1.2em;
        font-weight: 600;
    }

    h5,
    .entry-content h5 {
        font-size: 18px;
        font-size: 1.125rem;
        line-height: 1.2em;
        font-weight: 600;
    }

    h6,
    .entry-content h6 {
        font-size: 16px;
        font-size: 1rem;
        line-height: 1.25em;
        font-weight: 600;
    }

    ::selection {
        background-color: var(--ast-global-color-0);
        color: #ffffff;
    }

    body,
    h1,
    .entry-title a,
    .entry-content h1,
    h2,
    .entry-content h2,
    h3,
    .entry-content h3,
    h4,
    .entry-content h4,
    h5,
    .entry-content h5,
    h6,
    .entry-content h6 {
        color: var(--ast-global-color-3);
    }

    .tagcloud a:hover,
    .tagcloud a:focus,
    .tagcloud a.current-item {
        color: #ffffff;
        border-color: var(--ast-global-color-0);
        background-color: var(--ast-global-color-0);
    }

    input:focus,
    input[type="text"]:focus,
    input[type="email"]:focus,
    input[type="url"]:focus,
    input[type="password"]:focus,
    input[type="reset"]:focus,
    input[type="search"]:focus,
    textarea:focus {
        border-color: var(--ast-global-color-0);
    }

    input[type="radio"]:checked,
    input[type=reset],
    input[type="checkbox"]:checked,
    input[type="checkbox"]:hover:checked,
    input[type="checkbox"]:focus:checked,
    input[type=range]::-webkit-slider-thumb {
        border-color: var(--ast-global-color-0);
        background-color: var(--ast-global-color-0);
        box-shadow: none;
    }

    .site-footer a:hover+.post-count,
    .site-footer a:focus+.post-count {
        background: var(--ast-global-color-0);
        border-color: var(--ast-global-color-0);
    }

    .single .nav-links .nav-previous,
    .single .nav-links .nav-next {
        color: var(--ast-global-color-0);
    }

    .entry-meta,
    .entry-meta * {
        line-height: 1.45;
        color: var(--ast-global-color-0);
        font-weight: 600;
    }

    .entry-meta a:not(.ast-button):hover,
    .entry-meta a:not(.ast-button):hover *,
    .entry-meta a:not(.ast-button):focus,
    .entry-meta a:not(.ast-button):focus *,
    .page-links>.page-link,
    .page-links .page-link:hover,
    .post-navigation a:hover {
        color: var(--ast-global-color-1);
    }

    #cat option,
    .secondary .calendar_wrap thead a,
    .secondary .calendar_wrap thead a:visited {
        color: var(--ast-global-color-0);
    }

    .secondary .calendar_wrap #today,
    .ast-progress-val span {
        background: var(--ast-global-color-0);
    }

    .secondary a:hover+.post-count,
    .secondary a:focus+.post-count {
        background: var(--ast-global-color-0);
        border-color: var(--ast-global-color-0);
    }

    .calendar_wrap #today>a {
        color: #ffffff;
    }

    .page-links .page-link,
    .single .post-navigation a {
        color: var(--ast-global-color-3);
    }

    .ast-search-menu-icon .search-form button.search-submit {
        padding: 0 4px;
    }

    .ast-search-menu-icon form.search-form {
        padding-right: 0;
    }

    .ast-search-menu-icon.slide-search input.search-field {
        width: 0;
    }

    .ast-header-search .ast-search-menu-icon.ast-dropdown-active .search-form,
    .ast-header-search .ast-search-menu-icon.ast-dropdown-active .search-field:focus {
        transition: all 0.2s;
    }

    .search-form input.search-field:focus {
        outline: none;
    }

    .ast-search-menu-icon .search-form button.search-submit:focus,
    .ast-theme-transparent-header .ast-header-search .ast-dropdown-active .ast-icon,
    .ast-theme-transparent-header .ast-inline-search .search-field:focus .ast-icon {
        color: var(--ast-global-color-1);
    }

    .ast-header-search .slide-search .search-form {
        border: 2px solid var(--ast-global-color-0);
    }

    .ast-header-search .slide-search .search-field {
        background-color: #fff;
    }

    .ast-archive-title {
        color: var(--ast-global-color-2);
    }

    .widget-title,
    .widget .wp-block-heading {
        font-size: 22px;
        font-size: 1.375rem;
        color: var(--ast-global-color-2);
    }

    .ast-single-post .entry-content a,
    .ast-comment-content a:not(.ast-comment-edit-reply-wrap a) {
        text-decoration: underline;
    }

    .ast-single-post .elementor-button-wrapper .elementor-button,
    .ast-single-post .entry-content .uagb-tab a,
    .ast-single-post .entry-content .uagb-ifb-cta a,
    .ast-single-post .entry-content .uabb-module-content a,
    .ast-single-post .entry-content .uagb-post-grid a,
    .ast-single-post .entry-content .uagb-timeline a,
    .ast-single-post .entry-content .uagb-toc__wrap a,
    .ast-single-post .entry-content .uagb-taxomony-box a,
    .ast-single-post .entry-content .woocommerce a,
    .entry-content .wp-block-latest-posts>li>a,
    .ast-single-post .entry-content .wp-block-file__button,
    li.ast-post-filter-single,
    .ast-single-post .ast-comment-content .comment-reply-link,
    .ast-single-post .ast-comment-content .comment-edit-link {
        text-decoration: none;
    }

    .ast-search-menu-icon.slide-search a:focus-visible:focus-visible,
    .astra-search-icon:focus-visible,
    #close:focus-visible,
    a:focus-visible,
    .ast-menu-toggle:focus-visible,
    .site .skip-link:focus-visible,
    .wp-block-loginout input:focus-visible,
    .wp-block-search.wp-block-search__button-inside .wp-block-search__inside-wrapper,
    .ast-header-navigation-arrow:focus-visible,
    .woocommerce .wc-proceed-to-checkout>.checkout-button:focus-visible,
    .woocommerce .woocommerce-MyAccount-navigation ul li a:focus-visible,
    .ast-orders-table__row .ast-orders-table__cell:focus-visible,
    .woocommerce .woocommerce-order-details .order-again>.button:focus-visible,
    .woocommerce .woocommerce-message a.button.wc-forward:focus-visible,
    .woocommerce #minus_qty:focus-visible,
    .woocommerce #plus_qty:focus-visible,
    a#ast-apply-coupon:focus-visible,
    .woocommerce .woocommerce-info a:focus-visible,
    .woocommerce .astra-shop-summary-wrap a:focus-visible,
    .woocommerce a.wc-forward:focus-visible,
    #ast-apply-coupon:focus-visible,
    .woocommerce-js .woocommerce-mini-cart-item a.remove:focus-visible,
    #close:focus-visible,
    .button.search-submit:focus-visible,
    #search_submit:focus,
    .normal-search:focus-visible,
    .ast-header-account-wrap:focus-visible {
        outline-style: dotted;
        outline-color: inherit;
        outline-width: thin;
    }

    input:focus,
    input[type="text"]:focus,
    input[type="email"]:focus,
    input[type="url"]:focus,
    input[type="password"]:focus,
    input[type="reset"]:focus,
    input[type="search"]:focus,
    input[type="number"]:focus,
    textarea:focus,
    .wp-block-search__input:focus,
    [data-section="section-header-mobile-trigger"] .ast-button-wrap .ast-mobile-menu-trigger-minimal:focus,
    .ast-mobile-popup-drawer.active .menu-toggle-close:focus,
    .woocommerce-ordering select.orderby:focus,
    #ast-scroll-top:focus,
    #coupon_code:focus,
    .woocommerce-page #comment:focus,
    .woocommerce #reviews #respond input#submit:focus,
    .woocommerce a.add_to_cart_button:focus,
    .woocommerce .button.single_add_to_cart_button:focus,
    .woocommerce .woocommerce-cart-form button:focus,
    .woocommerce .woocommerce-cart-form__cart-item .quantity .qty:focus,
    .woocommerce .woocommerce-billing-fields .woocommerce-billing-fields__field-wrapper .woocommerce-input-wrapper>.input-text:focus,
    .woocommerce #order_comments:focus,
    .woocommerce #place_order:focus,
    .woocommerce .woocommerce-address-fields .woocommerce-address-fields__field-wrapper .woocommerce-input-wrapper>.input-text:focus,
    .woocommerce .woocommerce-MyAccount-content form button:focus,
    .woocommerce .woocommerce-MyAccount-content .woocommerce-EditAccountForm .woocommerce-form-row .woocommerce-Input.input-text:focus,
    .woocommerce .ast-woocommerce-container .woocommerce-pagination ul.page-numbers li a:focus,
    body #content .woocommerce form .form-row .select2-container--default .select2-selection--single:focus,
    #ast-coupon-code:focus,
    .woocommerce.woocommerce-js .quantity input[type=number]:focus,
    .woocommerce-js .woocommerce-mini-cart-item .quantity input[type=number]:focus,
    .woocommerce p#ast-coupon-trigger:focus {
        border-style: dotted;
        border-color: inherit;
        border-width: thin;
    }

    input {
        outline: none;
    }

    .ast-logo-title-inline .site-logo-img {
        padding-right: 1em;
    }

    body .ast-oembed-container * {
        position: absolute;
        top: 0;
        width: 100%;
        height: 100%;
        left: 0;
    }

    body .wp-block-embed-pocket-casts .ast-oembed-container * {
        position: unset;
    }

    .ast-single-post-featured-section+article {
        margin-top: 2em;
    }

    .site-content .ast-single-post-featured-section img {
        width: 100%;
        overflow: hidden;
        object-fit: cover;
    }

    .ast-separate-container .site-content .ast-single-post-featured-section+article {
        margin-top: -80px;
        z-index: 9;
        position: relative;
        border-radius: 4px;
    }

    @media (min-width: 922px) {
        .ast-no-sidebar .site-content .ast-article-image-container--wide {
            margin-left: -120px;
            margin-right: -120px;
            max-width: unset;
            width: unset;
        }

        .ast-left-sidebar .site-content .ast-article-image-container--wide,
        .ast-right-sidebar .site-content .ast-article-image-container--wide {
            margin-left: -10px;
            margin-right: -10px;
        }

        .site-content .ast-article-image-container--full {
            margin-left: calc(-50vw + 50%);
            margin-right: calc(-50vw + 50%);
            max-width: 100vw;
            width: 100vw;
        }

        .ast-left-sidebar .site-content .ast-article-image-container--full,
        .ast-right-sidebar .site-content .ast-article-image-container--full {
            margin-left: -10px;
            margin-right: -10px;
            max-width: inherit;
            width: auto;
        }
    }

    .site>.ast-single-related-posts-container {
        margin-top: 0;
    }

    @media (min-width: 922px) {
        .ast-desktop .ast-container--narrow {
            max-width: var(--ast-narrow-container-width);
            margin: 0 auto;
        }
    }

    .ast-page-builder-template .hentry {
        margin: 0;
    }

    .ast-page-builder-template .site-content>.ast-container {
        max-width: 100%;
        padding: 0;
    }

    .ast-page-builder-template .site .site-content #primary {
        padding: 0;
        margin: 0;
    }

    .ast-page-builder-template .no-results {
        text-align: center;
        margin: 4em auto;
    }

    .ast-page-builder-template .ast-pagination {
        padding: 2em;
    }

    .ast-page-builder-template .entry-header.ast-no-title.ast-no-thumbnail {
        margin-top: 0;
    }

    .ast-page-builder-template .entry-header.ast-header-without-markup {
        margin-top: 0;
        margin-bottom: 0;
    }

    .ast-page-builder-template .entry-header.ast-no-title.ast-no-meta {
        margin-bottom: 0;
    }

    .ast-page-builder-template.single .post-navigation {
        padding-bottom: 2em;
    }

    .ast-page-builder-template.single-post .site-content>.ast-container {
        max-width: 100%;
    }

    .ast-page-builder-template .entry-header {
        margin-top: 2em;
        margin-left: auto;
        margin-right: auto;
    }

    .ast-page-builder-template .ast-archive-description {
        margin: 2em auto 0;
        padding-left: 20px;
        padding-right: 20px;
    }

    .ast-page-builder-template .ast-row {
        margin-left: 0;
        margin-right: 0;
    }

    .single.ast-page-builder-template .entry-header+.entry-content,
    .single.ast-page-builder-template .ast-single-entry-banner+.site-content article .entry-content {
        margin-bottom: 2em;
    }

    @media(min-width: 921px) {

        .ast-page-builder-template.archive.ast-right-sidebar .ast-row article,
        .ast-page-builder-template.archive.ast-left-sidebar .ast-row article {
            padding-left: 0;
            padding-right: 0;
        }
    }

    input[type="text"],
    input[type="number"],
    input[type="email"],
    input[type="url"],
    input[type="password"],
    input[type="search"],
    input[type=reset],
    input[type=tel],
    input[type=date],
    select,
    textarea {
        font-size: 16px;
        font-style: normal;
        font-weight: 400;
        line-height: 24px;
        width: 100%;
        padding: 12px 16px;
        border-radius: 4px;
        box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.05);
        color: var(--ast-form-input-text, #475569);
    }

    input[type="text"],
    input[type="number"],
    input[type="email"],
    input[type="url"],
    input[type="password"],
    input[type="search"],
    input[type=reset],
    input[type=tel],
    input[type=date],
    select {
        height: 40px;
    }

    input[type="date"] {
        border-width: 1px;
        border-style: solid;
        border-color: var(--ast-border-color);
    }

    input[type="text"]:focus,
    input[type="number"]:focus,
    input[type="email"]:focus,
    input[type="url"]:focus,
    input[type="password"]:focus,
    input[type="search"]:focus,
    input[type=reset]:focus,
    input[type="tel"]:focus,
    input[type="date"]:focus,
    select:focus,
    textarea:focus {
        border-color: #046BD2;
        box-shadow: none;
        outline: none;
        color: var(--ast-form-input-focus-text, #475569);
    }

    label,
    legend {
        color: #111827;
        font-size: 14px;
        font-style: normal;
        font-weight: 500;
        line-height: 20px;
    }

    select {
        padding: 6px 10px;
    }

    fieldset {
        padding: 30px;
        border-radius: 4px;
    }

    button,
    .ast-button,
    .button,
    input[type="button"],
    input[type="reset"],
    input[type="submit"] {
        border-radius: 4px;
        box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.05);
    }

    :root {
        --ast-comment-inputs-background: #FFF;
    }

    ::placeholder {
        color: var(--ast-form-field-color, #9CA3AF);
    }

    ::-ms-input-placeholder {
        color: var(--ast-form-field-color, #9CA3AF);
    }

    @media (max-width:921.9px) {
        #ast-desktop-header {
            display: none;
        }
    }

    @media (min-width:922px) {
        #ast-mobile-header {
            display: none;
        }
    }

    .wp-block-buttons.aligncenter {
        justify-content: center;
    }

    @media (max-width:921px) {

        .ast-theme-transparent-header #primary,
        .ast-theme-transparent-header #secondary {
            padding: 0;
        }
    }

    @media (max-width:921px) {
        .ast-plain-container.ast-no-sidebar #primary {
            padding: 0;
        }
    }

    .ast-plain-container.ast-no-sidebar #primary {
        margin-top: 0;
        margin-bottom: 0;
    }

    .wp-block-button.is-style-outline .wp-block-button__link {
        border-color: var(--ast-global-color-0);
    }

    div.wp-block-button.is-style-outline>.wp-block-button__link:not(.has-text-color),
    div.wp-block-button.wp-block-button__link.is-style-outline:not(.has-text-color) {
        color: var(--ast-global-color-0);
    }

    .wp-block-button.is-style-outline .wp-block-button__link:hover,
    .wp-block-buttons .wp-block-button.is-style-outline .wp-block-button__link:focus,
    .wp-block-buttons .wp-block-button.is-style-outline>.wp-block-button__link:not(.has-text-color):hover,
    .wp-block-buttons .wp-block-button.wp-block-button__link.is-style-outline:not(.has-text-color):hover {
        color: #ffffff;
        background-color: var(--ast-global-color-1);
        border-color: var(--ast-global-color-1);
    }

    .post-page-numbers.current .page-link,
    .ast-pagination .page-numbers.current {
        color: #ffffff;
        border-color: var(--ast-global-color-0);
        background-color: var(--ast-global-color-0);
    }

    .wp-block-buttons .wp-block-button.is-style-outline .wp-block-button__link.wp-element-button,
    .ast-outline-button,
    .wp-block-uagb-buttons-child .uagb-buttons-repeater.ast-outline-button {
        border-color: var(--ast-global-color-0);
        font-family: inherit;
        font-weight: 500;
        font-size: 16px;
        font-size: 1rem;
        line-height: 1em;
        padding-top: 13px;
        padding-right: 30px;
        padding-bottom: 13px;
        padding-left: 30px;
    }

    .wp-block-buttons .wp-block-button.is-style-outline>.wp-block-button__link:not(.has-text-color),
    .wp-block-buttons .wp-block-button.wp-block-button__link.is-style-outline:not(.has-text-color),
    .ast-outline-button {
        color: var(--ast-global-color-0);
    }

    .wp-block-button.is-style-outline .wp-block-button__link:hover,
    .wp-block-buttons .wp-block-button.is-style-outline .wp-block-button__link:focus,
    .wp-block-buttons .wp-block-button.is-style-outline>.wp-block-button__link:not(.has-text-color):hover,
    .wp-block-buttons .wp-block-button.wp-block-button__link.is-style-outline:not(.has-text-color):hover,
    .ast-outline-button:hover,
    .ast-outline-button:focus,
    .wp-block-uagb-buttons-child .uagb-buttons-repeater.ast-outline-button:hover,
    .wp-block-uagb-buttons-child .uagb-buttons-repeater.ast-outline-button:focus {
        color: #ffffff;
        background-color: var(--ast-global-color-1);
        border-color: var(--ast-global-color-1);
    }

    .ast-single-post .entry-content a.ast-outline-button,
    .ast-single-post .entry-content .is-style-outline>.wp-block-button__link {
        text-decoration: none;
    }

    .uagb-buttons-repeater.ast-outline-button {
        border-radius: 9999px;
    }

    @media (max-width:921px) {

        .wp-block-buttons .wp-block-button.is-style-outline .wp-block-button__link.wp-element-button,
        .ast-outline-button,
        .wp-block-uagb-buttons-child .uagb-buttons-repeater.ast-outline-button {
            padding-top: 12px;
            padding-right: 28px;
            padding-bottom: 12px;
            padding-left: 28px;
        }
    }

    @media (max-width:544px) {

        .wp-block-buttons .wp-block-button.is-style-outline .wp-block-button__link.wp-element-button,
        .ast-outline-button,
        .wp-block-uagb-buttons-child .uagb-buttons-repeater.ast-outline-button {
            padding-top: 10px;
            padding-right: 24px;
            padding-bottom: 10px;
            padding-left: 24px;
        }
    }

    .entry-content[ast-blocks-layout]>figure {
        margin-bottom: 1em;
    }

    h1.widget-title {
        font-weight: 600;
    }

    h2.widget-title {
        font-weight: 600;
    }

    h3.widget-title {
        font-weight: 600;
    }

    #page {
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    .ast-404-layout-1 h1.page-title {
        color: var(--ast-global-color-2);
    }

    .single .post-navigation a {
        line-height: 1em;
        height: inherit;
    }

    .error-404 .page-sub-title {
        font-size: 1.5rem;
        font-weight: inherit;
    }

    .search .site-content .content-area .search-form {
        margin-bottom: 0;
    }

    #page .site-content {
        flex-grow: 1;
    }

    .widget {
        margin-bottom: 1.25em;
    }

    #secondary li {
        line-height: 1.5em;
    }

    #secondary .wp-block-group h2 {
        margin-bottom: 0.7em;
    }

    #secondary h2 {
        font-size: 1.7rem;
    }

    .ast-separate-container .ast-article-post,
    .ast-separate-container .ast-article-single,
    .ast-separate-container .comment-respond {
        padding: 3em;
    }

    .ast-separate-container .ast-article-single .ast-article-single {
        padding: 0;
    }

    .ast-article-single .wp-block-post-template-is-layout-grid {
        padding-left: 0;
    }

    .ast-separate-container .comments-title,
    .ast-narrow-container .comments-title {
        padding: 1.5em 2em;
    }

    .ast-page-builder-template .comment-form-textarea,
    .ast-comment-formwrap .ast-grid-common-col {
        padding: 0;
    }

    .ast-comment-formwrap {
        padding: 0;
        display: inline-flex;
        column-gap: 20px;
        width: 100%;
        margin-left: 0;
        margin-right: 0;
    }

    .comments-area textarea#comment:focus,
    .comments-area textarea#comment:active,
    .comments-area .ast-comment-formwrap input[type="text"]:focus,
    .comments-area .ast-comment-formwrap input[type="text"]:active {
        box-shadow: none;
        outline: none;
    }

    .archive.ast-page-builder-template .entry-header {
        margin-top: 2em;
    }

    .ast-page-builder-template .ast-comment-formwrap {
        width: 100%;
    }

    .entry-title {
        margin-bottom: 0.6em;
    }

    .ast-archive-description p {
        font-size: inherit;
        font-weight: inherit;
        line-height: inherit;
    }

    .ast-separate-container .ast-comment-list li.depth-1,
    .hentry {
        margin-bottom: 1.5em;
    }

    .site-content section.ast-archive-description {
        margin-bottom: 2em;
    }

    @media (min-width:921px) {

        .ast-left-sidebar.ast-page-builder-template #secondary,
        .archive.ast-right-sidebar.ast-page-builder-template .site-main {
            padding-left: 20px;
            padding-right: 20px;
        }
    }

    @media (max-width:544px) {
        .ast-comment-formwrap.ast-row {
            column-gap: 10px;
            display: inline-block;
        }

        #ast-commentform .ast-grid-common-col {
            position: relative;
            width: 100%;
        }
    }

    @media (min-width:1201px) {

        .ast-separate-container .ast-article-post,
        .ast-separate-container .ast-article-single,
        .ast-separate-container .ast-author-box,
        .ast-separate-container .ast-404-layout-1,
        .ast-separate-container .no-results {
            padding: 3em;
        }
    }

    @media (max-width:921px) {

        .ast-separate-container #primary,
        .ast-separate-container #secondary {
            padding: 1.5em 0;
        }

        #primary,
        #secondary {
            padding: 1.5em 0;
            margin: 0;
        }

        .ast-left-sidebar #content>.ast-container {
            display: flex;
            flex-direction: column-reverse;
            width: 100%;
        }
    }

    @media (min-width:922px) {

        .ast-separate-container.ast-right-sidebar #primary,
        .ast-separate-container.ast-left-sidebar #primary {
            border: 0;
        }

        .search-no-results.ast-separate-container #primary {
            margin-bottom: 4em;
        }
    }

    .wp-block-button .wp-block-button__link {
        color: #ffffff;
    }

    .wp-block-button .wp-block-button__link:hover,
    .wp-block-button .wp-block-button__link:focus {
        color: #ffffff;
        background-color: var(--ast-global-color-1);
        border-color: var(--ast-global-color-1);
    }

    .elementor-widget-heading h1.elementor-heading-title {
        line-height: 1.4em;
    }

    .elementor-widget-heading h2.elementor-heading-title {
        line-height: 1.3em;
    }

    .elementor-widget-heading h3.elementor-heading-title {
        line-height: 1.3em;
    }

    .elementor-widget-heading h4.elementor-heading-title {
        line-height: 1.2em;
    }

    .elementor-widget-heading h5.elementor-heading-title {
        line-height: 1.2em;
    }

    .elementor-widget-heading h6.elementor-heading-title {
        line-height: 1.25em;
    }

    .wp-block-button .wp-block-button__link,
    .wp-block-search .wp-block-search__button,
    body .wp-block-file .wp-block-file__button {
        border-color: var(--ast-global-color-0);
        background-color: var(--ast-global-color-0);
        color: #ffffff;
        font-family: inherit;
        font-weight: 500;
        line-height: 1em;
        font-size: 16px;
        font-size: 1rem;
        padding-top: 15px;
        padding-right: 30px;
        padding-bottom: 15px;
        padding-left: 30px;
    }

    .ast-single-post .entry-content .wp-block-button .wp-block-button__link,
    .ast-single-post .entry-content .wp-block-search .wp-block-search__button,
    body .entry-content .wp-block-file .wp-block-file__button {
        text-decoration: none;
    }

    @media (max-width:921px) {

        .wp-block-button .wp-block-button__link,
        .wp-block-search .wp-block-search__button,
        body .wp-block-file .wp-block-file__button {
            padding-top: 14px;
            padding-right: 28px;
            padding-bottom: 14px;
            padding-left: 28px;
        }
    }

    @media (max-width:544px) {

        .wp-block-button .wp-block-button__link,
        .wp-block-search .wp-block-search__button,
        body .wp-block-file .wp-block-file__button {
            padding-top: 12px;
            padding-right: 24px;
            padding-bottom: 12px;
            padding-left: 24px;
        }
    }

    .menu-toggle,
    button,
    .ast-button,
    .ast-custom-button,
    .button,
    input#submit,
    input[type="button"],
    input[type="submit"],
    input[type="reset"],
    #comments .submit,
    .search .search-submit,
    form[CLASS*="wp-block-search__"].wp-block-search .wp-block-search__inside-wrapper .wp-block-search__button,
    body .wp-block-file .wp-block-file__button,
    .search .search-submit,
    .woocommerce-js a.button,
    .woocommerce button.button,
    .woocommerce .woocommerce-message a.button,
    .woocommerce #respond input#submit.alt,
    .woocommerce input.button.alt,
    .woocommerce input.button,
    .woocommerce input.button:disabled,
    .woocommerce input.button:disabled[disabled],
    .woocommerce input.button:disabled:hover,
    .woocommerce input.button:disabled[disabled]:hover,
    .woocommerce #respond input#submit,
    .woocommerce button.button.alt.disabled,
    .wc-block-grid__products .wc-block-grid__product .wp-block-button__link,
    .wc-block-grid__product-onsale,
    [CLASS*="wc-block"] button,
    .woocommerce-js .astra-cart-drawer .astra-cart-drawer-content .woocommerce-mini-cart__buttons .button:not(.checkout):not(.ast-continue-shopping),
    .woocommerce-js .astra-cart-drawer .astra-cart-drawer-content .woocommerce-mini-cart__buttons a.checkout,
    .woocommerce button.button.alt.disabled.wc-variation-selection-needed,
    [CLASS*="wc-block"] .wc-block-components-button {
        border-style: solid;
        border-top-width: 0;
        border-right-width: 0;
        border-left-width: 0;
        border-bottom-width: 0;
        color: #ffffff;
        border-color: var(--ast-global-color-0);
        background-color: var(--ast-global-color-0);
        padding-top: 15px;
        padding-right: 30px;
        padding-bottom: 15px;
        padding-left: 30px;
        font-family: inherit;
        font-weight: 500;
        font-size: 16px;
        font-size: 1rem;
        line-height: 1em;
    }

    button:focus,
    .menu-toggle:hover,
    button:hover,
    .ast-button:hover,
    .ast-custom-button:hover .button:hover,
    .ast-custom-button:hover,
    input[type=reset]:hover,
    input[type=reset]:focus,
    input#submit:hover,
    input#submit:focus,
    input[type="button"]:hover,
    input[type="button"]:focus,
    input[type="submit"]:hover,
    input[type="submit"]:focus,
    form[CLASS*="wp-block-search__"].wp-block-search .wp-block-search__inside-wrapper .wp-block-search__button:hover,
    form[CLASS*="wp-block-search__"].wp-block-search .wp-block-search__inside-wrapper .wp-block-search__button:focus,
    body .wp-block-file .wp-block-file__button:hover,
    body .wp-block-file .wp-block-file__button:focus,
    .woocommerce-js a.button:hover,
    .woocommerce button.button:hover,
    .woocommerce .woocommerce-message a.button:hover,
    .woocommerce #respond input#submit:hover,
    .woocommerce #respond input#submit.alt:hover,
    .woocommerce input.button.alt:hover,
    .woocommerce input.button:hover,
    .woocommerce button.button.alt.disabled:hover,
    .wc-block-grid__products .wc-block-grid__product .wp-block-button__link:hover,
    [CLASS*="wc-block"] button:hover,
    .woocommerce-js .astra-cart-drawer .astra-cart-drawer-content .woocommerce-mini-cart__buttons .button:not(.checkout):not(.ast-continue-shopping):hover,
    .woocommerce-js .astra-cart-drawer .astra-cart-drawer-content .woocommerce-mini-cart__buttons a.checkout:hover,
    .woocommerce button.button.alt.disabled.wc-variation-selection-needed:hover,
    [CLASS*="wc-block"] .wc-block-components-button:hover,
    [CLASS*="wc-block"] .wc-block-components-button:focus {
        color: #ffffff;
        background-color: var(--ast-global-color-1);
        border-color: var(--ast-global-color-1);
    }

    form[CLASS*="wp-block-search__"].wp-block-search .wp-block-search__inside-wrapper .wp-block-search__button.has-icon {
        padding-top: calc(15px - 3px);
        padding-right: calc(30px - 3px);
        padding-bottom: calc(15px - 3px);
        padding-left: calc(30px - 3px);
    }

    @media (max-width:921px) {

        .menu-toggle,
        button,
        .ast-button,
        .ast-custom-button,
        .button,
        input#submit,
        input[type="button"],
        input[type="submit"],
        input[type="reset"],
        #comments .submit,
        .search .search-submit,
        form[CLASS*="wp-block-search__"].wp-block-search .wp-block-search__inside-wrapper .wp-block-search__button,
        body .wp-block-file .wp-block-file__button,
        .search .search-submit,
        .woocommerce-js a.button,
        .woocommerce button.button,
        .woocommerce .woocommerce-message a.button,
        .woocommerce #respond input#submit.alt,
        .woocommerce input.button.alt,
        .woocommerce input.button,
        .woocommerce input.button:disabled,
        .woocommerce input.button:disabled[disabled],
        .woocommerce input.button:disabled:hover,
        .woocommerce input.button:disabled[disabled]:hover,
        .woocommerce #respond input#submit,
        .woocommerce button.button.alt.disabled,
        .wc-block-grid__products .wc-block-grid__product .wp-block-button__link,
        .wc-block-grid__product-onsale,
        [CLASS*="wc-block"] button,
        .woocommerce-js .astra-cart-drawer .astra-cart-drawer-content .woocommerce-mini-cart__buttons .button:not(.checkout):not(.ast-continue-shopping),
        .woocommerce-js .astra-cart-drawer .astra-cart-drawer-content .woocommerce-mini-cart__buttons a.checkout,
        .woocommerce button.button.alt.disabled.wc-variation-selection-needed,
        [CLASS*="wc-block"] .wc-block-components-button {
            padding-top: 14px;
            padding-right: 28px;
            padding-bottom: 14px;
            padding-left: 28px;
        }
    }

    @media (max-width:544px) {

        .menu-toggle,
        button,
        .ast-button,
        .ast-custom-button,
        .button,
        input#submit,
        input[type="button"],
        input[type="submit"],
        input[type="reset"],
        #comments .submit,
        .search .search-submit,
        form[CLASS*="wp-block-search__"].wp-block-search .wp-block-search__inside-wrapper .wp-block-search__button,
        body .wp-block-file .wp-block-file__button,
        .search .search-submit,
        .woocommerce-js a.button,
        .woocommerce button.button,
        .woocommerce .woocommerce-message a.button,
        .woocommerce #respond input#submit.alt,
        .woocommerce input.button.alt,
        .woocommerce input.button,
        .woocommerce input.button:disabled,
        .woocommerce input.button:disabled[disabled],
        .woocommerce input.button:disabled:hover,
        .woocommerce input.button:disabled[disabled]:hover,
        .woocommerce #respond input#submit,
        .woocommerce button.button.alt.disabled,
        .wc-block-grid__products .wc-block-grid__product .wp-block-button__link,
        .wc-block-grid__product-onsale,
        [CLASS*="wc-block"] button,
        .woocommerce-js .astra-cart-drawer .astra-cart-drawer-content .woocommerce-mini-cart__buttons .button:not(.checkout):not(.ast-continue-shopping),
        .woocommerce-js .astra-cart-drawer .astra-cart-drawer-content .woocommerce-mini-cart__buttons a.checkout,
        .woocommerce button.button.alt.disabled.wc-variation-selection-needed,
        [CLASS*="wc-block"] .wc-block-components-button {
            padding-top: 12px;
            padding-right: 24px;
            padding-bottom: 12px;
            padding-left: 24px;
        }
    }

    @media (max-width:921px) {
        .ast-mobile-header-stack .main-header-bar .ast-search-menu-icon {
            display: inline-block;
        }

        .ast-header-break-point.ast-header-custom-item-outside .ast-mobile-header-stack .main-header-bar .ast-search-icon {
            margin: 0;
        }

        .ast-comment-avatar-wrap img {
            max-width: 2.5em;
        }

        .ast-comment-meta {
            padding: 0 1.8888em 1.3333em;
        }
    }

    @media (min-width:544px) {
        .ast-container {
            max-width: 100%;
        }
    }

    @media (max-width:544px) {

        .ast-separate-container .ast-article-post,
        .ast-separate-container .ast-article-single,
        .ast-separate-container .comments-title,
        .ast-separate-container .ast-archive-description {
            padding: 1.5em 1em;
        }

        .ast-separate-container #content .ast-container {
            padding-left: 0.54em;
            padding-right: 0.54em;
        }

        .ast-separate-container .ast-comment-list .bypostauthor {
            padding: .5em;
        }

        .ast-search-menu-icon.ast-dropdown-active .search-field {
            width: 170px;
        }
    }

    .ast-separate-container {
        background-color: var(--ast-global-color-4);
        ;
    }

    @media (max-width:921px) {
        .site-title {
            display: block;
        }

        .site-header .site-description {
            display: none;
        }

        h1,
        .entry-content h1 {
            font-size: 30px;
        }

        h2,
        .entry-content h2 {
            font-size: 25px;
        }

        h3,
        .entry-content h3 {
            font-size: 20px;
        }
    }

    @media (max-width:544px) {
        .site-title {
            display: block;
        }

        .site-header .site-description {
            display: none;
        }

        h1,
        .entry-content h1 {
            font-size: 30px;
        }

        h2,
        .entry-content h2 {
            font-size: 25px;
        }

        h3,
        .entry-content h3 {
            font-size: 20px;
        }
    }

    @media (max-width:921px) {
        html {
            font-size: 91.2%;
        }
    }

    @media (max-width:544px) {
        html {
            font-size: 91.2%;
        }
    }

    @media (min-width:922px) {
        .ast-container {
            max-width: 1240px;
        }
    }

    @media (min-width:922px) {
        .site-content .ast-container {
            display: flex;
        }
    }

    @media (max-width:921px) {
        .site-content .ast-container {
            flex-direction: column;
        }
    }

    .entry-content h1,
    .entry-content h2,
    .entry-content h3,
    .entry-content h4,
    .entry-content h5,
    .entry-content h6 {
        clear: none;
    }

    @media (min-width:922px) {

        .main-header-menu .sub-menu .menu-item.ast-left-align-sub-menu:hover>.sub-menu,
        .main-header-menu .sub-menu .menu-item.ast-left-align-sub-menu.focus>.sub-menu {
            margin-left: -0px;
        }
    }

    .entry-content li>p {
        margin-bottom: 0;
    }

    .site .comments-area {
        padding-bottom: 2em;
        margin-top: 2em;
    }

    .wp-block-file {
        display: flex;
        align-items: center;
        flex-wrap: wrap;
        justify-content: space-between;
    }

    .wp-block-pullquote {
        border: none;
    }

    .wp-block-pullquote blockquote::before {
        content: "\201D";
        font-family: "Helvetica", sans-serif;
        display: flex;
        transform: rotate(180deg);
        font-size: 6rem;
        font-style: normal;
        line-height: 1;
        font-weight: bold;
        align-items: center;
        justify-content: center;
    }

    .has-text-align-right>blockquote::before {
        justify-content: flex-start;
    }

    .has-text-align-left>blockquote::before {
        justify-content: flex-end;
    }

    figure.wp-block-pullquote.is-style-solid-color blockquote {
        max-width: 100%;
        text-align: inherit;
    }

    html body {
        --wp--custom--ast-default-block-top-padding: 3em;
        --wp--custom--ast-default-block-right-padding: 3em;
        --wp--custom--ast-default-block-bottom-padding: 3em;
        --wp--custom--ast-default-block-left-padding: 3em;
        --wp--custom--ast-container-width: 1200px;
        --wp--custom--ast-content-width-size: 1200px;
        --wp--custom--ast-wide-width-size: calc(1200px + var(--wp--custom--ast-default-block-left-padding) + var(--wp--custom--ast-default-block-right-padding));
    }

    .ast-narrow-container {
        --wp--custom--ast-content-width-size: 750px;
        --wp--custom--ast-wide-width-size: 750px;
    }

    @media(max-width: 921px) {
        html body {
            --wp--custom--ast-default-block-top-padding: 3em;
            --wp--custom--ast-default-block-right-padding: 2em;
            --wp--custom--ast-default-block-bottom-padding: 3em;
            --wp--custom--ast-default-block-left-padding: 2em;
        }
    }

    @media(max-width: 544px) {
        html body {
            --wp--custom--ast-default-block-top-padding: 3em;
            --wp--custom--ast-default-block-right-padding: 1.5em;
            --wp--custom--ast-default-block-bottom-padding: 3em;
            --wp--custom--ast-default-block-left-padding: 1.5em;
        }
    }

    .entry-content>.wp-block-group,
    .entry-content>.wp-block-cover,
    .entry-content>.wp-block-columns {
        padding-top: var(--wp--custom--ast-default-block-top-padding);
        padding-right: var(--wp--custom--ast-default-block-right-padding);
        padding-bottom: var(--wp--custom--ast-default-block-bottom-padding);
        padding-left: var(--wp--custom--ast-default-block-left-padding);
    }

    .ast-plain-container.ast-no-sidebar .entry-content>.alignfull,
    .ast-page-builder-template .ast-no-sidebar .entry-content>.alignfull {
        margin-left: calc(-50vw + 50%);
        margin-right: calc(-50vw + 50%);
        max-width: 100vw;
        width: 100vw;
    }

    .ast-plain-container.ast-no-sidebar .entry-content .alignfull .alignfull,
    .ast-page-builder-template.ast-no-sidebar .entry-content .alignfull .alignfull,
    .ast-plain-container.ast-no-sidebar .entry-content .alignfull .alignwide,
    .ast-page-builder-template.ast-no-sidebar .entry-content .alignfull .alignwide,
    .ast-plain-container.ast-no-sidebar .entry-content .alignwide .alignfull,
    .ast-page-builder-template.ast-no-sidebar .entry-content .alignwide .alignfull,
    .ast-plain-container.ast-no-sidebar .entry-content .alignwide .alignwide,
    .ast-page-builder-template.ast-no-sidebar .entry-content .alignwide .alignwide,
    .ast-plain-container.ast-no-sidebar .entry-content .wp-block-column .alignfull,
    .ast-page-builder-template.ast-no-sidebar .entry-content .wp-block-column .alignfull,
    .ast-plain-container.ast-no-sidebar .entry-content .wp-block-column .alignwide,
    .ast-page-builder-template.ast-no-sidebar .entry-content .wp-block-column .alignwide {
        margin-left: auto;
        margin-right: auto;
        width: 100%;
    }

    [ast-blocks-layout] .wp-block-separator:not(.is-style-dots) {
        height: 0;
    }

    [ast-blocks-layout] .wp-block-separator {
        margin: 20px auto;
    }

    [ast-blocks-layout] .wp-block-separator:not(.is-style-wide):not(.is-style-dots) {
        max-width: 100px;
    }

    [ast-blocks-layout] .wp-block-separator.has-background {
        padding: 0;
    }

    .entry-content[ast-blocks-layout]>* {
        max-width: var(--wp--custom--ast-content-width-size);
        margin-left: auto;
        margin-right: auto;
    }

    .entry-content[ast-blocks-layout]>.alignwide {
        max-width: var(--wp--custom--ast-wide-width-size);
    }

    .entry-content[ast-blocks-layout] .alignfull {
        max-width: none;
    }

    .entry-content .wp-block-columns {
        margin-bottom: 0;
    }

    blockquote {
        margin: 1.5em;
        border-color: rgba(0, 0, 0, 0.05);
    }

    .wp-block-quote:not(.has-text-align-right):not(.has-text-align-center) {
        border-left: 5px solid rgba(0, 0, 0, 0.05);
    }

    .has-text-align-right>blockquote,
    blockquote.has-text-align-right {
        border-right: 5px solid rgba(0, 0, 0, 0.05);
    }

    .has-text-align-left>blockquote,
    blockquote.has-text-align-left {
        border-left: 5px solid rgba(0, 0, 0, 0.05);
    }

    .wp-block-site-tagline,
    .wp-block-latest-posts .read-more {
        margin-top: 15px;
    }

    .wp-block-loginout p label {
        display: block;
    }

    .wp-block-loginout p:not(.login-remember):not(.login-submit) input {
        width: 100%;
    }

    .wp-block-loginout input:focus {
        border-color: transparent;
    }

    .wp-block-loginout input:focus {
        outline: thin dotted;
    }

    .entry-content .wp-block-media-text .wp-block-media-text__content {
        padding: 0 0 0 8%;
    }

    .entry-content .wp-block-media-text.has-media-on-the-right .wp-block-media-text__content {
        padding: 0 8% 0 0;
    }

    .entry-content .wp-block-media-text.has-background .wp-block-media-text__content {
        padding: 8%;
    }

    .entry-content .wp-block-cover:not([class*="background-color"]) .wp-block-cover__inner-container,
    .entry-content .wp-block-cover:not([class*="background-color"]) .wp-block-cover-image-text,
    .entry-content .wp-block-cover:not([class*="background-color"]) .wp-block-cover-text,
    .entry-content .wp-block-cover-image:not([class*="background-color"]) .wp-block-cover__inner-container,
    .entry-content .wp-block-cover-image:not([class*="background-color"]) .wp-block-cover-image-text,
    .entry-content .wp-block-cover-image:not([class*="background-color"]) .wp-block-cover-text {
        color: var(--ast-global-color-5);
    }

    .wp-block-loginout .login-remember input {
        width: 1.1rem;
        height: 1.1rem;
        margin: 0 5px 4px 0;
        vertical-align: middle;
    }

    .wp-block-latest-posts>li>*:first-child,
    .wp-block-latest-posts:not(.is-grid)>li:first-child {
        margin-top: 0;
    }

    .wp-block-search__inside-wrapper .wp-block-search__input {
        padding: 0 10px;
        color: var(--ast-global-color-3);
        background: var(--ast-global-color-5);
        border-color: var(--ast-border-color);
    }

    .wp-block-latest-posts .read-more {
        margin-bottom: 1.5em;
    }

    .wp-block-search__no-button .wp-block-search__inside-wrapper .wp-block-search__input {
        padding-top: 5px;
        padding-bottom: 5px;
    }

    .wp-block-latest-posts .wp-block-latest-posts__post-date,
    .wp-block-latest-posts .wp-block-latest-posts__post-author {
        font-size: 1rem;
    }

    .wp-block-latest-posts>li>*,
    .wp-block-latest-posts:not(.is-grid)>li {
        margin-top: 12px;
        margin-bottom: 12px;
    }

    .ast-page-builder-template .entry-content[ast-blocks-layout]>*,
    .ast-page-builder-template .entry-content[ast-blocks-layout]>.alignfull>* {
        max-width: none;
    }

    .ast-page-builder-template .entry-content[ast-blocks-layout]>.alignwide>* {
        max-width: var(--wp--custom--ast-wide-width-size);
    }

    .ast-page-builder-template .entry-content[ast-blocks-layout]>.inherit-container-width>*,
    .ast-page-builder-template .entry-content[ast-blocks-layout]>*>*,
    .entry-content[ast-blocks-layout]>.wp-block-cover .wp-block-cover__inner-container {
        max-width: var(--wp--custom--ast-content-width-size);
        margin-left: auto;
        margin-right: auto;
    }

    .entry-content[ast-blocks-layout] .wp-block-cover:not(.alignleft):not(.alignright) {
        width: auto;
    }

    @media(max-width: 1200px) {

        .ast-separate-container .entry-content>.alignfull,
        .ast-separate-container .entry-content[ast-blocks-layout]>.alignwide,
        .ast-plain-container .entry-content[ast-blocks-layout]>.alignwide,
        .ast-plain-container .entry-content .alignfull {
            margin-left: calc(-1 * min(var(--ast-container-default-xlg-padding), 20px));
            margin-right: calc(-1 * min(var(--ast-container-default-xlg-padding), 20px));
        }
    }

    @media(min-width: 1201px) {
        .ast-separate-container .entry-content>.alignfull {
            margin-left: calc(-1 * var(--ast-container-default-xlg-padding));
            margin-right: calc(-1 * var(--ast-container-default-xlg-padding));
        }

        .ast-separate-container .entry-content[ast-blocks-layout]>.alignwide,
        .ast-plain-container .entry-content[ast-blocks-layout]>.alignwide {
            margin-left: calc(-1 * var(--wp--custom--ast-default-block-left-padding));
            margin-right: calc(-1 * var(--wp--custom--ast-default-block-right-padding));
        }
    }

    @media(min-width: 921px) {

        .ast-separate-container .entry-content .wp-block-group.alignwide:not(.inherit-container-width)> :where(:not(.alignleft):not(.alignright)),
        .ast-plain-container .entry-content .wp-block-group.alignwide:not(.inherit-container-width)> :where(:not(.alignleft):not(.alignright)) {
            max-width: calc(var(--wp--custom--ast-content-width-size) + 80px);
        }

        .ast-plain-container.ast-right-sidebar .entry-content[ast-blocks-layout] .alignfull,
        .ast-plain-container.ast-left-sidebar .entry-content[ast-blocks-layout] .alignfull {
            margin-left: -60px;
            margin-right: -60px;
        }
    }

    @media(min-width: 544px) {
        .entry-content>.alignleft {
            margin-right: 20px;
        }

        .entry-content>.alignright {
            margin-left: 20px;
        }
    }

    @media (max-width:544px) {
        .wp-block-columns .wp-block-column:not(:last-child) {
            margin-bottom: 20px;
        }

        .wp-block-latest-posts {
            margin: 0;
        }
    }

    @media(max-width: 600px) {

        .entry-content .wp-block-media-text .wp-block-media-text__content,
        .entry-content .wp-block-media-text.has-media-on-the-right .wp-block-media-text__content {
            padding: 8% 0 0;
        }

        .entry-content .wp-block-media-text.has-background .wp-block-media-text__content {
            padding: 8%;
        }
    }

    .ast-page-builder-template .entry-header {
        padding-left: 0;
    }

    .ast-narrow-container .site-content .wp-block-uagb-image--align-full .wp-block-uagb-image__figure {
        max-width: 100%;
        margin-left: auto;
        margin-right: auto;
    }

    .entry-content ul,
    .entry-content ol {
        padding: revert;
        margin: revert;
        padding-left: 20px;
    }

    :root .has-ast-global-color-0-color {
        color: var(--ast-global-color-0);
    }

    :root .has-ast-global-color-0-background-color {
        background-color: var(--ast-global-color-0);
    }

    :root .wp-block-button .has-ast-global-color-0-color {
        color: var(--ast-global-color-0);
    }

    :root .wp-block-button .has-ast-global-color-0-background-color {
        background-color: var(--ast-global-color-0);
    }

    :root .has-ast-global-color-1-color {
        color: var(--ast-global-color-1);
    }

    :root .has-ast-global-color-1-background-color {
        background-color: var(--ast-global-color-1);
    }

    :root .wp-block-button .has-ast-global-color-1-color {
        color: var(--ast-global-color-1);
    }

    :root .wp-block-button .has-ast-global-color-1-background-color {
        background-color: var(--ast-global-color-1);
    }

    :root .has-ast-global-color-2-color {
        color: var(--ast-global-color-2);
    }

    :root .has-ast-global-color-2-background-color {
        background-color: var(--ast-global-color-2);
    }

    :root .wp-block-button .has-ast-global-color-2-color {
        color: var(--ast-global-color-2);
    }

    :root .wp-block-button .has-ast-global-color-2-background-color {
        background-color: var(--ast-global-color-2);
    }

    :root .has-ast-global-color-3-color {
        color: var(--ast-global-color-3);
    }

    :root .has-ast-global-color-3-background-color {
        background-color: var(--ast-global-color-3);
    }

    :root .wp-block-button .has-ast-global-color-3-color {
        color: var(--ast-global-color-3);
    }

    :root .wp-block-button .has-ast-global-color-3-background-color {
        background-color: var(--ast-global-color-3);
    }

    :root .has-ast-global-color-4-color {
        color: var(--ast-global-color-4);
    }

    :root .has-ast-global-color-4-background-color {
        background-color: var(--ast-global-color-4);
    }

    :root .wp-block-button .has-ast-global-color-4-color {
        color: var(--ast-global-color-4);
    }

    :root .wp-block-button .has-ast-global-color-4-background-color {
        background-color: var(--ast-global-color-4);
    }

    :root .has-ast-global-color-5-color {
        color: var(--ast-global-color-5);
    }

    :root .has-ast-global-color-5-background-color {
        background-color: var(--ast-global-color-5);
    }

    :root .wp-block-button .has-ast-global-color-5-color {
        color: var(--ast-global-color-5);
    }

    :root .wp-block-button .has-ast-global-color-5-background-color {
        background-color: var(--ast-global-color-5);
    }

    :root .has-ast-global-color-6-color {
        color: var(--ast-global-color-6);
    }

    :root .has-ast-global-color-6-background-color {
        background-color: var(--ast-global-color-6);
    }

    :root .wp-block-button .has-ast-global-color-6-color {
        color: var(--ast-global-color-6);
    }

    :root .wp-block-button .has-ast-global-color-6-background-color {
        background-color: var(--ast-global-color-6);
    }

    :root .has-ast-global-color-7-color {
        color: var(--ast-global-color-7);
    }

    :root .has-ast-global-color-7-background-color {
        background-color: var(--ast-global-color-7);
    }

    :root .wp-block-button .has-ast-global-color-7-color {
        color: var(--ast-global-color-7);
    }

    :root .wp-block-button .has-ast-global-color-7-background-color {
        background-color: var(--ast-global-color-7);
    }

    :root .has-ast-global-color-8-color {
        color: var(--ast-global-color-8);
    }

    :root .has-ast-global-color-8-background-color {
        background-color: var(--ast-global-color-8);
    }

    :root .wp-block-button .has-ast-global-color-8-color {
        color: var(--ast-global-color-8);
    }

    :root .wp-block-button .has-ast-global-color-8-background-color {
        background-color: var(--ast-global-color-8);
    }

    :root {
        --ast-global-color-0: #046bd2;
        --ast-global-color-1: #045cb4;
        --ast-global-color-2: #1e293b;
        --ast-global-color-3: #334155;
        --ast-global-color-4: #F0F5FA;
        --ast-global-color-5: #FFFFFF;
        --ast-global-color-6: #D1D5DB;
        --ast-global-color-7: #111111;
        --ast-global-color-8: #111111;
    }

    :root {
        --ast-border-color: var(--ast-global-color-6);
    }

    .ast-single-entry-banner {
        -js-display: flex;
        display: flex;
        flex-direction: column;
        justify-content: center;
        text-align: center;
        position: relative;
        background: #eeeeee;
    }

    .ast-single-entry-banner[data-banner-layout="layout-1"] {
        max-width: 1200px;
        background: inherit;
        padding: 20px 0;
    }

    .ast-single-entry-banner[data-banner-width-type="custom"] {
        margin: 0 auto;
        width: 100%;
    }

    .ast-single-entry-banner+.site-content .entry-header {
        margin-bottom: 0;
    }

    .site .ast-author-avatar {
        --ast-author-avatar-size: ;
    }

    a.ast-underline-text {
        text-decoration: underline;
    }

    .ast-container>.ast-terms-link {
        position: relative;
        display: block;
    }

    a.ast-button.ast-badge-tax {
        padding: 4px 8px;
        border-radius: 3px;
        font-size: inherit;
    }

    header.entry-header .entry-title {
        font-weight: 600;
        font-size: 32px;
        font-size: 2rem;
    }

    header.entry-header>*:not(:last-child) {
        margin-bottom: 10px;
    }

    header.entry-header .post-thumb-img-content {
        text-align: center;
    }

    header.entry-header .post-thumb img,
    .ast-single-post-featured-section.post-thumb img {
        aspect-ratio: 16/9;
        width: 100%;
        height: 100%;
    }

    .ast-archive-entry-banner {
        -js-display: flex;
        display: flex;
        flex-direction: column;
        justify-content: center;
        text-align: center;
        position: relative;
        background: #eeeeee;
    }

    .ast-archive-entry-banner[data-banner-width-type="custom"] {
        margin: 0 auto;
        width: 100%;
    }

    .ast-archive-entry-banner[data-banner-layout="layout-1"] {
        background: inherit;
        padding: 20px 0;
        text-align: left;
    }

    body.archive .ast-archive-description {
        max-width: 1200px;
        width: 100%;
        text-align: left;
        padding-top: 3em;
        padding-right: 3em;
        padding-bottom: 3em;
        padding-left: 3em;
    }

    body.archive .ast-archive-description .ast-archive-title,
    body.archive .ast-archive-description .ast-archive-title * {
        font-weight: 600;
        font-size: 32px;
        font-size: 2rem;
    }

    body.archive .ast-archive-description>*:not(:last-child) {
        margin-bottom: 10px;
    }

    @media (max-width:921px) {
        body.archive .ast-archive-description {
            text-align: left;
        }
    }

    @media (max-width:544px) {
        body.archive .ast-archive-description {
            text-align: left;
        }
    }

    .ast-breadcrumbs .trail-browse,
    .ast-breadcrumbs .trail-items,
    .ast-breadcrumbs .trail-items li {
        display: inline-block;
        margin: 0;
        padding: 0;
        border: none;
        background: inherit;
        text-indent: 0;
        text-decoration: none;
    }

    .ast-breadcrumbs .trail-browse {
        font-size: inherit;
        font-style: inherit;
        font-weight: inherit;
        color: inherit;
    }

    .ast-breadcrumbs .trail-items {
        list-style: none;
    }

    .trail-items li::after {
        padding: 0 0.3em;
        content: "\00bb";
    }

    .trail-items li:last-of-type::after {
        display: none;
    }

    h1,
    .entry-content h1,
    h2,
    .entry-content h2,
    h3,
    .entry-content h3,
    h4,
    .entry-content h4,
    h5,
    .entry-content h5,
    h6,
    .entry-content h6 {
        color: var(--ast-global-color-2);
    }

    .entry-title a {
        color: var(--ast-global-color-2);
    }

    @media (max-width:921px) {

        .ast-builder-grid-row-container.ast-builder-grid-row-tablet-3-firstrow .ast-builder-grid-row>*:first-child,
        .ast-builder-grid-row-container.ast-builder-grid-row-tablet-3-lastrow .ast-builder-grid-row>*:last-child {
            grid-column: 1 / -1;
        }
    }

    @media (max-width:544px) {

        .ast-builder-grid-row-container.ast-builder-grid-row-mobile-3-firstrow .ast-builder-grid-row>*:first-child,
        .ast-builder-grid-row-container.ast-builder-grid-row-mobile-3-lastrow .ast-builder-grid-row>*:last-child {
            grid-column: 1 / -1;
        }
    }

    .ast-builder-layout-element[data-section="title_tagline"] {
        display: flex;
    }

    @media (max-width:921px) {
        .ast-header-break-point .ast-builder-layout-element[data-section="title_tagline"] {
            display: flex;
        }
    }

    @media (max-width:544px) {
        .ast-header-break-point .ast-builder-layout-element[data-section="title_tagline"] {
            display: flex;
        }
    }

    .ast-builder-menu-1 {
        font-family: inherit;
        font-weight: inherit;
    }

    .ast-builder-menu-1 .menu-item>.menu-link {
        color: var(--ast-global-color-3);
    }

    .ast-builder-menu-1 .menu-item>.ast-menu-toggle {
        color: var(--ast-global-color-3);
    }

    .ast-builder-menu-1 .menu-item:hover>.menu-link,
    .ast-builder-menu-1 .inline-on-mobile .menu-item:hover>.ast-menu-toggle {
        color: var(--ast-global-color-1);
    }

    .ast-builder-menu-1 .menu-item:hover>.ast-menu-toggle {
        color: var(--ast-global-color-1);
    }

    .ast-builder-menu-1 .menu-item.current-menu-item>.menu-link,
    .ast-builder-menu-1 .inline-on-mobile .menu-item.current-menu-item>.ast-menu-toggle,
    .ast-builder-menu-1 .current-menu-ancestor>.menu-link {
        color: var(--ast-global-color-1);
    }

    .ast-builder-menu-1 .menu-item.current-menu-item>.ast-menu-toggle {
        color: var(--ast-global-color-1);
    }

    .ast-builder-menu-1 .sub-menu,
    .ast-builder-menu-1 .inline-on-mobile .sub-menu {
        border-top-width: 2px;
        border-bottom-width: 0px;
        border-right-width: 0px;
        border-left-width: 0px;
        border-color: var(--ast-global-color-0);
        border-style: solid;
    }

    .ast-builder-menu-1 .main-header-menu>.menu-item>.sub-menu,
    .ast-builder-menu-1 .main-header-menu>.menu-item>.astra-full-megamenu-wrapper {
        margin-top: 0px;
    }

    .ast-desktop .ast-builder-menu-1 .main-header-menu>.menu-item>.sub-menu:before,
    .ast-desktop .ast-builder-menu-1 .main-header-menu>.menu-item>.astra-full-megamenu-wrapper:before {
        height: calc(0px + 5px);
    }

    .ast-desktop .ast-builder-menu-1 .menu-item .sub-menu .menu-link {
        border-style: none;
    }

    @media (max-width:921px) {
        .ast-header-break-point .ast-builder-menu-1 .menu-item.menu-item-has-children>.ast-menu-toggle {
            top: 0;
        }

        .ast-builder-menu-1 .inline-on-mobile .menu-item.menu-item-has-children>.ast-menu-toggle {
            right: -15px;
        }

        .ast-builder-menu-1 .menu-item-has-children>.menu-link:after {
            content: unset;
        }

        .ast-builder-menu-1 .main-header-menu>.menu-item>.sub-menu,
        .ast-builder-menu-1 .main-header-menu>.menu-item>.astra-full-megamenu-wrapper {
            margin-top: 0;
        }
    }

    @media (max-width:544px) {
        .ast-header-break-point .ast-builder-menu-1 .menu-item.menu-item-has-children>.ast-menu-toggle {
            top: 0;
        }

        .ast-builder-menu-1 .main-header-menu>.menu-item>.sub-menu,
        .ast-builder-menu-1 .main-header-menu>.menu-item>.astra-full-megamenu-wrapper {
            margin-top: 0;
        }
    }

    .ast-builder-menu-1 {
        display: flex;
    }

    @media (max-width:921px) {
        .ast-header-break-point .ast-builder-menu-1 {
            display: flex;
        }
    }

    @media (max-width:544px) {
        .ast-header-break-point .ast-builder-menu-1 {
            display: flex;
        }
    }

    .site-below-footer-wrap {
        padding-top: 20px;
        padding-bottom: 20px;
    }

    .site-below-footer-wrap[data-section="section-below-footer-builder"] {
        background-color: var(--ast-global-color-5);
        ;
        background-image: none;
        ;
        min-height: 60px;
        border-style: solid;
        border-width: 0px;
        border-top-width: 1px;
        border-top-color: #eaeaea;
    }

    .site-below-footer-wrap[data-section="section-below-footer-builder"] .ast-builder-grid-row {
        max-width: 1200px;
        min-height: 60px;
        margin-left: auto;
        margin-right: auto;
    }

    .site-below-footer-wrap[data-section="section-below-footer-builder"] .ast-builder-grid-row,
    .site-below-footer-wrap[data-section="section-below-footer-builder"] .site-footer-section {
        align-items: center;
    }

    .site-below-footer-wrap[data-section="section-below-footer-builder"].ast-footer-row-inline .site-footer-section {
        display: flex;
        margin-bottom: 0;
    }

    .ast-builder-grid-row-full .ast-builder-grid-row {
        grid-template-columns: 1fr;
    }

    @media (max-width:921px) {
        .site-below-footer-wrap[data-section="section-below-footer-builder"].ast-footer-row-tablet-inline .site-footer-section {
            display: flex;
            margin-bottom: 0;
        }

        .site-below-footer-wrap[data-section="section-below-footer-builder"].ast-footer-row-tablet-stack .site-footer-section {
            display: block;
            margin-bottom: 10px;
        }

        .ast-builder-grid-row-container.ast-builder-grid-row-tablet-full .ast-builder-grid-row {
            grid-template-columns: 1fr;
        }
    }

    @media (max-width:544px) {
        .site-below-footer-wrap[data-section="section-below-footer-builder"].ast-footer-row-mobile-inline .site-footer-section {
            display: flex;
            margin-bottom: 0;
        }

        .site-below-footer-wrap[data-section="section-below-footer-builder"].ast-footer-row-mobile-stack .site-footer-section {
            display: block;
            margin-bottom: 10px;
        }

        .ast-builder-grid-row-container.ast-builder-grid-row-mobile-full .ast-builder-grid-row {
            grid-template-columns: 1fr;
        }
    }

    .site-below-footer-wrap[data-section="section-below-footer-builder"] {
        display: none;
    }

    @media (max-width:921px) {
        .ast-header-break-point .site-below-footer-wrap[data-section="section-below-footer-builder"] {
            display: none;
        }
    }

    @media (max-width:544px) {
        .ast-header-break-point .site-below-footer-wrap[data-section="section-below-footer-builder"] {
            display: none;
        }
    }

    .ast-footer-copyright {
        text-align: center;
    }

    .ast-footer-copyright {
        color: var(--ast-global-color-3);
    }

    @media (max-width:921px) {
        .ast-footer-copyright {
            text-align: center;
        }
    }

    @media (max-width:544px) {
        .ast-footer-copyright {
            text-align: center;
        }
    }

    .ast-footer-copyright {
        font-size: 16px;
        font-size: 1rem;
    }

    .ast-footer-copyright.ast-builder-layout-element {
        display: flex;
    }

    @media (max-width:921px) {
        .ast-header-break-point .ast-footer-copyright.ast-builder-layout-element {
            display: flex;
        }
    }

    @media (max-width:544px) {
        .ast-header-break-point .ast-footer-copyright.ast-builder-layout-element {
            display: flex;
        }
    }

    .footer-widget-area.widget-area.site-footer-focus-item {
        width: auto;
    }

    .elementor-widget-heading .elementor-heading-title {
        margin: 0;
    }

    .elementor-page .ast-menu-toggle {
        color: unset !important;
        background: unset !important;
    }

    .elementor-post.elementor-grid-item.hentry {
        margin-bottom: 0;
    }

    .woocommerce div.product .elementor-element.elementor-products-grid .related.products ul.products li.product,
    .elementor-element .elementor-wc-products .woocommerce[class*='columns-'] ul.products li.product {
        width: auto;
        margin: 0;
        float: none;
    }

    .elementor-toc__list-wrapper {
        margin: 0;
    }

    body .elementor hr {
        background-color: #ccc;
        margin: 0;
    }

    .ast-left-sidebar .elementor-section.elementor-section-stretched,
    .ast-right-sidebar .elementor-section.elementor-section-stretched {
        max-width: 100%;
        left: 0 !important;
    }

    .elementor-posts-container [CLASS*="ast-width-"] {
        width: 100%;
    }

    .elementor-template-full-width .ast-container {
        display: block;
    }

    .elementor-screen-only,
    .screen-reader-text,
    .screen-reader-text span,
    .ui-helper-hidden-accessible {
        top: 0 !important;
    }

    @media (max-width:544px) {
        .elementor-element .elementor-wc-products .woocommerce[class*="columns-"] ul.products li.product {
            width: auto;
            margin: 0;
        }

        .elementor-element .woocommerce .woocommerce-result-count {
            float: none;
        }
    }

    .ast-header-break-point .main-header-bar {
        border-bottom-width: 1px;
    }

    @media (min-width:922px) {
        .main-header-bar {
            border-bottom-width: 1px;
        }
    }

    .main-header-menu .menu-item,
    #astra-footer-menu .menu-item,
    .main-header-bar .ast-masthead-custom-menu-items {
        -js-display: flex;
        display: flex;
        -webkit-box-pack: center;
        -webkit-justify-content: center;
        -moz-box-pack: center;
        -ms-flex-pack: center;
        justify-content: center;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -moz-box-orient: vertical;
        -moz-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
    }

    .main-header-menu>.menu-item>.menu-link,
    #astra-footer-menu>.menu-item>.menu-link {
        height: 100%;
        -webkit-box-align: center;
        -webkit-align-items: center;
        -moz-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        -js-display: flex;
        display: flex;
    }

    .ast-header-break-point .main-navigation ul .menu-item .menu-link .icon-arrow:first-of-type svg {
        top: .2em;
        margin-top: 0px;
        margin-left: 0px;
        width: .65em;
        transform: translate(0, -2px) rotateZ(270deg);
    }

    .ast-mobile-popup-content .ast-submenu-expanded>.ast-menu-toggle {
        transform: rotateX(180deg);
        overflow-y: auto;
    }

    @media (min-width:922px) {
        .ast-builder-menu .main-navigation>ul>li:last-child a {
            margin-right: 0;
        }
    }

    .ast-separate-container .ast-article-inner {
        background-color: var(--ast-global-color-5);
        ;
    }

    @media (max-width:921px) {
        .ast-separate-container .ast-article-inner {
            background-color: var(--ast-global-color-5);
            ;
        }
    }

    @media (max-width:544px) {
        .ast-separate-container .ast-article-inner {
            background-color: var(--ast-global-color-5);
            ;
        }
    }

    .ast-separate-container .ast-article-single:not(.ast-related-post),
    .woocommerce.ast-separate-container .ast-woocommerce-container,
    .ast-separate-container .error-404,
    .ast-separate-container .no-results,
    .single.ast-separate-container .site-main .ast-author-meta,
    .ast-separate-container .related-posts-title-wrapper,
    .ast-separate-container .comments-count-wrapper,
    .ast-box-layout.ast-plain-container .site-content,
    .ast-padded-layout.ast-plain-container .site-content,
    .ast-separate-container .ast-archive-description,
    .ast-separate-container .comments-area {
        background-color: var(--ast-global-color-5);
        ;
    }

    @media (max-width:921px) {

        .ast-separate-container .ast-article-single:not(.ast-related-post),
        .woocommerce.ast-separate-container .ast-woocommerce-container,
        .ast-separate-container .error-404,
        .ast-separate-container .no-results,
        .single.ast-separate-container .site-main .ast-author-meta,
        .ast-separate-container .related-posts-title-wrapper,
        .ast-separate-container .comments-count-wrapper,
        .ast-box-layout.ast-plain-container .site-content,
        .ast-padded-layout.ast-plain-container .site-content,
        .ast-separate-container .ast-archive-description {
            background-color: var(--ast-global-color-5);
            ;
        }
    }

    @media (max-width:544px) {

        .ast-separate-container .ast-article-single:not(.ast-related-post),
        .woocommerce.ast-separate-container .ast-woocommerce-container,
        .ast-separate-container .error-404,
        .ast-separate-container .no-results,
        .single.ast-separate-container .site-main .ast-author-meta,
        .ast-separate-container .related-posts-title-wrapper,
        .ast-separate-container .comments-count-wrapper,
        .ast-box-layout.ast-plain-container .site-content,
        .ast-padded-layout.ast-plain-container .site-content,
        .ast-separate-container .ast-archive-description {
            background-color: var(--ast-global-color-5);
            ;
        }
    }

    .ast-separate-container.ast-two-container #secondary .widget {
        background-color: var(--ast-global-color-5);
        ;
    }

    @media (max-width:921px) {
        .ast-separate-container.ast-two-container #secondary .widget {
            background-color: var(--ast-global-color-5);
            ;
        }
    }

    @media (max-width:544px) {
        .ast-separate-container.ast-two-container #secondary .widget {
            background-color: var(--ast-global-color-5);
            ;
        }
    }

    .ast-plain-container,
    .ast-page-builder-template {
        background-color: var(--ast-global-color-5);
        ;
    }

    @media (max-width:921px) {

        .ast-plain-container,
        .ast-page-builder-template {
            background-color: var(--ast-global-color-5);
            ;
        }
    }

    @media (max-width:544px) {

        .ast-plain-container,
        .ast-page-builder-template {
            background-color: var(--ast-global-color-5);
            ;
        }
    }

    #ast-scroll-top {
        display: none;
        position: fixed;
        text-align: center;
        cursor: pointer;
        z-index: 99;
        width: 2.1em;
        height: 2.1em;
        line-height: 2.1;
        color: #ffffff;
        border-radius: 2px;
        content: "";
        outline: inherit;
    }

    @media (min-width: 769px) {
        #ast-scroll-top {
            content: "769";
        }
    }

    #ast-scroll-top .ast-icon.icon-arrow svg {
        margin-left: 0px;
        vertical-align: middle;
        transform: translate(0, -20%) rotate(180deg);
        width: 1.6em;
    }

    .ast-scroll-to-top-right {
        right: 30px;
        bottom: 30px;
    }

    .ast-scroll-to-top-left {
        left: 30px;
        bottom: 30px;
    }

    #ast-scroll-top {
        background-color: var(--ast-global-color-0);
        font-size: 15px;
    }

    @media (max-width:921px) {
        #ast-scroll-top .ast-icon.icon-arrow svg {
            width: 1em;
        }
    }

    .ast-mobile-header-content>*,
    .ast-desktop-header-content>* {
        padding: 10px 0;
        height: auto;
    }

    .ast-mobile-header-content>*:first-child,
    .ast-desktop-header-content>*:first-child {
        padding-top: 10px;
    }

    .ast-mobile-header-content>.ast-builder-menu,
    .ast-desktop-header-content>.ast-builder-menu {
        padding-top: 0;
    }

    .ast-mobile-header-content>*:last-child,
    .ast-desktop-header-content>*:last-child {
        padding-bottom: 0;
    }

    .ast-mobile-header-content .ast-search-menu-icon.ast-inline-search label,
    .ast-desktop-header-content .ast-search-menu-icon.ast-inline-search label {
        width: 100%;
    }

    .ast-desktop-header-content .main-header-bar-navigation .ast-submenu-expanded>.ast-menu-toggle::before {
        transform: rotateX(180deg);
    }

    #ast-desktop-header .ast-desktop-header-content,
    .ast-mobile-header-content .ast-search-icon,
    .ast-desktop-header-content .ast-search-icon,
    .ast-mobile-header-wrap .ast-mobile-header-content,
    .ast-main-header-nav-open.ast-popup-nav-open .ast-mobile-header-wrap .ast-mobile-header-content,
    .ast-main-header-nav-open.ast-popup-nav-open .ast-desktop-header-content {
        display: none;
    }

    .ast-main-header-nav-open.ast-header-break-point #ast-desktop-header .ast-desktop-header-content,
    .ast-main-header-nav-open.ast-header-break-point .ast-mobile-header-wrap .ast-mobile-header-content {
        display: block;
    }

    .ast-desktop .ast-desktop-header-content .astra-menu-animation-slide-up>.menu-item>.sub-menu,
    .ast-desktop .ast-desktop-header-content .astra-menu-animation-slide-up>.menu-item .menu-item>.sub-menu,
    .ast-desktop .ast-desktop-header-content .astra-menu-animation-slide-down>.menu-item>.sub-menu,
    .ast-desktop .ast-desktop-header-content .astra-menu-animation-slide-down>.menu-item .menu-item>.sub-menu,
    .ast-desktop .ast-desktop-header-content .astra-menu-animation-fade>.menu-item>.sub-menu,
    .ast-desktop .ast-desktop-header-content .astra-menu-animation-fade>.menu-item .menu-item>.sub-menu {
        opacity: 1;
        visibility: visible;
    }

    .ast-hfb-header.ast-default-menu-enable.ast-header-break-point .ast-mobile-header-wrap .ast-mobile-header-content .main-header-bar-navigation {
        width: unset;
        margin: unset;
    }

    .ast-mobile-header-content.content-align-flex-end .main-header-bar-navigation .menu-item-has-children>.ast-menu-toggle,
    .ast-desktop-header-content.content-align-flex-end .main-header-bar-navigation .menu-item-has-children>.ast-menu-toggle {
        left: calc(20px - 0.907em);
        right: auto;
    }

    .ast-mobile-header-content .ast-search-menu-icon,
    .ast-mobile-header-content .ast-search-menu-icon.slide-search,
    .ast-desktop-header-content .ast-search-menu-icon,
    .ast-desktop-header-content .ast-search-menu-icon.slide-search {
        width: 100%;
        position: relative;
        display: block;
        right: auto;
        transform: none;
    }

    .ast-mobile-header-content .ast-search-menu-icon.slide-search .search-form,
    .ast-mobile-header-content .ast-search-menu-icon .search-form,
    .ast-desktop-header-content .ast-search-menu-icon.slide-search .search-form,
    .ast-desktop-header-content .ast-search-menu-icon .search-form {
        right: 0;
        visibility: visible;
        opacity: 1;
        position: relative;
        top: auto;
        transform: none;
        padding: 0;
        display: block;
        overflow: hidden;
    }

    .ast-mobile-header-content .ast-search-menu-icon.ast-inline-search .search-field,
    .ast-mobile-header-content .ast-search-menu-icon .search-field,
    .ast-desktop-header-content .ast-search-menu-icon.ast-inline-search .search-field,
    .ast-desktop-header-content .ast-search-menu-icon .search-field {
        width: 100%;
        padding-right: 5.5em;
    }

    .ast-mobile-header-content .ast-search-menu-icon .search-submit,
    .ast-desktop-header-content .ast-search-menu-icon .search-submit {
        display: block;
        position: absolute;
        height: 100%;
        top: 0;
        right: 0;
        padding: 0 1em;
        border-radius: 0;
    }

    .ast-hfb-header.ast-default-menu-enable.ast-header-break-point .ast-mobile-header-wrap .ast-mobile-header-content .main-header-bar-navigation ul .sub-menu .menu-link {
        padding-left: 30px;
    }

    .ast-hfb-header.ast-default-menu-enable.ast-header-break-point .ast-mobile-header-wrap .ast-mobile-header-content .main-header-bar-navigation .sub-menu .menu-item .menu-item .menu-link {
        padding-left: 40px;
    }

    .ast-mobile-popup-drawer.active .ast-mobile-popup-inner {
        background-color: #ffffff;
        ;
    }

    .ast-mobile-header-wrap .ast-mobile-header-content,
    .ast-desktop-header-content {
        background-color: #ffffff;
        ;
    }

    .ast-mobile-popup-content>*,
    .ast-mobile-header-content>*,
    .ast-desktop-popup-content>*,
    .ast-desktop-header-content>* {
        padding-top: 0px;
        padding-bottom: 0px;
    }

    .content-align-flex-start .ast-builder-layout-element {
        justify-content: flex-start;
    }

    .content-align-flex-start .main-header-menu {
        text-align: left;
    }

    .ast-mobile-popup-drawer.active .menu-toggle-close {
        color: #3a3a3a;
    }

    .ast-mobile-header-wrap .ast-primary-header-bar,
    .ast-primary-header-bar .site-primary-header-wrap {
        min-height: 80px;
    }

    .ast-desktop .ast-primary-header-bar .main-header-menu>.menu-item {
        line-height: 80px;
    }

    .ast-header-break-point #masthead .ast-mobile-header-wrap .ast-primary-header-bar,
    .ast-header-break-point #masthead .ast-mobile-header-wrap .ast-below-header-bar,
    .ast-header-break-point #masthead .ast-mobile-header-wrap .ast-above-header-bar {
        padding-left: 20px;
        padding-right: 20px;
    }

    .ast-header-break-point .ast-primary-header-bar {
        border-bottom-width: 1px;
        border-bottom-color: #eaeaea;
        border-bottom-style: solid;
    }

    @media (min-width:922px) {
        .ast-primary-header-bar {
            border-bottom-width: 1px;
            border-bottom-color: #eaeaea;
            border-bottom-style: solid;
        }
    }

    .ast-primary-header-bar {
        background-color: #ffffff;
        ;
    }

    .ast-primary-header-bar {
        display: block;
    }

    @media (max-width:921px) {
        .ast-header-break-point .ast-primary-header-bar {
            display: grid;
        }
    }

    @media (max-width:544px) {
        .ast-header-break-point .ast-primary-header-bar {
            display: grid;
        }
    }

    [data-section="section-header-mobile-trigger"] .ast-button-wrap .ast-mobile-menu-trigger-minimal {
        color: var(--ast-global-color-0);
        border: none;
        background: transparent;
    }

    [data-section="section-header-mobile-trigger"] .ast-button-wrap .mobile-menu-toggle-icon .ast-mobile-svg {
        width: 20px;
        height: 20px;
        fill: var(--ast-global-color-0);
    }

    [data-section="section-header-mobile-trigger"] .ast-button-wrap .mobile-menu-wrap .mobile-menu {
        color: var(--ast-global-color-0);
    }

    .ast-builder-menu-mobile .main-navigation .main-header-menu .menu-item>.menu-link {
        color: var(--ast-global-color-3);
    }

    .ast-builder-menu-mobile .main-navigation .main-header-menu .menu-item>.ast-menu-toggle {
        color: var(--ast-global-color-3);
    }

    .ast-builder-menu-mobile .main-navigation .menu-item:hover>.menu-link,
    .ast-builder-menu-mobile .main-navigation .inline-on-mobile .menu-item:hover>.ast-menu-toggle {
        color: var(--ast-global-color-1);
    }

    .ast-builder-menu-mobile .main-navigation .menu-item:hover>.ast-menu-toggle {
        color: var(--ast-global-color-1);
    }

    .ast-builder-menu-mobile .main-navigation .menu-item.current-menu-item>.menu-link,
    .ast-builder-menu-mobile .main-navigation .inline-on-mobile .menu-item.current-menu-item>.ast-menu-toggle,
    .ast-builder-menu-mobile .main-navigation .menu-item.current-menu-ancestor>.menu-link,
    .ast-builder-menu-mobile .main-navigation .menu-item.current-menu-ancestor>.ast-menu-toggle {
        color: var(--ast-global-color-1);
    }

    .ast-builder-menu-mobile .main-navigation .menu-item.current-menu-item>.ast-menu-toggle {
        color: var(--ast-global-color-1);
    }

    .ast-builder-menu-mobile .main-navigation .menu-item.menu-item-has-children>.ast-menu-toggle {
        top: 0;
    }

    .ast-builder-menu-mobile .main-navigation .menu-item-has-children>.menu-link:after {
        content: unset;
    }

    .ast-hfb-header .ast-builder-menu-mobile .main-header-menu,
    .ast-hfb-header .ast-builder-menu-mobile .main-navigation .menu-item .menu-link,
    .ast-hfb-header .ast-builder-menu-mobile .main-navigation .menu-item .sub-menu .menu-link {
        border-style: none;
    }

    .ast-builder-menu-mobile .main-navigation .menu-item.menu-item-has-children>.ast-menu-toggle {
        top: 0;
    }

    @media (max-width:921px) {
        .ast-builder-menu-mobile .main-navigation .main-header-menu .menu-item>.menu-link {
            color: var(--ast-global-color-3);
        }

        .ast-builder-menu-mobile .main-navigation .menu-item>.ast-menu-toggle {
            color: var(--ast-global-color-3);
        }

        .ast-builder-menu-mobile .main-navigation .menu-item:hover>.menu-link,
        .ast-builder-menu-mobile .main-navigation .inline-on-mobile .menu-item:hover>.ast-menu-toggle {
            color: var(--ast-global-color-1);
            background: var(--ast-global-color-4);
        }

        .ast-builder-menu-mobile .main-navigation .menu-item:hover>.ast-menu-toggle {
            color: var(--ast-global-color-1);
        }

        .ast-builder-menu-mobile .main-navigation .menu-item.current-menu-item>.menu-link,
        .ast-builder-menu-mobile .main-navigation .inline-on-mobile .menu-item.current-menu-item>.ast-menu-toggle,
        .ast-builder-menu-mobile .main-navigation .menu-item.current-menu-ancestor>.menu-link,
        .ast-builder-menu-mobile .main-navigation .menu-item.current-menu-ancestor>.ast-menu-toggle {
            color: var(--ast-global-color-1);
            background: var(--ast-global-color-4);
        }

        .ast-builder-menu-mobile .main-navigation .menu-item.current-menu-item>.ast-menu-toggle {
            color: var(--ast-global-color-1);
        }

        .ast-builder-menu-mobile .main-navigation .menu-item.menu-item-has-children>.ast-menu-toggle {
            top: 0;
        }

        .ast-builder-menu-mobile .main-navigation .menu-item-has-children>.menu-link:after {
            content: unset;
        }

        .ast-builder-menu-mobile .main-navigation .main-header-menu,
        .ast-builder-menu-mobile .main-navigation .main-header-menu .sub-menu {
            background-color: var(--ast-global-color-5);
            ;
        }
    }

    @media (max-width:544px) {
        .ast-builder-menu-mobile .main-navigation .menu-item.menu-item-has-children>.ast-menu-toggle {
            top: 0;
        }
    }

    .ast-builder-menu-mobile .main-navigation {
        display: block;
    }

    @media (max-width:921px) {
        .ast-header-break-point .ast-builder-menu-mobile .main-navigation {
            display: block;
        }
    }

    @media (max-width:544px) {
        .ast-header-break-point .ast-builder-menu-mobile .main-navigation {
            display: block;
        }
    }

    :root {
        --e-global-color-astglobalcolor0: #046bd2;
        --e-global-color-astglobalcolor1: #045cb4;
        --e-global-color-astglobalcolor2: #1e293b;
        --e-global-color-astglobalcolor3: #334155;
        --e-global-color-astglobalcolor4: #F0F5FA;
        --e-global-color-astglobalcolor5: #FFFFFF;
        --e-global-color-astglobalcolor6: #D1D5DB;
        --e-global-color-astglobalcolor7: #111111;
        --e-global-color-astglobalcolor8: #111111;
    }
    </style>
    <link rel="stylesheet" id="font-awesome-css" href="./homeassets/font-awesome.min.css" media="all">
    <style id="wp-emoji-styles-inline-css">
    img.wp-smiley,
    img.emoji {
        display: inline !important;
        border: none !important;
        box-shadow: none !important;
        height: 1em !important;
        width: 1em !important;
        margin: 0 0.07em !important;
        vertical-align: -0.1em !important;
        background: none !important;
        padding: 0 !important;
    }
    </style>
    <style id="global-styles-inline-css">
    body {
        --wp--preset--color--black: #000000;
        --wp--preset--color--cyan-bluish-gray: #abb8c3;
        --wp--preset--color--white: #ffffff;
        --wp--preset--color--pale-pink: #f78da7;
        --wp--preset--color--vivid-red: #cf2e2e;
        --wp--preset--color--luminous-vivid-orange: #ff6900;
        --wp--preset--color--luminous-vivid-amber: #fcb900;
        --wp--preset--color--light-green-cyan: #7bdcb5;
        --wp--preset--color--vivid-green-cyan: #00d084;
        --wp--preset--color--pale-cyan-blue: #8ed1fc;
        --wp--preset--color--vivid-cyan-blue: #0693e3;
        --wp--preset--color--vivid-purple: #9b51e0;
        --wp--preset--color--ast-global-color-0: var(--ast-global-color-0);
        --wp--preset--color--ast-global-color-1: var(--ast-global-color-1);
        --wp--preset--color--ast-global-color-2: var(--ast-global-color-2);
        --wp--preset--color--ast-global-color-3: var(--ast-global-color-3);
        --wp--preset--color--ast-global-color-4: var(--ast-global-color-4);
        --wp--preset--color--ast-global-color-5: var(--ast-global-color-5);
        --wp--preset--color--ast-global-color-6: var(--ast-global-color-6);
        --wp--preset--color--ast-global-color-7: var(--ast-global-color-7);
        --wp--preset--color--ast-global-color-8: var(--ast-global-color-8);
        --wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg, rgba(6, 147, 227, 1) 0%, rgb(155, 81, 224) 100%);
        --wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg, rgb(122, 220, 180) 0%, rgb(0, 208, 130) 100%);
        --wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg, rgba(252, 185, 0, 1) 0%, rgba(255, 105, 0, 1) 100%);
        --wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg, rgba(255, 105, 0, 1) 0%, rgb(207, 46, 46) 100%);
        --wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg, rgb(238, 238, 238) 0%, rgb(169, 184, 195) 100%);
        --wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg, rgb(74, 234, 220) 0%, rgb(151, 120, 209) 20%, rgb(207, 42, 186) 40%, rgb(238, 44, 130) 60%, rgb(251, 105, 98) 80%, rgb(254, 248, 76) 100%);
        --wp--preset--gradient--blush-light-purple: linear-gradient(135deg, rgb(255, 206, 236) 0%, rgb(152, 150, 240) 100%);
        --wp--preset--gradient--blush-bordeaux: linear-gradient(135deg, rgb(254, 205, 165) 0%, rgb(254, 45, 45) 50%, rgb(107, 0, 62) 100%);
        --wp--preset--gradient--luminous-dusk: linear-gradient(135deg, rgb(255, 203, 112) 0%, rgb(199, 81, 192) 50%, rgb(65, 88, 208) 100%);
        --wp--preset--gradient--pale-ocean: linear-gradient(135deg, rgb(255, 245, 203) 0%, rgb(182, 227, 212) 50%, rgb(51, 167, 181) 100%);
        --wp--preset--gradient--electric-grass: linear-gradient(135deg, rgb(202, 248, 128) 0%, rgb(113, 206, 126) 100%);
        --wp--preset--gradient--midnight: linear-gradient(135deg, rgb(2, 3, 129) 0%, rgb(40, 116, 252) 100%);
        --wp--preset--font-size--small: 13px;
        --wp--preset--font-size--medium: 20px;
        --wp--preset--font-size--large: 36px;
        --wp--preset--font-size--x-large: 42px;
        --wp--preset--spacing--20: 0.44rem;
        --wp--preset--spacing--30: 0.67rem;
        --wp--preset--spacing--40: 1rem;
        --wp--preset--spacing--50: 1.5rem;
        --wp--preset--spacing--60: 2.25rem;
        --wp--preset--spacing--70: 3.38rem;
        --wp--preset--spacing--80: 5.06rem;
        --wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);
        --wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);
        --wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);
        --wp--preset--shadow--outlined: 6px 6px 0px -3px rgba(255, 255, 255, 1), 6px 6px rgba(0, 0, 0, 1);
        --wp--preset--shadow--crisp: 6px 6px 0px rgba(0, 0, 0, 1);
    }

    body {
        margin: 0;
        --wp--style--global--content-size: var(--wp--custom--ast-content-width-size);
        --wp--style--global--wide-size: var(--wp--custom--ast-wide-width-size);
    }

    .wp-site-blocks>.alignleft {
        float: left;
        margin-right: 2em;
    }

    .wp-site-blocks>.alignright {
        float: right;
        margin-left: 2em;
    }

    .wp-site-blocks>.aligncenter {
        justify-content: center;
        margin-left: auto;
        margin-right: auto;
    }

    :where(.wp-site-blocks)>* {
        margin-block-start: 24px;
        margin-block-end: 0;
    }

    :where(.wp-site-blocks)> :first-child:first-child {
        margin-block-start: 0;
    }

    :where(.wp-site-blocks)> :last-child:last-child {
        margin-block-end: 0;
    }

    body {
        --wp--style--block-gap: 24px;
    }

    :where(body .is-layout-flow)> :first-child:first-child {
        margin-block-start: 0;
    }

    :where(body .is-layout-flow)> :last-child:last-child {
        margin-block-end: 0;
    }

    :where(body .is-layout-flow)>* {
        margin-block-start: 24px;
        margin-block-end: 0;
    }

    :where(body .is-layout-constrained)> :first-child:first-child {
        margin-block-start: 0;
    }

    :where(body .is-layout-constrained)> :last-child:last-child {
        margin-block-end: 0;
    }

    :where(body .is-layout-constrained)>* {
        margin-block-start: 24px;
        margin-block-end: 0;
    }

    :where(body .is-layout-flex) {
        gap: 24px;
    }

    :where(body .is-layout-grid) {
        gap: 24px;
    }

    body .is-layout-flow>.alignleft {
        float: left;
        margin-inline-start: 0;
        margin-inline-end: 2em;
    }

    body .is-layout-flow>.alignright {
        float: right;
        margin-inline-start: 2em;
        margin-inline-end: 0;
    }

    body .is-layout-flow>.aligncenter {
        margin-left: auto !important;
        margin-right: auto !important;
    }

    body .is-layout-constrained>.alignleft {
        float: left;
        margin-inline-start: 0;
        margin-inline-end: 2em;
    }

    body .is-layout-constrained>.alignright {
        float: right;
        margin-inline-start: 2em;
        margin-inline-end: 0;
    }

    body .is-layout-constrained>.aligncenter {
        margin-left: auto !important;
        margin-right: auto !important;
    }

    body .is-layout-constrained> :where(:not(.alignleft):not(.alignright):not(.alignfull)) {
        max-width: var(--wp--style--global--content-size);
        margin-left: auto !important;
        margin-right: auto !important;
    }

    body .is-layout-constrained>.alignwide {
        max-width: var(--wp--style--global--wide-size);
    }

    body .is-layout-flex {
        display: flex;
    }

    body .is-layout-flex {
        flex-wrap: wrap;
        align-items: center;
    }

    body .is-layout-flex>* {
        margin: 0;
    }

    body .is-layout-grid {
        display: grid;
    }

    body .is-layout-grid>* {
        margin: 0;
    }

    body {
        padding-top: 0px;
        padding-right: 0px;
        padding-bottom: 0px;
        padding-left: 0px;
    }

    a:where(:not(.wp-element-button)) {
        text-decoration: none;
    }

    .wp-element-button,
    .wp-block-button__link {
        background-color: #32373c;
        border-width: 0;
        color: #fff;
        font-family: inherit;
        font-size: inherit;
        line-height: inherit;
        padding: calc(0.667em + 2px) calc(1.333em + 2px);
        text-decoration: none;
    }

    .has-black-color {
        color: var(--wp--preset--color--black) !important;
    }

    .has-cyan-bluish-gray-color {
        color: var(--wp--preset--color--cyan-bluish-gray) !important;
    }

    .has-white-color {
        color: var(--wp--preset--color--white) !important;
    }

    .has-pale-pink-color {
        color: var(--wp--preset--color--pale-pink) !important;
    }

    .has-vivid-red-color {
        color: var(--wp--preset--color--vivid-red) !important;
    }

    .has-luminous-vivid-orange-color {
        color: var(--wp--preset--color--luminous-vivid-orange) !important;
    }

    .has-luminous-vivid-amber-color {
        color: var(--wp--preset--color--luminous-vivid-amber) !important;
    }

    .has-light-green-cyan-color {
        color: var(--wp--preset--color--light-green-cyan) !important;
    }

    .has-vivid-green-cyan-color {
        color: var(--wp--preset--color--vivid-green-cyan) !important;
    }

    .has-pale-cyan-blue-color {
        color: var(--wp--preset--color--pale-cyan-blue) !important;
    }

    .has-vivid-cyan-blue-color {
        color: var(--wp--preset--color--vivid-cyan-blue) !important;
    }

    .has-vivid-purple-color {
        color: var(--wp--preset--color--vivid-purple) !important;
    }

    .has-ast-global-color-0-color {
        color: var(--wp--preset--color--ast-global-color-0) !important;
    }

    .has-ast-global-color-1-color {
        color: var(--wp--preset--color--ast-global-color-1) !important;
    }

    .has-ast-global-color-2-color {
        color: var(--wp--preset--color--ast-global-color-2) !important;
    }

    .has-ast-global-color-3-color {
        color: var(--wp--preset--color--ast-global-color-3) !important;
    }

    .has-ast-global-color-4-color {
        color: var(--wp--preset--color--ast-global-color-4) !important;
    }

    .has-ast-global-color-5-color {
        color: var(--wp--preset--color--ast-global-color-5) !important;
    }

    .has-ast-global-color-6-color {
        color: var(--wp--preset--color--ast-global-color-6) !important;
    }

    .has-ast-global-color-7-color {
        color: var(--wp--preset--color--ast-global-color-7) !important;
    }

    .has-ast-global-color-8-color {
        color: var(--wp--preset--color--ast-global-color-8) !important;
    }

    .has-black-background-color {
        background-color: var(--wp--preset--color--black) !important;
    }

    .has-cyan-bluish-gray-background-color {
        background-color: var(--wp--preset--color--cyan-bluish-gray) !important;
    }

    .has-white-background-color {
        background-color: var(--wp--preset--color--white) !important;
    }

    .has-pale-pink-background-color {
        background-color: var(--wp--preset--color--pale-pink) !important;
    }

    .has-vivid-red-background-color {
        background-color: var(--wp--preset--color--vivid-red) !important;
    }

    .has-luminous-vivid-orange-background-color {
        background-color: var(--wp--preset--color--luminous-vivid-orange) !important;
    }

    .has-luminous-vivid-amber-background-color {
        background-color: var(--wp--preset--color--luminous-vivid-amber) !important;
    }

    .has-light-green-cyan-background-color {
        background-color: var(--wp--preset--color--light-green-cyan) !important;
    }

    .has-vivid-green-cyan-background-color {
        background-color: var(--wp--preset--color--vivid-green-cyan) !important;
    }

    .has-pale-cyan-blue-background-color {
        background-color: var(--wp--preset--color--pale-cyan-blue) !important;
    }

    .has-vivid-cyan-blue-background-color {
        background-color: var(--wp--preset--color--vivid-cyan-blue) !important;
    }

    .has-vivid-purple-background-color {
        background-color: var(--wp--preset--color--vivid-purple) !important;
    }

    .has-ast-global-color-0-background-color {
        background-color: var(--wp--preset--color--ast-global-color-0) !important;
    }

    .has-ast-global-color-1-background-color {
        background-color: var(--wp--preset--color--ast-global-color-1) !important;
    }

    .has-ast-global-color-2-background-color {
        background-color: var(--wp--preset--color--ast-global-color-2) !important;
    }

    .has-ast-global-color-3-background-color {
        background-color: var(--wp--preset--color--ast-global-color-3) !important;
    }

    .has-ast-global-color-4-background-color {
        background-color: var(--wp--preset--color--ast-global-color-4) !important;
    }

    .has-ast-global-color-5-background-color {
        background-color: var(--wp--preset--color--ast-global-color-5) !important;
    }

    .has-ast-global-color-6-background-color {
        background-color: var(--wp--preset--color--ast-global-color-6) !important;
    }

    .has-ast-global-color-7-background-color {
        background-color: var(--wp--preset--color--ast-global-color-7) !important;
    }

    .has-ast-global-color-8-background-color {
        background-color: var(--wp--preset--color--ast-global-color-8) !important;
    }

    .has-black-border-color {
        border-color: var(--wp--preset--color--black) !important;
    }

    .has-cyan-bluish-gray-border-color {
        border-color: var(--wp--preset--color--cyan-bluish-gray) !important;
    }

    .has-white-border-color {
        border-color: var(--wp--preset--color--white) !important;
    }

    .has-pale-pink-border-color {
        border-color: var(--wp--preset--color--pale-pink) !important;
    }

    .has-vivid-red-border-color {
        border-color: var(--wp--preset--color--vivid-red) !important;
    }

    .has-luminous-vivid-orange-border-color {
        border-color: var(--wp--preset--color--luminous-vivid-orange) !important;
    }

    .has-luminous-vivid-amber-border-color {
        border-color: var(--wp--preset--color--luminous-vivid-amber) !important;
    }

    .has-light-green-cyan-border-color {
        border-color: var(--wp--preset--color--light-green-cyan) !important;
    }

    .has-vivid-green-cyan-border-color {
        border-color: var(--wp--preset--color--vivid-green-cyan) !important;
    }

    .has-pale-cyan-blue-border-color {
        border-color: var(--wp--preset--color--pale-cyan-blue) !important;
    }

    .has-vivid-cyan-blue-border-color {
        border-color: var(--wp--preset--color--vivid-cyan-blue) !important;
    }

    .has-vivid-purple-border-color {
        border-color: var(--wp--preset--color--vivid-purple) !important;
    }

    .has-ast-global-color-0-border-color {
        border-color: var(--wp--preset--color--ast-global-color-0) !important;
    }

    .has-ast-global-color-1-border-color {
        border-color: var(--wp--preset--color--ast-global-color-1) !important;
    }

    .has-ast-global-color-2-border-color {
        border-color: var(--wp--preset--color--ast-global-color-2) !important;
    }

    .has-ast-global-color-3-border-color {
        border-color: var(--wp--preset--color--ast-global-color-3) !important;
    }

    .has-ast-global-color-4-border-color {
        border-color: var(--wp--preset--color--ast-global-color-4) !important;
    }

    .has-ast-global-color-5-border-color {
        border-color: var(--wp--preset--color--ast-global-color-5) !important;
    }

    .has-ast-global-color-6-border-color {
        border-color: var(--wp--preset--color--ast-global-color-6) !important;
    }

    .has-ast-global-color-7-border-color {
        border-color: var(--wp--preset--color--ast-global-color-7) !important;
    }

    .has-ast-global-color-8-border-color {
        border-color: var(--wp--preset--color--ast-global-color-8) !important;
    }

    .has-vivid-cyan-blue-to-vivid-purple-gradient-background {
        background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;
    }

    .has-light-green-cyan-to-vivid-green-cyan-gradient-background {
        background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;
    }

    .has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background {
        background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;
    }

    .has-luminous-vivid-orange-to-vivid-red-gradient-background {
        background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;
    }

    .has-very-light-gray-to-cyan-bluish-gray-gradient-background {
        background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;
    }

    .has-cool-to-warm-spectrum-gradient-background {
        background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;
    }

    .has-blush-light-purple-gradient-background {
        background: var(--wp--preset--gradient--blush-light-purple) !important;
    }

    .has-blush-bordeaux-gradient-background {
        background: var(--wp--preset--gradient--blush-bordeaux) !important;
    }

    .has-luminous-dusk-gradient-background {
        background: var(--wp--preset--gradient--luminous-dusk) !important;
    }

    .has-pale-ocean-gradient-background {
        background: var(--wp--preset--gradient--pale-ocean) !important;
    }

    .has-electric-grass-gradient-background {
        background: var(--wp--preset--gradient--electric-grass) !important;
    }

    .has-midnight-gradient-background {
        background: var(--wp--preset--gradient--midnight) !important;
    }

    .has-small-font-size {
        font-size: var(--wp--preset--font-size--small) !important;
    }

    .has-medium-font-size {
        font-size: var(--wp--preset--font-size--medium) !important;
    }

    .has-large-font-size {
        font-size: var(--wp--preset--font-size--large) !important;
    }

    .has-x-large-font-size {
        font-size: var(--wp--preset--font-size--x-large) !important;
    }

    .wp-block-navigation a:where(:not(.wp-element-button)) {
        color: inherit;
    }

    .wp-block-pullquote {
        font-size: 1.5em;
        line-height: 1.6;
    }
    </style>
    <link rel="stylesheet" id="happy-icons-css" href="./homeassets/style.min.css" media="all">
    <link rel="stylesheet" id="swiper-css" href="./homeassets/swiper.min.css" media="all">
    <link rel="stylesheet" id="elementor-post-5-css" href="./homeassets/post-5.css" media="all">
    <link rel="stylesheet" id="font-awesome-5-all-css" href="./homeassets/all.min.css" media="all">
    <link rel="stylesheet" id="font-awesome-4-shim-css" href="./homeassets/v4-shims.min.css" media="all">
    <link rel="stylesheet" id="elementor-global-css" href="./homeassets/global.css" media="all">
    <link rel="stylesheet" id="elementor-post-25-css" href="./homeassets/post-25.css" media="all">
    <link rel="stylesheet" id="elementor-icons-ekiticons-css" href="./homeassets/ekiticons.css" media="all">
    <link rel="stylesheet" id="ekit-widget-styles-css" href="./homeassets/widget-styles.css" media="all">
    <link rel="stylesheet" id="ekit-responsive-css" href="./homeassets/responsive.css" media="all">
    <link rel="stylesheet" id="eael-general-css" href="./homeassets/general.min.css" media="all">
    <link rel="stylesheet" id="wpr-text-animations-css-css" href="./homeassets/text-animations.min.css" media="all">
    <link rel="stylesheet" id="wpr-addons-css-css" href="./homeassets/frontend.min.css" media="all">
    <link rel="stylesheet" id="google-fonts-1-css" href="./homeassets/css" media="all">
    <link rel="stylesheet" id="elementor-icons-shared-0-css" href="./homeassets/style.min.css" media="all">
    <link rel="stylesheet" id="elementor-icons-happy-icons-css" href="./homeassets/style.min.css" media="all">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="">
    <meta name="generator"
        content="Elementor 3.21.5; features: e_optimized_assets_loading, e_optimized_css_loading, e_font_icon_svg, additional_custom_breakpoints, e_lazyload; settings: css_print_method-external, google_font-enabled, font_display-swap">
    <style>
    .e-con.e-parent:nth-of-type(n+4):not(.e-lazyloaded):not(.e-no-lazyload),
    .e-con.e-parent:nth-of-type(n+4):not(.e-lazyloaded):not(.e-no-lazyload) * {
        background-image: none !important;
    }

    @media screen and (max-height: 1024px) {

        .e-con.e-parent:nth-of-type(n+3):not(.e-lazyloaded):not(.e-no-lazyload),
        .e-con.e-parent:nth-of-type(n+3):not(.e-lazyloaded):not(.e-no-lazyload) * {
            background-image: none !important;
        }
    }

    @media screen and (max-height: 640px) {

        .e-con.e-parent:nth-of-type(n+2):not(.e-lazyloaded):not(.e-no-lazyload),
        .e-con.e-parent:nth-of-type(n+2):not(.e-lazyloaded):not(.e-no-lazyload) * {
            background-image: none !important;
        }
    }
    </style>
    <style id="wpr_lightbox_styles">
    .lg-backdrop {
        background-color: rgba(0, 0, 0, 0.6) !important;
    }

    .lg-toolbar,
    .lg-dropdown {
        background-color: rgba(0, 0, 0, 0.8) !important;
    }

    .lg-dropdown:after {
        border-bottom-color: rgba(0, 0, 0, 0.8) !important;
    }

    .lg-sub-html {
        background-color: rgba(0, 0, 0, 0.8) !important;
    }

    .lg-thumb-outer,
    .lg-progress-bar {
        background-color: #444444 !important;
    }

    .lg-progress {
        background-color: #a90707 !important;
    }

    .lg-icon {
        color: #efefef !important;
        font-size: 20px !important;
    }

    .lg-icon.lg-toogle-thumb {
        font-size: 24px !important;
    }

    .lg-icon:hover,
    .lg-dropdown-text:hover {
        color: #ffffff !important;
    }

    .lg-sub-html,
    .lg-dropdown-text {
        color: #efefef !important;
        font-size: 14px !important;
    }

    #lg-counter {
        color: #efefef !important;
        font-size: 14px !important;
    }

    .lg-prev,
    .lg-next {
        font-size: 35px !important;
    }

    /* Defaults */
    .lg-icon {
        background-color: transparent !important;
    }

    #lg-counter {
        opacity: 0.9;
    }

    .lg-thumb-outer {
        padding: 0 10px;
    }

    .lg-thumb-item {
        border-radius: 0 !important;
        border: none !important;
        opacity: 0.5;
    }

    .lg-thumb-item.active {
        opacity: 1;
    }
    </style>
</head>

<body itemtype="https://schema.org/WebPage" itemscope="itemscope"
    class="home page-template-default page page-id-25 ast-desktop ast-page-builder-template ast-no-sidebar astra-4.6.14 ast-single-post ast-inherit-site-logo-transparent ast-hfb-header elementor-default elementor-kit-5 elementor-page elementor-page-25 e--ua-blink e--ua-chrome e--ua-mac e--ua-webkit"
    style="" data-elementor-device-mode="desktop">

    <!-- <a class="skip-link screen-reader-text" href="#content" role="link" title="Skip to content">
        Skip to content</a> -->

    <div class="hfeed site" id="page">
        <div class="ekit-template-content-markup ekit-template-content-header">
            <div data-elementor-type="wp-post" data-elementor-id="6" class="elementor elementor-6">
                <section
                    class="elementor-section elementor-top-section elementor-element elementor-element-e9a7920 elementor-section-boxed elementor-section-height-default elementor-section-height-default wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no"
                    data-id="e9a7920" data-element_type="section" data-settings="{&quot;_ha_eqh_enable&quot;:false}">
                    <div class="elementor-container elementor-column-gap-default">
                        <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-632c3ff"
                            data-id="632c3ff" data-element_type="column"
                            data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                            <div class="elementor-widget-wrap elementor-element-populated">
                                <section
                                    class="elementor-section elementor-inner-section elementor-element elementor-element-45df306 elementor-section-content-middle elementor-section-boxed elementor-section-height-default elementor-section-height-default wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no"
                                    data-id="45df306" data-element_type="section"
                                    data-settings="{&quot;_ha_eqh_enable&quot;:false}">
                                    <div class="elementor-container elementor-column-gap-default">
                                        <div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-97f9090"
                                            data-id="97f9090" data-element_type="column">
                                            <div class="elementor-widget-wrap elementor-element-populated">
                                                <div class="elementor-element elementor-element-194f6cf elementor-widget elementor-widget-heading"
                                                    data-id="194f6cf" data-element_type="widget"
                                                    data-widget_type="heading.default">
                                                    <div class="elementor-widget-container">
                                                        <style>
                                                        /*! elementor - v3.21.0 - 08-05-2024 */
                                                        .elementor-heading-title {
                                                            padding: 0;
                                                            margin: 0;
                                                            line-height: 1
                                                        }

                                                        .elementor-widget-heading .elementor-heading-title[class*=elementor-size-]>a {
                                                            color: inherit;
                                                            font-size: inherit;
                                                            line-height: inherit
                                                        }

                                                        .elementor-widget-heading .elementor-heading-title.elementor-size-small {
                                                            font-size: 15px
                                                        }

                                                        .elementor-widget-heading .elementor-heading-title.elementor-size-medium {
                                                            font-size: 19px
                                                        }

                                                        .elementor-widget-heading .elementor-heading-title.elementor-size-large {
                                                            font-size: 29px
                                                        }

                                                        .elementor-widget-heading .elementor-heading-title.elementor-size-xl {
                                                            font-size: 39px
                                                        }

                                                        .elementor-widget-heading .elementor-heading-title.elementor-size-xxl {
                                                            font-size: 59px
                                                        }
                                                        </style>
                                                        <h2 class="elementor-heading-title elementor-size-default">
                                                            {{$settingsData['websiteName']}}</h2>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-2a03af7"
                                            data-id="2a03af7" data-element_type="column">
                                            <div class="elementor-widget-wrap elementor-element-populated">
                                                <div class="elementor-element elementor-element-bd315e7 elementor-widget-mobile__width-auto elementor-widget elementor-widget-ekit-nav-menu"
                                                    data-id="bd315e7" data-element_type="widget"
                                                    data-widget_type="ekit-nav-menu.default">
                                                    <div class="elementor-widget-container">
                                                        <div class="ekit-wid-con ekit_menu_responsive_tablet"
                                                            data-hamburger-icon="" data-hamburger-icon-type="icon"
                                                            data-responsive-breakpoint="1024"> <button
                                                                class="elementskit-menu-hamburger elementskit-menu-toggler"
                                                                type="button" aria-label="hamburger-icon">
                                                                <span
                                                                    class="elementskit-menu-hamburger-icon"></span><span
                                                                    class="elementskit-menu-hamburger-icon"></span><span
                                                                    class="elementskit-menu-hamburger-icon"></span>
                                                            </button>
                                                            <div id="ekit-megamenu-main-menu"
                                                                class="elementskit-menu-container elementskit-menu-offcanvas-elements elementskit-navbar-nav-default ekit-nav-menu-one-page-no ekit-nav-dropdown-hover"
                                                                ekit-dom-added="yes">
                                                                <ul id="menu-main-menu"
                                                                    class="elementskit-navbar-nav elementskit-menu-po-center submenu-click-on-icon">
                                                                    <li id="menu-item-9"
                                                                        class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-9 nav-item elementskit-mobile-builder-content active"
                                                                        data-vertical-menu="750px"><a href="/"
                                                                            class="ekit-menu-nav-link active menu-link">Home</a>
                                                                    </li>
                                                                    <li id="menu-item-10"
                                                                        class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-10 nav-item elementskit-mobile-builder-content active"
                                                                        data-vertical-menu="750px"><a href="#about"
                                                                            class="ekit-menu-nav-link active menu-link">About</a>
                                                                    </li>
                                                                    <li id="menu-item-11"
                                                                        class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-11 nav-item elementskit-mobile-builder-content active"
                                                                        data-vertical-menu="750px"><a href="#why"
                                                                            class="ekit-menu-nav-link active menu-link">Why
                                                                            Us</a></li>
                                                                    <li id="menu-item-12"
                                                                        class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-12 nav-item elementskit-mobile-builder-content active"
                                                                        data-vertical-menu="750px"><a href="#contact"
                                                                            class="ekit-menu-nav-link active menu-link">Contact</a>
                                                                    </li>
                                                                </ul>
                                                                <div class="elementskit-nav-identity-panel">
                                                                    <div class="elementskit-site-title">
                                                                        <a class="elementskit-nav-logo" href="/"
                                                                            target="_self" rel="">
                                                                            <img src="/" title="" alt="">
                                                                        </a>
                                                                    </div><button
                                                                        class="elementskit-menu-close elementskit-menu-toggler"
                                                                        type="button">X</button>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="elementskit-menu-overlay elementskit-menu-offcanvas-elements elementskit-menu-toggler ekit-nav-menu--overlay">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-6307042 elementor-hidden-tablet elementor-hidden-mobile"
                                            data-id="6307042" data-element_type="column">
                                            <div class="elementor-widget-wrap elementor-element-populated">
                                                <div class="elementor-element elementor-element-28a7e12 elementor-align-center elementor-widget elementor-widget-button"
                                                    data-id="28a7e12" data-element_type="widget"
                                                    data-widget_type="button.default">
                                                    <div class="elementor-widget-container">
                                                        <div class="elementor-button-wrapper">
                                                            <a class="elementor-button elementor-button-link elementor-size-sm elementor-animation-grow"
                                                                href="https://report.{{$settingsData['websiteName']}}/">
                                                                <span class="elementor-button-content-wrapper">
                                                                    <span class="elementor-button-text">generate
                                                                        report</span>
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>






        <div id="content" class="site-content">
            <div class="ast-container">


                <div id="primary" class="content-area primary">


                    <main id="main" class="site-main">
                        <article class="post-25 page type-page status-publish ast-article-single" id="post-25"
                            itemtype="https://schema.org/CreativeWork" itemscope="itemscope">


                            <header class="entry-header ast-no-thumbnail ast-no-title ast-header-without-markup">
                            </header> <!-- .entry-header -->


                            <div class="entry-content clear" itemprop="text">


                                <div data-elementor-type="wp-page" data-elementor-id="25"
                                    class="elementor elementor-25">
                                    <section
                                        class="elementor-section elementor-top-section elementor-element elementor-element-4e9fadd elementor-section-height-min-height elementor-section-boxed elementor-section-height-default elementor-section-items-middle wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no"
                                        data-id="4e9fadd" data-element_type="section"
                                        data-settings="{&quot;background_background&quot;:&quot;gradient&quot;,&quot;_ha_eqh_enable&quot;:false}">

                                    </section>
                                </div>



                            </div><!-- .entry-content .clear -->



                        </article><!-- #post-## -->

                    </main><!-- #main -->


                </div><!-- #primary -->


            </div> <!-- ast-container -->


        </div><!-- #content -->


        <div class="elementor-widget-wrap elementor-element-populated">
            <div class="elementor-element elementor-element-262aac5 elementor-widget elementor-widget-heading"
                data-id="262aac5" data-element_type="widget" data-widget_type="heading.default">
                <div class="elementor-widget-container">

                </div>
            </div>
            <div class="elementor-element elementor-element-ef35fb4 elementor-hidden-mobile elementor-widget elementor-widget-heading"
                data-id="ef35fb4" data-element_type="widget" data-widget_type="heading.default">
                <div class="elementor-widget-container">

                </div>
            </div>
            <div class="elementor-element elementor-element-bf992c6 elementor-icon-list--layout-inline elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list"
                data-id="bf992c6" data-element_type="widget" data-widget_type="icon-list.default">
                <div class="elementor-widget-container">
                    <link rel="stylesheet" href="./homeassets/widget-icon-list.min.css">

                </div>
            </div>
            <div class="elementor-element elementor-element-adef81e elementor-widget elementor-widget-text-editor"
                data-id="adef81e" data-element_type="widget" data-widget_type="text-editor.default">

            </div>
        </div>

        <!-- shippingPolicy -->
        <!-- returnRefundPolicy -->
        <!-- termsCondition -->
        <!-- contactUs -->


        <div style="padding-inline:10%;">
            {!!$pages['termsCondition']!!}
        </div>
        @include('footer.footer')

    </div><!-- #page -->






















    <div id="ast-scroll-top" tabindex="0" class="ast-scroll-top-icon ast-scroll-to-top-right" data-on-devices="both"
        style="display: block;">
        <span class="ast-icon icon-arrow"><svg class="ast-arrow-svg" xmlns="http://www.w3.org/2000/svg"
                xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" width="26px" height="16.043px"
                viewBox="57 35.171 26 16.043" enable-background="new 57 35.171 26 16.043" xml:space="preserve">
                <path d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z"></path>
            </svg></span> <span class="screen-reader-text">Scroll to Top</span>
    </div>
    <script type="text/javascript">
    const lazyloadRunObserver = () => {
        const lazyloadBackgrounds = document.querySelectorAll(`.e-con.e-parent:not(.e-lazyloaded)`);
        const lazyloadBackgroundObserver = new IntersectionObserver((entries) => {
            entries.forEach((entry) => {
                if (entry.isIntersecting) {
                    let lazyloadBackground = entry.target;
                    if (lazyloadBackground) {
                        lazyloadBackground.classList.add('e-lazyloaded');
                    }
                    lazyloadBackgroundObserver.unobserve(entry.target);
                }
            });
        }, {
            rootMargin: '200px 0px 200px 0px'
        });
        lazyloadBackgrounds.forEach((lazyloadBackground) => {
            lazyloadBackgroundObserver.observe(lazyloadBackground);
        });
    };
    const events = [
        'DOMContentLoaded',
        'elementor/lazyload/observe',
    ];
    events.forEach((event) => {
        document.addEventListener(event, lazyloadRunObserver);
    });
    </script>
    <link rel="stylesheet" id="wpr-loading-animations-css-css" href="./homeassets/loading-animations.min.css"
        media="all">
    <link rel="stylesheet" id="e-animations-css" href="./homeassets/animations.min.css" media="all">
    <script src="./homeassets/frontend.min.js" id="astra-theme-js-js"></script>

    <script src="./homeassets/happy-addons.min.js" id="happy-elementor-addons-js"></script>
    <script src="./homeassets/particles.js" id="wpr-particles-js"></script>
    <script src="./homeassets/jarallax.min.js" id="wpr-jarallax-js"></script>
    <script src="./homeassets/parallax.min.js" id="wpr-parallax-hover-js"></script>
    <!-- <script src="./homeassets/frontend-script.js" id="elementskit-framework-js-frontend-js"></script> -->
    <script src="./homeassets/widget-scripts.js" id="ekit-widget-scripts-js"></script>
    <script src="./homeassets/general.min.js" id="eael-general-js"></script>
    <script src="./homeassets/premium-wrapper-link.min.js" id="pa-wrapper-link-js"></script>
    <script src="./homeassets/webpack.runtime.min.js" id="elementor-webpack-runtime-js"></script>
    <script src="./homeassets/frontend-modules.min.js" id="elementor-frontend-modules-js"></script>
    <script src="./homeassets/waypoints.min.js" id="elementor-waypoints-js"></script>
    <script src="./homeassets/core.min.js" id="jquery-ui-core-js"></script>
    <script src="./homeassets/frontend(1).min.js" id="elementor-frontend-js"></script><span id="elementor-device-mode"
        class="elementor-screen-only"></span>
    <script src="./homeassets/animate-circle.min.js" id="animate-circle-js"></script>
    <script src="./homeassets/elementor.js" id="elementskit-elementor-js"></script>

    <script data-cfasync="false" src="./homeassets/frontend(2).min.js" id="wpr-addons-js-js"></script>
    <script src="./homeassets/modal-popups.min.js" id="wpr-modal-popups-js-js"></script>






</body>

</html>