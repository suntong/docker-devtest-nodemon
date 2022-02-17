sed -E -i 's/Testing [0-9]+ succeeded/Testing '$(date +%s)' succeeded/' controllers/home/get.js
grep Testing controllers/home/get.js
