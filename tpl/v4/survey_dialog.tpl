<!-- BEGIN: v4/survey_dialog.tpl -->
    <div class="modal-dialog trap">
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">Survey Question (Question <TMPL_VAR NAME="QUESTION_NO"> of <TMPL_VAR NAME="SURVEY_SIZE">)</h4>
        </div>
        <div class="modal-body">
          <form name="PRINT_FORM" id="survey_print_download" class="smart-form print-download-form">
          <INPUT type="hidden" name="SURVEY_ID" value="<TMPL_VAR NAME="SURVEY_ID">">
          <INPUT type="hidden" name="QUESTION_NO" value="<TMPL_VAR NAME="QUESTION_NO">">
          <INPUT type="hidden" name="ANSWER_VAL" value="<TMPL_VAR NAME="ANSWER_VAL">">
          <INPUT type="hidden" name="EVENT" value="<TMPL_VAR NAME="EVENT">">
              <div>
                  <span id="survey_question_text"><strong><TMPL_VAR NAME="QUESTION_TEXT"></strong></span><br><br>
                  <span id="survey_answer_vals">
                        <TMPL_IF SURVEY_TEXT>
                          <INPUT type="hidden" name="QUESTION_TYPE" value="SURVEY_TEXT">
                          <input placeholder="Enter Text Here*" type="text" id="<TMPL_VAR NAME=INDEX>" class="form-control" name="TEXT_RESULT" <TMPL_IF NAME="SECURITY_QUESTION_EDIT_DISABLED">disabled="disabled"</TMPL_IF> value="<TMPL_VAR NAME="SECURITY_ANSWER">" maxlength="800" height="180px">
                        </TMPL_IF>
                        <TMPL_IF SURVEY_TRUE_FALSE>
                        <INPUT type="hidden" name="QUESTION_TYPE" value="SURVEY_TF">
                                <TMPL_LOOP NAME=SURVEY_ANSWER_VAL_LOOP>
                                   <span id="survey_tf_answer">
                                   <label class="radio-inline">
                                      <input type="radio" value="<TMPL_VAR NAME=ANSWER_VAL>" name="TRUE_FALSE_RESULT"><i></i><TMPL_VAR NAME=ANSWER_VAL></label>
                                   </label>
                                   </span><br>
                                </TMPL_LOOP>
                        </TMPL_IF>
                        <TMPL_IF SURVEY_RADIO_BUTTONS>
                        <INPUT type="hidden" name="QUESTION_TYPE" value="SURVEY_RADIO">
                                <TMPL_LOOP NAME=SURVEY_ANSWER_VAL_LOOP>
                                   <span id="survey_radio_answer">
                                              <label class="radio-inline">
                                                  <input type="radio" value="<TMPL_VAR NAME=ANSWER_VAL>" name="RADIO_RESULT"><i></i><TMPL_VAR NAME=ANSWER_VAL></label>
                                              </label>
                                   </span><br>
                                </TMPL_LOOP>
                        </TMPL_IF>
                        <TMPL_IF SURVEY_CHECK_BOXES>
                        <INPUT type="hidden" name="QUESTION_TYPE" value="SURVEY_CHECKBOX">
                                <TMPL_LOOP NAME=SURVEY_ANSWER_VAL_LOOP>
                                  <div class="checkbox-row">
                                    <input type="checkbox" id="<TMPL_VAR NAME=ANSWER_VAL>" name="<TMPL_VAR NAME=ANSWER_VAL>" <TMPL_IF CHECKED>checked="checked"</TMPL_IF>><TMPL_VAR NAME=ANSWER_VAL>
                                  </div>
                                </TMPL_LOOP>
                        </TMPL_IF>
                        <TMPL_IF SURVEY_DROPDOWN>
                        <INPUT type="hidden" name="QUESTION_TYPE" value="SURVEY_DROPDOWN">
                                       <div class="input col col-4">
                                           <label class="select">
                                              <select id="DROPDOWN_RESULT" name="DROPDOWN_RESULT" >
                                                 <TMPL_LOOP NAME=SURVEY_ANSWER_VAL_LOOP>
                                                   <option value="<TMPL_VAR NAME=ANSWER_VAL>"><TMPL_VAR NAME=ANSWER_VAL></option>
                                                 </TMPL_LOOP>
                                               </select>
                                           </label>
                                       </div>
                        </TMPL_IF>
                  </span>
        </form>
        </div><br><br><br>
        <div class="modal-footer">
                <div>
                    <TMPL_IF MORE_QUESTIONS>
                        <button id="next-survey-question" class="btn btn-danger" type="button">&nbsp;&nbsp;Next Question&nbsp;&nbsp;</button>
                        <button id="cancel-survey" class="btn btn-default" type="button">&nbsp;&nbsp;Cancel&nbsp;&nbsp;</button>
                    <TMPL_ELSE>
                        <button id="final-survey-question" class="btn btn-danger" type="button">&nbsp;&nbsp;Finish&nbsp;&nbsp;</button>
                    </TMPL_IF>
                </div>
        </div>
      </div>
    </div>
<!-- END: v4/print_download_dialog.tpl -->
