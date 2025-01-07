// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:30:57
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0509b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0509b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
// Dependencies:
//   Boogie , located at /home/runner/.dotnet/tools/boogie.
//   Z3 4.12.1 - 64 bit, located at /opt/hostedtoolcache/z3/4.12.1/x64/z3-4.12.1-x64-glibc-2.35/bin/z3.
// 

// ==================================================
// Preamble of State module.
// ==================================================

function  state(Heap: HeapType, Mask: MaskType): bool;
axiom state(dummyHeap, ZeroMask);

// ==================================================
// Preamble of Heap module.
// ==================================================

type Ref;
var Heap: HeapType;
const null: Ref;
type Field A B;
type NormalField;
const dummyHeap: HeapType;
type HeapType = <A, B> [Ref, Field A B]B;
const unique $allocated: Field NormalField bool;
axiom (forall o_20: Ref, f_17: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_20, f_17] }
  Heap[o_20, $allocated] ==> Heap[Heap[o_20, f_17], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref, f_24: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, f_24] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_27, f_24) ==> Heap[o_27, f_24] == ExhaleHeap[o_27, f_24]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9), ExhaleHeap[null, PredicateMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> Heap[null, PredicateMaskField(pm_f_9)] == ExhaleHeap[null, PredicateMaskField(pm_f_9)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, PredicateMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9), ExhaleHeap[null, WandMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> Heap[null, WandMaskField(pm_f_9)] == ExhaleHeap[null, WandMaskField(pm_f_9)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, WandMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_27, $allocated] ==> ExhaleHeap[o_27, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_20: Ref, f_31: (Field A B), v: B ::
  { Heap[o_20, f_31:=v] }
  succHeap(Heap, Heap[o_20, f_31:=v])
);
// IdenticalOnKnownLocations Heaps are Successor Heaps
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> succHeap(Heap, ExhaleHeap)
);
// Successor Heaps are Transitive Successor Heaps
axiom (forall Heap0: HeapType, Heap1: HeapType ::
  { succHeap(Heap0, Heap1) }
  succHeap(Heap0, Heap1) ==> succHeapTrans(Heap0, Heap1)
);
// Transitivity of Transitive Successor Heaps
axiom (forall Heap0: HeapType, Heap1: HeapType, Heap2: HeapType ::
  { succHeapTrans(Heap0, Heap1), succHeap(Heap1, Heap2) }
  succHeapTrans(Heap0, Heap1) && succHeap(Heap1, Heap2) ==> succHeapTrans(Heap0, Heap2)
);

// ==================================================
// Preamble of Permission module.
// ==================================================

type Perm = real;
type MaskType = <A, B> [Ref, Field A B]Perm;
var Mask: MaskType;
const ZeroMask: MaskType;
axiom (forall <A, B> o_2: Ref, f_4: (Field A B) ::
  { ZeroMask[o_2, f_4] }
  ZeroMask[o_2, f_4] == NoPerm
);
type PMaskType = <A, B> [Ref, Field A B]bool;
const ZeroPMask: PMaskType;
axiom (forall <A, B> o_2: Ref, f_4: (Field A B) ::
  { ZeroPMask[o_2, f_4] }
  !ZeroPMask[o_2, f_4]
);
function  PredicateMaskField<A>(f_5: (Field A FrameType)): Field A PMaskType;
function  WandMaskField<A>(f_5: (Field A FrameType)): Field A PMaskType;
const NoPerm: Perm;
axiom NoPerm == 0.000000000;
const FullPerm: Perm;
axiom FullPerm == 1.000000000;
function  Perm(a: real, b: real): Perm;
const AssumePermUpperBound: bool;
function  GoodMask(Mask: MaskType): bool;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask) }
  state(Heap, Mask) ==> GoodMask(Mask)
);
axiom (forall <A, B> Mask: MaskType, o_2: Ref, f_4: (Field A B) ::
  { GoodMask(Mask), Mask[o_2, f_4] }
  GoodMask(Mask) ==> Mask[o_2, f_4] >= NoPerm && (((GoodMask(Mask) && AssumePermUpperBound) && !IsPredicateField(f_4)) && !IsWandField(f_4) ==> Mask[o_2, f_4] <= FullPerm)
);
function  HasDirectPerm<A, B>(Mask: MaskType, o_2: Ref, f_4: (Field A B)): bool;
axiom (forall <A, B> Mask: MaskType, o_2: Ref, f_4: (Field A B) ::
  { HasDirectPerm(Mask, o_2, f_4) }
  HasDirectPerm(Mask, o_2, f_4) <==> Mask[o_2, f_4] > NoPerm
);
function  sumMask(ResultMask: MaskType, SummandMask1: MaskType, SummandMask2: MaskType): bool;
axiom (forall <A, B> ResultMask: MaskType, SummandMask1: MaskType, SummandMask2: MaskType, o_2: Ref, f_4: (Field A B) ::
  { sumMask(ResultMask, SummandMask1, SummandMask2), ResultMask[o_2, f_4] } { sumMask(ResultMask, SummandMask1, SummandMask2), SummandMask1[o_2, f_4] } { sumMask(ResultMask, SummandMask1, SummandMask2), SummandMask2[o_2, f_4] }
  sumMask(ResultMask, SummandMask1, SummandMask2) ==> ResultMask[o_2, f_4] == SummandMask1[o_2, f_4] + SummandMask2[o_2, f_4]
);

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: lookup2
// - height 0: lookup
const AssumeFunctionsAbove: int;
// Declarations for function framing
type FrameType;
const EmptyFrame: FrameType;
function  FrameFragment<T>(t: T): FrameType;
function  ConditionalFrame(p: Perm, f_6: FrameType): FrameType;
function  dummyFunction<T>(t: T): bool;
function  CombineFrames(a_1: FrameType, b_1: FrameType): FrameType;
// ==================================================
// Definition of conditional frame fragments
// ==================================================

