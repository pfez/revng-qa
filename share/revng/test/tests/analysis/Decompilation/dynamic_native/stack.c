struct struct_t {
  long long w;
  int x;
  char y;
  char z;
};

extern struct struct_t TheS;

void init_struct(struct struct_t *s) {
  *s = TheS;
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
