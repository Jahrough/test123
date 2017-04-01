<!-- BEGIN v3/batch/batch_base_template.tpl -->
<html>
    <head>
        <title>Batch Base Template</title>
    <TMPL_INCLUDE NAME="batch/batch_includes.tpl">
    </head>

    <body onUnLoad="closewaitwin();" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
    <TMPL_INCLUDE NAME="batch/header_info.tpl">
        <input type="hidden" name="EVENT">
        <script language="JavaScript">
<!-- Any Custom JS goes here -->

        </script>

        <div class="batchCon" style="border-radius: 8px;">
            <div>

                <div class="batch-status-title">Batch Screen Title</div>
                <div class="fieldset-title">Screen Sub Title</div>
                <fieldset class="batchFieldset">


                    <table class="batchInputTable" style="width:100%;">
                        <tbody>

                            <tr>
                                <td colspan="2">
                                    <b>This is batch template file for v3 skin</b>
                                </td>
                            </tr>

                        </tbody>
                    </table>


                    <br/>

                    <table class="batchInputTable" style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <b>Test Input Field:</b>
                                </td>
                                <td>
                                    <input type="text" name="BATCH_NAME" value="">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </fieldset>


                <div class="section-row child-divs-right">
                    <div>

                        <a class="btn darkgrey-btn" href="javascript:void(0);">
                            Cancel Event
                        </a>

                        <a class="btn red-btn" href="javascript:void(0);">
                            Next Event
                        </a>
                    </div>
                </div>
            </div>
        </div>                




        </div>
        </form>
        </div> 
        <TMPL_INCLUDE NAME="batch/batch_footer.tpl"> 
            <!-- END v3/batch/batch_base_template.tpl -->
