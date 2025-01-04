// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:14:42
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0172.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0172-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_131: Ref, f_205: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_131, f_205] }
  Heap[o_131, $allocated] ==> Heap[Heap[o_131, f_205], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_134: Ref, f_206: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_134, f_206] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_134, f_206) ==> Heap[o_134, f_206] == ExhaleHeap[o_134, f_206]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_58: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_58), ExhaleHeap[null, PredicateMaskField(pm_f_58)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_58) && IsPredicateField(pm_f_58) ==> Heap[null, PredicateMaskField(pm_f_58)] == ExhaleHeap[null, PredicateMaskField(pm_f_58)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_58: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_58) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_58) && IsPredicateField(pm_f_58) ==> (forall <A, B> o2_58: Ref, f_206: (Field A B) ::
    { ExhaleHeap[o2_58, f_206] }
    Heap[null, PredicateMaskField(pm_f_58)][o2_58, f_206] ==> Heap[o2_58, f_206] == ExhaleHeap[o2_58, f_206]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_58: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_58), ExhaleHeap[null, WandMaskField(pm_f_58)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_58) && IsWandField(pm_f_58) ==> Heap[null, WandMaskField(pm_f_58)] == ExhaleHeap[null, WandMaskField(pm_f_58)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_58: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_58) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_58) && IsWandField(pm_f_58) ==> (forall <A, B> o2_58: Ref, f_206: (Field A B) ::
    { ExhaleHeap[o2_58, f_206] }
    Heap[null, WandMaskField(pm_f_58)][o2_58, f_206] ==> Heap[o2_58, f_206] == ExhaleHeap[o2_58, f_206]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_134: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_134, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_134, $allocated] ==> ExhaleHeap[o_134, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_131: Ref, f_133: (Field A B), v: B ::
  { Heap[o_131, f_133:=v] }
  succHeap(Heap, Heap[o_131, f_133:=v])
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

const unique data: Field NormalField int;
axiom !IsPredicateField(data);
axiom !IsWandField(data);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of predicate LL
// ==================================================

type PredicateType_LL;
function  LL(x: Ref, i: int): Field PredicateType_LL FrameType;
function  LL#sm(x: Ref, i: int): Field PredicateType_LL PMaskType;
axiom (forall x: Ref, i: int ::
  { PredicateMaskField(LL(x, i)) }
  PredicateMaskField(LL(x, i)) == LL#sm(x, i)
);
axiom (forall x: Ref, i: int ::
  { LL(x, i) }
  IsPredicateField(LL(x, i))
);
axiom (forall x: Ref, i: int ::
  { LL(x, i) }
  getPredWandId(LL(x, i)) == 0
);
function  LL#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  LL#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, i: int, x2: Ref, i2_1: int ::
  { LL(x, i), LL(x2, i2_1) }
  LL(x, i) == LL(x2, i2_1) ==> x == x2 && i == i2_1
);
axiom (forall x: Ref, i: int, x2: Ref, i2_1: int ::
  { LL#sm(x, i), LL#sm(x2, i2_1) }
  LL#sm(x, i) == LL#sm(x2, i2_1) ==> x == x2 && i == i2_1
);

axiom (forall Heap: HeapType, x: Ref, i: int ::
  { LL#trigger(Heap, LL(x, i)) }
  LL#everUsed(LL(x, i))
);

procedure LL#definedness(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Check definedness of predicate body of LL
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@7.1--15.2) [201434]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, data:=Mask[x, data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.next.data, 1 / 2)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@7.1--15.2) [201435]"}
        HasDirectPerm(Mask, x, next);
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@7.1--15.2) [201436]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x, next] != null;
    Mask := Mask[Heap[x, next], data:=Mask[Heap[x, next], data] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(LL(x.next, i + 1), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@7.1--15.2) [201437]"}
        HasDirectPerm(Mask, x, next);
    perm := FullPerm;
    Mask := Mask[null, LL(Heap[x, next], i + 1):=Mask[null, LL(Heap[x, next], i + 1)] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(LL(x.next, i + 1), write) in x.next.data == i + 1)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL#trigger(UnfoldingHeap, LL(UnfoldingHeap[x, next], i + 1));
      assume UnfoldingHeap[null, LL(UnfoldingHeap[x, next], i + 1)] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, next], next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], data]), UnfoldingHeap[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)])));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access LL(x.next, i + 1) (0172.vpr@7.1--15.2) [201438]"}
          perm <= UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1)];
      }
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1):=UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1)] - perm];
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@7.1--15.2) [201439]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], data:=UnfoldingMask[UnfoldingHeap[x, next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], next:=UnfoldingMask[UnfoldingHeap[x, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@7.1--15.2) [201440]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[x, next], next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, next], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, next], next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingMask[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(LL(UnfoldingHeap[x, next], i + 1), UnfoldingHeap[null, LL(UnfoldingHeap[x, next], i + 1)], LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1), UnfoldingHeap[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Execute unfolding (for extra information)
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1));
        assume Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1)] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)])));
        ExhaleWellDef0Heap := Unfolding1Heap;
        ExhaleWellDef0Mask := Unfolding1Mask;
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[x, next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[Unfolding1Heap[x, next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], next:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1)], LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)]);
        assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data] == i + 1 + 1 + 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_16, f_21] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], data] == i + 1 + 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
            { newPMask[o_52, f_55] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_52, f_55] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_52, f_55] ==> newPMask[o_52, f_55]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], data] == i + 1 + 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
          { newPMask[o_15, f_20] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_15, f_20] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_15, f_20] ==> newPMask[o_15, f_20]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[x, next], data] == i + 1;
      
      // -- Execute unfolding (for extra information)
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1));
        assume Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1)] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)])));
        ExhaleWellDef0Heap := Unfolding1Heap;
        ExhaleWellDef0Mask := Unfolding1Mask;
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[x, next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[Unfolding1Heap[x, next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], next:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1)], LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)]);
        assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data] == i + 1 + 1 + 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
            { newPMask[o_26, f_29] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_26, f_29] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_26, f_29] ==> newPMask[o_26, f_29]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], data] == i + 1 + 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o: Ref, f_85: (Field A B) ::
            { newPMask[o, f_85] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o, f_85] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o, f_85] ==> newPMask[o, f_85]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
          { newPMask[o_53, f_56] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_53, f_56] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_53, f_56] ==> newPMask[o_53, f_56]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@7.1--15.2) [201441]"}
        HasDirectPerm(UnfoldingMask, x, next);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@7.1--15.2) [201442]"}
        HasDirectPerm(UnfoldingMask, x, next);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next.data (0172.vpr@7.1--15.2) [201443]"}
        HasDirectPerm(UnfoldingMask, UnfoldingHeap[x, next], data);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(Heap[x, next], i + 1):=Heap[null, LL#sm(Heap[x, next], i + 1)][Heap[x, next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next], i + 1):=Heap[null, LL#sm(Heap[x, next], i + 1)][Heap[x, next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next], i + 1):=Heap[null, LL#sm(Heap[x, next], i + 1)][Heap[Heap[x, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
          { newPMask[o_11, f_3] }
          Heap[null, LL#sm(Heap[x, next], i + 1)][o_11, f_3] || Heap[null, LL#sm(Heap[Heap[x, next], next], i + 1 + 1)][o_11, f_3] ==> newPMask[o_11, f_3]
        );
        Heap := Heap[null, LL#sm(Heap[x, next], i + 1):=newPMask];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL#trigger(UnfoldingHeap, LL(UnfoldingHeap[x, next], i + 1));
      assume UnfoldingHeap[null, LL(UnfoldingHeap[x, next], i + 1)] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, next], next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], data]), UnfoldingHeap[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)])));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1):=UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1)] - perm];
      perm := 1 / 2;
      assume perm > NoPerm ==> UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], data:=UnfoldingMask[UnfoldingHeap[x, next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], next:=UnfoldingMask[UnfoldingHeap[x, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[x, next], next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, next], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, next], next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingMask[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(LL(UnfoldingHeap[x, next], i + 1), UnfoldingHeap[null, LL(UnfoldingHeap[x, next], i + 1)], LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1), UnfoldingHeap[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], data] == i + 1 + 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
          { newPMask[o_35, f_17] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_35, f_17] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_35, f_17] ==> newPMask[o_35, f_17]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[x, next], data] == i + 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
          { newPMask[o_1, f_11] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_1, f_11] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_1, f_11] ==> newPMask[o_1, f_11]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[Heap[x, next], data] == i + 1;
    
    // -- Check definedness of x.data == i
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.data (0172.vpr@7.1--15.2) [201444]"}
        HasDirectPerm(Mask, x, data);
    assume Heap[x, data] == i;
    
    // -- Check definedness of (unfolding acc(LL(x.next, i + 1), write) in true)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL#trigger(UnfoldingHeap, LL(UnfoldingHeap[x, next], i + 1));
      assume UnfoldingHeap[null, LL(UnfoldingHeap[x, next], i + 1)] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, next], next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], data]), UnfoldingHeap[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)])));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access LL(x.next, i + 1) (0172.vpr@7.1--15.2) [201445]"}
          perm <= UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1)];
      }
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1):=UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1)] - perm];
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@7.1--15.2) [201446]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], data:=UnfoldingMask[UnfoldingHeap[x, next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], next:=UnfoldingMask[UnfoldingHeap[x, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@7.1--15.2) [201447]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[x, next], next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, next], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, next], next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingMask[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(LL(UnfoldingHeap[x, next], i + 1), UnfoldingHeap[null, LL(UnfoldingHeap[x, next], i + 1)], LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1), UnfoldingHeap[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Execute unfolding (for extra information)
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1));
        assume Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1)] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)])));
        ExhaleWellDef0Heap := Unfolding1Heap;
        ExhaleWellDef0Mask := Unfolding1Mask;
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[x, next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[Unfolding1Heap[x, next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], next:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1)], LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)]);
        assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data] == i + 1 + 1 + 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_22: Ref, f_24: (Field A B) ::
            { newPMask[o_22, f_24] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_22, f_24] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_22, f_24] ==> newPMask[o_22, f_24]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], data] == i + 1 + 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_3: Ref, f_12: (Field A B) ::
            { newPMask[o_3, f_12] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_3, f_12] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_3, f_12] ==> newPMask[o_3, f_12]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], data] == i + 1 + 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_12: Ref, f_9: (Field A B) ::
          { newPMask[o_12, f_9] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_12, f_9] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_12, f_9] ==> newPMask[o_12, f_9]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[x, next], data] == i + 1;
      
      // -- Execute unfolding (for extra information)
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1));
        assume Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1)] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)])));
        ExhaleWellDef0Heap := Unfolding1Heap;
        ExhaleWellDef0Mask := Unfolding1Mask;
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[x, next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[Unfolding1Heap[x, next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], next:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1)], LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)]);
        assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data] == i + 1 + 1 + 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_41: Ref, f_25: (Field A B) ::
            { newPMask[o_41, f_25] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_41, f_25] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_41, f_25] ==> newPMask[o_41, f_25]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], data] == i + 1 + 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_34: Ref, f_44: (Field A B) ::
            { newPMask[o_34, f_44] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_34, f_44] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_34, f_44] ==> newPMask[o_34, f_44]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_46: Ref, f_35: (Field A B) ::
          { newPMask[o_46, f_35] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_46, f_35] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_46, f_35] ==> newPMask[o_46, f_35]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@7.1--15.2) [201448]"}
        HasDirectPerm(UnfoldingMask, x, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(Heap[x, next], i + 1):=Heap[null, LL#sm(Heap[x, next], i + 1)][Heap[x, next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next], i + 1):=Heap[null, LL#sm(Heap[x, next], i + 1)][Heap[x, next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next], i + 1):=Heap[null, LL#sm(Heap[x, next], i + 1)][Heap[Heap[x, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_55: Ref, f_36: (Field A B) ::
          { newPMask[o_55, f_36] }
          Heap[null, LL#sm(Heap[x, next], i + 1)][o_55, f_36] || Heap[null, LL#sm(Heap[Heap[x, next], next], i + 1 + 1)][o_55, f_36] ==> newPMask[o_55, f_36]
        );
        Heap := Heap[null, LL#sm(Heap[x, next], i + 1):=newPMask];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL#trigger(UnfoldingHeap, LL(UnfoldingHeap[x, next], i + 1));
      assume UnfoldingHeap[null, LL(UnfoldingHeap[x, next], i + 1)] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, next], next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], data]), UnfoldingHeap[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)])));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1):=UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1)] - perm];
      perm := 1 / 2;
      assume perm > NoPerm ==> UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], data:=UnfoldingMask[UnfoldingHeap[x, next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], next:=UnfoldingMask[UnfoldingHeap[x, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[x, next], next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, next], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, next], next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingMask[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(LL(UnfoldingHeap[x, next], i + 1), UnfoldingHeap[null, LL(UnfoldingHeap[x, next], i + 1)], LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1), UnfoldingHeap[null, LL(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], data] == i + 1 + 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_42: Ref, f_26: (Field A B) ::
          { newPMask[o_42, f_26] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_42, f_26] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_42, f_26] ==> newPMask[o_42, f_26]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[x, next], data] == i + 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_13: Ref, f_45: (Field A B) ::
          { newPMask[o_13, f_45] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_13, f_45] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_13, f_45] ==> newPMask[o_13, f_45]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate LL2
