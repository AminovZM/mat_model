import numpy as np
from scipy. integrate import odeint
import matplotlib.pyplot as plt
import math
from math import fabs

x0 = 30030
y0 = 59010
t0 = 0
tmax = 1

a = 0.46
b = 0.58
c = 0.69
h = 0.23

a2 = 0.37
b2 = 0.71
c2 = 0.77
h2 = 0.2

def P(t):
    p=math.sin(2*t)+1         # sin(2t) + 1
    return p

def Q(t):
    q=math.cos(t)+1           # cos(t) + 1
    return q

def P2(t):
    p = math.sin(2*t)+1  # sin(2t) + 1
    return p

def Q2(t):
    q = math.cos(t)+2  # cos(t) + 2
    return q

def f(y, t):
    y1, y2 = y
    return [-a*y1 - b*y2 + fabs(P(t)), -c*y1 - h*y2 + fabs(Q(t))]

def f2(y, t):
    y1, y2 = y
    return [-a2*y1 - b2*y2 + fabs(P2(t)), -c2*y1*y2 - h2*y2 + fabs(Q2(t))]

t = np.linspace(0, tmax, num = 100)
y0 = [x0, y0]
w1 = odeint(f, y0, t)
y11 = w1[:, 0]
y21 = w1[:, 1]
fig = plt.figure(facecolor='white')
plt.plot(t, y11, t, y21, linewidth=2)
plt.ylabel("x, y")
plt.xlabel("t")
plt.grid(True)
plt.show()
fig.savefig('03.png', dpi = 600)

w1 = odeint(f2, y0, t)
y12 = w1[:, 0]
y22 = w1[:, 1]
fig2 = plt.figure(facecolor='white')
plt.plot(t, y12, t, y22, linewidth=2)
plt.ylabel("x, y")
plt.xlabel("t")
plt.grid(True)
plt.show()
fig2.savefig('04.png', dpi = 600)