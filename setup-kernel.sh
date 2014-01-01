export DEVICE=t6dwg

mkdir -p $OUT_DIR/target/product/$DEVICE/obj/KERNEL_OBJ/usr
rm $OUT_DIR/target/product/$DEVICE/obj/KERNEL_OBJ/usr/include
ln -s $(pwd)/include $OUT_DIR/target/product/$DEVICE/obj/KERNEL_OBJ/usr/include
