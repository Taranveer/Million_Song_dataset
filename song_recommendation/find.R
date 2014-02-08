find <- function(file_name,song)
{cnt=0
 cnt1=0
 cluster_id=0
 songs_data_find=make_cluster(file_name)
 for(i in songs_data_find$song.id)
 { cnt1=cnt1+1
   if(i==song){
     cluster_id=songs_data_find[cnt1,]$cluster_id;
     
     break}
 }
 print (cluster_id)
 for(j in songs_data_find$cluster_id)
 {
   cnt=cnt+1
   if(j==cluster_id)
   {
     print (songs_data_find[cnt,]$song.id)
   }
 }
}