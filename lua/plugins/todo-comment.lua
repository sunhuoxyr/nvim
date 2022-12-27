local status, todo_comments = pcall(require, "todo-comments")
if not status then
	return
end

-- FIX, TODO, HACK, WARN, PERE, NOTE, TEST
todo_comments.setup()

--
-- ]t: jump to next todo comment
-- [t: jump to prev todo comment
