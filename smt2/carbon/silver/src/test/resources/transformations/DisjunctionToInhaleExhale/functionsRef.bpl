// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:39:40
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/transformations/DisjunctionToInhaleExhale/functionsRef.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/transformations/DisjunctionToInhaleExhale/functionsRef-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_1: Ref, f_2: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_1, f_2] }
  Heap[o_1, $allocated] ==> Heap[Heap[o_1, f_2], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_19: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_19] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_19) ==> Heap[o_12, f_19] == ExhaleHeap[o_12, f_19]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_19), ExhaleHeap[null, PredicateMaskField(pm_f_19)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsPredicateField(pm_f_19) ==> Heap[null, PredicateMaskField(pm_f_19)] == ExhaleHeap[null, PredicateMaskField(pm_f_19)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_19) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsPredicateField(pm_f_19) ==> (forall <A, B> o2_19: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_19, f_19] }
    Heap[null, PredicateMaskField(pm_f_19)][o2_19, f_19] ==> Heap[o2_19, f_19] == ExhaleHeap[o2_19, f_19]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_19), ExhaleHeap[null, WandMaskField(pm_f_19)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsWandField(pm_f_19) ==> Heap[null, WandMaskField(pm_f_19)] == ExhaleHeap[null, WandMaskField(pm_f_19)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_19) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsWandField(pm_f_19) ==> (forall <A, B> o2_19: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_19, f_19] }
    Heap[null, WandMaskField(pm_f_19)][o2_19, f_19] ==> Heap[o2_19, f_19] == ExhaleHeap[o2_19, f_19]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_51: (Field A B), v: B ::
  { Heap[o_1, f_51:=v] }
  succHeap(Heap, Heap[o_1, f_51:=v])
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
// - height 2: NonDet2
// - height 1: NonDet1
// - height 0: func
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
// Translation of function NonDet1
// ==================================================

