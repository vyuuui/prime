#ifndef _CPLASMABEAM
#define _CPLASMABEAM

#include "types.h"

#include "MetroidPrime/Weapons/CGunWeapon.hpp"

class CPlasmaBeam : public CGunWeapon {
public:
  CPlasmaBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
              EMaterialTypes playerMaterial, const CVector3f& scale);
  ~CPlasmaBeam();

private:
  uchar x21c_pad[0x24];
};
CHECK_SIZEOF(CPlasmaBeam, 0x240)

#endif // _CPLASMABEAM
