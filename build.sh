                                                                                                                                                             
set -e
 
mkdir -p build
rm -rf build/* 
cmake -S llvm \
      -B build \
      -G Ninja \
      -DLLVM_ENABLE_PROJECTS=mlir \
      -DCMAKE_BUILD_TYPE=Release
      
ninja -C build -j12
