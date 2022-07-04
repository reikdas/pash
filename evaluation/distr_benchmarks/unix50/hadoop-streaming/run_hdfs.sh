hadoop jar $jarpath -files 1.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/1.txt -output $outputs_dir/unix501 -mapper 1.sh
hadoop jar $jarpath -files 2.sh -D dfs.checksum.type=NULL -input $basepath/1.txt -output $outputs_dir/unix502 -mapper 2.sh
hadoop jar $jarpath -files 3.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/1.txt -output $outputs_dir/unix503_tmp -mapper 3.sh && hdfs dfs -cat $outputs_dir/unix503_tmp/part-* | head -n 2 | cut -d ' ' -f 2 | hdfs dfs -put - $outputs_dir/unix503
hadoop jar $jarpath -files 4_map.sh,4_reduce.sh -D dfs.checksum.type=NULL -input $basepath/1.txt -output $outputs_dir/unix504 -mapper 4_map.sh -reducer 4_reduce.sh
hadoop jar $jarpath -files 5.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/2.txt -output $outputs_dir/unix505 -mapper 5.sh
hadoop jar $jarpath -files 6.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/3.txt -output $outputs_dir/unix506 -mapper 6.sh
hadoop jar $jarpath -files 7_map.sh,7_reduce.sh -D dfs.checksum.type=NULL -input $basepath/4.txt -output $outputs_dir/unix507 -mapper 7_map.sh -reducer 7_reduce.sh
hadoop jar $jarpath -files 8_map.sh,8_reduce.sh -D dfs.checksum.type=NULL -input $basepath/4.txt -output $outputs_dir/unix508 -mapper 8_map.sh -reducer 8_reduce.sh
hadoop jar $jarpath -files 9_map.sh,9_reduce.sh -D dfs.checksum.type=NULL -input $basepath/4.txt -output $outputs_dir/unix509 -mapper 9_map.sh -reducer 9_reduce.sh
hadoop jar $jarpath -files 10_map.sh,10_reduce.sh -D dfs.checksum.type=NULL -input $basepath/4.txt -output $outputs_dir/unix5010 -mapper 10_map.sh -reducer 10_reduce.sh
hadoop jar $jarpath -files 11_map.sh,11_reduce.sh -D dfs.checksum.type=NULL -input $basepath/4.txt -output $outputs_dir/unix5011 -mapper 11_map.sh -reducer 11_reduce.sh
hadoop jar $jarpath -files 12_map.sh,12_reduce.sh -D dfs.checksum.type=NULL -input $basepath/4.txt -output $outputs_dir/unix5012 -mapper 12_map.sh -reducer 12_reduce.sh
hadoop jar $jarpath -files 13.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/5.txt -output $outputs_dir/unix5013 -mapper 13.sh
hadoop jar $jarpath -files 14_map.sh,14_reduce.sh -D dfs.checksum.type=NULL -input $basepath/6.txt -output $outputs_dir/unix5014 -mapper 14_map.sh -reducer 14_reduce.sh
hadoop jar $jarpath -files 15_map.sh,15_reduce.sh -D dfs.checksum.type=NULL -input $basepath/7.txt -output $outputs_dir/unix5015 -mapper 15_map.sh -reducer 15_reduce.sh
hadoop jar $jarpath -files 16_map.sh,16_reduce.sh -D dfs.checksum.type=NULL -input $basepath/7.txt -output $outputs_dir/unix5016 -mapper 16_map.sh -reducer 16_reduce.sh
hadoop jar $jarpath -files 17_map.sh,17_reduce.sh -D dfs.checksum.type=NULL -input $basepath/7.txt -output $outputs_dir/unix5017 -mapper 17_map.sh -reducer 17_reduce.sh
hadoop jar $jarpath -files 18_map.sh,18_reduce.sh -D dfs.checksum.type=NULL -input $basepath/8.txt -output $outputs_dir/unix5018 -mapper 18_map.sh -reducer 18_reduce.sh
hadoop jar $jarpath -files 19.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/8.txt -output $outputs_dir/unix5019 -mapper 19.sh
hadoop jar $jarpath -files 20.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/8.txt -output $outputs_dir/unix5020_tmp -mapper 20.sh && hdfs dfs -cat $outputs_dir/unix5020_tmp/part-* | head -n 1 | hdfs dfs -put - $outputs_dir/unix5020
hadoop jar $jarpath -files 21_map.sh,21_reduce.sh -D dfs.checksum.type=NULL -input $basepath/8.txt -output $outputs_dir/unix5021 -mapper 21_map.sh -reducer 21_reduce.sh
# 22 Commented out in PaSh
hadoop jar $jarpath -files 23.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/9.1.txt -output $outputs_dir/unix5023_tmp -mapper 23.sh && hdfs dfs -cat $outputs_dir/unix5023_tmp/part-* | sed 's/[[:space:]]*$//' | tr -d '\n' | cut -c 1-4 | hdfs dfs put - $outputs_dir/unix5023
hadoop jar $jarpath -files 24.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/9.2.txt -output $outputs_dir/unix5024 -mapper 24.sh
hadoop jar $jarpath -files 25.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/9.3.txt -output $outputs_dir/unix5025 -mapper 25.sh
hadoop jar $jarpath -files 26.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/9.4.txt -output $outputs_dir/unix5026 -mapper 26.sh
# 27 Commented out in PaSh
hadoop jar $jarpath -files 28.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/9.6.txt -output $outputs_dir/unix5028 -mapper 28.sh
hadoop jar $jarpath -files 29.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/9.7.txt -output $outputs_dir/unix5029 -mapper 29.sh
hadoop jar $jarpath -files 30.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/9.8.txt -output $outputs_dir/unix5030 -mapper 30.sh
hadoop jar $jarpath -files 31.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/9.9.txt -output $outputs_dir/unix5031 -mapper 31.sh
hadoop jar $jarpath -files 32_map.sh,32_reduce.sh -D dfs.checksum.type=NULL -input $basepath/10.txt -output $outputs_dir/unix5032 -mapper 32_map.sh -reducer 32_reduce.sh
hadoop jar $jarpath -files 33.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/10.txt -output $outputs_dir/unix5033 -mapper 33.sh
hadoop jar $jarpath -files 34.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/10.txt -output $outputs_dir/unix5034_tmp -mapper 34.sh && hdfs dfs -cat $outputs_dir/unix5034_tmp/part-* | head -n 1 | fmt -w1 | cut -c 1-1 | tr -d '\n' | tr '[A-Z]' '[a-z]' | hdfs dfs -put - $outputs_dir/unix5034
hadoop jar $jarpath -files 35.sh -D mapred.reduce.tasks=0 -D dfs.checksum.type=NULL -input $basepath/11.txt -output $outputs_dir/unix5035 -mapper 35.sh
hadoop jar $jarpath -files 36_map.sh,36_reduce.sh -D dfs.checksum.type=NULL -input $basepath/11.txt -output $outputs_dir/unix5036 -mapper 36_map.sh -reducer 36_reduce.sh
