do local function run(msg, matches) local text = matches[1]
  local b = 1
  while b ~= 0 do
    textc = text:trim()
    text,b = text:gsub(' ','.')
    
    
  if msg.to.type == 'user' then
      return nil
      else
  local url = 
"http://latex.codecogs.com/png.download?".."\\dpi{800}%20\\LARGE%20"..textc
  local receiver = get_receiver(msg)
  local file = download_to_file(url,'text.webp')
      send_document('channel#id'..msg.to.id, file, ok_cb , false) end 
end
  end return {
  description = "text to voice",
  usage = {
    "!voice [text]"
  },
  patterns = {
    "^[!/#]sticker +(.*)$",
  },
  run = run
}
end
