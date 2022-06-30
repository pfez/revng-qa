__attribute__((packed)) struct struct_t {
  long long w;
  int x;
  char y;
  char z;
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

static int stack_struct() {
  struct struct_t s;
  init_struct(&s);
  return s.w + s.x + s.w + s.z;
}

static int stack() {
  return 1;
}

int themain() {
  return stack_struct() + stack();
}
