// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:21:35
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0138.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0138-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of domain Process
// ==================================================

// The type for domain Process
type ProcessDomainType;

// Translation of domain function p_single
function  p_single(n_84: int): ProcessDomainType;

// ==================================================
// Translation of all fields
// ==================================================

const unique Ref__y: Field NormalField int;
axiom !IsPredicateField(Ref__y);
axiom !IsWandField(Ref__y);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(): Field PredicateType_P FrameType;
function  P#sm(): Field PredicateType_P PMaskType;
axiom PredicateMaskField(P()) == P#sm();
axiom IsPredicateField(P());
axiom getPredWandId(P()) == 0;
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;

axiom (forall Heap: HeapType ::
  { P#trigger(Heap, P()) }
  P#everUsed(P())
);

procedure P#definedness() returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Ref__hist_idle
// ==================================================

type PredicateType_Ref__hist_idle;
function  Ref__hist_idle(diz: Ref, ref: Ref, p_1: ProcessDomainType): Field PredicateType_Ref__hist_idle FrameType;
function  Ref__hist_idle#sm(diz: Ref, ref: Ref, p_1: ProcessDomainType): Field PredicateType_Ref__hist_idle PMaskType;
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { PredicateMaskField(Ref__hist_idle(diz, ref, p_1)) }
  PredicateMaskField(Ref__hist_idle(diz, ref, p_1)) == Ref__hist_idle#sm(diz, ref, p_1)
);
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { Ref__hist_idle(diz, ref, p_1) }
  IsPredicateField(Ref__hist_idle(diz, ref, p_1))
);
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { Ref__hist_idle(diz, ref, p_1) }
  getPredWandId(Ref__hist_idle(diz, ref, p_1)) == 1
);
function  Ref__hist_idle#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Ref__hist_idle#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType, diz2: Ref, ref2: Ref, p2_1: ProcessDomainType ::
  { Ref__hist_idle(diz, ref, p_1), Ref__hist_idle(diz2, ref2, p2_1) }
  Ref__hist_idle(diz, ref, p_1) == Ref__hist_idle(diz2, ref2, p2_1) ==> diz == diz2 && (ref == ref2 && p_1 == p2_1)
);
axiom (forall diz: Ref, ref: Ref, p_1: ProcessDomainType, diz2: Ref, ref2: Ref, p2_1: ProcessDomainType ::
  { Ref__hist_idle#sm(diz, ref, p_1), Ref__hist_idle#sm(diz2, ref2, p2_1) }
  Ref__hist_idle#sm(diz, ref, p_1) == Ref__hist_idle#sm(diz2, ref2, p2_1) ==> diz == diz2 && (ref == ref2 && p_1 == p2_1)
);

axiom (forall Heap: HeapType, diz: Ref, ref: Ref, p_1: ProcessDomainType ::
  { Ref__hist_idle#trigger(Heap, Ref__hist_idle(diz, ref, p_1)) }
  Ref__hist_idle#everUsed(Ref__hist_idle(diz, ref, p_1))
);

procedure Ref__hist_idle#definedness(diz: Ref, ref: Ref, p_1: ProcessDomainType) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Ref__hist_idle
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
      assume Heap[ref, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(P(), write) -- 0138.vpr@7.3--7.18
    perm := FullPerm;
    Mask := Mask[null, P():=Mask[null, P()] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: while (true) -- 0138.vpr@9.3--15.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(P(), write) might not hold on entry. There might be insufficient permission to access P() (0138.vpr@11.15--11.23) [77355]"}
            perm <= Mask[null, P()];
        }
        Mask := Mask[null, P():=Mask[null, P()] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Check definedness of invariant
      if (*) {
        assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, P():=Mask[null, P()] + perm];
        assume state(Heap, Mask);
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
        perm := FullPerm;
        Mask := Mask[null, P():=Mask[null, P()] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: assert false -- 0138.vpr@14.5--14.17
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion false might not hold. (0138.vpr@14.12--14.17) [77356]"}
              false;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(P(), write) might not be preserved. There might be insufficient permission to access P() (0138.vpr@11.15--11.23) [77357]"}
            perm <= Mask[null, P()];
        }
        Mask := Mask[null, P():=Mask[null, P()] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume false;
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, P():=Mask[null, P()] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Ref__do_incr_loop
// ==================================================

procedure Ref__do_incr_loop(diz: Ref, n: int, k: int, h_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var i: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[h_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume n >= 0;
    assume state(Heap, Mask);
    assume k >= 0;
    assume state(Heap, Mask);
    assume h_1 != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Ref__hist_idle(h_1, diz, (p_single(k): ProcessDomainType)):=Mask[null, Ref__hist_idle(h_1, diz, (p_single(k): ProcessDomainType))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: i := 0 -- 0138.vpr@38.3--38.9
    i := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < n) -- 0138.vpr@39.3--49.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant k >= 0 might not hold on entry. Assertion k >= 0 might not hold. (0138.vpr@40.15--40.21) [77358]"}
          k >= 0;
        assert {:msg "  Loop invariant 0 <= i might not hold on entry. Assertion 0 <= i might not hold. (0138.vpr@41.15--41.21) [77359]"}
          0 <= i;
        assert {:msg "  Loop invariant i <= n might not hold on entry. Assertion i <= n might not hold. (0138.vpr@42.15--42.21) [77360]"}
          i <= n;
        assert {:msg "  Loop invariant h != null might not hold on entry. Assertion h != null might not hold. (0138.vpr@44.15--44.24) [77361]"}
          h_1 != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(Ref__hist_idle(h, diz, p_single(k + i)), write) might not hold on entry. There might be insufficient permission to access Ref__hist_idle(h, diz, p_single(k + i)) (0138.vpr@45.15--45.66) [77362]"}
            perm <= Mask[null, Ref__hist_idle(h_1, diz, (p_single(k + i): ProcessDomainType))];
        }
        Mask := Mask[null, Ref__hist_idle(h_1, diz, (p_single(k + i): ProcessDomainType)):=Mask[null, Ref__hist_idle(h_1, diz, (p_single(k + i): ProcessDomainType))] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Check definedness of invariant
      if (*) {
        assume k >= 0;
        assume state(Heap, Mask);
        assume 0 <= i;
        assume state(Heap, Mask);
        assume i <= n;
        assume state(Heap, Mask);
        assume h_1 != null;
        assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, Ref__hist_idle(h_1, diz, (p_single(k + i): ProcessDomainType)):=Mask[null, Ref__hist_idle(h_1, diz, (p_single(k + i): ProcessDomainType))] + perm];
        assume state(Heap, Mask);
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
        assume k >= 0;
        assume 0 <= i;
        assume i <= n;
        assume h_1 != null;
        perm := FullPerm;
        Mask := Mask[null, Ref__hist_idle(h_1, diz, (p_single(k + i): ProcessDomainType)):=Mask[null, Ref__hist_idle(h_1, diz, (p_single(k + i): ProcessDomainType))] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume i < n;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: assert false -- 0138.vpr@48.5--48.17
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion false might not hold. (0138.vpr@48.12--48.17) [77363]"}
              false;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant k >= 0 might not be preserved. Assertion k >= 0 might not hold. (0138.vpr@40.15--40.21) [77364]"}
          k >= 0;
        assert {:msg "  Loop invariant 0 <= i might not be preserved. Assertion 0 <= i might not hold. (0138.vpr@41.15--41.21) [77365]"}
          0 <= i;
        assert {:msg "  Loop invariant i <= n might not be preserved. Assertion i <= n might not hold. (0138.vpr@42.15--42.21) [77366]"}
          i <= n;
        assert {:msg "  Loop invariant h != null might not be preserved. Assertion h != null might not hold. (0138.vpr@44.15--44.24) [77367]"}
          h_1 != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(Ref__hist_idle(h, diz, p_single(k + i)), write) might not be preserved. There might be insufficient permission to access Ref__hist_idle(h, diz, p_single(k + i)) (0138.vpr@45.15--45.66) [77368]"}
            perm <= Mask[null, Ref__hist_idle(h_1, diz, (p_single(k + i): ProcessDomainType))];
        }
        Mask := Mask[null, Ref__hist_idle(h_1, diz, (p_single(k + i): ProcessDomainType)):=Mask[null, Ref__hist_idle(h_1, diz, (p_single(k + i): ProcessDomainType))] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < n);
      assume state(Heap, Mask);
      assume k >= 0;
      assume 0 <= i;
      assume i <= n;
      assume h_1 != null;
      perm := FullPerm;
      Mask := Mask[null, Ref__hist_idle(h_1, diz, (p_single(k + i): ProcessDomainType)):=Mask[null, Ref__hist_idle(h_1, diz, (p_single(k + i): ProcessDomainType))] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}