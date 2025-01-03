<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title> pdf </title>
    <style>
    /* @media screen and (max-width: 600px) {
        body {
            padding: 2rem;
        }
    }

    @media screen and (min-width: 600px) {
        body {
            padding: 5rem;
        }
    } */
    </style>
</head>

<!-- <pre>{ json_encode($resp, JSON_PRETTY_PRINT) }</pre> -->

<body>

    <center>
        <table
            style="width: 100%; font-weight:300; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; color:grey;  border-collapse: separate; ">
            <tr style="border-collapse: separate; justify-content:space-between;">
                <td style="padding-right: 10px;color:silver;">{{ \Carbon\Carbon::now()->format('m/d/Y g:i A') }}</td>
                <td class="text-right" style="padding-left: 10px;">{{$resp->vehicleHistory}}</td>
                <td class="text-right" style="padding-left: 10px; color:silver;">ID #:</td>
            </tr>
        </table>
    </center>
    <br>
    <div class="border p-3" style="border: 1px solid #dee2e6; padding: 10px;">
        <table class="" style="width: 100%; border-collapse: separate; border-spacing: 10px; background:whitesmoke;">
            <tr>
                <td>logo</td>
                <td>vehicle history report</td>
                <td>price</td>
            </tr>
        </table>
        <br>
        <h4>title</h4>
        <p class="text-muted" style="font-weight:300; color:silver;">
            subtitle
        </p>
        <div style="width:100%; border-top: 1px solid silver; padding-top: 2px"></div>
        <p class="text-capitalize text-secondary"><i class="fa fa-circle text-muted pr-2 fa-xs"
                style="opacity: 0.5;"></i> no
            accident
        </p>
        <div style="width:100%; border-top: 1px solid silver; padding-top: 2px"></div>
        <p class="text-capitalize text-secondary"><i class="fa fa-circle text-muted pr-2 fa-xs"
                style="opacity: 0.5;"></i> no
            accident
        </p>
        <div style="width:100%; border-top: 1px solid silver; padding-top: 2px"></div>
        <p class="text-capitalize text-secondary"><i class="fa fa-circle text-muted pr-2 fa-xs"
                style="opacity: 0.5;"></i> no
            accident
        </p>
    </div>

    <style>
    .carfax-table {
        width: 100%;
        border-collapse: collapse;
    }

    .carfax-table th,
    .carfax-table td {
        border: 1px solid #dee2e6;
        padding: 8px;
        text-align: center;
    }

    .carfax-header {
        background-color: #f8f9fa;
        font-weight: bold;
        text-align: left;
        padding: 10px;
    }

    .warranty-expired {
        color: red;
        font-weight: bold;
    }

    .checkmark {
        color: green;
    }
    </style>
    <br>
    <p class="" style="font-weight:300; color:silver;">
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Corporis ex cum qui similique illo temporibus
        nesciunt iure, odit ab rem. Dolore error sint rerum magnam sit in suscipit distinctio atque?
    </p><br />
    <div style="position: relative; width: 100%; padding-bottom: 20px;padding-top: 20px;">
        <div style="width:100%; border-top: 1px solid silver; padding-top: 15px"></div>
        <h4
            style="position: absolute; top: 0em; left: 50%; transform: translateX(-50%); align-items: center; background-color: white; margin: auto; padding: 10px; color: black;">
            Additional History
        </h4>
    </div>
    <div class=" bg-light">
        <div class="carfax-header">
            <!-- <img src="https://via.placeholder.com/50x20" alt="CARFAX Logo"> Additional History -->
            <p class="text-muted mb-0"> Not all accidents / issues are reported to CARFAX </p>
        </div>
        <table class="table table-bordered carfax-table">
            <thead>
                <tr>
                    <th colspan="2" style="width: 33%;">Category</th>
                    <th>Owners 1-5</th>
                    <th>Owner 6</th>
                    <th>Owner 7</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td colspan="2" style="width: 33%;">Total Loss</td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                </tr>
                <tr>
                    <td colspan="2" style="width: 33%;">Structural Damage</td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                </tr>
                <tr>
                    <td colspan="2" style="width: 33%;">Airbag Deployment</td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                </tr>
                <tr>
                    <td colspan="2" style="width: 33%;">Odometer Check</td>
                    <td><span class="checkmark">✔ No Issues Indicated</span></td>
                    <td><span class="checkmark">✔ No Issues Indicated</span></td>
                    <td><span class="checkmark">✔ No Issues Indicated</span></td>
                </tr>
                <tr>
                    <td colspan="2" style="width: 33%;">Accident / Damage</td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                </tr>
                <tr>
                    <td colspan="2" style="width: 33%;">Manufacturer Recall</td>
                    <td>Recall Reported</td>
                    <td>No New Recalls Reported</td>
                    <td>No New Recalls Reported</td>
                </tr>
                <tr>
                    <td colspan="2" style="width: 33%;">Basic Warranty</td>
                    <td><span class="warranty-expired">Warranty Expired</span></td>
                    <td><span class="warranty-expired">Warranty Expired</span></td>
                    <td><span class="warranty-expired">Warranty Expired</span></td>
                </tr>
            </tbody>
        </table>

        <p style="color: grey; font-weight: 300; padding: 10px;">Lorem ipsum dolor sit amet consectetur,
            adipisicing elit. Ut
            adipisci nobis minima
            dolorum asperiores
            esse reiciendis, nisi enim maxime sint. Ex necessitatibus veniam alias ipsam autem sed, dolore
            officia fugiat.</p>
    </div>
    <br>

    <div style="position: relative; width: 100%; padding-bottom: 20px;padding-top: 20px;">
        <div style="width:100%; border-top: 1px solid silver; padding-top: 15px"></div>
        <h4
            style="position: absolute; top: 0em; left: 50%; transform: translateX(-50%); align-items: center; background-color: white; margin: auto; padding: 10px; color: black;">
            Title History
        </h4>
    </div>

    <div class=" bg-light">
        <div class="carfax-header">
            <!-- <img src="https://via.placeholder.com/50x20" alt="CARFAX Logo"> Title History -->
            <p class="text-muted mb-0"> Gurantees in this section </p>
        </div>
        <table class="table table-bordered carfax-table">
            <thead>
                <tr>
                    <th colspan="2" style="width: 33%;">Category</th>
                    <th>Owners 1-5</th>
                    <th>Owner 6</th>
                    <th>Owner 7</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td colspan="2" style="width: 33%;">Total Loss</td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                </tr>
                <tr>
                    <td colspan="2" style="width: 33%;">Structural Damage</td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                    <td><span class="checkmark">✔ No Issues Reported</span></td>
                </tr>


            </tbody>
        </table>

        <p style="color: grey; font-weight: 300; padding: 10px;"> Lorem ipsum dolor sit amet consectetur,
            adipisicing elit. Ut
            adipisci nobis minima
            dolorum asperiores
            esse reiciendis, nisi enim maxime sint. Ex necessitatibus veniam alias ipsam autem sed, dolore
            officia fugiat. </p>
    </div>
    <br>



    <style>
    .record-section {
        border: 1px solid #dee2e6;
        border-radius: 5px;
        margin-bottom: 15px;
        padding: 10px;
    }

    .owner-header {
        align-items: center;
        font-weight: bold;
        margin-bottom: 10px;
    }

    .owner-header img {
        margin-right: 10px;
    }

    .vehicle-history-table {
        width: 100%;
    }

    .vehicle-history-table th,
    .vehicle-history-table td {
        vertical-align: top;
        border: none;
        padding: 8px;
    }

    .comment-bullet {
        margin-left: 20px;
    }

    .icon {
        font-size: 16px;
        margin-right: 5px;
    }

    .rating {
        display: flex;
        align-items: center;
    }

    .rating .star {
        color: gold;
        margin-right: 3px;
    }

    .review {
        font-size: 12px;
        color: #6c757d;
    }
    </style>

    <div style="position: relative; width: 100%; padding-bottom: 20px;padding-top: 20px;">
        <div style="width:100%; border-top: 1px solid silver; padding-top: 15px"></div>
        <h4
            style="position: absolute; top: 0em; left: 50%; transform: translateX(-50%); align-items: center; background-color: white; margin: auto; padding: 10px; color: indigo;">
            Owners Details
        </h4>
    </div>
    <div class="my-4">
        <!-- Owner 4 Section -->
        <div class="record-section" style="background: rgb(249, 249, 255);">
            <div class="owner-header">
                <img src="https://via.placeholder.com/20" alt="Owner Icon">
                <span>Owner 4</span>
                <p class="ms-auto" style="font-weight: 400; color: grey;">Purchased: 2016</p>
            </div>
            <div style="width:100%; border-top: 1px solid silver; padding-top: 15px"></div>
            <table class="vehicle-history-table">
                <thead style="color: indigo;">
                    <tr>
                        <th>Date</th>
                        <th>Mileage</th>
                        <th>Source</th>
                        <th>Comments</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>10/10/2016</td>
                        <td></td>
                        <td>Tennessee Motor Vehicle Dept.<br>Nashville, TN<br>Title #92878907</td>
                        <td>
                            <ul class="comment-bullet">
                                <li>Title or registration issued</li>
                                <li>New owner reported</li>
                                <li>Loan or lien reported</li>
                                <li>Registration updated when owner moved the vehicle to a new
                                    location</li>
                                <li>Vehicle color noted as Gold</li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>







    <!-- ---------------------------------- -->

    <div style="position: relative; width: 100%; padding-bottom: 20px;padding-top: 20px;">
        <div style="width:100%; border-top: 1px solid silver; padding-top: 15px"></div>
        <h4
            style="position: absolute; top: 0em; left: 50%; transform: translateX(-50%); align-items: center; background-color: white; margin: auto; padding: 10px; color: green;">
            Glossary
        </h4>
    </div>
    <div class="my-4">
        <!-- Owner 4 Section -->
        <div class="record-section" style="background: rgb(249, 255, 252);">
            <h4 style="color: black;">Title or registration issued</h4>
            <p style="font-weight: 200; color: grey;"> Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Quisquam, voluptas dolorum</p>
        </div>

    </div>








    <!-- ---------------------------------- -->
    <div class="mt-4">
        <!-- Social Media and Disclaimer Section -->
        <div class="row mb-3">
            <div class="col-12">
                <div>
                    <span>Follow Us: </span>

                    <i class="fa-brands fa-facebook p-3"> <a href="" target="_blank"> facebook.com
                        </a> </i>
                    <!-- <i class="fa-brands fa-instagram p-3"> <a href="" target="_blank"> -->
                    <i class="fa-brands fa-whatsapp p-3"> <a href="" target="_blank">
                            whatsapp.com
                        </a> </i>
                    <i class="fa-solid fa-circle-info p-3"> <a href="" target="_blank"> about title
                        </a> </i>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="small">
                    <p class="mb-1">
                        CARFAX DEPENDS ON ITS SOURCES FOR THE ACCURACY AND RELIABILITY OF ITS
                        INFORMATION. THEREFORE, NO RESPONSIBILITY IS ASSUMED BY CARFAX OR ITS AGENTS
                        FOR ERRORS OR OMISSIONS IN THIS REPORT. CARFAX FURTHER EXPRESSLY DISCLAIMS ALL
                        WARRANTIES, EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF
                        MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
                    </p>
                    <br>
                    <p class="mb-0 text-muted small" style="color:grey;">
                        Report generated: 9/29/24 4:00:19 PM (CDT)<br>
                        © 2024 CARFAX. All rights reserved.
                    </p>
                </div>
            </div>
        </div>
        <br>
        <!-- Signature Section -->
        <div class="row mt-4">
            <div class="col-12">
                <div class="border p-3 rounded">
                    <p class="mb-4 text-center text-muted"
                        style="font-weight:300; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">
                        I have reviewed and received a copy of the CARFAX Vehicle History Report for
                        this 2004 JEEP LIBERTY vehicle (VIN: 1J4GL58K14W295826), which is based on
                        information supplied to CARFAX and available as of 9/29/24 at 5:00 PM (EDT).
                    </p><br><br><br />
                    <div
                        style="width:100%; display:flex; flex-direction:row; justify-content: space-between; border-top: 1px solid silver; padding-top: 15px">

                        <table style="width: 100%;">
                            <tr>
                                <td style="width: 25%;">Customer Signature</td>
                                <td style="width: 25%;">Date</td>
                                <td style="width: 25%;">Dealer Signature</td>
                                <td style="width: 25%;">Date</td>
                            </tr>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>







</body>
<!-- <body>
    <style>
    .page-break {
        page-break-after: always;
    }
    </style>
    <h1>Page 1</h1>
    <div class="page-break"></div>
    <h1>Page 2</h1>
</body> -->

</html>