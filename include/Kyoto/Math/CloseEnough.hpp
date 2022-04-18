#ifndef __CLOSEENOUGH_HPP__
#define __CLOSEENOUGH_HPP__

#include "Kyoto/CVector2f.hpp"
#include "Kyoto/CVector3f.hpp"

static bool close_enough(const CVector2f& a, const CVector2f& b, float epsilon = 0.001f);
static bool close_enough(const CVector3f& a, const CVector3f& b, float epsilon = 0.001f);

#endif // __CLOSEENOUGH_HPP__