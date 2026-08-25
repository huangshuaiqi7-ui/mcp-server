-- 把 MCP prompts/resources 元能力包装成内置 Tool，方便只发现 tools/list 的客户端使用。

INSERT IGNORE INTO mcp_role_tool (role_code, tool_name) VALUES
('ADMIN', 'list_mcp_prompts'),
('ADMIN', 'list_mcp_resources'),
('ADMIN', 'read_mcp_resource');

INSERT IGNORE INTO mcp_user_tool_selection (token_id, tool_name, tool_type, is_enabled) VALUES
(1, 'list_mcp_prompts', 'BUILTIN', 1),
(1, 'list_mcp_resources', 'BUILTIN', 1),
(1, 'read_mcp_resource', 'BUILTIN', 1);
