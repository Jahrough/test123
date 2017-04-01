<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
									&times;
								</button>
								<h4 class="modal-title" id="myModalLabel">Notes & Instructions : <tmpl_var name></h4>
								<h5 class="modal-title" id="myModalLabel2"><tmpl_var description></h5>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-12">
									  <section class="col col-12">
                                        <div role="content">
                                            <!-- widget content -->
                                            <div class="widget-body no-padding">
                                                
                                                    <table class="table table-hover" id='sections'>
                                                        <thead>
                                                            <th>Search Name</th>
                                                            <th>Run Mode</th>
                                                            <th>Note Section</th>
                                                            <th>Notes</th>
                                                        </thead>
                                                        <tbody>
                                                            <tmpl_loop name="NLOOP">
                                                             <tr>
                                                                <td> <tmpl_var name='name'>  </td>
                                                                <td> <tmpl_var name='mode'>  </td>
                                                                <td> Searches  </td>
                                                                <td> <tmpl_var name='in'>  </td>
                                                             </tr>   
                                                             <tr>
                                                                <td> </td>
                                                                <td> </td>
                                                                <td> Results  </td>
                                                                <td> <tmpl_var name='out'>  </td>
                                                             </tr>   
                                                             <tr>
                                                                <td> </td>
                                                                <td> </td>
                                                                <td> Reports  </td>
                                                                <td> <tmpl_var name='rep'>  </td>
                                                             </tr>   
                                                             <tr><td colspan="4"><hr/></td></tr>
                                                            </tmpl_loop>
                                                        </tbody>
                                                    </table>
                                                
                                            </div>
                                            <!-- end widget content -->

                                        </div>
                                    </section>
									</div>
								</div>

				
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-primary" data-dismiss="modal">
									Close
								</button>
							</div>
						</div><!-- /.modal-content -->
					</div><!-- /.modal-dialog -->