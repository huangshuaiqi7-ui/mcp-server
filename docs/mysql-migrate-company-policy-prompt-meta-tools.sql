-- 优化公司制度问答 Prompt 的工具链路。
-- 让只发现 tools/list 的客户端也能按推荐工具读取 Resource 原文。

UPDATE mcp_prompt_template
SET linked_tool_names = JSON_ARRAY('list_mcp_resources', 'read_mcp_resource'),
    description = '面向燕雀科技有限公司员工规章制度的问答 Prompt。遇到员工制度、考勤、上班时间、请假、加班调休、办公纪律、信息安全、项目交付、报销、奖惩等问题时，优先使用 list_mcp_resources 和 read_mcp_resource 读取公司制度 Resource，再基于原文回答并引用章节。'
WHERE prompt_name = 'yanque_company_policy_qa';
