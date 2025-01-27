// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:15:35
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permissions/forperm.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permissions/forperm-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_13: Ref, f_20: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_13, f_20] }
  Heap[o_13, $allocated] ==> Heap[Heap[o_13, f_20], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_20: Ref, f_29: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_20, f_29] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_20, f_29) ==> Heap[o_20, f_29] == ExhaleHeap[o_20, f_29]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_37), ExhaleHeap[null, PredicateMaskField(pm_f_37)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsPredicateField(pm_f_37) ==> Heap[null, PredicateMaskField(pm_f_37)] == ExhaleHeap[null, PredicateMaskField(pm_f_37)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_37) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsPredicateField(pm_f_37) ==> (forall <A, B> o2_37: Ref, f_29: (Field A B) ::
    { ExhaleHeap[o2_37, f_29] }
    Heap[null, PredicateMaskField(pm_f_37)][o2_37, f_29] ==> Heap[o2_37, f_29] == ExhaleHeap[o2_37, f_29]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_37), ExhaleHeap[null, WandMaskField(pm_f_37)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsWandField(pm_f_37) ==> Heap[null, WandMaskField(pm_f_37)] == ExhaleHeap[null, WandMaskField(pm_f_37)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_37) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsWandField(pm_f_37) ==> (forall <A, B> o2_37: Ref, f_29: (Field A B) ::
    { ExhaleHeap[o2_37, f_29] }
    Heap[null, WandMaskField(pm_f_37)][o2_37, f_29] ==> Heap[o2_37, f_29] == ExhaleHeap[o2_37, f_29]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_20: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_20, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_20, $allocated] ==> ExhaleHeap[o_20, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_13: Ref, f_66: (Field A B), v: B ::
  { Heap[o_13, f_66:=v] }
  succHeap(Heap, Heap[o_13, f_66:=v])
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
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var y_8: Ref;
  var y_10: Ref;
  var y_20: Ref;
  var y_24: Ref;
  var y_26: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := (if b_24 then FullPerm else NoPerm);
    assert {:msg "  Contract might not be well-formed. Fraction (b ? write : none) might be negative. (forperm.vpr@8.12--8.38) [96059]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert b || (forperm y: Ref [y.f] :: false) -- forperm.vpr@10.3--10.44
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of b || (forperm y: Ref [y.f] :: false)
      if (!b_24) {
        if (*) {
          if (HasDirectPerm(Mask, y_8, f_7)) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@10.10--10.44) [96060]"}
              HasDirectPerm(ExhaleWellDef0Mask, y_8, f_7);
          }
          assume false;
        }
      }
    assert {:msg "  Assert might fail. Assertion b || (forperm y: Ref [y.f] :: false) might not hold. (forperm.vpr@10.10--10.44) [96061]"}
      b_24 || (forall y_1: Ref ::
      { Mask[y_1, f_7] } { Heap[y_1, f_7] }
      HasDirectPerm(Mask, y_1, f_7) ==> false
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm y: Ref [y.f] :: false) ==> (forperm y: Ref [y.f] :: true) -- forperm.vpr@12.3--12.76
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm y: Ref [y.f] :: false)
      if (*) {
        if (HasDirectPerm(Mask, y_10, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@12.10--12.76) [96062]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_10, f_7);
        }
        assume false;
      }
    if ((forall y_3_2: Ref ::
      { Mask[y_3_2, f_7] } { Heap[y_3_2, f_7] }
      HasDirectPerm(Mask, y_3_2, f_7) ==> false
    )) {
      
      // -- Check definedness of (forperm y: Ref [y.f] :: true)
        if (*) {
          if (HasDirectPerm(Mask, y_20, f_7)) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@12.10--12.76) [96063]"}
              HasDirectPerm(ExhaleWellDef0Mask, y_20, f_7);
          }
          assume false;
        }
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm y: Ref [y.f] :: false) ==> !b -- forperm.vpr@13.3--13.48
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm y: Ref [y.f] :: false)
      if (*) {
        if (HasDirectPerm(Mask, y_24, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@13.10--13.48) [96065]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_24, f_7);
        }
        assume false;
      }
    if ((forall y_7: Ref ::
      { Mask[y_7, f_7] } { Heap[y_7, f_7] }
      HasDirectPerm(Mask, y_7, f_7) ==> false
    )) {
      assert {:msg "  Assert might fail. Assertion !b might not hold. (forperm.vpr@13.10--13.48) [96066]"}
        !b_24;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm y: Ref [y.f] :: false) -- forperm.vpr@16.3--16.39
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm y: Ref [y.f] :: false)
      if (*) {
        if (HasDirectPerm(Mask, y_26, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@16.10--16.39) [96067]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_26, f_7);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm y: Ref [y.f] :: false) might not hold. (forperm.vpr@16.10--16.39) [96068]"}
      (forall y_9: Ref ::
      { Mask[y_9, f_7] } { Heap[y_9, f_7] }
      HasDirectPerm(Mask, y_9, f_7) ==> false
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01b
// ==================================================

procedure test01b(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var y_28: Ref;
  var y_30: Ref;
  var y_32: Ref;
  var y_34: Ref;
  var y_36: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert b || (forperm y: Ref [y.f] :: false) -- forperm.vpr@22.3--22.44
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of b || (forperm y: Ref [y.f] :: false)
      if (!b_24) {
        if (*) {
          if (HasDirectPerm(Mask, y_28, f_7)) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@22.10--22.44) [96069]"}
              HasDirectPerm(ExhaleWellDef0Mask, y_28, f_7);
          }
          assume false;
        }
      }
    assert {:msg "  Assert might fail. Assertion b || (forperm y: Ref [y.f] :: false) might not hold. (forperm.vpr@22.10--22.44) [96070]"}
      b_24 || (forall y_1: Ref ::
      { Mask[y_1, f_7] } { Heap[y_1, f_7] }
      HasDirectPerm(Mask, y_1, f_7) ==> false
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm y: Ref [y.f] :: false) ==> (forperm y: Ref [y.f] :: true) -- forperm.vpr@24.3--24.76
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm y: Ref [y.f] :: false)
      if (*) {
        if (HasDirectPerm(Mask, y_30, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@24.10--24.76) [96071]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_30, f_7);
        }
        assume false;
      }
    if ((forall y_3_2: Ref ::
      { Mask[y_3_2, f_7] } { Heap[y_3_2, f_7] }
      HasDirectPerm(Mask, y_3_2, f_7) ==> false
    )) {
      
      // -- Check definedness of (forperm y: Ref [y.f] :: true)
        if (*) {
          if (HasDirectPerm(Mask, y_32, f_7)) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@24.10--24.76) [96072]"}
              HasDirectPerm(ExhaleWellDef0Mask, y_32, f_7);
          }
          assume false;
        }
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm y: Ref [y.f] :: false) ==> !b -- forperm.vpr@26.3--26.48
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm y: Ref [y.f] :: false)
      if (*) {
        if (HasDirectPerm(Mask, y_34, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@26.10--26.48) [96074]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_34, f_7);
        }
        assume false;
      }
    if ((forall y_7: Ref ::
      { Mask[y_7, f_7] } { Heap[y_7, f_7] }
      HasDirectPerm(Mask, y_7, f_7) ==> false
    )) {
      assert {:msg "  Assert might fail. Assertion !b might not hold. (forperm.vpr@26.10--26.48) [96075]"}
        !b_24;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm y: Ref [y.f] :: false) -- forperm.vpr@29.3--29.39
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm y: Ref [y.f] :: false)
      if (*) {
        if (HasDirectPerm(Mask, y_36, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@29.10--29.39) [96076]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_36, f_7);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm y: Ref [y.f] :: false) might not hold. (forperm.vpr@29.10--29.39) [96077]"}
      (forall y_9: Ref ::
      { Mask[y_9, f_7] } { Heap[y_9, f_7] }
      HasDirectPerm(Mask, y_9, f_7) ==> false
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref, b1: bool, b2: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var y_38: Ref;
  var y_40: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 5;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 5 might be negative. (forperm.vpr@33.12--33.25) [96078]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forperm y: Ref [y.f] :: y != null) -- forperm.vpr@35.3--35.43
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm y: Ref [y.f] :: y != null)
      if (*) {
        if (HasDirectPerm(Mask, y_38, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@35.10--35.43) [96079]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_38, f_7);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm y: Ref [y.f] :: y != null) might not hold. (forperm.vpr@35.10--35.43) [96080]"}
      (forall y_1: Ref ::
      { Mask[y_1, f_7] } { Heap[y_1, f_7] }
      HasDirectPerm(Mask, y_1, f_7) ==> y_1 != null
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm y: Ref [y.g] :: y != null) -- forperm.vpr@36.3--36.43
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm y: Ref [y.g] :: y != null)
      if (*) {
        if (HasDirectPerm(Mask, y_40, g)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.g (forperm.vpr@36.10--36.43) [96081]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_40, g);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm y: Ref [y.g] :: y != null) might not hold. (forperm.vpr@36.10--36.43) [96082]"}
      (forall y_3_2: Ref ::
      { Mask[y_3_2, g] } { Heap[y_3_2, g] }
      HasDirectPerm(Mask, y_3_2, g) ==> y_3_2 != null
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref, b1: bool, b2: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var a1: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var y_42: Ref;
  var y_12: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 5;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 5 might be negative. (forperm.vpr@40.12--40.25) [96083]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: a1 := x.f -- forperm.vpr@42.3--42.21
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (forperm.vpr@42.3--42.21) [96084]"}
        HasDirectPerm(Mask, x, f_7);
    a1 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.f, 4 / 5) -- forperm.vpr@44.3--44.23
    perm := 4 / 5;
    assert {:msg "  Inhale might fail. Fraction 4 / 5 might be negative. (forperm.vpr@44.10--44.23) [96085]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := a1 + 1 -- forperm.vpr@45.3--45.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (forperm.vpr@45.3--45.16) [96086]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=a1 + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm y: Ref [y.g] :: y.f > a1) -- forperm.vpr@47.3--47.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm y: Ref [y.g] :: y.f > a1)
      if (*) {
        if (HasDirectPerm(Mask, y_42, g)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.g (forperm.vpr@47.10--47.42) [96087]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_42, g);
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@47.10--47.42) [96088]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_42, f_7);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm y: Ref [y.g] :: y.f > a1) might not hold. (forperm.vpr@47.10--47.42) [96089]"}
      (forall y_1: Ref ::
      { Mask[y_1, g] } { Heap[y_1, g] }
      HasDirectPerm(Mask, y_1, g) ==> Heap[y_1, f_7] > a1
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm y: Ref [y.f] :: y.g > y.g - 1) -- forperm.vpr@50.3--50.47
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm y: Ref [y.f] :: y.g > y.g - 1)
      if (*) {
        if (HasDirectPerm(Mask, y_12, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@50.10--50.47) [96090]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_12, f_7);
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.g (forperm.vpr@50.10--50.47) [96091]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_12, g);
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.g (forperm.vpr@50.10--50.47) [96092]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_12, g);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm y: Ref [y.f] :: y.g > y.g - 1) might not hold. (forperm.vpr@50.10--50.47) [96093]"}
      (forall y_3_2: Ref ::
      { Mask[y_3_2, f_7] } { Heap[y_3_2, f_7] }
      HasDirectPerm(Mask, y_3_2, f_7) ==> Heap[y_3_2, g] > Heap[y_3_2, g] - 1
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref, b1: bool, b2: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var a1: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var y_44: Ref;
  var y_46: Ref;
  var y_3: Ref;
  var y_48: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 5;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 5 might be negative. (forperm.vpr@54.12--54.25) [96094]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: a1 := x.f -- forperm.vpr@56.3--56.21
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (forperm.vpr@56.3--56.21) [96095]"}
        HasDirectPerm(Mask, x, f_7);
    a1 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.f, 4 / 5) -- forperm.vpr@58.3--58.23
    perm := 4 / 5;
    assert {:msg "  Inhale might fail. Fraction 4 / 5 might be negative. (forperm.vpr@58.10--58.23) [96096]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := a1 + 1 -- forperm.vpr@59.3--59.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (forperm.vpr@59.3--59.16) [96097]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=a1 + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm y: Ref [y.f] :: y.f > a1) -- forperm.vpr@61.3--61.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm y: Ref [y.f] :: y.f > a1)
      if (*) {
        if (HasDirectPerm(Mask, y_44, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@61.10--61.42) [96098]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_44, f_7);
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@61.10--61.42) [96099]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_44, f_7);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm y: Ref [y.f] :: y.f > a1) might not hold. (forperm.vpr@61.10--61.42) [96100]"}
      (forall y_1: Ref ::
      { Mask[y_1, f_7] } { Heap[y_1, f_7] }
      HasDirectPerm(Mask, y_1, f_7) ==> Heap[y_1, f_7] > a1
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm y: Ref [y.f] :: y.f > old(y.f)) -- forperm.vpr@63.3--63.48
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm y: Ref [y.f] :: y.f > old(y.f))
      if (*) {
        if (HasDirectPerm(Mask, y_46, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@63.10--63.48) [96101]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_46, f_7);
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@63.10--63.48) [96102]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_46, f_7);
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@63.10--63.48) [96103]"}
            HasDirectPerm(oldMask, y_46, f_7);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm y: Ref [y.f] :: y.f > old(y.f)) might not hold. (forperm.vpr@63.10--63.48) [96104]"}
      (forall y_3_2: Ref ::
      { Mask[y_3_2, f_7] } { Heap[y_3_2, f_7] }
      HasDirectPerm(Mask, y_3_2, f_7) ==> Heap[y_3_2, f_7] > oldHeap[y_3_2, f_7]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm y: Ref [y.f] :: old(y.f) <= old(y.f)) -- forperm.vpr@65.3--65.54
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm y: Ref [y.f] :: old(y.f) <= old(y.f))
      if (*) {
        if (HasDirectPerm(Mask, y_3, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@65.10--65.54) [96105]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_3, f_7);
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@65.10--65.54) [96106]"}
            HasDirectPerm(oldMask, y_3, f_7);
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@65.10--65.54) [96107]"}
            HasDirectPerm(oldMask, y_3, f_7);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm y: Ref [y.f] :: old(y.f) <= old(y.f)) might not hold. (forperm.vpr@65.10--65.54) [96108]"}
      (forall y_5_2: Ref ::
      { Mask[y_5_2, f_7] } { Heap[y_5_2, f_7] }
      HasDirectPerm(Mask, y_5_2, f_7) ==> oldHeap[y_5_2, f_7] <= oldHeap[y_5_2, f_7]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm y: Ref [y.g] :: old(y.f) <= old(y.f)) -- forperm.vpr@66.3--66.54
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm y: Ref [y.g] :: old(y.f) <= old(y.f))
      if (*) {
        if (HasDirectPerm(Mask, y_48, g)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.g (forperm.vpr@66.10--66.54) [96109]"}
            HasDirectPerm(ExhaleWellDef0Mask, y_48, g);
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@66.10--66.54) [96110]"}
            HasDirectPerm(oldMask, y_48, f_7);
          assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (forperm.vpr@66.10--66.54) [96111]"}
            HasDirectPerm(oldMask, y_48, f_7);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm y: Ref [y.g] :: old(y.f) <= old(y.f)) might not hold. (forperm.vpr@66.10--66.54) [96112]"}
      (forall y_7: Ref ::
      { Mask[y_7, g] } { Heap[y_7, g] }
      HasDirectPerm(Mask, y_7, g) ==> oldHeap[y_7, f_7] <= oldHeap[y_7, f_7]
    );
    assume state(Heap, Mask);
}