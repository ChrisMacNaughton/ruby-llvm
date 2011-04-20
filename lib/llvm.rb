require 'rubygems'
require 'ffi'

module LLVM
  module C
    extend ::FFI::Library

    # load required libraries
    ffi_lib ['LLVM-2.8', 'libLLVM-2.8']
  end
  
  NATIVE_INT_SIZE = case FFI::Platform::ARCH
    when "x86_64" then 64
    # PPC, other arches?
    else 32
  end
end
