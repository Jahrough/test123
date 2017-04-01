
                <div class="group_section_data group_fade13"><!-- section -->
                    <a name="assign_users"></a>
                    <div class="group_section">
                        <strong><span class="assign_users_icon svg-icon-normal sect_13">Assign Users</span></strong>
                        <span class="fl_right"><i class="fa fa-14 fa-chevron-up fa-fw"></i> <i style="display: none;" class="fa fa-14 fa-chevron-down fa-fw"></i></span><span class="clear"></span>
                    </div>
                    <div class="group_section_content formfields">
                        
                      <div class="form_field">  
                        <div class="fl_left">
                            <strong>Available Users</strong><br>
                            <input type="text" name="findavailuser" id="findavailuser" size="35" title="Find Available User" placeholder="Find Available User"/>
                            <p>
                            </p><div class="list_users">
                                <input id="add_all" type="checkbox"> <label for="add_all"><strong>Select All</strong></label>
                                <div class="padl20" id='avail_users'>
                                    <tmpl_loop USER_LIST>
                                      <p class="avail-checkbox-paragraph" style="margin:0;padding:0">
                                      <TMPL_IF MANAGE_UPDATE_GROUP>
                                        <label for="<tmpl_var NAME='USER_ID'>">
                                          <input class="available_users" name="add_to" id="<tmpl_var NAME='USER_ID'>" value="<tmpl_var NAME='USER_ID'>" type="checkbox"><TMPL_VAR NAME='USER_NAME'> (<TMPL_VAR NAME='USER_LOGINID'>)
                                        </label>
                                      <TMPL_ELSE>
                                        <label for="<tmpl_var NAME='USERID'>">
                                          <input class="available_users" name="add_to" id="<tmpl_var NAME='USERID'>" value="<tmpl_var NAME='USERID'>" type="checkbox"><TMPL_VAR NAME='LASTNAME'>, <TMPL_VAR NAME='FIRSTNAME'> (<TMPL_VAR NAME='LOGINID'>)
                                        </label>
                                      </TMPL_IF>  
                                      </p> 
                                    </tmpl_loop>        
                                </div>
                            </div>
                        </div>
                        <div class="fl_left add_minus_arrow">
                            <p><a href="javascript:moveSelectedOptionsRight()"><i class="fa fa-2x fa-arrow-circle-right fa-fw"></i></a></p>
                            <p><a href="javascript:moveSelectedOptionsLeft()"><i class="fa fa-2x fa-arrow-circle-left fa-fw"></i></a></p>
                        </div>
                        <div class="fl_left">
                            <strong>Assigned Users</strong><br />
                            <input type="text" name="findassigneduser" id="findassigneduser" size="35" title="Find Assigned User" placeholder="Find Assigned User" />
                            <p>
                            <div class="list_users_right">
                                <input id="remove_all" type="checkbox"> <label for="remove_all"><strong>Select All</strong></label>
                                <div class="padl20" id='asign_users'>
                                    <tmpl_loop CURRENT_GROUP_USERS>
                                      <p class="assig-checkbox-paragraph" style="margin:0;padding:0">
                                        <label for="<tmpl_var NAME='USER_ID'>">
                                          <input class="assigned_users" name="remove_from" value="<tmpl_var NAME='USER_ID'>" type="checkbox"><TMPL_VAR NAME='USER_NAME'>(<TMPL_VAR NAME='USER_LOGINID'>)<br>
                                        </label>
                                      </p>                                          
                                    </tmpl_loop>        
                                </div>
                            </div>
                        </div>
                     </div>
                        <div class="clear"></div>
                        <br>
                        <div class="fl_right"><a href="#top"><i class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></i> Top</a></div>
                        <div class="clear"></div>
                    </div>
                    <!-- /section --></div>
