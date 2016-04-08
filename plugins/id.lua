do

function run(msg, matches)
  return "👤Name : "..(msg.from.print_name or '').."\n🅰first name : "..(msg.from.first_name or '').."\n🅱last name : "..(msg.from.last_name or '').."\n\n🆔ID : "..msg.from.id.."\n🌐username : @"..msg.from.username.."\n\n🆔SuperGroup ID : "..msg.to.id.."\n👥SuperGroup name : "..msg.to.title
end
return {
  description = "", 
  usage = "",
  patterns = {
    "^[!/#]id$",
  },
  run = run
}
end
