#ifndef _CWORLDSTATE
#define _CWORLDSTATE

#include "Kyoto/SObjectTag.hpp"

class CWorldState {
public:
  void SetDesiredAreaAssetId(CAssetId id);

private:
  uchar pad[0x18];
};

#endif // _CWORLDSTATE
