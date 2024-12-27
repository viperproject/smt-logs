// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:49:21
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0227.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0227-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_5: Ref, f_3: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_5, f_3] }
  Heap[o_5, $allocated] ==> Heap[Heap[o_5, f_3], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_6: Ref, f_9: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_6, f_9] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_6, f_9) ==> Heap[o_6, f_9] == ExhaleHeap[o_6, f_9]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_2), ExhaleHeap[null, PredicateMaskField(pm_f_2)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsPredicateField(pm_f_2) ==> Heap[null, PredicateMaskField(pm_f_2)] == ExhaleHeap[null, PredicateMaskField(pm_f_2)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_2) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsPredicateField(pm_f_2) ==> (forall <A, B> o2_2: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_2, f_9] }
    Heap[null, PredicateMaskField(pm_f_2)][o2_2, f_9] ==> Heap[o2_2, f_9] == ExhaleHeap[o2_2, f_9]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_2), ExhaleHeap[null, WandMaskField(pm_f_2)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsWandField(pm_f_2) ==> Heap[null, WandMaskField(pm_f_2)] == ExhaleHeap[null, WandMaskField(pm_f_2)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_2) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsWandField(pm_f_2) ==> (forall <A, B> o2_2: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_2, f_9] }
    Heap[null, WandMaskField(pm_f_2)][o2_2, f_9] ==> Heap[o2_2, f_9] == ExhaleHeap[o2_2, f_9]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_6: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_6, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_6, $allocated] ==> ExhaleHeap[o_6, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_5: Ref, f_10: (Field A B), v: B ::
  { Heap[o_5, f_10:=v] }
  succHeap(Heap, Heap[o_5, f_10:=v])
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
// Translation of predicate mustSendBounded$
// ==================================================

type PredicateType_mustSendBounded$;
function  mustSendBounded$(r$: Ref): Field PredicateType_mustSendBounded$ FrameType;
function  mustSendBounded$#sm(r$: Ref): Field PredicateType_mustSendBounded$ PMaskType;
axiom (forall r$: Ref ::
  { PredicateMaskField(mustSendBounded$(r$)) }
  PredicateMaskField(mustSendBounded$(r$)) == mustSendBounded$#sm(r$)
);
axiom (forall r$: Ref ::
  { mustSendBounded$(r$) }
  IsPredicateField(mustSendBounded$(r$))
);
axiom (forall r$: Ref ::
  { mustSendBounded$(r$) }
  getPredWandId(mustSendBounded$(r$)) == 0
);
function  mustSendBounded$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  mustSendBounded$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r$: Ref, r$2: Ref ::
  { mustSendBounded$(r$), mustSendBounded$(r$2) }
  mustSendBounded$(r$) == mustSendBounded$(r$2) ==> r$ == r$2
);
axiom (forall r$: Ref, r$2: Ref ::
  { mustSendBounded$#sm(r$), mustSendBounded$#sm(r$2) }
  mustSendBounded$#sm(r$) == mustSendBounded$#sm(r$2) ==> r$ == r$2
);

axiom (forall Heap: HeapType, r$: Ref ::
  { mustSendBounded$#trigger(Heap, mustSendBounded$(r$)) }
  mustSendBounded$#everUsed(mustSendBounded$(r$))
);

procedure mustSendBounded$#definedness(r$: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of mustSendBounded$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r$, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test(this: Ref, c: Ref, n: int) returns ()
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
  var r$_4: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[c, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    assume n > 0;
    assume state(Heap, Mask);
    assume c != null;
    perm := real(n) * FullPerm;
    assert {:msg "  Contract might not be well-formed. Fraction n * write might be negative. (0227.vpr@11.12--11.62) [203471]"}
      perm >= NoPerm;
    Mask := Mask[null, mustSendBounded$(c):=Mask[null, mustSendBounded$(c)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: i := 0 -- 0227.vpr@14.3--14.9
    i := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (n - i) * write >= none && acc(mustSendBounded$(c), (n - i) * write) -- 0227.vpr@16.3--16.80
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Exhale might fail. Assertion (n - i) * write >= none might not hold. (0227.vpr@16.10--16.80) [203472]"}
      NoPerm <= real(n - i) * FullPerm;
    perm := real(n - i) * FullPerm;
    assert {:msg "  Exhale might fail. Fraction (n - i) * write might be negative. (0227.vpr@16.10--16.80) [203473]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access mustSendBounded$(c) (0227.vpr@16.10--16.80) [203474]"}
        perm <= Mask[null, mustSendBounded$(c)];
    }
    Mask := Mask[null, mustSendBounded$(c):=Mask[null, mustSendBounded$(c)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale n - i + 1 > 0 && n - i >= 0 -- 0227.vpr@17.3--17.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Exhale might fail. Assertion n - i + 1 > 0 might not hold. (0227.vpr@17.10--17.41) [203475]"}
      n - i + 1 > 0;
    assert {:msg "  Exhale might fail. Assertion n - i >= 0 might not hold. (0227.vpr@17.10--17.41) [203476]"}
      n - i >= 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < n) -- 0227.vpr@19.3--32.4
    
    // -- Check definedness of invariant
      if (*) {
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
        assume state(Heap, Mask);
        // Check and assume guard
        assume i < n;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: inhale (n - i) * write >= none && acc(mustSendBounded$(c), (n - i) * write) -- 0227.vpr@21.5--21.82
            assume NoPerm <= real(n - i) * FullPerm;
            perm := real(n - i) * FullPerm;
            assert {:msg "  Inhale might fail. Fraction (n - i) * write might be negative. (0227.vpr@21.12--21.82) [203477]"}
              perm >= NoPerm;
            Mask := Mask[null, mustSendBounded$(c):=Mask[null, mustSendBounded$(c)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale n - i + 1 > 0 && n - i >= 0 -- 0227.vpr@22.5--22.43
            assume n - i + 1 > 0;
            assume n - i >= 0;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: assert c != null -- 0227.vpr@26.5--26.21
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Assert might fail. Assertion c != null might not hold. (0227.vpr@26.12--26.21) [203478]"}
              c != null;
            assume state(Heap, Mask);
          
          // -- Translating statement: exhale acc(mustSendBounded$(c), 1 * write) -- 0227.vpr@28.5--28.47
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := real(1) * FullPerm;
            assert {:msg "  Exhale might fail. Fraction 1 * write might be negative. (0227.vpr@28.12--28.47) [203479]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access mustSendBounded$(c) (0227.vpr@28.12--28.47) [203480]"}
                perm <= Mask[null, mustSendBounded$(c)];
            }
            Mask := Mask[null, mustSendBounded$(c):=Mask[null, mustSendBounded$(c)] - perm];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            assume state(Heap, Mask);
          
          // -- Translating statement: exhale (forperm r$_4: Ref [mustSendBounded$(r$_4)] :: false) -- 0227.vpr@31.5--31.65
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            
            // -- Check definedness of (forperm r$_4: Ref [mustSendBounded$(r$_4)] :: false)
              if (*) {
                if (HasDirectPerm(Mask, null, mustSendBounded$(r$_4))) {
                  assert {:msg "  Exhale might fail. There might be insufficient permission to access mustSendBounded$(r$_4) (0227.vpr@31.13--31.64) [203481]"}
                    HasDirectPerm(ExhaleWellDef0Mask, null, mustSendBounded$(r$_4));
                }
                assume false;
              }
            assert {:msg "  Exhale might fail. Assertion (forperm r$_4: Ref [mustSendBounded$(r$_4)] :: false) might not hold. (0227.vpr@31.13--31.64) [203482]"}
              (forall r$_4_1: Ref ::
              { Mask[null, mustSendBounded$(r$_4_1)] } { Heap[null, mustSendBounded$(r$_4_1)] }
              HasDirectPerm(Mask, null, mustSendBounded$(r$_4_1)) ==> false
            );
            assume state(Heap, Mask);
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < n);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}