// Uninterpreted function definitions
function  NonDet1(Heap: HeapType, vari1: bool): bool;
function  NonDet1'(Heap: HeapType, vari1: bool): bool;
axiom (forall Heap: HeapType, vari1: bool ::
  { NonDet1(Heap, vari1) }
  NonDet1(Heap, vari1) == NonDet1'(Heap, vari1) && dummyFunction(NonDet1#triggerStateless(vari1))
);
axiom (forall Heap: HeapType, vari1: bool ::
  { NonDet1'(Heap, vari1) }
  dummyFunction(NonDet1#triggerStateless(vari1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, vari1: bool ::
  { state(Heap, Mask), NonDet1(Heap, vari1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> NonDet1(Heap, vari1)
);

// Framing axioms
function  NonDet1#frame(frame: FrameType, vari1: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, vari1: bool ::
  { state(Heap, Mask), NonDet1'(Heap, vari1) }
  state(Heap, Mask) ==> NonDet1'(Heap, vari1) == NonDet1#frame(EmptyFrame, vari1)
);

// Trigger function (controlling recursive postconditions)
function  NonDet1#trigger(frame: FrameType, vari1: bool): bool;

// State-independent trigger function
function  NonDet1#triggerStateless(vari1: bool): bool;

// Check contract well-formedness and postcondition
procedure NonDet1#definedness(vari1: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of function NonDet2
// ==================================================

// Uninterpreted function definitions
function  NonDet2(Heap: HeapType, vari1: bool, vari2: bool): bool;
function  NonDet2'(Heap: HeapType, vari1: bool, vari2: bool): bool;
axiom (forall Heap: HeapType, vari1: bool, vari2: bool ::
  { NonDet2(Heap, vari1, vari2) }
  NonDet2(Heap, vari1, vari2) == NonDet2'(Heap, vari1, vari2) && dummyFunction(NonDet2#triggerStateless(vari1, vari2))
);
axiom (forall Heap: HeapType, vari1: bool, vari2: bool ::
  { NonDet2'(Heap, vari1, vari2) }
  dummyFunction(NonDet2#triggerStateless(vari1, vari2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, vari1: bool, vari2: bool ::
  { state(Heap, Mask), NonDet2(Heap, vari1, vari2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> NonDet2(Heap, vari1, vari2)
);

// Framing axioms
function  NonDet2#frame(frame: FrameType, vari1: bool, vari2: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, vari1: bool, vari2: bool ::
  { state(Heap, Mask), NonDet2'(Heap, vari1, vari2) }
  state(Heap, Mask) ==> NonDet2'(Heap, vari1, vari2) == NonDet2#frame(EmptyFrame, vari1, vari2)
);

// Trigger function (controlling recursive postconditions)
function  NonDet2#trigger(frame: FrameType, vari1: bool, vari2: bool): bool;

// State-independent trigger function
function  NonDet2#triggerStateless(vari1: bool, vari2: bool): bool;

// Check contract well-formedness and postcondition
procedure NonDet2#definedness(vari1: bool, vari2: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of function func
// ==================================================

// Uninterpreted function definitions
function  func(Heap: HeapType, b_24: bool): bool;
function  func'(Heap: HeapType, b_24: bool): bool;
axiom (forall Heap: HeapType, b_24: bool ::
  { func(Heap, b_24) }
  func(Heap, b_24) == func'(Heap, b_24) && dummyFunction(func#triggerStateless(b_24))
);
axiom (forall Heap: HeapType, b_24: bool ::
  { func'(Heap, b_24) }
  dummyFunction(func#triggerStateless(b_24))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), func(Heap, b_24) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> func(Heap, b_24)
);

// Framing axioms
function  func#frame(frame: FrameType, b_24: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), func'(Heap, b_24) }
  state(Heap, Mask) ==> func'(Heap, b_24) == func#frame(EmptyFrame, b_24)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), func'(Heap, b_24) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || func#trigger(EmptyFrame, b_24)) ==> (exists k: bool ::
    { NonDet1#frame(EmptyFrame, k) }
    NonDet1(Heap, k) || (b_24 && (if NonDet1(Heap, k) then k else (exists m_18: bool ::
      { NonDet2#frame(EmptyFrame, k, m_18) }
      NonDet2(Heap, k, m_18) || m_18
    )))
  )
);

// Trigger function (controlling recursive postconditions)
function  func#trigger(frame: FrameType, b_24: bool): bool;

// State-independent trigger function
function  func#triggerStateless(b_24: bool): bool;

// Check contract well-formedness and postcondition
procedure func#definedness(b_24: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  var k_6: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Translate function body
    Result := true;
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(Heap, Mask);
        
        // -- Check definedness of (exists k: Bool :: { NonDet1(k) } (NonDet1(k) ? true : b && (NonDet1(k) ? k : (exists m: Bool :: { NonDet2(k, m) } (NonDet2(k, m) ? true : m)))))
          if (*) {
            if (*) {
              // Stop execution
              assume false;
            }
            if (NonDet1(Heap, k_6)) {
            } else {
              if (b_24) {
                if (*) {
                  // Stop execution
                  assume false;
                }
                if (NonDet1(Heap, k_6)) {
                } else {
                  if (*) {
                    if (*) {
                      // Stop execution
                      assume false;
                    }
                    assume false;
                  }
                }
              }
            }
            assume false;
          }
        assume (exists k_2_2: bool ::
          { NonDet1#frame(EmptyFrame, k_2_2) }
          NonDet1(Heap, k_2_2) || (b_24 && (if NonDet1(Heap, k_2_2) then k_2_2 else (exists m_2_1: bool ::
            { NonDet2#frame(EmptyFrame, k_2_2, m_2_1) }
            NonDet2(Heap, k_2_2, m_2_1) || m_2_1
          )))
        );
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      
      // -- Check definedness of (exists k: Bool :: { NonDet1(k) } true || b && (k || (exists m: Bool :: true || m)))
        if (*) {
          assume false;
        }
}

// ==================================================
// Translation of method foo
// ==================================================

procedure foo_3() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of (exists k: Bool :: { NonDet1(k) } (NonDet1(k) ? k : true))
          if (*) {
            if (*) {
              // Stop execution
              assume false;
            }
            assume false;
          }
        assume (exists k_3: bool ::
          { NonDet1#frame(EmptyFrame, k_3) }
          !NonDet1(PostHeap, k_3) || k_3
        );
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (exists k: Bool :: { NonDet1(k) } k || true)
        if (*) {
          assume false;
        }
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
}