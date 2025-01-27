// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:15:08
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0228a.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0228a-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_3: Ref, f_8: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_3, f_8] }
  Heap[o_3, $allocated] ==> Heap[Heap[o_3, f_8], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref, f_9: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, f_9] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_4, f_9) ==> Heap[o_4, f_9] == ExhaleHeap[o_4, f_9]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1), ExhaleHeap[null, WandMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> Heap[null, WandMaskField(pm_f_1)] == ExhaleHeap[null, WandMaskField(pm_f_1)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_4, $allocated] ==> ExhaleHeap[o_4, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_10: (Field A B), v: B ::
  { Heap[o_3, f_10:=v] }
  succHeap(Heap, Heap[o_3, f_10:=v])
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

function  neverTriggered1(j_1: int): bool;
function  neverTriggered2(j_3: int): bool;
function  neverTriggered3(j_1: int): bool;
function  neverTriggered4(j_3: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;

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
// Translation of domain Ptr
// ==================================================

// The type for domain Ptr
type PtrDomainType;

// Translation of domain function loc
function  loc(a_3: PtrDomainType, i_6: int): Ref;

// Translation of domain axiom loc_inject
axiom (forall a_2: PtrDomainType, i: int, j: int ::
  { (loc(a_2, i): Ref), (loc(a_2, j): Ref) }
  i >= 0 && (j >= 0 && i != j) ==> (loc(a_2, i): Ref) != (loc(a_2, j): Ref)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique Array__ptr: Field NormalField PtrDomainType;
axiom !IsPredicateField(Array__ptr);
axiom !IsWandField(Array__ptr);
const unique Array__len: Field NormalField int;
axiom !IsPredicateField(Array__len);
axiom !IsWandField(Array__len);
const unique Int__v: Field NormalField int;
axiom !IsPredicateField(Int__v);
axiom !IsWandField(Int__v);
const unique pval: Field NormalField Ref;
axiom !IsPredicateField(pval);
axiom !IsWandField(pval);

// ==================================================
// Translation of predicate valid__Array
// ==================================================

type PredicateType_valid__Array;
function  valid__Array(self: Ref): Field PredicateType_valid__Array FrameType;
function  valid__Array#sm(self: Ref): Field PredicateType_valid__Array PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(valid__Array(self)) }
  PredicateMaskField(valid__Array(self)) == valid__Array#sm(self)
);
axiom (forall self: Ref ::
  { valid__Array(self) }
  IsPredicateField(valid__Array(self))
);
axiom (forall self: Ref ::
  { valid__Array(self) }
  getPredWandId(valid__Array(self)) == 0
);
function  valid__Array#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid__Array#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { valid__Array(self), valid__Array(self2) }
  valid__Array(self) == valid__Array(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { valid__Array#sm(self), valid__Array#sm(self2) }
  valid__Array#sm(self) == valid__Array#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { valid__Array#trigger(Heap, valid__Array(self)) }
  valid__Array#everUsed(valid__Array(self))
);

procedure valid__Array#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid__Array
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, Array__ptr:=Mask[self, Array__ptr] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, Array__len:=Mask[self, Array__len] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method ok
// ==================================================

procedure ok(self$1: Ref, len_3: int, rd$1: Perm) returns (res$1: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var j_14: int;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var j_15: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[self$1, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < rd$1;
    assume rd$1 < FullPerm;
    assume state(Heap, Mask);
    assume len_3 > 0;
    assume state(Heap, Mask);
    perm := rd$1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@7.12--7.47) [80372]"}
      perm >= NoPerm;
    Mask := Mask[null, valid__Array(self$1):=Mask[null, valid__Array(self$1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int ::0 <= j && j < len ==> acc(loc((unfolding acc(valid__Array(self$1), rd$1 / 2) in self$1.Array__ptr), j).pval, write))
      if (*) {
        if (0 <= j_14 && j_14 < len_3) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might not be positive. (0228a.vpr@8.12--8.135) [80373]"}
            rd$1 > NoPerm;
          assume valid__Array#trigger(UnfoldingHeap, valid__Array(self$1));
          assume UnfoldingHeap[null, valid__Array(self$1)] == CombineFrames(FrameFragment(UnfoldingHeap[self$1, Array__ptr]), FrameFragment(UnfoldingHeap[self$1, Array__len]));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@8.12--8.135) [80374]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid__Array(self$1) (0228a.vpr@8.12--8.135) [80375]"}
              perm <= UnfoldingMask[null, valid__Array(self$1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid__Array(self$1):=UnfoldingMask[null, valid__Array(self$1)] - perm];
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@8.12--8.135) [80376]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> self$1 != null;
          UnfoldingMask := UnfoldingMask[self$1, Array__ptr:=UnfoldingMask[self$1, Array__ptr] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@8.12--8.135) [80377]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> self$1 != null;
          UnfoldingMask := UnfoldingMask[self$1, Array__len:=UnfoldingMask[self$1, Array__len] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access self$1.Array__ptr (0228a.vpr@8.12--8.135) [80378]"}
            HasDirectPerm(UnfoldingMask, self$1, Array__ptr);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc((unfolding acc(valid__Array(self$1), rd$1 / 2) in self$1.Array__ptr), j).pval might not be injective. (0228a.vpr@8.12--8.135) [80379]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < len_3)) && (0 <= j_1_1 && j_1_1 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[self$1, Array__ptr], j_1): Ref) != (loc(Heap[self$1, Array__ptr], j_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { (loc(Heap[self$1, Array__ptr], j_1): Ref) }
        (0 <= j_1 && j_1 < len_3) && NoPerm < FullPerm ==> qpRange1((loc(Heap[self$1, Array__ptr], j_1): Ref)) && invRecv1((loc(Heap[self$1, Array__ptr], j_1): Ref)) == j_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        ((0 <= invRecv1(o_9) && invRecv1(o_9) < len_3) && NoPerm < FullPerm) && qpRange1(o_9) ==> (loc(Heap[self$1, Array__ptr], invRecv1(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { (loc(Heap[self$1, Array__ptr], j_1): Ref) }
        0 <= j_1 && j_1 < len_3 ==> (loc(Heap[self$1, Array__ptr], j_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, pval] }
        (((0 <= invRecv1(o_9) && invRecv1(o_9) < len_3) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> (loc(Heap[self$1, Array__ptr], invRecv1(o_9)): Ref) == o_9) && QPMask[o_9, pval] == Mask[o_9, pval] + FullPerm) && (!(((0 <= invRecv1(o_9) && invRecv1(o_9) < len_3) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, pval] == Mask[o_9, pval])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != pval ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int ::0 <= j && j < len ==> acc(loc((unfolding acc(valid__Array(self$1), rd$1 / 2) in self$1.Array__ptr), j).pval.Int__v, write))
      if (*) {
        if (0 <= j_15 && j_15 < len_3) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might not be positive. (0228a.vpr@10.12--10.142) [80380]"}
            rd$1 > NoPerm;
          assume valid__Array#trigger(UnfoldingHeap, valid__Array(self$1));
          assume UnfoldingHeap[null, valid__Array(self$1)] == CombineFrames(FrameFragment(UnfoldingHeap[self$1, Array__ptr]), FrameFragment(UnfoldingHeap[self$1, Array__len]));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@10.12--10.142) [80381]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid__Array(self$1) (0228a.vpr@10.12--10.142) [80382]"}
              perm <= UnfoldingMask[null, valid__Array(self$1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid__Array(self$1):=UnfoldingMask[null, valid__Array(self$1)] - perm];
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@10.12--10.142) [80383]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> self$1 != null;
          UnfoldingMask := UnfoldingMask[self$1, Array__ptr:=UnfoldingMask[self$1, Array__ptr] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@10.12--10.142) [80384]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> self$1 != null;
          UnfoldingMask := UnfoldingMask[self$1, Array__len:=UnfoldingMask[self$1, Array__len] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access self$1.Array__ptr (0228a.vpr@10.12--10.142) [80385]"}
            HasDirectPerm(UnfoldingMask, self$1, Array__ptr);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc((unfolding acc(valid__Array(self$1), rd$1 / 2) in self$1.Array__ptr), j).pval (0228a.vpr@10.12--10.142) [80386]"}
            HasDirectPerm(Mask, (loc(Heap[self$1, Array__ptr], j_15): Ref), pval);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc((unfolding acc(valid__Array(self$1), rd$1 / 2) in self$1.Array__ptr), j).pval.Int__v might not be injective. (0228a.vpr@10.12--10.142) [80387]"}
      (forall j_3: int, j_3_1: int ::
      
      (((j_3 != j_3_1 && (0 <= j_3 && j_3 < len_3)) && (0 <= j_3_1 && j_3_1 < len_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[(loc(Heap[self$1, Array__ptr], j_3): Ref), pval] != Heap[(loc(Heap[self$1, Array__ptr], j_3_1): Ref), pval]
    );
    
    // -- Define Inverse Function
      assume (forall j_3: int ::
        { Heap[(loc(Heap[self$1, Array__ptr], j_3): Ref), pval] }
        (0 <= j_3 && j_3 < len_3) && NoPerm < FullPerm ==> qpRange2(Heap[(loc(Heap[self$1, Array__ptr], j_3): Ref), pval]) && invRecv2(Heap[(loc(Heap[self$1, Array__ptr], j_3): Ref), pval]) == j_3
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        ((0 <= invRecv2(o_9) && invRecv2(o_9) < len_3) && NoPerm < FullPerm) && qpRange2(o_9) ==> Heap[(loc(Heap[self$1, Array__ptr], invRecv2(o_9)): Ref), pval] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3: int ::
        { Heap[(loc(Heap[self$1, Array__ptr], j_3): Ref), pval] }
        0 <= j_3 && j_3 < len_3 ==> Heap[(loc(Heap[self$1, Array__ptr], j_3): Ref), pval] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Int__v] }
        (((0 <= invRecv2(o_9) && invRecv2(o_9) < len_3) && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> Heap[(loc(Heap[self$1, Array__ptr], invRecv2(o_9)): Ref), pval] == o_9) && QPMask[o_9, Int__v] == Mask[o_9, Int__v] + FullPerm) && (!(((0 <= invRecv2(o_9) && invRecv2(o_9) < len_3) && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, Int__v] == Mask[o_9, Int__v])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Int__v ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method not_ok
// ==================================================

procedure not_ok(self$1: Ref, rd$1: Perm) returns (res$1: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var j_12: int;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var j_13: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[self$1, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < rd$1;
    assume rd$1 < FullPerm;
    assume state(Heap, Mask);
    perm := rd$1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@16.12--16.47) [80388]"}
      perm >= NoPerm;
    Mask := Mask[null, valid__Array(self$1):=Mask[null, valid__Array(self$1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int ::0 <= j && j < (unfolding acc(valid__Array(self$1), rd$1 / 2) in self$1.Array__len) ==> acc(loc((unfolding acc(valid__Array(self$1), rd$1 / 2) in self$1.Array__ptr), j).pval, write))
      if (*) {
        if (0 <= j_12) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might not be positive. (0228a.vpr@17.12--17.200) [80389]"}
            rd$1 > NoPerm;
          assume valid__Array#trigger(UnfoldingHeap, valid__Array(self$1));
          assume UnfoldingHeap[null, valid__Array(self$1)] == CombineFrames(FrameFragment(UnfoldingHeap[self$1, Array__ptr]), FrameFragment(UnfoldingHeap[self$1, Array__len]));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@17.12--17.200) [80390]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid__Array(self$1) (0228a.vpr@17.12--17.200) [80391]"}
              perm <= UnfoldingMask[null, valid__Array(self$1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid__Array(self$1):=UnfoldingMask[null, valid__Array(self$1)] - perm];
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@17.12--17.200) [80392]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> self$1 != null;
          UnfoldingMask := UnfoldingMask[self$1, Array__ptr:=UnfoldingMask[self$1, Array__ptr] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@17.12--17.200) [80393]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> self$1 != null;
          UnfoldingMask := UnfoldingMask[self$1, Array__len:=UnfoldingMask[self$1, Array__len] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access self$1.Array__len (0228a.vpr@17.12--17.200) [80394]"}
            HasDirectPerm(UnfoldingMask, self$1, Array__len);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
        }
        if (0 <= j_12 && j_12 < Heap[self$1, Array__len]) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might not be positive. (0228a.vpr@17.12--17.200) [80395]"}
            rd$1 > NoPerm;
          assume valid__Array#trigger(UnfoldingHeap, valid__Array(self$1));
          assume UnfoldingHeap[null, valid__Array(self$1)] == CombineFrames(FrameFragment(UnfoldingHeap[self$1, Array__ptr]), FrameFragment(UnfoldingHeap[self$1, Array__len]));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@17.12--17.200) [80396]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid__Array(self$1) (0228a.vpr@17.12--17.200) [80397]"}
              perm <= UnfoldingMask[null, valid__Array(self$1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid__Array(self$1):=UnfoldingMask[null, valid__Array(self$1)] - perm];
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@17.12--17.200) [80398]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> self$1 != null;
          UnfoldingMask := UnfoldingMask[self$1, Array__ptr:=UnfoldingMask[self$1, Array__ptr] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@17.12--17.200) [80399]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> self$1 != null;
          UnfoldingMask := UnfoldingMask[self$1, Array__len:=UnfoldingMask[self$1, Array__len] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access self$1.Array__ptr (0228a.vpr@17.12--17.200) [80400]"}
            HasDirectPerm(UnfoldingMask, self$1, Array__ptr);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc((unfolding acc(valid__Array(self$1), rd$1 / 2) in self$1.Array__ptr), j).pval might not be injective. (0228a.vpr@17.12--17.200) [80401]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && (0 <= j_1 && j_1 < Heap[self$1, Array__len])) && (0 <= j_1_1 && j_1_1 < Heap[self$1, Array__len])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[self$1, Array__ptr], j_1): Ref) != (loc(Heap[self$1, Array__ptr], j_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { (loc(Heap[self$1, Array__ptr], j_1): Ref) }
        (0 <= j_1 && j_1 < Heap[self$1, Array__len]) && NoPerm < FullPerm ==> qpRange3((loc(Heap[self$1, Array__ptr], j_1): Ref)) && invRecv3((loc(Heap[self$1, Array__ptr], j_1): Ref)) == j_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        ((0 <= invRecv3(o_9) && invRecv3(o_9) < Heap[self$1, Array__len]) && NoPerm < FullPerm) && qpRange3(o_9) ==> (loc(Heap[self$1, Array__ptr], invRecv3(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { (loc(Heap[self$1, Array__ptr], j_1): Ref) }
        0 <= j_1 && j_1 < Heap[self$1, Array__len] ==> (loc(Heap[self$1, Array__ptr], j_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, pval] }
        (((0 <= invRecv3(o_9) && invRecv3(o_9) < Heap[self$1, Array__len]) && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> (loc(Heap[self$1, Array__ptr], invRecv3(o_9)): Ref) == o_9) && QPMask[o_9, pval] == Mask[o_9, pval] + FullPerm) && (!(((0 <= invRecv3(o_9) && invRecv3(o_9) < Heap[self$1, Array__len]) && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, pval] == Mask[o_9, pval])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != pval ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int ::0 <= j && j < (unfolding acc(valid__Array(self$1), rd$1 / 2) in self$1.Array__len) ==> acc(loc((unfolding acc(valid__Array(self$1), rd$1 / 2) in self$1.Array__ptr), j).pval.Int__v, write))
      if (*) {
        if (0 <= j_13) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might not be positive. (0228a.vpr@19.12--19.207) [80402]"}
            rd$1 > NoPerm;
          assume valid__Array#trigger(UnfoldingHeap, valid__Array(self$1));
          assume UnfoldingHeap[null, valid__Array(self$1)] == CombineFrames(FrameFragment(UnfoldingHeap[self$1, Array__ptr]), FrameFragment(UnfoldingHeap[self$1, Array__len]));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@19.12--19.207) [80403]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid__Array(self$1) (0228a.vpr@19.12--19.207) [80404]"}
              perm <= UnfoldingMask[null, valid__Array(self$1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid__Array(self$1):=UnfoldingMask[null, valid__Array(self$1)] - perm];
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@19.12--19.207) [80405]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> self$1 != null;
          UnfoldingMask := UnfoldingMask[self$1, Array__ptr:=UnfoldingMask[self$1, Array__ptr] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@19.12--19.207) [80406]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> self$1 != null;
          UnfoldingMask := UnfoldingMask[self$1, Array__len:=UnfoldingMask[self$1, Array__len] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access self$1.Array__len (0228a.vpr@19.12--19.207) [80407]"}
            HasDirectPerm(UnfoldingMask, self$1, Array__len);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
        }
        if (0 <= j_13 && j_13 < Heap[self$1, Array__len]) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might not be positive. (0228a.vpr@19.12--19.207) [80408]"}
            rd$1 > NoPerm;
          assume valid__Array#trigger(UnfoldingHeap, valid__Array(self$1));
          assume UnfoldingHeap[null, valid__Array(self$1)] == CombineFrames(FrameFragment(UnfoldingHeap[self$1, Array__ptr]), FrameFragment(UnfoldingHeap[self$1, Array__len]));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@19.12--19.207) [80409]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid__Array(self$1) (0228a.vpr@19.12--19.207) [80410]"}
              perm <= UnfoldingMask[null, valid__Array(self$1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid__Array(self$1):=UnfoldingMask[null, valid__Array(self$1)] - perm];
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@19.12--19.207) [80411]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> self$1 != null;
          UnfoldingMask := UnfoldingMask[self$1, Array__ptr:=UnfoldingMask[self$1, Array__ptr] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0228a.vpr@19.12--19.207) [80412]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> self$1 != null;
          UnfoldingMask := UnfoldingMask[self$1, Array__len:=UnfoldingMask[self$1, Array__len] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access self$1.Array__ptr (0228a.vpr@19.12--19.207) [80413]"}
            HasDirectPerm(UnfoldingMask, self$1, Array__ptr);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc((unfolding acc(valid__Array(self$1), rd$1 / 2) in self$1.Array__ptr), j).pval (0228a.vpr@19.12--19.207) [80414]"}
            HasDirectPerm(Mask, (loc(Heap[self$1, Array__ptr], j_13): Ref), pval);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__ptr:=true]];
            Heap := Heap[null, valid__Array#sm(self$1):=Heap[null, valid__Array#sm(self$1)][self$1, Array__len:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc((unfolding acc(valid__Array(self$1), rd$1 / 2) in self$1.Array__ptr), j).pval.Int__v might not be injective. (0228a.vpr@19.12--19.207) [80415]"}
      (forall j_3: int, j_3_1: int ::
      
      (((j_3 != j_3_1 && (0 <= j_3 && j_3 < Heap[self$1, Array__len])) && (0 <= j_3_1 && j_3_1 < Heap[self$1, Array__len])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[(loc(Heap[self$1, Array__ptr], j_3): Ref), pval] != Heap[(loc(Heap[self$1, Array__ptr], j_3_1): Ref), pval]
    );
    
    // -- Define Inverse Function
      assume (forall j_3: int ::
        { Heap[(loc(Heap[self$1, Array__ptr], j_3): Ref), pval] }
        (0 <= j_3 && j_3 < Heap[self$1, Array__len]) && NoPerm < FullPerm ==> qpRange4(Heap[(loc(Heap[self$1, Array__ptr], j_3): Ref), pval]) && invRecv4(Heap[(loc(Heap[self$1, Array__ptr], j_3): Ref), pval]) == j_3
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        ((0 <= invRecv4(o_9) && invRecv4(o_9) < Heap[self$1, Array__len]) && NoPerm < FullPerm) && qpRange4(o_9) ==> Heap[(loc(Heap[self$1, Array__ptr], invRecv4(o_9)): Ref), pval] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3: int ::
        { Heap[(loc(Heap[self$1, Array__ptr], j_3): Ref), pval] }
        0 <= j_3 && j_3 < Heap[self$1, Array__len] ==> Heap[(loc(Heap[self$1, Array__ptr], j_3): Ref), pval] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Int__v] }
        (((0 <= invRecv4(o_9) && invRecv4(o_9) < Heap[self$1, Array__len]) && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> Heap[(loc(Heap[self$1, Array__ptr], invRecv4(o_9)): Ref), pval] == o_9) && QPMask[o_9, Int__v] == Mask[o_9, Int__v] + FullPerm) && (!(((0 <= invRecv4(o_9) && invRecv4(o_9) < Heap[self$1, Array__len]) && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, Int__v] == Mask[o_9, Int__v])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Int__v ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}