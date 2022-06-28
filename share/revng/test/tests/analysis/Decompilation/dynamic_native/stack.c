struct struct_t {
  long long w;
  int x;
  char y;
  char z;
};

extern void init_struct(struct struct_t *s);

int stack_struct() {
  struct struct_t s;
  init_struct(&s);
  return s.w + s.x + s.w + s.z;
}

int stack() {
  return 0;
}

int themain() {
  return stack_struct() + stack();
}
