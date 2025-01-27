// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:26
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0085.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0085-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of all fields
// ==================================================

const unique foo: Field NormalField int;
axiom !IsPredicateField(foo);
axiom !IsWandField(foo);

// ==================================================
// Translation of method specialVariables
// ==================================================

procedure specialVariables() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var resulter: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[resulter, $allocated];
  
  // -- Translating statement: resulter := new(foo) -- 0085.vpr@10.3--10.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    resulter := freshObj;
    Mask := Mask[resulter, foo:=Mask[resulter, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: resulter.foo := 1 -- 0085.vpr@12.3--12.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access resulter.foo (0085.vpr@12.3--12.20) [56306]"}
      FullPerm == Mask[resulter, foo];
    Heap := Heap[resulter, foo:=1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method types
// ==================================================

procedure types() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Inter: Ref;
  var Permer: Ref;
  var Booler: Ref;
  var Refer: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[Inter, $allocated];
    assume Heap[Permer, $allocated];
    assume Heap[Booler, $allocated];
    assume Heap[Refer, $allocated];
  
  // -- Translating statement: Inter := new(foo) -- 0085.vpr@22.3--22.20
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    Inter := freshObj;
    Mask := Mask[Inter, foo:=Mask[Inter, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: Permer := new(foo) -- 0085.vpr@23.3--23.21
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    Permer := freshObj;
    Mask := Mask[Permer, foo:=Mask[Permer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: Booler := new(foo) -- 0085.vpr@24.3--24.21
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    Booler := freshObj;
    Mask := Mask[Booler, foo:=Mask[Booler, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: Refer := new(foo) -- 0085.vpr@25.3--25.20
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    Refer := freshObj;
    Mask := Mask[Refer, foo:=Mask[Refer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: Inter.foo := 1 -- 0085.vpr@27.3--27.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access Inter.foo (0085.vpr@27.3--27.17) [56307]"}
      FullPerm == Mask[Inter, foo];
    Heap := Heap[Inter, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: Permer.foo := 1 -- 0085.vpr@28.3--28.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access Permer.foo (0085.vpr@28.3--28.18) [56308]"}
      FullPerm == Mask[Permer, foo];
    Heap := Heap[Permer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: Booler.foo := 1 -- 0085.vpr@29.3--29.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access Booler.foo (0085.vpr@29.3--29.18) [56309]"}
      FullPerm == Mask[Booler, foo];
    Heap := Heap[Booler, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: Refer.foo := 1 -- 0085.vpr@30.3--30.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access Refer.foo (0085.vpr@30.3--30.17) [56310]"}
      FullPerm == Mask[Refer, foo];
    Heap := Heap[Refer, foo:=1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method booleanConstants
// ==================================================

procedure booleanConstants() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var trueer: Ref;
  var falseer: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[trueer, $allocated];
    assume Heap[falseer, $allocated];
  
  // -- Translating statement: trueer := new(foo) -- 0085.vpr@38.3--38.21
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    trueer := freshObj;
    Mask := Mask[trueer, foo:=Mask[trueer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: falseer := new(foo) -- 0085.vpr@39.3--39.22
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    falseer := freshObj;
    Mask := Mask[falseer, foo:=Mask[falseer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: trueer.foo := 1 -- 0085.vpr@41.3--41.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access trueer.foo (0085.vpr@41.3--41.18) [56311]"}
      FullPerm == Mask[trueer, foo];
    Heap := Heap[trueer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: falseer.foo := 1 -- 0085.vpr@42.3--42.19
    assert {:msg "  Assignment might fail. There might be insufficient permission to access falseer.foo (0085.vpr@42.3--42.19) [56312]"}
      FullPerm == Mask[falseer, foo];
    Heap := Heap[falseer, foo:=1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method nulll
// ==================================================

procedure nulll() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var nuller: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[nuller, $allocated];
  
  // -- Translating statement: nuller := new(foo) -- 0085.vpr@49.3--49.21
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    nuller := freshObj;
    Mask := Mask[nuller, foo:=Mask[nuller, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: nuller.foo := 1 -- 0085.vpr@51.3--51.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access nuller.foo (0085.vpr@51.3--51.18) [56313]"}
      FullPerm == Mask[nuller, foo];
    Heap := Heap[nuller, foo:=1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method declarationKeywords
// ==================================================

procedure declarationKeywords() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var methoder: Ref;
  var functioner: Ref;
  var predicateer: Ref;
  var programer: Ref;
  var domainer: Ref;
  var axiomer: Ref;
  var varer: Ref;
  var returnser: Ref;
  var fielder: Ref;
  var defineer: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[methoder, $allocated];
    assume Heap[functioner, $allocated];
    assume Heap[predicateer, $allocated];
    assume Heap[programer, $allocated];
    assume Heap[domainer, $allocated];
    assume Heap[axiomer, $allocated];
    assume Heap[varer, $allocated];
    assume Heap[returnser, $allocated];
    assume Heap[fielder, $allocated];
    assume Heap[defineer, $allocated];
  
  // -- Translating statement: methoder := new(foo) -- 0085.vpr@67.3--67.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    methoder := freshObj;
    Mask := Mask[methoder, foo:=Mask[methoder, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: functioner := new(foo) -- 0085.vpr@68.3--68.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    functioner := freshObj;
    Mask := Mask[functioner, foo:=Mask[functioner, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: predicateer := new(foo) -- 0085.vpr@69.3--69.26
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    predicateer := freshObj;
    Mask := Mask[predicateer, foo:=Mask[predicateer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: programer := new(foo) -- 0085.vpr@70.3--70.24
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    programer := freshObj;
    Mask := Mask[programer, foo:=Mask[programer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: domainer := new(foo) -- 0085.vpr@71.3--71.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    domainer := freshObj;
    Mask := Mask[domainer, foo:=Mask[domainer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: axiomer := new(foo) -- 0085.vpr@72.3--72.22
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    axiomer := freshObj;
    Mask := Mask[axiomer, foo:=Mask[axiomer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: varer := new(foo) -- 0085.vpr@73.3--73.20
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    varer := freshObj;
    Mask := Mask[varer, foo:=Mask[varer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: returnser := new(foo) -- 0085.vpr@74.3--74.24
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    returnser := freshObj;
    Mask := Mask[returnser, foo:=Mask[returnser, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: fielder := new(foo) -- 0085.vpr@75.3--75.22
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    fielder := freshObj;
    Mask := Mask[fielder, foo:=Mask[fielder, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: defineer := new(foo) -- 0085.vpr@76.3--76.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    defineer := freshObj;
    Mask := Mask[defineer, foo:=Mask[defineer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: methoder.foo := 1 -- 0085.vpr@78.3--78.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access methoder.foo (0085.vpr@78.3--78.20) [56314]"}
      FullPerm == Mask[methoder, foo];
    Heap := Heap[methoder, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: functioner.foo := 1 -- 0085.vpr@79.3--79.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access functioner.foo (0085.vpr@79.3--79.22) [56315]"}
      FullPerm == Mask[functioner, foo];
    Heap := Heap[functioner, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: predicateer.foo := 1 -- 0085.vpr@80.3--80.23
    assert {:msg "  Assignment might fail. There might be insufficient permission to access predicateer.foo (0085.vpr@80.3--80.23) [56316]"}
      FullPerm == Mask[predicateer, foo];
    Heap := Heap[predicateer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: programer.foo := 1 -- 0085.vpr@81.3--81.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access programer.foo (0085.vpr@81.3--81.21) [56317]"}
      FullPerm == Mask[programer, foo];
    Heap := Heap[programer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: domainer.foo := 1 -- 0085.vpr@82.3--82.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access domainer.foo (0085.vpr@82.3--82.20) [56318]"}
      FullPerm == Mask[domainer, foo];
    Heap := Heap[domainer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: axiomer.foo := 1 -- 0085.vpr@83.3--83.19
    assert {:msg "  Assignment might fail. There might be insufficient permission to access axiomer.foo (0085.vpr@83.3--83.19) [56319]"}
      FullPerm == Mask[axiomer, foo];
    Heap := Heap[axiomer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: varer.foo := 1 -- 0085.vpr@84.3--84.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access varer.foo (0085.vpr@84.3--84.17) [56320]"}
      FullPerm == Mask[varer, foo];
    Heap := Heap[varer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: returnser.foo := 1 -- 0085.vpr@85.3--85.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access returnser.foo (0085.vpr@85.3--85.21) [56321]"}
      FullPerm == Mask[returnser, foo];
    Heap := Heap[returnser, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fielder.foo := 1 -- 0085.vpr@86.3--86.19
    assert {:msg "  Assignment might fail. There might be insufficient permission to access fielder.foo (0085.vpr@86.3--86.19) [56322]"}
      FullPerm == Mask[fielder, foo];
    Heap := Heap[fielder, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: defineer.foo := 1 -- 0085.vpr@87.3--87.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access defineer.foo (0085.vpr@87.3--87.20) [56323]"}
      FullPerm == Mask[defineer, foo];
    Heap := Heap[defineer, foo:=1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method specifications
// ==================================================

procedure specifications() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var requireser: Ref;
  var ensureser: Ref;
  var invarianter: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[requireser, $allocated];
    assume Heap[ensureser, $allocated];
    assume Heap[invarianter, $allocated];
  
  // -- Translating statement: requireser := new(foo) -- 0085.vpr@96.3--96.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    requireser := freshObj;
    Mask := Mask[requireser, foo:=Mask[requireser, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: ensureser := new(foo) -- 0085.vpr@97.3--97.24
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    ensureser := freshObj;
    Mask := Mask[ensureser, foo:=Mask[ensureser, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: invarianter := new(foo) -- 0085.vpr@98.3--98.26
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    invarianter := freshObj;
    Mask := Mask[invarianter, foo:=Mask[invarianter, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: requireser.foo := 1 -- 0085.vpr@100.3--100.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access requireser.foo (0085.vpr@100.3--100.22) [56324]"}
      FullPerm == Mask[requireser, foo];
    Heap := Heap[requireser, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: ensureser.foo := 1 -- 0085.vpr@101.3--101.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access ensureser.foo (0085.vpr@101.3--101.21) [56325]"}
      FullPerm == Mask[ensureser, foo];
    Heap := Heap[ensureser, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: invarianter.foo := 1 -- 0085.vpr@102.3--102.23
    assert {:msg "  Assignment might fail. There might be insufficient permission to access invarianter.foo (0085.vpr@102.3--102.23) [56326]"}
      FullPerm == Mask[invarianter, foo];
    Heap := Heap[invarianter, foo:=1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method statements
// ==================================================

procedure statements() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var folder: Ref;
  var unfolder: Ref;
  var inhaleer: Ref;
  var exhaleer: Ref;
  var newer: Ref;
  var asserter: Ref;
  var assumeer: Ref;
  var gotoer: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[folder, $allocated];
    assume Heap[unfolder, $allocated];
    assume Heap[inhaleer, $allocated];
    assume Heap[exhaleer, $allocated];
    assume Heap[newer, $allocated];
    assume Heap[asserter, $allocated];
    assume Heap[assumeer, $allocated];
    assume Heap[gotoer, $allocated];
  
  // -- Translating statement: folder := new(foo) -- 0085.vpr@116.3--116.21
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    folder := freshObj;
    Mask := Mask[folder, foo:=Mask[folder, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfolder := new(foo) -- 0085.vpr@117.3--117.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    unfolder := freshObj;
    Mask := Mask[unfolder, foo:=Mask[unfolder, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhaleer := new(foo) -- 0085.vpr@118.3--118.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    inhaleer := freshObj;
    Mask := Mask[inhaleer, foo:=Mask[inhaleer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhaleer := new(foo) -- 0085.vpr@119.3--119.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    exhaleer := freshObj;
    Mask := Mask[exhaleer, foo:=Mask[exhaleer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: newer := new(foo) -- 0085.vpr@120.3--120.20
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    newer := freshObj;
    Mask := Mask[newer, foo:=Mask[newer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: asserter := new(foo) -- 0085.vpr@121.3--121.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    asserter := freshObj;
    Mask := Mask[asserter, foo:=Mask[asserter, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assumeer := new(foo) -- 0085.vpr@122.3--122.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    assumeer := freshObj;
    Mask := Mask[assumeer, foo:=Mask[assumeer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: gotoer := new(foo) -- 0085.vpr@123.3--123.21
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    gotoer := freshObj;
    Mask := Mask[gotoer, foo:=Mask[gotoer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: folder.foo := 1 -- 0085.vpr@125.3--125.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access folder.foo (0085.vpr@125.3--125.18) [56327]"}
      FullPerm == Mask[folder, foo];
    Heap := Heap[folder, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfolder.foo := 1 -- 0085.vpr@126.3--126.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access unfolder.foo (0085.vpr@126.3--126.20) [56328]"}
      FullPerm == Mask[unfolder, foo];
    Heap := Heap[unfolder, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhaleer.foo := 1 -- 0085.vpr@127.3--127.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access inhaleer.foo (0085.vpr@127.3--127.20) [56329]"}
      FullPerm == Mask[inhaleer, foo];
    Heap := Heap[inhaleer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhaleer.foo := 1 -- 0085.vpr@128.3--128.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access exhaleer.foo (0085.vpr@128.3--128.20) [56330]"}
      FullPerm == Mask[exhaleer, foo];
    Heap := Heap[exhaleer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: newer.foo := 1 -- 0085.vpr@129.3--129.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access newer.foo (0085.vpr@129.3--129.17) [56331]"}
      FullPerm == Mask[newer, foo];
    Heap := Heap[newer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: asserter.foo := 1 -- 0085.vpr@130.3--130.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access asserter.foo (0085.vpr@130.3--130.20) [56332]"}
      FullPerm == Mask[asserter, foo];
    Heap := Heap[asserter, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assumeer.foo := 1 -- 0085.vpr@131.3--131.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access assumeer.foo (0085.vpr@131.3--131.20) [56333]"}
      FullPerm == Mask[assumeer, foo];
    Heap := Heap[assumeer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: gotoer.foo := 1 -- 0085.vpr@132.3--132.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access gotoer.foo (0085.vpr@132.3--132.18) [56334]"}
      FullPerm == Mask[gotoer, foo];
    Heap := Heap[gotoer, foo:=1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method controlStructures
// ==================================================

procedure controlStructures() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var whileer: Ref;
  var ifer: Ref;
  var elseifer: Ref;
  var elseer: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[whileer, $allocated];
    assume Heap[ifer, $allocated];
    assume Heap[elseifer, $allocated];
    assume Heap[elseer, $allocated];
  
  // -- Translating statement: whileer := new(foo) -- 0085.vpr@142.3--142.22
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    whileer := freshObj;
    Mask := Mask[whileer, foo:=Mask[whileer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: ifer := new(foo) -- 0085.vpr@143.3--143.19
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    ifer := freshObj;
    Mask := Mask[ifer, foo:=Mask[ifer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: elseifer := new(foo) -- 0085.vpr@144.3--144.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    elseifer := freshObj;
    Mask := Mask[elseifer, foo:=Mask[elseifer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: elseer := new(foo) -- 0085.vpr@145.3--145.21
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    elseer := freshObj;
    Mask := Mask[elseer, foo:=Mask[elseer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: whileer.foo := 1 -- 0085.vpr@147.3--147.19
    assert {:msg "  Assignment might fail. There might be insufficient permission to access whileer.foo (0085.vpr@147.3--147.19) [56335]"}
      FullPerm == Mask[whileer, foo];
    Heap := Heap[whileer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: ifer.foo := 1 -- 0085.vpr@148.3--148.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access ifer.foo (0085.vpr@148.3--148.16) [56336]"}
      FullPerm == Mask[ifer, foo];
    Heap := Heap[ifer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: elseifer.foo := 1 -- 0085.vpr@149.3--149.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access elseifer.foo (0085.vpr@149.3--149.20) [56337]"}
      FullPerm == Mask[elseifer, foo];
    Heap := Heap[elseifer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: elseer.foo := 1 -- 0085.vpr@150.3--150.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access elseer.foo (0085.vpr@150.3--150.18) [56338]"}
      FullPerm == Mask[elseer, foo];
    Heap := Heap[elseer, foo:=1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method specialFreshBlock
// ==================================================

procedure specialFreshBlock() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var fresher: Ref;
  var constraininger: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[fresher, $allocated];
    assume Heap[constraininger, $allocated];
  
  // -- Translating statement: fresher := new(foo) -- 0085.vpr@158.3--158.22
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    fresher := freshObj;
    Mask := Mask[fresher, foo:=Mask[fresher, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: constraininger := new(foo) -- 0085.vpr@159.3--159.29
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    constraininger := freshObj;
    Mask := Mask[constraininger, foo:=Mask[constraininger, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: fresher.foo := 1 -- 0085.vpr@161.3--161.19
    assert {:msg "  Assignment might fail. There might be insufficient permission to access fresher.foo (0085.vpr@161.3--161.19) [56339]"}
      FullPerm == Mask[fresher, foo];
    Heap := Heap[fresher, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: constraininger.foo := 1 -- 0085.vpr@162.3--162.26
    assert {:msg "  Assignment might fail. There might be insufficient permission to access constraininger.foo (0085.vpr@162.3--162.26) [56340]"}
      FullPerm == Mask[constraininger, foo];
    Heap := Heap[constraininger, foo:=1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method sequences
// ==================================================

procedure sequences_1() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Seqer: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[Seqer, $allocated];
  
  // -- Translating statement: Seqer := new(foo) -- 0085.vpr@169.3--169.20
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    Seqer := freshObj;
    Mask := Mask[Seqer, foo:=Mask[Seqer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: Seqer.foo := 1 -- 0085.vpr@171.3--171.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access Seqer.foo (0085.vpr@171.3--171.17) [56341]"}
      FullPerm == Mask[Seqer, foo];
    Heap := Heap[Seqer, foo:=1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method setsAndMultisets
// ==================================================

procedure setsAndMultisets() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Seter: Ref;
  var Multiseter: Ref;
  var unioner: Ref;
  var intersectioner: Ref;
  var setminuser: Ref;
  var subseter: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[Seter, $allocated];
    assume Heap[Multiseter, $allocated];
    assume Heap[unioner, $allocated];
    assume Heap[intersectioner, $allocated];
    assume Heap[setminuser, $allocated];
    assume Heap[subseter, $allocated];
  
  // -- Translating statement: Seter := new(foo) -- 0085.vpr@183.3--183.20
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    Seter := freshObj;
    Mask := Mask[Seter, foo:=Mask[Seter, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: Multiseter := new(foo) -- 0085.vpr@184.3--184.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    Multiseter := freshObj;
    Mask := Mask[Multiseter, foo:=Mask[Multiseter, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: unioner := new(foo) -- 0085.vpr@185.3--185.22
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    unioner := freshObj;
    Mask := Mask[unioner, foo:=Mask[unioner, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: intersectioner := new(foo) -- 0085.vpr@186.3--186.29
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    intersectioner := freshObj;
    Mask := Mask[intersectioner, foo:=Mask[intersectioner, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: setminuser := new(foo) -- 0085.vpr@187.3--187.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    setminuser := freshObj;
    Mask := Mask[setminuser, foo:=Mask[setminuser, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: subseter := new(foo) -- 0085.vpr@188.3--188.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    subseter := freshObj;
    Mask := Mask[subseter, foo:=Mask[subseter, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: Seter.foo := 1 -- 0085.vpr@190.3--190.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access Seter.foo (0085.vpr@190.3--190.17) [56342]"}
      FullPerm == Mask[Seter, foo];
    Heap := Heap[Seter, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: Multiseter.foo := 1 -- 0085.vpr@191.3--191.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access Multiseter.foo (0085.vpr@191.3--191.22) [56343]"}
      FullPerm == Mask[Multiseter, foo];
    Heap := Heap[Multiseter, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: unioner.foo := 1 -- 0085.vpr@192.3--192.19
    assert {:msg "  Assignment might fail. There might be insufficient permission to access unioner.foo (0085.vpr@192.3--192.19) [56344]"}
      FullPerm == Mask[unioner, foo];
    Heap := Heap[unioner, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: intersectioner.foo := 1 -- 0085.vpr@193.3--193.26
    assert {:msg "  Assignment might fail. There might be insufficient permission to access intersectioner.foo (0085.vpr@193.3--193.26) [56345]"}
      FullPerm == Mask[intersectioner, foo];
    Heap := Heap[intersectioner, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: setminuser.foo := 1 -- 0085.vpr@194.3--194.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access setminuser.foo (0085.vpr@194.3--194.22) [56346]"}
      FullPerm == Mask[setminuser, foo];
    Heap := Heap[setminuser, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: subseter.foo := 1 -- 0085.vpr@195.3--195.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access subseter.foo (0085.vpr@195.3--195.20) [56347]"}
      FullPerm == Mask[subseter, foo];
    Heap := Heap[subseter, foo:=1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method proverHintExpressions
// ==================================================

procedure proverHintExpressions() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var unfoldinger: Ref;
  var iner: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[unfoldinger, $allocated];
    assume Heap[iner, $allocated];
  
  // -- Translating statement: unfoldinger := new(foo) -- 0085.vpr@203.3--203.26
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    unfoldinger := freshObj;
    Mask := Mask[unfoldinger, foo:=Mask[unfoldinger, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfoldinger.foo := 1 -- 0085.vpr@204.3--204.23
    assert {:msg "  Assignment might fail. There might be insufficient permission to access unfoldinger.foo (0085.vpr@204.3--204.23) [56348]"}
      FullPerm == Mask[unfoldinger, foo];
    Heap := Heap[unfoldinger, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: iner := new(foo) -- 0085.vpr@205.3--205.19
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    iner := freshObj;
    Mask := Mask[iner, foo:=Mask[iner, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: iner.foo := 1 -- 0085.vpr@206.3--206.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access iner.foo (0085.vpr@206.3--206.16) [56349]"}
      FullPerm == Mask[iner, foo];
    Heap := Heap[iner, foo:=1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method oldExpression
// ==================================================

procedure oldExpression() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var older: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[older, $allocated];
  
  // -- Translating statement: older := new(foo) -- 0085.vpr@213.3--213.20
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    older := freshObj;
    Mask := Mask[older, foo:=Mask[older, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: older.foo := 1 -- 0085.vpr@214.3--214.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access older.foo (0085.vpr@214.3--214.17) [56350]"}
      FullPerm == Mask[older, foo];
    Heap := Heap[older, foo:=1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method quantification
// ==================================================

procedure quantification() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var foraller: Ref;
  var existser: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[foraller, $allocated];
    assume Heap[existser, $allocated];
  
  // -- Translating statement: foraller := new(foo) -- 0085.vpr@222.3--222.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    foraller := freshObj;
    Mask := Mask[foraller, foo:=Mask[foraller, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: foraller.foo := 1 -- 0085.vpr@223.3--223.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access foraller.foo (0085.vpr@223.3--223.20) [56351]"}
      FullPerm == Mask[foraller, foo];
    Heap := Heap[foraller, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: existser := new(foo) -- 0085.vpr@224.3--224.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    existser := freshObj;
    Mask := Mask[existser, foo:=Mask[existser, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: existser.foo := 1 -- 0085.vpr@225.3--225.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access existser.foo (0085.vpr@225.3--225.20) [56352]"}
      FullPerm == Mask[existser, foo];
    Heap := Heap[existser, foo:=1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method permissionSyntax
// ==================================================

procedure permissionSyntax() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var accer: Ref;
  var wildcarder: Ref;
  var writer: Ref;
  var noneer: Ref;
  var epsiloner: Ref;
  var permer: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[accer, $allocated];
    assume Heap[wildcarder, $allocated];
    assume Heap[writer, $allocated];
    assume Heap[noneer, $allocated];
    assume Heap[epsiloner, $allocated];
    assume Heap[permer, $allocated];
  
  // -- Translating statement: accer := new(foo) -- 0085.vpr@237.3--237.20
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    accer := freshObj;
    Mask := Mask[accer, foo:=Mask[accer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: accer.foo := 1 -- 0085.vpr@238.3--238.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access accer.foo (0085.vpr@238.3--238.17) [56353]"}
      FullPerm == Mask[accer, foo];
    Heap := Heap[accer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: wildcarder := new(foo) -- 0085.vpr@239.3--239.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    wildcarder := freshObj;
    Mask := Mask[wildcarder, foo:=Mask[wildcarder, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: wildcarder.foo := 1 -- 0085.vpr@240.3--240.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access wildcarder.foo (0085.vpr@240.3--240.22) [56354]"}
      FullPerm == Mask[wildcarder, foo];
    Heap := Heap[wildcarder, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: writer := new(foo) -- 0085.vpr@241.3--241.21
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    writer := freshObj;
    Mask := Mask[writer, foo:=Mask[writer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: writer.foo := 1 -- 0085.vpr@242.3--242.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access writer.foo (0085.vpr@242.3--242.18) [56355]"}
      FullPerm == Mask[writer, foo];
    Heap := Heap[writer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: noneer := new(foo) -- 0085.vpr@243.3--243.21
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    noneer := freshObj;
    Mask := Mask[noneer, foo:=Mask[noneer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: noneer.foo := 1 -- 0085.vpr@244.3--244.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access noneer.foo (0085.vpr@244.3--244.18) [56356]"}
      FullPerm == Mask[noneer, foo];
    Heap := Heap[noneer, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: epsiloner := new(foo) -- 0085.vpr@245.3--245.24
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    epsiloner := freshObj;
    Mask := Mask[epsiloner, foo:=Mask[epsiloner, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: epsiloner.foo := 1 -- 0085.vpr@246.3--246.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access epsiloner.foo (0085.vpr@246.3--246.21) [56357]"}
      FullPerm == Mask[epsiloner, foo];
    Heap := Heap[epsiloner, foo:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: permer := new(foo) -- 0085.vpr@247.3--247.21
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    permer := freshObj;
    Mask := Mask[permer, foo:=Mask[permer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: permer.foo := 1 -- 0085.vpr@248.3--248.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access permer.foo (0085.vpr@248.3--248.18) [56358]"}
      FullPerm == Mask[permer, foo];
    Heap := Heap[permer, foo:=1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method modifiers
// ==================================================

procedure modifiers() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var uniqueer: Ref;
  var freshObj: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[uniqueer, $allocated];
  
  // -- Translating statement: uniqueer := new(foo) -- 0085.vpr@255.3--255.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    uniqueer := freshObj;
    Mask := Mask[uniqueer, foo:=Mask[uniqueer, foo] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: uniqueer.foo := 1 -- 0085.vpr@256.3--256.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access uniqueer.foo (0085.vpr@256.3--256.20) [56359]"}
      FullPerm == Mask[uniqueer, foo];
    Heap := Heap[uniqueer, foo:=1];
    assume state(Heap, Mask);
}