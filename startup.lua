local component = require("component")
local term = require("term")
local computer = require("computer")
local k = require("keyboard")
local shell = require("shell")
local ev = require("event")
local io = require("io")
local sides = require("sides")
g = component.gpu
rs = component.redstone
sb = component.speech_box

error = false
local debugmode = false

sb.say("Welcome, sir.")

term.setCursor(1,1) g.setForeground(0x00FFFF) term.write("◯-") g.setForeground(0xFFFFFF) term.write("JJS Corp | Rctr Ctrl") g.setForeground(0x00FFFF) term.write("-◯")

if debugmode == false then
g.setResolution(24,5)
else
g.setResolution(160,50)
sb.say("Debug Mode activated!")
end

i = 1
repeat
    r1 = rs.getInput(sides.right)
    r2 = rs.getInput(sides.front)
    r3 = rs.getInput(sides.left)

    if r1 == 0 then
        error = true
        term.setCursor(1,2)
        term.clearLine()
        g.setForeground(0xFFFFFF)
        term.write("Reactor Number 1") g.setForeground(0xFF4444) term.write(" Offline")
    else
        term.setCursor(1,2)
        term.clearLine()
        g.setForeground(0xFFFFFF)
        term.write("Reactor Number 1") g.setForeground(0x44FF11) term.write(" Online")
    end
    if r2 == 0 then
        error = true
        term.setCursor(1,3)
        term.clearLine()
        g.setForeground(0xFFFFFF)
        term.write("Reactor Number 2") g.setForeground(0xFF4444) term.write(" Offline")
    else
        term.setCursor(1,3)
        term.clearLine()
        g.setForeground(0xFFFFFF)
        term.write("Reactor Number 2") g.setForeground(0x44FF11) term.write(" Online")
    end
    if r3 == 0 then
        error = true
        term.setCursor(1,4)
        term.clearLine()
        g.setForeground(0xFFFFFF)
        term.write("Reactor Number 3") g.setForeground(0xFF4444) term.write(" Offline")
    else
        term.setCursor(1,4)
        term.clearLine()
        g.setForeground(0xFFFFFF)
        term.write("Reactor Number 3") g.setForeground(0x44FF11) term.write(" Online")
    end
    term.setCursor(1,5) term.clearLine() g.setForeground(0x00FFFF) term.write("[[         []         ]]")
    os.sleep(0.025)
    term.setCursor(1,5) term.write("[[        [--]        ]]")
    os.sleep(0.025)
    term.setCursor(1,5) term.write("[[       [----]       ]]")
    os.sleep(0.025)
    term.setCursor(1,5) term.write("[[      [------]      ]]")
    os.sleep(0.025)
    term.setCursor(1,5) term.write("[[     [--------]     ]]")
    os.sleep(0.025)
    term.setCursor(1,5) term.write("[[    [----------]    ]]")
    os.sleep(0.025)
    term.setCursor(1,5) term.write("[[   [------------]   ]]")
    os.sleep(0.025)
    term.setCursor(1,5) term.write("[[  [--------------]  ]]")
    os.sleep(0.025)
    term.setCursor(1,5) term.write("[[ [----------------] ]]")
    os.sleep(0.025)
    term.setCursor(1,5) term.write("[[[------------------]]]")
    os.sleep(0.025)
    term.setCursor(1,5) term.write("[[(------------------)]]")
 
    if r1 == 15 and r2 == 15 and r3 == 15 and error then
        sb.say("All reactors back on line.")
        error = false
    end

    if r1 == 0 and r2 == 0 and r3 == 0 then
        emergency = true
        sb.say("Emergency! All reactors offline.")
        rs.setOutput(sides.back,15)
        os.sleep(3)
    else
        rs.setOutput(sides.back,0)
        if r1 == 0
        then
            error = true
            sb.say("Reactor Number 1; Offline")
            os.sleep(5)
        end
        os.sleep(0.3)
        if r2 == 0
        then
            error = true
            sb.say("Reactor Number 2; Offline")
            os.sleep(5)
        end
        os.sleep(0.3)
        if r3 == 0
        then
            error = true
            sb.say("Reactor Number 3; Offline")
            os.sleep(5)
        end
        os.sleep(0.3)
term.setCursor(1,5) term.clearLine() g.setForeground(0x00FFFF) term.write("[[(------------------)]]")
os.sleep(0.025)
term.setCursor(1,5) term.write("[[[------------------]]]")
os.sleep(0.025)
term.setCursor(1,5) term.write("[[ [----------------] ]]")
os.sleep(0.025)
term.setCursor(1,5) term.write("[[  [--------------]  ]]")
os.sleep(0.025)
term.setCursor(1,5) term.write("[[   [------------]   ]]")
os.sleep(0.025)
term.setCursor(1,5) term.write("[[    [----------]    ]]")
os.sleep(0.025)
term.setCursor(1,5) term.write("[[     [--------]     ]]")
os.sleep(0.025)
term.setCursor(1,5) term.write("[[      [------]      ]]")
os.sleep(0.025)
term.setCursor(1,5) term.write("[[       [----]       ]]")
os.sleep(0.025)
term.setCursor(1,5) term.write("[[        [--]        ]]")
os.sleep(0.025)
term.setCursor(1,5) term.write("[[         []         ]]")
os.sleep(3)
end
until 1 == 2