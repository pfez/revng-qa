#include <stdint.h>

__attribute__((packed)) struct struct_t {
  uint64_t w;
  uint32_t x;
  uint8_t y;
  uint8_t z;
};

extern struct struct_t TheS;

void setw(struct struct_t *S) {
  S->w = TheS.w;
}

void setx(struct struct_t *S) {
  S->x = TheS.x;
}

void sety(struct struct_t *S) {
  S->y = TheS.y;
}

void setz(struct struct_t *S) {
  S->z = TheS.z;
}

void init_struct(struct struct_t *s) {
  setw(s);
  setx(s);
  sety(s);
  setz(s);
  return;
}

static uint64_t stack_struct() {
  struct struct_t s;
  init_struct(&s);
  return s.w + s.x + s.w + s.z;
}

int themain() {
  uint64_t x = stack_struct();
  return (x >> 32) | (x & 0xFFFFFFFFU);
}