axiom (forall p: Perm, f_6: FrameType ::
  { ConditionalFrame(p, f_6) }
  ConditionalFrame(p, f_6) == (if p > 0.000000000 then f_6 else EmptyFrame)
);
// Function for recording enclosure of one predicate instance in another
function  InsidePredicate<A, B>(p: (Field A FrameType), v_1: FrameType, q: (Field B FrameType), w: FrameType): bool;
// Transitivity of InsidePredicate
axiom (forall <A, B, C> p: (Field A FrameType), v_1: FrameType, q: (Field B FrameType), w: FrameType, r: (Field C FrameType), u: FrameType ::
  { InsidePredicate(p, v_1, q, w), InsidePredicate(q, w, r, u) }
  InsidePredicate(p, v_1, q, w) && InsidePredicate(q, w, r, u) ==> InsidePredicate(p, v_1, r, u)
);
// Knowledge that two identical instances of the same predicate cannot be inside each other
axiom (forall <A> p: (Field A FrameType), v_1: FrameType, w: FrameType ::
  { InsidePredicate(p, v_1, p, w) }
  !InsidePredicate(p, v_1, p, w)
);

// ==================================================
// Preamble of Set module.
// ==================================================


type Set T = [T]bool;

function Set#Card<T>(Set T): int;
axiom (forall<T> s: Set T :: { Set#Card(s) } 0 <= Set#Card(s));

function Set#Empty<T>(): Set T;
axiom (forall<T> o: T :: { Set#Empty()[o] } !Set#Empty()[o]);
axiom (forall<T> s: Set T :: { Set#Card(s) }
  (Set#Card(s) == 0 <==> s == Set#Empty()) &&
  (Set#Card(s) != 0 ==> (exists x: T :: s[x])));

function Set#Singleton<T>(T): Set T;
axiom (forall<T> r: T :: { Set#Singleton(r) } Set#Singleton(r)[r]);
axiom (forall<T> r: T, o: T :: { Set#Singleton(r)[o] } Set#Singleton(r)[o] <==> r == o);
axiom (forall<T> r: T :: { Set#Card(Set#Singleton(r)) } Set#Card(Set#Singleton(r)) == 1);

function Set#UnionOne<T>(Set T, T): Set T;
axiom (forall<T> a: Set T, x: T, o: T :: { Set#UnionOne(a,x)[o] }
  Set#UnionOne(a,x)[o] <==> o == x || a[o]);
axiom (forall<T> a: Set T, x: T :: { Set#UnionOne(a, x) }
  Set#UnionOne(a, x)[x]);
axiom (forall<T> a: Set T, x: T, y: T :: { Set#UnionOne(a, x), a[y] }
  a[y] ==> Set#UnionOne(a, x)[y]);
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a));
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  !a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a) + 1);

function Set#Union<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Union(a,b)[o] }
  Set#Union(a,b)[o] <==> a[o] || b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), a[y] }
  a[y] ==> Set#Union(a, b)[y]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), b[y] }
  b[y] ==> Set#Union(a, b)[y]);
//axiom (forall<T> a, b: Set T :: { Set#Union(a, b) }
//  Set#Disjoint(a, b) ==>
//    Set#Difference(Set#Union(a, b), a) == b &&
//    Set#Difference(Set#Union(a, b), b) == a);

function Set#Intersection<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Intersection(a,b)[o] } {Set#Intersection(a,b), a[o]} {Set#Intersection(a,b), b[o]} // AS: added alternative triggers 20/06/19
  Set#Intersection(a,b)[o] <==> a[o] && b[o]);

axiom (forall<T> a, b: Set T :: { Set#Union(Set#Union(a, b), b) }
  Set#Union(Set#Union(a, b), b) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Union(a, Set#Union(a, b)) }
  Set#Union(a, Set#Union(a, b)) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(Set#Intersection(a, b), b) }
  Set#Intersection(Set#Intersection(a, b), b) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(a, Set#Intersection(a, b)) }
  Set#Intersection(a, Set#Intersection(a, b)) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Card(Set#Union(a, b)) }{ Set#Card(Set#Intersection(a, b)) }
  Set#Card(Set#Union(a, b)) + Set#Card(Set#Intersection(a, b)) == Set#Card(a) + Set#Card(b));

function Set#Difference<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Difference(a,b)[o] } { Set#Difference(a,b), a[o] }
  Set#Difference(a,b)[o] <==> a[o] && !b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Difference(a, b), b[y] }
  b[y] ==> !Set#Difference(a, b)[y] );
axiom (forall<T> a, b: Set T ::
  { Set#Card(Set#Difference(a, b)) }
  Set#Card(Set#Difference(a, b)) + Set#Card(Set#Difference(b, a))
  + Set#Card(Set#Intersection(a, b))
    == Set#Card(Set#Union(a, b)) &&
  Set#Card(Set#Difference(a, b)) == Set#Card(a) - Set#Card(Set#Intersection(a, b)));

function Set#Subset<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Subset(a,b) }
  Set#Subset(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] ==> b[o]));
// axiom(forall<T> a: Set T, b: Set T ::
//   { Set#Subset(a,b), Set#Card(a), Set#Card(b) }  // very restrictive trigger
//   Set#Subset(a,b) ==> Set#Card(a) <= Set#Card(b));


function Set#Equal<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }
  Set#Equal(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] <==> b[o]));
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }  // extensionality axiom for sets
  Set#Equal(a,b) ==> a == b);

//function Set#Disjoint<T>(Set T, Set T): bool;
//axiom (forall<T> a: Set T, b: Set T :: { Set#Disjoint(a,b) }
//  Set#Disjoint(a,b) <==> (forall o: T :: {a[o]} {b[o]} !a[o] || !b[o]));

// ---------------------------------------------------------------
// -- Axiomatization of multisets --------------------------------
// ---------------------------------------------------------------

function Math#min(a: int, b: int): int;
axiom (forall a: int, b: int :: { Math#min(a, b) } a <= b <==> Math#min(a, b) == a);
axiom (forall a: int, b: int :: { Math#min(a, b) } b <= a <==> Math#min(a, b) == b);
axiom (forall a: int, b: int :: { Math#min(a, b) } Math#min(a, b) == a || Math#min(a, b) == b);

function Math#clip(a: int): int;
axiom (forall a: int :: { Math#clip(a) } 0 <= a ==> Math#clip(a) == a);
axiom (forall a: int :: { Math#clip(a) } a < 0  ==> Math#clip(a) == 0);

type MultiSet T; // = [T]int;

function MultiSet#Select<T>(ms: MultiSet T, x:T): int;

//function $IsGoodMultiSet<T>(ms: MultiSet T): bool;
// ints are non-negative, used after havocing, and for conversion from sequences to multisets.
//axiom (forall<T> ms: MultiSet T :: { $IsGoodMultiSet(ms) }
//  $IsGoodMultiSet(ms) <==>
//  (forall bx: T :: { ms[bx] } 0 <= ms[bx] && ms[bx] <= MultiSet#Card(ms)));

axiom (forall<T> ms: MultiSet T, x: T :: {MultiSet#Select(ms,x)} MultiSet#Select(ms,x) >= 0); // NEW

function MultiSet#Card<T>(MultiSet T): int;
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) } 0 <= MultiSet#Card(s));
//axiom (forall<T> s: MultiSet T, x: T, n: int :: { MultiSet#Card(s[x := n]) }
//  0 <= n ==> MultiSet#Card(s[x := n]) == MultiSet#Card(s) - s[x] + n);
//
function MultiSet#Empty<T>(): MultiSet T;
axiom (forall<T> o: T :: { MultiSet#Select(MultiSet#Empty(),o) } MultiSet#Select(MultiSet#Empty(),o) == 0);
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) }
  (MultiSet#Card(s) == 0 <==> s == MultiSet#Empty()) &&
  (MultiSet#Card(s) != 0 ==> (exists x: T :: 0 < MultiSet#Select(s,x))));

function MultiSet#Singleton<T>(T): MultiSet T;
axiom (forall<T> r: T, o: T :: { MultiSet#Select(MultiSet#Singleton(r),o) } (MultiSet#Select(MultiSet#Singleton(r),o) == 1 <==> r == o) &&
                                                            (MultiSet#Select(MultiSet#Singleton(r),o) == 0 <==> r != o));
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Card(MultiSet#Singleton(r)) == 1 && MultiSet#Select(MultiSet#Singleton(r),r) == 1); // AS: added
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Singleton(r) == MultiSet#UnionOne(MultiSet#Empty(), r)); // AS: remove this?

function MultiSet#UnionOne<T>(MultiSet T, T): MultiSet T;
// union-ing increases count by one for x, not for others
axiom (forall<T> a: MultiSet T, x: T, o: T :: { MultiSet#Select(MultiSet#UnionOne(a,x),o) } { MultiSet#UnionOne(a, x), MultiSet#Select(a,o) } // AS: added back this trigger (used on a similar axiom before)
  MultiSet#Select(MultiSet#UnionOne(a, x),o) == (if x==o then MultiSet#Select(a,o) + 1 else MultiSet#Select(a,o)));
// non-decreasing
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#Card(MultiSet#UnionOne(a, x)) } {MultiSet#UnionOne(a, x), MultiSet#Card(a)} // AS: added alternative trigger
  MultiSet#Card(MultiSet#UnionOne(a, x)) == MultiSet#Card(a) + 1);
// AS: added - concrete knowledge of element added
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#UnionOne(a,x)}
  MultiSet#Select(MultiSet#UnionOne(a, x),x) > 0 && MultiSet#Card(MultiSet#UnionOne(a, x)) > 0);

function MultiSet#Union<T>(MultiSet T, MultiSet T): MultiSet T;
// union-ing is the sum of the contents
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Union(a,b),o) } {MultiSet#Union(a,b), MultiSet#Select(a,o), MultiSet#Select(b,o)}// AS: added triggers
  MultiSet#Select(MultiSet#Union(a,b),o) == MultiSet#Select(a,o) + MultiSet#Select(b,o));
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Card(MultiSet#Union(a,b)) } {MultiSet#Card(a), MultiSet#Union(a,b)} {MultiSet#Card(b), MultiSet#Union(a,b)}
  MultiSet#Card(MultiSet#Union(a,b)) == MultiSet#Card(a) + MultiSet#Card(b));

function MultiSet#Intersection<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Intersection(a,b),o) }
  MultiSet#Select(MultiSet#Intersection(a,b),o) == Math#min(MultiSet#Select(a,o),  MultiSet#Select(b,o)));

// left and right pseudo-idempotence
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(MultiSet#Intersection(a, b), b) }
  MultiSet#Intersection(MultiSet#Intersection(a, b), b) == MultiSet#Intersection(a, b));
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(a, MultiSet#Intersection(a, b)) }
  MultiSet#Intersection(a, MultiSet#Intersection(a, b)) == MultiSet#Intersection(a, b));

// multiset difference, a - b. clip() makes it positive.
function MultiSet#Difference<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Difference(a,b),o) }
  MultiSet#Select(MultiSet#Difference(a,b),o) == Math#clip(MultiSet#Select(a,o) - MultiSet#Select(b,o)));
axiom (forall<T> a, b: MultiSet T, y: T :: { MultiSet#Difference(a, b), MultiSet#Select(b,y), MultiSet#Select(a,y) }
  MultiSet#Select(a,y) <= MultiSet#Select(b,y) ==> MultiSet#Select(MultiSet#Difference(a, b),y) == 0 );
axiom (forall<T> a, b: MultiSet T ::
  { MultiSet#Card(MultiSet#Difference(a, b)) }
  MultiSet#Card(MultiSet#Difference(a, b)) + MultiSet#Card(MultiSet#Difference(b, a))
  + 2 * MultiSet#Card(MultiSet#Intersection(a, b))
    == MultiSet#Card(MultiSet#Union(a, b)) &&
  MultiSet#Card(MultiSet#Difference(a, b)) == MultiSet#Card(a) - MultiSet#Card(MultiSet#Intersection(a, b)));

// multiset subset means a must have at most as many of each element as b
function MultiSet#Subset<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Subset(a,b) }
  MultiSet#Subset(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) <= MultiSet#Select(b,o)));

function MultiSet#Equal<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == MultiSet#Select(b,o)));
// extensionality axiom for multisets
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) ==> a == b);

function MultiSet#Disjoint<T>(MultiSet T, MultiSet T): bool;
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Disjoint(a,b) }
  MultiSet#Disjoint(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == 0 || MultiSet#Select(b,o) == 0));

    

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function lookup
// ==================================================

// Uninterpreted function definitions
function  lookup_1(Heap: HeapType, r_1: Ref, i: int): int;
function  lookup'(Heap: HeapType, r_1: Ref, i: int): int;
axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { lookup_1(Heap, r_1, i) }
  lookup_1(Heap, r_1, i) == lookup'(Heap, r_1, i) && dummyFunction(lookup#triggerStateless(r_1, i))
);
axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { lookup'(Heap, r_1, i) }
  dummyFunction(lookup#triggerStateless(r_1, i))
);

// Framing axioms
function  lookup#frame(frame: FrameType, r_1: Ref, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref, i: int ::
  { state(Heap, Mask), lookup'(Heap, r_1, i) }
  state(Heap, Mask) ==> lookup'(Heap, r_1, i) == lookup#frame(FrameFragment(Heap[r_1, f_7]), r_1, i)
);

// Trigger function (controlling recursive postconditions)
function  lookup#trigger(frame: FrameType, r_1: Ref, i: int): bool;

// State-independent trigger function
function  lookup#triggerStateless(r_1: Ref, i: int): int;

// Check contract well-formedness and postcondition
procedure lookup#definedness(r_1: Ref, i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function lookup2
// ==================================================

// Uninterpreted function definitions
function  lookup2(Heap: HeapType, r_1: Ref, i: int): int;
function  lookup2'(Heap: HeapType, r_1: Ref, i: int): int;
axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { lookup2(Heap, r_1, i) }
  lookup2(Heap, r_1, i) == lookup2'(Heap, r_1, i) && dummyFunction(lookup2#triggerStateless(r_1, i))
);
axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { lookup2'(Heap, r_1, i) }
  dummyFunction(lookup2#triggerStateless(r_1, i))
);

// Framing axioms
function  lookup2#frame(frame: FrameType, r_1: Ref, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref, i: int ::
  { state(Heap, Mask), lookup2'(Heap, r_1, i) }
  state(Heap, Mask) ==> lookup2'(Heap, r_1, i) == lookup2#frame(FrameFragment(Heap[r_1, f_7]), r_1, i)
);

// Trigger function (controlling recursive postconditions)
function  lookup2#trigger(frame: FrameType, r_1: Ref, i: int): bool;

// State-independent trigger function
function  lookup2#triggerStateless(r_1: Ref, i: int): int;

// Check contract well-formedness and postcondition
procedure lookup2#definedness(r_1: Ref, i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method main
// ==================================================

procedure main(r1: Ref, r2: Ref) returns ()
  modifies Heap, Mask;
{
  var before_lblGuard: bool;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var s_2: (Set Ref);
  var LabelbeforeMask: MaskType;
  var LabelbeforeHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    before_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[r1, $allocated];
    assume Heap[r2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r1 != null;
    Mask := Mask[r1, f_7:=Mask[r1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r2 != null;
    Mask := Mask[r2, f_7:=Mask[r2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale r1.f == 1 -- 0509b.vpr@16.10--16.19
    
    // -- Check definedness of r1.f == 1
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r1.f (0509b.vpr@16.10--16.19) [207029]"}
        HasDirectPerm(Mask, r1, f_7);
    assume Heap[r1, f_7] == 1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(r1.f, write) && acc(r2.f, write) -- 0509b.vpr@17.3--17.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access r1.f (0509b.vpr@17.10--17.32) [207031]"}
        perm <= Mask[r1, f_7];
    }
    Mask := Mask[r1, f_7:=Mask[r1, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access r2.f (0509b.vpr@17.10--17.32) [207033]"}
        perm <= Mask[r2, f_7];
    }
    Mask := Mask[r2, f_7:=Mask[r2, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(r1.f, write) && acc(r2.f, write) -- 0509b.vpr@18.3--18.32
    perm := FullPerm;
    assume r1 != null;
    Mask := Mask[r1, f_7:=Mask[r1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r2 != null;
    Mask := Mask[r2, f_7:=Mask[r2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale r1.f == 3 -- 0509b.vpr@19.10--19.19
    
    // -- Check definedness of r1.f == 3
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r1.f (0509b.vpr@19.10--19.19) [207036]"}
        HasDirectPerm(Mask, r1, f_7);
    assume Heap[r1, f_7] == 3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: s := Set(r1, r2) -- 0509b.vpr@21.3--21.19
    s_2 := Set#UnionOne(Set#Singleton(r2), r1);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale lookup(r1, 5) > 3 -- 0509b.vpr@22.10--22.27
    assume state(Heap, Mask);
    
    // -- Check definedness of lookup(r1, 5) > 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access r1.f (0509b.vpr@22.10--22.23) [207037]"}
          NoPerm < perm ==> NoPerm < Mask[r1, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume lookup_1(Heap, r1, 5) > 3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: label before -- 0509b.vpr@23.3--23.15
    before_1:
    LabelbeforeMask := Mask;
    LabelbeforeHeap := Heap;
    before_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(r1.f, write) && acc(r2.f, write) -- 0509b.vpr@24.3--24.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access r1.f (0509b.vpr@24.10--24.32) [207039]"}
        perm <= Mask[r1, f_7];
    }
    Mask := Mask[r1, f_7:=Mask[r1, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access r2.f (0509b.vpr@24.10--24.32) [207041]"}
        perm <= Mask[r2, f_7];
    }
    Mask := Mask[r2, f_7:=Mask[r2, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(r1.f, write) && acc(r2.f, write) -- 0509b.vpr@25.3--25.32
    perm := FullPerm;
    assume r1 != null;
    Mask := Mask[r1, f_7:=Mask[r1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r2 != null;
    Mask := Mask[r2, f_7:=Mask[r2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale r1.f == 4 -- 0509b.vpr@26.10--26.19
    
    // -- Check definedness of r1.f == 4
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r1.f (0509b.vpr@26.10--26.19) [207044]"}
        HasDirectPerm(Mask, r1, f_7);
    assume Heap[r1, f_7] == 4;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { old[before](lookup(r1, i)) }
  //     lookup2(r1, i) == old[before](lookup(r1, i))) -- 0509b.vpr@27.10--27.102
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { old[before](lookup(r1, i)) } lookup2(r1, i) == old[before](lookup(r1, i)))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := FullPerm;
          assert {:msg "  Precondition of function lookup2 might not hold. There might be insufficient permission to access r1.f (0509b.vpr@27.58--27.72) [207045]"}
            NoPerm < perm ==> NoPerm < Mask[r1, f_7];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Inhale might fail. Did not reach labelled state before required to evaluate old[before](lookup(r1, i)). (0509b.vpr@27.10--27.102) [207046]"}
          before_lblGuard;
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := LabelbeforeMask;
          ExhaleWellDef0Heap := LabelbeforeHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access r1.f (0509b.vpr@27.88--27.101) [207047]"}
            NoPerm < perm ==> NoPerm < LabelbeforeMask[r1, f_7];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(LabelbeforeHeap, ExhaleHeap, LabelbeforeMask);
          LabelbeforeHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall i_1: int ::
      { lookup#frame(FrameFragment(LabelbeforeHeap[r1, f_7]), r1, i_1) }
      lookup2(Heap, r1, i_1) == lookup_1(LabelbeforeHeap, r1, i_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert lookup2(r1, 5) > 2 -- 0509b.vpr@29.3--29.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of lookup2(r1, 5) > 2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function lookup2 might not hold. There might be insufficient permission to access r1.f (0509b.vpr@29.10--29.24) [207048]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r1, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion lookup2(r1, 5) > 2 might not hold. (0509b.vpr@29.10--29.28) [207049]"}
      lookup2(Heap, r1, 5) > 2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method main_fail_1
// ==================================================

procedure main_fail_1(r1: Ref, r2: Ref) returns ()
  modifies Heap, Mask;
{
  var before_lblGuard: bool;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var s_2: (Set Ref);
  var LabelbeforeMask: MaskType;
  var LabelbeforeHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    before_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[r1, $allocated];
    assume Heap[r2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r1 != null;
    Mask := Mask[r1, f_7:=Mask[r1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r2 != null;
    Mask := Mask[r2, f_7:=Mask[r2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale r1.f == 1 -- 0509b.vpr@35.10--35.19
    
    // -- Check definedness of r1.f == 1
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r1.f (0509b.vpr@35.10--35.19) [207050]"}
        HasDirectPerm(Mask, r1, f_7);
    assume Heap[r1, f_7] == 1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(r1.f, write) && acc(r2.f, write) -- 0509b.vpr@36.3--36.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access r1.f (0509b.vpr@36.10--36.32) [207052]"}
        perm <= Mask[r1, f_7];
    }
    Mask := Mask[r1, f_7:=Mask[r1, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access r2.f (0509b.vpr@36.10--36.32) [207054]"}
        perm <= Mask[r2, f_7];
    }
    Mask := Mask[r2, f_7:=Mask[r2, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(r1.f, write) && acc(r2.f, write) -- 0509b.vpr@37.3--37.32
    perm := FullPerm;
    assume r1 != null;
    Mask := Mask[r1, f_7:=Mask[r1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r2 != null;
    Mask := Mask[r2, f_7:=Mask[r2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale r1.f == 3 -- 0509b.vpr@38.10--38.19
    
    // -- Check definedness of r1.f == 3
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r1.f (0509b.vpr@38.10--38.19) [207057]"}
        HasDirectPerm(Mask, r1, f_7);
    assume Heap[r1, f_7] == 3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: s := Set(r1, r2) -- 0509b.vpr@40.3--40.19
    s_2 := Set#UnionOne(Set#Singleton(r2), r1);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale lookup(r1, 5) > 3 -- 0509b.vpr@41.10--41.27
    assume state(Heap, Mask);
    
    // -- Check definedness of lookup(r1, 5) > 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access r1.f (0509b.vpr@41.10--41.23) [207058]"}
          NoPerm < perm ==> NoPerm < Mask[r1, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume lookup_1(Heap, r1, 5) > 3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: label before -- 0509b.vpr@42.3--42.15
    before_1:
    LabelbeforeMask := Mask;
    LabelbeforeHeap := Heap;
    before_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(r1.f, write) && acc(r2.f, write) -- 0509b.vpr@43.3--43.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access r1.f (0509b.vpr@43.10--43.32) [207060]"}
        perm <= Mask[r1, f_7];
    }
    Mask := Mask[r1, f_7:=Mask[r1, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access r2.f (0509b.vpr@43.10--43.32) [207062]"}
        perm <= Mask[r2, f_7];
    }
    Mask := Mask[r2, f_7:=Mask[r2, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(r1.f, write) && acc(r2.f, write) -- 0509b.vpr@44.3--44.32
    perm := FullPerm;
    assume r1 != null;
    Mask := Mask[r1, f_7:=Mask[r1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r2 != null;
    Mask := Mask[r2, f_7:=Mask[r2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale r1.f == 4 -- 0509b.vpr@45.10--45.19
    
    // -- Check definedness of r1.f == 4
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r1.f (0509b.vpr@45.10--45.19) [207065]"}
        HasDirectPerm(Mask, r1, f_7);
    assume Heap[r1, f_7] == 4;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { lookup(r1, i) }
  //     lookup2(r1, i) == old[before](lookup(r1, i))) -- 0509b.vpr@46.10--46.89
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { lookup(r1, i) } lookup2(r1, i) == old[before](lookup(r1, i)))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := FullPerm;
          assert {:msg "  Precondition of function lookup2 might not hold. There might be insufficient permission to access r1.f (0509b.vpr@46.45--46.59) [207066]"}
            NoPerm < perm ==> NoPerm < Mask[r1, f_7];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Inhale might fail. Did not reach labelled state before required to evaluate old[before](lookup(r1, i)). (0509b.vpr@46.10--46.89) [207067]"}
          before_lblGuard;
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := LabelbeforeMask;
          ExhaleWellDef0Heap := LabelbeforeHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access r1.f (0509b.vpr@46.75--46.88) [207068]"}
            NoPerm < perm ==> NoPerm < LabelbeforeMask[r1, f_7];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(LabelbeforeHeap, ExhaleHeap, LabelbeforeMask);
          LabelbeforeHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall i_1: int ::
      { lookup#frame(FrameFragment(Heap[r1, f_7]), r1, i_1) }
      lookup2(Heap, r1, i_1) == lookup_1(LabelbeforeHeap, r1, i_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert lookup2(r1, 5) > 2 -- 0509b.vpr@49.3--49.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of lookup2(r1, 5) > 2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function lookup2 might not hold. There might be insufficient permission to access r1.f (0509b.vpr@49.10--49.24) [207069]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r1, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion lookup2(r1, 5) > 2 might not hold. (0509b.vpr@49.10--49.28) [207070]"}
      lookup2(Heap, r1, 5) > 2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method main_fail_2
// ==================================================

procedure main_fail_2(r1: Ref, r2: Ref) returns ()
  modifies Heap, Mask;
{
  var before_lblGuard: bool;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var s_2: (Set Ref);
  var LabelbeforeMask: MaskType;
  var LabelbeforeHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    before_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[r1, $allocated];
    assume Heap[r2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r1 != null;
    Mask := Mask[r1, f_7:=Mask[r1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r2 != null;
    Mask := Mask[r2, f_7:=Mask[r2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale r1.f == 1 -- 0509b.vpr@55.10--55.19
    
    // -- Check definedness of r1.f == 1
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r1.f (0509b.vpr@55.10--55.19) [207071]"}
        HasDirectPerm(Mask, r1, f_7);
    assume Heap[r1, f_7] == 1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(r1.f, write) && acc(r2.f, write) -- 0509b.vpr@56.3--56.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access r1.f (0509b.vpr@56.10--56.32) [207073]"}
        perm <= Mask[r1, f_7];
    }
    Mask := Mask[r1, f_7:=Mask[r1, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access r2.f (0509b.vpr@56.10--56.32) [207075]"}
        perm <= Mask[r2, f_7];
    }
    Mask := Mask[r2, f_7:=Mask[r2, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(r1.f, write) && acc(r2.f, write) -- 0509b.vpr@57.3--57.32
    perm := FullPerm;
    assume r1 != null;
    Mask := Mask[r1, f_7:=Mask[r1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r2 != null;
    Mask := Mask[r2, f_7:=Mask[r2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale r1.f == 3 -- 0509b.vpr@58.10--58.19
    
    // -- Check definedness of r1.f == 3
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r1.f (0509b.vpr@58.10--58.19) [207078]"}
        HasDirectPerm(Mask, r1, f_7);
    assume Heap[r1, f_7] == 3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: s := Set(r1, r2) -- 0509b.vpr@60.3--60.19
    s_2 := Set#UnionOne(Set#Singleton(r2), r1);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale lookup(r1, 5) > 3 -- 0509b.vpr@61.10--61.27
    assume state(Heap, Mask);
    
    // -- Check definedness of lookup(r1, 5) > 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access r1.f (0509b.vpr@61.10--61.23) [207079]"}
          NoPerm < perm ==> NoPerm < Mask[r1, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume lookup_1(Heap, r1, 5) > 3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: label before -- 0509b.vpr@62.3--62.15
    before_1:
    LabelbeforeMask := Mask;
    LabelbeforeHeap := Heap;
    before_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(r1.f, write) && acc(r2.f, write) -- 0509b.vpr@63.3--63.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access r1.f (0509b.vpr@63.10--63.32) [207081]"}
        perm <= Mask[r1, f_7];
    }
    Mask := Mask[r1, f_7:=Mask[r1, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access r2.f (0509b.vpr@63.10--63.32) [207083]"}
        perm <= Mask[r2, f_7];
    }
    Mask := Mask[r2, f_7:=Mask[r2, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(r1.f, write) && acc(r2.f, write) -- 0509b.vpr@64.3--64.32
    perm := FullPerm;
    assume r1 != null;
    Mask := Mask[r1, f_7:=Mask[r1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r2 != null;
    Mask := Mask[r2, f_7:=Mask[r2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale r1.f == 4 -- 0509b.vpr@65.10--65.19
    
    // -- Check definedness of r1.f == 4
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r1.f (0509b.vpr@65.10--65.19) [207086]"}
        HasDirectPerm(Mask, r1, f_7);
    assume Heap[r1, f_7] == 4;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { old(lookup(r1, i)) }
  //     lookup2(r1, i) == old[before](lookup(r1, i))) -- 0509b.vpr@66.10--66.94
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { old(lookup(r1, i)) } lookup2(r1, i) == old[before](lookup(r1, i)))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := FullPerm;
          assert {:msg "  Precondition of function lookup2 might not hold. There might be insufficient permission to access r1.f (0509b.vpr@66.50--66.64) [207087]"}
            NoPerm < perm ==> NoPerm < Mask[r1, f_7];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Inhale might fail. Did not reach labelled state before required to evaluate old[before](lookup(r1, i)). (0509b.vpr@66.10--66.94) [207088]"}
          before_lblGuard;
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := LabelbeforeMask;
          ExhaleWellDef0Heap := LabelbeforeHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function lookup might not hold. There might be insufficient permission to access r1.f (0509b.vpr@66.80--66.93) [207089]"}
            NoPerm < perm ==> NoPerm < LabelbeforeMask[r1, f_7];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(LabelbeforeHeap, ExhaleHeap, LabelbeforeMask);
          LabelbeforeHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall i_1: int ::
      { lookup#frame(FrameFragment(oldHeap[r1, f_7]), r1, i_1) }
      lookup2(Heap, r1, i_1) == lookup_1(LabelbeforeHeap, r1, i_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert lookup2(r1, 5) > 2 -- 0509b.vpr@69.3--69.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of lookup2(r1, 5) > 2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function lookup2 might not hold. There might be insufficient permission to access r1.f (0509b.vpr@69.10--69.24) [207090]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r1, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion lookup2(r1, 5) > 2 might not hold. (0509b.vpr@69.10--69.28) [207091]"}
      lookup2(Heap, r1, 5) > 2;
    assume state(Heap, Mask);
}