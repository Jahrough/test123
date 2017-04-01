<!-- START v3/payments/payment_bottom.tpl -->

                        </div>
                    </div>
                </div>
            </div>

            <TMPL_INCLUDE NAME=myaccount_footer.tpl>
            <TMPL_INCLUDE NAME="classic_footer.tpl">

            <TMPL_IF NAME="ERROR_MSG">
                <script>alert('<TMPL_VAR NAME=ERROR_MSG>\n');</script>
            </TMPL_IF>

            <TMPL_IF NAME="ERROR_MSG_LIST">
                <script>
                var errortext = '';
                <TMPL_LOOP NAME="ERROR_MSG_LIST">
                errortext += '<TMPL_VAR NAME=MSG>\n';
                </TMPL_LOOP>
                alert(errortext);
                </script>
            </TMPL_IF>

        </form>
    </body>
</html>
<!-- END v3/payments/payment_bottom.tpl -->