// ==================================================

type PredicateType_LL2;
function  LL2(x: Ref, i: int): Field PredicateType_LL2 FrameType;
function  LL2#sm(x: Ref, i: int): Field PredicateType_LL2 PMaskType;
axiom (forall x: Ref, i: int ::
  { PredicateMaskField(LL2(x, i)) }
  PredicateMaskField(LL2(x, i)) == LL2#sm(x, i)
);
axiom (forall x: Ref, i: int ::
  { LL2(x, i) }
  IsPredicateField(LL2(x, i))
);
axiom (forall x: Ref, i: int ::
  { LL2(x, i) }
  getPredWandId(LL2(x, i)) == 1
);
function  LL2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  LL2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, i: int, x2: Ref, i2_1: int ::
  { LL2(x, i), LL2(x2, i2_1) }
  LL2(x, i) == LL2(x2, i2_1) ==> x == x2 && i == i2_1
);
axiom (forall x: Ref, i: int, x2: Ref, i2_1: int ::
  { LL2#sm(x, i), LL2#sm(x2, i2_1) }
  LL2#sm(x, i) == LL2#sm(x2, i2_1) ==> x == x2 && i == i2_1
);

axiom (forall Heap: HeapType, x: Ref, i: int ::
  { LL2#trigger(Heap, LL2(x, i)) }
  LL2#everUsed(LL2(x, i))
);

procedure LL2#definedness(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Check definedness of predicate body of LL2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@43.1--50.2) [201449]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, data:=Mask[x, data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.next.data, 1 / 2)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@43.1--50.2) [201450]"}
        HasDirectPerm(Mask, x, next);
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@43.1--50.2) [201451]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x, next] != null;
    Mask := Mask[Heap[x, next], data:=Mask[Heap[x, next], data] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(LL2(x.next, i + 1), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@43.1--50.2) [201452]"}
        HasDirectPerm(Mask, x, next);
    perm := FullPerm;
    Mask := Mask[null, LL2(Heap[x, next], i + 1):=Mask[null, LL2(Heap[x, next], i + 1)] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.data == i
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.data (0172.vpr@43.1--50.2) [201453]"}
        HasDirectPerm(Mask, x, data);
    assume Heap[x, data] == i;
    
    // -- Check definedness of (unfolding acc(LL2(x.next, i + 1), write) in true)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL2#trigger(UnfoldingHeap, LL2(UnfoldingHeap[x, next], i + 1));
      assume UnfoldingHeap[null, LL2(UnfoldingHeap[x, next], i + 1)] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, next], next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], data]), UnfoldingHeap[null, LL2(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)])));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access LL2(x.next, i + 1) (0172.vpr@43.1--50.2) [201454]"}
          perm <= UnfoldingMask[null, LL2(UnfoldingHeap[x, next], i + 1)];
      }
      UnfoldingMask := UnfoldingMask[null, LL2(UnfoldingHeap[x, next], i + 1):=UnfoldingMask[null, LL2(UnfoldingHeap[x, next], i + 1)] - perm];
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@43.1--50.2) [201455]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], data:=UnfoldingMask[UnfoldingHeap[x, next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], next:=UnfoldingMask[UnfoldingHeap[x, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@43.1--50.2) [201456]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[x, next], next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, next], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, next], next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL2(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingMask[null, LL2(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(LL2(UnfoldingHeap[x, next], i + 1), UnfoldingHeap[null, LL2(UnfoldingHeap[x, next], i + 1)], LL2(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1), UnfoldingHeap[null, LL2(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[x, next], data] == i + 1;
      
      // -- Execute unfolding (for extra information)
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume LL2#trigger(Unfolding1Heap, LL2(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1));
        assume Unfolding1Heap[null, LL2(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1)] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data]), Unfolding1Heap[null, LL2(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)])));
        ExhaleWellDef0Heap := Unfolding1Heap;
        ExhaleWellDef0Mask := Unfolding1Mask;
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL2(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1):=Unfolding1Mask[null, LL2(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[x, next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[Unfolding1Heap[x, next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], next:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[x, next], next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL2(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Mask[null, LL2(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL2(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1), Unfolding1Heap[null, LL2(Unfolding1Heap[Unfolding1Heap[x, next], next], i + 1 + 1)], LL2(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1), Unfolding1Heap[null, LL2(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)]);
        assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], data] == i + 1 + 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_47: Ref, f_41: (Field A B) ::
            { newPMask[o_47, f_41] }
            Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_47, f_41] || Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_47, f_41] ==> newPMask[o_47, f_41]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_43: Ref, f_13: (Field A B) ::
          { newPMask[o_43, f_13] }
          UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_43, f_13] || UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_43, f_13] ==> newPMask[o_43, f_13]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@43.1--50.2) [201457]"}
        HasDirectPerm(UnfoldingMask, x, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL2#sm(Heap[x, next], i + 1):=Heap[null, LL2#sm(Heap[x, next], i + 1)][Heap[x, next], data:=true]];
        Heap := Heap[null, LL2#sm(Heap[x, next], i + 1):=Heap[null, LL2#sm(Heap[x, next], i + 1)][Heap[x, next], next:=true]];
        Heap := Heap[null, LL2#sm(Heap[x, next], i + 1):=Heap[null, LL2#sm(Heap[x, next], i + 1)][Heap[Heap[x, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_14: Ref, f_51: (Field A B) ::
          { newPMask[o_14, f_51] }
          Heap[null, LL2#sm(Heap[x, next], i + 1)][o_14, f_51] || Heap[null, LL2#sm(Heap[Heap[x, next], next], i + 1 + 1)][o_14, f_51] ==> newPMask[o_14, f_51]
        );
        Heap := Heap[null, LL2#sm(Heap[x, next], i + 1):=newPMask];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL2#trigger(UnfoldingHeap, LL2(UnfoldingHeap[x, next], i + 1));
      assume UnfoldingHeap[null, LL2(UnfoldingHeap[x, next], i + 1)] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, next], next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], data]), UnfoldingHeap[null, LL2(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)])));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL2(UnfoldingHeap[x, next], i + 1):=UnfoldingMask[null, LL2(UnfoldingHeap[x, next], i + 1)] - perm];
      perm := 1 / 2;
      assume perm > NoPerm ==> UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], data:=UnfoldingMask[UnfoldingHeap[x, next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], next:=UnfoldingMask[UnfoldingHeap[x, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[x, next], next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, next], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[x, next], next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL2(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingMask[null, LL2(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(LL2(UnfoldingHeap[x, next], i + 1), UnfoldingHeap[null, LL2(UnfoldingHeap[x, next], i + 1)], LL2(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1), UnfoldingHeap[null, LL2(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[x, next], data] == i + 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_44: Ref, f_14: (Field A B) ::
          { newPMask[o_44, f_14] }
          UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_44, f_14] || UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_44, f_14] ==> newPMask[o_44, f_14]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(LL(z, 0), write) -- 0172.vpr@18.3--18.23
    perm := FullPerm;
    Mask := Mask[null, LL(z, 0):=Mask[null, LL(z, 0)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (unfolding acc(LL(z, 0), write) in z.next.data == 1) -- 0172.vpr@20.3--20.53
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(LL(z, 0), write) in z.next.data == 1)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume LL#trigger(UnfoldingHeap, LL(z, 0));
      assume UnfoldingHeap[null, LL(z, 0)] == CombineFrames(FrameFragment(UnfoldingHeap[z, data]), CombineFrames(FrameFragment(UnfoldingHeap[z, next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[z, next], data]), UnfoldingHeap[null, LL(UnfoldingHeap[z, next], 1)])));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access LL(z, 0) (0172.vpr@20.10--20.53) [201459]"}
          perm <= UnfoldingMask[null, LL(z, 0)];
      }
      UnfoldingMask := UnfoldingMask[null, LL(z, 0):=UnfoldingMask[null, LL(z, 0)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@20.10--20.53) [201460]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> z != null;
      UnfoldingMask := UnfoldingMask[z, data:=UnfoldingMask[z, data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume z != null;
      UnfoldingMask := UnfoldingMask[z, next:=UnfoldingMask[z, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@20.10--20.53) [201461]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> UnfoldingHeap[z, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[z, next], data:=UnfoldingMask[UnfoldingHeap[z, next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[z, next], 1):=UnfoldingMask[null, LL(UnfoldingHeap[z, next], 1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(LL(z, 0), UnfoldingHeap[null, LL(z, 0)], LL(UnfoldingHeap[z, next], 1), UnfoldingHeap[null, LL(UnfoldingHeap[z, next], 1)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Execute unfolding (for extra information)
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[z, next], 1));
        assume Unfolding1Heap[null, LL(Unfolding1Heap[z, next], 1)] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[z, next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[z, next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], data]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)])));
        ExhaleWellDef1Heap := Unfolding1Heap;
        ExhaleWellDef1Mask := Unfolding1Mask;
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[z, next], 1):=Unfolding1Mask[null, LL(Unfolding1Heap[z, next], 1)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[z, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[z, next], data:=Unfolding1Mask[Unfolding1Heap[z, next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[z, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[z, next], next:=Unfolding1Mask[Unfolding1Heap[z, next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[z, next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[z, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[z, next], next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(Unfolding1Heap[z, next], 1), Unfolding1Heap[null, LL(Unfolding1Heap[z, next], 1)], LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)]);
        assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], data] == 2;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_76: Ref, f_34: (Field A B) ::
            { newPMask[o_76, f_34] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_76, f_34] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_76, f_34] ==> newPMask[o_76, f_34]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[z, next], data] == 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_51: Ref, f_46: (Field A B) ::
            { newPMask[o_51, f_46] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_51, f_46] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_51, f_46] ==> newPMask[o_51, f_46]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      assume UnfoldingHeap[UnfoldingHeap[z, next], data] == 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[UnfoldingHeap[z, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_28: Ref, f_42: (Field A B) ::
          { newPMask[o_28, f_42] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][o_28, f_42] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_28, f_42] ==> newPMask[o_28, f_42]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[z, data] == 0;
      
      // -- Execute unfolding (for extra information)
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[z, next], 1));
        assume Unfolding1Heap[null, LL(Unfolding1Heap[z, next], 1)] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[z, next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[z, next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], data]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)])));
        ExhaleWellDef1Heap := Unfolding1Heap;
        ExhaleWellDef1Mask := Unfolding1Mask;
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[z, next], 1):=Unfolding1Mask[null, LL(Unfolding1Heap[z, next], 1)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[z, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[z, next], data:=Unfolding1Mask[Unfolding1Heap[z, next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[z, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[z, next], next:=Unfolding1Mask[Unfolding1Heap[z, next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[z, next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[z, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[z, next], next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(Unfolding1Heap[z, next], 1), Unfolding1Heap[null, LL(Unfolding1Heap[z, next], 1)], LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)]);
        assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], data] == 2;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_77: Ref, f_52: (Field A B) ::
            { newPMask[o_77, f_52] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_77, f_52] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_77, f_52] ==> newPMask[o_77, f_52]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[z, next], data] == 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_78: Ref, f_49: (Field A B) ::
            { newPMask[o_78, f_49] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_78, f_49] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_78, f_49] ==> newPMask[o_78, f_49]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[UnfoldingHeap[z, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_29: Ref, f_81: (Field A B) ::
          { newPMask[o_29, f_81] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][o_29, f_81] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_29, f_81] ==> newPMask[o_29, f_81]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@20.10--20.53) [201462]"}
        HasDirectPerm(UnfoldingMask, z, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.data (0172.vpr@20.10--20.53) [201463]"}
        HasDirectPerm(UnfoldingMask, Heap[z, next], data);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, data:=true]];
        Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, next:=true]];
        Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][Heap[z, next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_63: Ref, f_86: (Field A B) ::
          { newPMask[o_63, f_86] }
          Heap[null, LL#sm(z, 0)][o_63, f_86] || Heap[null, LL#sm(Heap[z, next], 1)][o_63, f_86] ==> newPMask[o_63, f_86]
        );
        Heap := Heap[null, LL#sm(z, 0):=newPMask];
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion z.next.data == 1 might not hold. (0172.vpr@20.10--20.53) [201464]"}
      Heap[Heap[z, next], data] == 1;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, data:=true]];
      Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, next:=true]];
      Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][Heap[z, next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_79: Ref, f_87: (Field A B) ::
        { newPMask[o_79, f_87] }
        Heap[null, LL#sm(z, 0)][o_79, f_87] || Heap[null, LL#sm(Heap[z, next], 1)][o_79, f_87] ==> newPMask[o_79, f_87]
      );
      Heap := Heap[null, LL#sm(z, 0):=newPMask];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(LL(z, 0), write) -- 0172.vpr@24.3--24.23
    perm := FullPerm;
    Mask := Mask[null, LL(z, 0):=Mask[null, LL(z, 0)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(LL(z, 0), write) -- 0172.vpr@26.3--26.23
    assume LL#trigger(Heap, LL(z, 0));
    assume Heap[null, LL(z, 0)] == CombineFrames(FrameFragment(Heap[z, data]), CombineFrames(FrameFragment(Heap[z, next]), CombineFrames(FrameFragment(Heap[Heap[z, next], data]), Heap[null, LL(Heap[z, next], 1)])));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding LL(z, 0) might fail. There might be insufficient permission to access LL(z, 0) (0172.vpr@26.3--26.23) [201468]"}
        perm <= Mask[null, LL(z, 0)];
    }
    Mask := Mask[null, LL(z, 0):=Mask[null, LL(z, 0)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, LL(z, 0))) {
        havoc newVersion;
        Heap := Heap[null, LL(z, 0):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding LL(z, 0) might fail. Fraction 1 / 2 might be negative. (0172.vpr@26.3--26.23) [201469]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> z != null;
    Mask := Mask[z, data:=Mask[z, data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume z != null;
    Mask := Mask[z, next:=Mask[z, next] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding LL(z, 0) might fail. Fraction 1 / 2 might be negative. (0172.vpr@26.3--26.23) [201471]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[z, next] != null;
    Mask := Mask[Heap[z, next], data:=Mask[Heap[z, next], data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, LL(Heap[z, next], 1):=Mask[null, LL(Heap[z, next], 1)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(LL(z, 0), Heap[null, LL(z, 0)], LL(Heap[z, next], 1), Heap[null, LL(Heap[z, next], 1)]);
    assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL#trigger(UnfoldingHeap, LL(UnfoldingHeap[z, next], 1));
      assume UnfoldingHeap[null, LL(UnfoldingHeap[z, next], 1)] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[z, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[z, next], next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], data]), UnfoldingHeap[null, LL(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)])));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[z, next], 1):=UnfoldingMask[null, LL(UnfoldingHeap[z, next], 1)] - perm];
      perm := 1 / 2;
      assume perm > NoPerm ==> UnfoldingHeap[z, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[z, next], data:=UnfoldingMask[UnfoldingHeap[z, next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[z, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[z, next], next:=UnfoldingMask[UnfoldingHeap[z, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[z, next], next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[z, next], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[z, next], next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingMask[null, LL(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(LL(UnfoldingHeap[z, next], 1), UnfoldingHeap[null, LL(UnfoldingHeap[z, next], 1)], LL(UnfoldingHeap[UnfoldingHeap[z, next], next], 2), UnfoldingHeap[null, LL(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], data] == 2;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[z, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[z, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_81: Ref, f_57: (Field A B) ::
          { newPMask[o_81, f_57] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_81, f_57] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], 3)][o_81, f_57] ==> newPMask[o_81, f_57]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[z, next], data] == 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[z, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[z, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_82: Ref, f_70: (Field A B) ::
          { newPMask[o_82, f_70] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_82, f_70] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], 3)][o_82, f_70] ==> newPMask[o_82, f_70]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[Heap[z, next], data] == 1;
    
    // -- Free assumptions (inhale module)
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], data:=true]];
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], next:=true]];
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[Heap[z, next], next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_80: Ref, f_88: (Field A B) ::
        { newPMask[o_80, f_88] }
        Heap[null, LL#sm(Heap[z, next], 1)][o_80, f_88] || Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_80, f_88] ==> newPMask[o_80, f_88]
      );
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=newPMask];
      assume state(Heap, Mask);
    assume Heap[z, data] == 0;
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL#trigger(UnfoldingHeap, LL(UnfoldingHeap[z, next], 1));
      assume UnfoldingHeap[null, LL(UnfoldingHeap[z, next], 1)] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[z, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[z, next], next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], data]), UnfoldingHeap[null, LL(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)])));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[z, next], 1):=UnfoldingMask[null, LL(UnfoldingHeap[z, next], 1)] - perm];
      perm := 1 / 2;
      assume perm > NoPerm ==> UnfoldingHeap[z, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[z, next], data:=UnfoldingMask[UnfoldingHeap[z, next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[z, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[z, next], next:=UnfoldingMask[UnfoldingHeap[z, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[z, next], next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[z, next], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[z, next], next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingMask[null, LL(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(LL(UnfoldingHeap[z, next], 1), UnfoldingHeap[null, LL(UnfoldingHeap[z, next], 1)], LL(UnfoldingHeap[UnfoldingHeap[z, next], next], 2), UnfoldingHeap[null, LL(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], data] == 2;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[z, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[z, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_68: Ref, f_58: (Field A B) ::
          { newPMask[o_68, f_58] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_68, f_58] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], 3)][o_68, f_58] ==> newPMask[o_68, f_58]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[z, next], data] == 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[z, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[z, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_84: Ref, f_71: (Field A B) ::
          { newPMask[o_84, f_71] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_84, f_71] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], 3)][o_84, f_71] ==> newPMask[o_84, f_71]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    
    // -- Free assumptions (inhale module)
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], data:=true]];
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], next:=true]];
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[Heap[z, next], next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_83: Ref, f_89: (Field A B) ::
        { newPMask[o_83, f_89] }
        Heap[null, LL#sm(Heap[z, next], 1)][o_83, f_89] || Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_83, f_89] ==> newPMask[o_83, f_89]
      );
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=newPMask];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert z.next.data == 1 -- 0172.vpr@27.3--27.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of z.next.data == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@27.10--27.26) [201473]"}
        HasDirectPerm(ExhaleWellDef0Mask, z, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.data (0172.vpr@27.10--27.26) [201474]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[z, next], data);
    assert {:msg "  Assert might fail. Assertion z.next.data == 1 might not hold. (0172.vpr@27.10--27.26) [201475]"}
      Heap[Heap[z, next], data] == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var Unfolding2Heap: HeapType;
  var Unfolding2Mask: MaskType;
  var Unfolding3Heap: HeapType;
  var Unfolding3Mask: MaskType;
  var Unfolding4Heap: HeapType;
  var Unfolding4Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(LL(z, 0), write) -- 0172.vpr@31.3--31.23
    perm := FullPerm;
    Mask := Mask[null, LL(z, 0):=Mask[null, LL(z, 0)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (unfolding acc(LL(z, 0), write) in
  //     (unfolding acc(LL(z.next, 1), write) in
  //       (unfolding acc(LL(z.next.next, 2), write) in
  //         (unfolding acc(LL(z.next.next.next, 3), write) in
  //           z.next.next.next.next.data == 4)))) -- 0172.vpr@33.3--37.41
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(LL(z, 0), write) in (unfolding acc(LL(z.next, 1), write) in (unfolding acc(LL(z.next.next, 2), write) in (unfolding acc(LL(z.next.next.next, 3), write) in z.next.next.next.next.data == 4))))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume LL#trigger(UnfoldingHeap, LL(z, 0));
      assume UnfoldingHeap[null, LL(z, 0)] == CombineFrames(FrameFragment(UnfoldingHeap[z, data]), CombineFrames(FrameFragment(UnfoldingHeap[z, next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[z, next], data]), UnfoldingHeap[null, LL(UnfoldingHeap[z, next], 1)])));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access LL(z, 0) (0172.vpr@33.10--37.41) [201477]"}
          perm <= UnfoldingMask[null, LL(z, 0)];
      }
      UnfoldingMask := UnfoldingMask[null, LL(z, 0):=UnfoldingMask[null, LL(z, 0)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [201478]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> z != null;
      UnfoldingMask := UnfoldingMask[z, data:=UnfoldingMask[z, data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume z != null;
      UnfoldingMask := UnfoldingMask[z, next:=UnfoldingMask[z, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [201479]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> UnfoldingHeap[z, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[z, next], data:=UnfoldingMask[UnfoldingHeap[z, next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[z, next], 1):=UnfoldingMask[null, LL(UnfoldingHeap[z, next], 1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(LL(z, 0), UnfoldingHeap[null, LL(z, 0)], LL(UnfoldingHeap[z, next], 1), UnfoldingHeap[null, LL(UnfoldingHeap[z, next], 1)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Execute unfolding (for extra information)
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[z, next], 1));
        assume Unfolding1Heap[null, LL(Unfolding1Heap[z, next], 1)] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[z, next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[z, next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], data]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)])));
        ExhaleWellDef1Heap := Unfolding1Heap;
        ExhaleWellDef1Mask := Unfolding1Mask;
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[z, next], 1):=Unfolding1Mask[null, LL(Unfolding1Heap[z, next], 1)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[z, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[z, next], data:=Unfolding1Mask[Unfolding1Heap[z, next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[z, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[z, next], next:=Unfolding1Mask[Unfolding1Heap[z, next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[z, next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[z, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[z, next], next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(Unfolding1Heap[z, next], 1), Unfolding1Heap[null, LL(Unfolding1Heap[z, next], 1)], LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)]);
        assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], data] == 2;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_69: Ref, f_90: (Field A B) ::
            { newPMask[o_69, f_90] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_69, f_90] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_69, f_90] ==> newPMask[o_69, f_90]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[z, next], data] == 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_86: Ref, f_91: (Field A B) ::
            { newPMask[o_86, f_91] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_86, f_91] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_86, f_91] ==> newPMask[o_86, f_91]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      assume UnfoldingHeap[UnfoldingHeap[z, next], data] == 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[UnfoldingHeap[z, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_85: Ref, f_60: (Field A B) ::
          { newPMask[o_85, f_60] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][o_85, f_60] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_85, f_60] ==> newPMask[o_85, f_60]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[z, data] == 0;
      
      // -- Execute unfolding (for extra information)
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[z, next], 1));
        assume Unfolding1Heap[null, LL(Unfolding1Heap[z, next], 1)] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[z, next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[z, next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], data]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)])));
        ExhaleWellDef1Heap := Unfolding1Heap;
        ExhaleWellDef1Mask := Unfolding1Mask;
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[z, next], 1):=Unfolding1Mask[null, LL(Unfolding1Heap[z, next], 1)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[z, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[z, next], data:=Unfolding1Mask[Unfolding1Heap[z, next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[z, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[z, next], next:=Unfolding1Mask[Unfolding1Heap[z, next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[z, next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[z, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[z, next], next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(Unfolding1Heap[z, next], 1), Unfolding1Heap[null, LL(Unfolding1Heap[z, next], 1)], LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)]);
        assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], data] == 2;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_88: Ref, f_78: (Field A B) ::
            { newPMask[o_88, f_78] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_88, f_78] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_88, f_78] ==> newPMask[o_88, f_78]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[z, next], data] == 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_89: Ref, f_92: (Field A B) ::
            { newPMask[o_89, f_92] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_89, f_92] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_89, f_92] ==> newPMask[o_89, f_92]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[UnfoldingHeap[z, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_87: Ref, f_61: (Field A B) ::
          { newPMask[o_87, f_61] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][o_87, f_61] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_87, f_61] ==> newPMask[o_87, f_61]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[z, next], 1));
      assume Unfolding1Heap[null, LL(Unfolding1Heap[z, next], 1)] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[z, next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[z, next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], data]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)])));
      ExhaleWellDef1Heap := Unfolding1Heap;
      ExhaleWellDef1Mask := Unfolding1Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access LL(z.next, 1) (0172.vpr@33.10--37.41) [201480]"}
          perm <= Unfolding1Mask[null, LL(Unfolding1Heap[z, next], 1)];
      }
      Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[z, next], 1):=Unfolding1Mask[null, LL(Unfolding1Heap[z, next], 1)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [201481]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Unfolding1Heap[z, next] != null;
      Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[z, next], data:=Unfolding1Mask[Unfolding1Heap[z, next], data] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := FullPerm;
      assume Unfolding1Heap[z, next] != null;
      Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[z, next], next:=Unfolding1Mask[Unfolding1Heap[z, next], next] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [201482]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[z, next], next] != null;
      Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[z, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[z, next], next], data] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := FullPerm;
      Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(LL(Unfolding1Heap[z, next], 1), Unfolding1Heap[null, LL(Unfolding1Heap[z, next], 1)], LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)]);
      assume state(Unfolding1Heap, Unfolding1Mask);
      
      // -- Execute unfolding (for extra information)
        Unfolding2Heap := Unfolding1Heap;
        Unfolding2Mask := Unfolding1Mask;
        assume LL#trigger(Unfolding2Heap, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2));
        assume Unfolding2Heap[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2)] == CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], data]), CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next]), CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data]), Unfolding2Heap[null, LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)])));
        ExhaleWellDef1Heap := Unfolding2Heap;
        ExhaleWellDef1Mask := Unfolding2Mask;
        perm := FullPerm;
        Unfolding2Mask := Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2):=Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding2Heap[Unfolding2Heap[z, next], next] != null;
        Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], data:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], data] + perm];
        assume state(Unfolding2Heap, Unfolding2Mask);
        perm := FullPerm;
        assume Unfolding2Heap[Unfolding2Heap[z, next], next] != null;
        Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], next:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], next] + perm];
        assume state(Unfolding2Heap, Unfolding2Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next] != null;
        Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data] + perm];
        assume state(Unfolding2Heap, Unfolding2Mask);
        perm := FullPerm;
        Unfolding2Mask := Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2), Unfolding2Heap[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2)], LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3), Unfolding2Heap[null, LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)]);
        assume state(Unfolding2Heap, Unfolding2Mask);
        assume Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data] == 3;
        
        // -- Free assumptions (inhale module)
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data:=true]];
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next:=true]];
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_91: Ref, f_79: (Field A B) ::
            { newPMask[o_91, f_79] }
            Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][o_91, f_79] || Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], 4)][o_91, f_79] ==> newPMask[o_91, f_79]
          );
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=newPMask];
          assume state(Unfolding2Heap, Unfolding2Mask);
        assume Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], data] == 2;
        
        // -- Free assumptions (inhale module)
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data:=true]];
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next:=true]];
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_64: Ref, f_94: (Field A B) ::
            { newPMask[o_64, f_94] }
            Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][o_64, f_94] || Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], 4)][o_64, f_94] ==> newPMask[o_64, f_94]
          );
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=newPMask];
          assume state(Unfolding2Heap, Unfolding2Mask);
        assume state(Unfolding2Heap, Unfolding2Mask);
      assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], data] == 2;
      
      // -- Free assumptions (inhale module)
        Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
        Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
        Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_90: Ref, f_93: (Field A B) ::
          { newPMask[o_90, f_93] }
          Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_90, f_93] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_90, f_93] ==> newPMask[o_90, f_93]
        );
        Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
        assume state(Unfolding1Heap, Unfolding1Mask);
      assume Unfolding1Heap[Unfolding1Heap[z, next], data] == 1;
      
      // -- Execute unfolding (for extra information)
        Unfolding2Heap := Unfolding1Heap;
        Unfolding2Mask := Unfolding1Mask;
        assume LL#trigger(Unfolding2Heap, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2));
        assume Unfolding2Heap[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2)] == CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], data]), CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next]), CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data]), Unfolding2Heap[null, LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)])));
        ExhaleWellDef1Heap := Unfolding2Heap;
        ExhaleWellDef1Mask := Unfolding2Mask;
        perm := FullPerm;
        Unfolding2Mask := Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2):=Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding2Heap[Unfolding2Heap[z, next], next] != null;
        Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], data:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], data] + perm];
        assume state(Unfolding2Heap, Unfolding2Mask);
        perm := FullPerm;
        assume Unfolding2Heap[Unfolding2Heap[z, next], next] != null;
        Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], next:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], next] + perm];
        assume state(Unfolding2Heap, Unfolding2Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next] != null;
        Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data] + perm];
        assume state(Unfolding2Heap, Unfolding2Mask);
        perm := FullPerm;
        Unfolding2Mask := Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2), Unfolding2Heap[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2)], LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3), Unfolding2Heap[null, LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)]);
        assume state(Unfolding2Heap, Unfolding2Mask);
        assume Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data] == 3;
        
        // -- Free assumptions (inhale module)
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data:=true]];
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next:=true]];
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_93: Ref, f_95: (Field A B) ::
            { newPMask[o_93, f_95] }
            Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][o_93, f_95] || Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], 4)][o_93, f_95] ==> newPMask[o_93, f_95]
          );
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=newPMask];
          assume state(Unfolding2Heap, Unfolding2Mask);
        assume Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], data] == 2;
        
        // -- Free assumptions (inhale module)
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data:=true]];
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next:=true]];
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_65: Ref, f_96: (Field A B) ::
            { newPMask[o_65, f_96] }
            Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][o_65, f_96] || Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], 4)][o_65, f_96] ==> newPMask[o_65, f_96]
          );
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=newPMask];
          assume state(Unfolding2Heap, Unfolding2Mask);
        assume state(Unfolding2Heap, Unfolding2Mask);
      
      // -- Free assumptions (inhale module)
        Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
        Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
        Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_92: Ref, f_68: (Field A B) ::
          { newPMask[o_92, f_68] }
          Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_92, f_68] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_92, f_68] ==> newPMask[o_92, f_68]
        );
        Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
        assume state(Unfolding1Heap, Unfolding1Mask);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@33.10--37.41) [201483]"}
        HasDirectPerm(Unfolding1Mask, z, next);
      Unfolding2Heap := Unfolding1Heap;
      Unfolding2Mask := Unfolding1Mask;
      assume LL#trigger(Unfolding2Heap, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2));
      assume Unfolding2Heap[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2)] == CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], data]), CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next]), CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data]), Unfolding2Heap[null, LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)])));
      ExhaleWellDef1Heap := Unfolding2Heap;
      ExhaleWellDef1Mask := Unfolding2Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access LL(z.next.next, 2) (0172.vpr@33.10--37.41) [201484]"}
          perm <= Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2)];
      }
      Unfolding2Mask := Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2):=Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [201485]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Unfolding2Heap[Unfolding2Heap[z, next], next] != null;
      Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], data:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], data] + perm];
      assume state(Unfolding2Heap, Unfolding2Mask);
      perm := FullPerm;
      assume Unfolding2Heap[Unfolding2Heap[z, next], next] != null;
      Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], next:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], next] + perm];
      assume state(Unfolding2Heap, Unfolding2Mask);
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [201486]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next] != null;
      Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data] + perm];
      assume state(Unfolding2Heap, Unfolding2Mask);
      perm := FullPerm;
      Unfolding2Mask := Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2), Unfolding2Heap[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2)], LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3), Unfolding2Heap[null, LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)]);
      assume state(Unfolding2Heap, Unfolding2Mask);
      
      // -- Execute unfolding (for extra information)
        Unfolding3Heap := Unfolding2Heap;
        Unfolding3Mask := Unfolding2Mask;
        assume LL#trigger(Unfolding3Heap, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3));
        assume Unfolding3Heap[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3)] == CombineFrames(FrameFragment(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data]), CombineFrames(FrameFragment(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next]), CombineFrames(FrameFragment(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data]), Unfolding3Heap[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)])));
        ExhaleWellDef1Heap := Unfolding3Heap;
        ExhaleWellDef1Mask := Unfolding3Mask;
        perm := FullPerm;
        Unfolding3Mask := Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3):=Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next] != null;
        Unfolding3Mask := Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data:=Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data] + perm];
        assume state(Unfolding3Heap, Unfolding3Mask);
        perm := FullPerm;
        assume Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next] != null;
        Unfolding3Mask := Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next:=Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next] + perm];
        assume state(Unfolding3Heap, Unfolding3Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next] != null;
        Unfolding3Mask := Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data:=Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data] + perm];
        assume state(Unfolding3Heap, Unfolding3Mask);
        perm := FullPerm;
        Unfolding3Mask := Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3), Unfolding3Heap[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3)], LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4), Unfolding3Heap[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)]);
        assume state(Unfolding3Heap, Unfolding3Mask);
        assume Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data] == 4;
        
        // -- Free assumptions (inhale module)
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data:=true]];
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next:=true]];
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_95: Ref, f_98: (Field A B) ::
            { newPMask[o_95, f_98] }
            Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][o_95, f_98] || Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], 5)][o_95, f_98] ==> newPMask[o_95, f_98]
          );
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=newPMask];
          assume state(Unfolding3Heap, Unfolding3Mask);
        assume Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data] == 3;
        
        // -- Free assumptions (inhale module)
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data:=true]];
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next:=true]];
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_96: Ref, f_99: (Field A B) ::
            { newPMask[o_96, f_99] }
            Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][o_96, f_99] || Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], 5)][o_96, f_99] ==> newPMask[o_96, f_99]
          );
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=newPMask];
          assume state(Unfolding3Heap, Unfolding3Mask);
        assume state(Unfolding3Heap, Unfolding3Mask);
      assume Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data] == 3;
      
      // -- Free assumptions (inhale module)
        Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data:=true]];
        Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next:=true]];
        Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_94: Ref, f_97: (Field A B) ::
          { newPMask[o_94, f_97] }
          Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][o_94, f_97] || Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], 4)][o_94, f_97] ==> newPMask[o_94, f_97]
        );
        Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=newPMask];
        assume state(Unfolding2Heap, Unfolding2Mask);
      assume Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], data] == 2;
      
      // -- Execute unfolding (for extra information)
        Unfolding3Heap := Unfolding2Heap;
        Unfolding3Mask := Unfolding2Mask;
        assume LL#trigger(Unfolding3Heap, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3));
        assume Unfolding3Heap[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3)] == CombineFrames(FrameFragment(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data]), CombineFrames(FrameFragment(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next]), CombineFrames(FrameFragment(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data]), Unfolding3Heap[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)])));
        ExhaleWellDef1Heap := Unfolding3Heap;
        ExhaleWellDef1Mask := Unfolding3Mask;
        perm := FullPerm;
        Unfolding3Mask := Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3):=Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next] != null;
        Unfolding3Mask := Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data:=Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data] + perm];
        assume state(Unfolding3Heap, Unfolding3Mask);
        perm := FullPerm;
        assume Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next] != null;
        Unfolding3Mask := Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next:=Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next] + perm];
        assume state(Unfolding3Heap, Unfolding3Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next] != null;
        Unfolding3Mask := Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data:=Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data] + perm];
        assume state(Unfolding3Heap, Unfolding3Mask);
        perm := FullPerm;
        Unfolding3Mask := Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3), Unfolding3Heap[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3)], LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4), Unfolding3Heap[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)]);
        assume state(Unfolding3Heap, Unfolding3Mask);
        assume Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data] == 4;
        
        // -- Free assumptions (inhale module)
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data:=true]];
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next:=true]];
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_98: Ref, f_101: (Field A B) ::
            { newPMask[o_98, f_101] }
            Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][o_98, f_101] || Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], 5)][o_98, f_101] ==> newPMask[o_98, f_101]
          );
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=newPMask];
          assume state(Unfolding3Heap, Unfolding3Mask);
        assume Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data] == 3;
        
        // -- Free assumptions (inhale module)
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data:=true]];
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next:=true]];
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_99: Ref, f_75: (Field A B) ::
            { newPMask[o_99, f_75] }
            Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][o_99, f_75] || Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], 5)][o_99, f_75] ==> newPMask[o_99, f_75]
          );
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=newPMask];
          assume state(Unfolding3Heap, Unfolding3Mask);
        assume state(Unfolding3Heap, Unfolding3Mask);
      
      // -- Free assumptions (inhale module)
        Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data:=true]];
        Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next:=true]];
        Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_97: Ref, f_100: (Field A B) ::
          { newPMask[o_97, f_100] }
          Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][o_97, f_100] || Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], 4)][o_97, f_100] ==> newPMask[o_97, f_100]
        );
        Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=newPMask];
        assume state(Unfolding2Heap, Unfolding2Mask);
      assume state(Unfolding2Heap, Unfolding2Mask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@33.10--37.41) [201487]"}
        HasDirectPerm(Unfolding2Mask, z, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.next (0172.vpr@33.10--37.41) [201488]"}
        HasDirectPerm(Unfolding2Mask, Heap[z, next], next);
      Unfolding3Heap := Unfolding2Heap;
      Unfolding3Mask := Unfolding2Mask;
      assume LL#trigger(Unfolding3Heap, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3));
      assume Unfolding3Heap[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3)] == CombineFrames(FrameFragment(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data]), CombineFrames(FrameFragment(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next]), CombineFrames(FrameFragment(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data]), Unfolding3Heap[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)])));
      ExhaleWellDef1Heap := Unfolding3Heap;
      ExhaleWellDef1Mask := Unfolding3Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access LL(z.next.next.next, 3) (0172.vpr@33.10--37.41) [201489]"}
          perm <= Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3)];
      }
      Unfolding3Mask := Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3):=Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [201490]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next] != null;
      Unfolding3Mask := Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data:=Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data] + perm];
      assume state(Unfolding3Heap, Unfolding3Mask);
      perm := FullPerm;
      assume Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next] != null;
      Unfolding3Mask := Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next:=Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next] + perm];
      assume state(Unfolding3Heap, Unfolding3Mask);
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [201491]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next] != null;
      Unfolding3Mask := Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data:=Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data] + perm];
      assume state(Unfolding3Heap, Unfolding3Mask);
      perm := FullPerm;
      Unfolding3Mask := Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3), Unfolding3Heap[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3)], LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4), Unfolding3Heap[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)]);
      assume state(Unfolding3Heap, Unfolding3Mask);
      
      // -- Execute unfolding (for extra information)
        Unfolding4Heap := Unfolding3Heap;
        Unfolding4Mask := Unfolding3Mask;
        assume LL#trigger(Unfolding4Heap, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], 4));
        assume Unfolding4Heap[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], 4)] == CombineFrames(FrameFragment(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], data]), CombineFrames(FrameFragment(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next]), CombineFrames(FrameFragment(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], data]), Unfolding4Heap[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)])));
        ExhaleWellDef1Heap := Unfolding4Heap;
        ExhaleWellDef1Mask := Unfolding4Mask;
        perm := FullPerm;
        Unfolding4Mask := Unfolding4Mask[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], 4):=Unfolding4Mask[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], 4)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next] != null;
        Unfolding4Mask := Unfolding4Mask[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], data:=Unfolding4Mask[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], data] + perm];
        assume state(Unfolding4Heap, Unfolding4Mask);
        perm := FullPerm;
        assume Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next] != null;
        Unfolding4Mask := Unfolding4Mask[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next:=Unfolding4Mask[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next] + perm];
        assume state(Unfolding4Heap, Unfolding4Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next] != null;
        Unfolding4Mask := Unfolding4Mask[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], data:=Unfolding4Mask[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], data] + perm];
        assume state(Unfolding4Heap, Unfolding4Mask);
        perm := FullPerm;
        Unfolding4Mask := Unfolding4Mask[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Mask[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], 4), Unfolding4Heap[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], 4)], LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5), Unfolding4Heap[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)]);
        assume state(Unfolding4Heap, Unfolding4Mask);
        assume Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], data] == 5;
        
        // -- Free assumptions (inhale module)
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], data:=true]];
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next:=true]];
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_101: Ref, f_103: (Field A B) ::
            { newPMask[o_101, f_103] }
            Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][o_101, f_103] || Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next], 6)][o_101, f_103] ==> newPMask[o_101, f_103]
          );
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=newPMask];
          assume state(Unfolding4Heap, Unfolding4Mask);
        assume Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], data] == 4;
        
        // -- Free assumptions (inhale module)
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], data:=true]];
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next:=true]];
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_102: Ref, f_76: (Field A B) ::
            { newPMask[o_102, f_76] }
            Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][o_102, f_76] || Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next], 6)][o_102, f_76] ==> newPMask[o_102, f_76]
          );
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=newPMask];
          assume state(Unfolding4Heap, Unfolding4Mask);
        assume state(Unfolding4Heap, Unfolding4Mask);
      assume Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data] == 4;
      
      // -- Free assumptions (inhale module)
        Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data:=true]];
        Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next:=true]];
        Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_100: Ref, f_102: (Field A B) ::
          { newPMask[o_100, f_102] }
          Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][o_100, f_102] || Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], 5)][o_100, f_102] ==> newPMask[o_100, f_102]
        );
        Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=newPMask];
        assume state(Unfolding3Heap, Unfolding3Mask);
      assume Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data] == 3;
      
      // -- Execute unfolding (for extra information)
        Unfolding4Heap := Unfolding3Heap;
        Unfolding4Mask := Unfolding3Mask;
        assume LL#trigger(Unfolding4Heap, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], 4));
        assume Unfolding4Heap[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], 4)] == CombineFrames(FrameFragment(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], data]), CombineFrames(FrameFragment(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next]), CombineFrames(FrameFragment(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], data]), Unfolding4Heap[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)])));
        ExhaleWellDef1Heap := Unfolding4Heap;
        ExhaleWellDef1Mask := Unfolding4Mask;
        perm := FullPerm;
        Unfolding4Mask := Unfolding4Mask[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], 4):=Unfolding4Mask[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], 4)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next] != null;
        Unfolding4Mask := Unfolding4Mask[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], data:=Unfolding4Mask[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], data] + perm];
        assume state(Unfolding4Heap, Unfolding4Mask);
        perm := FullPerm;
        assume Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next] != null;
        Unfolding4Mask := Unfolding4Mask[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next:=Unfolding4Mask[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next] + perm];
        assume state(Unfolding4Heap, Unfolding4Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next] != null;
        Unfolding4Mask := Unfolding4Mask[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], data:=Unfolding4Mask[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], data] + perm];
        assume state(Unfolding4Heap, Unfolding4Mask);
        perm := FullPerm;
        Unfolding4Mask := Unfolding4Mask[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Mask[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], 4), Unfolding4Heap[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], 4)], LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5), Unfolding4Heap[null, LL(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)]);
        assume state(Unfolding4Heap, Unfolding4Mask);
        assume Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], data] == 5;
        
        // -- Free assumptions (inhale module)
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], data:=true]];
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next:=true]];
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_104: Ref, f_105: (Field A B) ::
            { newPMask[o_104, f_105] }
            Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][o_104, f_105] || Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next], 6)][o_104, f_105] ==> newPMask[o_104, f_105]
          );
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=newPMask];
          assume state(Unfolding4Heap, Unfolding4Mask);
        assume Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], data] == 4;
        
        // -- Free assumptions (inhale module)
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], data:=true]];
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next:=true]];
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_105: Ref, f_106: (Field A B) ::
            { newPMask[o_105, f_106] }
            Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][o_105, f_106] || Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next], 6)][o_105, f_106] ==> newPMask[o_105, f_106]
          );
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=newPMask];
          assume state(Unfolding4Heap, Unfolding4Mask);
        assume state(Unfolding4Heap, Unfolding4Mask);
      
      // -- Free assumptions (inhale module)
        Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data:=true]];
        Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next:=true]];
        Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_103: Ref, f_104: (Field A B) ::
          { newPMask[o_103, f_104] }
          Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][o_103, f_104] || Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], 5)][o_103, f_104] ==> newPMask[o_103, f_104]
        );
        Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=newPMask];
        assume state(Unfolding3Heap, Unfolding3Mask);
      assume state(Unfolding3Heap, Unfolding3Mask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@33.10--37.41) [201492]"}
        HasDirectPerm(Unfolding3Mask, z, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.next (0172.vpr@33.10--37.41) [201493]"}
        HasDirectPerm(Unfolding3Mask, Heap[z, next], next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.next.next (0172.vpr@33.10--37.41) [201494]"}
        HasDirectPerm(Unfolding3Mask, Heap[Heap[z, next], next], next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@33.10--37.41) [201495]"}
        HasDirectPerm(Unfolding3Mask, z, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.next (0172.vpr@33.10--37.41) [201496]"}
        HasDirectPerm(Unfolding3Mask, Heap[z, next], next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.next.next (0172.vpr@33.10--37.41) [201497]"}
        HasDirectPerm(Unfolding3Mask, Heap[Heap[z, next], next], next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.next.next.next (0172.vpr@33.10--37.41) [201498]"}
        HasDirectPerm(Unfolding3Mask, Heap[Heap[Heap[z, next], next], next], next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.next.next.next.data (0172.vpr@33.10--37.41) [201499]"}
        HasDirectPerm(Unfolding3Mask, Heap[Heap[Heap[Heap[z, next], next], next], next], data);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[Heap[z, next], next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_106: Ref, f_107: (Field A B) ::
          { newPMask[o_106, f_107] }
          Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_106, f_107] || Heap[null, LL#sm(Heap[Heap[Heap[Heap[z, next], next], next], next], 4)][o_106, f_107] ==> newPMask[o_106, f_107]
        );
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=newPMask];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[Heap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_107: Ref, f_108: (Field A B) ::
          { newPMask[o_107, f_108] }
          Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_107, f_108] || Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_107, f_108] ==> newPMask[o_107, f_108]
        );
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[Heap[z, next], next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_108: Ref, f_109: (Field A B) ::
          { newPMask[o_108, f_109] }
          Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_108, f_109] || Heap[null, LL#sm(Heap[Heap[Heap[Heap[z, next], next], next], next], 4)][o_108, f_109] ==> newPMask[o_108, f_109]
        );
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=newPMask];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[Heap[z, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_109: Ref, f_110: (Field A B) ::
          { newPMask[o_109, f_110] }
          Heap[null, LL#sm(Heap[z, next], 1)][o_109, f_110] || Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_109, f_110] ==> newPMask[o_109, f_110]
        );
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[Heap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_110: Ref, f_111: (Field A B) ::
          { newPMask[o_110, f_111] }
          Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_110, f_111] || Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_110, f_111] ==> newPMask[o_110, f_111]
        );
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[Heap[z, next], next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_111: Ref, f_112: (Field A B) ::
          { newPMask[o_111, f_112] }
          Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_111, f_112] || Heap[null, LL#sm(Heap[Heap[Heap[Heap[z, next], next], next], next], 4)][o_111, f_112] ==> newPMask[o_111, f_112]
        );
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=newPMask];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, data:=true]];
        Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, next:=true]];
        Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][Heap[z, next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_112: Ref, f_113: (Field A B) ::
          { newPMask[o_112, f_113] }
          Heap[null, LL#sm(z, 0)][o_112, f_113] || Heap[null, LL#sm(Heap[z, next], 1)][o_112, f_113] ==> newPMask[o_112, f_113]
        );
        Heap := Heap[null, LL#sm(z, 0):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[Heap[z, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_113: Ref, f_114: (Field A B) ::
          { newPMask[o_113, f_114] }
          Heap[null, LL#sm(Heap[z, next], 1)][o_113, f_114] || Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_113, f_114] ==> newPMask[o_113, f_114]
        );
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[Heap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_114: Ref, f_115: (Field A B) ::
          { newPMask[o_114, f_115] }
          Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_114, f_115] || Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_114, f_115] ==> newPMask[o_114, f_115]
        );
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[Heap[z, next], next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_115: Ref, f_116: (Field A B) ::
          { newPMask[o_115, f_116] }
          Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_115, f_116] || Heap[null, LL#sm(Heap[Heap[Heap[Heap[z, next], next], next], next], 4)][o_115, f_116] ==> newPMask[o_115, f_116]
        );
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=newPMask];
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion z.next.next.next.next.data == 4 might not hold. (0172.vpr@33.10--37.41) [201500]"}
      Heap[Heap[Heap[Heap[Heap[z, next], next], next], next], data] == 4;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, data:=true]];
      Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, next:=true]];
      Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][Heap[z, next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_116: Ref, f_117: (Field A B) ::
        { newPMask[o_116, f_117] }
        Heap[null, LL#sm(z, 0)][o_116, f_117] || Heap[null, LL#sm(Heap[z, next], 1)][o_116, f_117] ==> newPMask[o_116, f_117]
      );
      Heap := Heap[null, LL#sm(z, 0):=newPMask];
      assume state(Heap, Mask);
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], data:=true]];
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], next:=true]];
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[Heap[z, next], next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_117: Ref, f_118: (Field A B) ::
        { newPMask[o_117, f_118] }
        Heap[null, LL#sm(Heap[z, next], 1)][o_117, f_118] || Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_117, f_118] ==> newPMask[o_117, f_118]
      );
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=newPMask];
      assume state(Heap, Mask);
      Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], data:=true]];
      Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], next:=true]];
      Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[Heap[z, next], next], next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_118: Ref, f_119: (Field A B) ::
        { newPMask[o_118, f_119] }
        Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_118, f_119] || Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_118, f_119] ==> newPMask[o_118, f_119]
      );
      Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=newPMask];
      assume state(Heap, Mask);
      Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], data:=true]];
      Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], next:=true]];
      Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[Heap[z, next], next], next], next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_119: Ref, f_120: (Field A B) ::
        { newPMask[o_119, f_120] }
        Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_119, f_120] || Heap[null, LL#sm(Heap[Heap[Heap[Heap[z, next], next], next], next], 4)][o_119, f_120] ==> newPMask[o_119, f_120]
      );
      Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=newPMask];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0172.vpr@40.3--40.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0172.vpr@40.10--40.15) [201501]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(LL2(z, 0), write) -- 0172.vpr@53.3--53.24
    perm := FullPerm;
    Mask := Mask[null, LL2(z, 0):=Mask[null, LL2(z, 0)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (unfolding acc(LL2(z, 0), write) in z.next.data == 1) -- 0172.vpr@55.3--55.54
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(LL2(z, 0), write) in z.next.data == 1)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume LL2#trigger(UnfoldingHeap, LL2(z, 0));
      assume UnfoldingHeap[null, LL2(z, 0)] == CombineFrames(FrameFragment(UnfoldingHeap[z, data]), CombineFrames(FrameFragment(UnfoldingHeap[z, next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[z, next], data]), UnfoldingHeap[null, LL2(UnfoldingHeap[z, next], 1)])));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access LL2(z, 0) (0172.vpr@55.10--55.54) [201503]"}
          perm <= UnfoldingMask[null, LL2(z, 0)];
      }
      UnfoldingMask := UnfoldingMask[null, LL2(z, 0):=UnfoldingMask[null, LL2(z, 0)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@55.10--55.54) [201504]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> z != null;
      UnfoldingMask := UnfoldingMask[z, data:=UnfoldingMask[z, data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume z != null;
      UnfoldingMask := UnfoldingMask[z, next:=UnfoldingMask[z, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@55.10--55.54) [201505]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> UnfoldingHeap[z, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[z, next], data:=UnfoldingMask[UnfoldingHeap[z, next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL2(UnfoldingHeap[z, next], 1):=UnfoldingMask[null, LL2(UnfoldingHeap[z, next], 1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(LL2(z, 0), UnfoldingHeap[null, LL2(z, 0)], LL2(UnfoldingHeap[z, next], 1), UnfoldingHeap[null, LL2(UnfoldingHeap[z, next], 1)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[z, data] == 0;
      
      // -- Execute unfolding (for extra information)
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume LL2#trigger(Unfolding1Heap, LL2(Unfolding1Heap[z, next], 1));
        assume Unfolding1Heap[null, LL2(Unfolding1Heap[z, next], 1)] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[z, next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[z, next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], data]), Unfolding1Heap[null, LL2(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)])));
        ExhaleWellDef1Heap := Unfolding1Heap;
        ExhaleWellDef1Mask := Unfolding1Mask;
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL2(Unfolding1Heap[z, next], 1):=Unfolding1Mask[null, LL2(Unfolding1Heap[z, next], 1)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[z, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[z, next], data:=Unfolding1Mask[Unfolding1Heap[z, next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[z, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[z, next], next:=Unfolding1Mask[Unfolding1Heap[z, next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := 1 / 2;
        assume perm > NoPerm ==> Unfolding1Heap[Unfolding1Heap[z, next], next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[z, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[z, next], next], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, LL2(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Mask[null, LL2(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL2(Unfolding1Heap[z, next], 1), Unfolding1Heap[null, LL2(Unfolding1Heap[z, next], 1)], LL2(Unfolding1Heap[Unfolding1Heap[z, next], next], 2), Unfolding1Heap[null, LL2(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)]);
        assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[z, next], data] == 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_121: Ref, f_122: (Field A B) ::
            { newPMask[o_121, f_122] }
            Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_121, f_122] || Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_121, f_122] ==> newPMask[o_121, f_122]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[UnfoldingHeap[z, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_120: Ref, f_121: (Field A B) ::
          { newPMask[o_120, f_121] }
          UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1)][o_120, f_121] || UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_120, f_121] ==> newPMask[o_120, f_121]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@55.10--55.54) [201506]"}
        HasDirectPerm(UnfoldingMask, z, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.data (0172.vpr@55.10--55.54) [201507]"}
        HasDirectPerm(UnfoldingMask, Heap[z, next], data);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL2#sm(z, 0):=Heap[null, LL2#sm(z, 0)][z, data:=true]];
        Heap := Heap[null, LL2#sm(z, 0):=Heap[null, LL2#sm(z, 0)][z, next:=true]];
        Heap := Heap[null, LL2#sm(z, 0):=Heap[null, LL2#sm(z, 0)][Heap[z, next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_122: Ref, f_123: (Field A B) ::
          { newPMask[o_122, f_123] }
          Heap[null, LL2#sm(z, 0)][o_122, f_123] || Heap[null, LL2#sm(Heap[z, next], 1)][o_122, f_123] ==> newPMask[o_122, f_123]
        );
        Heap := Heap[null, LL2#sm(z, 0):=newPMask];
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion z.next.data == 1 might not hold. (0172.vpr@55.10--55.54) [201508]"}
      Heap[Heap[z, next], data] == 1;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, LL2#sm(z, 0):=Heap[null, LL2#sm(z, 0)][z, data:=true]];
      Heap := Heap[null, LL2#sm(z, 0):=Heap[null, LL2#sm(z, 0)][z, next:=true]];
      Heap := Heap[null, LL2#sm(z, 0):=Heap[null, LL2#sm(z, 0)][Heap[z, next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_123: Ref, f_124: (Field A B) ::
        { newPMask[o_123, f_124] }
        Heap[null, LL2#sm(z, 0)][o_123, f_124] || Heap[null, LL2#sm(Heap[z, next], 1)][o_123, f_124] ==> newPMask[o_123, f_124]
      );
      Heap := Heap[null, LL2#sm(z, 0):=newPMask];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(LL2(z, 0), write) -- 0172.vpr@59.3--59.24
    perm := FullPerm;
    Mask := Mask[null, LL2(z, 0):=Mask[null, LL2(z, 0)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(LL2(z, 0), write) -- 0172.vpr@61.3--61.24
    assume LL2#trigger(Heap, LL2(z, 0));
    assume Heap[null, LL2(z, 0)] == CombineFrames(FrameFragment(Heap[z, data]), CombineFrames(FrameFragment(Heap[z, next]), CombineFrames(FrameFragment(Heap[Heap[z, next], data]), Heap[null, LL2(Heap[z, next], 1)])));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding LL2(z, 0) might fail. There might be insufficient permission to access LL2(z, 0) (0172.vpr@61.3--61.24) [201512]"}
        perm <= Mask[null, LL2(z, 0)];
    }
    Mask := Mask[null, LL2(z, 0):=Mask[null, LL2(z, 0)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, LL2(z, 0))) {
        havoc newVersion;
        Heap := Heap[null, LL2(z, 0):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding LL2(z, 0) might fail. Fraction 1 / 2 might be negative. (0172.vpr@61.3--61.24) [201513]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> z != null;
    Mask := Mask[z, data:=Mask[z, data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume z != null;
    Mask := Mask[z, next:=Mask[z, next] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding LL2(z, 0) might fail. Fraction 1 / 2 might be negative. (0172.vpr@61.3--61.24) [201515]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[z, next] != null;
    Mask := Mask[Heap[z, next], data:=Mask[Heap[z, next], data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, LL2(Heap[z, next], 1):=Mask[null, LL2(Heap[z, next], 1)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(LL2(z, 0), Heap[null, LL2(z, 0)], LL2(Heap[z, next], 1), Heap[null, LL2(Heap[z, next], 1)]);
    assume state(Heap, Mask);
    assume Heap[z, data] == 0;
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL2#trigger(UnfoldingHeap, LL2(UnfoldingHeap[z, next], 1));
      assume UnfoldingHeap[null, LL2(UnfoldingHeap[z, next], 1)] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[z, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[z, next], next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], data]), UnfoldingHeap[null, LL2(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)])));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL2(UnfoldingHeap[z, next], 1):=UnfoldingMask[null, LL2(UnfoldingHeap[z, next], 1)] - perm];
      perm := 1 / 2;
      assume perm > NoPerm ==> UnfoldingHeap[z, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[z, next], data:=UnfoldingMask[UnfoldingHeap[z, next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[z, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[z, next], next:=UnfoldingMask[UnfoldingHeap[z, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[z, next], next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[z, next], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[z, next], next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL2(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingMask[null, LL2(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(LL2(UnfoldingHeap[z, next], 1), UnfoldingHeap[null, LL2(UnfoldingHeap[z, next], 1)], LL2(UnfoldingHeap[UnfoldingHeap[z, next], next], 2), UnfoldingHeap[null, LL2(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[z, next], data] == 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[z, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[z, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_125: Ref, f_126: (Field A B) ::
          { newPMask[o_125, f_126] }
          UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_125, f_126] || UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], 3)][o_125, f_126] ==> newPMask[o_125, f_126]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    
    // -- Free assumptions (inhale module)
      Heap := Heap[null, LL2#sm(Heap[z, next], 1):=Heap[null, LL2#sm(Heap[z, next], 1)][Heap[z, next], data:=true]];
      Heap := Heap[null, LL2#sm(Heap[z, next], 1):=Heap[null, LL2#sm(Heap[z, next], 1)][Heap[z, next], next:=true]];
      Heap := Heap[null, LL2#sm(Heap[z, next], 1):=Heap[null, LL2#sm(Heap[z, next], 1)][Heap[Heap[z, next], next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_124: Ref, f_125: (Field A B) ::
        { newPMask[o_124, f_125] }
        Heap[null, LL2#sm(Heap[z, next], 1)][o_124, f_125] || Heap[null, LL2#sm(Heap[Heap[z, next], next], 2)][o_124, f_125] ==> newPMask[o_124, f_125]
      );
      Heap := Heap[null, LL2#sm(Heap[z, next], 1):=newPMask];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert z.next.data == 1 -- 0172.vpr@62.3--62.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of z.next.data == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@62.10--62.26) [201517]"}
        HasDirectPerm(ExhaleWellDef0Mask, z, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.data (0172.vpr@62.10--62.26) [201518]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[z, next], data);
    assert {:msg "  Assert might fail. Assertion z.next.data == 1 might not hold. (0172.vpr@62.10--62.26) [201519]"}
      Heap[Heap[z, next], data] == 1;
    assume state(Heap, Mask);
}