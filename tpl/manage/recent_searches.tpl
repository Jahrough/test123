<br>
<tmpl_if rcs_loop>
<tmpl_loop rcs_loop>
   <tmpl_if even><span></tmpl_if>
          <div class="rsLeft"><tmpl_var type> </div> <div class="rsRight"><tmpl_var crit></div>
   <tmpl_if even></span></tmpl_if>
	  <br>
</tmpl_loop>
<tmpl_else>
   <br> <div class="rsLeft">&nbsp;&nbsp;No Activity</div><div class="rsRight"> (Last 24 Hours)</div> 
</tmpl_if>
