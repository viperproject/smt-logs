// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:15:05
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0379a.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0379a-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_43: Ref, f_56: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_43, f_56] }
  Heap[o_43, $allocated] ==> Heap[Heap[o_43, f_56], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_67: Ref, f_131: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_67, f_131] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_67, f_131) ==> Heap[o_67, f_131] == ExhaleHeap[o_67, f_131]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_42: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_42), ExhaleHeap[null, PredicateMaskField(pm_f_42)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_42) && IsPredicateField(pm_f_42) ==> Heap[null, PredicateMaskField(pm_f_42)] == ExhaleHeap[null, PredicateMaskField(pm_f_42)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_42: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_42) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_42) && IsPredicateField(pm_f_42) ==> (forall <A, B> o2_42: Ref, f_131: (Field A B) ::
    { ExhaleHeap[o2_42, f_131] }
    Heap[null, PredicateMaskField(pm_f_42)][o2_42, f_131] ==> Heap[o2_42, f_131] == ExhaleHeap[o2_42, f_131]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_42: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_42), ExhaleHeap[null, WandMaskField(pm_f_42)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_42) && IsWandField(pm_f_42) ==> Heap[null, WandMaskField(pm_f_42)] == ExhaleHeap[null, WandMaskField(pm_f_42)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_42: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_42) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_42) && IsWandField(pm_f_42) ==> (forall <A, B> o2_42: Ref, f_131: (Field A B) ::
    { ExhaleHeap[o2_42, f_131] }
    Heap[null, WandMaskField(pm_f_42)][o2_42, f_131] ==> Heap[o2_42, f_131] == ExhaleHeap[o2_42, f_131]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_67: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_67, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_67, $allocated] ==> ExhaleHeap[o_67, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_43: Ref, f_75: (Field A B), v: B ::
  { Heap[o_43, f_75:=v] }
  succHeap(Heap, Heap[o_43, f_75:=v])
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
// - height 1: read$
// - height 0: f
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
// Translation of all fields
// ==================================================

const unique f$m2: Field NormalField Ref;
axiom !IsPredicateField(f$m2);
axiom !IsWandField(f$m2);
const unique f$m5: Field NormalField Ref;
axiom !IsPredicateField(f$m5);
axiom !IsWandField(f$m5);
const unique val_int: Field NormalField int;
axiom !IsPredicateField(val_int);
axiom !IsWandField(val_int);
const unique val_ref_1: Field NormalField Ref;
axiom !IsPredicateField(val_ref_1);
axiom !IsWandField(val_ref_1);

// ==================================================
// Translation of function f
// ==================================================

// Uninterpreted function definitions
function  f_6(Heap: HeapType, _pure_1: Ref): bool;
function  f'(Heap: HeapType, _pure_1: Ref): bool;
axiom (forall Heap: HeapType, _pure_1: Ref ::
  { f_6(Heap, _pure_1) }
  f_6(Heap, _pure_1) == f'(Heap, _pure_1) && dummyFunction(f#triggerStateless(_pure_1))
);
axiom (forall Heap: HeapType, _pure_1: Ref ::
  { f'(Heap, _pure_1) }
  dummyFunction(f#triggerStateless(_pure_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, _pure_1: Ref ::
  { state(Heap, Mask), f_6(Heap, _pure_1) } { state(Heap, Mask), f#triggerStateless(_pure_1), P#trigger(Heap, P(_pure_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> f_6(Heap, _pure_1) == ((if Heap[Heap[_pure_1, f$m2], val_int] >= 0 || Heap[Heap[_pure_1, f$m2], val_int] mod 2 == 0 then Heap[Heap[_pure_1, f$m2], val_int] mod 2 else 0) == 0)
);

// Framing axioms
function  f#frame(frame: FrameType, _pure_1: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, _pure_1: Ref ::
  { state(Heap, Mask), f'(Heap, _pure_1) }
  state(Heap, Mask) ==> f'(Heap, _pure_1) == f#frame(ConditionalFrame(read$(Heap), Heap[null, P(_pure_1)]), _pure_1)
);

// Trigger function (controlling recursive postconditions)
function  f#trigger(frame: FrameType, _pure_1: Ref): bool;

// State-independent trigger function
function  f#triggerStateless(_pure_1: Ref): bool;

// Check contract well-formedness and postcondition
procedure f#definedness(_pure_1: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[_pure_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(P(_pure_1), read$())
      if (*) {
        // Stop execution
        assume false;
      }
    perm := read$(Heap);
    assert {:msg "  Contract might not be well-formed. Fraction read$() might be negative. (0379a.vpr@10.12--10.36) [78230]"}
      perm >= NoPerm;
    Mask := Mask[null, P(_pure_1):=Mask[null, P(_pure_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of ((unfolding acc(P(_pure_1), read$()) in (unfolding acc(u32(_pure_1.f$m2), read$()) in _pure_1.f$m2.val_int)) >= 0 || (unfolding acc(P(_pure_1), read$()) in (unfolding acc(u32(_pure_1.f$m2), read$()) in _pure_1.f$m2.val_int)) % 2 == 0 ? (unfolding acc(P(_pure_1), read$()) in (unfolding acc(u32(_pure_1.f$m2), read$()) in _pure_1.f$m2.val_int)) % 2 : 0) == 0
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assert {:msg "  Function might not be well-formed. Fraction read$() might not be positive. (0379a.vpr@9.1--17.2) [78231]"}
        read$(UnfoldingHeap) > NoPerm;
      assume P#trigger(UnfoldingHeap, P(_pure_1));
      assume UnfoldingHeap[null, P(_pure_1)] == CombineFrames(FrameFragment(UnfoldingHeap[_pure_1, f$m2]), CombineFrames(UnfoldingHeap[null, u32(UnfoldingHeap[_pure_1, f$m2])], CombineFrames(FrameFragment(UnfoldingHeap[_pure_1, f$m5]), UnfoldingHeap[null, u32(UnfoldingHeap[_pure_1, f$m5])])));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := read$(UnfoldingHeap);
      assert {:msg "  Function might not be well-formed. Fraction read$() might be negative. (0379a.vpr@9.1--17.2) [78232]"}
        perm >= NoPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(_pure_1) (0379a.vpr@9.1--17.2) [78233]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(_pure_1)];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm * read$(UnfoldingHeap);
      assert {:msg "  Function might not be well-formed. Fraction write * read$() might be negative. (0379a.vpr@9.1--17.2) [78234]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> _pure_1 != null;
      UnfoldingMask := UnfoldingMask[_pure_1, f$m2:=UnfoldingMask[_pure_1, f$m2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm * read$(UnfoldingHeap);
      assert {:msg "  Function might not be well-formed. Fraction write * read$() might be negative. (0379a.vpr@9.1--17.2) [78235]"}
        perm >= NoPerm;
      UnfoldingMask := UnfoldingMask[null, u32(UnfoldingHeap[_pure_1, f$m2]):=UnfoldingMask[null, u32(UnfoldingHeap[_pure_1, f$m2])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(P(_pure_1), UnfoldingHeap[null, P(_pure_1)], u32(UnfoldingHeap[_pure_1, f$m2]), UnfoldingHeap[null, u32(UnfoldingHeap[_pure_1, f$m2])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm * read$(UnfoldingHeap);
      assert {:msg "  Function might not be well-formed. Fraction write * read$() might be negative. (0379a.vpr@9.1--17.2) [78236]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> _pure_1 != null;
      UnfoldingMask := UnfoldingMask[_pure_1, f$m5:=UnfoldingMask[_pure_1, f$m5] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm * read$(UnfoldingHeap);
      assert {:msg "  Function might not be well-formed. Fraction write * read$() might be negative. (0379a.vpr@9.1--17.2) [78237]"}
        perm >= NoPerm;
      UnfoldingMask := UnfoldingMask[null, u32(UnfoldingHeap[_pure_1, f$m5]):=UnfoldingMask[null, u32(UnfoldingHeap[_pure_1, f$m5])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(P(_pure_1), UnfoldingHeap[null, P(_pure_1)], u32(UnfoldingHeap[_pure_1, f$m5]), UnfoldingHeap[null, u32(UnfoldingHeap[_pure_1, f$m5])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Stop execution
        assume false;
      }
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assert {:msg "  Function might not be well-formed. Fraction read$() might not be positive. (0379a.vpr@9.1--17.2) [78238]"}
        read$(Unfolding1Heap) > NoPerm;
      assume u32#trigger(Unfolding1Heap, u32(Unfolding1Heap[_pure_1, f$m2]));
      assume Unfolding1Heap[null, u32(Unfolding1Heap[_pure_1, f$m2])] == FrameFragment(Unfolding1Heap[Unfolding1Heap[_pure_1, f$m2], val_int]);
      ExhaleWellDef0Mask := Unfolding1Mask;
      ExhaleWellDef0Heap := Unfolding1Heap;
      perm := read$(Unfolding1Heap);
      assert {:msg "  Function might not be well-formed. Fraction read$() might be negative. (0379a.vpr@9.1--17.2) [78239]"}
        perm >= NoPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access u32(_pure_1.f$m2) (0379a.vpr@9.1--17.2) [78240]"}
        NoPerm < perm ==> NoPerm < Unfolding1Mask[null, u32(Unfolding1Heap[_pure_1, f$m2])];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := FullPerm * read$(Unfolding1Heap);
      assert {:msg "  Function might not be well-formed. Fraction write * read$() might be negative. (0379a.vpr@9.1--17.2) [78241]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Unfolding1Heap[_pure_1, f$m2] != null;
      Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[_pure_1, f$m2], val_int:=Unfolding1Mask[Unfolding1Heap[_pure_1, f$m2], val_int] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      assume 0 <= Unfolding1Heap[Unfolding1Heap[_pure_1, f$m2], val_int];
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access _pure_1.f$m2 (0379a.vpr@9.1--17.2) [78242]"}
        HasDirectPerm(Unfolding1Mask, _pure_1, f$m2);
      if (*) {
        // Stop execution
        assume false;
      }
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access _pure_1.f$m2 (0379a.vpr@9.1--17.2) [78243]"}
        HasDirectPerm(Unfolding1Mask, _pure_1, f$m2);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access _pure_1.f$m2.val_int (0379a.vpr@9.1--17.2) [78244]"}
        HasDirectPerm(Unfolding1Mask, Unfolding1Heap[_pure_1, f$m2], val_int);
      
      // -- Free assumptions (exp module)
        UnfoldingHeap := UnfoldingHeap[null, u32#sm(UnfoldingHeap[_pure_1, f$m2]):=UnfoldingHeap[null, u32#sm(UnfoldingHeap[_pure_1, f$m2])][UnfoldingHeap[_pure_1, f$m2], val_int:=true]];
        assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m2:=true]];
        havoc newPMask;
        assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
          { newPMask[o_5, f_11] }
          Heap[null, P#sm(_pure_1)][o_5, f_11] || Heap[null, u32#sm(Heap[_pure_1, f$m2])][o_5, f_11] ==> newPMask[o_5, f_11]
        );
        Heap := Heap[null, P#sm(_pure_1):=newPMask];
        Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m5:=true]];
        havoc newPMask;
        assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
          { newPMask[o_6, f_12] }
          Heap[null, P#sm(_pure_1)][o_6, f_12] || Heap[null, u32#sm(Heap[_pure_1, f$m5])][o_6, f_12] ==> newPMask[o_6, f_12]
        );
        Heap := Heap[null, P#sm(_pure_1):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, u32#sm(Heap[_pure_1, f$m2]):=Heap[null, u32#sm(Heap[_pure_1, f$m2])][Heap[_pure_1, f$m2], val_int:=true]];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m2:=true]];
        havoc newPMask;
        assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
          { newPMask[o_40, f_52] }
          Heap[null, P#sm(_pure_1)][o_40, f_52] || Heap[null, u32#sm(Heap[_pure_1, f$m2])][o_40, f_52] ==> newPMask[o_40, f_52]
        );
        Heap := Heap[null, P#sm(_pure_1):=newPMask];
        Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m5:=true]];
        havoc newPMask;
        assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
          { newPMask[o_42, f_55] }
          Heap[null, P#sm(_pure_1)][o_42, f_55] || Heap[null, u32#sm(Heap[_pure_1, f$m5])][o_42, f_55] ==> newPMask[o_42, f_55]
        );
        Heap := Heap[null, P#sm(_pure_1):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, u32#sm(Heap[_pure_1, f$m2]):=Heap[null, u32#sm(Heap[_pure_1, f$m2])][Heap[_pure_1, f$m2], val_int:=true]];
        assume state(Heap, Mask);
      if (!(Heap[Heap[_pure_1, f$m2], val_int] >= 0)) {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assert {:msg "  Function might not be well-formed. Fraction read$() might not be positive. (0379a.vpr@9.1--17.2) [78245]"}
          read$(UnfoldingHeap) > NoPerm;
        assume P#trigger(UnfoldingHeap, P(_pure_1));
        assume UnfoldingHeap[null, P(_pure_1)] == CombineFrames(FrameFragment(UnfoldingHeap[_pure_1, f$m2]), CombineFrames(UnfoldingHeap[null, u32(UnfoldingHeap[_pure_1, f$m2])], CombineFrames(FrameFragment(UnfoldingHeap[_pure_1, f$m5]), UnfoldingHeap[null, u32(UnfoldingHeap[_pure_1, f$m5])])));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := read$(UnfoldingHeap);
        assert {:msg "  Function might not be well-formed. Fraction read$() might be negative. (0379a.vpr@9.1--17.2) [78246]"}
          perm >= NoPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(_pure_1) (0379a.vpr@9.1--17.2) [78247]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(_pure_1)];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm * read$(UnfoldingHeap);
        assert {:msg "  Function might not be well-formed. Fraction write * read$() might be negative. (0379a.vpr@9.1--17.2) [78248]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> _pure_1 != null;
        UnfoldingMask := UnfoldingMask[_pure_1, f$m2:=UnfoldingMask[_pure_1, f$m2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm * read$(UnfoldingHeap);
        assert {:msg "  Function might not be well-formed. Fraction write * read$() might be negative. (0379a.vpr@9.1--17.2) [78249]"}
          perm >= NoPerm;
        UnfoldingMask := UnfoldingMask[null, u32(UnfoldingHeap[_pure_1, f$m2]):=UnfoldingMask[null, u32(UnfoldingHeap[_pure_1, f$m2])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(P(_pure_1), UnfoldingHeap[null, P(_pure_1)], u32(UnfoldingHeap[_pure_1, f$m2]), UnfoldingHeap[null, u32(UnfoldingHeap[_pure_1, f$m2])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm * read$(UnfoldingHeap);
        assert {:msg "  Function might not be well-formed. Fraction write * read$() might be negative. (0379a.vpr@9.1--17.2) [78250]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> _pure_1 != null;
        UnfoldingMask := UnfoldingMask[_pure_1, f$m5:=UnfoldingMask[_pure_1, f$m5] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm * read$(UnfoldingHeap);
        assert {:msg "  Function might not be well-formed. Fraction write * read$() might be negative. (0379a.vpr@9.1--17.2) [78251]"}
          perm >= NoPerm;
        UnfoldingMask := UnfoldingMask[null, u32(UnfoldingHeap[_pure_1, f$m5]):=UnfoldingMask[null, u32(UnfoldingHeap[_pure_1, f$m5])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(P(_pure_1), UnfoldingHeap[null, P(_pure_1)], u32(UnfoldingHeap[_pure_1, f$m5]), UnfoldingHeap[null, u32(UnfoldingHeap[_pure_1, f$m5])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        if (*) {
          // Stop execution
          assume false;
        }
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assert {:msg "  Function might not be well-formed. Fraction read$() might not be positive. (0379a.vpr@9.1--17.2) [78252]"}
          read$(Unfolding1Heap) > NoPerm;
        assume u32#trigger(Unfolding1Heap, u32(Unfolding1Heap[_pure_1, f$m2]));
        assume Unfolding1Heap[null, u32(Unfolding1Heap[_pure_1, f$m2])] == FrameFragment(Unfolding1Heap[Unfolding1Heap[_pure_1, f$m2], val_int]);
        ExhaleWellDef0Mask := Unfolding1Mask;
        ExhaleWellDef0Heap := Unfolding1Heap;
        perm := read$(Unfolding1Heap);
        assert {:msg "  Function might not be well-formed. Fraction read$() might be negative. (0379a.vpr@9.1--17.2) [78253]"}
          perm >= NoPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access u32(_pure_1.f$m2) (0379a.vpr@9.1--17.2) [78254]"}
          NoPerm < perm ==> NoPerm < Unfolding1Mask[null, u32(Unfolding1Heap[_pure_1, f$m2])];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm * read$(Unfolding1Heap);
        assert {:msg "  Function might not be well-formed. Fraction write * read$() might be negative. (0379a.vpr@9.1--17.2) [78255]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Unfolding1Heap[_pure_1, f$m2] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[_pure_1, f$m2], val_int:=Unfolding1Mask[Unfolding1Heap[_pure_1, f$m2], val_int] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        assume 0 <= Unfolding1Heap[Unfolding1Heap[_pure_1, f$m2], val_int];
        assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access _pure_1.f$m2 (0379a.vpr@9.1--17.2) [78256]"}
          HasDirectPerm(Unfolding1Mask, _pure_1, f$m2);
        if (*) {
          // Stop execution
          assume false;
        }
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access _pure_1.f$m2 (0379a.vpr@9.1--17.2) [78257]"}
          HasDirectPerm(Unfolding1Mask, _pure_1, f$m2);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access _pure_1.f$m2.val_int (0379a.vpr@9.1--17.2) [78258]"}
          HasDirectPerm(Unfolding1Mask, Unfolding1Heap[_pure_1, f$m2], val_int);
        
        // -- Free assumptions (exp module)
          UnfoldingHeap := UnfoldingHeap[null, u32#sm(UnfoldingHeap[_pure_1, f$m2]):=UnfoldingHeap[null, u32#sm(UnfoldingHeap[_pure_1, f$m2])][UnfoldingHeap[_pure_1, f$m2], val_int:=true]];
          assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m2:=true]];
          havoc newPMask;
          assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
            { newPMask[o_46, f_60] }
            Heap[null, P#sm(_pure_1)][o_46, f_60] || Heap[null, u32#sm(Heap[_pure_1, f$m2])][o_46, f_60] ==> newPMask[o_46, f_60]
          );
          Heap := Heap[null, P#sm(_pure_1):=newPMask];
          Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m5:=true]];
          havoc newPMask;
          assume (forall <A, B> o: Ref, f_61: (Field A B) ::
            { newPMask[o, f_61] }
            Heap[null, P#sm(_pure_1)][o, f_61] || Heap[null, u32#sm(Heap[_pure_1, f$m5])][o, f_61] ==> newPMask[o, f_61]
          );
          Heap := Heap[null, P#sm(_pure_1):=newPMask];
          assume state(Heap, Mask);
          Heap := Heap[null, u32#sm(Heap[_pure_1, f$m2]):=Heap[null, u32#sm(Heap[_pure_1, f$m2])][Heap[_pure_1, f$m2], val_int:=true]];
          assume state(Heap, Mask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m2:=true]];
          havoc newPMask;
          assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
            { newPMask[o_14, f_3] }
            Heap[null, P#sm(_pure_1)][o_14, f_3] || Heap[null, u32#sm(Heap[_pure_1, f$m2])][o_14, f_3] ==> newPMask[o_14, f_3]
          );
          Heap := Heap[null, P#sm(_pure_1):=newPMask];
          Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m5:=true]];
          havoc newPMask;
          assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
            { newPMask[o_3, f_24] }
            Heap[null, P#sm(_pure_1)][o_3, f_24] || Heap[null, u32#sm(Heap[_pure_1, f$m5])][o_3, f_24] ==> newPMask[o_3, f_24]
          );
          Heap := Heap[null, P#sm(_pure_1):=newPMask];
          assume state(Heap, Mask);
          Heap := Heap[null, u32#sm(Heap[_pure_1, f$m2]):=Heap[null, u32#sm(Heap[_pure_1, f$m2])][Heap[_pure_1, f$m2], val_int:=true]];
          assume state(Heap, Mask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m2:=true]];
          havoc newPMask;
          assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
            { newPMask[o_1, f_10] }
            Heap[null, P#sm(_pure_1)][o_1, f_10] || Heap[null, u32#sm(Heap[_pure_1, f$m2])][o_1, f_10] ==> newPMask[o_1, f_10]
          );
          Heap := Heap[null, P#sm(_pure_1):=newPMask];
          Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m5:=true]];
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_51: (Field A B) ::
            { newPMask[o_15, f_51] }
            Heap[null, P#sm(_pure_1)][o_15, f_51] || Heap[null, u32#sm(Heap[_pure_1, f$m5])][o_15, f_51] ==> newPMask[o_15, f_51]
          );
          Heap := Heap[null, P#sm(_pure_1):=newPMask];
          assume state(Heap, Mask);
          Heap := Heap[null, u32#sm(Heap[_pure_1, f$m2]):=Heap[null, u32#sm(Heap[_pure_1, f$m2])][Heap[_pure_1, f$m2], val_int:=true]];
          assume state(Heap, Mask);
      }
      if (Heap[Heap[_pure_1, f$m2], val_int] >= 0 || Heap[Heap[_pure_1, f$m2], val_int] mod 2 == 0) {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assert {:msg "  Function might not be well-formed. Fraction read$() might not be positive. (0379a.vpr@9.1--17.2) [78259]"}
          read$(UnfoldingHeap) > NoPerm;
        assume P#trigger(UnfoldingHeap, P(_pure_1));
        assume UnfoldingHeap[null, P(_pure_1)] == CombineFrames(FrameFragment(UnfoldingHeap[_pure_1, f$m2]), CombineFrames(UnfoldingHeap[null, u32(UnfoldingHeap[_pure_1, f$m2])], CombineFrames(FrameFragment(UnfoldingHeap[_pure_1, f$m5]), UnfoldingHeap[null, u32(UnfoldingHeap[_pure_1, f$m5])])));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := read$(UnfoldingHeap);
        assert {:msg "  Function might not be well-formed. Fraction read$() might be negative. (0379a.vpr@9.1--17.2) [78260]"}
          perm >= NoPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(_pure_1) (0379a.vpr@9.1--17.2) [78261]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(_pure_1)];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm * read$(UnfoldingHeap);
        assert {:msg "  Function might not be well-formed. Fraction write * read$() might be negative. (0379a.vpr@9.1--17.2) [78262]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> _pure_1 != null;
        UnfoldingMask := UnfoldingMask[_pure_1, f$m2:=UnfoldingMask[_pure_1, f$m2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm * read$(UnfoldingHeap);
        assert {:msg "  Function might not be well-formed. Fraction write * read$() might be negative. (0379a.vpr@9.1--17.2) [78263]"}
          perm >= NoPerm;
        UnfoldingMask := UnfoldingMask[null, u32(UnfoldingHeap[_pure_1, f$m2]):=UnfoldingMask[null, u32(UnfoldingHeap[_pure_1, f$m2])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(P(_pure_1), UnfoldingHeap[null, P(_pure_1)], u32(UnfoldingHeap[_pure_1, f$m2]), UnfoldingHeap[null, u32(UnfoldingHeap[_pure_1, f$m2])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm * read$(UnfoldingHeap);
        assert {:msg "  Function might not be well-formed. Fraction write * read$() might be negative. (0379a.vpr@9.1--17.2) [78264]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> _pure_1 != null;
        UnfoldingMask := UnfoldingMask[_pure_1, f$m5:=UnfoldingMask[_pure_1, f$m5] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm * read$(UnfoldingHeap);
        assert {:msg "  Function might not be well-formed. Fraction write * read$() might be negative. (0379a.vpr@9.1--17.2) [78265]"}
          perm >= NoPerm;
        UnfoldingMask := UnfoldingMask[null, u32(UnfoldingHeap[_pure_1, f$m5]):=UnfoldingMask[null, u32(UnfoldingHeap[_pure_1, f$m5])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(P(_pure_1), UnfoldingHeap[null, P(_pure_1)], u32(UnfoldingHeap[_pure_1, f$m5]), UnfoldingHeap[null, u32(UnfoldingHeap[_pure_1, f$m5])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        if (*) {
          // Stop execution
          assume false;
        }
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assert {:msg "  Function might not be well-formed. Fraction read$() might not be positive. (0379a.vpr@9.1--17.2) [78266]"}
          read$(Unfolding1Heap) > NoPerm;
        assume u32#trigger(Unfolding1Heap, u32(Unfolding1Heap[_pure_1, f$m2]));
        assume Unfolding1Heap[null, u32(Unfolding1Heap[_pure_1, f$m2])] == FrameFragment(Unfolding1Heap[Unfolding1Heap[_pure_1, f$m2], val_int]);
        ExhaleWellDef0Mask := Unfolding1Mask;
        ExhaleWellDef0Heap := Unfolding1Heap;
        perm := read$(Unfolding1Heap);
        assert {:msg "  Function might not be well-formed. Fraction read$() might be negative. (0379a.vpr@9.1--17.2) [78267]"}
          perm >= NoPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access u32(_pure_1.f$m2) (0379a.vpr@9.1--17.2) [78268]"}
          NoPerm < perm ==> NoPerm < Unfolding1Mask[null, u32(Unfolding1Heap[_pure_1, f$m2])];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm * read$(Unfolding1Heap);
        assert {:msg "  Function might not be well-formed. Fraction write * read$() might be negative. (0379a.vpr@9.1--17.2) [78269]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Unfolding1Heap[_pure_1, f$m2] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[_pure_1, f$m2], val_int:=Unfolding1Mask[Unfolding1Heap[_pure_1, f$m2], val_int] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        assume 0 <= Unfolding1Heap[Unfolding1Heap[_pure_1, f$m2], val_int];
        assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access _pure_1.f$m2 (0379a.vpr@9.1--17.2) [78270]"}
          HasDirectPerm(Unfolding1Mask, _pure_1, f$m2);
        if (*) {
          // Stop execution
          assume false;
        }
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access _pure_1.f$m2 (0379a.vpr@9.1--17.2) [78271]"}
          HasDirectPerm(Unfolding1Mask, _pure_1, f$m2);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access _pure_1.f$m2.val_int (0379a.vpr@9.1--17.2) [78272]"}
          HasDirectPerm(Unfolding1Mask, Unfolding1Heap[_pure_1, f$m2], val_int);
        
        // -- Free assumptions (exp module)
          UnfoldingHeap := UnfoldingHeap[null, u32#sm(UnfoldingHeap[_pure_1, f$m2]):=UnfoldingHeap[null, u32#sm(UnfoldingHeap[_pure_1, f$m2])][UnfoldingHeap[_pure_1, f$m2], val_int:=true]];
          assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m2:=true]];
          havoc newPMask;
          assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
            { newPMask[o_4, f_54] }
            Heap[null, P#sm(_pure_1)][o_4, f_54] || Heap[null, u32#sm(Heap[_pure_1, f$m2])][o_4, f_54] ==> newPMask[o_4, f_54]
          );
          Heap := Heap[null, P#sm(_pure_1):=newPMask];
          Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m5:=true]];
          havoc newPMask;
          assume (forall <A, B> o_12: Ref, f_25: (Field A B) ::
            { newPMask[o_12, f_25] }
            Heap[null, P#sm(_pure_1)][o_12, f_25] || Heap[null, u32#sm(Heap[_pure_1, f$m5])][o_12, f_25] ==> newPMask[o_12, f_25]
          );
          Heap := Heap[null, P#sm(_pure_1):=newPMask];
          assume state(Heap, Mask);
          Heap := Heap[null, u32#sm(Heap[_pure_1, f$m2]):=Heap[null, u32#sm(Heap[_pure_1, f$m2])][Heap[_pure_1, f$m2], val_int:=true]];
          assume state(Heap, Mask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m2:=true]];
          havoc newPMask;
          assume (forall <A, B> o_41: Ref, f_21: (Field A B) ::
            { newPMask[o_41, f_21] }
            Heap[null, P#sm(_pure_1)][o_41, f_21] || Heap[null, u32#sm(Heap[_pure_1, f$m2])][o_41, f_21] ==> newPMask[o_41, f_21]
          );
          Heap := Heap[null, P#sm(_pure_1):=newPMask];
          Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m5:=true]];
          havoc newPMask;
          assume (forall <A, B> o_23: Ref, f_13: (Field A B) ::
            { newPMask[o_23, f_13] }
            Heap[null, P#sm(_pure_1)][o_23, f_13] || Heap[null, u32#sm(Heap[_pure_1, f$m5])][o_23, f_13] ==> newPMask[o_23, f_13]
          );
          Heap := Heap[null, P#sm(_pure_1):=newPMask];
          assume state(Heap, Mask);
          Heap := Heap[null, u32#sm(Heap[_pure_1, f$m2]):=Heap[null, u32#sm(Heap[_pure_1, f$m2])][Heap[_pure_1, f$m2], val_int:=true]];
          assume state(Heap, Mask);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m2:=true]];
        havoc newPMask;
        assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
          { newPMask[o_13, f_65] }
          Heap[null, P#sm(_pure_1)][o_13, f_65] || Heap[null, u32#sm(Heap[_pure_1, f$m2])][o_13, f_65] ==> newPMask[o_13, f_65]
        );
        Heap := Heap[null, P#sm(_pure_1):=newPMask];
        Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m5:=true]];
        havoc newPMask;
        assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
          { newPMask[o_51, f_66] }
          Heap[null, P#sm(_pure_1)][o_51, f_66] || Heap[null, u32#sm(Heap[_pure_1, f$m5])][o_51, f_66] ==> newPMask[o_51, f_66]
        );
        Heap := Heap[null, P#sm(_pure_1):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, u32#sm(Heap[_pure_1, f$m2]):=Heap[null, u32#sm(Heap[_pure_1, f$m2])][Heap[_pure_1, f$m2], val_int:=true]];
        assume state(Heap, Mask);
        Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m2:=true]];
        havoc newPMask;
        assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
          { newPMask[o_52, f_14] }
          Heap[null, P#sm(_pure_1)][o_52, f_14] || Heap[null, u32#sm(Heap[_pure_1, f$m2])][o_52, f_14] ==> newPMask[o_52, f_14]
        );
        Heap := Heap[null, P#sm(_pure_1):=newPMask];
        Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m5:=true]];
        havoc newPMask;
        assume (forall <A, B> o_20: Ref, f_50: (Field A B) ::
          { newPMask[o_20, f_50] }
          Heap[null, P#sm(_pure_1)][o_20, f_50] || Heap[null, u32#sm(Heap[_pure_1, f$m5])][o_20, f_50] ==> newPMask[o_20, f_50]
        );
        Heap := Heap[null, P#sm(_pure_1):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, u32#sm(Heap[_pure_1, f$m2]):=Heap[null, u32#sm(Heap[_pure_1, f$m2])][Heap[_pure_1, f$m2], val_int:=true]];
        assume state(Heap, Mask);
        Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m2:=true]];
        havoc newPMask;
        assume (forall <A, B> o_58: Ref, f_30: (Field A B) ::
          { newPMask[o_58, f_30] }
          Heap[null, P#sm(_pure_1)][o_58, f_30] || Heap[null, u32#sm(Heap[_pure_1, f$m2])][o_58, f_30] ==> newPMask[o_58, f_30]
        );
        Heap := Heap[null, P#sm(_pure_1):=newPMask];
        Heap := Heap[null, P#sm(_pure_1):=Heap[null, P#sm(_pure_1)][_pure_1, f$m5:=true]];
        havoc newPMask;
        assume (forall <A, B> o_10: Ref, f_67: (Field A B) ::
          { newPMask[o_10, f_67] }
          Heap[null, P#sm(_pure_1)][o_10, f_67] || Heap[null, u32#sm(Heap[_pure_1, f$m5])][o_10, f_67] ==> newPMask[o_10, f_67]
        );
        Heap := Heap[null, P#sm(_pure_1):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, u32#sm(Heap[_pure_1, f$m2]):=Heap[null, u32#sm(Heap[_pure_1, f$m2])][Heap[_pure_1, f$m2], val_int:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[Heap[_pure_1, f$m2], val_int] >= 0 || Heap[Heap[_pure_1, f$m2], val_int] mod 2 == 0 then Heap[Heap[_pure_1, f$m2], val_int] mod 2 else 0) == 0;
}

// ==================================================
// Translation of function read$
// ==================================================

// Uninterpreted function definitions
function  read$(Heap: HeapType): Perm;
function  read$'(Heap: HeapType): Perm;
axiom (forall Heap: HeapType ::
  { read$(Heap) }
  read$(Heap) == read$'(Heap) && dummyFunction(read$#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { read$'(Heap) }
  dummyFunction(read$#triggerStateless())
);

// Framing axioms
function  read$#frame(frame: FrameType): Perm;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), read$'(Heap) }
  state(Heap, Mask) ==> read$'(Heap) == read$#frame(EmptyFrame)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), read$'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || read$#trigger(EmptyFrame)) ==> NoPerm < read$'(Heap)
);

// Trigger function (controlling recursive postconditions)
function  read$#trigger(frame: FrameType): bool;

// State-independent trigger function
function  read$#triggerStateless(): Perm;

// Check contract well-formedness and postcondition
procedure read$#definedness() returns (Result: Perm)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Checking definedness of postcondition (no body)
    assume NoPerm < Result;
    assume state(Heap, Mask);
}

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
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, f$m2:=Mask[self, f$m2] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(u32(self.f$m2), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.f$m2 (0379a.vpr@22.1--24.2) [78273]"}
        HasDirectPerm(Mask, self, f$m2);
    perm := FullPerm;
    Mask := Mask[null, u32(Heap[self, f$m2]):=Mask[null, u32(Heap[self, f$m2])] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, f$m5:=Mask[self, f$m5] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(u32(self.f$m5), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.f$m5 (0379a.vpr@22.1--24.2) [78274]"}
        HasDirectPerm(Mask, self, f$m5);
    perm := FullPerm;
    Mask := Mask[null, u32(Heap[self, f$m5]):=Mask[null, u32(Heap[self, f$m5])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate u32
// ==================================================

type PredicateType_u32;
function  u32(self: Ref): Field PredicateType_u32 FrameType;
function  u32#sm(self: Ref): Field PredicateType_u32 PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(u32(self)) }
  PredicateMaskField(u32(self)) == u32#sm(self)
);
axiom (forall self: Ref ::
  { u32(self) }
  IsPredicateField(u32(self))
);
axiom (forall self: Ref ::
  { u32(self) }
  getPredWandId(u32(self)) == 1
);
function  u32#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  u32#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { u32(self), u32(self2) }
  u32(self) == u32(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { u32#sm(self), u32#sm(self2) }
  u32#sm(self) == u32#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { u32#trigger(Heap, u32(self)) }
  u32#everUsed(u32(self))
);

procedure u32#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of u32
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, val_int:=Mask[self, val_int] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of 0 <= self.val_int
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.val_int (0379a.vpr@26.1--28.2) [78275]"}
        HasDirectPerm(Mask, self, val_int);
    assume 0 <= Heap[self, val_int];
    assume state(Heap, Mask);
}