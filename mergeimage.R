install.packages('magick')
library('magick')

banana<- image_read("https://jeroen.github.io/images/banana.gif")
banana<- image_scale(banana,"150")

frink <- image_read("https://images3.alphacoders.com/689/thumb-1920-689277.jpg")
frink<- image_scale(frink,600)
background<- image_background(frink,"white",flatten = TRUE)
frames<- image_composite(background,banana,offset="+7+150")#offset表示位置
image_animate(frames,fps=10)
dev.off()
