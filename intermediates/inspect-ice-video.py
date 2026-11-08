import cv2, pathlib
p=r'C:\Users\2024r9000p\AppData\Local\Packages\Microsoft.ScreenSketch_8wekyb3d8bbwe\TempState\Recordings\20261108-1511-45.1704111.mp4'
out=pathlib.Path(r'D:\Agent_Work\Raze\intermediates\ice-video');out.mkdir(exist_ok=True)
c=cv2.VideoCapture(p);fps=c.get(cv2.CAP_PROP_FPS);n=c.get(cv2.CAP_PROP_FRAME_COUNT);print(fps,n,n/fps)
for i in range(12):
 t=(n/fps)*i/12;c.set(cv2.CAP_PROP_POS_MSEC,t*1000);ok,f=c.read()
 if ok: cv2.imwrite(str(out/f'frame-{i:02d}.jpg'),f)
