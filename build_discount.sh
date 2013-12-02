
cd discount
./configure.sh
make blocktags
cp config.h ../OCDiscount
cp mkdio.h ../OCDiscount
cp blocktags ../OCDiscount
git clean -d -f;
