make_cluster=function(file_name)
{
  file=paste(file_name,".csv",sep="")
  songs_data=read.csv(file)
  songs_data=songs_data[,-1]
  str(songs_data)
  colnames(songs_data)
  songs_cluster=kmeans(songs_data[,-22],centers=1000)
  songs_data=cbind(songs_data,songs_cluster$cluster)
  colnames(songs_data)[23]="cluster_id"
  write.csv(songs_data,"songs_data_cluster.csv")
  View(songs_data)
  songs_data
  
}