g1 <- prcp_InnerJoin %>% filter(DATE_YMD<20140000) %>% ggplot(aes(x=DATE_YMD, color = "City")) + geom_point(aes(y = austPrcp, colour = "Austin"))+ geom_point(aes(y = nashPrcp, colour = "Nash")) + geom_point(aes(y = seatPrcp, colour = "Seat"))+ ylab("Precipitation")

g2 <- nash_seatTEMP%>%filter(DATE_YMD<20140000)%>%ggplot(aes(x= DATE_YMD, y = nashMaxTemp))+geom_point(aes(y=nashMinTemp, colour = "Nash Min Temp"))+geom_point(aes(y=nashMaxTemp, colour = "Nash Max Temp"))+geom_point(aes(y=seatMinTemp, colour = "Seattle Min Temp"))+geom_point(aes(y=seatMaxTemp, colour = "Seattle Max Temp")) + ylab("Temperature")

g3 <- all_data %>% filter(DATE_YMD<20140000, TMAX!=-9999) %>% ggplot(aes(x=DATE_YMD, y=TMAX, color=CITY)) +geom_point()

g4 <- all_data %>% filter(DATE_YMD<20140000, TMAX!=-9999) %>% ggplot(aes(x=CITY, y=TMAX, color=SEASON)) +geom_violin()


