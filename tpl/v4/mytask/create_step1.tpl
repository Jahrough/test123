<!DOCTYPE html>
<html lang="en">
    <head>
        <TMPL_INCLUDE NAME="../includes_mytasks.tpl">
    </head>
    <body class="menu-on-top">
        <TMPL_INCLUDE NAME="../header.tpl">
        <div id="main" role="main" style="margin-top: 0px!important;">
            <TMPL_INCLUDE NAME="top_navigation.tpl">
            <!-- actual start of the create mytask part -->
            <div id="container" class="container">
                <div class="row" >
                    <!--<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">-->
                    <div class="col col-8">
                        <h4><strong>Create myTasks</strong></h4>
                        <p>This allows you to create a group of searches that can be run all at once (automatic), individually (manual), or a combination of the two (hybrid). To begin, name your group of searches and select the ones to be included in your myTask.</p>
                    </div>
                </div>
                <div class="row" >
                    <div class="col col-8 border-right-dotted">
                        <header>
                            <h4><strong>Step 1: Name task & Select searches</strong></h4>
                        </header>
                        <div class="container">
                            <form id="mytask-form" class="mytask-step1-form" novalidate="novalidate" method="POST" action="<tmpl_var action>">
                                <div class="row">
                                    <div class="form-group">
                                        <label for="NAME" class="input">
                                            <input type="text" name="NAME" id="mname" placeholder="myTask Name" class="form-control">
                                        </label>
                                        <label class="textarea">                                        
                                            <textarea rows="3" name="DESCRIPTION" id="mdescription" placeholder="myTask Description" class="form-control"></textarea> 
                                        </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-inline">
                                        <label class="control-label"><strong>Search Subject</strong>&nbsp;&nbsp;<span id="info-icon"></span></label>
                                        <label class="radio">
                                            <input type="radio" name="CATEGORY" checked="" value="Person">
                                            <i></i>Person
                                        </label>
                                        <label class="radio">
                                            <input type="radio" name="CATEGORY" value="Business">
                                            <i></i>Business
                                        </label>
                                        <label class="radio">
                                            <input type="radio" name="CATEGORY" value="Location">
                                            <i></i>Location
                                        </label>
                                    </div>
                                </div>
                                <div class="row">
