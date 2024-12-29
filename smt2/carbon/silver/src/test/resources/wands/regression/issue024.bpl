// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:24:57
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/issue024.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/issue024-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Ref, arg7_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && arg7 == arg7_2)))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField bool;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);
const unique h: Field NormalField Ref;
axiom !IsPredicateField(h);
axiom !IsWandField(h);

// ==================================================
// Translation of predicate compare
// ==================================================

type PredicateType_compare;
function  compare(x: Ref): Field PredicateType_compare FrameType;
function  compare#sm(x: Ref): Field PredicateType_compare PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(compare(x)) }
  PredicateMaskField(compare(x)) == compare#sm(x)
);
axiom (forall x: Ref ::
  { compare(x) }
  IsPredicateField(compare(x))
);
axiom (forall x: Ref ::
  { compare(x) }
  getPredWandId(compare(x)) == 0
);
function  compare#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  compare#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { compare(x), compare(x2) }
  compare(x) == compare(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { compare#sm(x), compare#sm(x2) }
  compare#sm(x) == compare#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { compare#trigger(Heap, compare(x)) }
  compare#everUsed(compare(x))
);

procedure compare#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of compare
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method incompleteness_01
// ==================================================

procedure incompleteness_01(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.f, write) --* acc(x.f, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs1 -- issue024.vpr@21.25--21.46
          lhs1:
          Labellhs1Heap := WandDefLHSHeap;
          Labellhs1Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(x, FullPerm, x, FullPerm):=Mask[null, wand(x, FullPerm, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: assert x.f == old(x.f) -- issue024.vpr@24.5--24.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (issue024.vpr@24.12--24.27) [123560]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (issue024.vpr@24.12--24.27) [123561]"}
        HasDirectPerm(oldMask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == old(x.f) might not hold. (issue024.vpr@24.12--24.27) [123562]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) -- issue024.vpr@25.5--25.34
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue024.vpr@25.5--25.34) [123563]"}
        FullPerm <= Mask[null, wand(x, FullPerm, x, FullPerm)];
      Mask := Mask[null, wand(x, FullPerm, x, FullPerm):=Mask[null, wand(x, FullPerm, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (issue024.vpr@25.5--25.34) [123565]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f == old(x.f) -- issue024.vpr@27.5--27.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (issue024.vpr@27.12--27.27) [123567]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (issue024.vpr@27.12--27.27) [123568]"}
        HasDirectPerm(oldMask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == old(x.f) might not hold. (issue024.vpr@27.12--27.27) [123569]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of incompleteness_01 might not hold. There might be insufficient permission to access x.f (issue024.vpr@22.11--22.19) [123570]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method comparison
// ==================================================

procedure comparison(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var newVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: assert x.f == old(x.f) -- issue024.vpr@35.5--35.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (issue024.vpr@35.12--35.27) [123571]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (issue024.vpr@35.12--35.27) [123572]"}
        HasDirectPerm(oldMask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == old(x.f) might not hold. (issue024.vpr@35.12--35.27) [123573]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(compare(x), write) -- issue024.vpr@36.5--36.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding compare(x) might fail. There might be insufficient permission to access x.f (issue024.vpr@36.5--36.20) [123576]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, compare(x):=Mask[null, compare(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume compare#trigger(Heap, compare(x));
    assume Heap[null, compare(x)] == FrameFragment(Heap[x, f_7]);
    if (!HasDirectPerm(Mask, null, compare(x))) {
      Heap := Heap[null, compare#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, compare(x):=freshVersion];
    }
    Heap := Heap[null, compare#sm(x):=Heap[null, compare#sm(x)][x, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(compare(x), write) -- issue024.vpr@37.5--37.22
    assume compare#trigger(Heap, compare(x));
    assume Heap[null, compare(x)] == FrameFragment(Heap[x, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding compare(x) might fail. There might be insufficient permission to access compare(x) (issue024.vpr@37.5--37.22) [123580]"}
        perm <= Mask[null, compare(x)];
    }
    Mask := Mask[null, compare(x):=Mask[null, compare(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, compare(x))) {
        havoc newVersion;
        Heap := Heap[null, compare(x):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f == old(x.f) -- issue024.vpr@38.5--38.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (issue024.vpr@38.12--38.27) [123582]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (issue024.vpr@38.12--38.27) [123583]"}
        HasDirectPerm(oldMask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == old(x.f) might not hold. (issue024.vpr@38.12--38.27) [123584]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of comparison might not hold. There might be insufficient permission to access x.f (issue024.vpr@33.11--33.19) [123585]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method incompleteness_02
// ==================================================

procedure incompleteness_02(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var b_4: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) && (x.f ==> acc(x.g, write)) {
  // } -- issue024.vpr@47.3--47.18
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := FullPerm;
      b_1_1 := b_1_1 && x != null;
      Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs3 -- issue024.vpr@47.11--47.18
      lhs3:
      Labellhs3Heap := Ops_1Heap;
      Labellhs3Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationacc(x.f, write) && (x.f ==> acc(x.g, write))
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_1Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (issue024.vpr@47.3--47.18) [123586]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, f_7:=Used_1Mask[rcvLocal, f_7] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, f_7] == Used_1Heap[rcvLocal, f_7];
            Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, f_7:=Used_1Mask[rcvLocal, f_7] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Heap[rcvLocal, f_7] == Used_1Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (issue024.vpr@47.3--47.18) [123587]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_3 := b_1_1 && b_2_1;
        b_3 := b_3 && state(ResultHeap, ResultMask);
        b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
        b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
        b_3 := b_3 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_3;
    if (b_1_1 && b_1_1) {
      if (ResultHeap[x, f_7]) {
        
        // -- Transfer of acc(x.g, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.g, write) might be negative. (issue024.vpr@47.3--47.18) [123588]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, g:=Used_1Mask[rcvLocal, g] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, g] == Used_1Heap[rcvLocal, g];
                Ops_1Mask := Ops_1Mask[rcvLocal, g:=Ops_1Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, g:=Used_1Mask[rcvLocal, g] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Heap[rcvLocal, g] == Used_1Heap[rcvLocal, g];
                Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm)][x, g:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (issue024.vpr@47.3--47.18) [123589]"}
            (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_4 := b_1_1 && b_2_1;
            b_4 := b_4 && state(Result_1Heap, Result_1Mask);
            b_4 := b_4 && sumMask(Result_1Mask, Ops_1Mask, Used_1Mask);
            b_4 := (b_4 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_1Heap, Used_1Mask);
            b_4 := b_4 && state(Result_1Heap, Result_1Mask);
          b_1_1 := b_1_1 && b_4;
      }
    }
    Mask := Mask[null, wand_1(x, FullPerm, x, FullPerm, x, x, FullPerm):=Mask[null, wand_1(x, FullPerm, x, FullPerm, x, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x.f) -- issue024.vpr@49.3--52.4
    
    // -- Check definedness of x.f
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.f (issue024.vpr@49.6--49.9) [123590]"}
        HasDirectPerm(Mask, x, f_7);
    if (Heap[x, f_7]) {
      
      // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) && (x.f ==> acc(x.g, write)) -- issue024.vpr@50.5--50.18
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          // permLe
          assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue024.vpr@50.5--50.18) [123591]"}
            FullPerm <= Mask[null, wand_1(x, FullPerm, x, FullPerm, x, x, FullPerm)];
          Mask := Mask[null, wand_1(x, FullPerm, x, FullPerm, x, x, FullPerm):=Mask[null, wand_1(x, FullPerm, x, FullPerm, x, x, FullPerm)] - FullPerm];
        assume state(Heap, Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (issue024.vpr@50.5--50.18) [123593]"}
              perm <= Mask[x, f_7];
          }
          Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        assume state(Heap, Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          assume x != null;
          Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
          assume state(Heap, Mask);
          if (Heap[x, f_7]) {
            perm := FullPerm;
            assume x != null;
            Mask := Mask[x, g:=Mask[x, g] + perm];
            assume state(Heap, Mask);
          }
          assume state(Heap, Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert acc(x.g, write) -- issue024.vpr@51.5--51.20
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (issue024.vpr@51.12--51.20) [123597]"}
            perm <= AssertMask[x, g];
        }
        AssertMask := AssertMask[x, g:=AssertMask[x, g] - perm];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}