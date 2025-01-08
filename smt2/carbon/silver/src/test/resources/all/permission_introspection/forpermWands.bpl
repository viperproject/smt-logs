// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:53:10
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/forpermWands.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/forpermWands-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_7: Ref, f_11: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_7, f_11] }
  Heap[o_7, $allocated] ==> Heap[Heap[o_7, f_11], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref, f_12: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, f_12] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_8, f_12) ==> Heap[o_8, f_12] == ExhaleHeap[o_8, f_12]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3), ExhaleHeap[null, PredicateMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> Heap[null, PredicateMaskField(pm_f_3)] == ExhaleHeap[null, PredicateMaskField(pm_f_3)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_12: (Field A B) ::
    { ExhaleHeap[o2_3, f_12] }
    Heap[null, PredicateMaskField(pm_f_3)][o2_3, f_12] ==> Heap[o2_3, f_12] == ExhaleHeap[o2_3, f_12]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3), ExhaleHeap[null, WandMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> Heap[null, WandMaskField(pm_f_3)] == ExhaleHeap[null, WandMaskField(pm_f_3)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_12: (Field A B) ::
    { ExhaleHeap[o2_3, f_12] }
    Heap[null, WandMaskField(pm_f_3)][o2_3, f_12] ==> Heap[o2_3, f_12] == ExhaleHeap[o2_3, f_12]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_8, $allocated] ==> ExhaleHeap[o_8, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_7: Ref, f_2: (Field A B), v: B ::
  { Heap[o_7, f_2:=v] }
  succHeap(Heap, Heap[o_7, f_2:=v])
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
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 0
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_1;
function  wand_1(arg1: Perm, arg2: Ref, arg3: Ref, arg4: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Perm, arg2: Ref, arg3: Ref, arg4: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Perm, arg2: Ref, arg3: Ref, arg4: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: Perm, arg2: Ref, arg3: Ref, arg4: Perm ::
  { wand_1(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Perm, arg2: Ref, arg3: Ref, arg4: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Perm, arg2: Ref, arg3: Ref, arg4: Perm ::
  { wand_1(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Perm, arg2: Ref, arg3: Ref, arg4: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Perm, arg2: Ref, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4)) }
  wand_1#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Perm, arg2: Ref, arg3: Ref, arg4: Perm ::
  { wand_1(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4)) == 1
);
axiom (forall arg1: Perm, arg2: Ref, arg3: Ref, arg4: Perm, arg1_2: Perm, arg2_2: Ref, arg3_2: Ref, arg4_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4), wand_1(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_1(arg1, arg2, arg3, arg4) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method m1
// ==================================================

procedure m1(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var a_21: Ref;
  var b_96: Ref;
  var Labellhs2Heap: HeapType;
  var Labellhs2Mask: MaskType;
  var ExhaleHeap: HeapType;
  var a_4: Ref;
  var b_97: Ref;
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
  
  // -- Translating statement: inhale acc(x.f, write) -- forpermWands.vpr@7.5--7.20
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x.f > 0 -- forpermWands.vpr@8.5--8.19
    
    // -- Check definedness of x.f > 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (forpermWands.vpr@8.12--8.19) [142039]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.f, write) --* acc(y.f, write) -- forpermWands.vpr@9.5--9.33
    
    // -- Check definedness of acc(x.f, write) --* acc(y.f, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs1 -- forpermWands.vpr@9.12--9.33
          lhs1:
          Labellhs1Heap := WandDefLHSHeap;
          Labellhs1Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume y != null;
        WandDefRHSMask := WandDefRHSMask[y, f_7:=WandDefRHSMask[y, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(x, FullPerm, y, FullPerm):=Mask[null, wand(x, FullPerm, y, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm
  //     a: Ref, b: Ref [acc(a.f, write) --* acc(b.f, write)] :: a.f > 0) -- forpermWands.vpr@11.5--11.69
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm a: Ref, b: Ref [acc(a.f, write) --* acc(b.f, write)] :: a.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, null, wand(a_21, FullPerm, b_96, FullPerm))) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume a_21 != null;
            WandDefLHSMask := WandDefLHSMask[a_21, f_7:=WandDefLHSMask[a_21, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs2 -- forpermWands.vpr@11.36--11.57
              lhs2:
              Labellhs2Heap := WandDefLHSHeap;
              Labellhs2Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            assume b_96 != null;
            WandDefRHSMask := WandDefRHSMask[b_96, f_7:=WandDefRHSMask[b_96, f_7] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
          assert {:msg "  Assert might fail. There might be insufficient permission to access a.f (forpermWands.vpr@11.12--11.69) [142040]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_21, f_7);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref, b: Ref [acc(a.f, write) --* acc(b.f, write)] :: a.f > 0) might not hold. (forpermWands.vpr@11.12--11.69) [142041]"}
      (forall a_1_1: Ref, b_1_2: Ref ::
      { Mask[null, wand(a_1_1, FullPerm, b_1_2, FullPerm)] } { Heap[null, wand(a_1_1, FullPerm, b_1_2, FullPerm)] }
      HasDirectPerm(Mask, null, wand(a_1_1, FullPerm, b_1_2, FullPerm)) ==> Heap[a_1_1, f_7] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(y.f, write) -- forpermWands.vpr@12.5--12.32
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (forpermWands.vpr@12.5--12.32) [142042]"}
        FullPerm <= Mask[null, wand(x, FullPerm, y, FullPerm)];
      Mask := Mask[null, wand(x, FullPerm, y, FullPerm):=Mask[null, wand(x, FullPerm, y, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (forpermWands.vpr@12.5--12.32) [142044]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume y != null;
      Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm
  //     a: Ref, b: Ref [acc(a.f, write) --* acc(b.f, write)] :: false) -- forpermWands.vpr@13.5--13.67
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm a: Ref, b: Ref [acc(a.f, write) --* acc(b.f, write)] :: false)
      if (*) {
        if (HasDirectPerm(Mask, null, wand(a_4, FullPerm, b_97, FullPerm))) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume a_4 != null;
            WandDefLHSMask := WandDefLHSMask[a_4, f_7:=WandDefLHSMask[a_4, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs4 -- forpermWands.vpr@13.36--13.57
              lhs4:
              Labellhs4Heap := WandDefLHSHeap;
              Labellhs4Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            assume b_97 != null;
            WandDefRHSMask := WandDefRHSMask[b_97, f_7:=WandDefRHSMask[b_97, f_7] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref, b: Ref [acc(a.f, write) --* acc(b.f, write)] :: false) might not hold. (forpermWands.vpr@13.12--13.67) [142046]"}
      (forall a_3_1: Ref, b_3_2: Ref ::
      { Mask[null, wand(a_3_1, FullPerm, b_3_2, FullPerm)] } { Heap[null, wand(a_3_1, FullPerm, b_3_2, FullPerm)] }
      HasDirectPerm(Mask, null, wand(a_3_1, FullPerm, b_3_2, FullPerm)) ==> false
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(x: Ref, y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Labellhs6Heap: HeapType;
  var Labellhs6Mask: MaskType;
  var a_5: Ref;
  var b_98: Ref;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var a_8: Ref;
  var b_99: Ref;
  var Labellhs8Heap: HeapType;
  var Labellhs8Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(x.f, write) -- forpermWands.vpr@17.5--17.20
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(y.f, write) -- forpermWands.vpr@18.5--18.20
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(z.f, write) -- forpermWands.vpr@19.5--19.20
    perm := FullPerm;
    assume z != null;
    Mask := Mask[z, f_7:=Mask[z, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.f, write) --* acc(y.f, write) -- forpermWands.vpr@20.5--20.33
    
    // -- Check definedness of acc(x.f, write) --* acc(y.f, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs5 -- forpermWands.vpr@20.12--20.33
          lhs5:
          Labellhs5Heap := WandDefLHSHeap;
          Labellhs5Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume y != null;
        WandDefRHSMask := WandDefRHSMask[y, f_7:=WandDefRHSMask[y, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(x, FullPerm, y, FullPerm):=Mask[null, wand(x, FullPerm, y, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(z.f, write) --* acc(y.f, write) -- forpermWands.vpr@21.5--21.33
    
    // -- Check definedness of acc(z.f, write) --* acc(y.f, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume z != null;
        WandDefLHSMask := WandDefLHSMask[z, f_7:=WandDefLHSMask[z, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs6 -- forpermWands.vpr@21.12--21.33
          lhs6:
          Labellhs6Heap := WandDefLHSHeap;
          Labellhs6Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume y != null;
        WandDefRHSMask := WandDefRHSMask[y, f_7:=WandDefRHSMask[y, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(z, FullPerm, y, FullPerm):=Mask[null, wand(z, FullPerm, y, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forperm
  //     a: Ref, b: Ref [acc(a.f, write) --* acc(b.f, write)] :: a.f > 0 &&
  //     b.f < 0) -- forpermWands.vpr@22.5--22.80
    
    // -- Check definedness of (forperm a: Ref, b: Ref [acc(a.f, write) --* acc(b.f, write)] :: a.f > 0 && b.f < 0)
      if (*) {
        if (HasDirectPerm(Mask, null, wand(a_5, FullPerm, b_98, FullPerm))) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume a_5 != null;
            WandDefLHSMask := WandDefLHSMask[a_5, f_7:=WandDefLHSMask[a_5, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs7 -- forpermWands.vpr@22.36--22.57
              lhs7:
              Labellhs7Heap := WandDefLHSHeap;
              Labellhs7Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            assume b_98 != null;
            WandDefRHSMask := WandDefRHSMask[b_98, f_7:=WandDefRHSMask[b_98, f_7] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
          assert {:msg "  Inhale might fail. There might be insufficient permission to access a.f (forpermWands.vpr@22.12--22.80) [142050]"}
            HasDirectPerm(Mask, a_5, f_7);
          if (Heap[a_5, f_7] > 0) {
            assert {:msg "  Inhale might fail. There might be insufficient permission to access b.f (forpermWands.vpr@22.12--22.80) [142051]"}
              HasDirectPerm(Mask, b_98, f_7);
          }
        }
        assume false;
      }
    assume (forall a_1_1: Ref, b_1_2: Ref ::
      { Mask[null, wand(a_1_1, FullPerm, b_1_2, FullPerm)] } { Heap[null, wand(a_1_1, FullPerm, b_1_2, FullPerm)] }
      HasDirectPerm(Mask, null, wand(a_1_1, FullPerm, b_1_2, FullPerm)) ==> Heap[a_1_1, f_7] > 0 && Heap[b_1_2, f_7] < 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f > 0 -- forpermWands.vpr@25.5--25.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f > 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (forpermWands.vpr@25.12--25.19) [142052]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f > 0 might not hold. (forpermWands.vpr@25.12--25.19) [142053]"}
      Heap[x, f_7] > 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y.f < 0 -- forpermWands.vpr@26.5--26.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of y.f < 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forpermWands.vpr@26.12--26.19) [142054]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, f_7);
    assert {:msg "  Assert might fail. Assertion y.f < 0 might not hold. (forpermWands.vpr@26.12--26.19) [142055]"}
      Heap[y, f_7] < 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forperm
  //     a: Ref, b: Ref [acc(a.f, write) --* acc(b.f, write)] :: a == x) -- forpermWands.vpr@28.5--28.68
    
    // -- Check definedness of (forperm a: Ref, b: Ref [acc(a.f, write) --* acc(b.f, write)] :: a == x)
      if (*) {
        if (HasDirectPerm(Mask, null, wand(a_8, FullPerm, b_99, FullPerm))) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume a_8 != null;
            WandDefLHSMask := WandDefLHSMask[a_8, f_7:=WandDefLHSMask[a_8, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs8 -- forpermWands.vpr@28.36--28.57
              lhs8:
              Labellhs8Heap := WandDefLHSHeap;
              Labellhs8Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            assume b_99 != null;
            WandDefRHSMask := WandDefRHSMask[b_99, f_7:=WandDefRHSMask[b_99, f_7] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    assume (forall a_3_1: Ref, b_3_2: Ref ::
      { Mask[null, wand(a_3_1, FullPerm, b_3_2, FullPerm)] } { Heap[null, wand(a_3_1, FullPerm, b_3_2, FullPerm)] }
      HasDirectPerm(Mask, null, wand(a_3_1, FullPerm, b_3_2, FullPerm)) ==> a_3_1 == x
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x == z -- forpermWands.vpr@30.5--30.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion x == z might not hold. (forpermWands.vpr@30.12--30.18) [142056]"}
      x == z;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m3
// ==================================================

procedure m3(x: Ref, y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var p_1: Perm;
  var perm: Perm;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Labellhs10Heap: HeapType;
  var Labellhs10Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var a_9: Ref;
  var b_100: Ref;
  var p_1_1: Perm;
  var Labellhs11Heap: HeapType;
  var Labellhs11Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (let p == (write) in acc(x.f, p)) --* acc(y.f, write) -- forpermWands.vpr@34.5--34.58
    
    // -- Check definedness of (let p == (write) in acc(x.f, p)) --* acc(y.f, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        p_1 := FullPerm;
        perm := p_1;
        assert {:msg "  Inhale might fail. Fraction p might be negative. (forpermWands.vpr@34.12--34.58) [142057]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs9 -- forpermWands.vpr@34.12--34.58
          lhs9:
          Labellhs9Heap := WandDefLHSHeap;
          Labellhs9Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume y != null;
        WandDefRHSMask := WandDefRHSMask[y, f_7:=WandDefRHSMask[y, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(FullPerm, x, y, FullPerm):=Mask[null, wand_1(FullPerm, x, y, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(y.f, write) --* acc(z.f, write) -- forpermWands.vpr@35.5--35.33
    
    // -- Check definedness of acc(y.f, write) --* acc(z.f, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume y != null;
        WandDefLHSMask := WandDefLHSMask[y, f_7:=WandDefLHSMask[y, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs10 -- forpermWands.vpr@35.12--35.33
          lhs10:
          Labellhs10Heap := WandDefLHSHeap;
          Labellhs10Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume z != null;
        WandDefRHSMask := WandDefRHSMask[z, f_7:=WandDefRHSMask[z, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(y, FullPerm, z, FullPerm):=Mask[null, wand(y, FullPerm, z, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm
  //     a: Ref, b: Ref [(let p == (write) in acc(a.f, p)) --* acc(b.f, write)] :: a ==
  //     x &&
  //     b == y) -- forpermWands.vpr@37.5--37.103
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm a: Ref, b: Ref [(let p == (write) in acc(a.f, p)) --* acc(b.f, write)] :: a == x && b == y)
      if (*) {
        if (HasDirectPerm(Mask, null, wand_1(FullPerm, a_9, b_100, FullPerm))) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            p_1_1 := FullPerm;
            perm := p_1_1;
            assert {:msg "  Assert might fail. Fraction p might be negative. (forpermWands.vpr@37.12--37.103) [142058]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> a_9 != null;
            WandDefLHSMask := WandDefLHSMask[a_9, f_7:=WandDefLHSMask[a_9, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs11 -- forpermWands.vpr@37.36--37.82
              lhs11:
              Labellhs11Heap := WandDefLHSHeap;
              Labellhs11Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            assume b_100 != null;
            WandDefRHSMask := WandDefRHSMask[b_100, f_7:=WandDefRHSMask[b_100, f_7] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref, b: Ref [(let p == (write) in acc(a.f, p)) --* acc(b.f, write)] :: a == x && b == y) might not hold. (forpermWands.vpr@37.12--37.103) [142059]"}
      (forall a_1_1: Ref, b_1_2: Ref ::
      { Mask[null, wand_1(FullPerm, a_1_1, b_1_2, FullPerm)] } { Heap[null, wand_1(FullPerm, a_1_1, b_1_2, FullPerm)] }
      HasDirectPerm(Mask, null, wand_1(FullPerm, a_1_1, b_1_2, FullPerm)) ==> a_1_1 == x && b_1_2 == y
    );
    assume state(Heap, Mask);
}