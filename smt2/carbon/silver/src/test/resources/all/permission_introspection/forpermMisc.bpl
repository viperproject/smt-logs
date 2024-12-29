// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:34:25
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/forpermMisc.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/forpermMisc-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var r_36: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm <= p_1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(x.val, p) -- forpermMisc.vpr@9.3--9.23
    perm := p_1;
    assert {:msg "  Inhale might fail. Fraction p might be negative. (forpermMisc.vpr@9.10--9.23) [142109]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, val:=Mask[x, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forperm r: Ref [r.val] :: false) -- forpermMisc.vpr@10.3--10.41
    
    // -- Check definedness of (forperm r: Ref [r.val] :: false)
      if (*) {
        if (HasDirectPerm(Mask, r_36, val)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access r.val (forpermMisc.vpr@10.10--10.41) [142110]"}
            HasDirectPerm(Mask, r_36, val);
        }
        assume false;
      }
    assume (forall r_1_1: Ref ::
      { Mask[r_1_1, val] } { Heap[r_1_1, val] }
      HasDirectPerm(Mask, r_1_1, val) ==> false
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- forpermMisc.vpr@12.3--12.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (forpermMisc.vpr@12.10--12.15) [142111]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_27: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm <= p_1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(x.val, p) -- forpermMisc.vpr@18.3--18.23
    perm := p_1;
    assert {:msg "  Inhale might fail. Fraction p might be negative. (forpermMisc.vpr@18.10--18.23) [142112]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, val:=Mask[x, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.val] :: false) -- forpermMisc.vpr@20.3--20.41
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.val] :: false)
      if (*) {
        if (HasDirectPerm(Mask, r_27, val)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.val (forpermMisc.vpr@20.10--20.41) [142113]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_27, val);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.val] :: false) might not hold. (forpermMisc.vpr@20.10--20.41) [142114]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, val] } { Heap[r_1_1, val] }
      HasDirectPerm(Mask, r_1_1, val) ==> false
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(c1: Ref, c2: Ref, c3: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r_28: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[c1, $allocated];
    assume Heap[c2, $allocated];
    assume Heap[c3, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume c1 != null;
    Mask := Mask[c1, val:=Mask[c1, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume c2 != null;
    Mask := Mask[c2, val:=Mask[c2, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume c3 == c1 || c3 == c2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forperm r: Ref [r.val] :: r == c3 ==> false) -- forpermMisc.vpr@27.3--27.53
    
    // -- Check definedness of (forperm r: Ref [r.val] :: r == c3 ==> false)
      if (*) {
        if (HasDirectPerm(Mask, r_28, val)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access r.val (forpermMisc.vpr@27.10--27.53) [142115]"}
            HasDirectPerm(Mask, r_28, val);
        }
        assume false;
      }
    assume (forall r_1_1: Ref ::
      { Mask[r_1_1, val] } { Heap[r_1_1, val] }
      HasDirectPerm(Mask, r_1_1, val) ==> r_1_1 == c3 ==> false
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- forpermMisc.vpr@29.3--29.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (forpermMisc.vpr@29.10--29.15) [142116]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(c1: Ref, c2: Ref, c3: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_38: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[c1, $allocated];
    assume Heap[c2, $allocated];
    assume Heap[c3, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume c1 != null;
    Mask := Mask[c1, val:=Mask[c1, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume c2 != null;
    Mask := Mask[c2, val:=Mask[c2, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume c3 == c1 || c3 == c2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forperm r: Ref [r.val] :: r == c3 ==> false) -- forpermMisc.vpr@37.3--37.53
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.val] :: r == c3 ==> false)
      if (*) {
        if (HasDirectPerm(Mask, r_38, val)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.val (forpermMisc.vpr@37.10--37.53) [142117]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_38, val);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.val] :: r == c3 ==> false) might not hold. (forpermMisc.vpr@37.10--37.53) [142118]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, val] } { Heap[r_1_1, val] }
      HasDirectPerm(Mask, r_1_1, val) ==> r_1_1 == c3 ==> false
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test07a
// ==================================================

procedure test07a(c1: Ref, c2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_12: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[c1, $allocated];
    assume Heap[c2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume c1 != null;
    Mask := Mask[c1, val:=Mask[c1, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forperm r: Ref [r.val] :: r == c2 ==> false) -- forpermMisc.vpr@44.3--44.53
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.val] :: r == c2 ==> false)
      if (*) {
        if (HasDirectPerm(Mask, r_12, val)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.val (forpermMisc.vpr@44.10--44.53) [142119]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_12, val);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.val] :: r == c2 ==> false) might not hold. (forpermMisc.vpr@44.10--44.53) [142120]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, val] } { Heap[r_1_1, val] }
      HasDirectPerm(Mask, r_1_1, val) ==> r_1_1 == c2 ==> false
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test07b
// ==================================================

procedure test07b(c1: Ref, c2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_41: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[c1, $allocated];
    assume Heap[c2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume c1 != null;
    Mask := Mask[c1, val:=Mask[c1, val] + perm];
    assume state(Heap, Mask);
    assume c1 != c2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forperm r: Ref [r.val] :: r == c2 ==> false) -- forpermMisc.vpr@50.3--50.53
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.val] :: r == c2 ==> false)
      if (*) {
        if (HasDirectPerm(Mask, r_41, val)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.val (forpermMisc.vpr@50.10--50.53) [142121]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_41, val);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.val] :: r == c2 ==> false) might not hold. (forpermMisc.vpr@50.10--50.53) [142122]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, val] } { Heap[r_1_1, val] }
      HasDirectPerm(Mask, r_1_1, val) ==> r_1_1 == c2 ==> false
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(c1: Ref, c2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r_30: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[c1, $allocated];
    assume Heap[c2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume c1 != null;
    Mask := Mask[c1, val:=Mask[c1, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forperm r: Ref [r.val] :: r == c2 ==> false) -- forpermMisc.vpr@56.3--56.53
    
    // -- Check definedness of (forperm r: Ref [r.val] :: r == c2 ==> false)
      if (*) {
        if (HasDirectPerm(Mask, r_30, val)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access r.val (forpermMisc.vpr@56.10--56.53) [142123]"}
            HasDirectPerm(Mask, r_30, val);
        }
        assume false;
      }
    assume (forall r_1_1: Ref ::
      { Mask[r_1_1, val] } { Heap[r_1_1, val] }
      HasDirectPerm(Mask, r_1_1, val) ==> r_1_1 == c2 ==> false
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale c1 == c2 -- forpermMisc.vpr@57.3--57.18
    assume c1 == c2;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- forpermMisc.vpr@58.3--58.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (forpermMisc.vpr@58.10--58.15) [142124]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06
// ==================================================

procedure test06(c1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r_32: Ref;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[c1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forperm r: Ref [r.val] :: false) -- forpermMisc.vpr@62.3--62.41
    
    // -- Check definedness of (forperm r: Ref [r.val] :: false)
      if (*) {
        if (HasDirectPerm(Mask, r_32, val)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access r.val (forpermMisc.vpr@62.10--62.41) [142125]"}
            HasDirectPerm(Mask, r_32, val);
        }
        assume false;
      }
    assume (forall r_1_1: Ref ::
      { Mask[r_1_1, val] } { Heap[r_1_1, val] }
      HasDirectPerm(Mask, r_1_1, val) ==> false
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(c1.val, write) -- forpermMisc.vpr@63.3--63.21
    perm := FullPerm;
    assume c1 != null;
    Mask := Mask[c1, val:=Mask[c1, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- forpermMisc.vpr@65.3--65.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (forpermMisc.vpr@65.10--65.15) [142127]"}
      false;
    assume state(Heap, Mask);
}