import tkinter as tk
from datetime import datetime
from pygame import mixer
mixer.init()
dsec, running, breaking = 0, False, False
breakoversound = r"C:\Users\annu7\Sqrt-1\putting the pro in programming\python stopwatch\wine-glass-alarm.ogg"
def count():
		global breaking, running, dsec, label
		update()
		if running:
			dsec += 1
			label.after(100, count)
		if breaking == True and dsec>0:
			dsec -= 1
			label.after(100, count)
		elif breaking == True and dsec<=0:
			label['fg']='white'
			breaking = False
			play(breakoversound)

def update(): # separated because running the main() loop again makes the clock tick at double the speed
	global label
	min = str(dsec//600)
	sec = str((dsec%600)//10)
	if len(sec) == 1: sec = '0' + sec
	if len(min) == 1: min = '0' + min
	label['text']=f'{min}.{sec}'

def play(sound): # What are you, fucking Pygame? Play the goddamn music!
	mixer.music.load(sound)
	mixer.music.set_volume(1)
	mixer.music.play()

def StartStop():
	global running
	if running == False:
		running=True
		count()
		label['fg'] = 'white'
	else:
		running=False
		label['fg']= 'grey'

def Reset():
	global dsec
	dsec = 0
	if running==False:
		update()

def Kill():
	root.destroy()

def StartBreak(label):
	global breaking, running, dsec
	if dsec > 6000:
		label['fg']='#50C878'
		running = False
		breaking = True
		with open(r"C:\Users\annu7\Sqrt-1\putting the pro in programming\python stopwatch\Progress.txt",'a') as file:
			file.write(f'{datetime.now():%Y-%m-%d %H.%M.%S}, {dsec//600}\n')
		if dsec > 50*600:
			dsec = dsec//3 + 2
		else:
			dsec = dsec//4 + 2
		update()

def FastForward():
	global dsec
	dsec += 100
	update()
def FastBackward():
	global dsec
	if dsec > 100:
		dsec -= 100
		update()

root = tk.Tk()
root.overrideredirect(True) # rips off title bar, because holy crap that looks *so* cool

root.config(bg="#282828")
root.attributes('-alpha',0.95)

root.minsize(width=250, height=100)
arial = ("Arial", 60, "normal")
label = tk.Label(root, text="00.00", fg="white", font=arial) 
label.config(bg="#282828")
label.pack()

def Keypress(event):
	if event.char == ' ':
	 StartStop()
root.bind('<Key>', Keypress)
root.bind('<Return>', (lambda event: StartBreak(label)))
root.bind('<Right>', (lambda event:FastForward()))
root.bind('<Left>', (lambda event:FastBackward()))
root.bind('<Control_L><Left>', (lambda event: Reset()))
root.bind('<Escape>', (lambda event: Kill()))

lastClickX = 0
lastClickY = 0
def SaveLastClickPos(event): # stole this entire code from stackoverflow, because t'aths 
    global lastClickX, lastClickY
    lastClickX = event.x
    lastClickY = event.y
    root.attributes('-alpha', 0.8)
def Dragging(event):
	x, y = event.x - lastClickX + root.winfo_x(), event.y - lastClickY + root.winfo_y()
	root.geometry("+%s+%s" % (x , y))
	root.attributes('-alpha', 0.8)
def MouseHover(event):
	root.attributes('-alpha', 0.8)
def MouseLeave(event):
	root.attributes('-alpha', 0.95)

root.bind('<Button-1>', SaveLastClickPos)
root.bind('<B1-Motion>', Dragging)
root.bind('<Enter>', MouseHover)
root.bind('<Leave>', MouseLeave)

root.mainloop()