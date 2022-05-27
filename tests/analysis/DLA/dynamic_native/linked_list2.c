/*
 * This file is distributed under the MIT License. See LICENSE.md for details.
 */

#include <stddef.h>
#include <stdint.h>

struct __attribute__((packed)) Node {
  uint32_t content_uint32;
  struct Node *prev;
  struct Node *next;
};

uint32_t getContent(struct Node *n) {
  return n ? n->content_uint32 : 0;
}

int getPrevious(struct Node *n) {
  return n ? getContent(n->prev) : 0;
}

int getNext(struct Node *n) {
  return n ? getContent(n->next) : 0;
}

void setContent(struct Node *n, uint32_t val) {
  if (!n)
    return;
  n->content_uint32 = val;
}

extern struct Node *createNode();
extern void destroyNode(struct Node *n);

int do_stuff(int number) {

  struct Node *head = NULL;
  struct Node *cur = NULL;
  struct Node *prev = NULL;

  for (int i = 0; i < 10; i++) {
    cur = createNode();
    setContent(cur, i);
    cur->prev = prev;
    if (prev)
      prev->next = cur;
    prev = cur;
  }

  head = cur;

  int sum = 0;
  while (cur) {
    sum += getContent(cur);
    sum += getPrevious(cur);
    sum += getNext(cur);
    cur = cur->prev;
  }

  cur = head;
  while (cur) {
    prev = cur->prev;
    destroyNode(cur);
    cur = prev;
  } 

  return sum;
}

