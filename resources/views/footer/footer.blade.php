<!-- <div class="hfeed site" id="page"> -->
<div class="ekit-template-content-markup ekit-template-content-footer">
    <div data-elementor-type="wp-post" data-elementor-id="174" class="elementor elementor-174">
        <section
            class="elementor-section elementor-top-section elementor-element elementor-element-4eea600e elementor-section-boxed elementor-section-height-default elementor-section-height-default wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no"
            data-id="4eea600e" data-element_type="section" id="xs_footer_8"
            data-settings="{&quot;background_background&quot;:&quot;gradient&quot;,&quot;_ha_eqh_enable&quot;:false}">
            <div class="elementor-container elementor-column-gap-default">
                <div class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-17961a75"
                    data-id="17961a75" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-5fd7dda elementor-widget elementor-widget-heading"
                            data-id="5fd7dda" data-element_type="widget" data-widget_type="heading.default">
                            <div class="elementor-widget-container">
                                <h2 class="elementor-heading-title elementor-size-default">
                                    {{$settingsData['websiteName']}}</h2>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-834be85 elementor-widget elementor-widget-text-editor"
                            data-id="834be85" data-element_type="widget" data-widget_type="text-editor.default">
                            <div class="elementor-widget-container">
                                {{$settingsData['websiteName']}} Report meticulously collects information from trusted
                                automobile
                                sources, offering solutions based on solid data. Designed for car buyers,
                                dealerships, insurance companies, and enthusiasts, our comprehensive reports
                                provide complete vehicle histories and insights. Our top-tier, data-driven
                                solutions quickly reveal crucial details for informed decision-making. </div>
                        </div>
                        <div class="elementor-element elementor-element-b1e45f9 elementor-widget elementor-widget-button"
                            data-id="b1e45f9" data-element_type="widget" data-widget_type="button.default">
                            <div class="elementor-widget-container">
                                <div class="elementor-button-wrapper">
                                    <a class="elementor-button elementor-button-link elementor-size-sm elementor-animation-grow"
                                        onClick="showPopup()">
                                        <span class="elementor-button-content-wrapper">
                                            <span class="elementor-button-text">generate report</span>
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-2304aefe"
                    data-id="2304aefe" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-3a803c56 elementor-widget elementor-widget-heading"
                            data-id="3a803c56" data-element_type="widget" data-widget_type="heading.default">
                            <div class="elementor-widget-container">
                                <h2 class="elementor-heading-title elementor-size-default">Get In Touch</h2>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-57ed678 elementor-icon-list--layout-traditional elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list"
                            data-id="57ed678" data-element_type="widget" data-widget_type="icon-list.default">
                            <div class="elementor-widget-container">
                                <ul class="elementor-icon-list-items">
                                    <li class="elementor-icon-list-item">
                                        <a href="mailto:{{$settingsData['email']}}">

                                            <span class="elementor-icon-list-icon">
                                                <svg aria-hidden="true" class="e-font-icon-svg e-fas-envelope"
                                                    viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M502.3 190.8c3.9-3.1 9.7-.2 9.7 4.7V400c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V195.6c0-5 5.7-7.8 9.7-4.7 22.4 17.4 52.1 39.5 154.1 113.6 21.1 15.4 56.7 47.8 92.2 47.6 35.7.3 72-32.8 92.3-47.6 102-74.1 131.6-96.3 154-113.7zM256 320c23.2.4 56.6-29.2 73.4-41.4 132.7-96.3 142.8-104.7 173.4-128.7 5.8-4.5 9.2-11.5 9.2-18.9v-19c0-26.5-21.5-48-48-48H48C21.5 64 0 85.5 0 112v19c0 7.4 3.4 14.3 9.2 18.9 30.6 23.9 40.7 32.4 173.4 128.7 16.8 12.2 50.2 41.8 73.4 41.4z">
                                                    </path>
                                                </svg> </span>
                                            <span class="elementor-icon-list-text">{{$settingsData['email']}}</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-6ced339 elementor-widget elementor-widget-heading"
                            data-id="6ced339" data-element_type="widget" data-widget_type="heading.default">
                            <div class="elementor-widget-container">
                                <h2 class="elementor-heading-title elementor-size-default">Support</h2>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-6efa06c elementor-icon-list--layout-traditional elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list"
                            data-id="6efa06c" data-element_type="widget" data-widget_type="icon-list.default">
                            <div class="elementor-widget-container">
                                <ul class="elementor-icon-list-items">
                                    @if($settingsData['showPrivacyPolicy'] == 1)
                                    <li class="elementor-icon-list-item">
                                        <a href="{{route('privacyPolicy')}}">
                                            <span class="elementor-icon-list-icon">
                                                <i aria-hidden="true" class="hm hm-arrow-right"></i> </span>
                                            <span class="elementor-icon-list-text">privacy policy</span>
                                        </a>
                                    </li>
                                    @endif
                                    @if($settingsData['showTermsCondition'] == 1)
                                    <li class="elementor-icon-list-item">
                                        <a href="{{route('terms')}}">

                                            <span class="elementor-icon-list-icon">
                                                <i aria-hidden="true" class="hm hm-arrow-right"></i> </span>
                                            <span class="elementor-icon-list-text">terms of service</span>
                                        </a>
                                    </li>
                                    @endif
                                    @if($settingsData['showReturnRefundPolicy'] == 1)
                                    <li class="elementor-icon-list-item">
                                        <a href="{{route('returnpolicy')}}">

                                            <span class="elementor-icon-list-icon">
                                                <i aria-hidden="true" class="hm hm-arrow-right"></i> </span>
                                            <span class="elementor-icon-list-text">Refund Policy</span>
                                        </a>
                                    </li>
                                    @endif
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-60f08dc8"
                    data-id="60f08dc8" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-44f1e78 elementor-widget elementor-widget-heading"
                            data-id="44f1e78" data-element_type="widget" data-widget_type="heading.default">
                            <div class="elementor-widget-container">
                                <h2 class="elementor-heading-title elementor-size-default">Popular Links</h2>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-adc9c39 elementor-icon-list--layout-traditional elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list"
                            data-id="adc9c39" data-element_type="widget" data-widget_type="icon-list.default">
                            <div class="elementor-widget-container">
                                <ul class="elementor-icon-list-items">
                                    @if($settingsData['showInstagram'] == 1)
                                    <li class="elementor-icon-list-item">
                                        <a href="{{$settingsData['instagramLink']}}">

                                            <span class="elementor-icon-list-icon">
                                                <svg fill="#000000" width="800px" height="800px" viewBox="0 0 32 32"
                                                    version="1.1" xmlns="http://www.w3.org/2000/svg">
                                                    <title>instagram</title>
                                                    <path
                                                        d="M25.805 7.996c0 0 0 0.001 0 0.001 0 0.994-0.806 1.799-1.799 1.799s-1.799-0.806-1.799-1.799c0-0.994 0.806-1.799 1.799-1.799v0c0.993 0.001 1.798 0.805 1.799 1.798v0zM16 20.999c-2.761 0-4.999-2.238-4.999-4.999s2.238-4.999 4.999-4.999c2.761 0 4.999 2.238 4.999 4.999v0c0 0 0 0.001 0 0.001 0 2.76-2.237 4.997-4.997 4.997-0 0-0.001 0-0.001 0h0zM16 8.3c0 0 0 0-0 0-4.253 0-7.7 3.448-7.7 7.7s3.448 7.7 7.7 7.7c4.253 0 7.7-3.448 7.7-7.7v0c0-0 0-0 0-0.001 0-4.252-3.447-7.7-7.7-7.7-0 0-0 0-0.001 0h0zM16 3.704c4.003 0 4.48 0.020 6.061 0.089 1.003 0.012 1.957 0.202 2.84 0.538l-0.057-0.019c1.314 0.512 2.334 1.532 2.835 2.812l0.012 0.034c0.316 0.826 0.504 1.781 0.516 2.778l0 0.005c0.071 1.582 0.087 2.057 0.087 6.061s-0.019 4.48-0.092 6.061c-0.019 1.004-0.21 1.958-0.545 2.841l0.019-0.058c-0.258 0.676-0.64 1.252-1.123 1.726l-0.001 0.001c-0.473 0.484-1.049 0.866-1.692 1.109l-0.032 0.011c-0.829 0.316-1.787 0.504-2.788 0.516l-0.005 0c-1.592 0.071-2.061 0.087-6.072 0.087-4.013 0-4.481-0.019-6.072-0.092-1.008-0.019-1.966-0.21-2.853-0.545l0.059 0.019c-0.676-0.254-1.252-0.637-1.722-1.122l-0.001-0.001c-0.489-0.47-0.873-1.047-1.114-1.693l-0.010-0.031c-0.315-0.828-0.506-1.785-0.525-2.785l-0-0.008c-0.056-1.575-0.076-2.061-0.076-6.053 0-3.994 0.020-4.481 0.076-6.075 0.019-1.007 0.209-1.964 0.544-2.85l-0.019 0.059c0.247-0.679 0.632-1.257 1.123-1.724l0.002-0.002c0.468-0.492 1.045-0.875 1.692-1.112l0.031-0.010c0.823-0.318 1.774-0.509 2.768-0.526l0.007-0c1.593-0.056 2.062-0.075 6.072-0.075zM16 1.004c-4.074 0-4.582 0.019-6.182 0.090-1.315 0.028-2.562 0.282-3.716 0.723l0.076-0.025c-1.040 0.397-1.926 0.986-2.656 1.728l-0.001 0.001c-0.745 0.73-1.333 1.617-1.713 2.607l-0.017 0.050c-0.416 1.078-0.67 2.326-0.697 3.628l-0 0.012c-0.075 1.6-0.090 2.108-0.090 6.182s0.019 4.582 0.090 6.182c0.028 1.315 0.282 2.562 0.723 3.716l-0.025-0.076c0.796 2.021 2.365 3.59 4.334 4.368l0.052 0.018c1.078 0.415 2.326 0.669 3.628 0.697l0.012 0c1.6 0.075 2.108 0.090 6.182 0.090s4.582-0.019 6.182-0.090c1.315-0.029 2.562-0.282 3.716-0.723l-0.076 0.026c2.021-0.796 3.59-2.365 4.368-4.334l0.018-0.052c0.416-1.078 0.669-2.326 0.697-3.628l0-0.012c0.075-1.6 0.090-2.108 0.090-6.182s-0.019-4.582-0.090-6.182c-0.029-1.315-0.282-2.562-0.723-3.716l0.026 0.076c-0.398-1.040-0.986-1.926-1.729-2.656l-0.001-0.001c-0.73-0.745-1.617-1.333-2.607-1.713l-0.050-0.017c-1.078-0.416-2.326-0.67-3.628-0.697l-0.012-0c-1.6-0.075-2.108-0.090-6.182-0.090z">
                                                    </path>
                                                </svg> </span>
                                            <span class="elementor-icon-list-text">instagram</span>
                                        </a>
                                    </li>
                                    @endif
                                    @if($settingsData['showFacebook'] == 1)

                                    <li class="elementor-icon-list-item">
                                        <a href="{{$settingsData['facebookLink']}}">

                                            <span class="elementor-icon-list-icon">
                                                <svg aria-hidden="true" class="e-font-icon-svg e-fab-facebook-f"
                                                    viewBox="0 0 320 512" xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z">
                                                    </path>
                                                </svg> </span>
                                            <span class="elementor-icon-list-text">facebook</span>
                                        </a>
                                    </li>
                                    @endif
                                    @if($settingsData['showWhatsapp'] == 1)
                                    <li class="elementor-icon-list-item">
                                        <a href="https://wa.me/{{$settingsData['whatsappNumber']}}">
                                            <span class="elementor-icon-list-icon">
                                                <svg fill="#000000" height="800px" width="800px" version="1.1"
                                                    id="Layer_1" xmlns="http://www.w3.org/2000/svg"
                                                    xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 308 308"
                                                    xml:space="preserve">
                                                    <g id="XMLID_468_">
                                                        <path id="XMLID_469_" d="M227.904,176.981c-0.6-0.288-23.054-11.345-27.044-12.781c-1.629-0.585-3.374-1.156-5.23-1.156
                                                        c-3.032,0-5.579,1.511-7.563,4.479c-2.243,3.334-9.033,11.271-11.131,13.642c-0.274,0.313-0.648,0.687-0.872,0.687
                                                        c-0.201,0-3.676-1.431-4.728-1.888c-24.087-10.463-42.37-35.624-44.877-39.867c-0.358-0.61-0.373-0.887-0.376-0.887
                                                        c0.088-0.323,0.898-1.135,1.316-1.554c1.223-1.21,2.548-2.805,3.83-4.348c0.607-0.731,1.215-1.463,1.812-2.153
                                                        c1.86-2.164,2.688-3.844,3.648-5.79l0.503-1.011c2.344-4.657,0.342-8.587-0.305-9.856c-0.531-1.062-10.012-23.944-11.02-26.348
                                                        c-2.424-5.801-5.627-8.502-10.078-8.502c-0.413,0,0,0-1.732,0.073c-2.109,0.089-13.594,1.601-18.672,4.802
                                                        c-5.385,3.395-14.495,14.217-14.495,33.249c0,17.129,10.87,33.302,15.537,39.453c0.116,0.155,0.329,0.47,0.638,0.922
                                                        c17.873,26.102,40.154,45.446,62.741,54.469c21.745,8.686,32.042,9.69,37.896,9.69c0.001,0,0.001,0,0.001,0
                                                        c2.46,0,4.429-0.193,6.166-0.364l1.102-0.105c7.512-0.666,24.02-9.22,27.775-19.655c2.958-8.219,3.738-17.199,1.77-20.458
                                                        C233.168,179.508,230.845,178.393,227.904,176.981z" />
                                                        <path id="XMLID_470_" d="M156.734,0C73.318,0,5.454,67.354,5.454,150.143c0,26.777,7.166,52.988,20.741,75.928L0.212,302.716
                                                        c-0.484,1.429-0.124,3.009,0.933,4.085C1.908,307.58,2.943,308,4,308c0.405,0,0.813-0.061,1.211-0.188l79.92-25.396
                                                        c21.87,11.685,46.588,17.853,71.604,17.853C240.143,300.27,308,232.923,308,150.143C308,67.354,240.143,0,156.734,0z
                                                        M156.734,268.994c-23.539,0-46.338-6.797-65.936-19.657c-0.659-0.433-1.424-0.655-2.194-0.655c-0.407,0-0.815,0.062-1.212,0.188
                                                        l-40.035,12.726l12.924-38.129c0.418-1.234,0.209-2.595-0.561-3.647c-14.924-20.392-22.813-44.485-22.813-69.677
                                                        c0-65.543,53.754-118.867,119.826-118.867c66.064,0,119.812,53.324,119.812,118.867
                                                        C276.546,215.678,222.799,268.994,156.734,268.994z" />
                                                    </g>
                                                </svg> </span>
                                            <span class="elementor-icon-list-text"> Whatsapp</span>
                                        </a>
                                    </li>
                                    @endif
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section
            class="elementor-section elementor-top-section elementor-element elementor-element-38085980 elementor-section-boxed elementor-section-height-default elementor-section-height-default wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no"
            data-id="38085980" data-element_type="section"
            data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;_ha_eqh_enable&quot;:false}">
            <div class="elementor-container elementor-column-gap-default">
                <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-6ef7341b"
                    data-id="6ef7341b" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-179a131 elementor-widget elementor-widget-heading"
                            data-id="179a131" data-element_type="widget" data-widget_type="heading.default">
                            <div class="elementor-widget-container">
                                <h2 class="elementor-heading-title elementor-size-default">©
                                    {{$settingsData['websiteName']}}. All
                                    Rights Reserved.</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<!-- </div> -->





