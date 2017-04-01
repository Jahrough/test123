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
        <div class="container">
        <div class="row">
            <div class="col col-8">
                <h4>
                    <strong>
                        Create myTasks - 
                        <tmpl_var name="MNAME">
                    </strong>
                </h4>
                <p>This allows you to create a group of searches that can be run all at once (automatic), individually (manual), or a combination of the two (hybrid).
                    Enter optional instructions for each search included in this myTask.
                </p>
            </div>
        </div>
        <div>
            <div class="row" >
                <div class="col col-8 border-right-dotted">
                    <div>
                        <header>
                            <h4><strong>Step 3: Add instructions for -  <tmpl_var name="DESC"></strong></h4>
                        </header>
                        <div class="grey-box">
                            <button type="submit" class="btn" id='skipsubmitBtn'> Skip All Instructions and Save </button>&nbsp;
                        </div>
                        <div>
                            <form id="mytask-form" class="smart-form" novalidate="novalidate" method="POST" action="<tmpl_var action>">
                   
                                    <div>
                                        <div class="table-responsive">
                                            <table class="table table-hover step3" id='sections'>
                                                <thead>
                                                    <th>Search Name</th>
                                                    <th>Run Mode</th>
                                                    <th>Section</th>
                                                    <th>Input Notes/Instructions</th>
                                                </thead>
                                                <tbody>
                                                    <tmpl_loop name="MYTASKVALS">
                                                        <tr id="row<tmpl_var did>a">
                                                            <td>
                                                                <tmpl_var name='name'>
                                                            </td>
                                                            <td>
                                                                <tmpl_var name='mode'>
                                                            </td>
                                                            <td class="border-bottom-solid"> Searches  </td>
                                                            <td class="border-bottom-solid"><div class="form-group"><textarea class="form-control" data-in-sid='<tmpl_var name=sid>' rows="3" cols='70' name="in<tmpl_var name='did'>" autocomplete="off"></textarea></div> <br/>(1500 characters max)</td>
                                                        </tr>
                                                        <tr id="row<tmpl_var did>b">
                                                            <td>  </td>
                                                            <td>  </td>
                                                            <td class="border-bottom-solid"> Results  </td>
                                                            <td class="border-bottom-solid"> <div class="form-group"><textarea class="form-control" data-out-sid='<tmpl_var name=sid>' rows="3" cols='70' name="out<tmpl_var name='did'>" autocomplete="off"></textarea></div> <br/>(1500 characters max)</td>
                                                        </tr>
                                                        <tr id="row<tmpl_var did>c" class="border-bottom-solid">
                                                            <td>   </td>
                                                            <td>   </td>
                                                            <td> Report  </td>
                                                            <td> <div class="form-group"><textarea class="form-control" data-rep-sid='<tmpl_var name=sid>' rows="3" cols='70' name="rep<tmpl_var name='did'>" autocomplete="off"></textarea></div> <br/>(1500 characters max)</td>
                                                        </tr>
                                                    </tmpl_loop>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="grey-box">&nbsp;</div><br/><br/>
                                    </div>
                                <div class="mfooter">
                                    <button type="submit" class="btn" id='cancelBtn'>
                                    Cancel
                                    </button>
                                    <button type="submit" class="btn btn-danger" id='submitBtn'>
                                    Continue
                                    </button>
                                    <button type="submit" class="btn" id='prevBtn'>
                                    < Previous
                                    </button>
                                    </footer>
                                    <input type='hidden' name='BACKEDIT'   value="0">
                                    <input type='hidden' name='RUNMODE'    value="0">
                                    <input type='hidden' name='MYTASK'     value="0">
                                    <input type='hidden' name='MYTASKVALS' value="0">
                                    <input type='hidden' name='EDIT' value="<tmpl_var name=EDIT>">
                                    <input type='hidden' name='EVENT'      value="MYTASK/SAVE">
                            </form>
                            </div>
                        </div>
                    </div>
                </div>
                    <div id="search-steps" class="col col-2">
                        <div>
                            <header>
                                <h2>Create myTask Steps</h2>
                            </header>
                            <div class="row">
                                <div class="col-md-12 vert-grey-line">
                                    <div class="row otp-row">
                                        <span onclick="javascript:show_loading(); mytask_step1();">
                                        <button tabindex="-1" type="button" id="name_btn" class="otp-visited otp" >1</button>&nbsp;
                                        <a id="name_text" class="otp-visited-text">Name task & Select searches</a>
                                        </span>
                                    </div>
                                    <div class="row otp-row">
                                        <span onclick="javascript:show_loading(); mytask_step2();">
                                        <button tabindex="-1" type="button" id="order_btn" class="otp-visited otp" >2</button>&nbsp;
                                        <a id="order_text" class="otp-visited-text">Order searches & Set search properties</a>
                                        </span>
                                    </div>
                                    <div class="row otp-row">
                                        <span>
                                            <button tabindex="-1" type="button" id="add_btn" class="otp-current otp" >3</button>&nbsp;
                                            <!--<img id="v" class="hidden add_instruct svg_otp_circle" src="<TMPL_VAR NAME="IMGPATH">/PNGs/fail.png">-->
                                            <span id="add_text" class="otp-current-text">Add instructions</span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>     
                </div>
            </div>
        </div>
    </div>
            <script type="text/javascript">
                var mytasks = <tmpl_var name=SELECTIONS>;
                var desc = <tmpl_if INFO><tmpl_var name='INFO'><tmpl_else>0</tmpl_if>;
                var edit = <tmpl_if EDIT><tmpl_var name='EDIT'><tmpl_else>0</tmpl_if>;
                var currentSection = 1;
                var totalSections  = Object.keys(mytasks).length;
                
                $(function(){
                    // Three Navigation buttons
                    $('#cancelBtn').click(function(e){
                        $("#mytask-form")[0].reset();
                        $("#mytask-form").validate().settings.ignore = "*";
                        send_event('SEARCH/SHOW_MENU');
                    });
                    
                    $('#skipsubmitBtn').click(function(e){send_event('MYTASK/SAVE');});
                    
                    $('#prevBtn').click(function(e){ 
                        if(currentSection ==1){
                            history.go(-1); return false;
                        }else{
                            currentSection--;
                            hideSections(currentSection);
                            event.preventDefault();
                        }
                    });
                    
                
                    $('#submitBtn').click(function(e){
                        /*
                        var str=''; var str2=''; var str3 ='';
                        $('td[id^=title]').filter(function(i){str+='-'+mytasks[$.trim($(this).text())]; str+='-'+$.trim($(this).text()); });
                        $('td > label > i').filter(function(i){str2+=($(this).attr('class'))?'-on':'-off';});
                        $("input[name=MYTASK]").val(str);
                        $("input[name=RUNMODE]").val(str2);
                        $("input[name=MYTASKVALS]").val(str3); */
                        $('#skipsubmitBtn').hide();
                        currentSection++;
                        if(currentSection == (totalSections +1)){
                            send_event('MYTASK/SAVE');
                        }else if(currentSection == totalSections ) {
                            $('#submitBtn').html('Save');
                            hideSections(currentSection);
                            event.preventDefault();
                        }else{
                            hideSections(currentSection);
                            event.preventDefault();
                        }
                    });
                
                    //prepopulate values if we are in editing mode
                    if(edit){
                        for(k in desc){
                            $("textarea[data-in-sid="+ k +"]").val(   desc[k]['in']  );
                            $("textarea[data-out-sid="+ k +"]").val(  desc[k]['out'] );
                            $("textarea[data-rep-sid="+ k +"]").val(  desc[k]['rep'] );
                        }    
                    }
                
                    hideSections(currentSection);
                })
                
                function hideSections(toBeShown){
                    for(var i =1; i<= totalSections ; i++){
                        if(i ==toBeShown){
                            $('#row' + i + 'a').show();
                            $('#row' + i + 'b').show();
                            $('#row' + i + 'c').show();
                        }else{
                            $('#row' + i + 'a').hide();
                            $('#row' + i + 'b').hide();
                            $('#row' + i + 'c').hide();
                        }
                    }
                    $('#add_text').html('Add instructions (' + toBeShown +' of '+ totalSections +')');
                }
                
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
        <!--</div>-->
        <TMPL_INCLUDE NAME="footer.tpl">
    </body>
</html>
