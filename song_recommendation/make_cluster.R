make_cluster=function(file_name)
{
  file=paste(file_name,".csv",sep="")
  songs_data=read.csv(file)
  songs_data=songs_data[,-1]#first row contains serial no so that has to be elimnated for clustering
  str(songs_data)
  colnames(songs_data)#to see columns containing characters-this is part of exploratory analysis
  songs_cluster=kmeans(songs_data[,-22],centers=1000)#songs name for clustering has to elimante bcoz they are unique and cannot be used for clustering
  songs_data=cbind(songs_data,songs_cluster$cluster)
  colnames(songs_data)[23]="cluster_id"
  write.csv(songs_data,"songs_data_cluster.csv")
  View(songs_data)
  songs_data
  
}