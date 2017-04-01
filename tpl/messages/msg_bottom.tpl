<TMPL_IF ENABLE_V3>

        </div>

    </div>
</div>


<div class="pageFooterWrapper" style="padding:0px;">
    <div class="pageFooterCon">
        <span>
            <ul>
                <li><a target="_blank" href="http://www.lexisnexis.com/terms/copyright.aspx" title="Copyright">Copyright &COPY;</a> <script>document.write(new Date().getFullYear())</script><noscript>Your browser does not support JavaScript!</noscript> LexisNexis Risk Solutions. All rights reserved.</li>
                <li class="divider">|</li>
                <li><a href="http://www.lexisnexis.com/en-us/terms/privacy-policy.page" target="_blank" title="Privacy and Security">Privacy & Security</a></li>
                <li class="divider">|</li>
                <li><a href="http://www.lexisnexis.com/risk/terms/" target="_blank" title="Terms and Conditions">Terms & Conditions</a></li>
            </ul>
        </span>
    </div>
</div>
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
</form>
</body>
</html>
<TMPL_ELSE>
            </td>
            <td bgcolor="#b8b8b8" height="261" width="5"><img src="<TMPL_VAR NAME=IMGPATH>/grayspc.gif" width="5" height="5" border="0"></td>
          </tr>
          <tr height="5">
            <td colspan="3" bgcolor="#b8b8b8" height="5"><img src="<TMPL_VAR NAME=IMGPATH>/grayspc.gif" width="5" height="5" border="0"></td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    <br><br>
    </td>
  </tr>
</table>
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
<TMPL_INCLUDE NAME="classic_footer.tpl">
</form>
</body>
</html>
</TMPL_IF>
