hadoop jar $jarpath -files nfa-regex.sh -D mapred.reduce.tasks=0 -input $basepath/1G.txt -output $outputs_dir/nfa-regex -mapper nfa-regex.sh # nfa-regex
hadoop jar $jarpath -files sort.sh -D mapred.reduce.tasks=0 -input $basepath/3G.txt -output $outputs_dir/sort -mapper sort.sh # sort
hadoop jar $jarpath -files top-n_map.sh,top-n_reduce.sh -input $basepath/3G.txt -output $outputs_dir/top-n -mapper top-n_map.sh -reducer top-n_reduce.sh # top-n
hadoop jar $jarpath -files wf_map.sh,wf_reduce.sh -input $basepath/3G.txt -output $outputs_dir/wf -mapper wf_map.sh -reducer wf_reduce.sh # wf
hadoop jar $jarpath -files spell_map.sh,spell_reduce.sh -input $basepath/3G.txt -output $outputs_dir/spell -mapper spell_map.sh -reducer spell_reduce.sh # spell_reduce
hadoop jar $jarpath -files diff1.sh,diff_agg.sh -input $basepath/3G.txt -output $outputs_dir/diff_temp1 -mapper diff1.sh -reducer diff_agg.sh & hadoop jar $jarpath -files diff2.sh,diff_agg.sh -input $basepath/3G.txt -output $outputs_dir/diff_temp2 -mapper diff2.sh -reducer diff_agg.sh & wait && diff -B <(hadoop fs -cat $outputs_dir/diff_temp1/part-0*) <(hadoop fs -cat $outputs_dir/diff_temp2/part-0*) > diff_out.txt diff # diff
hadoop jar $jarpath -files bi-grams.sh -D mapred.reduce.tasks=0 -input $basepath/3G.txt -output $outputs_dir/bi-grams_temp1 -mapper bi-grams.sh && hadoop fs -cat $outputs_dir/bi-grams_temp1/part-0000* | sed 's/[[:space:]]*$//' | bigrams_aux | sort | uniq > bigrams_out.txt # bi-grams
hadoop jar $jarpath -files setdiff1.sh,setdiff_agg.sh -input $basepath/3G.txt -output $outputs_dir/setdiff_temp1 -mapper setdiff1.sh -reducer setdiff_agg.sh & hadoop jar $jarpath -files setdiff2.sh,setdiff_agg.sh -input $basepath/3G.txt -output $outputs_dir/setdiff_temp2 -mapper setdiff2.sh -reducer setdiff_agg.sh & wait && comm -23 <(hadoop fs -cat $outputs_dir/setdiff_temp1/part-0*) <(hadoop fs -cat $outputs_dir/setdiff_temp2/part-0*) > setdiff_out.txt # set-diff
hadoop jar $jarpath -files sort-sort_map.sh,sort-sort_reduce.sh -input $basepath/3G.txt -output $outputs_dir/sort-sort -mapper sort-sort_map.sh -reducer sort-sort_reduce.sh # sort-sort
hadoop jar $jarpath -files shortest-scripts_map.sh,shortest-scripts_reduce.sh -input $basepath/all_cmdsx100.txt -output $outputs_dir/shortest-scripts -mapper shortest-scripts_map.sh -reducer shortest-scripts_reduce.sh # shortest-scripts
