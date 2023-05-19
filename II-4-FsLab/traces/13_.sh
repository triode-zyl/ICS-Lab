dd if=/dev/urandom of=test.in bs=1M count=1 2>/dev/null
cd mnt
cp ../test.in file1
mkdir dir1
cp file1 dir1/file2
cp dir1/file2 ../test.out
cd ..
diff -a test.in test.out
