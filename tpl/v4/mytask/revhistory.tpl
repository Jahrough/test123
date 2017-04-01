<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
									&times;
								</button>
								<h4 class="modal-title" id="myModalLabel">Revision History : <tmpl_var name></h4>
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
                                                            <th>Version</th>
                                                            <th>Date of Change</th>
                                                            <th>Change Authors Name</th>
                                                            <th>Action</th>
                                                            <th>Notes</th>
                                                        </thead>
                                                        <tbody>
                                                            <tmpl_loop name="NLOOP">
                                                             <tr>
                                                                <td> <tmpl_var name='version'>  </td>
                                                                <td> <tmpl_var name='datechange'>  </td>
                                                                <td> <tmpl_var name='author_name'>  </td>
                                                                <td> <tmpl_var name='action'>  </td>
                                                                <td> <tmpl_var name='notes'>  </td>
                                                             </tr>   
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