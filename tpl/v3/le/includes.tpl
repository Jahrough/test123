<TMPL_INCLUDE NAME="base_includes.tpl">  
     
   <!-- Code below moved from various templates to the header to be 508 compliant -->  
   <script src="<TMPL_VAR NAME='JSPATH'>/v3/search_decisions_gov.js"></script>  
     
   <script src="<tmpl_var name='JSPATH'>/ln/lexis.js"></script>  
   <script src="<tmpl_var name='JSPATH'>/ln/server.js"></script>  
   <script src="<tmpl_var name='JSPATH'>/ln/config.js"></script>  
   <script src="<tmpl_var name='JSPATH'>/ln/misc.js"></script>  
   <script src="<TMPL_VAR NAME='JSPATH'>/gmapslib.js"></script>
   <script src="<TMPL_VAR NAME='JSPATH'>/v3/gmapsv3.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/le.js"></script>

<script>
function checkMake()
{
  if (document.forms[0].MAKE.value === 'All' ||  document.forms[0].MAKE.value === '') {
      alert("Please choose the Vehicle Makes before choosing the Vehicle Models.");
      return 0;
  }
    show_vehicles_info(2);
}
function set_time_out_mv_wildcard(){
  setTimeout(updateVehicleAspects,500);
}
function mvr_exception(realObj,dispObj) {
    var realVal = realObj.val();
    var dispVal = dispObj.val();
    if(realVal !== dispVal){
        if(realVal !== 'All' || dispVal !== '' || dispVal === 'Major Color'){
            if(realVal === 'All'){
                dispObj.val('');
                reset_a_placeholder(dispObj);
            } else {
                dispObj.val(realVal);
            }
        }
        else if(dispVal === '' && realVal === 'All'){
            reset_a_placeholder(dispObj);
        }
    } 
    else if(dispVal === 'All'){
        dispObj.val('');
    }
    else if(realVal === ''){
        realObj.val('All');
    }
}
function updateVehicleAspects() {
    mvr_exception($j('[name=MAJOR_COLOR]'),$j('#MAJOR_COLOR_FAUX'));
    mvr_exception($j('[name=MINOR_COLOR]'),$j('#MINOR_COLOR_FAUX'));
    mvr_exception($j('[name=MAKE]'),$j('#MAKE_FAUX'));
    mvr_exception($j('[name=MODEL]'),$j('#MODEL_FAUX'));
    
    setTimeout(updateVehicleAspects,1000);
}
function reset_a_placeholder(obj) {
    if (navigator.userAgent.indexOf('MSIE') !== -1) {
        obj.val(obj.attr("placeholder"));
        placeholder_restyle_obj(obj);
    }
}
</script>