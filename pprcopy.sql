insert into pms_data_answer (pms_data_id, list_owner_pms_id, name, description, mapping, use_field)
select pms_data_id, 2955, name, description, mapping, use_field from pms_data_answer where list_owner_pms_id=2944 and pms_data_id in (48,51,50,41,47)

insert into pms_mapping_question (question_id, pms_data_id, list_owner_pms_id)
select 30894, pms_data_id, 2955 from pms_mapping_question where list_owner_pms_id=2944 and pms_data_id in (48,51,50,41,47) and question_id=8074;
insert into pms_mapping_question (question_id, pms_data_id, list_owner_pms_id)
select 30896, pms_data_id, 2955 from pms_mapping_question where list_owner_pms_id=2944 and pms_data_id in (48,51,50,41,47) and question_id=8056;
insert into pms_mapping_question (question_id, pms_data_id, list_owner_pms_id)
select 30893, pms_data_id, 2955 from pms_mapping_question where list_owner_pms_id=2944 and pms_data_id in (48,51,50,41,47) and question_id=8336;
insert into pms_mapping_question (question_id, pms_data_id, list_owner_pms_id)
select 30895, pms_data_id, 2955 from pms_mapping_question where list_owner_pms_id=2944 and pms_data_id in (48,51,50,41,47) and question_id=8337;

insert into pms_mapping_answer (pms_mapping_question_id, answer_type_id, pms_data_answer_id, use_field, list_owner_pms_id)
select pmq_target.pms_mapping_question_id, pma_source.answer_type_id, pda_target.pms_data_answer_id, pma_source.use_field, 2955
from pms_mapping_answer pma_source, pms_mapping_question pmq_source, pms_data_answer pda_source, pms_data_answer pda_target, pms_mapping_question pmq_target
where pma_source.list_owner_pms_id = 2944
and pma_source.list_owner_pms_id = pmq_source.list_owner_pms_id
and pma_source.list_owner_pms_id = pda_source.list_owner_pms_id
and pda_source.pms_data_id in (48,51,50,41,47)
and pmq_source.pms_data_id = pda_source.pms_data_id
and pma_source.pms_mapping_question_id = pmq_source.pms_mapping_question_id
and pma_source.pms_data_answer_id = pda_source.pms_data_answer_id
and pda_target.list_owner_pms_id=2955
and pmq_target.list_owner_pms_id=2955
and pda_target.pms_data_id=pda_source.pms_data_id
and pmq_target.pms_data_id=pmq_source.pms_data_id
and pda_target.mapping = pda_source.mapping