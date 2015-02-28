# just some ideas on visualizations, just so you can better interpret how to make nice graphs- you can delete these later I'm just playing to give you some examples
g1 <- all_data %>% filter(DATE_YMD<20140000, TMAX!=-9999) %>% ggplot(aes(x=DATE_YMD, y=TMAX, color=CITY)) +geom_point()
# this one takes the big DF looking at only 2013 (2014/01/01 is included and it's annoying) and only looking at recorded results (-9999 shows up a lot because a lot of data is not reported)
g2 <- all_data %>% filter(DATE_YMD<20140000, TMAX!=-9999) %>% ggplot(aes(x=CITY, y=TMAX, color=SEASON)) +geom_violin()

pushViewport(viewport(layout=grid.layout(2,1)))
print(g1,vp=viewport(layout.pos.row=1,layout.pos.col=1))
print(g2,vp=viewport(layout.pos.row=2,layout.pos.col=1))