<div id="popup" class="modal" style="display:none;">
    <div class="modal-content">
        <div class="modal-header">
            <span class="close" onclick="closePopup()">&times;</span>
            <h2>{{$settingsData['websiteName']}}</h2>
            <img src="{{asset('assets/verifycar.gif')}}" alt="" srcset="">
        </div>
        <br>
        <div class="modal-body">
            <form action="{{route('fillreport')}}" method="get">
                <select name="type" id="vehicle-type" class="form-control">
                    <option value="car" selected>Car</option>
                    <option value="bike">Bike</option>
                </select>
                <input type="text" name="vid" id="vin-number" class="form-control" placeholder="Enter VIN Number"
                    required>
                <br><br>
                <button type="submit" class="btn reportgenbtn">Generate Report</button>
            </form>
        </div>
    </div>
</div>
<style>
/* Modal styles */

.modal {
    position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 99999;
}

.modal-content {
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    /* Rounded corners */
    position: relative;
    width: 500px;
    width: 100%;
    text-align: center;
}

@media screen and (max-width: 700px) {

    .modal-content {
        width: 90% !important;
        min-width: 90% !important;
        z-index: 99999;
    }

    .modal {
        position: fixed;
        width: 100vw !important;
        height: 100vh;
    }

}

@media screen and (min-width: 700px) {

    .modal-content {
        width: 30% !important;
        min-width: 35% !important;
        z-index: 99999;
    }
}

