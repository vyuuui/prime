#ifndef _CENTITY
#define _CENTITY

#include "types.h"

#include "MetroidPrime/CEntityInfo.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CEntity {
public:
  virtual ~CEntity();
  virtual void Accept(IVisitor& visitor) = 0;
  virtual void PreThink(float dt, CStateManager& mgr);
  virtual void Think(float dt, CStateManager& mgr);
  virtual void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr);
  virtual void SetActive(uchar active);

  CEntity(TUniqueId id, const CEntityInfo& info, bool active, const rstl::string& name);

  void SendScriptMsgs(EScriptObjectState state, CStateManager& mgr, EScriptObjectMessage msg);
  static inline void SendScriptMsg(CStateManager& mgr, CEntity* to, TUniqueId sender,
                                   EScriptObjectMessage msg) {
    mgr.SendScriptMsg(to, sender, msg);
  }
  TUniqueId GetUniqueId() const { return x8_uid; }
  TEditorId GetEditorId() const { return xc_editorId; }
  const rstl::string& GetDebugName() const { return x10_name; }
  TAreaId GetAreaId() const;
  TAreaId GetCurrentAreaId() const { return x4_areaId; }
  uchar GetActive() const { return x30_24_active; }
  bool IsScriptingBlocked() const { return x30_26_scriptingBlocked; }

  // might be fake?
  rstl::vector< SConnection >& ConnectionList() { return x20_conns; }
  const rstl::vector< SConnection >& GetConnectionList() const { return x20_conns; }

  static rstl::vector< SConnection > NullConnectionList;

private:
  TAreaId x4_areaId;
  TUniqueId x8_uid;
  TEditorId xc_editorId;
  rstl::string x10_name;
  rstl::vector< SConnection > x20_conns;
  uchar x30_24_active : 1;
  bool x30_25_inGraveyard : 1;
  bool x30_26_scriptingBlocked : 1;
  bool x30_27_notInArea : 1;
};

CHECK_SIZEOF(CEntity, 0x34)

#endif // _CENTITY
