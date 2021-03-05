import cv2
import numpy as np

def drawImage():

    # Pink background
    img = np.full((1080,1920,3), (200,200,255),np.uint8)

    # Red circle
    img = cv2.circle(img, (960, 540), 200, (200, 0, 255), -1)

    # Create the fullscreen window
    # cv2.namedWindow('image', cv2.WINDOW_NORMAL)
    cv2.namedWindow("image", cv2.WND_PROP_FULLSCREEN)
    cv2.setWindowProperty("image",cv2.WND_PROP_FULLSCREEN,cv2.WINDOW_FULLSCREEN)
    cv2.imshow('image', img)

    cv2.waitKey(0)
    cv2.destroyAllWindows()

if __name__ == '__main__':
    drawImage()
