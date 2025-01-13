// 
// Translation of Viper program.
// 
// Date:         2025-01-13 13:10:12
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/permWandQP.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/permWandQP-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_16: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_16] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_16], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref, f_37: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, f_37] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_46, f_37) ==> Heap[o_46, f_37] == ExhaleHeap[o_46, f_37]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22), ExhaleHeap[null, PredicateMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> Heap[null, PredicateMaskField(pm_f_22)] == ExhaleHeap[null, PredicateMaskField(pm_f_22)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22), ExhaleHeap[null, WandMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> Heap[null, WandMaskField(pm_f_22)] == ExhaleHeap[null, WandMaskField(pm_f_22)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_46, $allocated] ==> ExhaleHeap[o_46, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_24: (Field A B), v: B ::
  { Heap[o_12, f_24:=v] }
  succHeap(Heap, Heap[o_12, f_24:=v])
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
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(a_1_1: Ref): bool;
function  neverTriggered2(a_3_1: Ref): bool;
function  neverTriggered3(a_1_1: Ref): bool;
function  neverTriggered4(a_3_1: Ref): bool;
function  neverTriggered5(x_1: Ref): bool;
function  neverTriggered6(y_1: Ref): bool;
function  neverTriggered7(x_3: Ref): bool;
function  neverTriggered8(y_3_2: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
function  invRecv7(recv: Ref): Ref;
function  invRecv8(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(recv: Ref): bool;
function  qpRange8(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

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
// Preamble of Wand Module.
// ==================================================

type WandType_wand;
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand(arg1, arg2, arg3, arg4) }
  IsWandField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4)) }
  wand#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand(arg1, arg2, arg3, arg4) }
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 0
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_1;
function  wand_1(arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { wand_1(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { wand_1(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4)) }
  wand_1#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { wand_1(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4)) == 1
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm, arg1_2: (Set Ref), arg2_2: Perm, arg3_2: (Set Ref), arg4_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4), wand_1(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_1(arg1, arg2, arg3, arg4) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of method m1
// ==================================================

procedure m1(x: Ref, y: Ref, vas: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var a_4: Ref;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Labellhs2Heap: HeapType;
  var Labellhs2Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall a: Ref :: { (a in as) } (a in as) ==> acc(a.f, write)) -- permWandQP.vpr@8.5--8.49
    
    // -- Check definedness of (forall a: Ref :: { (a in as) } (a in as) ==> acc(a.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource a.f might not be injective. (permWandQP.vpr@8.12--8.49) [142776]"}
      (forall a_1_1: Ref, a_1_2: Ref ::
      
      (((a_1_1 != a_1_2 && vas[a_1_1]) && vas[a_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_1_1 != a_1_2
    );
    
    // -- Define Inverse Function
      assume (forall a_1_1: Ref ::
        { Heap[a_1_1, f_7] } { QPMask[a_1_1, f_7] } { vas[a_1_1] }
        vas[a_1_1] && NoPerm < FullPerm ==> qpRange1(a_1_1) && invRecv1(a_1_1) == a_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (vas[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall a_1_1: Ref ::
        { Heap[a_1_1, f_7] } { QPMask[a_1_1, f_7] } { vas[a_1_1] }
        vas[a_1_1] ==> a_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((vas[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((vas[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall a: Ref ::
  //     { (a in as) }
  //     (a in as) ==> acc(a.f, write) --* acc(x.g, write)) -- permWandQP.vpr@9.5--9.62
    
    // -- Check definedness of (forall a: Ref :: { (a in as) } (a in as) ==> acc(a.f, write) --* acc(x.g, write))
      if (*) {
        if (vas[a_4]) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume a_4 != null;
            WandDefLHSMask := WandDefLHSMask[a_4, f_7:=WandDefLHSMask[a_4, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs1 -- permWandQP.vpr@9.41--9.62
              lhs1:
              Labellhs1Heap := WandDefLHSHeap;
              Labellhs1Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            assume x != null;
            WandDefRHSMask := WandDefRHSMask[x, g:=WandDefRHSMask[x, g] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(a.f, write) --* acc(x.g, write) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(a.f, write) --* acc(x.g, write) might not be injective. (permWandQP.vpr@9.12--9.62) [142777]"}
        (forall a_3_1: Ref, a_3_2: Ref ::
        { neverTriggered2(a_3_1), neverTriggered2(a_3_2) }
        (((a_3_1 != a_3_2 && vas[a_3_1]) && vas[a_3_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((a_3_1 != a_3_2 || FullPerm != FullPerm) || x != x) || FullPerm != FullPerm
      );
    
    // -- Define Inverse Function
      assume (forall a_3_1: Ref ::
        { Heap[null, wand(a_3_1, FullPerm, x, FullPerm)] } { Mask[null, wand(a_3_1, FullPerm, x, FullPerm)] } { vas[a_3_1] }
        vas[a_3_1] && NoPerm < FullPerm ==> invRecv2(a_3_1, FullPerm, x, FullPerm) == a_3_1 && qpRange2(a_3_1, FullPerm, x, FullPerm)
      );
      assume (forall arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm ::
        { invRecv2(arg_0, arg_1_2, arg_2_1, arg_3_1) }
        (vas[invRecv2(arg_0, arg_1_2, arg_2_1, arg_3_1)] && NoPerm < FullPerm) && qpRange2(arg_0, arg_1_2, arg_2_1, arg_3_1) ==> ((invRecv2(arg_0, arg_1_2, arg_2_1, arg_3_1) == arg_0 && FullPerm == arg_1_2) && x == arg_2_1) && FullPerm == arg_3_1
      );
    
    // -- Define updated permissions
      assume (forall arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm ::
        { QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] }
        (vas[invRecv2(arg_0, arg_1_2, arg_2_1, arg_3_1)] && NoPerm < FullPerm) && qpRange2(arg_0, arg_1_2, arg_2_1, arg_3_1) ==> (NoPerm < FullPerm ==> ((invRecv2(arg_0, arg_1_2, arg_2_1, arg_3_1) == arg_0 && FullPerm == arg_1_2) && x == arg_2_1) && FullPerm == arg_3_1) && QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] == Mask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm ::
        { QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] }
        !((vas[invRecv2(arg_0, arg_1_2, arg_2_1, arg_3_1)] && NoPerm < FullPerm) && qpRange2(arg_0, arg_1_2, arg_2_1, arg_3_1)) ==> QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] == Mask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (x in as) -- permWandQP.vpr@10.12--10.19
    assume vas[x];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (y in as) -- permWandQP.vpr@10.23--10.30
    assume vas[y];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(acc(x.f, write) --* acc(x.g, write)) == write -- permWandQP.vpr@11.5--11.48
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of perm(acc(x.f, write) --* acc(x.g, write)) == write
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs2 -- permWandQP.vpr@11.17--11.38
          lhs2:
          Labellhs2Heap := WandDefLHSHeap;
          Labellhs2Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, g:=WandDefRHSMask[x, g] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion perm(acc(x.f, write) --* acc(x.g, write)) == write might not hold. (permWandQP.vpr@11.12--11.48) [142778]"}
      Mask[null, wand(x, FullPerm, x, FullPerm)] == FullPerm;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(acc(y.f, write) --* acc(x.g, write)) == write -- permWandQP.vpr@12.5--12.48
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of perm(acc(y.f, write) --* acc(x.g, write)) == write
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume y != null;
        WandDefLHSMask := WandDefLHSMask[y, f_7:=WandDefLHSMask[y, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs3 -- permWandQP.vpr@12.17--12.38
          lhs3:
          Labellhs3Heap := WandDefLHSHeap;
          Labellhs3Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, g:=WandDefRHSMask[x, g] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion perm(acc(y.f, write) --* acc(x.g, write)) == write might not hold. (permWandQP.vpr@12.12--12.48) [142779]"}
      Mask[null, wand(y, FullPerm, x, FullPerm)] == FullPerm;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(acc(y.f, write) --* acc(y.g, write)) == write -- permWandQP.vpr@14.5--14.48
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of perm(acc(y.f, write) --* acc(y.g, write)) == write
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume y != null;
        WandDefLHSMask := WandDefLHSMask[y, f_7:=WandDefLHSMask[y, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs4 -- permWandQP.vpr@14.17--14.38
          lhs4:
          Labellhs4Heap := WandDefLHSHeap;
          Labellhs4Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume y != null;
        WandDefRHSMask := WandDefRHSMask[y, g:=WandDefRHSMask[y, g] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion perm(acc(y.f, write) --* acc(y.g, write)) == write might not hold. (permWandQP.vpr@14.12--14.48) [142780]"}
      Mask[null, wand(y, FullPerm, y, FullPerm)] == FullPerm;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(x: Ref, y: Ref, vas: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var a_8: Ref;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Labellhs6Heap: HeapType;
  var Labellhs6Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var Labellhs8Heap: HeapType;
  var Labellhs8Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall a: Ref :: { (a in as) } (a in as) ==> acc(a.f, write)) -- permWandQP.vpr@18.5--18.49
    
    // -- Check definedness of (forall a: Ref :: { (a in as) } (a in as) ==> acc(a.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource a.f might not be injective. (permWandQP.vpr@18.12--18.49) [142781]"}
      (forall a_1_1: Ref, a_1_2: Ref ::
      
      (((a_1_1 != a_1_2 && vas[a_1_1]) && vas[a_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_1_1 != a_1_2
    );
    
    // -- Define Inverse Function
      assume (forall a_1_1: Ref ::
        { Heap[a_1_1, f_7] } { QPMask[a_1_1, f_7] } { vas[a_1_1] }
        vas[a_1_1] && NoPerm < FullPerm ==> qpRange3(a_1_1) && invRecv3(a_1_1) == a_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (vas[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall a_1_1: Ref ::
        { Heap[a_1_1, f_7] } { QPMask[a_1_1, f_7] } { vas[a_1_1] }
        vas[a_1_1] ==> a_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((vas[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> invRecv3(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((vas[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (x in as) -- permWandQP.vpr@19.12--19.19
    assume vas[x];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall a: Ref ::
  //     { (a in as) }
  //     (a in as) && a.f > 3 ==> acc(a.f, write) --* acc(x.g, write)) -- permWandQP.vpr@20.5--20.73
    
    // -- Check definedness of (forall a: Ref :: { (a in as) } (a in as) && a.f > 3 ==> acc(a.f, write) --* acc(x.g, write))
      if (*) {
        if (vas[a_8]) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access a.f (permWandQP.vpr@20.12--20.73) [142782]"}
            HasDirectPerm(Mask, a_8, f_7);
        }
        if (vas[a_8] && Heap[a_8, f_7] > 3) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume a_8 != null;
            WandDefLHSMask := WandDefLHSMask[a_8, f_7:=WandDefLHSMask[a_8, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs5 -- permWandQP.vpr@20.52--20.73
              lhs5:
              Labellhs5Heap := WandDefLHSHeap;
              Labellhs5Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            assume x != null;
            WandDefRHSMask := WandDefRHSMask[x, g:=WandDefRHSMask[x, g] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(a.f, write) --* acc(x.g, write) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(a.f, write) --* acc(x.g, write) might not be injective. (permWandQP.vpr@20.12--20.73) [142783]"}
        (forall a_3_1: Ref, a_3_2: Ref ::
        { neverTriggered4(a_3_1), neverTriggered4(a_3_2) }
        (((a_3_1 != a_3_2 && (vas[a_3_1] && Heap[a_3_1, f_7] > 3)) && (vas[a_3_2] && Heap[a_3_2, f_7] > 3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((a_3_1 != a_3_2 || FullPerm != FullPerm) || x != x) || FullPerm != FullPerm
      );
    
    // -- Define Inverse Function
      assume (forall a_3_1: Ref ::
        { Heap[null, wand(a_3_1, FullPerm, x, FullPerm)] } { Mask[null, wand(a_3_1, FullPerm, x, FullPerm)] } { vas[a_3_1] }
        (vas[a_3_1] && Heap[a_3_1, f_7] > 3) && NoPerm < FullPerm ==> invRecv4(a_3_1, FullPerm, x, FullPerm) == a_3_1 && qpRange4(a_3_1, FullPerm, x, FullPerm)
      );
      assume (forall arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm ::
        { invRecv4(arg_0, arg_1_2, arg_2_1, arg_3_1) }
        ((vas[invRecv4(arg_0, arg_1_2, arg_2_1, arg_3_1)] && Heap[invRecv4(arg_0, arg_1_2, arg_2_1, arg_3_1), f_7] > 3) && NoPerm < FullPerm) && qpRange4(arg_0, arg_1_2, arg_2_1, arg_3_1) ==> ((invRecv4(arg_0, arg_1_2, arg_2_1, arg_3_1) == arg_0 && FullPerm == arg_1_2) && x == arg_2_1) && FullPerm == arg_3_1
      );
    
    // -- Define updated permissions
      assume (forall arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm ::
        { QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] }
        ((vas[invRecv4(arg_0, arg_1_2, arg_2_1, arg_3_1)] && Heap[invRecv4(arg_0, arg_1_2, arg_2_1, arg_3_1), f_7] > 3) && NoPerm < FullPerm) && qpRange4(arg_0, arg_1_2, arg_2_1, arg_3_1) ==> (NoPerm < FullPerm ==> ((invRecv4(arg_0, arg_1_2, arg_2_1, arg_3_1) == arg_0 && FullPerm == arg_1_2) && x == arg_2_1) && FullPerm == arg_3_1) && QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] == Mask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm ::
        { QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] }
        !(((vas[invRecv4(arg_0, arg_1_2, arg_2_1, arg_3_1)] && Heap[invRecv4(arg_0, arg_1_2, arg_2_1, arg_3_1), f_7] > 3) && NoPerm < FullPerm) && qpRange4(arg_0, arg_1_2, arg_2_1, arg_3_1)) ==> QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] == Mask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x.f > 3 -- permWandQP.vpr@21.5--21.19
    
    // -- Check definedness of x.f > 3
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (permWandQP.vpr@21.12--21.19) [142784]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] > 3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(acc(x.f, write) --* acc(x.g, write)) == write -- permWandQP.vpr@22.5--22.48
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of perm(acc(x.f, write) --* acc(x.g, write)) == write
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs6 -- permWandQP.vpr@22.17--22.38
          lhs6:
          Labellhs6Heap := WandDefLHSHeap;
          Labellhs6Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, g:=WandDefRHSMask[x, g] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion perm(acc(x.f, write) --* acc(x.g, write)) == write might not hold. (permWandQP.vpr@22.12--22.48) [142785]"}
      Mask[null, wand(x, FullPerm, x, FullPerm)] == FullPerm;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(y.f, write) --* acc(y.g, write) -- permWandQP.vpr@23.5--23.33
    
    // -- Check definedness of acc(y.f, write) --* acc(y.g, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume y != null;
        WandDefLHSMask := WandDefLHSMask[y, f_7:=WandDefLHSMask[y, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs7 -- permWandQP.vpr@23.12--23.33
          lhs7:
          Labellhs7Heap := WandDefLHSHeap;
          Labellhs7Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume y != null;
        WandDefRHSMask := WandDefRHSMask[y, g:=WandDefRHSMask[y, g] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(y, FullPerm, y, FullPerm):=Mask[null, wand(y, FullPerm, y, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x == y) -- permWandQP.vpr@25.5--27.6
    if (x == y) {
      
      // -- Translating statement: assert perm(acc(x.f, write) --* acc(x.g, write)) == 2 * write -- permWandQP.vpr@26.9--26.56
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of perm(acc(x.f, write) --* acc(x.g, write)) == 2 * write
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume x != null;
            WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs8 -- permWandQP.vpr@26.21--26.42
              lhs8:
              Labellhs8Heap := WandDefLHSHeap;
              Labellhs8Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            assume x != null;
            WandDefRHSMask := WandDefRHSMask[x, g:=WandDefRHSMask[x, g] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion perm(acc(x.f, write) --* acc(x.g, write)) == 2 * write might not hold. (permWandQP.vpr@26.16--26.56) [142786]"}
          Mask[null, wand(x, FullPerm, x, FullPerm)] == real(2) * FullPerm;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m3
// ==================================================

procedure m3(xs: (Set Ref), ys: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var QPMask: MaskType;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Labellhs10Heap: HeapType;
  var Labellhs10Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) --*
  //   (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write)) -- permWandQP.vpr@32.5--32.95
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) --* (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        
        // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource x.f might not be injective. (permWandQP.vpr@32.12--32.95) [142787]"}
          (forall x_1: Ref, x_1_1: Ref ::
          
          (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
        );
        
        // -- Define Inverse Function
          assume (forall x_1: Ref ::
            { WandDefLHSHeap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
            xs[x_1] && NoPerm < FullPerm ==> qpRange5(x_1) && invRecv5(x_1) == x_1
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            (xs[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> invRecv5(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall x_1: Ref ::
            { WandDefLHSHeap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
            xs[x_1] ==> x_1 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            ((xs[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> invRecv5(o_4) == o_4) && QPMask[o_4, f_7] == WandDefLHSMask[o_4, f_7] + FullPerm) && (!((xs[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, f_7] == WandDefLHSMask[o_4, f_7])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { WandDefLHSMask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != f_7 ==> WandDefLHSMask[o_4, f_5] == QPMask[o_4, f_5]
          );
        WandDefLHSMask := QPMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs9 -- permWandQP.vpr@32.12--32.95
          lhs9:
          Labellhs9Heap := WandDefLHSHeap;
          Labellhs9Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        
        // -- Check definedness of (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource y.f might not be injective. (permWandQP.vpr@32.12--32.95) [142788]"}
          (forall y_1: Ref, y_1_1: Ref ::
          
          (((y_1 != y_1_1 && ys[y_1]) && ys[y_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y_1 != y_1_1
        );
        
        // -- Define Inverse Function
          assume (forall y_1: Ref ::
            { WandDefRHSHeap[y_1, f_7] } { QPMask[y_1, f_7] } { ys[y_1] }
            ys[y_1] && NoPerm < FullPerm ==> qpRange6(y_1) && invRecv6(y_1) == y_1
          );
          assume (forall o_4: Ref ::
            { invRecv6(o_4) }
            (ys[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> invRecv6(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall y_1: Ref ::
            { WandDefRHSHeap[y_1, f_7] } { QPMask[y_1, f_7] } { ys[y_1] }
            ys[y_1] ==> y_1 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            ((ys[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> invRecv6(o_4) == o_4) && QPMask[o_4, f_7] == WandDefRHSMask[o_4, f_7] + FullPerm) && (!((ys[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, f_7] == WandDefRHSMask[o_4, f_7])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { WandDefRHSMask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != f_7 ==> WandDefRHSMask[o_4, f_5] == QPMask[o_4, f_5]
          );
        WandDefRHSMask := QPMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(xs, FullPerm, ys, FullPerm):=Mask[null, wand_1(xs, FullPerm, ys, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm((forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) --*
  //   (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write))) ==
  //   write -- permWandQP.vpr@34.5--34.110
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of perm((forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) --* (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write))) == write
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        
        // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Assert might fail. Quantified resource x.f might not be injective. (permWandQP.vpr@34.12--34.110) [142789]"}
          (forall x_3: Ref, x_3_1: Ref ::
          
          (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
        );
        
        // -- Define Inverse Function
          assume (forall x_3: Ref ::
            { WandDefLHSHeap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
            xs[x_3] && NoPerm < FullPerm ==> qpRange7(x_3) && invRecv7(x_3) == x_3
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            (xs[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> invRecv7(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall x_3: Ref ::
            { WandDefLHSHeap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
            xs[x_3] ==> x_3 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            ((xs[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> invRecv7(o_4) == o_4) && QPMask[o_4, f_7] == WandDefLHSMask[o_4, f_7] + FullPerm) && (!((xs[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, f_7] == WandDefLHSMask[o_4, f_7])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { WandDefLHSMask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != f_7 ==> WandDefLHSMask[o_4, f_5] == QPMask[o_4, f_5]
          );
        WandDefLHSMask := QPMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs10 -- permWandQP.vpr@34.17--34.100
          lhs10:
          Labellhs10Heap := WandDefLHSHeap;
          Labellhs10Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        
        // -- Check definedness of (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Assert might fail. Quantified resource y.f might not be injective. (permWandQP.vpr@34.12--34.110) [142790]"}
          (forall y_3_2: Ref, y_3_3: Ref ::
          
          (((y_3_2 != y_3_3 && ys[y_3_2]) && ys[y_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y_3_2 != y_3_3
        );
        
        // -- Define Inverse Function
          assume (forall y_3_2: Ref ::
            { WandDefRHSHeap[y_3_2, f_7] } { QPMask[y_3_2, f_7] } { ys[y_3_2] }
            ys[y_3_2] && NoPerm < FullPerm ==> qpRange8(y_3_2) && invRecv8(y_3_2) == y_3_2
          );
          assume (forall o_4: Ref ::
            { invRecv8(o_4) }
            (ys[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4) ==> invRecv8(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall y_3_2: Ref ::
            { WandDefRHSHeap[y_3_2, f_7] } { QPMask[y_3_2, f_7] } { ys[y_3_2] }
            ys[y_3_2] ==> y_3_2 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            ((ys[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> invRecv8(o_4) == o_4) && QPMask[o_4, f_7] == WandDefRHSMask[o_4, f_7] + FullPerm) && (!((ys[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, f_7] == WandDefRHSMask[o_4, f_7])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { WandDefRHSMask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != f_7 ==> WandDefRHSMask[o_4, f_5] == QPMask[o_4, f_5]
          );
        WandDefRHSMask := QPMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion perm((forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) --* (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write))) == write might not hold. (permWandQP.vpr@34.12--34.110) [142791]"}
      Mask[null, wand_1(xs, FullPerm, ys, FullPerm)] == FullPerm;
    assume state(Heap, Mask);
}