// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:20:20
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
axiom (forall o_91: Ref, f_102: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_91, f_102] }
  Heap[o_91, $allocated] ==> Heap[Heap[o_91, f_102], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_92: Ref, f_103: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_92, f_103] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_92, f_103) ==> Heap[o_92, f_103] == ExhaleHeap[o_92, f_103]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_40: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_40), ExhaleHeap[null, PredicateMaskField(pm_f_40)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_40) && IsPredicateField(pm_f_40) ==> Heap[null, PredicateMaskField(pm_f_40)] == ExhaleHeap[null, PredicateMaskField(pm_f_40)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_40: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_40) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_40) && IsPredicateField(pm_f_40) ==> (forall <A, B> o2_40: Ref, f_103: (Field A B) ::
    { ExhaleHeap[o2_40, f_103] }
    Heap[null, PredicateMaskField(pm_f_40)][o2_40, f_103] ==> Heap[o2_40, f_103] == ExhaleHeap[o2_40, f_103]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_40: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_40), ExhaleHeap[null, WandMaskField(pm_f_40)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_40) && IsWandField(pm_f_40) ==> Heap[null, WandMaskField(pm_f_40)] == ExhaleHeap[null, WandMaskField(pm_f_40)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_40: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_40) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_40) && IsWandField(pm_f_40) ==> (forall <A, B> o2_40: Ref, f_103: (Field A B) ::
    { ExhaleHeap[o2_40, f_103] }
    Heap[null, WandMaskField(pm_f_40)][o2_40, f_103] ==> Heap[o2_40, f_103] == ExhaleHeap[o2_40, f_103]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_92: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_92, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_92, $allocated] ==> ExhaleHeap[o_92, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_91: Ref, f_104: (Field A B), v: B ::
  { Heap[o_91, f_104:=v] }
  succHeap(Heap, Heap[o_91, f_104:=v])
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
axiom (forall x: Ref, i: int, x2: Ref, i2: int ::
  { LL(x, i), LL(x2, i2) }
  LL(x, i) == LL(x2, i2) ==> x == x2 && i == i2
);
axiom (forall x: Ref, i: int, x2: Ref, i2: int ::
  { LL#sm(x, i), LL#sm(x2, i2) }
  LL#sm(x, i) == LL#sm(x2, i2) ==> x == x2 && i == i2
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
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@7.1--15.2) [73175]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, data:=Mask[x, data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.next.data, 1 / 2)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@7.1--15.2) [73176]"}
        HasDirectPerm(Mask, x, next);
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@7.1--15.2) [73177]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x, next] != null;
    Mask := Mask[Heap[x, next], data:=Mask[Heap[x, next], data] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(LL(x.next, i + 1), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@7.1--15.2) [73178]"}
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
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access LL(x.next, i + 1) (0172.vpr@7.1--15.2) [73179]"}
          perm <= UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1)];
      }
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1):=UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1)] - perm];
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@7.1--15.2) [73180]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], data:=UnfoldingMask[UnfoldingHeap[x, next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], next:=UnfoldingMask[UnfoldingHeap[x, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@7.1--15.2) [73181]"}
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
          assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
            { newPMask[o_6, f_12] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_6, f_12] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_6, f_12] ==> newPMask[o_6, f_12]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], data] == i + 1 + 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
            { newPMask[o_40, f_52] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_40, f_52] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_40, f_52] ==> newPMask[o_40, f_52]
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
        assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
          { newPMask[o_5, f_11] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_5, f_11] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_5, f_11] ==> newPMask[o_5, f_11]
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
          assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
            { newPMask[o_46, f_60] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_46, f_60] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_46, f_60] ==> newPMask[o_46, f_60]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], data] == i + 1 + 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o: Ref, f_61: (Field A B) ::
            { newPMask[o, f_61] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o, f_61] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o, f_61] ==> newPMask[o, f_61]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
          { newPMask[o_42, f_55] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_42, f_55] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_42, f_55] ==> newPMask[o_42, f_55]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@7.1--15.2) [73182]"}
        HasDirectPerm(UnfoldingMask, x, next);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@7.1--15.2) [73183]"}
        HasDirectPerm(UnfoldingMask, x, next);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next.data (0172.vpr@7.1--15.2) [73184]"}
        HasDirectPerm(UnfoldingMask, UnfoldingHeap[x, next], data);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(Heap[x, next], i + 1):=Heap[null, LL#sm(Heap[x, next], i + 1)][Heap[x, next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next], i + 1):=Heap[null, LL#sm(Heap[x, next], i + 1)][Heap[x, next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next], i + 1):=Heap[null, LL#sm(Heap[x, next], i + 1)][Heap[Heap[x, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
          { newPMask[o_14, f_3] }
          Heap[null, LL#sm(Heap[x, next], i + 1)][o_14, f_3] || Heap[null, LL#sm(Heap[Heap[x, next], next], i + 1 + 1)][o_14, f_3] ==> newPMask[o_14, f_3]
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
        assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
          { newPMask[o_3, f_24] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_3, f_24] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_3, f_24] ==> newPMask[o_3, f_24]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[x, next], data] == i + 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
          { newPMask[o_1, f_10] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_1, f_10] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_1, f_10] ==> newPMask[o_1, f_10]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[Heap[x, next], data] == i + 1;
    
    // -- Check definedness of x.data == i
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.data (0172.vpr@7.1--15.2) [73185]"}
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
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access LL(x.next, i + 1) (0172.vpr@7.1--15.2) [73186]"}
          perm <= UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1)];
      }
      UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1):=UnfoldingMask[null, LL(UnfoldingHeap[x, next], i + 1)] - perm];
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@7.1--15.2) [73187]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], data:=UnfoldingMask[UnfoldingHeap[x, next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], next:=UnfoldingMask[UnfoldingHeap[x, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@7.1--15.2) [73188]"}
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
          assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
            { newPMask[o_4, f_54] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_4, f_54] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_4, f_54] ==> newPMask[o_4, f_54]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], data] == i + 1 + 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_12: Ref, f_25: (Field A B) ::
            { newPMask[o_12, f_25] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_12, f_25] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_12, f_25] ==> newPMask[o_12, f_25]
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
        assume (forall <A, B> o_15: Ref, f_51: (Field A B) ::
          { newPMask[o_15, f_51] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_15, f_51] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_15, f_51] ==> newPMask[o_15, f_51]
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
          assume (forall <A, B> o_23: Ref, f_13: (Field A B) ::
            { newPMask[o_23, f_13] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_23, f_13] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_23, f_13] ==> newPMask[o_23, f_13]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], data] == i + 1 + 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
            { newPMask[o_13, f_65] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_13, f_65] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_13, f_65] ==> newPMask[o_13, f_65]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_41: Ref, f_21: (Field A B) ::
          { newPMask[o_41, f_21] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_41, f_21] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_41, f_21] ==> newPMask[o_41, f_21]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@7.1--15.2) [73189]"}
        HasDirectPerm(UnfoldingMask, x, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(Heap[x, next], i + 1):=Heap[null, LL#sm(Heap[x, next], i + 1)][Heap[x, next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next], i + 1):=Heap[null, LL#sm(Heap[x, next], i + 1)][Heap[x, next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next], i + 1):=Heap[null, LL#sm(Heap[x, next], i + 1)][Heap[Heap[x, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
          { newPMask[o_51, f_66] }
          Heap[null, LL#sm(Heap[x, next], i + 1)][o_51, f_66] || Heap[null, LL#sm(Heap[Heap[x, next], next], i + 1 + 1)][o_51, f_66] ==> newPMask[o_51, f_66]
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
        assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
          { newPMask[o_52, f_14] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_52, f_14] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_52, f_14] ==> newPMask[o_52, f_14]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[x, next], data] == i + 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_20: Ref, f_50: (Field A B) ::
          { newPMask[o_20, f_50] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_20, f_50] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_20, f_50] ==> newPMask[o_20, f_50]
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
axiom (forall x: Ref, i: int, x2: Ref, i2: int ::
  { LL2(x, i), LL2(x2, i2) }
  LL2(x, i) == LL2(x2, i2) ==> x == x2 && i == i2
);
axiom (forall x: Ref, i: int, x2: Ref, i2: int ::
  { LL2#sm(x, i), LL2#sm(x2, i2) }
  LL2#sm(x, i) == LL2#sm(x2, i2) ==> x == x2 && i == i2
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
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@43.1--50.2) [73190]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, data:=Mask[x, data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.next.data, 1 / 2)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@43.1--50.2) [73191]"}
        HasDirectPerm(Mask, x, next);
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@43.1--50.2) [73192]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x, next] != null;
    Mask := Mask[Heap[x, next], data:=Mask[Heap[x, next], data] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(LL2(x.next, i + 1), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@43.1--50.2) [73193]"}
        HasDirectPerm(Mask, x, next);
    perm := FullPerm;
    Mask := Mask[null, LL2(Heap[x, next], i + 1):=Mask[null, LL2(Heap[x, next], i + 1)] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.data == i
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.data (0172.vpr@43.1--50.2) [73194]"}
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
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access LL2(x.next, i + 1) (0172.vpr@43.1--50.2) [73195]"}
          perm <= UnfoldingMask[null, LL2(UnfoldingHeap[x, next], i + 1)];
      }
      UnfoldingMask := UnfoldingMask[null, LL2(UnfoldingHeap[x, next], i + 1):=UnfoldingMask[null, LL2(UnfoldingHeap[x, next], i + 1)] - perm];
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@43.1--50.2) [73196]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], data:=UnfoldingMask[UnfoldingHeap[x, next], data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], next:=UnfoldingMask[UnfoldingHeap[x, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0172.vpr@43.1--50.2) [73197]"}
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
          assume (forall <A, B> o_10: Ref, f_67: (Field A B) ::
            { newPMask[o_10, f_67] }
            Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1)][o_10, f_67] || Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], next], i + 1 + 1 + 1 + 1)][o_10, f_67] ==> newPMask[o_10, f_67]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[x, next], next], next], i + 1 + 1 + 1):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[x, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_58: Ref, f_30: (Field A B) ::
          { newPMask[o_58, f_30] }
          UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_58, f_30] || UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_58, f_30] ==> newPMask[o_58, f_30]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0172.vpr@43.1--50.2) [73198]"}
        HasDirectPerm(UnfoldingMask, x, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL2#sm(Heap[x, next], i + 1):=Heap[null, LL2#sm(Heap[x, next], i + 1)][Heap[x, next], data:=true]];
        Heap := Heap[null, LL2#sm(Heap[x, next], i + 1):=Heap[null, LL2#sm(Heap[x, next], i + 1)][Heap[x, next], next:=true]];
        Heap := Heap[null, LL2#sm(Heap[x, next], i + 1):=Heap[null, LL2#sm(Heap[x, next], i + 1)][Heap[Heap[x, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_18: Ref, f_18: (Field A B) ::
          { newPMask[o_18, f_18] }
          Heap[null, LL2#sm(Heap[x, next], i + 1)][o_18, f_18] || Heap[null, LL2#sm(Heap[Heap[x, next], next], i + 1 + 1)][o_18, f_18] ==> newPMask[o_18, f_18]
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
        assume (forall <A, B> o_66: Ref, f_28: (Field A B) ::
          { newPMask[o_66, f_28] }
          UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], i + 1 + 1)][o_66, f_28] || UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[x, next], next], next], i + 1 + 1 + 1)][o_66, f_28] ==> newPMask[o_66, f_28]
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
        assert {:msg "  Assert might fail. There might be insufficient permission to access LL(z, 0) (0172.vpr@20.10--20.53) [73200]"}
          perm <= UnfoldingMask[null, LL(z, 0)];
      }
      UnfoldingMask := UnfoldingMask[null, LL(z, 0):=UnfoldingMask[null, LL(z, 0)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@20.10--20.53) [73201]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> z != null;
      UnfoldingMask := UnfoldingMask[z, data:=UnfoldingMask[z, data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume z != null;
      UnfoldingMask := UnfoldingMask[z, next:=UnfoldingMask[z, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@20.10--20.53) [73202]"}
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
          assume (forall <A, B> o_19: Ref, f_57: (Field A B) ::
            { newPMask[o_19, f_57] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_19, f_57] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_19, f_57] ==> newPMask[o_19, f_57]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[z, next], data] == 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_21: Ref, f_58: (Field A B) ::
            { newPMask[o_21, f_58] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_21, f_58] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_21, f_58] ==> newPMask[o_21, f_58]
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
        assume (forall <A, B> o_11: Ref, f_34: (Field A B) ::
          { newPMask[o_11, f_34] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][o_11, f_34] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_11, f_34] ==> newPMask[o_11, f_34]
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
          assume (forall <A, B> o_50: Ref, f_75: (Field A B) ::
            { newPMask[o_50, f_75] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_50, f_75] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_50, f_75] ==> newPMask[o_50, f_75]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[z, next], data] == 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_22: Ref, f_59: (Field A B) ::
            { newPMask[o_22, f_59] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_22, f_59] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_22, f_59] ==> newPMask[o_22, f_59]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[UnfoldingHeap[z, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_43: Ref, f_33: (Field A B) ::
          { newPMask[o_43, f_33] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][o_43, f_33] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_43, f_33] ==> newPMask[o_43, f_33]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@20.10--20.53) [73203]"}
        HasDirectPerm(UnfoldingMask, z, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.data (0172.vpr@20.10--20.53) [73204]"}
        HasDirectPerm(UnfoldingMask, Heap[z, next], data);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, data:=true]];
        Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, next:=true]];
        Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][Heap[z, next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_67: Ref, f_69: (Field A B) ::
          { newPMask[o_67, f_69] }
          Heap[null, LL#sm(z, 0)][o_67, f_69] || Heap[null, LL#sm(Heap[z, next], 1)][o_67, f_69] ==> newPMask[o_67, f_69]
        );
        Heap := Heap[null, LL#sm(z, 0):=newPMask];
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion z.next.data == 1 might not hold. (0172.vpr@20.10--20.53) [73205]"}
      Heap[Heap[z, next], data] == 1;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, data:=true]];
      Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, next:=true]];
      Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][Heap[z, next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_68: Ref, f_76: (Field A B) ::
        { newPMask[o_68, f_76] }
        Heap[null, LL#sm(z, 0)][o_68, f_76] || Heap[null, LL#sm(Heap[z, next], 1)][o_68, f_76] ==> newPMask[o_68, f_76]
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
      assert {:msg "  Unfolding LL(z, 0) might fail. There might be insufficient permission to access LL(z, 0) (0172.vpr@26.3--26.23) [73209]"}
        perm <= Mask[null, LL(z, 0)];
    }
    Mask := Mask[null, LL(z, 0):=Mask[null, LL(z, 0)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, LL(z, 0))) {
        havoc newVersion;
        Heap := Heap[null, LL(z, 0):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding LL(z, 0) might fail. Fraction 1 / 2 might be negative. (0172.vpr@26.3--26.23) [73210]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> z != null;
    Mask := Mask[z, data:=Mask[z, data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume z != null;
    Mask := Mask[z, next:=Mask[z, next] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding LL(z, 0) might fail. Fraction 1 / 2 might be negative. (0172.vpr@26.3--26.23) [73212]"}
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
        assume (forall <A, B> o_70: Ref, f_78: (Field A B) ::
          { newPMask[o_70, f_78] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_70, f_78] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], 3)][o_70, f_78] ==> newPMask[o_70, f_78]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[z, next], data] == 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[z, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[z, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_71: Ref, f_35: (Field A B) ::
          { newPMask[o_71, f_35] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_71, f_35] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], 3)][o_71, f_35] ==> newPMask[o_71, f_35]
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
      assume (forall <A, B> o_69: Ref, f_77: (Field A B) ::
        { newPMask[o_69, f_77] }
        Heap[null, LL#sm(Heap[z, next], 1)][o_69, f_77] || Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_69, f_77] ==> newPMask[o_69, f_77]
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
        assume (forall <A, B> o_30: Ref, f_80: (Field A B) ::
          { newPMask[o_30, f_80] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_30, f_80] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], 3)][o_30, f_80] ==> newPMask[o_30, f_80]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[UnfoldingHeap[z, next], data] == 1;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[z, next], next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[z, next], next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_79: Ref, f_36: (Field A B) ::
          { newPMask[o_79, f_36] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_79, f_36] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], 3)][o_79, f_36] ==> newPMask[o_79, f_36]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    
    // -- Free assumptions (inhale module)
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], data:=true]];
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], next:=true]];
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[Heap[z, next], next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_72: Ref, f_79: (Field A B) ::
        { newPMask[o_72, f_79] }
        Heap[null, LL#sm(Heap[z, next], 1)][o_72, f_79] || Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_72, f_79] ==> newPMask[o_72, f_79]
      );
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=newPMask];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert z.next.data == 1 -- 0172.vpr@27.3--27.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of z.next.data == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@27.10--27.26) [73214]"}
        HasDirectPerm(ExhaleWellDef0Mask, z, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.data (0172.vpr@27.10--27.26) [73215]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[z, next], data);
    assert {:msg "  Assert might fail. Assertion z.next.data == 1 might not hold. (0172.vpr@27.10--27.26) [73216]"}
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
        assert {:msg "  Assert might fail. There might be insufficient permission to access LL(z, 0) (0172.vpr@33.10--37.41) [73218]"}
          perm <= UnfoldingMask[null, LL(z, 0)];
      }
      UnfoldingMask := UnfoldingMask[null, LL(z, 0):=UnfoldingMask[null, LL(z, 0)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [73219]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> z != null;
      UnfoldingMask := UnfoldingMask[z, data:=UnfoldingMask[z, data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume z != null;
      UnfoldingMask := UnfoldingMask[z, next:=UnfoldingMask[z, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [73220]"}
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
          assume (forall <A, B> o_31: Ref, f_89: (Field A B) ::
            { newPMask[o_31, f_89] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_31, f_89] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_31, f_89] ==> newPMask[o_31, f_89]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[z, next], data] == 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_81: Ref, f_90: (Field A B) ::
            { newPMask[o_81, f_90] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_81, f_90] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_81, f_90] ==> newPMask[o_81, f_90]
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
        assume (forall <A, B> o_80: Ref, f_88: (Field A B) ::
          { newPMask[o_80, f_88] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][o_80, f_88] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_80, f_88] ==> newPMask[o_80, f_88]
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
          assume (forall <A, B> o_62: Ref, f_47: (Field A B) ::
            { newPMask[o_62, f_47] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_62, f_47] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_62, f_47] ==> newPMask[o_62, f_47]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume Unfolding1Heap[Unfolding1Heap[z, next], data] == 1;
        
        // -- Free assumptions (inhale module)
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_83: Ref, f_72: (Field A B) ::
            { newPMask[o_83, f_72] }
            Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_83, f_72] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_83, f_72] ==> newPMask[o_83, f_72]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[UnfoldingHeap[z, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_82: Ref, f_91: (Field A B) ::
          { newPMask[o_82, f_91] }
          UnfoldingHeap[null, LL#sm(UnfoldingHeap[z, next], 1)][o_82, f_91] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_82, f_91] ==> newPMask[o_82, f_91]
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
        assert {:msg "  Assert might fail. There might be insufficient permission to access LL(z.next, 1) (0172.vpr@33.10--37.41) [73221]"}
          perm <= Unfolding1Mask[null, LL(Unfolding1Heap[z, next], 1)];
      }
      Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[z, next], 1):=Unfolding1Mask[null, LL(Unfolding1Heap[z, next], 1)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [73222]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Unfolding1Heap[z, next] != null;
      Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[z, next], data:=Unfolding1Mask[Unfolding1Heap[z, next], data] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := FullPerm;
      assume Unfolding1Heap[z, next] != null;
      Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[z, next], next:=Unfolding1Mask[Unfolding1Heap[z, next], next] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [73223]"}
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
          assume (forall <A, B> o_63: Ref, f_48: (Field A B) ::
            { newPMask[o_63, f_48] }
            Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][o_63, f_48] || Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], 4)][o_63, f_48] ==> newPMask[o_63, f_48]
          );
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=newPMask];
          assume state(Unfolding2Heap, Unfolding2Mask);
        assume Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], data] == 2;
        
        // -- Free assumptions (inhale module)
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data:=true]];
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next:=true]];
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_28: Ref, f_93: (Field A B) ::
            { newPMask[o_28, f_93] }
            Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][o_28, f_93] || Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], 4)][o_28, f_93] ==> newPMask[o_28, f_93]
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
        assume (forall <A, B> o_84: Ref, f_92: (Field A B) ::
          { newPMask[o_84, f_92] }
          Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_84, f_92] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_84, f_92] ==> newPMask[o_84, f_92]
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
          assume (forall <A, B> o_86: Ref, f_94: (Field A B) ::
            { newPMask[o_86, f_94] }
            Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][o_86, f_94] || Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], 4)][o_86, f_94] ==> newPMask[o_86, f_94]
          );
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=newPMask];
          assume state(Unfolding2Heap, Unfolding2Mask);
        assume Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], data] == 2;
        
        // -- Free assumptions (inhale module)
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data:=true]];
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next:=true]];
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_29: Ref, f_95: (Field A B) ::
            { newPMask[o_29, f_95] }
            Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][o_29, f_95] || Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], 4)][o_29, f_95] ==> newPMask[o_29, f_95]
          );
          Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=newPMask];
          assume state(Unfolding2Heap, Unfolding2Mask);
        assume state(Unfolding2Heap, Unfolding2Mask);
      
      // -- Free assumptions (inhale module)
        Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], data:=true]];
        Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[z, next], next], next:=true]];
        Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_85: Ref, f_41: (Field A B) ::
          { newPMask[o_85, f_41] }
          Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_85, f_41] || Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_85, f_41] ==> newPMask[o_85, f_41]
        );
        Unfolding1Heap := Unfolding1Heap[null, LL#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
        assume state(Unfolding1Heap, Unfolding1Mask);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@33.10--37.41) [73224]"}
        HasDirectPerm(Unfolding1Mask, z, next);
      Unfolding2Heap := Unfolding1Heap;
      Unfolding2Mask := Unfolding1Mask;
      assume LL#trigger(Unfolding2Heap, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2));
      assume Unfolding2Heap[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2)] == CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], data]), CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next]), CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data]), Unfolding2Heap[null, LL(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)])));
      ExhaleWellDef1Heap := Unfolding2Heap;
      ExhaleWellDef1Mask := Unfolding2Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access LL(z.next.next, 2) (0172.vpr@33.10--37.41) [73225]"}
          perm <= Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2)];
      }
      Unfolding2Mask := Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2):=Unfolding2Mask[null, LL(Unfolding2Heap[Unfolding2Heap[z, next], next], 2)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [73226]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Unfolding2Heap[Unfolding2Heap[z, next], next] != null;
      Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], data:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], data] + perm];
      assume state(Unfolding2Heap, Unfolding2Mask);
      perm := FullPerm;
      assume Unfolding2Heap[Unfolding2Heap[z, next], next] != null;
      Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], next:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[z, next], next], next] + perm];
      assume state(Unfolding2Heap, Unfolding2Mask);
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [73227]"}
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
          assume (forall <A, B> o_88: Ref, f_97: (Field A B) ::
            { newPMask[o_88, f_97] }
            Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][o_88, f_97] || Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], 5)][o_88, f_97] ==> newPMask[o_88, f_97]
          );
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=newPMask];
          assume state(Unfolding3Heap, Unfolding3Mask);
        assume Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data] == 3;
        
        // -- Free assumptions (inhale module)
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data:=true]];
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next:=true]];
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_89: Ref, f_98: (Field A B) ::
            { newPMask[o_89, f_98] }
            Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][o_89, f_98] || Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], 5)][o_89, f_98] ==> newPMask[o_89, f_98]
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
        assume (forall <A, B> o_87: Ref, f_96: (Field A B) ::
          { newPMask[o_87, f_96] }
          Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][o_87, f_96] || Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], 4)][o_87, f_96] ==> newPMask[o_87, f_96]
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
          assume (forall <A, B> o_93: Ref, f_105: (Field A B) ::
            { newPMask[o_93, f_105] }
            Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][o_93, f_105] || Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], 5)][o_93, f_105] ==> newPMask[o_93, f_105]
          );
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=newPMask];
          assume state(Unfolding3Heap, Unfolding3Mask);
        assume Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data] == 3;
        
        // -- Free assumptions (inhale module)
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data:=true]];
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next:=true]];
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_94: Ref, f_44: (Field A B) ::
            { newPMask[o_94, f_44] }
            Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][o_94, f_44] || Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], 5)][o_94, f_44] ==> newPMask[o_94, f_44]
          );
          Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=newPMask];
          assume state(Unfolding3Heap, Unfolding3Mask);
        assume state(Unfolding3Heap, Unfolding3Mask);
      
      // -- Free assumptions (inhale module)
        Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], data:=true]];
        Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next:=true]];
        Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_90: Ref, f_99: (Field A B) ::
          { newPMask[o_90, f_99] }
          Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3)][o_90, f_99] || Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], next], 4)][o_90, f_99] ==> newPMask[o_90, f_99]
        );
        Unfolding2Heap := Unfolding2Heap[null, LL#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[z, next], next], next], 3):=newPMask];
        assume state(Unfolding2Heap, Unfolding2Mask);
      assume state(Unfolding2Heap, Unfolding2Mask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@33.10--37.41) [73228]"}
        HasDirectPerm(Unfolding2Mask, z, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.next (0172.vpr@33.10--37.41) [73229]"}
        HasDirectPerm(Unfolding2Mask, Heap[z, next], next);
      Unfolding3Heap := Unfolding2Heap;
      Unfolding3Mask := Unfolding2Mask;
      assume LL#trigger(Unfolding3Heap, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3));
      assume Unfolding3Heap[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3)] == CombineFrames(FrameFragment(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data]), CombineFrames(FrameFragment(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next]), CombineFrames(FrameFragment(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data]), Unfolding3Heap[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)])));
      ExhaleWellDef1Heap := Unfolding3Heap;
      ExhaleWellDef1Mask := Unfolding3Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access LL(z.next.next.next, 3) (0172.vpr@33.10--37.41) [73230]"}
          perm <= Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3)];
      }
      Unfolding3Mask := Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3):=Unfolding3Mask[null, LL(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], 3)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [73231]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next] != null;
      Unfolding3Mask := Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data:=Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], data] + perm];
      assume state(Unfolding3Heap, Unfolding3Mask);
      perm := FullPerm;
      assume Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next] != null;
      Unfolding3Mask := Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next:=Unfolding3Mask[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next] + perm];
      assume state(Unfolding3Heap, Unfolding3Mask);
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@33.10--37.41) [73232]"}
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
          assume (forall <A, B> o_95: Ref, f_106: (Field A B) ::
            { newPMask[o_95, f_106] }
            Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][o_95, f_106] || Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next], 6)][o_95, f_106] ==> newPMask[o_95, f_106]
          );
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=newPMask];
          assume state(Unfolding4Heap, Unfolding4Mask);
        assume Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], data] == 4;
        
        // -- Free assumptions (inhale module)
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], data:=true]];
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next:=true]];
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_96: Ref, f_45: (Field A B) ::
            { newPMask[o_96, f_45] }
            Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][o_96, f_45] || Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next], 6)][o_96, f_45] ==> newPMask[o_96, f_45]
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
        assume (forall <A, B> o_97: Ref, f_107: (Field A B) ::
          { newPMask[o_97, f_107] }
          Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][o_97, f_107] || Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], 5)][o_97, f_107] ==> newPMask[o_97, f_107]
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
          assume (forall <A, B> o_98: Ref, f_87: (Field A B) ::
            { newPMask[o_98, f_87] }
            Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][o_98, f_87] || Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next], 6)][o_98, f_87] ==> newPMask[o_98, f_87]
          );
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=newPMask];
          assume state(Unfolding4Heap, Unfolding4Mask);
        assume Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], data] == 4;
        
        // -- Free assumptions (inhale module)
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], data:=true]];
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next:=true]];
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next], data:=true]];
          havoc newPMask;
          assume (forall <A, B> o_99: Ref, f_108: (Field A B) ::
            { newPMask[o_99, f_108] }
            Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5)][o_99, f_108] || Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], next], 6)][o_99, f_108] ==> newPMask[o_99, f_108]
          );
          Unfolding4Heap := Unfolding4Heap[null, LL#sm(Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[Unfolding4Heap[z, next], next], next], next], next], 5):=newPMask];
          assume state(Unfolding4Heap, Unfolding4Mask);
        assume state(Unfolding4Heap, Unfolding4Mask);
      
      // -- Free assumptions (inhale module)
        Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], data:=true]];
        Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next:=true]];
        Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_77: Ref, f_109: (Field A B) ::
          { newPMask[o_77, f_109] }
          Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4)][o_77, f_109] || Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], next], 5)][o_77, f_109] ==> newPMask[o_77, f_109]
        );
        Unfolding3Heap := Unfolding3Heap[null, LL#sm(Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[Unfolding3Heap[z, next], next], next], next], 4):=newPMask];
        assume state(Unfolding3Heap, Unfolding3Mask);
      assume state(Unfolding3Heap, Unfolding3Mask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@33.10--37.41) [73233]"}
        HasDirectPerm(Unfolding3Mask, z, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.next (0172.vpr@33.10--37.41) [73234]"}
        HasDirectPerm(Unfolding3Mask, Heap[z, next], next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.next.next (0172.vpr@33.10--37.41) [73235]"}
        HasDirectPerm(Unfolding3Mask, Heap[Heap[z, next], next], next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@33.10--37.41) [73236]"}
        HasDirectPerm(Unfolding3Mask, z, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.next (0172.vpr@33.10--37.41) [73237]"}
        HasDirectPerm(Unfolding3Mask, Heap[z, next], next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.next.next (0172.vpr@33.10--37.41) [73238]"}
        HasDirectPerm(Unfolding3Mask, Heap[Heap[z, next], next], next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.next.next.next (0172.vpr@33.10--37.41) [73239]"}
        HasDirectPerm(Unfolding3Mask, Heap[Heap[Heap[z, next], next], next], next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.next.next.next.data (0172.vpr@33.10--37.41) [73240]"}
        HasDirectPerm(Unfolding3Mask, Heap[Heap[Heap[Heap[z, next], next], next], next], data);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[Heap[z, next], next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_78: Ref, f_110: (Field A B) ::
          { newPMask[o_78, f_110] }
          Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_78, f_110] || Heap[null, LL#sm(Heap[Heap[Heap[Heap[z, next], next], next], next], 4)][o_78, f_110] ==> newPMask[o_78, f_110]
        );
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=newPMask];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[Heap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_100: Ref, f_111: (Field A B) ::
          { newPMask[o_100, f_111] }
          Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_100, f_111] || Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_100, f_111] ==> newPMask[o_100, f_111]
        );
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[Heap[z, next], next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_101: Ref, f_112: (Field A B) ::
          { newPMask[o_101, f_112] }
          Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_101, f_112] || Heap[null, LL#sm(Heap[Heap[Heap[Heap[z, next], next], next], next], 4)][o_101, f_112] ==> newPMask[o_101, f_112]
        );
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=newPMask];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[Heap[z, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_102: Ref, f_113: (Field A B) ::
          { newPMask[o_102, f_113] }
          Heap[null, LL#sm(Heap[z, next], 1)][o_102, f_113] || Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_102, f_113] ==> newPMask[o_102, f_113]
        );
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[Heap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_103: Ref, f_114: (Field A B) ::
          { newPMask[o_103, f_114] }
          Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_103, f_114] || Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_103, f_114] ==> newPMask[o_103, f_114]
        );
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[Heap[z, next], next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_104: Ref, f_115: (Field A B) ::
          { newPMask[o_104, f_115] }
          Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_104, f_115] || Heap[null, LL#sm(Heap[Heap[Heap[Heap[z, next], next], next], next], 4)][o_104, f_115] ==> newPMask[o_104, f_115]
        );
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=newPMask];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, data:=true]];
        Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, next:=true]];
        Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][Heap[z, next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_105: Ref, f_116: (Field A B) ::
          { newPMask[o_105, f_116] }
          Heap[null, LL#sm(z, 0)][o_105, f_116] || Heap[null, LL#sm(Heap[z, next], 1)][o_105, f_116] ==> newPMask[o_105, f_116]
        );
        Heap := Heap[null, LL#sm(z, 0):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[Heap[z, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_106: Ref, f_117: (Field A B) ::
          { newPMask[o_106, f_117] }
          Heap[null, LL#sm(Heap[z, next], 1)][o_106, f_117] || Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_106, f_117] ==> newPMask[o_106, f_117]
        );
        Heap := Heap[null, LL#sm(Heap[z, next], 1):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[Heap[z, next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_107: Ref, f_118: (Field A B) ::
          { newPMask[o_107, f_118] }
          Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_107, f_118] || Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_107, f_118] ==> newPMask[o_107, f_118]
        );
        Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], data:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], next:=true]];
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[Heap[z, next], next], next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_108: Ref, f_119: (Field A B) ::
          { newPMask[o_108, f_119] }
          Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_108, f_119] || Heap[null, LL#sm(Heap[Heap[Heap[Heap[z, next], next], next], next], 4)][o_108, f_119] ==> newPMask[o_108, f_119]
        );
        Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=newPMask];
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion z.next.next.next.next.data == 4 might not hold. (0172.vpr@33.10--37.41) [73241]"}
      Heap[Heap[Heap[Heap[Heap[z, next], next], next], next], data] == 4;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, data:=true]];
      Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][z, next:=true]];
      Heap := Heap[null, LL#sm(z, 0):=Heap[null, LL#sm(z, 0)][Heap[z, next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_109: Ref, f_120: (Field A B) ::
        { newPMask[o_109, f_120] }
        Heap[null, LL#sm(z, 0)][o_109, f_120] || Heap[null, LL#sm(Heap[z, next], 1)][o_109, f_120] ==> newPMask[o_109, f_120]
      );
      Heap := Heap[null, LL#sm(z, 0):=newPMask];
      assume state(Heap, Mask);
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], data:=true]];
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[z, next], next:=true]];
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=Heap[null, LL#sm(Heap[z, next], 1)][Heap[Heap[z, next], next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_110: Ref, f_121: (Field A B) ::
        { newPMask[o_110, f_121] }
        Heap[null, LL#sm(Heap[z, next], 1)][o_110, f_121] || Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_110, f_121] ==> newPMask[o_110, f_121]
      );
      Heap := Heap[null, LL#sm(Heap[z, next], 1):=newPMask];
      assume state(Heap, Mask);
      Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], data:=true]];
      Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[z, next], next], next:=true]];
      Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][Heap[Heap[Heap[z, next], next], next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_111: Ref, f_122: (Field A B) ::
        { newPMask[o_111, f_122] }
        Heap[null, LL#sm(Heap[Heap[z, next], next], 2)][o_111, f_122] || Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_111, f_122] ==> newPMask[o_111, f_122]
      );
      Heap := Heap[null, LL#sm(Heap[Heap[z, next], next], 2):=newPMask];
      assume state(Heap, Mask);
      Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], data:=true]];
      Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[z, next], next], next], next:=true]];
      Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][Heap[Heap[Heap[Heap[z, next], next], next], next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_112: Ref, f_123: (Field A B) ::
        { newPMask[o_112, f_123] }
        Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3)][o_112, f_123] || Heap[null, LL#sm(Heap[Heap[Heap[Heap[z, next], next], next], next], 4)][o_112, f_123] ==> newPMask[o_112, f_123]
      );
      Heap := Heap[null, LL#sm(Heap[Heap[Heap[z, next], next], next], 3):=newPMask];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0172.vpr@40.3--40.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0172.vpr@40.10--40.15) [73242]"}
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
        assert {:msg "  Assert might fail. There might be insufficient permission to access LL2(z, 0) (0172.vpr@55.10--55.54) [73244]"}
          perm <= UnfoldingMask[null, LL2(z, 0)];
      }
      UnfoldingMask := UnfoldingMask[null, LL2(z, 0):=UnfoldingMask[null, LL2(z, 0)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@55.10--55.54) [73245]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> z != null;
      UnfoldingMask := UnfoldingMask[z, data:=UnfoldingMask[z, data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume z != null;
      UnfoldingMask := UnfoldingMask[z, next:=UnfoldingMask[z, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0172.vpr@55.10--55.54) [73246]"}
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
          assume (forall <A, B> o_113: Ref, f_124: (Field A B) ::
            { newPMask[o_113, f_124] }
            Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2)][o_113, f_124] || Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[z, next], next], next], 3)][o_113, f_124] ==> newPMask[o_113, f_124]
          );
          Unfolding1Heap := Unfolding1Heap[null, LL2#sm(Unfolding1Heap[Unfolding1Heap[z, next], next], 2):=newPMask];
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[z, next], next:=true]];
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1):=UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1)][UnfoldingHeap[UnfoldingHeap[z, next], next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_114: Ref, f_125: (Field A B) ::
          { newPMask[o_114, f_125] }
          UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1)][o_114, f_125] || UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_114, f_125] ==> newPMask[o_114, f_125]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[z, next], 1):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@55.10--55.54) [73247]"}
        HasDirectPerm(UnfoldingMask, z, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.data (0172.vpr@55.10--55.54) [73248]"}
        HasDirectPerm(UnfoldingMask, Heap[z, next], data);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL2#sm(z, 0):=Heap[null, LL2#sm(z, 0)][z, data:=true]];
        Heap := Heap[null, LL2#sm(z, 0):=Heap[null, LL2#sm(z, 0)][z, next:=true]];
        Heap := Heap[null, LL2#sm(z, 0):=Heap[null, LL2#sm(z, 0)][Heap[z, next], data:=true]];
        havoc newPMask;
        assume (forall <A, B> o_115: Ref, f_126: (Field A B) ::
          { newPMask[o_115, f_126] }
          Heap[null, LL2#sm(z, 0)][o_115, f_126] || Heap[null, LL2#sm(Heap[z, next], 1)][o_115, f_126] ==> newPMask[o_115, f_126]
        );
        Heap := Heap[null, LL2#sm(z, 0):=newPMask];
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion z.next.data == 1 might not hold. (0172.vpr@55.10--55.54) [73249]"}
      Heap[Heap[z, next], data] == 1;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, LL2#sm(z, 0):=Heap[null, LL2#sm(z, 0)][z, data:=true]];
      Heap := Heap[null, LL2#sm(z, 0):=Heap[null, LL2#sm(z, 0)][z, next:=true]];
      Heap := Heap[null, LL2#sm(z, 0):=Heap[null, LL2#sm(z, 0)][Heap[z, next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_116: Ref, f_127: (Field A B) ::
        { newPMask[o_116, f_127] }
        Heap[null, LL2#sm(z, 0)][o_116, f_127] || Heap[null, LL2#sm(Heap[z, next], 1)][o_116, f_127] ==> newPMask[o_116, f_127]
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
      assert {:msg "  Unfolding LL2(z, 0) might fail. There might be insufficient permission to access LL2(z, 0) (0172.vpr@61.3--61.24) [73253]"}
        perm <= Mask[null, LL2(z, 0)];
    }
    Mask := Mask[null, LL2(z, 0):=Mask[null, LL2(z, 0)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, LL2(z, 0))) {
        havoc newVersion;
        Heap := Heap[null, LL2(z, 0):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding LL2(z, 0) might fail. Fraction 1 / 2 might be negative. (0172.vpr@61.3--61.24) [73254]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> z != null;
    Mask := Mask[z, data:=Mask[z, data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume z != null;
    Mask := Mask[z, next:=Mask[z, next] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding LL2(z, 0) might fail. Fraction 1 / 2 might be negative. (0172.vpr@61.3--61.24) [73256]"}
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
        assume (forall <A, B> o_117: Ref, f_128: (Field A B) ::
          { newPMask[o_117, f_128] }
          UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2)][o_117, f_128] || UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[z, next], next], next], 3)][o_117, f_128] ==> newPMask[o_117, f_128]
        );
        UnfoldingHeap := UnfoldingHeap[null, LL2#sm(UnfoldingHeap[UnfoldingHeap[z, next], next], 2):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    
    // -- Free assumptions (inhale module)
      Heap := Heap[null, LL2#sm(Heap[z, next], 1):=Heap[null, LL2#sm(Heap[z, next], 1)][Heap[z, next], data:=true]];
      Heap := Heap[null, LL2#sm(Heap[z, next], 1):=Heap[null, LL2#sm(Heap[z, next], 1)][Heap[z, next], next:=true]];
      Heap := Heap[null, LL2#sm(Heap[z, next], 1):=Heap[null, LL2#sm(Heap[z, next], 1)][Heap[Heap[z, next], next], data:=true]];
      havoc newPMask;
      assume (forall <A, B> o_118: Ref, f_129: (Field A B) ::
        { newPMask[o_118, f_129] }
        Heap[null, LL2#sm(Heap[z, next], 1)][o_118, f_129] || Heap[null, LL2#sm(Heap[Heap[z, next], next], 2)][o_118, f_129] ==> newPMask[o_118, f_129]
      );
      Heap := Heap[null, LL2#sm(Heap[z, next], 1):=newPMask];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert z.next.data == 1 -- 0172.vpr@62.3--62.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of z.next.data == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next (0172.vpr@62.10--62.26) [73258]"}
        HasDirectPerm(ExhaleWellDef0Mask, z, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.next.data (0172.vpr@62.10--62.26) [73259]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[z, next], data);
    assert {:msg "  Assert might fail. Assertion z.next.data == 1 might not hold. (0172.vpr@62.10--62.26) [73260]"}
      Heap[Heap[z, next], data] == 1;
    assume state(Heap, Mask);
}