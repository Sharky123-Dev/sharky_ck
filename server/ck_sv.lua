ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Config Variables
local logs = "Put you webhook here"

-- Global Variables [Do not change]
local ckIdentifier = nil

--  Minified Code
RegisterCommand("cancelck",function(a,b,c)local d=c:sub(9)local b=d;local e=tonumber(d)local f=GetPlayerIdentifier(e)if f==nil then TriggerClientEvent('esx:showNotification',a,'Id incorrecta.')else ckIdentifier=f;discordCancel(a)Citizen.Wait(10000)ckIdentifier=nil end end,true)RegisterCommand("ck",function(a,b,c)local d=c:sub(3)local b=d;local g=tonumber(d)local h=GetPlayerIdentifier(g)if h==nil then TriggerClientEvent('esx:showNotification',a,'Id incorrecta.')else TriggerClientEvent('esx:showNotification',g,'Te estan haciendo un ck, si fue un error avisale rapidamente a un moderador!')TriggerClientEvent('esx:showNotification',a,'Estas haciendo un ck, recuerda que puedes cancelarlo con /cancelck!')Citizen.Wait(10000)if ckIdentifier==h then TriggerClientEvent('esx:showNotification',a,'Ck cancelado correctamente!')ckIdentifier=nil else discordMsg(g,a)DropPlayer(g,"Te han hecho un ck, olvidaras toda tu vida pasada!")DeleteTables(h)ckIdentifier=nil end end end,true)function discordMsg(i,j)local k=GetPlayerName(j)local l=GetPlayerName(i)local m=GetPlayerEndpoint(i)local n={{["color"]="16742656",["title"]="Se ha producido un CK!",["description"]="Ck por: **"..k.."** Ck Hacia: **"..l.."** Player IP: ||"..m.."||",["footer"]={["text"]="CK System Sharky"}}}PerformHttpRequest(logs,function(o,p,q)end,'POST',json.encode({username="Sharky CK",embeds=n,avatar_url=""}),{['Content-Type']='application/json'})end;function discordCancel(j)local k=GetPlayerName(j)local n={{["color"]="16742656",["title"]="Se ha rechazado un CK",["description"]="Ck rechazado por: **"..k.."**",["footer"]={["text"]="CK System Sharky"}}}PerformHttpRequest(logs,function(o,p,q)end,'POST',json.encode({username="Sharky CK",embeds=n,avatar_url=""}),{['Content-Type']='application/json'})end

-- Delete Tables with identifier.
function DeleteTables(identifier)
    MySQL.Async.execute('DELETE FROM users WHERE identifier=@identifier',
  { ['identifier'] = identifier},
  function(affectedRows)
  end)

  MySQL.Async.execute('DELETE FROM owned_vehicles WHERE owner=@identifier',
  { ['identifier'] = identifier},
  function(affectedRows)
  end)
end
