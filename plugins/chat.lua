local function run(msg)
if msg.text == "hi" then
	return "Hello\n"..msg.from.first_name
end
if msg.text == "Hi" then
	return "Hello\n"..msg.from.first_name
end
if msg.text == "Hello" then
	return "Hi\n"..msg.from.first_name
end
if msg.text == "hello" then
	return "Hi\n"..msg.from.first_name
end
if msg.text == "slm" then
	return "سلام\n"..msg.from.first_name
end
if msg.text == "Slm" then
	return "سلام\n"..msg.from.first_name
end
if msg.text == "salam" then
	return "سلام\n"..msg.from.first_name
end
if msg.text == "Salam" then
	return "سلام\n"..msg.from.first_name
end
if msg.text == "خوبی" then
	return "فدات تو خوبی؟"
end
if msg.text == "چه خبر" then
	return "سلامتی خبری نیس"
end
if msg.text == "چخبر" then
	return "سلامتی خبری نیس"
end
if msg.text == "وحید" then
	return "با بابام چکار داری؟"
end
if msg.text == "وحید" then
	return "با بابام چکار داری؟"
end
if msg.text == " کارش دارم " then
	return "مای فادِر بیا کارت دارن"
end
if msg.text == " کارش دارم " then
	return "مای فادِر بیا کارت دارن"
end
if msg.text == "شاخ" then
	return "نگاییدم"
end
if msg.text == "ممه شو" then
	return "ممه هاش تکه😂"
end
if msg.text == "ممه شو" then
	return "ممه هاش تکه😂"
end
if msg.text == "bot" then
	return "هوم؟"
end
if msg.text == "سگ" then
	return "😐چخه"
end
if msg.text == "توله سگ" then
	return "😐چخه"
end
if msg.text == "؟" then
	return ":|"
end
if msg.text == "bye" then
	return "Bye\n"..msg.from.first_name
end
if msg.text == "Bye" then
	return "Bye\n"..msg.from.first_name
end
if msg.text == "بای" then
	return "خدافظ\n"..msg.from.first_name
end
if msg.text == "سلام" and is_sudo(msg) then
  return "😐✋سلام مای فادِر"
   else
	return "😐✋سلام\n"..msg.from.first_name
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
		"^[Hh]i$",
		"^[Hh]ello$",
		"^شاخ $",
		"^ممشوتک$",
   "^سگ$",
   "^توله سگ $",
   "^بای$",
   "^سلام$",
   "^خوبی$",
   "^وحید$",
   "^وحید$",
   "^چه خبر$",
   "^چخبر$",
   "^ممه شو$",
"^کارش دارم$",
		"^[Bb]ot$",
		"^[Bb]ye$",
		"^؟$",
		"^[Ss]alam$",
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
