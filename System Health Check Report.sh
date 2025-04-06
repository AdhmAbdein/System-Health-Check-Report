
#!/bin/bash

report_path=/adhamscripts/report.txt
hostname=$(hostname)

echo "System health report ($hostname) " >> $report_path
echo "============================================================" >> $report_path

echo "cpu usage" >> $report_path
top -bn1 | grep "Cpu(s)" >> $report_path

echo -e "\nMemory usage" >> $report_path
free -h >> $report_path

echo -e "\nDisk usage" >> $report_path
df -h >> $report_path
