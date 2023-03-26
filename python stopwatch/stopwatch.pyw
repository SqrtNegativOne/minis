import tkinter as tk
from tkinter import ttk # I have no idea what this does.
from datetime import datetime
from pygame import mixer # ok is it bad if I just have *way* too many dependencies?
from random import randrange # look it's not my fault that python just can't do all this shit man
from ctypes import windll # makes the font look nicer... somehow
dsec, starting, running, breaking = 0, True, False, False
breakoversound = r"C:\Users\annu7\Sqrt-1\putting the pro in programming\python stopwatch\wine-glass-alarm.ogg"
windll.shcore.SetProcessDpiAwareness(1)

def count():
	global breaking, running, dsec, label
	update()
	if running:
		if not breaking:
			dsec += 1
			label.after(100, count) # helps avoid multiprocessing stuff apparently 
		elif breaking and dsec>0:
			dsec -= 1
			label.after(100, count)
		elif breaking and dsec<=0:
			label['foreground']='white'
			breaking = False
			running = False
			play(breakoversound)

def update():
	global label
	min = str(dsec//600)
	sec = str((dsec%600)//10)
	if len(sec) == 1: sec = '0' + sec
	if len(min) == 1: min = '0' + min
	label['text']=f'{min}.{sec}'

def play(sound): # What are you, fucking Pygame? Play the goddamn music!
	try: # ok pygame just kills itself if I open it after I have already plugged in some headphones...
		mixer.init()
		mixer.music.load(sound)
		mixer.music.set_volume(1)
		mixer.music.play()
	except:
		pass

def StartStop():
	global running, breaking, starting
	if running == False:
		running=True
		count()
		label['foreground'] = 'white'
	else:
		running=False
		label['foreground']= 'grey'

def startBreak():
	global breaking, running, dsec, label
	label['foreground']='#50C878'
	if not running:
		running = True
		count()
	breaking = True
	track()
	message()
	if dsec > 50*600: dsec = dsec//3 + 2
	else: dsec = dsec//4 + 2
def track():
	with open(r"python stopwatch\Progress.txt",'a+') as file: # apparently allows you to not write ``file.close()`` afterwards
		file.write(f'{datetime.now():%Y-%m-%d %H.%M.%S}, {dsec//600}\n')
	# programmers enjoying their free time saved by using ``with`` statements:
def message():
	messageWindow = tk.Toplevel()
	messages = ['touch grass', 'bitte trinkt wasser']
	ttk.Label(messageWindow, text=messages[randrange(0,len(messages))]) #bracket spam lesgo
	# wait how tf do you sleep again
	messageWindow.after(1000, messageWindow.destroy)

def Kill():
	global root
	root.destroy()
def Reset():
	global dsec
	dsec = 0
	update()
def FastForward():
	global dsec
	dsec += 100
	update()
def FastBackward():
	global dsec
	if dsec > 100:
		dsec -= 100
	else:
		dsec = 0
	update()

root = tk.Tk()
root.overrideredirect(True) # rips off title bar to make it look cool
root.config(bg='#282828') # dark background
root.attributes('-alpha', 0.95) # transparency
root.attributes('-topmost', True) # always on top
root.minsize(width=350, height=100)

arial = ('Arial', 60, 'normal')
label = ttk.Label(root, text='00.00', foreground='white', font=arial) 
label.config(background='#282828')
label.pack()

def Keypress(event):
	if event.char == ' ':
	 StartStop()
root.bind('<Key>', Keypress)
root.bind('<Return>', (lambda event: startBreak()))
root.bind('<Right>', (lambda event:FastForward()))
root.bind('<Left>', (lambda event:FastBackward()))
root.bind('<Control_L><Left>', (lambda event: Reset()))
root.bind('<Escape>', (lambda event: Kill()))

lastClickX = 0
lastClickY = 0
def SaveLastClickPos(event):
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