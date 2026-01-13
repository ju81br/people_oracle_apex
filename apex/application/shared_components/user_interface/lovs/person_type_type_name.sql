prompt --application/shared_components/user_interface/lovs/person_type_type_name
begin
--   Manifest
--     PERSON_TYPE.TYPE_NAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>8596491594951640
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'APP_APEX'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10426208404138325)
,p_lov_name=>'PERSON_TYPE.TYPE_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PERSON_TYPE'
,p_return_column_name=>'PERSON_TYPE_ID'
,p_display_column_name=>'TYPE_NAME'
,p_default_sort_column_name=>'TYPE_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>41743496914652
);
wwv_flow_imp.component_end;
end;
/
