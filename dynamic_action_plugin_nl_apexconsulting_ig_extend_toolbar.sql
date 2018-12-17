prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.4.00.08'
,p_default_workspace_id=>1796704251147828
,p_default_application_id=>102
,p_default_owner=>'KBM_OWNER'
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/nl_apexconsulting_ig_extend_toolbar
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(40659328898878534)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'NL.APEXCONSULTING.IG_EXTEND_TOOLBAR'
,p_display_name=>'IG - Extend Toolbar w. Inputfield'
,p_category=>'INIT'
,p_supported_ui_types=>'DESKTOP'
,p_javascript_file_urls=>'#PLUGIN_FILES#grid.extendToolbar.wInputfield.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function f_render_plugin (',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin)',
'  return apex_plugin.t_dynamic_action_render_result',
'is',
'  v_return apex_plugin.t_dynamic_action_render_result;',
'begin',
'  -- return',
'  v_return.javascript_function := ''extendGridToolbarwInputfield.init'';',
'  v_return.attribute_01        := p_dynamic_action.attribute_01; -- toolbar group',
'  v_return.attribute_02        := p_dynamic_action.attribute_02; -- group position',
'  v_return.attribute_03        := p_dynamic_action.attribute_03; -- label',
'  v_return.attribute_04        := p_dynamic_action.attribute_04; -- size',
'  v_return.attribute_05        := p_dynamic_action.attribute_05; -- max size',
'  v_return.attribute_06        := p_dynamic_action.attribute_06; -- page item',
'  v_return.attribute_07        := p_dynamic_action.attribute_07; -- Item type',
'  v_return.attribute_08        := p_dynamic_action.attribute_08; -- Issue Search',
'  return v_return;',
'end;'))
,p_api_version=>2
,p_render_function=>'f_render_plugin'
,p_standard_attributes=>'REGION:REQUIRED:ONLOAD'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'Dynamic Action Plugin that enables you to declaratively define IG toolbar (input) items that are mapped to Page Items. These Page Items can be referenced in a query.'
,p_version_identifier=>'1.0.0'
,p_plugin_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'v1.0.0 -- Initial version',
''))
,p_files_version=>54
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40659551837878538)
,p_plugin_id=>wwv_flow_api.id(40659328898878534)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Toolbar Group'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'actions3'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Choose one of default IG toolbar groups. With this plugin you can add button to the start or end of the group.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40659992537878540)
,p_plugin_attribute_id=>wwv_flow_api.id(40659551837878538)
,p_display_sequence=>10
,p_display_value=>'1. Search Box Group'
,p_return_value=>'search'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40660407385878540)
,p_plugin_attribute_id=>wwv_flow_api.id(40659551837878538)
,p_display_sequence=>20
,p_display_value=>'2. Saved Reports Group'
,p_return_value=>'reports'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40660970580878540)
,p_plugin_attribute_id=>wwv_flow_api.id(40659551837878538)
,p_display_sequence=>30
,p_display_value=>'3. View Switch Group'
,p_return_value=>'views'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40661400243878540)
,p_plugin_attribute_id=>wwv_flow_api.id(40659551837878538)
,p_display_sequence=>40
,p_display_value=>'4. Actions Menu Group'
,p_return_value=>'actions1'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40661994544878540)
,p_plugin_attribute_id=>wwv_flow_api.id(40659551837878538)
,p_display_sequence=>50
,p_display_value=>'5. Edit & Save Group'
,p_return_value=>'actions2'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40662424099878541)
,p_plugin_attribute_id=>wwv_flow_api.id(40659551837878538)
,p_display_sequence=>60
,p_display_value=>'6. Add Row Group'
,p_return_value=>'actions3'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40662966781878541)
,p_plugin_attribute_id=>wwv_flow_api.id(40659551837878538)
,p_display_sequence=>70
,p_display_value=>'7. Reset Group'
,p_return_value=>'actions4'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40663418846878541)
,p_plugin_id=>wwv_flow_api.id(40659328898878534)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Group Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'L'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Choose group position. Start or end of the toolbar group.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40663808417878541)
,p_plugin_attribute_id=>wwv_flow_api.id(40663418846878541)
,p_display_sequence=>10
,p_display_value=>'Start'
,p_return_value=>'F'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40664334534878541)
,p_plugin_attribute_id=>wwv_flow_api.id(40663418846878541)
,p_display_sequence=>20
,p_display_value=>'End'
,p_return_value=>'L'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40664835467878541)
,p_plugin_id=>wwv_flow_api.id(40659328898878534)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>35
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>true
,p_help_text=>'Label of a text field'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40680990214907777)
,p_plugin_id=>wwv_flow_api.id(40659328898878534)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Size'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'10'
,p_display_length=>3
,p_max_length=>3
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40686568995075620)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'Static'
,p_help_text=>'Size of the text item.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40681245761913419)
,p_plugin_id=>wwv_flow_api.id(40659328898878534)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Max characters'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'100'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40686568995075620)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'Static'
,p_help_text=>'Max length of the input item'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40683180716925662)
,p_plugin_id=>wwv_flow_api.id(40659328898878534)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Set value of Page Item '
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40686568995075620)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'Static'
,p_help_text=>'Copy the value of the item into this page item'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40686568995075620)
,p_plugin_id=>wwv_flow_api.id(40659328898878534)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>30
,p_prompt=>'Item type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'Text'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40687204073076542)
,p_plugin_attribute_id=>wwv_flow_api.id(40686568995075620)
,p_display_sequence=>10
,p_display_value=>'Text'
,p_return_value=>'Text'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40687629878078061)
,p_plugin_attribute_id=>wwv_flow_api.id(40686568995075620)
,p_display_sequence=>20
,p_display_value=>'Date'
,p_return_value=>'Date'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(41837957490739770)
,p_plugin_attribute_id=>wwv_flow_api.id(40686568995075620)
,p_display_sequence=>30
,p_display_value=>'Static'
,p_return_value=>'Static'
,p_help_text=>'A static value - no input.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(41692304404971420)
,p_plugin_id=>wwv_flow_api.id(40659328898878534)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Invoke Search on change?'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40686568995075620)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'Static'
,p_examples=>'Should the "search" action being invoked when the value of this field changes?'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A210D0A202A20617065782D706C7567696E2D657874656E646967746F6F6C62617277496E7075746669656C64202D204F7261636C65204150455820706C7567696E0D0A202A2040617574686F72204D61726B6F20476F7269636B69202F20526F656C';
wwv_flow_api.g_varchar2_table(2) := '20486172746D616E0D0A202A204076657273696F6E2076312E302E300D0A202A20406C6963656E7365204D49540D0A202A2F0D0A2F2A0D0A202A2043686167654C6F673A0D0A202A2076312E302E30202D203230313831313238202D20496E697469616C';
wwv_flow_api.g_varchar2_table(3) := '2052656C656173650D0A202A2F0D0A76617220657874656E6447726964546F6F6C62617277496E7075746669656C64203D207B0D0A0D0A20202F2F20496E69742046756E6374696F6E0D0A2020696E69743A2066756E6374696F6E28297B0D0A20202020';
wwv_flow_api.g_varchar2_table(4) := '766172206461203D20746869733B0D0A20202020617065782E64656275672E6C6F672827657874656E6447726964546F6F6C6261722E696E6974272C6461293B0D0A0D0A202020202F2F2067657420706C7567696E20617474726962757465730D0A2020';
wwv_flow_api.g_varchar2_table(5) := '2020766172207647726F757020202020202020203D2064612E616374696F6E2E61747472696275746530313B0D0A202020207661722076506F736974696F6E20202020203D2064612E616374696F6E2E61747472696275746530323B202F2F2046202D20';
wwv_flow_api.g_varchar2_table(6) := '66697273742C204C202D206C6173740D0A2020202076617220764C6162656C20202020202020203D2064612E616374696F6E2E61747472696275746530333B0D0A20202020766172207653697A652020202020202020203D2064612E616374696F6E2E61';
wwv_flow_api.g_varchar2_table(7) := '747472696275746530343B0D0A2020202076617220764D6178436861727320202020203D2064612E616374696F6E2E61747472696275746530353B0D0A202020207661722076506167654974656D20202020203D2064612E616374696F6E2E6174747269';
wwv_flow_api.g_varchar2_table(8) := '6275746530363B0D0A2020202076617220764974656D5479706520202020203D2064612E616374696F6E2E61747472696275746530373B0D0A202020207661722076497373756553656172636820203D2064612E616374696F6E2E617474726962757465';
wwv_flow_api.g_varchar2_table(9) := '3038203D3D202259223B0D0A0D0A202020202F2F2067657420526567696F6E0D0A202020207661722076526567696F6E4964203D2064612E6166666563746564456C656D656E74735B305D2E69643B0D0A202020207661722076526567696F6E24203D20';
wwv_flow_api.g_varchar2_table(10) := '617065782E6A51756572792864612E6166666563746564456C656D656E74735B305D293B0D0A0D0A202020202F2F20476574205769646765740D0A20202020766172207657696467657424203D20617065782E726567696F6E2876526567696F6E496429';
wwv_flow_api.g_varchar2_table(11) := '2E77696467657428293B0D0A0D0A202020202F2F204772696420637265617465640D0A2020202076617220746F6F6C626172203D2076576964676574242E696E746572616374697665477269642822676574546F6F6C62617222293B0D0A202020207661';
wwv_flow_api.g_varchar2_table(12) := '7220764372656174654974656D203D202128764974656D54797065203D3D202253746174696322293B0D0A0D0A2020202069662028764C6162656C290D0A202020202020766172207650726F6D7074203D207B207479706520202020202020203A202253';
wwv_flow_api.g_varchar2_table(13) := '5441544943220D0A20202020202020202020202020202020202020202C206C6162656C202020202020203A20764C6162656C200D0A20202020202020202020202020202020202020207D3B0D0A2020202069662028764372656174654974656D29200D0A';
wwv_flow_api.g_varchar2_table(14) := '20202020202076617220764974656D2020203D207B207479706520202020202020203A202254455854220D0A20202020202020202020202020202020202020202C206964202020202020202020203A2076506167654974656D2020202F2F205468652067';
wwv_flow_api.g_varchar2_table(15) := '656E6572617465642069642077696C6C2062652076526567696F6E49645F69675F746F6F6C6261725F76506167654974656D0D0A20202020202020202020202020202020202020202C2073697A6520202020202020203A207653697A650D0A2020202020';
wwv_flow_api.g_varchar2_table(16) := '2020202020202020202020202020202C206D61784368617273202020203A20764D61784368617273200D0A20202020202020202020202020202020202020207D3B0D0A0D0A202020202F2F2046697820666F72204150455820352E312E34202020202020';
wwv_flow_api.g_varchar2_table(17) := '2020200D0A202020206C657420636F6E666967203D20242E657874656E6428747275652C207B7D2C20746F6F6C6261722E746F6F6C62617228226F7074696F6E222929202020200D0A2020202076617220746F6F6C62617244617461203D20636F6E6669';
wwv_flow_api.g_varchar2_table(18) := '672E646174613B0D0A2020202076617220746F6F6C62617247726F7570203D20746F6F6C626172446174612E66696C7465722866756E6374696F6E202867726F757029207B20200D0A20202020202072657475726E2067726F75702E6964203D3D3D2076';
wwv_flow_api.g_varchar2_table(19) := '47726F757020200D0A202020207D295B305D3B0D0A2F2F2020202076617220746F6F6C62617247726F7570203D20746F6F6C6261722E746F6F6C626172282266696E6447726F7570222C207647726F75702920293B0D0A200D0A2020202069662028746F';
wwv_flow_api.g_varchar2_table(20) := '6F6C62617247726F757029207B20200D0A2020202020206966202876506F736974696F6E203D3D20274627297B0D0A202020202020202069662028764372656174654974656D2920746F6F6C62617247726F75702E636F6E74726F6C732E756E73686966';
wwv_flow_api.g_varchar2_table(21) := '742820764974656D20293B0D0A2020202020202020696620287650726F6D70742920746F6F6C62617247726F75702E636F6E74726F6C732E756E736869667428207650726F6D707420293B0D0A2020202020207D656C73657B0D0A202020202020202069';
wwv_flow_api.g_varchar2_table(22) := '6620287650726F6D70742920746F6F6C62617247726F75702E636F6E74726F6C732E7075736828207650726F6D707420293B0D0A202020202020202069662028764372656174654974656D2920746F6F6C62617247726F75702E636F6E74726F6C732E70';
wwv_flow_api.g_varchar2_table(23) := '7573682820764974656D20293B0D0A2020202020207D3B2020202020200D0A202020207D20200D0A0D0A20202020746F6F6C6261722E746F6F6C62617228226F7074696F6E222C202264617461222C20636F6E6669672E64617461293B20200D0A0D0A20';
wwv_flow_api.g_varchar2_table(24) := '20202069662028764372656174654974656D29207B0D0A20202020202076617220764974656D4964203D2076526567696F6E4964202B20225F69675F746F6F6C6261725F22202B2076506167654974656D3B0D0A2020202020207661722076416374696F';
wwv_flow_api.g_varchar2_table(25) := '6E73203D2076576964676574242E696E746572616374697665477269642827676574416374696F6E7327293B0D0A0D0A2020202020202F2F205761697420612062697420666F7220696E7374616E74696174696F6E200D0A20202020202073657454696D';
wwv_flow_api.g_varchar2_table(26) := '656F7574282066756E6374696F6E28297B0D0A20202020202020202F2F20536574207468652064656661756C742076616C75650D0A202020202020202024732820764974656D49642C202476282076506167654974656D2029293B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(27) := '2069662028764974656D54797065203D3D20224461746522297B0D0A20202020202020202020617065782E7769646765742E646174657069636B657228222322202B20764974656D49642C0D0A2020202020202020202020207B2022627574746F6E5465';
wwv_flow_api.g_varchar2_table(28) := '7874223A223C7370616E20636C6173733D27612D49636F6E2069636F6E2D63616C656E646172273E3C2F7370616E3E220D0A2020202020202020202020202C202273686F774F6E223A22627574746F6E220D0A2020202020202020202020207D0D0A2020';
wwv_flow_api.g_varchar2_table(29) := '20202020202020202C202264642D6D6D2D797922202F2F242E646174657069636B65722E5F64656661756C74732E64617465466F726D61740D0A20202020202020202020293B200D0A20202020202020202020242820222322202B2076526567696F6E49';
wwv_flow_api.g_varchar2_table(30) := '64202B20225F69675F746F6F6C626172202E75692D646174657069636B65722D7472696767657222292E616464436C617373282022612D427574746F6E2D2D7769746849636F6E20612D427574746F6E2D2D6E6F4C6162656C20612D427574746F6E2061';
wwv_flow_api.g_varchar2_table(31) := '2D546F6F6C6261722D6974656D22293B2020202020200D0A20202020202020207D0D0A20202020202020202428202223222B764974656D496420292E6F6E2820226368616E6765222C2066756E6374696F6E28297B200D0A202020202020202020202473';
wwv_flow_api.g_varchar2_table(32) := '282076506167654974656D2C2024762820764974656D49642029293B0D0A20202020202020202020696628764973737565536561726368292076416374696F6E732E696E766F6B65282273656172636822293B0D0A20202020202020207D293B0D0A2020';
wwv_flow_api.g_varchar2_table(33) := '20207D2C20313030293B0D0A20207D0D0A20200D0A7D0D0A0D0A7D3B0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(40684165097035887)
,p_plugin_id=>wwv_flow_api.id(40659328898878534)
,p_file_name=>'grid.extendToolbar.wInputfield.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
