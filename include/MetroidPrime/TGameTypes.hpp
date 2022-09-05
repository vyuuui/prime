#ifndef _TGAMETYPES_HPP
#define _TGAMETYPES_HPP

#include "types.h"

struct TAreaId;
struct TEditorId;
struct TUniqueId;

extern TAreaId kInvalidAreaId;
extern TEditorId kInvalidEditorId;
extern TUniqueId kInvalidUniqueId;

struct TAreaId {
  int value;

  TAreaId() : value(-1) {}
  TAreaId(int value) : value(value) {}
  int Value() const { return value; }

  bool operator==(const TAreaId& other) const { return value == other.value; }
  bool operator!=(const TAreaId& other) const { return value != other.value; }
};
CHECK_SIZEOF(TAreaId, 0x4)

struct TEditorId {
  uint value;

  TEditorId() : value(-1) {}
  TEditorId(uint value) : value(value) {}
  uint Value() const { return value; }

  bool operator==(const TEditorId& other) const { return value == other.value; }
  bool operator!=(const TEditorId& other) const { return value != other.value; }
};
CHECK_SIZEOF(TEditorId, 0x4)

struct TUniqueId {
  union {
    struct {
      u16 version : 6;
      u16 id : 10;
    };
    u16 value;
  };

  TUniqueId() : value(-1) {}
  TUniqueId(u16 value) : value(value) {}
  u16 Value() const { return value; }

  bool operator==(const TUniqueId& other) const { return value == other.value; }
  bool operator!=(const TUniqueId& other) const { return value != other.value; }
};
CHECK_SIZEOF(TUniqueId, 0x2)

typedef u16 TSfxId;
static TSfxId InvalidSfxId = 0xFFFFu;

class CSegId {
private:
  u8 x0_id;
};

#endif