.modal-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.close {
    font-size: 24px;
    cursor: pointer;
    color: #000;
    position: absolute;
    right: 15px;
    top: 10px;
}

/* .modal-body {
    margin-top: 20px;
} */

/* Button and form control styles */
.form-control {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
}

.reportgenbtn {
    background-color: indigo;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 25px;
    transition: 0.5s ease-in-out;
}

.reportgenbtn:hover {
    background-color: indigo;
    color: #fff;
    font-weight: bold;
    letter-spacing: 1px;
    border-radius: 4px;
    transition: 0.5s ease-in-out;
}
</style>



<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

<script>
$(document).ready(function() {
    @if(isset($stoastmsg))
    toastr.success('{{ $stoastmsg }}', 'Success', {
        positionClass: 'toast-top-right',
        timeOut: 5000
    });
    @endif

    @if(isset($ftoastmsg))
    toastr.error('{{ $ftoastmsg }}', 'Fail', {
        positionClass: 'toast-top-right',
        timeOut: 5000
    });
    @endif
});
</script>





<script>
function showPopup() {
    document.getElementById("popup").style.display = "flex";
    document.body.style.overflow = "hidden";
}

function closePopup() {
    document.getElementById("popup").style.display = "none";
    document.body.style.overflow = "auto";
}

function generateReport() {
    var vehicleType = document.getElementById("vehicle-type")
        .value;
    var vinNumber = document.getElementById("vin-number").value;
    console.log("Generating report for " + vehicleType +
        " with VIN number " + vinNumber);
    closePopup();
}
</script>