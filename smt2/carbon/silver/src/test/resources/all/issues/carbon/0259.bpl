// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:22:58
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0259.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0259-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(self: Ref): Field PredicateType_P FrameType;
function  P#sm(self: Ref): Field PredicateType_P PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(P(self)) }
  PredicateMaskField(P(self)) == P#sm(self)
);
axiom (forall self: Ref ::
  { P(self) }
  IsPredicateField(P(self))
);
axiom (forall self: Ref ::
  { P(self) }
  getPredWandId(P(self)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { P(self), P(self2) }
  P(self) == P(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { P#sm(self), P#sm(self2) }
  P#sm(self) == P#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { P#trigger(Heap, P(self)) }
  P#everUsed(P(self))
);

procedure P#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, f_7:=Mask[self, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, P(y):=Mask[null, P(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: i := 0 -- 0259.vpr@11.5--11.20
    i := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < 10) -- 0259.vpr@14.5--18.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(P(x), 1 / 2) && (acc(P(y), 1 / 2) && i <= 10) might not hold on entry. Fraction 1 / 2 might be negative. (0259.vpr@15.19--15.62) [193651]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(P(x), 1 / 2) && (acc(P(y), 1 / 2) && i <= 10) might not hold on entry. There might be insufficient permission to access P(x) (0259.vpr@15.19--15.62) [193652]"}
            perm <= Mask[null, P(x)];
        }
        Mask := Mask[null, P(x):=Mask[null, P(x)] - perm];
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(P(x), 1 / 2) && (acc(P(y), 1 / 2) && i <= 10) might not hold on entry. Fraction 1 / 2 might be negative. (0259.vpr@15.19--15.62) [193653]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(P(x), 1 / 2) && (acc(P(y), 1 / 2) && i <= 10) might not hold on entry. There might be insufficient permission to access P(y) (0259.vpr@15.19--15.62) [193654]"}
            perm <= Mask[null, P(y)];
        }
        Mask := Mask[null, P(y):=Mask[null, P(y)] - perm];
        assert {:msg "  Loop invariant acc(P(x), 1 / 2) && (acc(P(y), 1 / 2) && i <= 10) might not hold on entry. Assertion i <= 10 might not hold. (0259.vpr@15.19--15.62) [193655]"}
          i <= 10;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc i;
    
    // -- Check definedness of invariant
      if (*) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0259.vpr@15.19--15.62) [193656]"}
          perm >= NoPerm;
        Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
        assume state(Heap, Mask);
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0259.vpr@15.19--15.62) [193657]"}
          perm >= NoPerm;
        Mask := Mask[null, P(y):=Mask[null, P(y)] + perm];
        assume state(Heap, Mask);
        assume i <= 10;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := 1 / 2;
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (0259.vpr@15.19--15.62) [193658]"}
          perm >= NoPerm;
        Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
        assume state(Heap, Mask);
        perm := 1 / 2;
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (0259.vpr@15.19--15.62) [193659]"}
          perm >= NoPerm;
        Mask := Mask[null, P(y):=Mask[null, P(y)] + perm];
        assume state(Heap, Mask);
        assume i <= 10;
        assume state(Heap, Mask);
        // Check and assume guard
        assume i < 10;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: i := i + 1 -- 0259.vpr@17.9--17.19
            i := i + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(P(x), 1 / 2) && (acc(P(y), 1 / 2) && i <= 10) might not be preserved. Fraction 1 / 2 might be negative. (0259.vpr@15.19--15.62) [193660]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(P(x), 1 / 2) && (acc(P(y), 1 / 2) && i <= 10) might not be preserved. There might be insufficient permission to access P(x) (0259.vpr@15.19--15.62) [193661]"}
            perm <= Mask[null, P(x)];
        }
        Mask := Mask[null, P(x):=Mask[null, P(x)] - perm];
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(P(x), 1 / 2) && (acc(P(y), 1 / 2) && i <= 10) might not be preserved. Fraction 1 / 2 might be negative. (0259.vpr@15.19--15.62) [193662]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(P(x), 1 / 2) && (acc(P(y), 1 / 2) && i <= 10) might not be preserved. There might be insufficient permission to access P(y) (0259.vpr@15.19--15.62) [193663]"}
            perm <= Mask[null, P(y)];
        }
        Mask := Mask[null, P(y):=Mask[null, P(y)] - perm];
        assert {:msg "  Loop invariant acc(P(x), 1 / 2) && (acc(P(y), 1 / 2) && i <= 10) might not be preserved. Assertion i <= 10 might not hold. (0259.vpr@15.19--15.62) [193664]"}
          i <= 10;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < 10);
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (0259.vpr@15.19--15.62) [193665]"}
        perm >= NoPerm;
      Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (0259.vpr@15.19--15.62) [193666]"}
        perm >= NoPerm;
      Mask := Mask[null, P(y):=Mask[null, P(y)] + perm];
      assume state(Heap, Mask);
      assume i <= 10;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (unfolding acc(P(x), write) in x.f) ==
  //   old((unfolding acc(P(x), write) in x.f)) -- 0259.vpr@20.5--20.65
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(P(x), write) in x.f) == old((unfolding acc(P(x), write) in x.f))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access P(x) (0259.vpr@20.12--20.65) [193667]"}
          perm <= UnfoldingMask[null, P(x)];
      }
      UnfoldingMask := UnfoldingMask[null, P(x):=UnfoldingMask[null, P(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (0259.vpr@20.12--20.65) [193668]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
      UnfoldingHeap := oldHeap;
      UnfoldingMask := oldMask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access P(x) (0259.vpr@20.12--20.65) [193669]"}
          perm <= UnfoldingMask[null, P(x)];
      }
      UnfoldingMask := UnfoldingMask[null, P(x):=UnfoldingMask[null, P(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (0259.vpr@20.12--20.65) [193670]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion (unfolding acc(P(x), write) in x.f) == old((unfolding acc(P(x), write) in x.f)) might not hold. (0259.vpr@20.12--20.65) [193671]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (unfolding acc(P(y), write) in y.f) ==
  //   old((unfolding acc(P(y), write) in y.f)) -- 0259.vpr@22.5--22.65
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(P(y), write) in y.f) == old((unfolding acc(P(y), write) in y.f))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(y));
      assume UnfoldingHeap[null, P(y)] == FrameFragment(UnfoldingHeap[y, f_7]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access P(y) (0259.vpr@22.12--22.65) [193672]"}
          perm <= UnfoldingMask[null, P(y)];
      }
      UnfoldingMask := UnfoldingMask[null, P(y):=UnfoldingMask[null, P(y)] - perm];
      perm := FullPerm;
      assume y != null;
      UnfoldingMask := UnfoldingMask[y, f_7:=UnfoldingMask[y, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (0259.vpr@22.12--22.65) [193673]"}
        HasDirectPerm(UnfoldingMask, y, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(y):=Heap[null, P#sm(y)][y, f_7:=true]];
        assume state(Heap, Mask);
      UnfoldingHeap := oldHeap;
      UnfoldingMask := oldMask;
      assume P#trigger(UnfoldingHeap, P(y));
      assume UnfoldingHeap[null, P(y)] == FrameFragment(UnfoldingHeap[y, f_7]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access P(y) (0259.vpr@22.12--22.65) [193674]"}
          perm <= UnfoldingMask[null, P(y)];
      }
      UnfoldingMask := UnfoldingMask[null, P(y):=UnfoldingMask[null, P(y)] - perm];
      perm := FullPerm;
      assume y != null;
      UnfoldingMask := UnfoldingMask[y, f_7:=UnfoldingMask[y, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (0259.vpr@22.12--22.65) [193675]"}
        HasDirectPerm(UnfoldingMask, y, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(y):=Heap[null, P#sm(y)][y, f_7:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion (unfolding acc(P(y), write) in y.f) == old((unfolding acc(P(y), write) in y.f)) might not hold. (0259.vpr@22.12--22.65) [193676]"}
      Heap[y, f_7] == oldHeap[y, f_7];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(y):=Heap[null, P#sm(y)][y, f_7:=true]];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}