<!--                                    <div class="col col-2 select-searches"><label><strong>Select Search(es)</strong></label></div>
                                    <div class="col "><label id="searchesSelected"></label></div>-->
                                    <div class="col col-8 select-searches"><label><strong>Select Search(es): </strong></label>
                                    <label id="searchesSelected"></label></div>
                                </div>
                                <br/>
                                <div class="row">
                                    <div class="col col-3 left-section">
                                        <div class="table-responsive">
                                            <table class="table table-hover table-bordered step1" id='sections'>
                                                <tbody>
                                                    <tr>
                                                        <td class="active"><i class="fa fa-graduation-cap">&nbsp;&nbsp;&nbsp;</i><span id="pselect">People</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td><i class="fa fa-bank"></i>&nbsp;&nbsp;&nbsp;<span id="bselect">Business</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td><i class="fa fa-building"></i>&nbsp;&nbsp;&nbsp;<span id="lselect">Location</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td><i class="fa fa-legal"></i>&nbsp;&nbsp;&nbsp;<span id="cselect">Court & Admin Filings</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td><i class="fa fa-newspaper-o"></i>&nbsp;&nbsp;&nbsp;<span id="nselect">News</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td><i class="fa fa-globe"></i>&nbsp;&nbsp;&nbsp;<span id="iselect">International</span></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <span id="sitems-error"></span>
                                    </div>
                                    <div class="col col-7 right-section">
                                        <div class="section-header"  >
                                            <i class="fa fa-graduation-cap" id="sectionIcon"></i>  <strong><span id="sectionTitle">People</span></strong>
                                        </div>
                                        <div class="">
                                            <div class="col" id="cblist">
                                                <!--<label class="checkbox">
                                                    <input type="checkbox" name="checkbox" checked="checked">
                                                    <i></i>Alexandra</label> -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="mfooter">
                                        <button type="submit" class="btn btn-danger" id='submitBtn'>
                                        Continue
                                        </button>
                                        <button type="submit" class="btn" id='cancelBtn'>
                                        Cancel
                                        </button>
                                    </div>
                                </div>
                                <input type='hidden' name='MYTASK' value="0">
                                <input type='hidden' name='MYTASKVALS' value="0">
                                <input type='hidden' name='EDIT' value="<tmpl_var name=EDIT>">
                                <input type='hidden' name='EVENT' value="MYTASK/CREATE_STEP2">
                            </form>
                        </div>

                    </div>
                <div id="search-steps" class="col col-2">
                    <div>
                        <header>
                            <!--<span class="widget-icon"> <i class="fa fa-edit"></i> </span>-->
                            <h2>Create myTask Steps</h2>
                        </header>
                        <!-- this was where the oother steps were -->
                        <!-- right hand steps thing -->
                        <div class="row">
                            <div class="col-md-12 vert-grey-line">
                                <div class="row otp-row">
                                    <span onclick="javascript:show_loading(); mytask_step1();">
                                    <button tabindex="-1" type="button" id="name_btn" class="otp-current otp" >1</button>&nbsp;
                                    <a id="name_text" class="otp-current-text">Name task & Select searches</a>
                                    </span>
                                </div>
                                <div class="row otp-row">
                                    <span>
                                    <button tabindex="-1" type="button" id="order_btn" class="otp-not-visited otp" >2</button>&nbsp;
                                    <span id="order_text" class="otp-not-visited-text">Order searches & Set search properties</span>
                                    </span>
                                </div>
                                <div class="row otp-row">
                                    <span>
                                    <button tabindex="-1" type="button" id="add_btn" class="otp-not-visited otp" >3</button>&nbsp;
                                    <!--<img id="v" class="hidden add_instruct svg_otp_circle" src="<TMPL_VAR NAME="IMGPATH">/PNGs/fail.png">-->
                                    <span id="add_text" class="otp-not-visited-text">Add instructions</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                </div>
                <!-- end widget grid -->
                <script type="text/javascript">
                    var sections = '<tmpl_var name=SECTIONS>';
                    var mytaskSelections  = [];
                    var mytaskSectionwise = {};
                    var currentSubSection,currentSection;
                    var defaults = {'People':'pselect','Business':'bselect','Location':'lselect','Court & Admin Filings':'cselect','News':'nselect','International':'iselect'};
                    var edit = <tmpl_if EDIT><tmpl_var name=EDIT><tmpl_else>0</tmpl_if>;
                    var editParams = <tmpl_if EDITPARAMS><tmpl_var name=EDITPARAMS><tmpl_else>0</tmpl_if>; 
                    
                    $(function(){
                    currentSection    = 'Person';
                    currentSubSection = 'People';
                    getSearchItems(currentSection,currentSubSection);
                    for(k in defaults){mytaskSectionwise[k] = 0;}
                    
                    //When the leftside options are selected
                    $("table#sections td").click(function(e){
                        
                        $("table#sections td").removeClass("active");
                        
                        currentSection    = $("input[name=CATEGORY]:checked").val();
                        currentSubSection = getclickedSubsection( $(this).text());
                        //console.log( currentSection + "---" +currentSubSection);
                        $(this).addClass("active");
                        
                        changeSectionHeader(currentSubSection);
                        getSearchItems(currentSection,currentSubSection);
                    });
                    
                    //reset selections when the main section is changed
                    $('input:radio[name="CATEGORY"]').change(
                    function(){
                        $("table#sections td").removeClass("active");
                        $("table#sections td").first().addClass("active");
                         for(k in defaults){mytaskSectionwise[k] = 0;}
                         mytaskSelections = []; 
                         resetSelections();          
                         currentSection    = this.defaultValue;
                         currentSubSection = 'People';
                         getSearchItems(currentSection,currentSubSection);
                         changeSectionHeader(currentSubSection);
                    });
                    
                    $('#cancelBtn').click(function(e){
                        $("#mytask-form")[0].reset();
                        $("#mytask-form").validate().settings.ignore = "*";
                        send_event('SEARCH/SHOW_MENU');
                    });
                    $('#submitBtn').click(function(e){
                        if (!$("#mytask-form").valid()) {
                            return;
                        }
                        var str=''; var str2='';
                        for(var k in mytaskSelections){
                            if(mytaskSelections[k] !=0){
                                 str+=k + "|";  
                                 str2+= sanit(mytaskSelections[k]) + "|";
                            }
                        }    
                    
                        /*
                            if(str == '' ||  $('input[name=NAME]').val() == '' || $('input[name=DESCRIPTION]').val() == '' ){
                                alert("Please input the Name, Description and select a search to proceed");
                                return false;
                            }
                        */
                        
                        $("input[name=MYTASK]").val(str);
                        $("input[name=MYTASKVALS]").val(str2);
                        send_event('MYTASK/CREATE_STEP2');
                    });
                    
                    
                    //Initialize values if we are in edit mode
                    if(edit == 1){
                        setEditValues();    
                    }
                    
                    });
                    
                    
                    //when checkboxes are selected
                    $(document).on('change' , '.checkbox' , function(){
                    
                        //console.dir(this.childNodes[3].data + '---' +this.childNodes[1].defaultValue + '---' + currentSubSection);
                        if(this.childNodes[1].checked){
                            mytaskSelections[this.childNodes[1].defaultValue] = this.childNodes[3].data;
                            mytaskSectionwise[currentSubSection]++;
                            showSectionIncrease(currentSubSection, true, mytaskSectionwise );
                        }else{
                            mytaskSelections[this.childNodes[1].defaultValue] = 0;
                            mytaskSectionwise[currentSubSection]--;
                            showSectionIncrease(currentSubSection, false, mytaskSectionwise );
                        }
                        showSelectionString(mytaskSelections);
                    
                    
                    });
                    
                    
                    //initialise values while doing an edit operation
                    function setEditValues(){
                        $("input[name=NAME]").val(editParams['name']);
                        $("textarea[name=DESCRIPTION]").val(editParams['desc']);
                        $('#searchesSelected').text( sanit(editParams['taskstr']) );

                        $("input[name=CATEGORY][value=" + editParams['type'] +"]").prop('checked',true);
                        currentSection = editParams['type'];

                        //check the checkboxes for the searches that were selected
                        //and increment the count against each subsection headers
                        var tmp = [];
                        for(subsection in defaults){
                            getSearchItems(currentSection,subsection);
                            for(tid in editParams['task']){
                                $("input[name=SITEMS][value=" + tid +"]").prop('checked',true);
                                mytaskSelections[tid] = editParams['task'][tid];    
                                if($("input[name=SITEMS][value=" + tid +"]").prop('checked') && tmp[subsection + tid] !=1 ){
                                    mytaskSectionwise[subsection]++;
                                    showSectionIncrease(subsection, true, mytaskSectionwise );
                                    tmp[subsection+tid] =1;
                                }
                            }
                        }

                        currentSubSection = 'People';
                        getSearchItems(currentSection,currentSubSection);
                        changeSectionHeader(currentSubSection);
                    
                    }
                    
                    function resetSelections(){
                        $('#searchesSelected').text("");
                        for(var k in defaults){
                                $('#'+defaults[k]).text(k);
                        }
                    }
                    
                    function getclickedSubsection(subsection) {
                        for(var k in defaults){
                            //console.log(subsection + '---' + k);
                            if(subsection.indexOf(k) != -1)
                                return k;
                        }
                    }
                    
                    function showSectionIncrease(subsection, increment){
                        for(var k in defaults){
                            //console.log(subsection + '---' + k);
                            if(subsection.indexOf(k) != -1){
                                $('#'+defaults[k]).text(k + '     (' + mytaskSectionwise[k] + ')');
                                break;
                            }
                        }
                    }
                    
                    function showSelectionString(mtasksel){
                        var str='';
                        for(var k in mtasksel){
                            if(mtasksel[k] !=0)
                                str+=mtasksel[k] + ', ';
                        }
                        $('#searchesSelected').text(sanit(str));
                    }    
                    
                    function addCheckbox(name,id){
                        var checked = '';
                        if(mytaskSelections[id] && mytaskSelections[id] !=0) checked='checked';

                        var str = '<label class="checkbox"> <input type="checkbox" name="SITEMS" value="' + id + '" ' + checked +' /><i></i>'+ name + '</label> ';
                        $('#cblist').append(str);
                    }


                        function getSearchItems(mainCat, section){
                            var json = JSON.parse(sections);
                            $('#cblist').empty();
                            $.each(json[mainCat][section], function(idx,obj){
                                addCheckbox(obj[0], obj[1]);
                            });
                        }
                    
                    function changeSectionHeader( textval){
                        var icon = {
                            'People'                : 'fa fa-graduation-cap',
                            'Business'              : 'fa fa-bank',
                            'Location'              : 'fa fa-building',
                            'Court & Admin Filings' : 'fa fa-legal',
                            'News'                  : 'fa fa-newspaper-o',
                            'International'         : 'fa fa-globe',
                        };
                            $("#sectionIcon").attr("class", icon[textval]);
                            $("#sectionTitle").text(textval);
                    }
                    
                    // form validation
                    
                    $(function() {
                        $("#mytask-form").validate({
                            rules: {
                                "NAME": {
                                    required: true
                                },
                                "DESCRIPTION": {
                                    required: true
                                },
                                "SITEMS": { 
                                    required: function (element) {
                                        var boxes = $('input[name=SITEMS]');
                                        if (boxes.filter(':checked').length == 0) {
                                            return true;
                                        }
                                        return false;
                                    },
                                    minlength: 1 
                                } 
                            },
                            messages: { 
                                SITEMS: "Missing required information.",
                                NAME: "Missing required information.",
                                DESCRIPTION: "Missing required information."
                            },
                            errorPlacement: function(error, element) {
                                if (element.attr("name") == "SITEMS") {
                                    $("#sitems-error").html(error);
                                }
                                else {
                                    error.insertAfter(element);
                                }
                            }
                        });
                    });
                    
                    function mytask_step1() {
                        send_event('MYTASK/CREATE_STEP1');
                    }
                    function mytask_step2() {
                        send_event('MYTASK/CREATE_STEP2');
                    }
                    function mytask_step3() {
                        send_event('MYTASK/CREATE_STEP3');
                    }

                </script>
                <!-- End of the create mytask part -->
            </div>
        </div>
        <TMPL_INCLUDE NAME="footer.tpl">
    </body>
</html>