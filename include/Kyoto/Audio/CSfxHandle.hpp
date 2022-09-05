#ifndef _CSFXHANDLE_HPP
#define _CSFXHANDLE_HPP

#include "types.h"

class CSfxHandle {
public:
  CSfxHandle() : value(0) {}
  CSfxHandle(uint value) : value(value) {}

  // GetIndex__10CSfxHandleCFv
  // NullHandle__10CSfxHandleFv
  // mRefCount__10CSfxHandle ??

  bool operator==(const CSfxHandle& other) { return value == other.value; }
  operator bool() const { return value != 0; }

private:
  uint value;
};
CHECK_SIZEOF(CSfxHandle, 0x4)

#endif