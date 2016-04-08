local function run(msg, matches)
--  local eq = URL.escape(matches[1])
     url = "https://api.github.com/repos/"..matches[1].."/"..matches[2]
     jstr, res = https.request(url)
     jdat = JSON.decode(jstr)
  if jdat.message then
  return jdat.message
  else
     text = jdat.owner.login..' / '..jdat.name
  if jdat.description then
  text = text..'\n______________________________\n'..jdat.description
  end
  text = text..'\n______________________________\nLanguage: '..jdat.language
  ..'\nForks: '..jdat.forks_count
  ..'\nIssues: '..jdat.open_issues
  ..'\nRepo URL: '..jdat.html_url
  ..'\n\nsenator Team'
  local file = download_to_file(jdat.owner.avatar_url,'MeGa_shield.webp')
  local files = download_to_file(jdat.owner.avatar_url,'MeGa_shield.png')
  send_document('channel#id'..msg.to.id,file,ok_cb,false)
  send_document('channel#id'..msg.to.id,files,ok_cb,false)
  return text
end
end
return {
  patterns = {
    "^[!/#]gituser (.*)/(.*)",
  },
  run = run
}
