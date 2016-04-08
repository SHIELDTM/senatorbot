do

local function run(msg, matches)
  if matches[1]:lower() == 'senator' or 'mega senator' then --change this with anything you want
    send_document(get_receiver(msg), "./data/me/shbbvield.webp", ok_cb, false) --put here sticker location(if you want)
      return [[ 
    Senator v2.8
     based on SEEDTEAM/TeleSeed
      @hafez1116hafez (developer)
       @xxxnfratxxx (sudo)
        
         and founder is @iwals but he isn't sudo
          for get support link type !support
    
    special thanks
     SEEDTEAM
      #senator
 ]]
  end
end

return {
  patterns = {
    "^[!/#]([Ss]senator)$",
    "^([Ss]enator)$",
    "^[!/#]([Mm]ega senator)$",
    "^([Mm]ega senator)$"
    },
  run = run
}
end
