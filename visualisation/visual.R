#FACTOR VARIABLE CREATION
factor=cut(data$year,seq(from=1980,to=2010,by=10))
#GRAPH 1
g=ggplot(data,aes(year,loudness))
g+geom_point(alpha=1/2,aes(color="red"))
#GRAPH 2
g=ggplot(data,aes(loudness))
g+geom_bar(aes(color=factor))
#GRAPH 3
g=ggplot(data,aes(artist.familiarity,song.hotttnesss))
g+geom_point(alpha=1/2,aes(color="red"))+geom_smooth(method="lm",size=1)
#GRAPH 4
g=ggplot(data,aes(year,tempo))
g+geom_point(alpha=1/2,aes(color="red"))+geom_smooth(method="lm",size=1)
#GRAPH 5
g=ggplot(data,aes(time.signature))
g+geom_bar(aes(color=factor))
#GRAPH 6
g=ggplot(data,aes(artist.hotttnesss,song.hotttnesss))
g+geom_point(alpha=1/2,aes(color="red"))+geom_smooth(method="lm",size=1)