local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'" Messages deleted Successfully', 
ok_cb, false)
  else
    send_msg(extra.chatid, 'Count of yours deleted', ok_cb, 
false)
  end end local function run(msg, matches)
  if matches[1] == 'rm' and is_owner(msg) then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 100 or tonumber(matches[2]) < 1 then
        return "more than 1"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = 
msg.to.peer_id, con = matches[2]})
    else
      return "Just in supergroups"
    end
  else
    return "You dont have access"
  end end return {
    patterns = {
        '^[!/#](rm) (%d*)$'
    },
    run = run
    }
