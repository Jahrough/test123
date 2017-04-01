<tmpl_if rcs_loop>
    <tmpl_loop rcs_loop>
       <tmpl_if even><span></tmpl_if>
              <div class="rsLeft" title="<tmpl_var title>" ><tmpl_var type> </div> 
          <div class="rsRight">
          <tmpl_if lnk>
           <a href="javascript:rerun_recent(<tmpl_var lnk>)"> <tmpl_var crit></a>
          <tmpl_else>
              <tmpl_var crit>
          </tmpl_if>
          </div>
       <tmpl_if even></span></tmpl_if>
          <br>
    </tmpl_loop>
<tmpl_else>
   <br> <div class="rsLeft">&nbsp;&nbsp;No Activity</div><div class="rsRight"> (Last 24 Hours)</div> <br/>
</tmpl_if>
