#ifndef _WEAPONCOMMON
#define _WEAPONCOMMON

#include "rstl/vector.hpp"

class CToken;
class CSfxHandle;

namespace NWeaponTypes {

enum EGunAnimType {
  kGAT_BasePosition,
  kGAT_Shoot,
  kGAT_ChargeUp,
  kGAT_ChargeLoop,
  kGAT_ChargeShoot,
  kGAT_FromMissile,
  kGAT_ToMissile,
  kGAT_MissileShoot,
  kGAT_MissileReload,
  kGAT_FromBeam,
  kGAT_ToBeam
};

CSfxHandle play_sfx(ushort sfx, bool underwater, bool looped, short pan);
void get_token_vector(CAnimData& animData, int, rstl::vector< CToken >& tokensOut,
                      bool preLock);
void get_token_vector(const CAnimData& animData, int begin, int end,
                      rstl::vector< CToken >& tokensOut, bool preLock);
bool are_tokens_ready(const rstl::vector< CToken >&);

} // namespace NWeaponTypes

#endif // _WEAPONCOMMON
