<!DOCTYPE html>
<html lang="en">
    <head>
        <TMPL_INCLUDE NAME="../includes_mytasks.tpl">
            <style>
                
#report-info-line1,#report-info-line2 {
    font-family: 'Arial Regular', 'Arial';
    font-weight: 400;
    font-style: normal;
    margin-left: 10px;
    border-bottom: 1px solid #CCCCCC;
}

.audit > table thead {
    background: #cccccc;
}
.audit > table tbody > tr {
    background: #f2f2f2;
}
.audit > table {
    border-bottom: 2px solid #797979;
}
.audit > table thead th {
    width: 25%;
}

.icon {
    font-family:'FontAwesome Bold', 'FontAwesome';
    font-size:14px;
    color:#3300CC;
    cursor: pointer;
}
.icon-minus:before {
    font-family:'FontAwesome Bold', 'FontAwesome';
    /* content: "\f056"; */
    content: "\f147";
}
.icon-plus:before {
    font-family:'FontAwesome Bold', 'FontAwesome';
    /* content: "\f055";*/
    content: "\f196";
}

.sheader span {
    /*color:#3300CC;*/
    color: #E12726;
    font-weight: bold;
    cursor: pointer;
}

.rt-container {
    padding-bottom: 30px;
}

#task-name {
    margin-top: 20px;
}

.button-container {
    float:right;
}
span.spacer {
    padding-right: 50px;
}
button-container button {
    padding-right: 15px;
}
.grey-box {
    margin-bottom:2px;
}
            </style>
    </head>
        <body class="menu-on-top">
        <TMPL_INCLUDE NAME="../header.tpl">
        <div id="main" role="main" style="margin-top: 0px!important;">
            <TMPL_INCLUDE NAME="top_navigation.tpl">
            <div class="grey-box col col-10">
                <a href="#" onClick="javascript:manageMytask(this); return false;" />< return to Manage myTasks</a>
                    <div class="button-container">
                        <button onclick="">Test</button>
                        <button onclick="">Copy</button>
                        <button onclick="javascript:revhist(0);">Revision History</button>
                        <button onclick="">Instructions</button>
                        <span class="spacer">&nbsp;</span>
                    </div>
                </div>
                <div id="container" class="container">
                    <div class="col col-10">
                        <h4 class="page-title">
                            <strong>myTask Audit Report - Person Due Diligence</strong> 
                        </h4>
                        <div class="rt-container">
                            <div id="report-info-line1"><span>Report Created: 09-26-2015 9:41 AM EST | FOR INFORMATION PURPOSES ONLY | Copyright 2015 LexisNexis. All right reserved.</span></div>
                            <div id="report-info-line2"><span>Report created for: LN Product QA (1831638)</span></div>
                            <div id="task-name"><strong>myTask Name: </strong><span>Person Due Diligence</span></div>
                            <div id="task-desc"><strong>myTask Description: </strong><span>Our person due diligence process</span></div>
                            </div>
                        <div id="section-v2">
                            <div class="sheader">
                                <span class="icon-minus icon"></span>&nbsp;&nbsp;&nbsp;<span>Version 2.000</span>
                            </div>
                            <div class="audit table-section">
                                <table>
                                    <thead>
                                        <th>Date of Change</th><th>Action</th><th>Change Author</th><th>Author Comments</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>06/06/2015 02:12 PM</td><td>Publish Date (Auto-generated)</td><td>Gibson, Rich</td><td></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <br/>
                        <div id="section-v1">
                            <div class="sheader">
                                <span class="icon-minus icon"></span>&nbsp;&nbsp;&nbsp;<span>Version 1.000</span>
                            </div>
                            <div class="audit table-section">
                                <table>
                                    <thead>
                                        <th>Date of Change</th><th>Action</th><th>Change Author</th><th>Author Comments</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>06/06/2015 02:12 PM</td><td>Publish Date (Auto-generated)</td><td>Gibson, Rich</td><td></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <br/>
                        <div id="section-v01">
                            <div class="sheader">
                                <span class="icon-minus icon"></span>&nbsp;&nbsp;&nbsp;<span>Version .001</span>
                            </div>
                            <div class="audit table-section">
                                <table>
                                    <thead>
                                        <th>Date of Change</th><th>Action</th><th>Change Author</th><th>Author Comments</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>06/06/2015 02:12 PM</td><td>Create Date: Business Due Diligence (auto-generated)</td><td>Gibson, Rich</td><td></td>
                                        </tr>
                                    </tbody>
                                </table>
                        </div>
                        </div>
                    </div>
                </div>
        </div>
        <div class="grey-box col col-10">
            <a href="#" onClick="javascript:manageMytask(this); return false;" />< return to Manage myTasks</a>
            <div class="button-container">
                <button onclick="">Test</button>
                <button onclick="">Copy</button>
                <button onclick="javascript:revhist(0);">Revision History</button>
                <button onclick="">Instructions</button>
                <span class="spacer">&nbsp;</span>
            </div>

        </div>
        <TMPL_INCLUDE NAME="footer.tpl">
        </body>
        
        <script>
           $(".sheader").click(function() {
                if ($(this).parent().find('.table-section').css("display") == "none") {
                    $(this).parent().find('.table-section').slideDown("slow");
                    $(this).find(".icon").removeClass("icon-plus").addClass("icon-minus");
                } else {
                    $(this).parent().find('.table-section').slideUp("slow");
                    $(this).find(".icon").removeClass("icon-minus").addClass("icon-plus");
                }
            });

            function revhist(mid){
                    $('#myModal').load('<tmpl_var action>', {'MID':mid, 'SESSION_ID':'<tmpl_var SESSION_ID>',   'CSRF_TOKEN':'<tmpl_var CSRF_TOKEN>','EVENT':'MYTASK/REVHISTORY'},
                                                            function(res,status,xhr){}
                    );	
                    $('#myModal').modal('show'); 
            }

            function copy(mid){
                    $('input[name=MID]').val(mid);
                    send_event('MYTASK/COPY');
            }


        </script>
            
</html>
