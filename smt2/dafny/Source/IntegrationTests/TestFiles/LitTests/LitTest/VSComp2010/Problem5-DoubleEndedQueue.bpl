// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy

const $$Language$Dafny: bool
uses {
axiom $$Language$Dafny;
}

type Ty;

type Bv0 = int;

const unique TBool: Ty
uses {
axiom Tag(TBool) == TagBool;
}

const unique TChar: Ty
uses {
axiom Tag(TChar) == TagChar;
}

const unique TInt: Ty
uses {
axiom Tag(TInt) == TagInt;
}

const unique TReal: Ty
uses {
axiom Tag(TReal) == TagReal;
}

const unique TORDINAL: Ty
uses {
axiom Tag(TORDINAL) == TagORDINAL;
}

revealed function TBitvector(int) : Ty;

axiom (forall w: int :: { TBitvector(w) } Inv0_TBitvector(TBitvector(w)) == w);

revealed function TSet(Ty) : Ty;

axiom (forall t: Ty :: { TSet(t) } Inv0_TSet(TSet(t)) == t);

axiom (forall t: Ty :: { TSet(t) } Tag(TSet(t)) == TagSet);

revealed function TISet(Ty) : Ty;

axiom (forall t: Ty :: { TISet(t) } Inv0_TISet(TISet(t)) == t);

axiom (forall t: Ty :: { TISet(t) } Tag(TISet(t)) == TagISet);

revealed function TMultiSet(Ty) : Ty;

axiom (forall t: Ty :: { TMultiSet(t) } Inv0_TMultiSet(TMultiSet(t)) == t);

axiom (forall t: Ty :: { TMultiSet(t) } Tag(TMultiSet(t)) == TagMultiSet);

revealed function TSeq(Ty) : Ty;

axiom (forall t: Ty :: { TSeq(t) } Inv0_TSeq(TSeq(t)) == t);

axiom (forall t: Ty :: { TSeq(t) } Tag(TSeq(t)) == TagSeq);

revealed function TMap(Ty, Ty) : Ty;

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Inv0_TMap(TMap(t, u)) == t);

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Inv1_TMap(TMap(t, u)) == u);

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Tag(TMap(t, u)) == TagMap);

revealed function TIMap(Ty, Ty) : Ty;

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Inv0_TIMap(TIMap(t, u)) == t);

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Inv1_TIMap(TIMap(t, u)) == u);

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Tag(TIMap(t, u)) == TagIMap);

revealed function Inv0_TBitvector(Ty) : int;

revealed function Inv0_TSet(Ty) : Ty;

revealed function Inv0_TISet(Ty) : Ty;

revealed function Inv0_TSeq(Ty) : Ty;

revealed function Inv0_TMultiSet(Ty) : Ty;

revealed function Inv0_TMap(Ty) : Ty;

revealed function Inv1_TMap(Ty) : Ty;

revealed function Inv0_TIMap(Ty) : Ty;

revealed function Inv1_TIMap(Ty) : Ty;

type TyTag;

revealed function Tag(Ty) : TyTag;

const unique TagBool: TyTag;

const unique TagChar: TyTag;

const unique TagInt: TyTag;

const unique TagReal: TyTag;

const unique TagORDINAL: TyTag;

const unique TagSet: TyTag;

const unique TagISet: TyTag;

const unique TagMultiSet: TyTag;

const unique TagSeq: TyTag;

const unique TagMap: TyTag;

const unique TagIMap: TyTag;

const unique TagClass: TyTag;

type TyTagFamily;

revealed function TagFamily(Ty) : TyTagFamily;

revealed function {:identity} Lit<T>(x: T) : T
uses {
axiom (forall<T> x: T :: {:identity} { Lit(x): T } Lit(x): T == x);
}

axiom (forall<T> x: T :: { $Box(Lit(x)) } $Box(Lit(x)) == Lit($Box(x)));

revealed function {:identity} LitInt(x: int) : int
uses {
axiom (forall x: int :: {:identity} { LitInt(x): int } LitInt(x): int == x);
}

axiom (forall x: int :: { $Box(LitInt(x)) } $Box(LitInt(x)) == Lit($Box(x)));

revealed function {:identity} LitReal(x: real) : real
uses {
axiom (forall x: real :: {:identity} { LitReal(x): real } LitReal(x): real == x);
}

axiom (forall x: real :: { $Box(LitReal(x)) } $Box(LitReal(x)) == Lit($Box(x)));

revealed function {:inline} char#IsChar(n: int) : bool
{
  (0 <= n && n < 55296) || (57344 <= n && n < 1114112)
}

type char;

revealed function char#FromInt(int) : char;

axiom (forall n: int :: 
  { char#FromInt(n) } 
  char#IsChar(n) ==> char#ToInt(char#FromInt(n)) == n);

revealed function char#ToInt(char) : int;

axiom (forall ch: char :: 
  { char#ToInt(ch) } 
  char#FromInt(char#ToInt(ch)) == ch && char#IsChar(char#ToInt(ch)));

revealed function char#Plus(char, char) : char;

axiom (forall a: char, b: char :: 
  { char#Plus(a, b) } 
  char#Plus(a, b) == char#FromInt(char#ToInt(a) + char#ToInt(b)));

revealed function char#Minus(char, char) : char;

axiom (forall a: char, b: char :: 
  { char#Minus(a, b) } 
  char#Minus(a, b) == char#FromInt(char#ToInt(a) - char#ToInt(b)));

type ref;

const null: ref;

type Box;

const $ArbitraryBoxValue: Box;

revealed function $Box<T>(T) : Box;

revealed function $Unbox<T>(Box) : T;

axiom (forall<T> x: T :: { $Box(x) } $Unbox($Box(x)) == x);

axiom (forall<T> x: Box :: { $Unbox(x): T } $Box($Unbox(x): T) == x);

revealed function $IsBox(Box, Ty) : bool;

revealed function $IsAllocBox(Box, Ty, Heap) : bool;

axiom (forall bx: Box :: 
  { $IsBox(bx, TInt) } 
  $IsBox(bx, TInt) ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, TInt));

axiom (forall bx: Box :: 
  { $IsBox(bx, TReal) } 
  $IsBox(bx, TReal)
     ==> $Box($Unbox(bx): real) == bx && $Is($Unbox(bx): real, TReal));

axiom (forall bx: Box :: 
  { $IsBox(bx, TBool) } 
  $IsBox(bx, TBool)
     ==> $Box($Unbox(bx): bool) == bx && $Is($Unbox(bx): bool, TBool));

axiom (forall bx: Box :: 
  { $IsBox(bx, TChar) } 
  $IsBox(bx, TChar)
     ==> $Box($Unbox(bx): char) == bx && $Is($Unbox(bx): char, TChar));

axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(0)) } 
  $IsBox(bx, TBitvector(0))
     ==> $Box($Unbox(bx): Bv0) == bx && $Is($Unbox(bx): Bv0, TBitvector(0)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TSet(t)) } 
  $IsBox(bx, TSet(t))
     ==> $Box($Unbox(bx): Set) == bx && $Is($Unbox(bx): Set, TSet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TISet(t)) } 
  $IsBox(bx, TISet(t))
     ==> $Box($Unbox(bx): ISet) == bx && $Is($Unbox(bx): ISet, TISet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TMultiSet(t)) } 
  $IsBox(bx, TMultiSet(t))
     ==> $Box($Unbox(bx): MultiSet) == bx && $Is($Unbox(bx): MultiSet, TMultiSet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TSeq(t)) } 
  $IsBox(bx, TSeq(t))
     ==> $Box($Unbox(bx): Seq) == bx && $Is($Unbox(bx): Seq, TSeq(t)));

axiom (forall bx: Box, s: Ty, t: Ty :: 
  { $IsBox(bx, TMap(s, t)) } 
  $IsBox(bx, TMap(s, t))
     ==> $Box($Unbox(bx): Map) == bx && $Is($Unbox(bx): Map, TMap(s, t)));

axiom (forall bx: Box, s: Ty, t: Ty :: 
  { $IsBox(bx, TIMap(s, t)) } 
  $IsBox(bx, TIMap(s, t))
     ==> $Box($Unbox(bx): IMap) == bx && $Is($Unbox(bx): IMap, TIMap(s, t)));

axiom (forall<T> v: T, t: Ty :: 
  { $IsBox($Box(v), t) } 
  $IsBox($Box(v), t) <==> $Is(v, t));

axiom (forall<T> v: T, t: Ty, h: Heap :: 
  { $IsAllocBox($Box(v), t, h) } 
  $IsAllocBox($Box(v), t, h) <==> $IsAlloc(v, t, h));

revealed function $Is<T>(T, Ty) : bool;

axiom (forall v: int :: { $Is(v, TInt) } $Is(v, TInt));

axiom (forall v: real :: { $Is(v, TReal) } $Is(v, TReal));

axiom (forall v: bool :: { $Is(v, TBool) } $Is(v, TBool));

axiom (forall v: char :: { $Is(v, TChar) } $Is(v, TChar));

axiom (forall v: ORDINAL :: { $Is(v, TORDINAL) } $Is(v, TORDINAL));

axiom (forall v: Bv0 :: { $Is(v, TBitvector(0)) } $Is(v, TBitvector(0)));

axiom (forall v: Set, t0: Ty :: 
  { $Is(v, TSet(t0)) } 
  $Is(v, TSet(t0))
     <==> (forall bx: Box :: 
      { Set#IsMember(v, bx) } 
      Set#IsMember(v, bx) ==> $IsBox(bx, t0)));

axiom (forall v: ISet, t0: Ty :: 
  { $Is(v, TISet(t0)) } 
  $Is(v, TISet(t0)) <==> (forall bx: Box :: { v[bx] } v[bx] ==> $IsBox(bx, t0)));

axiom (forall v: MultiSet, t0: Ty :: 
  { $Is(v, TMultiSet(t0)) } 
  $Is(v, TMultiSet(t0))
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(v, bx) } 
      0 < MultiSet#Multiplicity(v, bx) ==> $IsBox(bx, t0)));

axiom (forall v: MultiSet, t0: Ty :: 
  { $Is(v, TMultiSet(t0)) } 
  $Is(v, TMultiSet(t0)) ==> $IsGoodMultiSet(v));

axiom (forall v: Seq, t0: Ty :: 
  { $Is(v, TSeq(t0)) } 
  $Is(v, TSeq(t0))
     <==> (forall i: int :: 
      { Seq#Index(v, i) } 
      0 <= i && i < Seq#Length(v) ==> $IsBox(Seq#Index(v, i), t0)));

axiom (forall v: Map, t0: Ty, t1: Ty :: 
  { $Is(v, TMap(t0, t1)) } 
  $Is(v, TMap(t0, t1))
     <==> (forall bx: Box :: 
      { Map#Elements(v)[bx] } { Set#IsMember(Map#Domain(v), bx) } 
      Set#IsMember(Map#Domain(v), bx)
         ==> $IsBox(Map#Elements(v)[bx], t1) && $IsBox(bx, t0)));

axiom (forall v: Map, t0: Ty, t1: Ty :: 
  { $Is(v, TMap(t0, t1)) } 
  $Is(v, TMap(t0, t1))
     ==> $Is(Map#Domain(v), TSet(t0))
       && $Is(Map#Values(v), TSet(t1))
       && $Is(Map#Items(v), TSet(Tclass._System.Tuple2(t0, t1))));

axiom (forall v: IMap, t0: Ty, t1: Ty :: 
  { $Is(v, TIMap(t0, t1)) } 
  $Is(v, TIMap(t0, t1))
     <==> (forall bx: Box :: 
      { IMap#Elements(v)[bx] } { IMap#Domain(v)[bx] } 
      IMap#Domain(v)[bx] ==> $IsBox(IMap#Elements(v)[bx], t1) && $IsBox(bx, t0)));

axiom (forall v: IMap, t0: Ty, t1: Ty :: 
  { $Is(v, TIMap(t0, t1)) } 
  $Is(v, TIMap(t0, t1))
     ==> $Is(IMap#Domain(v), TISet(t0))
       && $Is(IMap#Values(v), TISet(t1))
       && $Is(IMap#Items(v), TISet(Tclass._System.Tuple2(t0, t1))));

revealed function $IsAlloc<T>(T, Ty, Heap) : bool;

axiom (forall h: Heap, v: int :: { $IsAlloc(v, TInt, h) } $IsAlloc(v, TInt, h));

axiom (forall h: Heap, v: real :: { $IsAlloc(v, TReal, h) } $IsAlloc(v, TReal, h));

axiom (forall h: Heap, v: bool :: { $IsAlloc(v, TBool, h) } $IsAlloc(v, TBool, h));

axiom (forall h: Heap, v: char :: { $IsAlloc(v, TChar, h) } $IsAlloc(v, TChar, h));

axiom (forall h: Heap, v: ORDINAL :: 
  { $IsAlloc(v, TORDINAL, h) } 
  $IsAlloc(v, TORDINAL, h));

axiom (forall v: Bv0, h: Heap :: 
  { $IsAlloc(v, TBitvector(0), h) } 
  $IsAlloc(v, TBitvector(0), h));

axiom (forall v: Set, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TSet(t0), h) } 
  $IsAlloc(v, TSet(t0), h)
     <==> (forall bx: Box :: 
      { Set#IsMember(v, bx) } 
      Set#IsMember(v, bx) ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: ISet, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TISet(t0), h) } 
  $IsAlloc(v, TISet(t0), h)
     <==> (forall bx: Box :: { v[bx] } v[bx] ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: MultiSet, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TMultiSet(t0), h) } 
  $IsAlloc(v, TMultiSet(t0), h)
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(v, bx) } 
      0 < MultiSet#Multiplicity(v, bx) ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: Seq, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TSeq(t0), h) } 
  $IsAlloc(v, TSeq(t0), h)
     <==> (forall i: int :: 
      { Seq#Index(v, i) } 
      0 <= i && i < Seq#Length(v) ==> $IsAllocBox(Seq#Index(v, i), t0, h)));

axiom (forall v: Map, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(v, TMap(t0, t1), h) } 
  $IsAlloc(v, TMap(t0, t1), h)
     <==> (forall bx: Box :: 
      { Map#Elements(v)[bx] } { Set#IsMember(Map#Domain(v), bx) } 
      Set#IsMember(Map#Domain(v), bx)
         ==> $IsAllocBox(Map#Elements(v)[bx], t1, h) && $IsAllocBox(bx, t0, h)));

axiom (forall v: IMap, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(v, TIMap(t0, t1), h) } 
  $IsAlloc(v, TIMap(t0, t1), h)
     <==> (forall bx: Box :: 
      { IMap#Elements(v)[bx] } { IMap#Domain(v)[bx] } 
      IMap#Domain(v)[bx]
         ==> $IsAllocBox(IMap#Elements(v)[bx], t1, h) && $IsAllocBox(bx, t0, h)));

revealed function $AlwaysAllocated(Ty) : bool;

axiom (forall ty: Ty :: 
  { $AlwaysAllocated(ty) } 
  $AlwaysAllocated(ty)
     ==> (forall h: Heap, v: Box :: 
      { $IsAllocBox(v, ty, h) } 
      $IsBox(v, ty) ==> $IsAllocBox(v, ty, h)));

revealed function $OlderTag(Heap) : bool;

type ClassName;

const unique class._System.int: ClassName;

const unique class._System.bool: ClassName;

const unique class._System.set: ClassName;

const unique class._System.seq: ClassName;

const unique class._System.multiset: ClassName;

revealed function Tclass._System.object?() : Ty
uses {
// Tclass._System.object? Tag
axiom Tag(Tclass._System.object?()) == Tagclass._System.object?
   && TagFamily(Tclass._System.object?()) == tytagFamily$object;
}

revealed function Tclass._System.Tuple2(Ty, Ty) : Ty;

revealed function dtype(ref) : Ty;

revealed function TypeTuple(a: ClassName, b: ClassName) : ClassName;

revealed function TypeTupleCar(ClassName) : ClassName;

revealed function TypeTupleCdr(ClassName) : ClassName;

axiom (forall a: ClassName, b: ClassName :: 
  { TypeTuple(a, b) } 
  TypeTupleCar(TypeTuple(a, b)) == a && TypeTupleCdr(TypeTuple(a, b)) == b);

type HandleType;

revealed function SetRef_to_SetBox(s: [ref]bool) : Set;

axiom (forall s: [ref]bool, bx: Box :: 
  { Set#IsMember(SetRef_to_SetBox(s), bx) } 
  Set#IsMember(SetRef_to_SetBox(s), bx) == s[$Unbox(bx): ref]);

axiom (forall s: [ref]bool :: 
  { SetRef_to_SetBox(s) } 
  $Is(SetRef_to_SetBox(s), TSet(Tclass._System.object?())));

revealed function Apply1(Ty, Ty, Heap, HandleType, Box) : Box;

type DatatypeType;

type DtCtorId;

revealed function DatatypeCtorId(DatatypeType) : DtCtorId;

revealed function DtRank(DatatypeType) : int;

revealed function BoxRank(Box) : int;

axiom (forall d: DatatypeType :: { BoxRank($Box(d)) } BoxRank($Box(d)) == DtRank(d));

type ORDINAL = Box;

revealed function ORD#IsNat(ORDINAL) : bool;

revealed function ORD#Offset(ORDINAL) : int;

axiom (forall o: ORDINAL :: { ORD#Offset(o) } 0 <= ORD#Offset(o));

revealed function {:inline} ORD#IsLimit(o: ORDINAL) : bool
{
  ORD#Offset(o) == 0
}

revealed function {:inline} ORD#IsSucc(o: ORDINAL) : bool
{
  0 < ORD#Offset(o)
}

revealed function ORD#FromNat(int) : ORDINAL;

axiom (forall n: int :: 
  { ORD#FromNat(n) } 
  0 <= n ==> ORD#IsNat(ORD#FromNat(n)) && ORD#Offset(ORD#FromNat(n)) == n);

axiom (forall o: ORDINAL :: 
  { ORD#Offset(o) } { ORD#IsNat(o) } 
  ORD#IsNat(o) ==> o == ORD#FromNat(ORD#Offset(o)));

revealed function ORD#Less(ORDINAL, ORDINAL) : bool;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Less(o, p) } 
  (ORD#Less(o, p) ==> o != p)
     && (ORD#IsNat(o) && !ORD#IsNat(p) ==> ORD#Less(o, p))
     && (ORD#IsNat(o) && ORD#IsNat(p)
       ==> ORD#Less(o, p) == (ORD#Offset(o) < ORD#Offset(p)))
     && (ORD#Less(o, p) && ORD#IsNat(p) ==> ORD#IsNat(o)));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Less(o, p), ORD#Less(p, o) } 
  ORD#Less(o, p) || o == p || ORD#Less(p, o));

axiom (forall o: ORDINAL, p: ORDINAL, r: ORDINAL :: 
  { ORD#Less(o, p), ORD#Less(p, r) } { ORD#Less(o, p), ORD#Less(o, r) } 
  ORD#Less(o, p) && ORD#Less(p, r) ==> ORD#Less(o, r));

revealed function ORD#LessThanLimit(ORDINAL, ORDINAL) : bool;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#LessThanLimit(o, p) } 
  ORD#LessThanLimit(o, p) == ORD#Less(o, p));

revealed function ORD#Plus(ORDINAL, ORDINAL) : ORDINAL;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (ORD#IsNat(ORD#Plus(o, p)) ==> ORD#IsNat(o) && ORD#IsNat(p))
     && (ORD#IsNat(p)
       ==> ORD#IsNat(ORD#Plus(o, p)) == ORD#IsNat(o)
         && ORD#Offset(ORD#Plus(o, p)) == ORD#Offset(o) + ORD#Offset(p)));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (o == ORD#Plus(o, p) || ORD#Less(o, ORD#Plus(o, p)))
     && (p == ORD#Plus(o, p) || ORD#Less(p, ORD#Plus(o, p))));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (o == ORD#FromNat(0) ==> ORD#Plus(o, p) == p)
     && (p == ORD#FromNat(0) ==> ORD#Plus(o, p) == o));

revealed function ORD#Minus(ORDINAL, ORDINAL) : ORDINAL;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Minus(o, p) } 
  ORD#IsNat(p) && ORD#Offset(p) <= ORD#Offset(o)
     ==> ORD#IsNat(ORD#Minus(o, p)) == ORD#IsNat(o)
       && ORD#Offset(ORD#Minus(o, p)) == ORD#Offset(o) - ORD#Offset(p));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Minus(o, p) } 
  ORD#IsNat(p) && ORD#Offset(p) <= ORD#Offset(o)
     ==> (p == ORD#FromNat(0) && ORD#Minus(o, p) == o)
       || (p != ORD#FromNat(0) && ORD#Less(ORD#Minus(o, p), o)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Plus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n
     ==> ORD#Plus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
       == ORD#Plus(o, ORD#FromNat(m + n)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Minus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && m + n <= ORD#Offset(o)
     ==> ORD#Minus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
       == ORD#Minus(o, ORD#FromNat(m + n)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && n <= ORD#Offset(o) + m
     ==> (0 <= m - n
         ==> ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Plus(o, ORD#FromNat(m - n)))
       && (m - n <= 0
         ==> ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Minus(o, ORD#FromNat(n - m))));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && n <= ORD#Offset(o) + m
     ==> (0 <= m - n
         ==> ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Minus(o, ORD#FromNat(m - n)))
       && (m - n <= 0
         ==> ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Plus(o, ORD#FromNat(n - m))));

const $ModuleContextHeight: int;

const $FunctionContextHeight: int;

type LayerType;

const $LZ: LayerType;

revealed function $LS(LayerType) : LayerType;

revealed function AsFuelBottom(LayerType) : LayerType;

revealed function AtLayer<A>([LayerType]A, LayerType) : A;

axiom (forall<A> f: [LayerType]A, ly: LayerType :: 
  { AtLayer(f, ly) } 
  AtLayer(f, ly) == f[ly]);

axiom (forall<A> f: [LayerType]A, ly: LayerType :: 
  { AtLayer(f, $LS(ly)) } 
  AtLayer(f, $LS(ly)) == AtLayer(f, ly));

type Field;

revealed function FDim(Field) : int
uses {
axiom FDim(alloc) == 0;
}

revealed function IndexField(int) : Field;

axiom (forall i: int :: { IndexField(i) } FDim(IndexField(i)) == 1);

revealed function IndexField_Inverse(Field) : int;

axiom (forall i: int :: { IndexField(i) } IndexField_Inverse(IndexField(i)) == i);

revealed function MultiIndexField(Field, int) : Field;

axiom (forall f: Field, i: int :: 
  { MultiIndexField(f, i) } 
  FDim(MultiIndexField(f, i)) == FDim(f) + 1);

revealed function MultiIndexField_Inverse0(Field) : Field;

revealed function MultiIndexField_Inverse1(Field) : int;

axiom (forall f: Field, i: int :: 
  { MultiIndexField(f, i) } 
  MultiIndexField_Inverse0(MultiIndexField(f, i)) == f
     && MultiIndexField_Inverse1(MultiIndexField(f, i)) == i);

revealed function DeclType(Field) : ClassName;

type NameFamily;

revealed function DeclName(Field) : NameFamily
uses {
axiom DeclName(alloc) == allocName;
}

revealed function FieldOfDecl(ClassName, NameFamily) : Field;

axiom (forall cl: ClassName, nm: NameFamily :: 
  { FieldOfDecl(cl, nm): Field } 
  DeclType(FieldOfDecl(cl, nm): Field) == cl
     && DeclName(FieldOfDecl(cl, nm): Field) == nm);

revealed function $IsGhostField(Field) : bool
uses {
axiom $IsGhostField(alloc);
}

axiom (forall h: Heap, k: Heap :: 
  { $HeapSuccGhost(h, k) } 
  $HeapSuccGhost(h, k)
     ==> $HeapSucc(h, k)
       && (forall o: ref, f: Field :: 
        { read(k, o, f) } 
        !$IsGhostField(f) ==> read(h, o, f) == read(k, o, f)));

axiom (forall<T> h: Heap, k: Heap, v: T, t: Ty :: 
  { $HeapSucc(h, k), $IsAlloc(v, t, h) } 
  $HeapSucc(h, k) ==> $IsAlloc(v, t, h) ==> $IsAlloc(v, t, k));

axiom (forall h: Heap, k: Heap, bx: Box, t: Ty :: 
  { $HeapSucc(h, k), $IsAllocBox(bx, t, h) } 
  $HeapSucc(h, k) ==> $IsAllocBox(bx, t, h) ==> $IsAllocBox(bx, t, k));

const unique alloc: Field;

const unique allocName: NameFamily;

revealed function _System.array.Length(a: ref) : int;

axiom (forall o: ref :: { _System.array.Length(o) } 0 <= _System.array.Length(o));

revealed function Int(x: real) : int
uses {
axiom (forall x: real :: { Int(x): int } Int(x): int == int(x));
}

revealed function Real(x: int) : real
uses {
axiom (forall x: int :: { Real(x): real } Real(x): real == real(x));
}

axiom (forall i: int :: { Int(Real(i)) } Int(Real(i)) == i);

revealed function {:inline} _System.real.Floor(x: real) : int
{
  Int(x)
}

type Heap = [ref][Field]Box;

revealed function {:inline} read(H: Heap, r: ref, f: Field) : Box
{
  H[r][f]
}

revealed function {:inline} update(H: Heap, r: ref, f: Field, v: Box) : Heap
{
  H[r := H[r][f := v]]
}

revealed function $IsGoodHeap(Heap) : bool;

revealed function $IsHeapAnchor(Heap) : bool;

var $Heap: Heap where $IsGoodHeap($Heap) && $IsHeapAnchor($Heap);

const $OneHeap: Heap
uses {
axiom $IsGoodHeap($OneHeap);
}

revealed function $HeapSucc(Heap, Heap) : bool;

axiom (forall h: Heap, r: ref, f: Field, x: Box :: 
  { update(h, r, f, x) } 
  $IsGoodHeap(update(h, r, f, x)) ==> $HeapSucc(h, update(h, r, f, x)));

axiom (forall a: Heap, b: Heap, c: Heap :: 
  { $HeapSucc(a, b), $HeapSucc(b, c) } 
  a != c ==> $HeapSucc(a, b) && $HeapSucc(b, c) ==> $HeapSucc(a, c));

axiom (forall h: Heap, k: Heap :: 
  { $HeapSucc(h, k) } 
  $HeapSucc(h, k)
     ==> (forall o: ref :: 
      { read(k, o, alloc) } 
      $Unbox(read(h, o, alloc)) ==> $Unbox(read(k, o, alloc))));

revealed function $HeapSuccGhost(Heap, Heap) : bool;

procedure $YieldHavoc(this: ref, rds: Set, nw: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> 
      $o == this || Set#IsMember(rds, $Box($o)) || Set#IsMember(nw, $Box($o))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterHavoc0(this: ref, rds: Set, modi: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> 
      Set#IsMember(rds, $Box($o)) && !Set#IsMember(modi, $Box($o)) && $o != this
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterHavoc1(this: ref, modi: Set, nw: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || $o == this
         || Set#IsMember(modi, $Box($o))
         || Set#IsMember(nw, $Box($o)));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterCollectNewObjects(prevHeap: Heap, newHeap: Heap, this: ref, NW: Field) returns (s: Set);
  ensures (forall bx: Box :: 
    { Set#IsMember(s, bx) } 
    Set#IsMember(s, bx)
       <==> Set#IsMember($Unbox(read(newHeap, this, NW)): Set, bx)
         || (
          $Unbox(bx) != null
           && !$Unbox(read(prevHeap, $Unbox(bx): ref, alloc))
           && $Unbox(read(newHeap, $Unbox(bx): ref, alloc))));



type Set;

revealed function Set#Card(s: Set) : int;

axiom (forall s: Set :: { Set#Card(s) } 0 <= Set#Card(s));

revealed function Set#Empty() : Set;

revealed function Set#IsMember(s: Set, o: Box) : bool;

axiom (forall o: Box :: 
  { Set#IsMember(Set#Empty(), o) } 
  !Set#IsMember(Set#Empty(), o));

axiom (forall s: Set :: 
  { Set#Card(s) } 
  (Set#Card(s) == 0 <==> s == Set#Empty())
     && (Set#Card(s) != 0
       ==> (exists x: Box :: { Set#IsMember(s, x) } Set#IsMember(s, x))));

revealed function Set#UnionOne(s: Set, o: Box) : Set;

axiom (forall a: Set, x: Box, o: Box :: 
  { Set#IsMember(Set#UnionOne(a, x), o) } 
  Set#IsMember(Set#UnionOne(a, x), o) <==> o == x || Set#IsMember(a, o));

axiom (forall a: Set, x: Box :: 
  { Set#UnionOne(a, x) } 
  Set#IsMember(Set#UnionOne(a, x), x));

axiom (forall a: Set, x: Box, y: Box :: 
  { Set#UnionOne(a, x), Set#IsMember(a, y) } 
  Set#IsMember(a, y) ==> Set#IsMember(Set#UnionOne(a, x), y));

axiom (forall a: Set, x: Box :: 
  { Set#Card(Set#UnionOne(a, x)) } 
  Set#IsMember(a, x) ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a));

axiom (forall a: Set, x: Box :: 
  { Set#Card(Set#UnionOne(a, x)) } 
  !Set#IsMember(a, x) ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a) + 1);

revealed function Set#Union(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Union(a, b), o) } 
  Set#IsMember(Set#Union(a, b), o) <==> Set#IsMember(a, o) || Set#IsMember(b, o));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Union(a, b), Set#IsMember(a, y) } 
  Set#IsMember(a, y) ==> Set#IsMember(Set#Union(a, b), y));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Union(a, b), Set#IsMember(b, y) } 
  Set#IsMember(b, y) ==> Set#IsMember(Set#Union(a, b), y));

axiom (forall a: Set, b: Set :: 
  { Set#Union(a, b) } 
  Set#Disjoint(a, b)
     ==> Set#Difference(Set#Union(a, b), a) == b
       && Set#Difference(Set#Union(a, b), b) == a);

revealed function Set#Intersection(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Intersection(a, b), o) } 
  Set#IsMember(Set#Intersection(a, b), o)
     <==> Set#IsMember(a, o) && Set#IsMember(b, o));

axiom (forall a: Set, b: Set :: 
  { Set#Union(Set#Union(a, b), b) } 
  Set#Union(Set#Union(a, b), b) == Set#Union(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Union(a, Set#Union(a, b)) } 
  Set#Union(a, Set#Union(a, b)) == Set#Union(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Intersection(Set#Intersection(a, b), b) } 
  Set#Intersection(Set#Intersection(a, b), b) == Set#Intersection(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Intersection(a, Set#Intersection(a, b)) } 
  Set#Intersection(a, Set#Intersection(a, b)) == Set#Intersection(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Card(Set#Union(a, b)) } { Set#Card(Set#Intersection(a, b)) } 
  Set#Card(Set#Union(a, b)) + Set#Card(Set#Intersection(a, b))
     == Set#Card(a) + Set#Card(b));

revealed function Set#Difference(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Difference(a, b), o) } 
  Set#IsMember(Set#Difference(a, b), o)
     <==> Set#IsMember(a, o) && !Set#IsMember(b, o));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Difference(a, b), Set#IsMember(b, y) } 
  Set#IsMember(b, y) ==> !Set#IsMember(Set#Difference(a, b), y));

axiom (forall a: Set, b: Set :: 
  { Set#Card(Set#Difference(a, b)) } 
  Set#Card(Set#Difference(a, b))
         + Set#Card(Set#Difference(b, a))
         + Set#Card(Set#Intersection(a, b))
       == Set#Card(Set#Union(a, b))
     && Set#Card(Set#Difference(a, b)) == Set#Card(a) - Set#Card(Set#Intersection(a, b)));

revealed function Set#Subset(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Subset(a, b) } 
  Set#Subset(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      Set#IsMember(a, o) ==> Set#IsMember(b, o)));

revealed function Set#Equal(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Equal(a, b) } 
  Set#Equal(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      Set#IsMember(a, o) <==> Set#IsMember(b, o)));

axiom (forall a: Set, b: Set :: { Set#Equal(a, b) } Set#Equal(a, b) ==> a == b);

revealed function Set#Disjoint(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Disjoint(a, b) } 
  Set#Disjoint(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      !Set#IsMember(a, o) || !Set#IsMember(b, o)));

revealed function Set#FromBoogieMap([Box]bool) : Set;

axiom (forall m: [Box]bool, bx: Box :: 
  { Set#IsMember(Set#FromBoogieMap(m), bx) } 
  Set#IsMember(Set#FromBoogieMap(m), bx) == m[bx]);

type ISet = [Box]bool;

revealed function ISet#Empty() : ISet;

axiom (forall o: Box :: { ISet#Empty()[o] } !ISet#Empty()[o]);

revealed function ISet#FromSet(Set) : ISet;

axiom (forall s: Set, bx: Box :: 
  { ISet#FromSet(s)[bx] } 
  ISet#FromSet(s)[bx] == Set#IsMember(s, bx));

revealed function ISet#UnionOne(ISet, Box) : ISet;

axiom (forall a: ISet, x: Box, o: Box :: 
  { ISet#UnionOne(a, x)[o] } 
  ISet#UnionOne(a, x)[o] <==> o == x || a[o]);

axiom (forall a: ISet, x: Box :: { ISet#UnionOne(a, x) } ISet#UnionOne(a, x)[x]);

axiom (forall a: ISet, x: Box, y: Box :: 
  { ISet#UnionOne(a, x), a[y] } 
  a[y] ==> ISet#UnionOne(a, x)[y]);

revealed function ISet#Union(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Union(a, b)[o] } 
  ISet#Union(a, b)[o] <==> a[o] || b[o]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Union(a, b), a[y] } 
  a[y] ==> ISet#Union(a, b)[y]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Union(a, b), b[y] } 
  b[y] ==> ISet#Union(a, b)[y]);

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(a, b) } 
  ISet#Disjoint(a, b)
     ==> ISet#Difference(ISet#Union(a, b), a) == b
       && ISet#Difference(ISet#Union(a, b), b) == a);

revealed function ISet#Intersection(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Intersection(a, b)[o] } 
  ISet#Intersection(a, b)[o] <==> a[o] && b[o]);

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(ISet#Union(a, b), b) } 
  ISet#Union(ISet#Union(a, b), b) == ISet#Union(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(a, ISet#Union(a, b)) } 
  ISet#Union(a, ISet#Union(a, b)) == ISet#Union(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Intersection(ISet#Intersection(a, b), b) } 
  ISet#Intersection(ISet#Intersection(a, b), b) == ISet#Intersection(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Intersection(a, ISet#Intersection(a, b)) } 
  ISet#Intersection(a, ISet#Intersection(a, b)) == ISet#Intersection(a, b));

revealed function ISet#Difference(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Difference(a, b)[o] } 
  ISet#Difference(a, b)[o] <==> a[o] && !b[o]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Difference(a, b), b[y] } 
  b[y] ==> !ISet#Difference(a, b)[y]);

revealed function ISet#Subset(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Subset(a, b) } 
  ISet#Subset(a, b) <==> (forall o: Box :: { a[o] } { b[o] } a[o] ==> b[o]));

revealed function ISet#Equal(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Equal(a, b) } 
  ISet#Equal(a, b) <==> (forall o: Box :: { a[o] } { b[o] } a[o] <==> b[o]));

axiom (forall a: ISet, b: ISet :: { ISet#Equal(a, b) } ISet#Equal(a, b) ==> a == b);

revealed function ISet#Disjoint(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Disjoint(a, b) } 
  ISet#Disjoint(a, b) <==> (forall o: Box :: { a[o] } { b[o] } !a[o] || !b[o]));

revealed function Math#min(a: int, b: int) : int;

axiom (forall a: int, b: int :: { Math#min(a, b) } a <= b <==> Math#min(a, b) == a);

axiom (forall a: int, b: int :: { Math#min(a, b) } b <= a <==> Math#min(a, b) == b);

axiom (forall a: int, b: int :: 
  { Math#min(a, b) } 
  Math#min(a, b) == a || Math#min(a, b) == b);

revealed function Math#clip(a: int) : int;

axiom (forall a: int :: { Math#clip(a) } 0 <= a ==> Math#clip(a) == a);

axiom (forall a: int :: { Math#clip(a) } a < 0 ==> Math#clip(a) == 0);

type MultiSet;

revealed function MultiSet#Multiplicity(m: MultiSet, o: Box) : int;

revealed function MultiSet#UpdateMultiplicity(m: MultiSet, o: Box, n: int) : MultiSet;

axiom (forall m: MultiSet, o: Box, n: int, p: Box :: 
  { MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p) } 
  0 <= n
     ==> (o == p ==> MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p) == n)
       && (o != p
         ==> MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p)
           == MultiSet#Multiplicity(m, p)));

revealed function $IsGoodMultiSet(ms: MultiSet) : bool;

axiom (forall ms: MultiSet :: 
  { $IsGoodMultiSet(ms) } 
  $IsGoodMultiSet(ms)
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(ms, bx) } 
      0 <= MultiSet#Multiplicity(ms, bx)
         && MultiSet#Multiplicity(ms, bx) <= MultiSet#Card(ms)));

revealed function MultiSet#Card(m: MultiSet) : int;

axiom (forall s: MultiSet :: { MultiSet#Card(s) } 0 <= MultiSet#Card(s));

axiom (forall s: MultiSet, x: Box, n: int :: 
  { MultiSet#Card(MultiSet#UpdateMultiplicity(s, x, n)) } 
  0 <= n
     ==> MultiSet#Card(MultiSet#UpdateMultiplicity(s, x, n))
       == MultiSet#Card(s) - MultiSet#Multiplicity(s, x) + n);

revealed function MultiSet#Empty() : MultiSet;

axiom (forall o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Empty(), o) } 
  MultiSet#Multiplicity(MultiSet#Empty(), o) == 0);

axiom (forall s: MultiSet :: 
  { MultiSet#Card(s) } 
  (MultiSet#Card(s) == 0 <==> s == MultiSet#Empty())
     && (MultiSet#Card(s) != 0
       ==> (exists x: Box :: 
        { MultiSet#Multiplicity(s, x) } 
        0 < MultiSet#Multiplicity(s, x))));

revealed function MultiSet#Singleton(o: Box) : MultiSet;

axiom (forall r: Box, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Singleton(r), o) } 
  (MultiSet#Multiplicity(MultiSet#Singleton(r), o) == 1 <==> r == o)
     && (MultiSet#Multiplicity(MultiSet#Singleton(r), o) == 0 <==> r != o));

axiom (forall r: Box :: 
  { MultiSet#Singleton(r) } 
  MultiSet#Singleton(r) == MultiSet#UnionOne(MultiSet#Empty(), r));

revealed function MultiSet#UnionOne(m: MultiSet, o: Box) : MultiSet;

axiom (forall a: MultiSet, x: Box, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#UnionOne(a, x), o) } 
  0 < MultiSet#Multiplicity(MultiSet#UnionOne(a, x), o)
     <==> o == x || 0 < MultiSet#Multiplicity(a, o));

axiom (forall a: MultiSet, x: Box :: 
  { MultiSet#UnionOne(a, x) } 
  MultiSet#Multiplicity(MultiSet#UnionOne(a, x), x)
     == MultiSet#Multiplicity(a, x) + 1);

axiom (forall a: MultiSet, x: Box, y: Box :: 
  { MultiSet#UnionOne(a, x), MultiSet#Multiplicity(a, y) } 
  0 < MultiSet#Multiplicity(a, y)
     ==> 0 < MultiSet#Multiplicity(MultiSet#UnionOne(a, x), y));

axiom (forall a: MultiSet, x: Box, y: Box :: 
  { MultiSet#UnionOne(a, x), MultiSet#Multiplicity(a, y) } 
  x != y
     ==> MultiSet#Multiplicity(a, y) == MultiSet#Multiplicity(MultiSet#UnionOne(a, x), y));

axiom (forall a: MultiSet, x: Box :: 
  { MultiSet#Card(MultiSet#UnionOne(a, x)) } 
  MultiSet#Card(MultiSet#UnionOne(a, x)) == MultiSet#Card(a) + 1);

revealed function MultiSet#Union(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Union(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Union(a, b), o)
     == MultiSet#Multiplicity(a, o) + MultiSet#Multiplicity(b, o));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Card(MultiSet#Union(a, b)) } 
  MultiSet#Card(MultiSet#Union(a, b)) == MultiSet#Card(a) + MultiSet#Card(b));

revealed function MultiSet#Intersection(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Intersection(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Intersection(a, b), o)
     == Math#min(MultiSet#Multiplicity(a, o), MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Intersection(MultiSet#Intersection(a, b), b) } 
  MultiSet#Intersection(MultiSet#Intersection(a, b), b)
     == MultiSet#Intersection(a, b));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Intersection(a, MultiSet#Intersection(a, b)) } 
  MultiSet#Intersection(a, MultiSet#Intersection(a, b))
     == MultiSet#Intersection(a, b));

revealed function MultiSet#Difference(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Difference(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Difference(a, b), o)
     == Math#clip(MultiSet#Multiplicity(a, o) - MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet, y: Box :: 
  { MultiSet#Difference(a, b), MultiSet#Multiplicity(b, y), MultiSet#Multiplicity(a, y) } 
  MultiSet#Multiplicity(a, y) <= MultiSet#Multiplicity(b, y)
     ==> MultiSet#Multiplicity(MultiSet#Difference(a, b), y) == 0);

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Card(MultiSet#Difference(a, b)) } 
  MultiSet#Card(MultiSet#Difference(a, b))
         + MultiSet#Card(MultiSet#Difference(b, a))
         + 2 * MultiSet#Card(MultiSet#Intersection(a, b))
       == MultiSet#Card(MultiSet#Union(a, b))
     && MultiSet#Card(MultiSet#Difference(a, b))
       == MultiSet#Card(a) - MultiSet#Card(MultiSet#Intersection(a, b)));

revealed function MultiSet#Subset(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Subset(a, b) } 
  MultiSet#Subset(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) <= MultiSet#Multiplicity(b, o)));

revealed function MultiSet#Equal(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Equal(a, b) } 
  MultiSet#Equal(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) == MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Equal(a, b) } 
  MultiSet#Equal(a, b) ==> a == b);

revealed function MultiSet#Disjoint(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Disjoint(a, b) } 
  MultiSet#Disjoint(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) == 0 || MultiSet#Multiplicity(b, o) == 0));

revealed function MultiSet#FromSet(s: Set) : MultiSet;

axiom (forall s: Set, a: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSet(s), a) } 
  (MultiSet#Multiplicity(MultiSet#FromSet(s), a) == 0 <==> !Set#IsMember(s, a))
     && (MultiSet#Multiplicity(MultiSet#FromSet(s), a) == 1 <==> Set#IsMember(s, a)));

axiom (forall s: Set :: 
  { MultiSet#Card(MultiSet#FromSet(s)) } 
  MultiSet#Card(MultiSet#FromSet(s)) == Set#Card(s));

revealed function MultiSet#FromSeq(s: Seq) : MultiSet
uses {
axiom MultiSet#FromSeq(Seq#Empty()) == MultiSet#Empty();
}

axiom (forall s: Seq :: { MultiSet#FromSeq(s) } $IsGoodMultiSet(MultiSet#FromSeq(s)));

axiom (forall s: Seq :: 
  { MultiSet#Card(MultiSet#FromSeq(s)) } 
  MultiSet#Card(MultiSet#FromSeq(s)) == Seq#Length(s));

axiom (forall s: Seq, v: Box :: 
  { MultiSet#FromSeq(Seq#Build(s, v)) } 
  MultiSet#FromSeq(Seq#Build(s, v)) == MultiSet#UnionOne(MultiSet#FromSeq(s), v));

axiom (forall a: Seq, b: Seq :: 
  { MultiSet#FromSeq(Seq#Append(a, b)) } 
  MultiSet#FromSeq(Seq#Append(a, b))
     == MultiSet#Union(MultiSet#FromSeq(a), MultiSet#FromSeq(b)));

axiom (forall s: Seq, i: int, v: Box, x: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSeq(Seq#Update(s, i, v)), x) } 
  0 <= i && i < Seq#Length(s)
     ==> MultiSet#Multiplicity(MultiSet#FromSeq(Seq#Update(s, i, v)), x)
       == MultiSet#Multiplicity(MultiSet#Union(MultiSet#Difference(MultiSet#FromSeq(s), MultiSet#Singleton(Seq#Index(s, i))), 
          MultiSet#Singleton(v)), 
        x));

axiom (forall s: Seq, x: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSeq(s), x) } 
  (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < Seq#Length(s) && x == Seq#Index(s, i))
     <==> 0 < MultiSet#Multiplicity(MultiSet#FromSeq(s), x));

type Seq;

revealed function Seq#Length(s: Seq) : int;

axiom (forall s: Seq :: { Seq#Length(s) } 0 <= Seq#Length(s));

revealed function Seq#Empty() : Seq
uses {
axiom Seq#Length(Seq#Empty()) == 0;
}

axiom (forall s: Seq :: { Seq#Length(s) } Seq#Length(s) == 0 ==> s == Seq#Empty());

revealed function Seq#Build(s: Seq, val: Box) : Seq;

revealed function Seq#Build_inv0(s: Seq) : Seq;

revealed function Seq#Build_inv1(s: Seq) : Box;

axiom (forall s: Seq, val: Box :: 
  { Seq#Build(s, val) } 
  Seq#Build_inv0(Seq#Build(s, val)) == s
     && Seq#Build_inv1(Seq#Build(s, val)) == val);

axiom (forall s: Seq, v: Box :: 
  { Seq#Build(s, v) } 
  Seq#Length(Seq#Build(s, v)) == 1 + Seq#Length(s));

axiom (forall s: Seq, i: int, v: Box :: 
  { Seq#Index(Seq#Build(s, v), i) } 
  (i == Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == v)
     && (i != Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == Seq#Index(s, i)));

axiom (forall s0: Seq, s1: Seq :: 
  { Seq#Length(Seq#Append(s0, s1)) } 
  Seq#Length(Seq#Append(s0, s1)) == Seq#Length(s0) + Seq#Length(s1));

revealed function Seq#Index(s: Seq, i: int) : Box;

axiom (forall s0: Seq, s1: Seq, n: int :: 
  { Seq#Index(Seq#Append(s0, s1), n) } 
  (n < Seq#Length(s0) ==> Seq#Index(Seq#Append(s0, s1), n) == Seq#Index(s0, n))
     && (Seq#Length(s0) <= n
       ==> Seq#Index(Seq#Append(s0, s1), n) == Seq#Index(s1, n - Seq#Length(s0))));

revealed function Seq#Update(s: Seq, i: int, val: Box) : Seq;

axiom (forall s: Seq, i: int, v: Box :: 
  { Seq#Length(Seq#Update(s, i, v)) } 
  0 <= i && i < Seq#Length(s) ==> Seq#Length(Seq#Update(s, i, v)) == Seq#Length(s));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Index(Seq#Update(s, i, v), n) } 
  0 <= n && n < Seq#Length(s)
     ==> (i == n ==> Seq#Index(Seq#Update(s, i, v), n) == v)
       && (i != n ==> Seq#Index(Seq#Update(s, i, v), n) == Seq#Index(s, n)));

revealed function Seq#Append(s0: Seq, s1: Seq) : Seq;

revealed function Seq#Contains(s: Seq, val: Box) : bool;

axiom (forall s: Seq, x: Box :: 
  { Seq#Contains(s, x) } 
  Seq#Contains(s, x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));

axiom (forall x: Box :: 
  { Seq#Contains(Seq#Empty(), x) } 
  !Seq#Contains(Seq#Empty(), x));

axiom (forall s0: Seq, s1: Seq, x: Box :: 
  { Seq#Contains(Seq#Append(s0, s1), x) } 
  Seq#Contains(Seq#Append(s0, s1), x)
     <==> Seq#Contains(s0, x) || Seq#Contains(s1, x));

axiom (forall s: Seq, v: Box, x: Box :: 
  { Seq#Contains(Seq#Build(s, v), x) } 
  Seq#Contains(Seq#Build(s, v), x) <==> v == x || Seq#Contains(s, x));

axiom (forall s: Seq, n: int, x: Box :: 
  { Seq#Contains(Seq#Take(s, n), x) } 
  Seq#Contains(Seq#Take(s, n), x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < n && i < Seq#Length(s) && Seq#Index(s, i) == x));

axiom (forall s: Seq, n: int, x: Box :: 
  { Seq#Contains(Seq#Drop(s, n), x) } 
  Seq#Contains(Seq#Drop(s, n), x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= n && n <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));

revealed function Seq#Equal(s0: Seq, s1: Seq) : bool;

axiom (forall s0: Seq, s1: Seq :: 
  { Seq#Equal(s0, s1) } 
  Seq#Equal(s0, s1)
     <==> Seq#Length(s0) == Seq#Length(s1)
       && (forall j: int :: 
        { Seq#Index(s0, j) } { Seq#Index(s1, j) } 
        0 <= j && j < Seq#Length(s0) ==> Seq#Index(s0, j) == Seq#Index(s1, j)));

axiom (forall a: Seq, b: Seq :: { Seq#Equal(a, b) } Seq#Equal(a, b) ==> a == b);

revealed function Seq#SameUntil(s0: Seq, s1: Seq, n: int) : bool;

axiom (forall s0: Seq, s1: Seq, n: int :: 
  { Seq#SameUntil(s0, s1, n) } 
  Seq#SameUntil(s0, s1, n)
     <==> (forall j: int :: 
      { Seq#Index(s0, j) } { Seq#Index(s1, j) } 
      0 <= j && j < n ==> Seq#Index(s0, j) == Seq#Index(s1, j)));

revealed function Seq#Take(s: Seq, howMany: int) : Seq;

axiom (forall s: Seq, n: int :: 
  { Seq#Length(Seq#Take(s, n)) } 
  0 <= n && n <= Seq#Length(s) ==> Seq#Length(Seq#Take(s, n)) == n);

axiom (forall s: Seq, n: int, j: int :: 
  {:weight 25} { Seq#Index(Seq#Take(s, n), j) } { Seq#Index(s, j), Seq#Take(s, n) } 
  0 <= j && j < n && j < Seq#Length(s)
     ==> Seq#Index(Seq#Take(s, n), j) == Seq#Index(s, j));

revealed function Seq#Drop(s: Seq, howMany: int) : Seq;

axiom (forall s: Seq, n: int :: 
  { Seq#Length(Seq#Drop(s, n)) } 
  0 <= n && n <= Seq#Length(s) ==> Seq#Length(Seq#Drop(s, n)) == Seq#Length(s) - n);

axiom (forall s: Seq, n: int, j: int :: 
  {:weight 25} { Seq#Index(Seq#Drop(s, n), j) } 
  0 <= n && 0 <= j && j < Seq#Length(s) - n
     ==> Seq#Index(Seq#Drop(s, n), j) == Seq#Index(s, j + n));

axiom (forall s: Seq, n: int, k: int :: 
  {:weight 25} { Seq#Index(s, k), Seq#Drop(s, n) } 
  0 <= n && n <= k && k < Seq#Length(s)
     ==> Seq#Index(Seq#Drop(s, n), k - n) == Seq#Index(s, k));

axiom (forall s: Seq, t: Seq, n: int :: 
  { Seq#Take(Seq#Append(s, t), n) } { Seq#Drop(Seq#Append(s, t), n) } 
  n == Seq#Length(s)
     ==> Seq#Take(Seq#Append(s, t), n) == s && Seq#Drop(Seq#Append(s, t), n) == t);

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Take(Seq#Update(s, i, v), n) } 
  0 <= i && i < n && n <= Seq#Length(s)
     ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Update(Seq#Take(s, n), i, v));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Take(Seq#Update(s, i, v), n) } 
  n <= i && i < Seq#Length(s)
     ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Take(s, n));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Drop(Seq#Update(s, i, v), n) } 
  0 <= n && n <= i && i < Seq#Length(s)
     ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Update(Seq#Drop(s, n), i - n, v));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Drop(Seq#Update(s, i, v), n) } 
  0 <= i && i < n && n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Drop(s, n));

axiom (forall s: Seq, v: Box, n: int :: 
  { Seq#Drop(Seq#Build(s, v), n) } 
  0 <= n && n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Build(s, v), n) == Seq#Build(Seq#Drop(s, n), v));

axiom (forall s: Seq, n: int :: { Seq#Drop(s, n) } n == 0 ==> Seq#Drop(s, n) == s);

axiom (forall s: Seq, n: int :: 
  { Seq#Take(s, n) } 
  n == 0 ==> Seq#Take(s, n) == Seq#Empty());

axiom (forall s: Seq, m: int, n: int :: 
  { Seq#Drop(Seq#Drop(s, m), n) } 
  0 <= m && 0 <= n && m + n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Drop(s, m), n) == Seq#Drop(s, m + n));

axiom (forall s: Seq, bx: Box, t: Ty :: 
  { $Is(Seq#Build(s, bx), TSeq(t)) } 
  $Is(s, TSeq(t)) && $IsBox(bx, t) ==> $Is(Seq#Build(s, bx), TSeq(t)));

revealed function Seq#Create(ty: Ty, heap: Heap, len: int, init: HandleType) : Seq;

axiom (forall ty: Ty, heap: Heap, len: int, init: HandleType :: 
  { Seq#Length(Seq#Create(ty, heap, len, init): Seq) } 
  $IsGoodHeap(heap) && 0 <= len
     ==> Seq#Length(Seq#Create(ty, heap, len, init): Seq) == len);

axiom (forall ty: Ty, heap: Heap, len: int, init: HandleType, i: int :: 
  { Seq#Index(Seq#Create(ty, heap, len, init), i) } 
  $IsGoodHeap(heap) && 0 <= i && i < len
     ==> Seq#Index(Seq#Create(ty, heap, len, init), i)
       == Apply1(TInt, ty, heap, init, $Box(i)));

revealed function Seq#FromArray(h: Heap, a: ref) : Seq;

axiom (forall h: Heap, a: ref :: 
  { Seq#Length(Seq#FromArray(h, a)) } 
  Seq#Length(Seq#FromArray(h, a)) == _System.array.Length(a));

axiom (forall h: Heap, a: ref :: 
  { Seq#FromArray(h, a) } 
  (forall i: int :: 
    { read(h, a, IndexField(i)) } { Seq#Index(Seq#FromArray(h, a): Seq, i) } 
    0 <= i && i < Seq#Length(Seq#FromArray(h, a))
       ==> Seq#Index(Seq#FromArray(h, a), i) == read(h, a, IndexField(i))));

axiom (forall h0: Heap, h1: Heap, a: ref :: 
  { Seq#FromArray(h1, a), $HeapSucc(h0, h1) } 
  $IsGoodHeap(h0) && $IsGoodHeap(h1) && $HeapSucc(h0, h1) && h0[a] == h1[a]
     ==> Seq#FromArray(h0, a) == Seq#FromArray(h1, a));

axiom (forall h: Heap, i: int, v: Box, a: ref :: 
  { Seq#FromArray(update(h, a, IndexField(i), v), a) } 
  0 <= i && i < _System.array.Length(a)
     ==> Seq#FromArray(update(h, a, IndexField(i), v), a)
       == Seq#Update(Seq#FromArray(h, a), i, v));

axiom (forall h: Heap, a: ref, n0: int, n1: int :: 
  { Seq#Take(Seq#FromArray(h, a), n0), Seq#Take(Seq#FromArray(h, a), n1) } 
  n0 + 1 == n1 && 0 <= n0 && n1 <= _System.array.Length(a)
     ==> Seq#Take(Seq#FromArray(h, a), n1)
       == Seq#Build(Seq#Take(Seq#FromArray(h, a), n0), read(h, a, IndexField(n0): Field)));

revealed function Seq#Rank(Seq) : int;

axiom (forall s: Seq, i: int :: 
  { DtRank($Unbox(Seq#Index(s, i)): DatatypeType) } 
  0 <= i && i < Seq#Length(s)
     ==> DtRank($Unbox(Seq#Index(s, i)): DatatypeType) < Seq#Rank(s));

axiom (forall s: Seq, i: int :: 
  { Seq#Rank(Seq#Drop(s, i)) } 
  0 < i && i <= Seq#Length(s) ==> Seq#Rank(Seq#Drop(s, i)) < Seq#Rank(s));

axiom (forall s: Seq, i: int :: 
  { Seq#Rank(Seq#Take(s, i)) } 
  0 <= i && i < Seq#Length(s) ==> Seq#Rank(Seq#Take(s, i)) < Seq#Rank(s));

axiom (forall s: Seq, i: int, j: int :: 
  { Seq#Rank(Seq#Append(Seq#Take(s, i), Seq#Drop(s, j))) } 
  0 <= i && i < j && j <= Seq#Length(s)
     ==> Seq#Rank(Seq#Append(Seq#Take(s, i), Seq#Drop(s, j))) < Seq#Rank(s));

type Map;

revealed function Map#Domain(Map) : Set;

revealed function Map#Elements(Map) : [Box]Box;

revealed function Map#Card(Map) : int;

axiom (forall m: Map :: { Map#Card(m) } 0 <= Map#Card(m));

axiom (forall m: Map :: { Map#Card(m) } Map#Card(m) == 0 <==> m == Map#Empty());

axiom (forall m: Map :: 
  { Map#Domain(m) } 
  m == Map#Empty() || (exists k: Box :: Set#IsMember(Map#Domain(m), k)));

axiom (forall m: Map :: 
  { Map#Values(m) } 
  m == Map#Empty() || (exists v: Box :: Set#IsMember(Map#Values(m), v)));

axiom (forall m: Map :: 
  { Map#Items(m) } 
  m == Map#Empty()
     || (exists k: Box, v: Box :: 
      Set#IsMember(Map#Items(m), $Box(#_System._tuple#2._#Make2(k, v)))));

axiom (forall m: Map :: 
  { Set#Card(Map#Domain(m)) } { Map#Card(m) } 
  Set#Card(Map#Domain(m)) == Map#Card(m));

axiom (forall m: Map :: 
  { Set#Card(Map#Values(m)) } { Map#Card(m) } 
  Set#Card(Map#Values(m)) <= Map#Card(m));

axiom (forall m: Map :: 
  { Set#Card(Map#Items(m)) } { Map#Card(m) } 
  Set#Card(Map#Items(m)) == Map#Card(m));

revealed function Map#Values(Map) : Set;

axiom (forall m: Map, v: Box :: 
  { Set#IsMember(Map#Values(m), v) } 
  Set#IsMember(Map#Values(m), v)
     == (exists u: Box :: 
      { Set#IsMember(Map#Domain(m), u) } { Map#Elements(m)[u] } 
      Set#IsMember(Map#Domain(m), u) && v == Map#Elements(m)[u]));

revealed function Map#Items(Map) : Set;

revealed function #_System._tuple#2._#Make2(Box, Box) : DatatypeType;

revealed function _System.Tuple2._0(DatatypeType) : Box;

revealed function _System.Tuple2._1(DatatypeType) : Box;

axiom (forall m: Map, item: Box :: 
  { Set#IsMember(Map#Items(m), item) } 
  Set#IsMember(Map#Items(m), item)
     <==> Set#IsMember(Map#Domain(m), _System.Tuple2._0($Unbox(item)))
       && Map#Elements(m)[_System.Tuple2._0($Unbox(item))]
         == _System.Tuple2._1($Unbox(item)));

revealed function Map#Empty() : Map;

axiom (forall u: Box :: 
  { Set#IsMember(Map#Domain(Map#Empty(): Map), u) } 
  !Set#IsMember(Map#Domain(Map#Empty(): Map), u));

revealed function Map#Glue(Set, [Box]Box, Ty) : Map;

axiom (forall a: Set, b: [Box]Box, t: Ty :: 
  { Map#Domain(Map#Glue(a, b, t)) } 
  Map#Domain(Map#Glue(a, b, t)) == a);

axiom (forall a: Set, b: [Box]Box, t: Ty :: 
  { Map#Elements(Map#Glue(a, b, t)) } 
  Map#Elements(Map#Glue(a, b, t)) == b);

axiom (forall a: Set, b: [Box]Box, t0: Ty, t1: Ty :: 
  { Map#Glue(a, b, TMap(t0, t1)) } 
  (forall bx: Box :: Set#IsMember(a, bx) ==> $IsBox(bx, t0) && $IsBox(b[bx], t1))
     ==> $Is(Map#Glue(a, b, TMap(t0, t1)), TMap(t0, t1)));

revealed function Map#Build(Map, Box, Box) : Map;

axiom (forall m: Map, u: Box, u': Box, v: Box :: 
  { Set#IsMember(Map#Domain(Map#Build(m, u, v)), u') } 
    { Map#Elements(Map#Build(m, u, v))[u'] } 
  (u' == u
       ==> Set#IsMember(Map#Domain(Map#Build(m, u, v)), u')
         && Map#Elements(Map#Build(m, u, v))[u'] == v)
     && (u' != u
       ==> Set#IsMember(Map#Domain(Map#Build(m, u, v)), u')
           == Set#IsMember(Map#Domain(m), u')
         && Map#Elements(Map#Build(m, u, v))[u'] == Map#Elements(m)[u']));

axiom (forall m: Map, u: Box, v: Box :: 
  { Map#Card(Map#Build(m, u, v)) } 
  Set#IsMember(Map#Domain(m), u) ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m));

axiom (forall m: Map, u: Box, v: Box :: 
  { Map#Card(Map#Build(m, u, v)) } 
  !Set#IsMember(Map#Domain(m), u)
     ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m) + 1);

revealed function Map#Merge(Map, Map) : Map;

axiom (forall m: Map, n: Map :: 
  { Map#Domain(Map#Merge(m, n)) } 
  Map#Domain(Map#Merge(m, n)) == Set#Union(Map#Domain(m), Map#Domain(n)));

axiom (forall m: Map, n: Map, u: Box :: 
  { Map#Elements(Map#Merge(m, n))[u] } 
  Set#IsMember(Map#Domain(Map#Merge(m, n)), u)
     ==> (!Set#IsMember(Map#Domain(n), u)
         ==> Map#Elements(Map#Merge(m, n))[u] == Map#Elements(m)[u])
       && (Set#IsMember(Map#Domain(n), u)
         ==> Map#Elements(Map#Merge(m, n))[u] == Map#Elements(n)[u]));

revealed function Map#Subtract(Map, Set) : Map;

axiom (forall m: Map, s: Set :: 
  { Map#Domain(Map#Subtract(m, s)) } 
  Map#Domain(Map#Subtract(m, s)) == Set#Difference(Map#Domain(m), s));

axiom (forall m: Map, s: Set, u: Box :: 
  { Map#Elements(Map#Subtract(m, s))[u] } 
  Set#IsMember(Map#Domain(Map#Subtract(m, s)), u)
     ==> Map#Elements(Map#Subtract(m, s))[u] == Map#Elements(m)[u]);

revealed function Map#Equal(Map, Map) : bool;

axiom (forall m: Map, m': Map :: 
  { Map#Equal(m, m') } 
  Map#Equal(m, m')
     <==> (forall u: Box :: 
        Set#IsMember(Map#Domain(m), u) == Set#IsMember(Map#Domain(m'), u))
       && (forall u: Box :: 
        Set#IsMember(Map#Domain(m), u) ==> Map#Elements(m)[u] == Map#Elements(m')[u]));

axiom (forall m: Map, m': Map :: { Map#Equal(m, m') } Map#Equal(m, m') ==> m == m');

revealed function Map#Disjoint(Map, Map) : bool;

axiom (forall m: Map, m': Map :: 
  { Map#Disjoint(m, m') } 
  Map#Disjoint(m, m')
     <==> (forall o: Box :: 
      { Set#IsMember(Map#Domain(m), o) } { Set#IsMember(Map#Domain(m'), o) } 
      !Set#IsMember(Map#Domain(m), o) || !Set#IsMember(Map#Domain(m'), o)));

type IMap;

revealed function IMap#Domain(IMap) : ISet;

revealed function IMap#Elements(IMap) : [Box]Box;

axiom (forall m: IMap :: 
  { IMap#Domain(m) } 
  m == IMap#Empty() || (exists k: Box :: IMap#Domain(m)[k]));

axiom (forall m: IMap :: 
  { IMap#Values(m) } 
  m == IMap#Empty() || (exists v: Box :: IMap#Values(m)[v]));

axiom (forall m: IMap :: 
  { IMap#Items(m) } 
  m == IMap#Empty()
     || (exists k: Box, v: Box :: IMap#Items(m)[$Box(#_System._tuple#2._#Make2(k, v))]));

axiom (forall m: IMap :: 
  { IMap#Domain(m) } 
  m == IMap#Empty() <==> IMap#Domain(m) == ISet#Empty());

axiom (forall m: IMap :: 
  { IMap#Values(m) } 
  m == IMap#Empty() <==> IMap#Values(m) == ISet#Empty());

axiom (forall m: IMap :: 
  { IMap#Items(m) } 
  m == IMap#Empty() <==> IMap#Items(m) == ISet#Empty());

revealed function IMap#Values(IMap) : ISet;

axiom (forall m: IMap, v: Box :: 
  { IMap#Values(m)[v] } 
  IMap#Values(m)[v]
     == (exists u: Box :: 
      { IMap#Domain(m)[u] } { IMap#Elements(m)[u] } 
      IMap#Domain(m)[u] && v == IMap#Elements(m)[u]));

revealed function IMap#Items(IMap) : ISet;

axiom (forall m: IMap, item: Box :: 
  { IMap#Items(m)[item] } 
  IMap#Items(m)[item]
     <==> IMap#Domain(m)[_System.Tuple2._0($Unbox(item))]
       && IMap#Elements(m)[_System.Tuple2._0($Unbox(item))]
         == _System.Tuple2._1($Unbox(item)));

revealed function IMap#Empty() : IMap;

axiom (forall u: Box :: 
  { IMap#Domain(IMap#Empty(): IMap)[u] } 
  !IMap#Domain(IMap#Empty(): IMap)[u]);

revealed function IMap#Glue([Box]bool, [Box]Box, Ty) : IMap;

axiom (forall a: [Box]bool, b: [Box]Box, t: Ty :: 
  { IMap#Domain(IMap#Glue(a, b, t)) } 
  IMap#Domain(IMap#Glue(a, b, t)) == a);

axiom (forall a: [Box]bool, b: [Box]Box, t: Ty :: 
  { IMap#Elements(IMap#Glue(a, b, t)) } 
  IMap#Elements(IMap#Glue(a, b, t)) == b);

axiom (forall a: [Box]bool, b: [Box]Box, t0: Ty, t1: Ty :: 
  { IMap#Glue(a, b, TIMap(t0, t1)) } 
  (forall bx: Box :: a[bx] ==> $IsBox(bx, t0) && $IsBox(b[bx], t1))
     ==> $Is(IMap#Glue(a, b, TIMap(t0, t1)), TIMap(t0, t1)));

revealed function IMap#Build(IMap, Box, Box) : IMap;

axiom (forall m: IMap, u: Box, u': Box, v: Box :: 
  { IMap#Domain(IMap#Build(m, u, v))[u'] } 
    { IMap#Elements(IMap#Build(m, u, v))[u'] } 
  (u' == u
       ==> IMap#Domain(IMap#Build(m, u, v))[u']
         && IMap#Elements(IMap#Build(m, u, v))[u'] == v)
     && (u' != u
       ==> IMap#Domain(IMap#Build(m, u, v))[u'] == IMap#Domain(m)[u']
         && IMap#Elements(IMap#Build(m, u, v))[u'] == IMap#Elements(m)[u']));

revealed function IMap#Equal(IMap, IMap) : bool;

axiom (forall m: IMap, m': IMap :: 
  { IMap#Equal(m, m') } 
  IMap#Equal(m, m')
     <==> (forall u: Box :: IMap#Domain(m)[u] == IMap#Domain(m')[u])
       && (forall u: Box :: 
        IMap#Domain(m)[u] ==> IMap#Elements(m)[u] == IMap#Elements(m')[u]));

axiom (forall m: IMap, m': IMap :: 
  { IMap#Equal(m, m') } 
  IMap#Equal(m, m') ==> m == m');

revealed function IMap#Merge(IMap, IMap) : IMap;

axiom (forall m: IMap, n: IMap :: 
  { IMap#Domain(IMap#Merge(m, n)) } 
  IMap#Domain(IMap#Merge(m, n)) == ISet#Union(IMap#Domain(m), IMap#Domain(n)));

axiom (forall m: IMap, n: IMap, u: Box :: 
  { IMap#Elements(IMap#Merge(m, n))[u] } 
  IMap#Domain(IMap#Merge(m, n))[u]
     ==> (!IMap#Domain(n)[u]
         ==> IMap#Elements(IMap#Merge(m, n))[u] == IMap#Elements(m)[u])
       && (IMap#Domain(n)[u]
         ==> IMap#Elements(IMap#Merge(m, n))[u] == IMap#Elements(n)[u]));

revealed function IMap#Subtract(IMap, Set) : IMap;

axiom (forall m: IMap, s: Set :: 
  { IMap#Domain(IMap#Subtract(m, s)) } 
  IMap#Domain(IMap#Subtract(m, s))
     == ISet#Difference(IMap#Domain(m), ISet#FromSet(s)));

axiom (forall m: IMap, s: Set, u: Box :: 
  { IMap#Elements(IMap#Subtract(m, s))[u] } 
  IMap#Domain(IMap#Subtract(m, s))[u]
     ==> IMap#Elements(IMap#Subtract(m, s))[u] == IMap#Elements(m)[u]);

revealed function INTERNAL_add_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_add_boogie(x, y): int } 
  INTERNAL_add_boogie(x, y): int == x + y);
}

revealed function INTERNAL_sub_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_sub_boogie(x, y): int } 
  INTERNAL_sub_boogie(x, y): int == x - y);
}

revealed function INTERNAL_mul_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_mul_boogie(x, y): int } 
  INTERNAL_mul_boogie(x, y): int == x * y);
}

revealed function INTERNAL_div_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_div_boogie(x, y): int } 
  INTERNAL_div_boogie(x, y): int == x div y);
}

revealed function INTERNAL_mod_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_mod_boogie(x, y): int } 
  INTERNAL_mod_boogie(x, y): int == x mod y);
}

revealed function {:never_pattern true} INTERNAL_lt_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_lt_boogie(x, y): bool } 
  INTERNAL_lt_boogie(x, y): bool == (x < y));
}

revealed function {:never_pattern true} INTERNAL_le_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_le_boogie(x, y): bool } 
  INTERNAL_le_boogie(x, y): bool == (x <= y));
}

revealed function {:never_pattern true} INTERNAL_gt_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_gt_boogie(x, y): bool } 
  INTERNAL_gt_boogie(x, y): bool == (x > y));
}

revealed function {:never_pattern true} INTERNAL_ge_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_ge_boogie(x, y): bool } 
  INTERNAL_ge_boogie(x, y): bool == (x >= y));
}

revealed function Mul(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Mul(x, y): int } Mul(x, y): int == x * y);
}

revealed function Div(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Div(x, y): int } Div(x, y): int == x div y);
}

revealed function Mod(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Mod(x, y): int } Mod(x, y): int == x mod y);
}

revealed function Add(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Add(x, y): int } Add(x, y): int == x + y);
}

revealed function Sub(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Sub(x, y): int } Sub(x, y): int == x - y);
}

function Tclass._System.nat() : Ty
uses {
// Tclass._System.nat Tag
axiom Tag(Tclass._System.nat()) == Tagclass._System.nat
   && TagFamily(Tclass._System.nat()) == tytagFamily$nat;
}

const unique Tagclass._System.nat: TyTag;

// Box/unbox axiom for Tclass._System.nat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.nat()) } 
  $IsBox(bx, Tclass._System.nat())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._System.nat()));

// $Is axiom for subset type _System.nat
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._System.nat()) } 
  $Is(x#0, Tclass._System.nat()) <==> LitInt(0) <= x#0);

// $IsAlloc axiom for subset type _System.nat
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._System.nat(), $h) } 
  $IsAlloc(x#0, Tclass._System.nat(), $h));

const unique class._System.object?: ClassName;

const unique Tagclass._System.object?: TyTag;

// Box/unbox axiom for Tclass._System.object?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.object?()) } 
  $IsBox(bx, Tclass._System.object?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._System.object?()));

// $Is axiom for trait object
axiom (forall $o: ref :: 
  { $Is($o, Tclass._System.object?()) } 
  $Is($o, Tclass._System.object?()));

// $IsAlloc axiom for trait object
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.object?(), $h) } 
  $IsAlloc($o, Tclass._System.object?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_System.object(ty: Ty) : bool;

function Tclass._System.object() : Ty
uses {
// Tclass._System.object Tag
axiom Tag(Tclass._System.object()) == Tagclass._System.object
   && TagFamily(Tclass._System.object()) == tytagFamily$object;
}

const unique Tagclass._System.object: TyTag;

// Box/unbox axiom for Tclass._System.object
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.object()) } 
  $IsBox(bx, Tclass._System.object())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._System.object()));

// $Is axiom for non-null type _System.object
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._System.object()) } { $Is(c#0, Tclass._System.object?()) } 
  $Is(c#0, Tclass._System.object())
     <==> $Is(c#0, Tclass._System.object?()) && c#0 != null);

// $IsAlloc axiom for non-null type _System.object
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.object(), $h) } 
    { $IsAlloc(c#0, Tclass._System.object?(), $h) } 
  $IsAlloc(c#0, Tclass._System.object(), $h)
     <==> $IsAlloc(c#0, Tclass._System.object?(), $h));

const unique class._System.array?: ClassName;

function Tclass._System.array?(Ty) : Ty;

const unique Tagclass._System.array?: TyTag;

// Tclass._System.array? Tag
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array?(_System.array$arg) } 
  Tag(Tclass._System.array?(_System.array$arg)) == Tagclass._System.array?
     && TagFamily(Tclass._System.array?(_System.array$arg)) == tytagFamily$array);

function Tclass._System.array?_0(Ty) : Ty;

// Tclass._System.array? injectivity 0
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array?(_System.array$arg) } 
  Tclass._System.array?_0(Tclass._System.array?(_System.array$arg))
     == _System.array$arg);

// Box/unbox axiom for Tclass._System.array?
axiom (forall _System.array$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array?(_System.array$arg)) } 
  $IsBox(bx, Tclass._System.array?(_System.array$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array?(_System.array$arg)));

// array.: Type axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref, $i0: int :: 
  { read($h, $o, IndexField($i0)), Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && 
      0 <= $i0
       && $i0 < _System.array.Length($o)
     ==> $IsBox(read($h, $o, IndexField($i0)), _System.array$arg));

// array.: Allocation axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref, $i0: int :: 
  { read($h, $o, IndexField($i0)), Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && 
      0 <= $i0
       && $i0 < _System.array.Length($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, IndexField($i0)), _System.array$arg, $h));

// $Is axiom for array type array
axiom (forall _System.array$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array?(_System.array$arg)) } 
  $Is($o, Tclass._System.array?(_System.array$arg))
     <==> $o == null || dtype($o) == Tclass._System.array?(_System.array$arg));

// $IsAlloc axiom for array type array
axiom (forall _System.array$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array?(_System.array$arg), $h) } 
  $IsAlloc($o, Tclass._System.array?(_System.array$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// array.Length: Type axiom
axiom (forall _System.array$arg: Ty, $o: ref :: 
  { _System.array.Length($o), Tclass._System.array?(_System.array$arg) } 
  $o != null && dtype($o) == Tclass._System.array?(_System.array$arg)
     ==> $Is(_System.array.Length($o), TInt));

// array.Length: Allocation axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array.Length($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array.Length($o), TInt, $h));

function Tclass._System.array(Ty) : Ty;

const unique Tagclass._System.array: TyTag;

// Tclass._System.array Tag
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array(_System.array$arg) } 
  Tag(Tclass._System.array(_System.array$arg)) == Tagclass._System.array
     && TagFamily(Tclass._System.array(_System.array$arg)) == tytagFamily$array);

function Tclass._System.array_0(Ty) : Ty;

// Tclass._System.array injectivity 0
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array(_System.array$arg) } 
  Tclass._System.array_0(Tclass._System.array(_System.array$arg))
     == _System.array$arg);

// Box/unbox axiom for Tclass._System.array
axiom (forall _System.array$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array(_System.array$arg)) } 
  $IsBox(bx, Tclass._System.array(_System.array$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array(_System.array$arg)));

// $Is axiom for non-null type _System.array
axiom (forall _System.array$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array(_System.array$arg)) } 
    { $Is(c#0, Tclass._System.array?(_System.array$arg)) } 
  $Is(c#0, Tclass._System.array(_System.array$arg))
     <==> $Is(c#0, Tclass._System.array?(_System.array$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array
axiom (forall _System.array$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array(_System.array$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array?(_System.array$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array(_System.array$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array?(_System.array$arg), $h));

function Tclass._System.___hFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc1: TyTag;

// Tclass._System.___hFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hFunc1(#$T0, #$R)) == Tagclass._System.___hFunc1
     && TagFamily(Tclass._System.___hFunc1(#$T0, #$R)) == tytagFamily$_#Func1);

function Tclass._System.___hFunc1_0(Ty) : Ty;

// Tclass._System.___hFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tclass._System.___hFunc1_0(Tclass._System.___hFunc1(#$T0, #$R)) == #$T0);

function Tclass._System.___hFunc1_1(Ty) : Ty;

// Tclass._System.___hFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tclass._System.___hFunc1_1(Tclass._System.___hFunc1(#$T0, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc1(#$T0, #$R)));

function Handle1([Heap,Box]Box, [Heap,Box]bool, [Heap,Box]Set) : HandleType;

function Requires1(Ty, Ty, Heap, HandleType, Box) : bool;

function Reads1(Ty, Ty, Heap, HandleType, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box :: 
  { Apply1(t0, t1, heap, Handle1(h, r, rd), bx0) } 
  Apply1(t0, t1, heap, Handle1(h, r, rd), bx0) == h[heap, bx0]);

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box :: 
  { Requires1(t0, t1, heap, Handle1(h, r, rd), bx0) } 
  r[heap, bx0] ==> Requires1(t0, t1, heap, Handle1(h, r, rd), bx0));

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box, 
    bx: Box :: 
  { Set#IsMember(Reads1(t0, t1, heap, Handle1(h, r, rd), bx0), bx) } 
  Set#IsMember(Reads1(t0, t1, heap, Handle1(h, r, rd), bx0), bx)
     == Set#IsMember(rd[heap, bx0], bx));

function {:inline} Requires1#canCall(t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box) : bool
{
  true
}

function {:inline} Reads1#canCall(t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box) : bool
{
  true
}

// frame axiom for Reads1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Reads1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads1(t0, t1, h0, f, bx0) == Reads1(t0, t1, h1, f, bx0));

// frame axiom for Reads1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Reads1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads1(t0, t1, h0, f, bx0) == Reads1(t0, t1, h1, f, bx0));

// frame axiom for Requires1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Requires1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires1(t0, t1, h0, f, bx0) == Requires1(t0, t1, h1, f, bx0));

// frame axiom for Requires1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Requires1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires1(t0, t1, h0, f, bx0) == Requires1(t0, t1, h1, f, bx0));

// frame axiom for Apply1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Apply1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply1(t0, t1, h0, f, bx0) == Apply1(t0, t1, h1, f, bx0));

// frame axiom for Apply1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Apply1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply1(t0, t1, h0, f, bx0) == Apply1(t0, t1, h1, f, bx0));

// empty-reads property for Reads1 
axiom (forall t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box :: 
  { Reads1(t0, t1, $OneHeap, f, bx0), $IsGoodHeap(heap) } 
    { Reads1(t0, t1, heap, f, bx0) } 
  $IsGoodHeap(heap) && $IsBox(bx0, t0) && $Is(f, Tclass._System.___hFunc1(t0, t1))
     ==> (Set#Equal(Reads1(t0, t1, $OneHeap, f, bx0), Set#Empty(): Set)
       <==> Set#Equal(Reads1(t0, t1, heap, f, bx0), Set#Empty(): Set)));

// empty-reads property for Requires1
axiom (forall t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box :: 
  { Requires1(t0, t1, $OneHeap, f, bx0), $IsGoodHeap(heap) } 
    { Requires1(t0, t1, heap, f, bx0) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && Set#Equal(Reads1(t0, t1, $OneHeap, f, bx0), Set#Empty(): Set)
     ==> Requires1(t0, t1, $OneHeap, f, bx0) == Requires1(t0, t1, heap, f, bx0));

axiom (forall f: HandleType, t0: Ty, t1: Ty :: 
  { $Is(f, Tclass._System.___hFunc1(t0, t1)) } 
  $Is(f, Tclass._System.___hFunc1(t0, t1))
     <==> (forall h: Heap, bx0: Box :: 
      { Apply1(t0, t1, h, f, bx0) } 
      $IsGoodHeap(h) && $IsBox(bx0, t0) && Requires1(t0, t1, h, f, bx0)
         ==> $IsBox(Apply1(t0, t1, h, f, bx0), t1)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, u0: Ty, u1: Ty :: 
  { $Is(f, Tclass._System.___hFunc1(t0, t1)), $Is(f, Tclass._System.___hFunc1(u0, u1)) } 
  $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, t1) } { $IsBox(bx, u1) } 
        $IsBox(bx, t1) ==> $IsBox(bx, u1))
     ==> $Is(f, Tclass._System.___hFunc1(u0, u1)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h)
       <==> (forall bx0: Box :: 
        { Apply1(t0, t1, h, f, bx0) } { Reads1(t0, t1, h, f, bx0) } 
        $IsBox(bx0, t0) && $IsAllocBox(bx0, t0, h) && Requires1(t0, t1, h, f, bx0)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads1(t0, t1, h, f, bx0), $Box(r)) } 
            r != null && Set#IsMember(Reads1(t0, t1, h, f, bx0), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h)
     ==> (forall bx0: Box :: 
      { Apply1(t0, t1, h, f, bx0) } 
      $IsAllocBox(bx0, t0, h) && Requires1(t0, t1, h, f, bx0)
         ==> $IsAllocBox(Apply1(t0, t1, h, f, bx0), t1, h)));

function Tclass._System.___hPartialFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc1: TyTag;

// Tclass._System.___hPartialFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hPartialFunc1(#$T0, #$R))
       == Tagclass._System.___hPartialFunc1
     && TagFamily(Tclass._System.___hPartialFunc1(#$T0, #$R))
       == tytagFamily$_#PartialFunc1);

function Tclass._System.___hPartialFunc1_0(Ty) : Ty;

// Tclass._System.___hPartialFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tclass._System.___hPartialFunc1_0(Tclass._System.___hPartialFunc1(#$T0, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc1_1(Ty) : Ty;

// Tclass._System.___hPartialFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tclass._System.___hPartialFunc1_1(Tclass._System.___hPartialFunc1(#$T0, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc1(#$T0, #$R)));

// $Is axiom for subset type _System._#PartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc1(#$T0, #$R))
       && (forall x0#0: Box :: 
        $IsBox(x0#0, #$T0)
           ==> Set#Equal(Reads1(#$T0, #$R, $OneHeap, f#0, x0#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc1(#$T0, #$R), $h));

function Tclass._System.___hTotalFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc1: TyTag;

// Tclass._System.___hTotalFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hTotalFunc1(#$T0, #$R)) == Tagclass._System.___hTotalFunc1
     && TagFamily(Tclass._System.___hTotalFunc1(#$T0, #$R)) == tytagFamily$_#TotalFunc1);

function Tclass._System.___hTotalFunc1_0(Ty) : Ty;

// Tclass._System.___hTotalFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tclass._System.___hTotalFunc1_0(Tclass._System.___hTotalFunc1(#$T0, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc1_1(Ty) : Ty;

// Tclass._System.___hTotalFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tclass._System.___hTotalFunc1_1(Tclass._System.___hTotalFunc1(#$T0, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc1(#$T0, #$R)));

// $Is axiom for subset type _System._#TotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R))
       && (forall x0#0: Box :: 
        $IsBox(x0#0, #$T0) ==> Requires1(#$T0, #$R, $OneHeap, f#0, x0#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h));

function Tclass._System.___hFunc0(Ty) : Ty;

const unique Tagclass._System.___hFunc0: TyTag;

// Tclass._System.___hFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hFunc0(#$R) } 
  Tag(Tclass._System.___hFunc0(#$R)) == Tagclass._System.___hFunc0
     && TagFamily(Tclass._System.___hFunc0(#$R)) == tytagFamily$_#Func0);

function Tclass._System.___hFunc0_0(Ty) : Ty;

// Tclass._System.___hFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hFunc0(#$R) } 
  Tclass._System.___hFunc0_0(Tclass._System.___hFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc0(#$R)));

function Handle0([Heap]Box, [Heap]bool, [Heap]Set) : HandleType;

function Apply0(Ty, Heap, HandleType) : Box;

function Requires0(Ty, Heap, HandleType) : bool;

function Reads0(Ty, Heap, HandleType) : Set;

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set :: 
  { Apply0(t0, heap, Handle0(h, r, rd)) } 
  Apply0(t0, heap, Handle0(h, r, rd)) == h[heap]);

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set :: 
  { Requires0(t0, heap, Handle0(h, r, rd)) } 
  r[heap] ==> Requires0(t0, heap, Handle0(h, r, rd)));

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set, bx: Box :: 
  { Set#IsMember(Reads0(t0, heap, Handle0(h, r, rd)), bx) } 
  Set#IsMember(Reads0(t0, heap, Handle0(h, r, rd)), bx)
     == Set#IsMember(rd[heap], bx));

function {:inline} Requires0#canCall(t0: Ty, heap: Heap, f: HandleType) : bool
{
  true
}

function {:inline} Reads0#canCall(t0: Ty, heap: Heap, f: HandleType) : bool
{
  true
}

// frame axiom for Reads0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Reads0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads0(t0, h0, f) == Reads0(t0, h1, f));

// frame axiom for Reads0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Reads0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads0(t0, h0, f) == Reads0(t0, h1, f));

// frame axiom for Requires0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Requires0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires0(t0, h0, f) == Requires0(t0, h1, f));

// frame axiom for Requires0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Requires0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires0(t0, h0, f) == Requires0(t0, h1, f));

// frame axiom for Apply0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Apply0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply0(t0, h0, f) == Apply0(t0, h1, f));

// frame axiom for Apply0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Apply0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply0(t0, h0, f) == Apply0(t0, h1, f));

// empty-reads property for Reads0 
axiom (forall t0: Ty, heap: Heap, f: HandleType :: 
  { Reads0(t0, $OneHeap, f), $IsGoodHeap(heap) } { Reads0(t0, heap, f) } 
  $IsGoodHeap(heap) && $Is(f, Tclass._System.___hFunc0(t0))
     ==> (Set#Equal(Reads0(t0, $OneHeap, f), Set#Empty(): Set)
       <==> Set#Equal(Reads0(t0, heap, f), Set#Empty(): Set)));

// empty-reads property for Requires0
axiom (forall t0: Ty, heap: Heap, f: HandleType :: 
  { Requires0(t0, $OneHeap, f), $IsGoodHeap(heap) } { Requires0(t0, heap, f) } 
  $IsGoodHeap(heap)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && Set#Equal(Reads0(t0, $OneHeap, f), Set#Empty(): Set)
     ==> Requires0(t0, $OneHeap, f) == Requires0(t0, heap, f));

axiom (forall f: HandleType, t0: Ty :: 
  { $Is(f, Tclass._System.___hFunc0(t0)) } 
  $Is(f, Tclass._System.___hFunc0(t0))
     <==> (forall h: Heap :: 
      { Apply0(t0, h, f) } 
      $IsGoodHeap(h) && Requires0(t0, h, f) ==> $IsBox(Apply0(t0, h, f), t0)));

axiom (forall f: HandleType, t0: Ty, u0: Ty :: 
  { $Is(f, Tclass._System.___hFunc0(t0)), $Is(f, Tclass._System.___hFunc0(u0)) } 
  $Is(f, Tclass._System.___hFunc0(t0))
       && (forall bx: Box :: 
        { $IsBox(bx, t0) } { $IsBox(bx, u0) } 
        $IsBox(bx, t0) ==> $IsBox(bx, u0))
     ==> $Is(f, Tclass._System.___hFunc0(u0)));

axiom (forall f: HandleType, t0: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc0(t0), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc0(t0), h)
       <==> Requires0(t0, h, f)
         ==> (forall r: ref :: 
          { Set#IsMember(Reads0(t0, h, f), $Box(r)) } 
          r != null && Set#IsMember(Reads0(t0, h, f), $Box(r))
             ==> $Unbox(read(h, r, alloc)): bool)));

axiom (forall f: HandleType, t0: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc0(t0), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc0(t0), h)
     ==> 
    Requires0(t0, h, f)
     ==> $IsAllocBox(Apply0(t0, h, f), t0, h));

function Tclass._System.___hPartialFunc0(Ty) : Ty;

const unique Tagclass._System.___hPartialFunc0: TyTag;

// Tclass._System.___hPartialFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hPartialFunc0(#$R) } 
  Tag(Tclass._System.___hPartialFunc0(#$R)) == Tagclass._System.___hPartialFunc0
     && TagFamily(Tclass._System.___hPartialFunc0(#$R)) == tytagFamily$_#PartialFunc0);

function Tclass._System.___hPartialFunc0_0(Ty) : Ty;

// Tclass._System.___hPartialFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hPartialFunc0(#$R) } 
  Tclass._System.___hPartialFunc0_0(Tclass._System.___hPartialFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc0(#$R)));

// $Is axiom for subset type _System._#PartialFunc0
axiom (forall #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc0(#$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc0(#$R))
     <==> $Is(f#0, Tclass._System.___hFunc0(#$R))
       && Set#Equal(Reads0(#$R, $OneHeap, f#0), Set#Empty(): Set));

// $IsAlloc axiom for subset type _System._#PartialFunc0
axiom (forall #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc0(#$R), $h));

function Tclass._System.___hTotalFunc0(Ty) : Ty;

const unique Tagclass._System.___hTotalFunc0: TyTag;

// Tclass._System.___hTotalFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hTotalFunc0(#$R) } 
  Tag(Tclass._System.___hTotalFunc0(#$R)) == Tagclass._System.___hTotalFunc0
     && TagFamily(Tclass._System.___hTotalFunc0(#$R)) == tytagFamily$_#TotalFunc0);

function Tclass._System.___hTotalFunc0_0(Ty) : Ty;

// Tclass._System.___hTotalFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hTotalFunc0(#$R) } 
  Tclass._System.___hTotalFunc0_0(Tclass._System.___hTotalFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc0(#$R)));

// $Is axiom for subset type _System._#TotalFunc0
axiom (forall #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc0(#$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc0(#$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc0(#$R)) && Requires0(#$R, $OneHeap, f#0));

// $IsAlloc axiom for subset type _System._#TotalFunc0
axiom (forall #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc0(#$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc0(#$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h));

const unique ##_System._tuple#2._#Make2: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_System._tuple#2._#Make2(a#0#0#0, a#0#1#0))
     == ##_System._tuple#2._#Make2);
}

function _System.Tuple2.___hMake2_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d) } 
  _System.Tuple2.___hMake2_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#2._#Make2);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d) } 
  _System.Tuple2.___hMake2_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: Box :: 
      d == #_System._tuple#2._#Make2(a#1#0#0, a#1#1#0)));

const unique Tagclass._System.Tuple2: TyTag;

// Tclass._System.Tuple2 Tag
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tag(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
       == Tagclass._System.Tuple2
     && TagFamily(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
       == tytagFamily$_tuple#2);

function Tclass._System.Tuple2_0(Ty) : Ty;

// Tclass._System.Tuple2 injectivity 0
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tclass._System.Tuple2_0(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     == _System._tuple#2$T0);

function Tclass._System.Tuple2_1(Ty) : Ty;

// Tclass._System.Tuple2 injectivity 1
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tclass._System.Tuple2_1(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     == _System._tuple#2$T1);

// Box/unbox axiom for Tclass._System.Tuple2
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $IsBox(bx, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)));

// Constructor $Is
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, a#2#0#0: Box, a#2#1#0: Box :: 
  { $Is(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $Is(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     <==> $IsBox(a#2#0#0, _System._tuple#2$T0) && $IsBox(a#2#1#0, _System._tuple#2$T1));

// Constructor $IsAlloc
axiom (forall _System._tuple#2$T0: Ty, 
    _System._tuple#2$T1: Ty, 
    a#2#0#0: Box, 
    a#2#1#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
        Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _System._tuple#2$T0, $h)
         && $IsAllocBox(a#2#1#0, _System._tuple#2$T1, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2._0(d), _System._tuple#2$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2.___hMake2_q(d)
       && (exists _System._tuple#2$T1: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h))
     ==> $IsAllocBox(_System.Tuple2._0(d), _System._tuple#2$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2._1(d), _System._tuple#2$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2.___hMake2_q(d)
       && (exists _System._tuple#2$T0: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h))
     ==> $IsAllocBox(_System.Tuple2._1(d), _System._tuple#2$T1, $h));

// Constructor literal
axiom (forall a#3#0#0: Box, a#3#1#0: Box :: 
  { #_System._tuple#2._#Make2(Lit(a#3#0#0), Lit(a#3#1#0)) } 
  #_System._tuple#2._#Make2(Lit(a#3#0#0), Lit(a#3#1#0))
     == Lit(#_System._tuple#2._#Make2(a#3#0#0, a#3#1#0)));

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#4#0#0, a#4#1#0) } 
  _System.Tuple2._0(#_System._tuple#2._#Make2(a#4#0#0, a#4#1#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box, a#5#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#5#0#0, a#5#1#0) } 
  BoxRank(a#5#0#0) < DtRank(#_System._tuple#2._#Make2(a#5#0#0, a#5#1#0)));

// Constructor injectivity
axiom (forall a#6#0#0: Box, a#6#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#6#0#0, a#6#1#0) } 
  _System.Tuple2._1(#_System._tuple#2._#Make2(a#6#0#0, a#6#1#0)) == a#6#1#0);

// Inductive rank
axiom (forall a#7#0#0: Box, a#7#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#7#0#0, a#7#1#0) } 
  BoxRank(a#7#1#0) < DtRank(#_System._tuple#2._#Make2(a#7#0#0, a#7#1#0)));

// Depth-one case-split function
function $IsA#_System.Tuple2(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple2(d) } 
  $IsA#_System.Tuple2(d) ==> _System.Tuple2.___hMake2_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d), $Is(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $Is(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     ==> _System.Tuple2.___hMake2_q(d));

// Datatype extensional equality declaration
function _System.Tuple2#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#2._#Make2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2#Equal(a, b) } 
  _System.Tuple2#Equal(a, b)
     <==> _System.Tuple2._0(a) == _System.Tuple2._0(b)
       && _System.Tuple2._1(a) == _System.Tuple2._1(b));

// Datatype extensionality axiom: _System._tuple#2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2#Equal(a, b) } 
  _System.Tuple2#Equal(a, b) <==> a == b);

const unique class._System.Tuple2: ClassName;

// Constructor function declaration
function #_System._tuple#0._#Make0() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_System._tuple#0._#Make0()) == ##_System._tuple#0._#Make0;
// Constructor $Is
axiom $Is(#_System._tuple#0._#Make0(), Tclass._System.Tuple0());
// Constructor literal
axiom #_System._tuple#0._#Make0() == Lit(#_System._tuple#0._#Make0());
}

const unique ##_System._tuple#0._#Make0: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_System._tuple#0._#Make0()) == ##_System._tuple#0._#Make0;
}

function _System.Tuple0.___hMake0_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d) } 
  _System.Tuple0.___hMake0_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#0._#Make0);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d) } 
  _System.Tuple0.___hMake0_q(d) ==> d == #_System._tuple#0._#Make0());

function Tclass._System.Tuple0() : Ty
uses {
// Tclass._System.Tuple0 Tag
axiom Tag(Tclass._System.Tuple0()) == Tagclass._System.Tuple0
   && TagFamily(Tclass._System.Tuple0()) == tytagFamily$_tuple#0;
}

const unique Tagclass._System.Tuple0: TyTag;

// Box/unbox axiom for Tclass._System.Tuple0
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple0()) } 
  $IsBox(bx, Tclass._System.Tuple0())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._System.Tuple0()));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._System.Tuple0(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._System.Tuple0())
     ==> $IsAlloc(d, Tclass._System.Tuple0(), $h));

// Depth-one case-split function
function $IsA#_System.Tuple0(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple0(d) } 
  $IsA#_System.Tuple0(d) ==> _System.Tuple0.___hMake0_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d), $Is(d, Tclass._System.Tuple0()) } 
  $Is(d, Tclass._System.Tuple0()) ==> _System.Tuple0.___hMake0_q(d));

// Datatype extensional equality declaration
function _System.Tuple0#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#0._#Make0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple0#Equal(a, b) } 
  _System.Tuple0#Equal(a, b));

// Datatype extensionality axiom: _System._tuple#0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple0#Equal(a, b) } 
  _System.Tuple0#Equal(a, b) <==> a == b);

const unique class._System.Tuple0: ClassName;

const unique class._module.__default: ClassName;

const unique class._module.AmortizedQueue?: ClassName;

function Tclass._module.AmortizedQueue?(Ty) : Ty;

const unique Tagclass._module.AmortizedQueue?: TyTag;

// Tclass._module.AmortizedQueue? Tag
axiom (forall _module.AmortizedQueue$T: Ty :: 
  { Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T) } 
  Tag(Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T))
       == Tagclass._module.AmortizedQueue?
     && TagFamily(Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T))
       == tytagFamily$AmortizedQueue);

function Tclass._module.AmortizedQueue?_0(Ty) : Ty;

// Tclass._module.AmortizedQueue? injectivity 0
axiom (forall _module.AmortizedQueue$T: Ty :: 
  { Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T) } 
  Tclass._module.AmortizedQueue?_0(Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T))
     == _module.AmortizedQueue$T);

// Box/unbox axiom for Tclass._module.AmortizedQueue?
axiom (forall _module.AmortizedQueue$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T)) } 
  $IsBox(bx, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T)));

// $Is axiom for class AmortizedQueue
axiom (forall _module.AmortizedQueue$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T)) } 
  $Is($o, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T))
     <==> $o == null
       || dtype($o) == Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T));

// $IsAlloc axiom for class AmortizedQueue
axiom (forall _module.AmortizedQueue$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T), $h) } 
  $IsAlloc($o, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.AmortizedQueue.front: Field
uses {
axiom FDim(_module.AmortizedQueue.front) == 0
   && FieldOfDecl(class._module.AmortizedQueue?, field$front)
     == _module.AmortizedQueue.front
   && !$IsGhostField(_module.AmortizedQueue.front);
}

function Tclass._module.LinkedList(Ty) : Ty;

const unique Tagclass._module.LinkedList: TyTag;

// Tclass._module.LinkedList Tag
axiom (forall _module.LinkedList$T: Ty :: 
  { Tclass._module.LinkedList(_module.LinkedList$T) } 
  Tag(Tclass._module.LinkedList(_module.LinkedList$T))
       == Tagclass._module.LinkedList
     && TagFamily(Tclass._module.LinkedList(_module.LinkedList$T))
       == tytagFamily$LinkedList);

function Tclass._module.LinkedList_0(Ty) : Ty;

// Tclass._module.LinkedList injectivity 0
axiom (forall _module.LinkedList$T: Ty :: 
  { Tclass._module.LinkedList(_module.LinkedList$T) } 
  Tclass._module.LinkedList_0(Tclass._module.LinkedList(_module.LinkedList$T))
     == _module.LinkedList$T);

// Box/unbox axiom for Tclass._module.LinkedList
axiom (forall _module.LinkedList$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.LinkedList(_module.LinkedList$T)) } 
  $IsBox(bx, Tclass._module.LinkedList(_module.LinkedList$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.LinkedList(_module.LinkedList$T)));

// AmortizedQueue.front: Type axiom
axiom (forall _module.AmortizedQueue$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AmortizedQueue.front)): ref, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T)
     ==> $Is($Unbox(read($h, $o, _module.AmortizedQueue.front)): ref, 
      Tclass._module.LinkedList(_module.AmortizedQueue$T)));

// AmortizedQueue.front: Allocation axiom
axiom (forall _module.AmortizedQueue$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AmortizedQueue.front)): ref, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.AmortizedQueue.front)): ref, 
      Tclass._module.LinkedList(_module.AmortizedQueue$T), 
      $h));

const _module.AmortizedQueue.rear: Field
uses {
axiom FDim(_module.AmortizedQueue.rear) == 0
   && FieldOfDecl(class._module.AmortizedQueue?, field$rear)
     == _module.AmortizedQueue.rear
   && !$IsGhostField(_module.AmortizedQueue.rear);
}

// AmortizedQueue.rear: Type axiom
axiom (forall _module.AmortizedQueue$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AmortizedQueue.rear)): ref, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T)
     ==> $Is($Unbox(read($h, $o, _module.AmortizedQueue.rear)): ref, 
      Tclass._module.LinkedList(_module.AmortizedQueue$T)));

// AmortizedQueue.rear: Allocation axiom
axiom (forall _module.AmortizedQueue$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AmortizedQueue.rear)): ref, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.AmortizedQueue.rear)): ref, 
      Tclass._module.LinkedList(_module.AmortizedQueue$T), 
      $h));

const _module.AmortizedQueue.Repr: Field
uses {
axiom FDim(_module.AmortizedQueue.Repr) == 0
   && FieldOfDecl(class._module.AmortizedQueue?, field$Repr)
     == _module.AmortizedQueue.Repr
   && $IsGhostField(_module.AmortizedQueue.Repr);
}

// AmortizedQueue.Repr: Type axiom
axiom (forall _module.AmortizedQueue$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AmortizedQueue.Repr)): Set, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T)
     ==> $Is($Unbox(read($h, $o, _module.AmortizedQueue.Repr)): Set, 
      TSet(Tclass._System.object())));

// AmortizedQueue.Repr: Allocation axiom
axiom (forall _module.AmortizedQueue$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AmortizedQueue.Repr)): Set, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.AmortizedQueue.Repr)): Set, 
      TSet(Tclass._System.object()), 
      $h));

const _module.AmortizedQueue.List: Field
uses {
axiom FDim(_module.AmortizedQueue.List) == 0
   && FieldOfDecl(class._module.AmortizedQueue?, field$List)
     == _module.AmortizedQueue.List
   && $IsGhostField(_module.AmortizedQueue.List);
}

// AmortizedQueue.List: Type axiom
axiom (forall _module.AmortizedQueue$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AmortizedQueue.List)): Seq, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T)
     ==> $Is($Unbox(read($h, $o, _module.AmortizedQueue.List)): Seq, 
      TSeq(_module.AmortizedQueue$T)));

// AmortizedQueue.List: Allocation axiom
axiom (forall _module.AmortizedQueue$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AmortizedQueue.List)): Seq, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.AmortizedQueue.List)): Seq, 
      TSeq(_module.AmortizedQueue$T), 
      $h));

// function declaration for _module.AmortizedQueue.Valid
function _module.AmortizedQueue.Valid(_module.AmortizedQueue$T: Ty, $heap: Heap, this: ref) : bool
uses {
// consequence axiom for _module.AmortizedQueue.Valid
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.AmortizedQueue$T: Ty, $Heap: Heap, this: ref :: 
    { _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this) } 
    _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
           && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap))
       ==> 
      _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       ==> Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this)));
// definition axiom for _module.AmortizedQueue.Valid (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall _module.AmortizedQueue$T: Ty, $Heap: Heap, this: ref :: 
    { _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this), $IsGoodHeap($Heap) } 
    _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
           && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.front))
           ==> 
          Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
           ==> _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
              $Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
             && (_module.LinkedList.Valid(_module.AmortizedQueue$T, 
                $LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
               ==> 
              Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
                read($Heap, this, _module.AmortizedQueue.rear))
               ==> 
              Set#Subset($Unbox(read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                    _module.LinkedList.Repr)): Set, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
               ==> _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
                 && (_module.LinkedList.Valid(_module.AmortizedQueue$T, 
                    $LS($LZ), 
                    $Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
                   ==> 
                  Seq#Length($Unbox(read($Heap, 
                          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                          _module.LinkedList.List)): Seq)
                     <= Seq#Length($Unbox(read($Heap, 
                          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                          _module.LinkedList.List)): Seq)
                   ==> _module.LinkedList.ReverseSeq#canCall(_module.AmortizedQueue$T, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.List)): Seq))))
         && _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
             && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
              read($Heap, this, _module.AmortizedQueue.front))
             && Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
             && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
             && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
              read($Heap, this, _module.AmortizedQueue.rear))
             && Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
             && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
             && Seq#Length($Unbox(read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                    _module.LinkedList.List)): Seq)
               <= Seq#Length($Unbox(read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                    _module.LinkedList.List)): Seq)
             && Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
              Seq#Append($Unbox(read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                    _module.LinkedList.List)): Seq, 
                _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
                  $LS($LZ), 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.List)): Seq)))));
}

function _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T: Ty, $heap: Heap, this: ref) : bool;

function Tclass._module.AmortizedQueue(Ty) : Ty;

const unique Tagclass._module.AmortizedQueue: TyTag;

// Tclass._module.AmortizedQueue Tag
axiom (forall _module.AmortizedQueue$T: Ty :: 
  { Tclass._module.AmortizedQueue(_module.AmortizedQueue$T) } 
  Tag(Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
       == Tagclass._module.AmortizedQueue
     && TagFamily(Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
       == tytagFamily$AmortizedQueue);

function Tclass._module.AmortizedQueue_0(Ty) : Ty;

// Tclass._module.AmortizedQueue injectivity 0
axiom (forall _module.AmortizedQueue$T: Ty :: 
  { Tclass._module.AmortizedQueue(_module.AmortizedQueue$T) } 
  Tclass._module.AmortizedQueue_0(Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
     == _module.AmortizedQueue$T);

// Box/unbox axiom for Tclass._module.AmortizedQueue
axiom (forall _module.AmortizedQueue$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T)) } 
  $IsBox(bx, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T)));

// frame axiom for _module.AmortizedQueue.Valid
axiom (forall _module.AmortizedQueue$T: Ty, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.AmortizedQueue.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $h0, this)
       == _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $h1, this));

function _module.AmortizedQueue.Valid#requires(Ty, Heap, ref) : bool;

// #requires axiom for _module.AmortizedQueue.Valid
axiom (forall _module.AmortizedQueue$T: Ty, $Heap: Heap, this: ref :: 
  { _module.AmortizedQueue.Valid#requires(_module.AmortizedQueue$T, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
       && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap)
     ==> _module.AmortizedQueue.Valid#requires(_module.AmortizedQueue$T, $Heap, this)
       == true);

procedure {:verboseName "AmortizedQueue.Valid (well-formedness)"} CheckWellformed$$_module.AmortizedQueue.Valid(_module.AmortizedQueue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id1"} _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
     ==> Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this));



function Tclass._module.LinkedList?(Ty) : Ty;

const unique Tagclass._module.LinkedList?: TyTag;

// Tclass._module.LinkedList? Tag
axiom (forall _module.LinkedList$T: Ty :: 
  { Tclass._module.LinkedList?(_module.LinkedList$T) } 
  Tag(Tclass._module.LinkedList?(_module.LinkedList$T))
       == Tagclass._module.LinkedList?
     && TagFamily(Tclass._module.LinkedList?(_module.LinkedList$T))
       == tytagFamily$LinkedList);

function Tclass._module.LinkedList?_0(Ty) : Ty;

// Tclass._module.LinkedList? injectivity 0
axiom (forall _module.LinkedList$T: Ty :: 
  { Tclass._module.LinkedList?(_module.LinkedList$T) } 
  Tclass._module.LinkedList?_0(Tclass._module.LinkedList?(_module.LinkedList$T))
     == _module.LinkedList$T);

// Box/unbox axiom for Tclass._module.LinkedList?
axiom (forall _module.LinkedList$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.LinkedList?(_module.LinkedList$T)) } 
  $IsBox(bx, Tclass._module.LinkedList?(_module.LinkedList$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.LinkedList?(_module.LinkedList$T)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AmortizedQueue.Valid (well-formedness)"} CheckWellformed$$_module.AmortizedQueue.Valid(_module.AmortizedQueue$T: Ty, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var ##s#0: Seq;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;
  var b$reqreads#13: bool;
  var b$reqreads#14: bool;
  var b$reqreads#15: bool;
  var b$reqreads#16: bool;
  var b$reqreads#17: bool;
  var b$reqreads#18: bool;
  var b$reqreads#19: bool;
  var b$reqreads#20: bool;
  var b$reqreads#21: bool;
  var b$reqreads#22: bool;
  var b$reqreads#23: bool;
  var b$reqreads#24: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;
    b$reqreads#13 := true;
    b$reqreads#14 := true;
    b$reqreads#15 := true;
    b$reqreads#16 := true;
    b$reqreads#17 := true;
    b$reqreads#18 := true;
    b$reqreads#19 := true;
    b$reqreads#20 := true;
    b$reqreads#21 := true;
    b$reqreads#22 := true;
    b$reqreads#23 := true;
    b$reqreads#24 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.AmortizedQueue.Repr];
    assert {:id "id2"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T), $Heap);
            assert {:id "id3"} this == this
               || (Set#Subset(Set#Union($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this
               || _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this);
            assume {:id "id4"} _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this);
            assume {:id "id5"} Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this));
        }
        else
        {
            assume {:id "id6"} _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
               ==> Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.AmortizedQueue.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.AmortizedQueue.front];
            b$reqreads#3 := $_ReadsFrame[this, _module.AmortizedQueue.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.front)))
        {
            b$reqreads#4 := $_ReadsFrame[this, _module.AmortizedQueue.front];
            assert {:id "id7"} $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref != null;
            b$reqreads#5 := $_ReadsFrame[$Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, _module.LinkedList.Repr];
            b$reqreads#6 := $_ReadsFrame[this, _module.AmortizedQueue.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.front))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set))
        {
            b$reqreads#7 := $_ReadsFrame[this, _module.AmortizedQueue.front];
            assert {:id "id8"} $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.AmortizedQueue.front), 
              Tclass._module.LinkedList?(_module.AmortizedQueue$T), 
              $Heap);
            b$reqreads#8 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && ($o == $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref
                     || Set#IsMember($Unbox(read($Heap, 
                          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                          _module.LinkedList.Repr)): Set, 
                      $Box($o)))
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
              $Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref);
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.front))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
           && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref))
        {
            b$reqreads#9 := $_ReadsFrame[this, _module.AmortizedQueue.rear];
            b$reqreads#10 := $_ReadsFrame[this, _module.AmortizedQueue.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.front))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
           && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.rear)))
        {
            b$reqreads#11 := $_ReadsFrame[this, _module.AmortizedQueue.rear];
            assert {:id "id9"} $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref != null;
            b$reqreads#12 := $_ReadsFrame[$Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, _module.LinkedList.Repr];
            b$reqreads#13 := $_ReadsFrame[this, _module.AmortizedQueue.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.front))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
           && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.rear))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set))
        {
            b$reqreads#14 := $_ReadsFrame[this, _module.AmortizedQueue.rear];
            assert {:id "id10"} $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.AmortizedQueue.rear), 
              Tclass._module.LinkedList?(_module.AmortizedQueue$T), 
              $Heap);
            b$reqreads#15 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && ($o == $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref
                     || Set#IsMember($Unbox(read($Heap, 
                          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                          _module.LinkedList.Repr)): Set, 
                      $Box($o)))
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
              $Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref);
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.front))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
           && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.rear))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
           && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref))
        {
            b$reqreads#16 := $_ReadsFrame[this, _module.AmortizedQueue.rear];
            assert {:id "id11"} $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref != null;
            b$reqreads#17 := $_ReadsFrame[$Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, _module.LinkedList.List];
            b$reqreads#18 := $_ReadsFrame[this, _module.AmortizedQueue.front];
            assert {:id "id12"} $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref != null;
            b$reqreads#19 := $_ReadsFrame[$Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, _module.LinkedList.List];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.front))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
           && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.rear))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
           && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           && Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq)
             <= Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq))
        {
            b$reqreads#20 := $_ReadsFrame[this, _module.AmortizedQueue.List];
            b$reqreads#21 := $_ReadsFrame[this, _module.AmortizedQueue.front];
            assert {:id "id13"} $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref != null;
            b$reqreads#22 := $_ReadsFrame[$Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, _module.LinkedList.List];
            b$reqreads#23 := $_ReadsFrame[this, _module.AmortizedQueue.rear];
            assert {:id "id14"} $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref != null;
            b$reqreads#24 := $_ReadsFrame[$Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, _module.LinkedList.List];
            ##s#0 := $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.List)): Seq;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, TSeq(_module.AmortizedQueue$T), $Heap);
            assume _module.LinkedList.ReverseSeq#canCall(_module.AmortizedQueue$T, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq);
        }

        assume {:id "id15"} _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
             && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
              read($Heap, this, _module.AmortizedQueue.front))
             && Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
             && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
             && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
              read($Heap, this, _module.AmortizedQueue.rear))
             && Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
             && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
             && Seq#Length($Unbox(read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                    _module.LinkedList.List)): Seq)
               <= Seq#Length($Unbox(read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                    _module.LinkedList.List)): Seq)
             && Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
              Seq#Append($Unbox(read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                    _module.LinkedList.List)): Seq, 
                _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
                  $LS($LZ), 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.List)): Seq))));
        assume Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.front))
           ==> 
          Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
           ==> _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
              $Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
             && (_module.LinkedList.Valid(_module.AmortizedQueue$T, 
                $LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
               ==> 
              Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
                read($Heap, this, _module.AmortizedQueue.rear))
               ==> 
              Set#Subset($Unbox(read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                    _module.LinkedList.Repr)): Set, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
               ==> _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
                 && (_module.LinkedList.Valid(_module.AmortizedQueue$T, 
                    $LS($LZ), 
                    $Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
                   ==> 
                  Seq#Length($Unbox(read($Heap, 
                          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                          _module.LinkedList.List)): Seq)
                     <= Seq#Length($Unbox(read($Heap, 
                          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                          _module.LinkedList.List)): Seq)
                   ==> _module.LinkedList.ReverseSeq#canCall(_module.AmortizedQueue$T, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.List)): Seq)));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this), TBool);
        assert {:id "id16"} b$reqreads#1;
        assert {:id "id17"} b$reqreads#2;
        assert {:id "id18"} b$reqreads#3;
        assert {:id "id19"} b$reqreads#4;
        assert {:id "id20"} b$reqreads#5;
        assert {:id "id21"} b$reqreads#6;
        assert {:id "id22"} b$reqreads#7;
        assert {:id "id23"} b$reqreads#8;
        assert {:id "id24"} b$reqreads#9;
        assert {:id "id25"} b$reqreads#10;
        assert {:id "id26"} b$reqreads#11;
        assert {:id "id27"} b$reqreads#12;
        assert {:id "id28"} b$reqreads#13;
        assert {:id "id29"} b$reqreads#14;
        assert {:id "id30"} b$reqreads#15;
        assert {:id "id31"} b$reqreads#16;
        assert {:id "id32"} b$reqreads#17;
        assert {:id "id33"} b$reqreads#18;
        assert {:id "id34"} b$reqreads#19;
        assert {:id "id35"} b$reqreads#20;
        assert {:id "id36"} b$reqreads#21;
        assert {:id "id37"} b$reqreads#22;
        assert {:id "id38"} b$reqreads#23;
        assert {:id "id39"} b$reqreads#24;
        return;

        assume false;
    }
}



procedure {:verboseName "AmortizedQueue.Init (well-formedness)"} CheckWellFormed$$_module.AmortizedQueue.Init(_module.AmortizedQueue$T: Ty) returns (this: ref);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AmortizedQueue.Init (call)"} Call$$_module.AmortizedQueue.Init(_module.AmortizedQueue$T: Ty)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this);
  free ensures {:id "id42"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     && 
    _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
     && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
      read($Heap, this, _module.AmortizedQueue.front))
     && Set#Subset($Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
          _module.LinkedList.Repr)): Set, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
     && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
     && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
      read($Heap, this, _module.AmortizedQueue.rear))
     && Set#Subset($Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
          _module.LinkedList.Repr)): Set, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
     && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
     && Seq#Length($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
            _module.LinkedList.List)): Seq)
       <= Seq#Length($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.List)): Seq)
     && Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
      Seq#Append($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.List)): Seq, 
        _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
          $LS($LZ), 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
              _module.LinkedList.List)): Seq)));
  ensures {:id "id43"} Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, Seq#Empty(): Seq);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AmortizedQueue.Init (correctness)"} Impl$$_module.AmortizedQueue.Init(_module.AmortizedQueue$T: Ty) returns (this: ref, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this);
  ensures {:id "id44"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this));
  ensures {:id "id45"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
        read($Heap, this, _module.AmortizedQueue.front));
  ensures {:id "id46"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#Subset($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.Repr)): Set, 
        $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set);
  ensures {:id "id47"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.front)));
  ensures {:id "id48"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || LitInt(0)
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.length)): int);
  ensures {:id "id49"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq));
  ensures {:id "id50"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Empty(): Seq)));
  ensures {:id "id51"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref
               == null));
  ensures {:id "id52"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref
               != null));
  ensures {:id "id53"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.tail))));
  ensures {:id "id54"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set)));
  ensures {:id "id55"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, this, _module.AmortizedQueue.front))));
  ensures {:id "id56"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref)));
  ensures {:id "id57"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                    _module.LinkedList.head)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.List)): Seq))));
  ensures {:id "id58"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.length)): int
                 + 1));
  ensures {:id "id59"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
        read($Heap, this, _module.AmortizedQueue.rear));
  ensures {:id "id60"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#Subset($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
            _module.LinkedList.Repr)): Set, 
        $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set);
  ensures {:id "id61"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.rear)));
  ensures {:id "id62"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || LitInt(0)
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.length)): int);
  ensures {:id "id63"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq));
  ensures {:id "id64"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Empty(): Seq)));
  ensures {:id "id65"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref
               == null));
  ensures {:id "id66"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref
               != null));
  ensures {:id "id67"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.tail))));
  ensures {:id "id68"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set)));
  ensures {:id "id69"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, this, _module.AmortizedQueue.rear))));
  ensures {:id "id70"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref)));
  ensures {:id "id71"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                    _module.LinkedList.head)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.List)): Seq))));
  ensures {:id "id72"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.length)): int
                 + 1));
  ensures {:id "id73"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
              _module.LinkedList.List)): Seq)
         <= Seq#Length($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
              _module.LinkedList.List)): Seq);
  ensures {:id "id74"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
        Seq#Append($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
              _module.LinkedList.List)): Seq, 
          _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
            $LS($LS($LZ)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.List)): Seq)));
  ensures {:id "id75"} Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, Seq#Empty(): Seq);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AmortizedQueue.Init (correctness)"} Impl$$_module.AmortizedQueue.Init(_module.AmortizedQueue$T: Ty) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.front: ref;
  var this.rear: ref;
  var this.Repr: Set;
  var this.List: Seq;
  var defass#this.front: bool;
  var defass#this.rear: bool;
  var $nw: ref;
  var $rhs#0: Set;
  var $rhs#1: Seq;

    // AddMethodImpl: Init, Impl$$_module.AmortizedQueue.Init
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(34,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(35,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(35,32)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id76"} $nw := Call$$_module.LinkedList.Init(_module.AmortizedQueue$T);
    // TrCallStmt: After ProcessCallStmt
    this.front := $nw;
    defass#this.front := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(36,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(36,31)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id78"} $nw := Call$$_module.LinkedList.Init(_module.AmortizedQueue$T);
    // TrCallStmt: After ProcessCallStmt
    this.rear := $nw;
    defass#this.rear := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(34,3)
    assert {:id "id80"} defass#this.front;
    assert {:id "id81"} defass#this.rear;
    assume this != null
       && $Is(this, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref == this.front;
    assume $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref == this.rear;
    assume $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set == this.Repr;
    assume $Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq == this.List;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(34,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(38,10)
    assume true;
    assert {:id "id82"} $_ModifiesFrame[this, _module.AmortizedQueue.Repr];
    assert {:id "id83"} $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref != null;
    assert {:id "id84"} $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref != null;
    assume true;
    $rhs#0 := Set#Union(Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
        $Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.Repr)): Set), 
      $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
          _module.LinkedList.Repr)): Set);
    $Heap := update($Heap, this, _module.AmortizedQueue.Repr, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(39,10)
    assume true;
    assert {:id "id87"} $_ModifiesFrame[this, _module.AmortizedQueue.List];
    assume true;
    $rhs#1 := Lit(Seq#Empty(): Seq);
    $Heap := update($Heap, this, _module.AmortizedQueue.List, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "AmortizedQueue.InitFromPieces (well-formedness)"} CheckWellFormed$$_module.AmortizedQueue.InitFromPieces(_module.AmortizedQueue$T: Ty, 
    f#0: ref
       where $Is(f#0, Tclass._module.LinkedList(_module.AmortizedQueue$T))
         && $IsAlloc(f#0, Tclass._module.LinkedList(_module.AmortizedQueue$T), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass._module.LinkedList(_module.AmortizedQueue$T))
         && $IsAlloc(r#0, Tclass._module.LinkedList(_module.AmortizedQueue$T), $Heap))
   returns (this: ref);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AmortizedQueue.InitFromPieces (well-formedness)"} CheckWellFormed$$_module.AmortizedQueue.InitFromPieces(_module.AmortizedQueue$T: Ty, f#0: ref, r#0: ref) returns (this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: Seq;


    // AddMethodImpl: InitFromPieces, CheckWellFormed$$_module.AmortizedQueue.InitFromPieces
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id90"} f#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(f#0), Tclass._module.LinkedList?(_module.AmortizedQueue$T), $Heap);
    assume _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, f#0);
    assume {:id "id91"} _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, f#0);
    assert {:id "id92"} r#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(r#0), Tclass._module.LinkedList?(_module.AmortizedQueue$T), $Heap);
    assume _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0);
    assume {:id "id93"} _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, r#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc this;
    assume this != null
       && 
      $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
       && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T), $Heap);
    assume _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this);
    assume {:id "id94"} _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this);
    assert {:id "id95"} f#0 != null;
    assert {:id "id96"} r#0 != null;
    ##s#0 := $Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, TSeq(_module.AmortizedQueue$T), $Heap);
    assume _module.LinkedList.ReverseSeq#canCall(_module.AmortizedQueue$T, $Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq);
    assume {:id "id97"} Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
      Seq#Append($Unbox(read($Heap, f#0, _module.LinkedList.List)): Seq, 
        _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
          $LS($LZ), 
          $Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq)));
}



procedure {:verboseName "AmortizedQueue.InitFromPieces (call)"} Call$$_module.AmortizedQueue.InitFromPieces(_module.AmortizedQueue$T: Ty, 
    f#0: ref
       where $Is(f#0, Tclass._module.LinkedList(_module.AmortizedQueue$T))
         && $IsAlloc(f#0, Tclass._module.LinkedList(_module.AmortizedQueue$T), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass._module.LinkedList(_module.AmortizedQueue$T))
         && $IsAlloc(r#0, Tclass._module.LinkedList(_module.AmortizedQueue$T), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap));
  // user-defined preconditions
  requires {:id "id98"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, f#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, f#0)
       || Set#IsMember($Unbox(read($Heap, f#0, _module.LinkedList.Repr)): Set, $Box(f#0));
  requires {:id "id99"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, f#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, f#0)
       || LitInt(0) <= $Unbox(read($Heap, f#0, _module.LinkedList.length)): int;
  requires {:id "id100"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, f#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, f#0)
       || $Unbox(read($Heap, f#0, _module.LinkedList.length)): int
         == Seq#Length($Unbox(read($Heap, f#0, _module.LinkedList.List)): Seq);
  requires {:id "id101"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, f#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, f#0)
       || ($Unbox(read($Heap, f#0, _module.LinkedList.length)): int == LitInt(0)
         ==> Seq#Equal($Unbox(read($Heap, f#0, _module.LinkedList.List)): Seq, Seq#Empty(): Seq));
  requires {:id "id102"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, f#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, f#0)
       || ($Unbox(read($Heap, f#0, _module.LinkedList.length)): int == LitInt(0)
         ==> $Unbox(read($Heap, f#0, _module.LinkedList.tail)): ref == null);
  requires {:id "id103"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, f#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, f#0)
       || ($Unbox(read($Heap, f#0, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, f#0, _module.LinkedList.tail)): ref != null);
  requires {:id "id104"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, f#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, f#0)
       || ($Unbox(read($Heap, f#0, _module.LinkedList.length)): int != 0
         ==> Set#IsMember($Unbox(read($Heap, f#0, _module.LinkedList.Repr)): Set, 
          read($Heap, f#0, _module.LinkedList.tail)));
  requires {:id "id105"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, f#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, f#0)
       || ($Unbox(read($Heap, f#0, _module.LinkedList.length)): int != 0
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, f#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, f#0, _module.LinkedList.Repr)): Set));
  requires {:id "id106"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, f#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, f#0)
       || ($Unbox(read($Heap, f#0, _module.LinkedList.length)): int != 0
         ==> !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, f#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(f#0)));
  requires {:id "id107"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, f#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, f#0)
       || ($Unbox(read($Heap, f#0, _module.LinkedList.length)): int != 0
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
          $LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, f#0, _module.LinkedList.tail)): ref));
  requires {:id "id108"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, f#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, f#0)
       || ($Unbox(read($Heap, f#0, _module.LinkedList.length)): int != 0
         ==> Seq#Equal($Unbox(read($Heap, f#0, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, f#0, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, f#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq)));
  requires {:id "id109"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, f#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, f#0)
       || ($Unbox(read($Heap, f#0, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, f#0, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, f#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  requires {:id "id110"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, r#0)
       || Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, $Box(r#0));
  requires {:id "id111"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, r#0)
       || LitInt(0) <= $Unbox(read($Heap, r#0, _module.LinkedList.length)): int;
  requires {:id "id112"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, r#0)
       || $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
         == Seq#Length($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq);
  requires {:id "id113"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int == LitInt(0)
         ==> Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, Seq#Empty(): Seq));
  requires {:id "id114"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int == LitInt(0)
         ==> $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref == null);
  requires {:id "id115"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref != null);
  requires {:id "id116"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, 
          read($Heap, r#0, _module.LinkedList.tail)));
  requires {:id "id117"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set));
  requires {:id "id118"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(r#0)));
  requires {:id "id119"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
          $LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref));
  requires {:id "id120"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, r#0, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq)));
  requires {:id "id121"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     && (_module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       ==> _module.LinkedList.ReverseSeq#canCall(_module.AmortizedQueue$T, $Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq));
  free ensures {:id "id122"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     && 
    _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
     && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
      read($Heap, this, _module.AmortizedQueue.front))
     && Set#Subset($Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
          _module.LinkedList.Repr)): Set, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
     && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
     && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
      read($Heap, this, _module.AmortizedQueue.rear))
     && Set#Subset($Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
          _module.LinkedList.Repr)): Set, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
     && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
     && Seq#Length($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
            _module.LinkedList.List)): Seq)
       <= Seq#Length($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.List)): Seq)
     && Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
      Seq#Append($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.List)): Seq, 
        _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
          $LS($LZ), 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
              _module.LinkedList.List)): Seq)));
  ensures {:id "id123"} Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
    Seq#Append($Unbox(read($Heap, f#0, _module.LinkedList.List)): Seq, 
      _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
        $LS($LS($LZ)), 
        $Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq)));
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AmortizedQueue.InitFromPieces (correctness)"} Impl$$_module.AmortizedQueue.InitFromPieces(_module.AmortizedQueue$T: Ty, 
    f#0: ref
       where $Is(f#0, Tclass._module.LinkedList(_module.AmortizedQueue$T))
         && $IsAlloc(f#0, Tclass._module.LinkedList(_module.AmortizedQueue$T), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass._module.LinkedList(_module.AmortizedQueue$T))
         && $IsAlloc(r#0, Tclass._module.LinkedList(_module.AmortizedQueue$T), $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id124"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, f#0)
     && 
    _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, f#0)
     && 
    Set#IsMember($Unbox(read($Heap, f#0, _module.LinkedList.Repr)): Set, $Box(f#0))
     && LitInt(0) <= $Unbox(read($Heap, f#0, _module.LinkedList.length)): int
     && $Unbox(read($Heap, f#0, _module.LinkedList.length)): int
       == Seq#Length($Unbox(read($Heap, f#0, _module.LinkedList.List)): Seq)
     && ($Unbox(read($Heap, f#0, _module.LinkedList.length)): int == LitInt(0)
       ==> Seq#Equal($Unbox(read($Heap, f#0, _module.LinkedList.List)): Seq, Seq#Empty(): Seq)
         && $Unbox(read($Heap, f#0, _module.LinkedList.tail)): ref == null)
     && ($Unbox(read($Heap, f#0, _module.LinkedList.length)): int != 0
       ==> $Unbox(read($Heap, f#0, _module.LinkedList.tail)): ref != null
         && Set#IsMember($Unbox(read($Heap, f#0, _module.LinkedList.Repr)): Set, 
          read($Heap, f#0, _module.LinkedList.tail))
         && Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, f#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, f#0, _module.LinkedList.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, f#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(f#0))
         && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, f#0, _module.LinkedList.tail)): ref)
         && Seq#Equal($Unbox(read($Heap, f#0, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, f#0, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, f#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq))
         && $Unbox(read($Heap, f#0, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, f#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  free requires {:id "id125"} _module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     && 
    _module.LinkedList.Valid(_module.AmortizedQueue$T, $LS($LZ), $Heap, r#0)
     && 
    Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, $Box(r#0))
     && LitInt(0) <= $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
     && $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
       == Seq#Length($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq)
     && ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int == LitInt(0)
       ==> Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, Seq#Empty(): Seq)
         && $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref == null)
     && ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
       ==> $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref != null
         && Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, 
          read($Heap, r#0, _module.LinkedList.tail))
         && Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(r#0))
         && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref)
         && Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, r#0, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq))
         && $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     && (_module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       ==> _module.LinkedList.ReverseSeq#canCall(_module.AmortizedQueue$T, $Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq));
  ensures {:id "id126"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this));
  ensures {:id "id127"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
        read($Heap, this, _module.AmortizedQueue.front));
  ensures {:id "id128"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#Subset($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.Repr)): Set, 
        $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set);
  ensures {:id "id129"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.front)));
  ensures {:id "id130"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || LitInt(0)
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.length)): int);
  ensures {:id "id131"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq));
  ensures {:id "id132"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Empty(): Seq)));
  ensures {:id "id133"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref
               == null));
  ensures {:id "id134"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref
               != null));
  ensures {:id "id135"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.tail))));
  ensures {:id "id136"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set)));
  ensures {:id "id137"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, this, _module.AmortizedQueue.front))));
  ensures {:id "id138"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref)));
  ensures {:id "id139"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                    _module.LinkedList.head)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.List)): Seq))));
  ensures {:id "id140"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.length)): int
                 + 1));
  ensures {:id "id141"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
        read($Heap, this, _module.AmortizedQueue.rear));
  ensures {:id "id142"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#Subset($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
            _module.LinkedList.Repr)): Set, 
        $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set);
  ensures {:id "id143"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.rear)));
  ensures {:id "id144"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || LitInt(0)
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.length)): int);
  ensures {:id "id145"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq));
  ensures {:id "id146"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Empty(): Seq)));
  ensures {:id "id147"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref
               == null));
  ensures {:id "id148"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref
               != null));
  ensures {:id "id149"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.tail))));
  ensures {:id "id150"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set)));
  ensures {:id "id151"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, this, _module.AmortizedQueue.rear))));
  ensures {:id "id152"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref)));
  ensures {:id "id153"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                    _module.LinkedList.head)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.List)): Seq))));
  ensures {:id "id154"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.length)): int
                 + 1));
  ensures {:id "id155"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
              _module.LinkedList.List)): Seq)
         <= Seq#Length($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
              _module.LinkedList.List)): Seq);
  ensures {:id "id156"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
        Seq#Append($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
              _module.LinkedList.List)): Seq, 
          _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
            $LS($LS($LZ)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.List)): Seq)));
  ensures {:id "id157"} Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
    Seq#Append($Unbox(read($Heap, f#0, _module.LinkedList.List)): Seq, 
      _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
        $LS($LS($LZ)), 
        $Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AmortizedQueue.InitFromPieces (correctness)"} Impl$$_module.AmortizedQueue.InitFromPieces(_module.AmortizedQueue$T: Ty, f#0: ref, r#0: ref)
   returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.front: ref;
  var this.rear: ref;
  var this.Repr: Set;
  var this.List: Seq;
  var defass#this.front: bool;
  var defass#this.rear: bool;
  var defass#rr#1_0: bool;
  var rr#1_0: ref
     where defass#rr#1_0
       ==> $Is(rr#1_0, Tclass._module.LinkedList(_module.AmortizedQueue$T))
         && $IsAlloc(rr#1_0, Tclass._module.LinkedList(_module.AmortizedQueue$T), $Heap);
  var $rhs##1_0: ref;
  var defass#ff#1_0: bool;
  var ff#1_0: ref
     where defass#ff#1_0
       ==> $Is(ff#1_0, Tclass._module.LinkedList(_module.AmortizedQueue$T))
         && $IsAlloc(ff#1_0, Tclass._module.LinkedList(_module.AmortizedQueue$T), $Heap);
  var $rhs##1_1: ref;
  var end##1_0: ref;
  var $nw: ref;
  var $rhs#0: Set;
  var $rhs#1: Seq;
  var ##s#1: Seq;

    // AddMethodImpl: InitFromPieces, Impl$$_module.AmortizedQueue.InitFromPieces
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(45,3)
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(46,5)
    assert {:id "id158"} r#0 != null;
    assert {:id "id159"} f#0 != null;
    assume true;
    if ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int
       <= $Unbox(read($Heap, f#0, _module.LinkedList.length)): int)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(47,13)
        assume true;
        assume true;
        this.front := f#0;
        defass#this.front := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(48,12)
        assume true;
        assume true;
        this.rear := r#0;
        defass#this.rear := true;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(50,26)
        assume true;
        // TrCallStmt: Adding lhs with type LinkedList<T>
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id162"} r#0 != null;
        call {:id "id163"} $rhs##1_0 := Call$$_module.LinkedList.Reverse(_module.AmortizedQueue$T, r#0);
        // TrCallStmt: After ProcessCallStmt
        rr#1_0 := $rhs##1_0;
        defass#rr#1_0 := true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(51,25)
        assume true;
        // TrCallStmt: Adding lhs with type LinkedList<T>
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id165"} f#0 != null;
        assert {:id "id166"} defass#rr#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        end##1_0 := rr#1_0;
        call {:id "id167"} $rhs##1_1 := Call$$_module.LinkedList.Concat(_module.AmortizedQueue$T, f#0, end##1_0);
        // TrCallStmt: After ProcessCallStmt
        ff#1_0 := $rhs##1_1;
        defass#ff#1_0 := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(52,13)
        assume true;
        assert {:id "id169"} defass#ff#1_0;
        assume true;
        this.front := ff#1_0;
        defass#this.front := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(54,12)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(54,33)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id171"} $nw := Call$$_module.LinkedList.Init(_module.AmortizedQueue$T);
        // TrCallStmt: After ProcessCallStmt
        this.rear := $nw;
        defass#this.rear := true;
    }

    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(45,3)
    assert {:id "id173"} defass#this.front;
    assert {:id "id174"} defass#this.rear;
    assume this != null
       && $Is(this, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref == this.front;
    assume $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref == this.rear;
    assume $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set == this.Repr;
    assume $Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq == this.List;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(45,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(57,10)
    assume true;
    assert {:id "id175"} $_ModifiesFrame[this, _module.AmortizedQueue.Repr];
    assert {:id "id176"} $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref != null;
    assert {:id "id177"} $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref != null;
    assume true;
    $rhs#0 := Set#Union(Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
        $Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.Repr)): Set), 
      $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
          _module.LinkedList.Repr)): Set);
    $Heap := update($Heap, this, _module.AmortizedQueue.Repr, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(58,10)
    assume true;
    assert {:id "id180"} $_ModifiesFrame[this, _module.AmortizedQueue.List];
    assert {:id "id181"} $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref != null;
    assert {:id "id182"} $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref != null;
    ##s#1 := $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
        _module.LinkedList.List)): Seq;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, TSeq(_module.AmortizedQueue$T), $Heap);
    assume _module.LinkedList.ReverseSeq#canCall(_module.AmortizedQueue$T, 
      $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
          _module.LinkedList.List)): Seq);
    assume _module.LinkedList.ReverseSeq#canCall(_module.AmortizedQueue$T, 
      $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
          _module.LinkedList.List)): Seq);
    $rhs#1 := Seq#Append($Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
          _module.LinkedList.List)): Seq, 
      _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
        $LS($LZ), 
        $Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
            _module.LinkedList.List)): Seq));
    $Heap := update($Heap, this, _module.AmortizedQueue.List, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "AmortizedQueue.Front (well-formedness)"} CheckWellFormed$$_module.AmortizedQueue.Front(_module.AmortizedQueue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap))
   returns (t#0: Box
       where $IsBox(t#0, _module.AmortizedQueue$T)
         && $IsAllocBox(t#0, _module.AmortizedQueue$T, $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AmortizedQueue.Front (well-formedness)"} CheckWellFormed$$_module.AmortizedQueue.Front(_module.AmortizedQueue$T: Ty, this: ref) returns (t#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Front, CheckWellFormed$$_module.AmortizedQueue.Front
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T), $Heap);
    assume _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this);
    assume {:id "id185"} _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this);
    assume {:id "id186"} !Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, Seq#Empty(): Seq);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc t#0;
    assert {:id "id187"} 0 <= LitInt(0)
       && LitInt(0)
         < Seq#Length($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq);
    assume {:id "id188"} t#0
       == Seq#Index($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, LitInt(0));
}



procedure {:verboseName "AmortizedQueue.Front (call)"} Call$$_module.AmortizedQueue.Front(_module.AmortizedQueue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap))
   returns (t#0: Box
       where $IsBox(t#0, _module.AmortizedQueue$T)
         && $IsAllocBox(t#0, _module.AmortizedQueue$T, $Heap));
  // user-defined preconditions
  requires {:id "id189"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this));
  requires {:id "id190"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
        read($Heap, this, _module.AmortizedQueue.front));
  requires {:id "id191"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#Subset($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.Repr)): Set, 
        $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set);
  requires {:id "id192"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.front)));
  requires {:id "id193"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || LitInt(0)
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.length)): int);
  requires {:id "id194"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq));
  requires {:id "id195"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Empty(): Seq)));
  requires {:id "id196"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref
               == null));
  requires {:id "id197"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref
               != null));
  requires {:id "id198"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.tail))));
  requires {:id "id199"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set)));
  requires {:id "id200"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, this, _module.AmortizedQueue.front))));
  requires {:id "id201"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref)));
  requires {:id "id202"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                    _module.LinkedList.head)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.List)): Seq))));
  requires {:id "id203"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.length)): int
                 + 1));
  requires {:id "id204"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
        read($Heap, this, _module.AmortizedQueue.rear));
  requires {:id "id205"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#Subset($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
            _module.LinkedList.Repr)): Set, 
        $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set);
  requires {:id "id206"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.rear)));
  requires {:id "id207"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || LitInt(0)
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.length)): int);
  requires {:id "id208"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq));
  requires {:id "id209"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Empty(): Seq)));
  requires {:id "id210"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref
               == null));
  requires {:id "id211"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref
               != null));
  requires {:id "id212"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.tail))));
  requires {:id "id213"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set)));
  requires {:id "id214"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, this, _module.AmortizedQueue.rear))));
  requires {:id "id215"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref)));
  requires {:id "id216"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                    _module.LinkedList.head)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.List)): Seq))));
  requires {:id "id217"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.length)): int
                 + 1));
  requires {:id "id218"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
              _module.LinkedList.List)): Seq)
         <= Seq#Length($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
              _module.LinkedList.List)): Seq);
  requires {:id "id219"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
        Seq#Append($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
              _module.LinkedList.List)): Seq, 
          _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
            $LS($LS($LZ)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.List)): Seq)));
  requires {:id "id220"} !Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, Seq#Empty(): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id221"} t#0
     == Seq#Index($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, LitInt(0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AmortizedQueue.Front (correctness)"} Impl$$_module.AmortizedQueue.Front(_module.AmortizedQueue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap))
   returns (t#0: Box
       where $IsBox(t#0, _module.AmortizedQueue$T)
         && $IsAllocBox(t#0, _module.AmortizedQueue$T, $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id222"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     && 
    _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
     && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
      read($Heap, this, _module.AmortizedQueue.front))
     && Set#Subset($Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
          _module.LinkedList.Repr)): Set, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
     && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
     && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
      read($Heap, this, _module.AmortizedQueue.rear))
     && Set#Subset($Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
          _module.LinkedList.Repr)): Set, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
     && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
     && Seq#Length($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
            _module.LinkedList.List)): Seq)
       <= Seq#Length($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.List)): Seq)
     && Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
      Seq#Append($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.List)): Seq, 
        _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
          $LS($LZ), 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
              _module.LinkedList.List)): Seq)));
  requires {:id "id223"} !Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, Seq#Empty(): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id224"} t#0
     == Seq#Index($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, LitInt(0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AmortizedQueue.Front (correctness)"} Impl$$_module.AmortizedQueue.Front(_module.AmortizedQueue$T: Ty, this: ref)
   returns (t#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Front, Impl$$_module.AmortizedQueue.Front
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(65,7)
    assume true;
    assert {:id "id225"} $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref != null;
    assume true;
    t#0 := read($Heap, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
      _module.LinkedList.head);
}



procedure {:verboseName "AmortizedQueue.Tail (well-formedness)"} CheckWellFormed$$_module.AmortizedQueue.Tail(_module.AmortizedQueue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(r#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AmortizedQueue.Tail (well-formedness)"} CheckWellFormed$$_module.AmortizedQueue.Tail(_module.AmortizedQueue$T: Ty, this: ref) returns (r#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Tail, CheckWellFormed$$_module.AmortizedQueue.Tail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T), $Heap);
    assume _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this);
    assume {:id "id227"} _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this);
    assume {:id "id228"} !Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, Seq#Empty(): Seq);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    assert {:id "id229"} r#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(r#0), Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T), $Heap);
    assume _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0);
    assume {:id "id230"} _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0);
    assert {:id "id231"} r#0 != null;
    assert {:id "id232"} 0 <= LitInt(1)
       && LitInt(1)
         <= Seq#Length($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq);
    assume {:id "id233"} Seq#Equal($Unbox(read($Heap, r#0, _module.AmortizedQueue.List)): Seq, 
      Seq#Drop($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, LitInt(1)));
}



procedure {:verboseName "AmortizedQueue.Tail (call)"} Call$$_module.AmortizedQueue.Tail(_module.AmortizedQueue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(r#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap));
  // user-defined preconditions
  requires {:id "id234"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this));
  requires {:id "id235"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
        read($Heap, this, _module.AmortizedQueue.front));
  requires {:id "id236"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#Subset($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.Repr)): Set, 
        $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set);
  requires {:id "id237"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.front)));
  requires {:id "id238"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || LitInt(0)
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.length)): int);
  requires {:id "id239"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq));
  requires {:id "id240"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Empty(): Seq)));
  requires {:id "id241"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref
               == null));
  requires {:id "id242"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref
               != null));
  requires {:id "id243"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.tail))));
  requires {:id "id244"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set)));
  requires {:id "id245"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, this, _module.AmortizedQueue.front))));
  requires {:id "id246"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref)));
  requires {:id "id247"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                    _module.LinkedList.head)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.List)): Seq))));
  requires {:id "id248"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.length)): int
                 + 1));
  requires {:id "id249"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
        read($Heap, this, _module.AmortizedQueue.rear));
  requires {:id "id250"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#Subset($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
            _module.LinkedList.Repr)): Set, 
        $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set);
  requires {:id "id251"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.rear)));
  requires {:id "id252"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || LitInt(0)
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.length)): int);
  requires {:id "id253"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq));
  requires {:id "id254"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Empty(): Seq)));
  requires {:id "id255"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref
               == null));
  requires {:id "id256"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref
               != null));
  requires {:id "id257"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.tail))));
  requires {:id "id258"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set)));
  requires {:id "id259"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, this, _module.AmortizedQueue.rear))));
  requires {:id "id260"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref)));
  requires {:id "id261"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                    _module.LinkedList.head)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.List)): Seq))));
  requires {:id "id262"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.length)): int
                 + 1));
  requires {:id "id263"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
              _module.LinkedList.List)): Seq)
         <= Seq#Length($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
              _module.LinkedList.List)): Seq);
  requires {:id "id264"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
        Seq#Append($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
              _module.LinkedList.List)): Seq, 
          _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
            $LS($LS($LZ)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.List)): Seq)));
  requires {:id "id265"} !Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, Seq#Empty(): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0);
  free ensures {:id "id266"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     && 
    _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
     && 
    Set#IsMember($Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set, $Box(r#0))
     && Set#IsMember($Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set, 
      read($Heap, r#0, _module.AmortizedQueue.front))
     && Set#Subset($Unbox(read($Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
          _module.LinkedList.Repr)): Set, 
      $Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set)
     && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
     && Set#IsMember($Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set, 
      read($Heap, r#0, _module.AmortizedQueue.rear))
     && Set#Subset($Unbox(read($Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
          _module.LinkedList.Repr)): Set, 
      $Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set)
     && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
     && Seq#Length($Unbox(read($Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
            _module.LinkedList.List)): Seq)
       <= Seq#Length($Unbox(read($Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.List)): Seq)
     && Seq#Equal($Unbox(read($Heap, r#0, _module.AmortizedQueue.List)): Seq, 
      Seq#Append($Unbox(read($Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.List)): Seq, 
        _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
          $LS($LZ), 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
              _module.LinkedList.List)): Seq)));
  ensures {:id "id267"} Seq#Equal($Unbox(read($Heap, r#0, _module.AmortizedQueue.List)): Seq, 
    Seq#Drop($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, LitInt(1)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AmortizedQueue.Tail (correctness)"} Impl$$_module.AmortizedQueue.Tail(_module.AmortizedQueue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap))
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
           && $IsAlloc(r#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap), 
    $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id268"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     && 
    _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
     && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
      read($Heap, this, _module.AmortizedQueue.front))
     && Set#Subset($Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
          _module.LinkedList.Repr)): Set, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
     && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
     && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
      read($Heap, this, _module.AmortizedQueue.rear))
     && Set#Subset($Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
          _module.LinkedList.Repr)): Set, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
     && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
     && Seq#Length($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
            _module.LinkedList.List)): Seq)
       <= Seq#Length($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.List)): Seq)
     && Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
      Seq#Append($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.List)): Seq, 
        _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
          $LS($LZ), 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
              _module.LinkedList.List)): Seq)));
  requires {:id "id269"} !Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, Seq#Empty(): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0);
  ensures {:id "id270"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || Set#IsMember($Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set, $Box(r#0));
  ensures {:id "id271"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || Set#IsMember($Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set, 
        read($Heap, r#0, _module.AmortizedQueue.front));
  ensures {:id "id272"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || Set#Subset($Unbox(read($Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.Repr)): Set, 
        $Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set);
  ensures {:id "id273"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.Repr)): Set, 
            read($Heap, r#0, _module.AmortizedQueue.front)));
  ensures {:id "id274"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || LitInt(0)
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.length)): int);
  ensures {:id "id275"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq));
  ensures {:id "id276"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Empty(): Seq)));
  ensures {:id "id277"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref
               == null));
  ensures {:id "id278"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref
               != null));
  ensures {:id "id279"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.tail))));
  ensures {:id "id280"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set)));
  ensures {:id "id281"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, r#0, _module.AmortizedQueue.front))));
  ensures {:id "id282"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref)));
  ensures {:id "id283"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                    _module.LinkedList.head)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.List)): Seq))));
  ensures {:id "id284"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.length)): int
                 + 1));
  ensures {:id "id285"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || Set#IsMember($Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set, 
        read($Heap, r#0, _module.AmortizedQueue.rear));
  ensures {:id "id286"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || Set#Subset($Unbox(read($Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
            _module.LinkedList.Repr)): Set, 
        $Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set);
  ensures {:id "id287"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.Repr)): Set, 
            read($Heap, r#0, _module.AmortizedQueue.rear)));
  ensures {:id "id288"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || LitInt(0)
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.length)): int);
  ensures {:id "id289"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq));
  ensures {:id "id290"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Empty(): Seq)));
  ensures {:id "id291"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref
               == null));
  ensures {:id "id292"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref
               != null));
  ensures {:id "id293"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.tail))));
  ensures {:id "id294"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set)));
  ensures {:id "id295"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, r#0, _module.AmortizedQueue.rear))));
  ensures {:id "id296"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref)));
  ensures {:id "id297"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                    _module.LinkedList.head)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.List)): Seq))));
  ensures {:id "id298"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.length)): int
                 + 1));
  ensures {:id "id299"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || Seq#Length($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
              _module.LinkedList.List)): Seq)
         <= Seq#Length($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
              _module.LinkedList.List)): Seq);
  ensures {:id "id300"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || Seq#Equal($Unbox(read($Heap, r#0, _module.AmortizedQueue.List)): Seq, 
        Seq#Append($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
              _module.LinkedList.List)): Seq, 
          _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
            $LS($LS($LZ)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.List)): Seq)));
  ensures {:id "id301"} Seq#Equal($Unbox(read($Heap, r#0, _module.AmortizedQueue.List)): Seq, 
    Seq#Drop($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, LitInt(1)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AmortizedQueue.Tail (correctness)"} Impl$$_module.AmortizedQueue.Tail(_module.AmortizedQueue$T: Ty, this: ref)
   returns (defass#r#0: bool, r#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $nw: ref;
  var f##0: ref;
  var r##0: ref;

    // AddMethodImpl: Tail, Impl$$_module.AmortizedQueue.Tail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(72,7)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(72,32)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id302"} $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id303"} $Is($Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
          _module.LinkedList.tail)): ref, 
      Tclass._module.LinkedList(_module.AmortizedQueue$T));
    f##0 := $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
        _module.LinkedList.tail)): ref;
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##0 := $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref;
    call {:id "id304"} $nw := Call$$_module.AmortizedQueue.InitFromPieces(_module.AmortizedQueue$T, f##0, r##0);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $nw;
    defass#r#0 := true;
    assert {:id "id306"} defass#r#0;
}



procedure {:verboseName "AmortizedQueue.Enqueue (well-formedness)"} CheckWellFormed$$_module.AmortizedQueue.Enqueue(_module.AmortizedQueue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap), 
    item#0: Box
       where $IsBox(item#0, _module.AmortizedQueue$T)
         && $IsAllocBox(item#0, _module.AmortizedQueue$T, $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(r#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AmortizedQueue.Enqueue (well-formedness)"} CheckWellFormed$$_module.AmortizedQueue.Enqueue(_module.AmortizedQueue$T: Ty, this: ref, item#0: Box) returns (r#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Enqueue, CheckWellFormed$$_module.AmortizedQueue.Enqueue
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T), $Heap);
    assume _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this);
    assume {:id "id307"} _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    assert {:id "id308"} r#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(r#0), Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T), $Heap);
    assume _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0);
    assume {:id "id309"} _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0);
    assert {:id "id310"} r#0 != null;
    assume {:id "id311"} Seq#Equal($Unbox(read($Heap, r#0, _module.AmortizedQueue.List)): Seq, 
      Seq#Append($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
        Seq#Build(Seq#Empty(): Seq, item#0)));
}



procedure {:verboseName "AmortizedQueue.Enqueue (call)"} Call$$_module.AmortizedQueue.Enqueue(_module.AmortizedQueue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap), 
    item#0: Box
       where $IsBox(item#0, _module.AmortizedQueue$T)
         && $IsAllocBox(item#0, _module.AmortizedQueue$T, $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(r#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap));
  // user-defined preconditions
  requires {:id "id312"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this));
  requires {:id "id313"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
        read($Heap, this, _module.AmortizedQueue.front));
  requires {:id "id314"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#Subset($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.Repr)): Set, 
        $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set);
  requires {:id "id315"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.front)));
  requires {:id "id316"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || LitInt(0)
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.length)): int);
  requires {:id "id317"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq));
  requires {:id "id318"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Empty(): Seq)));
  requires {:id "id319"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref
               == null));
  requires {:id "id320"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref
               != null));
  requires {:id "id321"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.tail))));
  requires {:id "id322"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set)));
  requires {:id "id323"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, this, _module.AmortizedQueue.front))));
  requires {:id "id324"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref)));
  requires {:id "id325"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                    _module.LinkedList.head)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.List)): Seq))));
  requires {:id "id326"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.length)): int
                 + 1));
  requires {:id "id327"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
        read($Heap, this, _module.AmortizedQueue.rear));
  requires {:id "id328"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Set#Subset($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
            _module.LinkedList.Repr)): Set, 
        $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set);
  requires {:id "id329"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.Repr)): Set, 
            read($Heap, this, _module.AmortizedQueue.rear)));
  requires {:id "id330"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || LitInt(0)
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.length)): int);
  requires {:id "id331"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq));
  requires {:id "id332"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Empty(): Seq)));
  requires {:id "id333"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref
               == null));
  requires {:id "id334"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref
               != null));
  requires {:id "id335"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.tail))));
  requires {:id "id336"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set)));
  requires {:id "id337"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, this, _module.AmortizedQueue.rear))));
  requires {:id "id338"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref)));
  requires {:id "id339"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                    _module.LinkedList.head)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.List)): Seq))));
  requires {:id "id340"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.length)): int
                 + 1));
  requires {:id "id341"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
              _module.LinkedList.List)): Seq)
         <= Seq#Length($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
              _module.LinkedList.List)): Seq);
  requires {:id "id342"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
       || Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
        Seq#Append($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
              _module.LinkedList.List)): Seq, 
          _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
            $LS($LS($LZ)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.List)): Seq)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0);
  free ensures {:id "id343"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     && 
    _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
     && 
    Set#IsMember($Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set, $Box(r#0))
     && Set#IsMember($Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set, 
      read($Heap, r#0, _module.AmortizedQueue.front))
     && Set#Subset($Unbox(read($Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
          _module.LinkedList.Repr)): Set, 
      $Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set)
     && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
     && Set#IsMember($Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set, 
      read($Heap, r#0, _module.AmortizedQueue.rear))
     && Set#Subset($Unbox(read($Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
          _module.LinkedList.Repr)): Set, 
      $Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set)
     && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
     && Seq#Length($Unbox(read($Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
            _module.LinkedList.List)): Seq)
       <= Seq#Length($Unbox(read($Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.List)): Seq)
     && Seq#Equal($Unbox(read($Heap, r#0, _module.AmortizedQueue.List)): Seq, 
      Seq#Append($Unbox(read($Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.List)): Seq, 
        _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
          $LS($LZ), 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
              _module.LinkedList.List)): Seq)));
  ensures {:id "id344"} Seq#Equal($Unbox(read($Heap, r#0, _module.AmortizedQueue.List)): Seq, 
    Seq#Append($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
      Seq#Build(Seq#Empty(): Seq, item#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AmortizedQueue.Enqueue (correctness)"} Impl$$_module.AmortizedQueue.Enqueue(_module.AmortizedQueue$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
         && $IsAlloc(this, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap), 
    item#0: Box
       where $IsBox(item#0, _module.AmortizedQueue$T)
         && $IsAllocBox(item#0, _module.AmortizedQueue$T, $Heap))
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
           && $IsAlloc(r#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $Heap), 
    $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id345"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, this)
     && 
    _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, $Box(this))
     && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
      read($Heap, this, _module.AmortizedQueue.front))
     && Set#Subset($Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
          _module.LinkedList.Repr)): Set, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
     && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref)
     && Set#IsMember($Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set, 
      read($Heap, this, _module.AmortizedQueue.rear))
     && Set#Subset($Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
          _module.LinkedList.Repr)): Set, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.Repr)): Set)
     && _module.LinkedList.Valid(_module.AmortizedQueue$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref)
     && Seq#Length($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
            _module.LinkedList.List)): Seq)
       <= Seq#Length($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.List)): Seq)
     && Seq#Equal($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
      Seq#Append($Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.List)): Seq, 
        _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
          $LS($LZ), 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, 
              _module.LinkedList.List)): Seq)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0);
  ensures {:id "id346"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || Set#IsMember($Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set, $Box(r#0));
  ensures {:id "id347"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || Set#IsMember($Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set, 
        read($Heap, r#0, _module.AmortizedQueue.front));
  ensures {:id "id348"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || Set#Subset($Unbox(read($Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
            _module.LinkedList.Repr)): Set, 
        $Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set);
  ensures {:id "id349"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.Repr)): Set, 
            read($Heap, r#0, _module.AmortizedQueue.front)));
  ensures {:id "id350"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || LitInt(0)
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.length)): int);
  ensures {:id "id351"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq));
  ensures {:id "id352"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Empty(): Seq)));
  ensures {:id "id353"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref
               == null));
  ensures {:id "id354"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref
               != null));
  ensures {:id "id355"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                _module.LinkedList.tail))));
  ensures {:id "id356"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.Repr)): Set)));
  ensures {:id "id357"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, r#0, _module.AmortizedQueue.front))));
  ensures {:id "id358"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.tail)): ref)));
  ensures {:id "id359"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                    _module.LinkedList.head)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.List)): Seq))));
  ensures {:id "id360"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                  _module.LinkedList.length)): int
               == $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.length)): int
                 + 1));
  ensures {:id "id361"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || Set#IsMember($Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set, 
        read($Heap, r#0, _module.AmortizedQueue.rear));
  ensures {:id "id362"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || Set#Subset($Unbox(read($Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
            _module.LinkedList.Repr)): Set, 
        $Unbox(read($Heap, r#0, _module.AmortizedQueue.Repr)): Set);
  ensures {:id "id363"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.Repr)): Set, 
            read($Heap, r#0, _module.AmortizedQueue.rear)));
  ensures {:id "id364"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || LitInt(0)
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.length)): int);
  ensures {:id "id365"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq));
  ensures {:id "id366"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Empty(): Seq)));
  ensures {:id "id367"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == LitInt(0)
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref
               == null));
  ensures {:id "id368"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref
               != null));
  ensures {:id "id369"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.tail))));
  ensures {:id "id370"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.Repr)): Set)));
  ensures {:id "id371"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                      _module.LinkedList.tail)): ref, 
                  _module.LinkedList.Repr)): Set, 
              read($Heap, r#0, _module.AmortizedQueue.rear))));
  ensures {:id "id372"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.tail)): ref)));
  ensures {:id "id373"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.List)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                    _module.LinkedList.head)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.List)): Seq))));
  ensures {:id "id374"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || (_module.LinkedList.Valid#canCall(_module.AmortizedQueue$T, 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
         ==> _module.LinkedList.Valid(_module.AmortizedQueue$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref)
           || ($Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               != 0
             ==> $Unbox(read($Heap, 
                  $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                  _module.LinkedList.length)): int
               == $Unbox(read($Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                        _module.LinkedList.tail)): ref, 
                    _module.LinkedList.length)): int
                 + 1));
  ensures {:id "id375"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || Seq#Length($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
              _module.LinkedList.List)): Seq)
         <= Seq#Length($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
              _module.LinkedList.List)): Seq);
  ensures {:id "id376"} _module.AmortizedQueue.Valid#canCall(_module.AmortizedQueue$T, $Heap, r#0)
     ==> _module.AmortizedQueue.Valid(_module.AmortizedQueue$T, $Heap, r#0)
       || Seq#Equal($Unbox(read($Heap, r#0, _module.AmortizedQueue.List)): Seq, 
        Seq#Append($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.AmortizedQueue.front)): ref, 
              _module.LinkedList.List)): Seq, 
          _module.LinkedList.ReverseSeq(_module.AmortizedQueue$T, 
            $LS($LS($LZ)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.AmortizedQueue.rear)): ref, 
                _module.LinkedList.List)): Seq)));
  ensures {:id "id377"} Seq#Equal($Unbox(read($Heap, r#0, _module.AmortizedQueue.List)): Seq, 
    Seq#Append($Unbox(read($Heap, this, _module.AmortizedQueue.List)): Seq, 
      Seq#Build(Seq#Empty(): Seq, item#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AmortizedQueue.Enqueue (correctness)"} Impl$$_module.AmortizedQueue.Enqueue(_module.AmortizedQueue$T: Ty, this: ref, item#0: Box)
   returns (defass#r#0: bool, r#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#rr#0: bool;
  var rr#0: ref
     where defass#rr#0
       ==> $Is(rr#0, Tclass._module.LinkedList(_module.AmortizedQueue$T))
         && $IsAlloc(rr#0, Tclass._module.LinkedList(_module.AmortizedQueue$T), $Heap);
  var $rhs##0: ref;
  var d##0: Box;
  var $nw: ref;
  var f##0: ref;
  var r##0: ref;

    // AddMethodImpl: Enqueue, Impl$$_module.AmortizedQueue.Enqueue
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(79,24)
    assume true;
    // TrCallStmt: Adding lhs with type LinkedList<T>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id378"} $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##0 := item#0;
    call {:id "id379"} $rhs##0 := Call$$_module.LinkedList.Cons(_module.AmortizedQueue$T, $Unbox(read($Heap, this, _module.AmortizedQueue.rear)): ref, d##0);
    // TrCallStmt: After ProcessCallStmt
    rr#0 := $rhs##0;
    defass#rr#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(80,7)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(80,32)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    f##0 := $Unbox(read($Heap, this, _module.AmortizedQueue.front)): ref;
    assert {:id "id381"} defass#rr#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##0 := rr#0;
    call {:id "id382"} $nw := Call$$_module.AmortizedQueue.InitFromPieces(_module.AmortizedQueue$T, f##0, r##0);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $nw;
    defass#r#0 := true;
    assert {:id "id384"} defass#r#0;
}



// $Is axiom for non-null type _module.AmortizedQueue
axiom (forall _module.AmortizedQueue$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T)) } 
    { $Is(c#0, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T)) } 
  $Is(c#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T))
     <==> $Is(c#0, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T))
       && c#0 != null);

// $IsAlloc axiom for non-null type _module.AmortizedQueue
axiom (forall _module.AmortizedQueue$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T), $h) } 
  $IsAlloc(c#0, Tclass._module.AmortizedQueue(_module.AmortizedQueue$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.AmortizedQueue?(_module.AmortizedQueue$T), $h));

const unique class._module.LinkedList?: ClassName;

// $Is axiom for class LinkedList
axiom (forall _module.LinkedList$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.LinkedList?(_module.LinkedList$T)) } 
  $Is($o, Tclass._module.LinkedList?(_module.LinkedList$T))
     <==> $o == null || dtype($o) == Tclass._module.LinkedList?(_module.LinkedList$T));

// $IsAlloc axiom for class LinkedList
axiom (forall _module.LinkedList$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.LinkedList?(_module.LinkedList$T), $h) } 
  $IsAlloc($o, Tclass._module.LinkedList?(_module.LinkedList$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.LinkedList.head: Field
uses {
axiom FDim(_module.LinkedList.head) == 0
   && FieldOfDecl(class._module.LinkedList?, field$head) == _module.LinkedList.head
   && !$IsGhostField(_module.LinkedList.head);
}

// LinkedList.head: Type axiom
axiom (forall _module.LinkedList$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.LinkedList.head), Tclass._module.LinkedList?(_module.LinkedList$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LinkedList?(_module.LinkedList$T)
     ==> $IsBox(read($h, $o, _module.LinkedList.head), _module.LinkedList$T));

// LinkedList.head: Allocation axiom
axiom (forall _module.LinkedList$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.LinkedList.head), Tclass._module.LinkedList?(_module.LinkedList$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LinkedList?(_module.LinkedList$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.LinkedList.head), _module.LinkedList$T, $h));

const _module.LinkedList.tail: Field
uses {
axiom FDim(_module.LinkedList.tail) == 0
   && FieldOfDecl(class._module.LinkedList?, field$tail) == _module.LinkedList.tail
   && !$IsGhostField(_module.LinkedList.tail);
}

// LinkedList.tail: Type axiom
axiom (forall _module.LinkedList$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LinkedList.tail)): ref, Tclass._module.LinkedList?(_module.LinkedList$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LinkedList?(_module.LinkedList$T)
     ==> $Is($Unbox(read($h, $o, _module.LinkedList.tail)): ref, 
      Tclass._module.LinkedList?(_module.LinkedList$T)));

// LinkedList.tail: Allocation axiom
axiom (forall _module.LinkedList$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LinkedList.tail)): ref, Tclass._module.LinkedList?(_module.LinkedList$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LinkedList?(_module.LinkedList$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.LinkedList.tail)): ref, 
      Tclass._module.LinkedList?(_module.LinkedList$T), 
      $h));

const _module.LinkedList.length: Field
uses {
axiom FDim(_module.LinkedList.length) == 0
   && FieldOfDecl(class._module.LinkedList?, field$length)
     == _module.LinkedList.length
   && !$IsGhostField(_module.LinkedList.length);
}

// LinkedList.length: Type axiom
axiom (forall _module.LinkedList$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LinkedList.length)): int, Tclass._module.LinkedList?(_module.LinkedList$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LinkedList?(_module.LinkedList$T)
     ==> $Is($Unbox(read($h, $o, _module.LinkedList.length)): int, TInt));

// LinkedList.length: Allocation axiom
axiom (forall _module.LinkedList$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LinkedList.length)): int, Tclass._module.LinkedList?(_module.LinkedList$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LinkedList?(_module.LinkedList$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.LinkedList.length)): int, TInt, $h));

const _module.LinkedList.List: Field
uses {
axiom FDim(_module.LinkedList.List) == 0
   && FieldOfDecl(class._module.LinkedList?, field$List) == _module.LinkedList.List
   && $IsGhostField(_module.LinkedList.List);
}

// LinkedList.List: Type axiom
axiom (forall _module.LinkedList$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LinkedList.List)): Seq, Tclass._module.LinkedList?(_module.LinkedList$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LinkedList?(_module.LinkedList$T)
     ==> $Is($Unbox(read($h, $o, _module.LinkedList.List)): Seq, TSeq(_module.LinkedList$T)));

// LinkedList.List: Allocation axiom
axiom (forall _module.LinkedList$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LinkedList.List)): Seq, Tclass._module.LinkedList?(_module.LinkedList$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LinkedList?(_module.LinkedList$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.LinkedList.List)): Seq, 
      TSeq(_module.LinkedList$T), 
      $h));

const _module.LinkedList.Repr: Field
uses {
axiom FDim(_module.LinkedList.Repr) == 0
   && FieldOfDecl(class._module.LinkedList?, field$Repr) == _module.LinkedList.Repr
   && $IsGhostField(_module.LinkedList.Repr);
}

// LinkedList.Repr: Type axiom
axiom (forall _module.LinkedList$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LinkedList.Repr)): Set, Tclass._module.LinkedList?(_module.LinkedList$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LinkedList?(_module.LinkedList$T)
     ==> $Is($Unbox(read($h, $o, _module.LinkedList.Repr)): Set, 
      TSet(Tclass._module.LinkedList(_module.LinkedList$T))));

// LinkedList.Repr: Allocation axiom
axiom (forall _module.LinkedList$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LinkedList.Repr)): Set, Tclass._module.LinkedList?(_module.LinkedList$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LinkedList?(_module.LinkedList$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.LinkedList.Repr)): Set, 
      TSet(Tclass._module.LinkedList(_module.LinkedList$T)), 
      $h));

// function declaration for _module.LinkedList.Valid
function _module.LinkedList.Valid(_module.LinkedList$T: Ty, $ly: LayerType, $heap: Heap, this: ref) : bool
uses {
// consequence axiom for _module.LinkedList.Valid
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.LinkedList$T: Ty, $ly: LayerType, $Heap: Heap, this: ref :: 
    { _module.LinkedList.Valid(_module.LinkedList$T, $ly, $Heap, this) } 
    _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
           && $IsAlloc(this, Tclass._module.LinkedList(_module.LinkedList$T), $Heap))
       ==> 
      _module.LinkedList.Valid(_module.LinkedList$T, $ly, $Heap, this)
       ==> Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this)));
// definition axiom for _module.LinkedList.Valid (revealed)
axiom {:id "id385"} 0 <= $FunctionContextHeight
   ==> (forall _module.LinkedList$T: Ty, $ly: LayerType, $Heap: Heap, this: ref :: 
    { _module.LinkedList.Valid(_module.LinkedList$T, $LS($ly), $Heap, this), $IsGoodHeap($Heap) } 
    _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
           && $IsAlloc(this, Tclass._module.LinkedList(_module.LinkedList$T), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this))
           ==> 
          LitInt(0) <= $Unbox(read($Heap, this, _module.LinkedList.length)): int
           ==> 
          $Unbox(read($Heap, this, _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq)
           ==> 
          ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
           ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq)
             && $Unbox(read($Heap, this, _module.LinkedList.tail)): ref == null)
           ==> 
          $Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
           ==> 
          $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
            read($Heap, this, _module.LinkedList.tail))
           ==> 
          Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Box(this))
           ==> _module.LinkedList.Valid#canCall(_module.LinkedList$T, 
            $Heap, 
            $Unbox(read($Heap, this, _module.LinkedList.tail)): ref))
         && _module.LinkedList.Valid(_module.LinkedList$T, $LS($ly), $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this))
             && LitInt(0) <= $Unbox(read($Heap, this, _module.LinkedList.length)): int
             && $Unbox(read($Heap, this, _module.LinkedList.length)): int
               == Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq)
             && ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
               ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq)
                 && $Unbox(read($Heap, this, _module.LinkedList.tail)): ref == null)
             && ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
               ==> $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null
                 && Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
                  read($Heap, this, _module.LinkedList.tail))
                 && Set#Subset($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                      _module.LinkedList.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                      _module.LinkedList.Repr)): Set, 
                  $Box(this))
                 && _module.LinkedList.Valid(_module.LinkedList$T, 
                  $ly, 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.LinkedList.tail)): ref)
                 && Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, 
                  Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.LinkedList.head)), 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                        _module.LinkedList.List)): Seq))
                 && $Unbox(read($Heap, this, _module.LinkedList.length)): int
                   == $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                        _module.LinkedList.length)): int
                     + 1)));
}

function _module.LinkedList.Valid#canCall(_module.LinkedList$T: Ty, $heap: Heap, this: ref) : bool;

// layer synonym axiom
axiom (forall _module.LinkedList$T: Ty, $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.LinkedList.Valid(_module.LinkedList$T, $LS($ly), $Heap, this) } 
  _module.LinkedList.Valid(_module.LinkedList$T, $LS($ly), $Heap, this)
     == _module.LinkedList.Valid(_module.LinkedList$T, $ly, $Heap, this));

// fuel synonym axiom
axiom (forall _module.LinkedList$T: Ty, $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.LinkedList.Valid(_module.LinkedList$T, AsFuelBottom($ly), $Heap, this) } 
  _module.LinkedList.Valid(_module.LinkedList$T, $ly, $Heap, this)
     == _module.LinkedList.Valid(_module.LinkedList$T, $LZ, $Heap, this));

// frame axiom for _module.LinkedList.Valid
axiom (forall _module.LinkedList$T: Ty, $ly: LayerType, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.LinkedList.Valid(_module.LinkedList$T, $ly, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.LinkedList.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $ly, $h0, this)
       == _module.LinkedList.Valid(_module.LinkedList$T, $ly, $h1, this));

function _module.LinkedList.Valid#requires(Ty, LayerType, Heap, ref) : bool;

// #requires axiom for _module.LinkedList.Valid
axiom (forall _module.LinkedList$T: Ty, $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.LinkedList.Valid#requires(_module.LinkedList$T, $ly, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
       && $IsAlloc(this, Tclass._module.LinkedList(_module.LinkedList$T), $Heap)
     ==> _module.LinkedList.Valid#requires(_module.LinkedList$T, $ly, $Heap, this)
       == true);

procedure {:verboseName "LinkedList.Valid (well-formedness)"} CheckWellformed$$_module.LinkedList.Valid(_module.LinkedList$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(this, Tclass._module.LinkedList(_module.LinkedList$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id386"} _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
     ==> Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LinkedList.Valid (well-formedness)"} CheckWellformed$$_module.LinkedList.Valid(_module.LinkedList$T: Ty, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;
  var b$reqreads#13: bool;
  var b$reqreads#14: bool;
  var b$reqreads#15: bool;
  var b$reqreads#16: bool;
  var b$reqreads#17: bool;
  var b$reqreads#18: bool;
  var b$reqreads#19: bool;
  var b$reqreads#20: bool;
  var b$reqreads#21: bool;
  var b$reqreads#22: bool;
  var b$reqreads#23: bool;
  var b$reqreads#24: bool;
  var b$reqreads#25: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;
    b$reqreads#13 := true;
    b$reqreads#14 := true;
    b$reqreads#15 := true;
    b$reqreads#16 := true;
    b$reqreads#17 := true;
    b$reqreads#18 := true;
    b$reqreads#19 := true;
    b$reqreads#20 := true;
    b$reqreads#21 := true;
    b$reqreads#22 := true;
    b$reqreads#23 := true;
    b$reqreads#24 := true;
    b$reqreads#25 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.LinkedList.Repr];
    assert {:id "id387"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.LinkedList?(_module.LinkedList$T), $Heap);
            assert {:id "id388"} this == this
               || (Set#Subset(Set#Union($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this
               || _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this);
            assume {:id "id389"} _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this);
            assume {:id "id390"} Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this));
        }
        else
        {
            assume {:id "id391"} _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
               ==> Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.LinkedList.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.LinkedList.length];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this))
           && LitInt(0) <= $Unbox(read($Heap, this, _module.LinkedList.length)): int)
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.LinkedList.length];
            b$reqreads#4 := $_ReadsFrame[this, _module.LinkedList.List];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this))
           && LitInt(0) <= $Unbox(read($Heap, this, _module.LinkedList.length)): int
           && $Unbox(read($Heap, this, _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq))
        {
            b$reqreads#5 := $_ReadsFrame[this, _module.LinkedList.length];
            if ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0))
            {
                b$reqreads#6 := $_ReadsFrame[this, _module.LinkedList.List];
                if (Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq))
                {
                    b$reqreads#7 := $_ReadsFrame[this, _module.LinkedList.tail];
                    newtype$check#0 := null;
                }
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this))
           && LitInt(0) <= $Unbox(read($Heap, this, _module.LinkedList.length)): int
           && $Unbox(read($Heap, this, _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq)
           && ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
             ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq)
               && $Unbox(read($Heap, this, _module.LinkedList.tail)): ref == null))
        {
            b$reqreads#8 := $_ReadsFrame[this, _module.LinkedList.length];
            if ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0)
            {
                b$reqreads#9 := $_ReadsFrame[this, _module.LinkedList.tail];
                newtype$check#1 := null;
                if ($Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null)
                {
                    b$reqreads#10 := $_ReadsFrame[this, _module.LinkedList.tail];
                    b$reqreads#11 := $_ReadsFrame[this, _module.LinkedList.Repr];
                }

                if ($Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null
                   && Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
                    read($Heap, this, _module.LinkedList.tail)))
                {
                    b$reqreads#12 := $_ReadsFrame[this, _module.LinkedList.tail];
                    assert {:id "id392"} $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null;
                    b$reqreads#13 := $_ReadsFrame[$Unbox(read($Heap, this, _module.LinkedList.tail)): ref, _module.LinkedList.Repr];
                    b$reqreads#14 := $_ReadsFrame[this, _module.LinkedList.Repr];
                }

                if ($Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null
                   && Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
                    read($Heap, this, _module.LinkedList.tail))
                   && Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                        _module.LinkedList.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set))
                {
                    b$reqreads#15 := $_ReadsFrame[this, _module.LinkedList.tail];
                    assert {:id "id393"} $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null;
                    b$reqreads#16 := $_ReadsFrame[$Unbox(read($Heap, this, _module.LinkedList.tail)): ref, _module.LinkedList.Repr];
                }

                if ($Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null
                   && Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
                    read($Heap, this, _module.LinkedList.tail))
                   && Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                        _module.LinkedList.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                        _module.LinkedList.Repr)): Set, 
                    $Box(this)))
                {
                    b$reqreads#17 := $_ReadsFrame[this, _module.LinkedList.tail];
                    assert {:id "id394"} $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, _module.LinkedList.tail), 
                      Tclass._module.LinkedList?(_module.LinkedList$T), 
                      $Heap);
                    b$reqreads#18 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == $Unbox(read($Heap, this, _module.LinkedList.tail)): ref
                             || Set#IsMember($Unbox(read($Heap, 
                                  $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                                  _module.LinkedList.Repr)): Set, 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assert {:id "id395"} Set#Subset(Set#Union($Unbox(read($Heap, 
                              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                              _module.LinkedList.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.LinkedList.tail))), 
                        Set#Union($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))))
                       && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                        Set#Union($Unbox(read($Heap, 
                              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                              _module.LinkedList.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.LinkedList.tail))));
                    assume _module.LinkedList.Valid#canCall(_module.LinkedList$T, 
                      $Heap, 
                      $Unbox(read($Heap, this, _module.LinkedList.tail)): ref);
                }

                if ($Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null
                   && Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
                    read($Heap, this, _module.LinkedList.tail))
                   && Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                        _module.LinkedList.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                        _module.LinkedList.Repr)): Set, 
                    $Box(this))
                   && _module.LinkedList.Valid(_module.LinkedList$T, 
                    $LS($LZ), 
                    $Heap, 
                    $Unbox(read($Heap, this, _module.LinkedList.tail)): ref))
                {
                    b$reqreads#19 := $_ReadsFrame[this, _module.LinkedList.List];
                    b$reqreads#20 := $_ReadsFrame[this, _module.LinkedList.head];
                    b$reqreads#21 := $_ReadsFrame[this, _module.LinkedList.tail];
                    assert {:id "id396"} $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null;
                    b$reqreads#22 := $_ReadsFrame[$Unbox(read($Heap, this, _module.LinkedList.tail)): ref, _module.LinkedList.List];
                }

                if ($Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null
                   && Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
                    read($Heap, this, _module.LinkedList.tail))
                   && Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                        _module.LinkedList.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                        _module.LinkedList.Repr)): Set, 
                    $Box(this))
                   && _module.LinkedList.Valid(_module.LinkedList$T, 
                    $LS($LZ), 
                    $Heap, 
                    $Unbox(read($Heap, this, _module.LinkedList.tail)): ref)
                   && Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, 
                    Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.LinkedList.head)), 
                      $Unbox(read($Heap, 
                          $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                          _module.LinkedList.List)): Seq)))
                {
                    b$reqreads#23 := $_ReadsFrame[this, _module.LinkedList.length];
                    b$reqreads#24 := $_ReadsFrame[this, _module.LinkedList.tail];
                    assert {:id "id397"} $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null;
                    b$reqreads#25 := $_ReadsFrame[$Unbox(read($Heap, this, _module.LinkedList.tail)): ref, _module.LinkedList.length];
                }
            }
        }

        assume {:id "id398"} _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this))
             && LitInt(0) <= $Unbox(read($Heap, this, _module.LinkedList.length)): int
             && $Unbox(read($Heap, this, _module.LinkedList.length)): int
               == Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq)
             && ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
               ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq)
                 && $Unbox(read($Heap, this, _module.LinkedList.tail)): ref == null)
             && ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
               ==> $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null
                 && Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
                  read($Heap, this, _module.LinkedList.tail))
                 && Set#Subset($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                      _module.LinkedList.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                      _module.LinkedList.Repr)): Set, 
                  $Box(this))
                 && _module.LinkedList.Valid(_module.LinkedList$T, 
                  $LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.LinkedList.tail)): ref)
                 && Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, 
                  Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.LinkedList.head)), 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                        _module.LinkedList.List)): Seq))
                 && $Unbox(read($Heap, this, _module.LinkedList.length)): int
                   == $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                        _module.LinkedList.length)): int
                     + 1));
        assume Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this))
           ==> 
          LitInt(0) <= $Unbox(read($Heap, this, _module.LinkedList.length)): int
           ==> 
          $Unbox(read($Heap, this, _module.LinkedList.length)): int
             == Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq)
           ==> 
          ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
           ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq)
             && $Unbox(read($Heap, this, _module.LinkedList.tail)): ref == null)
           ==> 
          $Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
           ==> 
          $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
            read($Heap, this, _module.LinkedList.tail))
           ==> 
          Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Box(this))
           ==> _module.LinkedList.Valid#canCall(_module.LinkedList$T, 
            $Heap, 
            $Unbox(read($Heap, this, _module.LinkedList.tail)): ref);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this), TBool);
        assert {:id "id399"} b$reqreads#1;
        assert {:id "id400"} b$reqreads#2;
        assert {:id "id401"} b$reqreads#3;
        assert {:id "id402"} b$reqreads#4;
        assert {:id "id403"} b$reqreads#5;
        assert {:id "id404"} b$reqreads#6;
        assert {:id "id405"} b$reqreads#7;
        assert {:id "id406"} b$reqreads#8;
        assert {:id "id407"} b$reqreads#9;
        assert {:id "id408"} b$reqreads#10;
        assert {:id "id409"} b$reqreads#11;
        assert {:id "id410"} b$reqreads#12;
        assert {:id "id411"} b$reqreads#13;
        assert {:id "id412"} b$reqreads#14;
        assert {:id "id413"} b$reqreads#15;
        assert {:id "id414"} b$reqreads#16;
        assert {:id "id415"} b$reqreads#17;
        assert {:id "id416"} b$reqreads#18;
        assert {:id "id417"} b$reqreads#19;
        assert {:id "id418"} b$reqreads#20;
        assert {:id "id419"} b$reqreads#21;
        assert {:id "id420"} b$reqreads#22;
        assert {:id "id421"} b$reqreads#23;
        assert {:id "id422"} b$reqreads#24;
        assert {:id "id423"} b$reqreads#25;
        return;

        assume false;
    }
}



procedure {:verboseName "LinkedList.Init (well-formedness)"} CheckWellFormed$$_module.LinkedList.Init(_module.LinkedList$T: Ty) returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LinkedList.Init (call)"} Call$$_module.LinkedList.Init(_module.LinkedList$T: Ty)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(this, Tclass._module.LinkedList(_module.LinkedList$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this);
  free ensures {:id "id426"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     && 
    _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this))
     && LitInt(0) <= $Unbox(read($Heap, this, _module.LinkedList.length)): int
     && $Unbox(read($Heap, this, _module.LinkedList.length)): int
       == Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq)
     && ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
       ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq)
         && $Unbox(read($Heap, this, _module.LinkedList.tail)): ref == null)
     && ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
       ==> $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null
         && Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
          read($Heap, this, _module.LinkedList.tail))
         && Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(this))
         && _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, this, _module.LinkedList.tail)): ref)
         && Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq))
         && $Unbox(read($Heap, this, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  ensures {:id "id427"} Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LinkedList.Init (correctness)"} Impl$$_module.LinkedList.Init(_module.LinkedList$T: Ty) returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this);
  ensures {:id "id428"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this));
  ensures {:id "id429"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || LitInt(0) <= $Unbox(read($Heap, this, _module.LinkedList.length)): int;
  ensures {:id "id430"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || $Unbox(read($Heap, this, _module.LinkedList.length)): int
         == Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq);
  ensures {:id "id431"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
         ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq));
  ensures {:id "id432"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
         ==> $Unbox(read($Heap, this, _module.LinkedList.tail)): ref == null);
  ensures {:id "id433"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null);
  ensures {:id "id434"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
          read($Heap, this, _module.LinkedList.tail)));
  ensures {:id "id435"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set));
  ensures {:id "id436"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(this)));
  ensures {:id "id437"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, this, _module.LinkedList.tail)): ref));
  ensures {:id "id438"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq)));
  ensures {:id "id439"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, this, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  ensures {:id "id440"} Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LinkedList.Init (correctness)"} Impl$$_module.LinkedList.Init(_module.LinkedList$T: Ty) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.head: Box;
  var this.tail: ref;
  var this.length: int;
  var this.List: Seq;
  var this.Repr: Set;
  var newtype$check#0: ref;

    // AddMethodImpl: Init, Impl$$_module.LinkedList.Init
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(110,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(111,10)
    assume true;
    newtype$check#0 := null;
    assume true;
    this.tail := null;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(112,12)
    assume true;
    assume true;
    this.length := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(113,10)
    assume true;
    assume true;
    this.List := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(114,10)
    assume true;
    assume true;
    this.Repr := Set#UnionOne(Set#Empty(): Set, $Box(this));
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(110,3)
    assume this != null && $Is(this, Tclass._module.LinkedList?(_module.LinkedList$T));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume read($Heap, this, _module.LinkedList.head) == this.head;
    assume $Unbox(read($Heap, this, _module.LinkedList.tail)): ref == this.tail;
    assume $Unbox(read($Heap, this, _module.LinkedList.length)): int == this.length;
    assume $Unbox(read($Heap, this, _module.LinkedList.List)): Seq == this.List;
    assume $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set == this.Repr;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(110,3)
}



procedure {:verboseName "LinkedList._ctor (well-formedness)"} CheckWellFormed$$_module.LinkedList.__ctor(_module.LinkedList$T: Ty) returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LinkedList._ctor (call)"} Call$$_module.LinkedList.__ctor(_module.LinkedList$T: Ty)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(this, Tclass._module.LinkedList(_module.LinkedList$T), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LinkedList._ctor (correctness)"} Impl$$_module.LinkedList.__ctor(_module.LinkedList$T: Ty) returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LinkedList.Cons (well-formedness)"} CheckWellFormed$$_module.LinkedList.Cons(_module.LinkedList$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(this, Tclass._module.LinkedList(_module.LinkedList$T), $Heap), 
    d#0: Box
       where $IsBox(d#0, _module.LinkedList$T)
         && $IsAllocBox(d#0, _module.LinkedList$T, $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(r#0, Tclass._module.LinkedList(_module.LinkedList$T), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LinkedList.Cons (well-formedness)"} CheckWellFormed$$_module.LinkedList.Cons(_module.LinkedList$T: Ty, this: ref, d#0: Box) returns (r#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Cons, CheckWellFormed$$_module.LinkedList.Cons
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.LinkedList?(_module.LinkedList$T), $Heap);
    assume _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this);
    assume {:id "id445"} _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    assert {:id "id446"} r#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(r#0), Tclass._module.LinkedList?(_module.LinkedList$T), $Heap);
    assume _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0);
    assume {:id "id447"} _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0);
    assert {:id "id448"} r#0 != null;
    assume {:id "id449"} Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
      Seq#Append(Seq#Build(Seq#Empty(): Seq, d#0), 
        $Unbox(read($Heap, this, _module.LinkedList.List)): Seq));
}



procedure {:verboseName "LinkedList.Cons (call)"} Call$$_module.LinkedList.Cons(_module.LinkedList$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(this, Tclass._module.LinkedList(_module.LinkedList$T), $Heap), 
    d#0: Box
       where $IsBox(d#0, _module.LinkedList$T)
         && $IsAllocBox(d#0, _module.LinkedList$T, $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(r#0, Tclass._module.LinkedList(_module.LinkedList$T), $Heap));
  // user-defined preconditions
  requires {:id "id450"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this));
  requires {:id "id451"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || LitInt(0) <= $Unbox(read($Heap, this, _module.LinkedList.length)): int;
  requires {:id "id452"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || $Unbox(read($Heap, this, _module.LinkedList.length)): int
         == Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq);
  requires {:id "id453"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
         ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq));
  requires {:id "id454"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
         ==> $Unbox(read($Heap, this, _module.LinkedList.tail)): ref == null);
  requires {:id "id455"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null);
  requires {:id "id456"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
          read($Heap, this, _module.LinkedList.tail)));
  requires {:id "id457"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set));
  requires {:id "id458"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(this)));
  requires {:id "id459"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, this, _module.LinkedList.tail)): ref));
  requires {:id "id460"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq)));
  requires {:id "id461"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, this, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0);
  free ensures {:id "id462"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     && 
    _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
     && 
    Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, $Box(r#0))
     && LitInt(0) <= $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
     && $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
       == Seq#Length($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq)
     && ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int == LitInt(0)
       ==> Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, Seq#Empty(): Seq)
         && $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref == null)
     && ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
       ==> $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref != null
         && Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, 
          read($Heap, r#0, _module.LinkedList.tail))
         && Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(r#0))
         && _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref)
         && Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, r#0, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq))
         && $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  ensures {:id "id463"} Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
    Seq#Append(Seq#Build(Seq#Empty(): Seq, d#0), 
      $Unbox(read($Heap, this, _module.LinkedList.List)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LinkedList.Cons (correctness)"} Impl$$_module.LinkedList.Cons(_module.LinkedList$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(this, Tclass._module.LinkedList(_module.LinkedList$T), $Heap), 
    d#0: Box
       where $IsBox(d#0, _module.LinkedList$T)
         && $IsAllocBox(d#0, _module.LinkedList$T, $Heap))
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass._module.LinkedList(_module.LinkedList$T))
           && $IsAlloc(r#0, Tclass._module.LinkedList(_module.LinkedList$T), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id464"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     && 
    _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this))
     && LitInt(0) <= $Unbox(read($Heap, this, _module.LinkedList.length)): int
     && $Unbox(read($Heap, this, _module.LinkedList.length)): int
       == Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq)
     && ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
       ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq)
         && $Unbox(read($Heap, this, _module.LinkedList.tail)): ref == null)
     && ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
       ==> $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null
         && Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
          read($Heap, this, _module.LinkedList.tail))
         && Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(this))
         && _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, this, _module.LinkedList.tail)): ref)
         && Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq))
         && $Unbox(read($Heap, this, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0);
  ensures {:id "id465"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, $Box(r#0));
  ensures {:id "id466"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || LitInt(0) <= $Unbox(read($Heap, r#0, _module.LinkedList.length)): int;
  ensures {:id "id467"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
         == Seq#Length($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq);
  ensures {:id "id468"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int == LitInt(0)
         ==> Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, Seq#Empty(): Seq));
  ensures {:id "id469"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int == LitInt(0)
         ==> $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref == null);
  ensures {:id "id470"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref != null);
  ensures {:id "id471"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, 
          read($Heap, r#0, _module.LinkedList.tail)));
  ensures {:id "id472"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set));
  ensures {:id "id473"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(r#0)));
  ensures {:id "id474"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref));
  ensures {:id "id475"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, r#0, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq)));
  ensures {:id "id476"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  ensures {:id "id477"} Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
    Seq#Append(Seq#Build(Seq#Empty(): Seq, d#0), 
      $Unbox(read($Heap, this, _module.LinkedList.List)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LinkedList.Cons (correctness)"} Impl$$_module.LinkedList.Cons(_module.LinkedList$T: Ty, this: ref, d#0: Box)
   returns (defass#r#0: bool, r#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $nw: ref;
  var $rhs#0: Box;
  var $rhs#1: ref;
  var $rhs#2: int;
  var $rhs#3: Seq;
  var $rhs#4: Set;

    // AddMethodImpl: Cons, Impl$$_module.LinkedList.Cons
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(125,7)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(125,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id478"} $nw := Call$$_module.LinkedList.__ctor(_module.LinkedList$T);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $nw;
    defass#r#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(126,12)
    assert {:id "id480"} defass#r#0;
    assert {:id "id481"} r#0 != null;
    assume true;
    assert {:id "id482"} $_ModifiesFrame[r#0, _module.LinkedList.head];
    assume true;
    $rhs#0 := d#0;
    $Heap := update($Heap, r#0, _module.LinkedList.head, $rhs#0);
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(127,12)
    assert {:id "id485"} defass#r#0;
    assert {:id "id486"} r#0 != null;
    assume true;
    assert {:id "id487"} $_ModifiesFrame[r#0, _module.LinkedList.tail];
    assume true;
    $rhs#1 := this;
    $Heap := update($Heap, r#0, _module.LinkedList.tail, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(128,14)
    assert {:id "id490"} defass#r#0;
    assert {:id "id491"} r#0 != null;
    assume true;
    assert {:id "id492"} $_ModifiesFrame[r#0, _module.LinkedList.length];
    assume true;
    $rhs#2 := $Unbox(read($Heap, this, _module.LinkedList.length)): int + 1;
    $Heap := update($Heap, r#0, _module.LinkedList.length, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(129,12)
    assert {:id "id495"} defass#r#0;
    assert {:id "id496"} r#0 != null;
    assume true;
    assert {:id "id497"} $_ModifiesFrame[r#0, _module.LinkedList.List];
    assume true;
    $rhs#3 := Seq#Append(Seq#Build(Seq#Empty(): Seq, d#0), 
      $Unbox(read($Heap, this, _module.LinkedList.List)): Seq);
    $Heap := update($Heap, r#0, _module.LinkedList.List, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(130,12)
    assert {:id "id500"} defass#r#0;
    assert {:id "id501"} r#0 != null;
    assume true;
    assert {:id "id502"} $_ModifiesFrame[r#0, _module.LinkedList.Repr];
    assert {:id "id503"} defass#r#0;
    assume true;
    $rhs#4 := Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(r#0)), 
      $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set);
    $Heap := update($Heap, r#0, _module.LinkedList.Repr, $Box($rhs#4));
    assume $IsGoodHeap($Heap);
    assert {:id "id506"} defass#r#0;
}



procedure {:verboseName "LinkedList.Concat (well-formedness)"} CheckWellFormed$$_module.LinkedList.Concat(_module.LinkedList$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(this, Tclass._module.LinkedList(_module.LinkedList$T), $Heap), 
    end#0: ref
       where $Is(end#0, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(end#0, Tclass._module.LinkedList(_module.LinkedList$T), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(r#0, Tclass._module.LinkedList(_module.LinkedList$T), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LinkedList.Concat (well-formedness)"} CheckWellFormed$$_module.LinkedList.Concat(_module.LinkedList$T: Ty, this: ref, end#0: ref) returns (r#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Concat, CheckWellFormed$$_module.LinkedList.Concat
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.LinkedList?(_module.LinkedList$T), $Heap);
    assume _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this);
    assume {:id "id507"} _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this);
    assert {:id "id508"} end#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(end#0), Tclass._module.LinkedList?(_module.LinkedList$T), $Heap);
    assume _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, end#0);
    assume {:id "id509"} _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, end#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    assert {:id "id510"} r#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(r#0), Tclass._module.LinkedList?(_module.LinkedList$T), $Heap);
    assume _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0);
    assume {:id "id511"} _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0);
    assert {:id "id512"} r#0 != null;
    assert {:id "id513"} end#0 != null;
    assume {:id "id514"} Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
      Seq#Append($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, 
        $Unbox(read($Heap, end#0, _module.LinkedList.List)): Seq));
}



procedure {:verboseName "LinkedList.Concat (call)"} Call$$_module.LinkedList.Concat(_module.LinkedList$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(this, Tclass._module.LinkedList(_module.LinkedList$T), $Heap), 
    end#0: ref
       where $Is(end#0, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(end#0, Tclass._module.LinkedList(_module.LinkedList$T), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(r#0, Tclass._module.LinkedList(_module.LinkedList$T), $Heap));
  // user-defined preconditions
  requires {:id "id515"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this));
  requires {:id "id516"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || LitInt(0) <= $Unbox(read($Heap, this, _module.LinkedList.length)): int;
  requires {:id "id517"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || $Unbox(read($Heap, this, _module.LinkedList.length)): int
         == Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq);
  requires {:id "id518"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
         ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq));
  requires {:id "id519"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
         ==> $Unbox(read($Heap, this, _module.LinkedList.tail)): ref == null);
  requires {:id "id520"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null);
  requires {:id "id521"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
          read($Heap, this, _module.LinkedList.tail)));
  requires {:id "id522"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set));
  requires {:id "id523"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(this)));
  requires {:id "id524"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, this, _module.LinkedList.tail)): ref));
  requires {:id "id525"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq)));
  requires {:id "id526"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, this, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  requires {:id "id527"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, end#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, end#0)
       || Set#IsMember($Unbox(read($Heap, end#0, _module.LinkedList.Repr)): Set, $Box(end#0));
  requires {:id "id528"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, end#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, end#0)
       || LitInt(0) <= $Unbox(read($Heap, end#0, _module.LinkedList.length)): int;
  requires {:id "id529"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, end#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, end#0)
       || $Unbox(read($Heap, end#0, _module.LinkedList.length)): int
         == Seq#Length($Unbox(read($Heap, end#0, _module.LinkedList.List)): Seq);
  requires {:id "id530"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, end#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, end#0)
       || ($Unbox(read($Heap, end#0, _module.LinkedList.length)): int == LitInt(0)
         ==> Seq#Equal($Unbox(read($Heap, end#0, _module.LinkedList.List)): Seq, Seq#Empty(): Seq));
  requires {:id "id531"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, end#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, end#0)
       || ($Unbox(read($Heap, end#0, _module.LinkedList.length)): int == LitInt(0)
         ==> $Unbox(read($Heap, end#0, _module.LinkedList.tail)): ref == null);
  requires {:id "id532"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, end#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, end#0)
       || ($Unbox(read($Heap, end#0, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, end#0, _module.LinkedList.tail)): ref != null);
  requires {:id "id533"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, end#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, end#0)
       || ($Unbox(read($Heap, end#0, _module.LinkedList.length)): int != 0
         ==> Set#IsMember($Unbox(read($Heap, end#0, _module.LinkedList.Repr)): Set, 
          read($Heap, end#0, _module.LinkedList.tail)));
  requires {:id "id534"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, end#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, end#0)
       || ($Unbox(read($Heap, end#0, _module.LinkedList.length)): int != 0
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, end#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, end#0, _module.LinkedList.Repr)): Set));
  requires {:id "id535"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, end#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, end#0)
       || ($Unbox(read($Heap, end#0, _module.LinkedList.length)): int != 0
         ==> !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, end#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(end#0)));
  requires {:id "id536"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, end#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, end#0)
       || ($Unbox(read($Heap, end#0, _module.LinkedList.length)): int != 0
         ==> _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, end#0, _module.LinkedList.tail)): ref));
  requires {:id "id537"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, end#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, end#0)
       || ($Unbox(read($Heap, end#0, _module.LinkedList.length)): int != 0
         ==> Seq#Equal($Unbox(read($Heap, end#0, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, end#0, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, end#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq)));
  requires {:id "id538"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, end#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, end#0)
       || ($Unbox(read($Heap, end#0, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, end#0, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, end#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0);
  free ensures {:id "id539"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     && 
    _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
     && 
    Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, $Box(r#0))
     && LitInt(0) <= $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
     && $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
       == Seq#Length($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq)
     && ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int == LitInt(0)
       ==> Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, Seq#Empty(): Seq)
         && $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref == null)
     && ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
       ==> $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref != null
         && Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, 
          read($Heap, r#0, _module.LinkedList.tail))
         && Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(r#0))
         && _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref)
         && Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, r#0, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq))
         && $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  ensures {:id "id540"} Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
    Seq#Append($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, 
      $Unbox(read($Heap, end#0, _module.LinkedList.List)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LinkedList.Concat (correctness)"} Impl$$_module.LinkedList.Concat(_module.LinkedList$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(this, Tclass._module.LinkedList(_module.LinkedList$T), $Heap), 
    end#0: ref
       where $Is(end#0, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(end#0, Tclass._module.LinkedList(_module.LinkedList$T), $Heap))
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass._module.LinkedList(_module.LinkedList$T))
           && $IsAlloc(r#0, Tclass._module.LinkedList(_module.LinkedList$T), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id541"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     && 
    _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this))
     && LitInt(0) <= $Unbox(read($Heap, this, _module.LinkedList.length)): int
     && $Unbox(read($Heap, this, _module.LinkedList.length)): int
       == Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq)
     && ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
       ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq)
         && $Unbox(read($Heap, this, _module.LinkedList.tail)): ref == null)
     && ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
       ==> $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null
         && Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
          read($Heap, this, _module.LinkedList.tail))
         && Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(this))
         && _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, this, _module.LinkedList.tail)): ref)
         && Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq))
         && $Unbox(read($Heap, this, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  free requires {:id "id542"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, end#0)
     && 
    _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, end#0)
     && 
    Set#IsMember($Unbox(read($Heap, end#0, _module.LinkedList.Repr)): Set, $Box(end#0))
     && LitInt(0) <= $Unbox(read($Heap, end#0, _module.LinkedList.length)): int
     && $Unbox(read($Heap, end#0, _module.LinkedList.length)): int
       == Seq#Length($Unbox(read($Heap, end#0, _module.LinkedList.List)): Seq)
     && ($Unbox(read($Heap, end#0, _module.LinkedList.length)): int == LitInt(0)
       ==> Seq#Equal($Unbox(read($Heap, end#0, _module.LinkedList.List)): Seq, Seq#Empty(): Seq)
         && $Unbox(read($Heap, end#0, _module.LinkedList.tail)): ref == null)
     && ($Unbox(read($Heap, end#0, _module.LinkedList.length)): int != 0
       ==> $Unbox(read($Heap, end#0, _module.LinkedList.tail)): ref != null
         && Set#IsMember($Unbox(read($Heap, end#0, _module.LinkedList.Repr)): Set, 
          read($Heap, end#0, _module.LinkedList.tail))
         && Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, end#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, end#0, _module.LinkedList.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, end#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(end#0))
         && _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, end#0, _module.LinkedList.tail)): ref)
         && Seq#Equal($Unbox(read($Heap, end#0, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, end#0, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, end#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq))
         && $Unbox(read($Heap, end#0, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, end#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0);
  ensures {:id "id543"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, $Box(r#0));
  ensures {:id "id544"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || LitInt(0) <= $Unbox(read($Heap, r#0, _module.LinkedList.length)): int;
  ensures {:id "id545"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
         == Seq#Length($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq);
  ensures {:id "id546"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int == LitInt(0)
         ==> Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, Seq#Empty(): Seq));
  ensures {:id "id547"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int == LitInt(0)
         ==> $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref == null);
  ensures {:id "id548"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref != null);
  ensures {:id "id549"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, 
          read($Heap, r#0, _module.LinkedList.tail)));
  ensures {:id "id550"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set));
  ensures {:id "id551"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(r#0)));
  ensures {:id "id552"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref));
  ensures {:id "id553"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, r#0, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq)));
  ensures {:id "id554"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  ensures {:id "id555"} Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
    Seq#Append($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, 
      $Unbox(read($Heap, end#0, _module.LinkedList.List)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LinkedList.Concat (correctness)"} Impl$$_module.LinkedList.Concat(_module.LinkedList$T: Ty, this: ref, end#0: ref)
   returns (defass#r#0: bool, r#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#1_0: bool;
  var c#1_0: ref
     where defass#c#1_0
       ==> $Is(c#1_0, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(c#1_0, Tclass._module.LinkedList(_module.LinkedList$T), $Heap);
  var $rhs##1_0: ref;
  var end##1_0: ref;
  var $rhs##1_1: ref;
  var d##1_0: Box;

    // AddMethodImpl: Concat, Impl$$_module.LinkedList.Concat
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(138,5)
    assume true;
    if ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(139,9)
        assume true;
        assume true;
        r#0 := end#0;
        defass#r#0 := true;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(141,27)
        assume true;
        // TrCallStmt: Adding lhs with type LinkedList<T>
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id557"} $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        end##1_0 := end#0;
        assert {:id "id558"} Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.LinkedList.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), this, _module.LinkedList.Repr)): Set, 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.Repr)): Set);
        call {:id "id559"} $rhs##1_0 := Call$$_module.LinkedList.Concat(_module.LinkedList$T, $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, end##1_0);
        // TrCallStmt: After ProcessCallStmt
        c#1_0 := $rhs##1_0;
        defass#c#1_0 := true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(142,18)
        assume true;
        // TrCallStmt: Adding lhs with type LinkedList<T>
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id561"} defass#c#1_0;
        assume true;
        assert {:id "id562"} c#1_0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d##1_0 := read($Heap, this, _module.LinkedList.head);
        call {:id "id563"} $rhs##1_1 := Call$$_module.LinkedList.Cons(_module.LinkedList$T, c#1_0, d##1_0);
        // TrCallStmt: After ProcessCallStmt
        r#0 := $rhs##1_1;
        defass#r#0 := true;
    }

    assert {:id "id565"} defass#r#0;
}



procedure {:verboseName "LinkedList.Reverse (well-formedness)"} CheckWellFormed$$_module.LinkedList.Reverse(_module.LinkedList$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(this, Tclass._module.LinkedList(_module.LinkedList$T), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(r#0, Tclass._module.LinkedList(_module.LinkedList$T), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LinkedList.Reverse (well-formedness)"} CheckWellFormed$$_module.LinkedList.Reverse(_module.LinkedList$T: Ty, this: ref) returns (r#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var ##s#0: Seq;


    // AddMethodImpl: Reverse, CheckWellFormed$$_module.LinkedList.Reverse
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.LinkedList?(_module.LinkedList$T), $Heap);
    assume _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this);
    assume {:id "id566"} _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    assert {:id "id567"} r#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(r#0), Tclass._module.LinkedList?(_module.LinkedList$T), $Heap);
    assume _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0);
    assume {:id "id568"} _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0);
    assert {:id "id569"} r#0 != null;
    assume {:id "id570"} Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq)
       == Seq#Length($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq);
    // Begin Comprehension WF check
    havoc k#0;
    if (true)
    {
        if (LitInt(0) <= k#0)
        {
        }

        if (LitInt(0) <= k#0
           && k#0 < Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq))
        {
            assert {:id "id571"} 0 <= k#0
               && k#0 < Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq);
            assert {:id "id572"} r#0 != null;
            assert {:id "id573"} 0
                 <= Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq) - 1 - k#0
               && Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq) - 1 - k#0
                 < Seq#Length($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq);
        }
    }

    // End Comprehension WF check
    assume {:id "id574"} (forall k#1: int :: 
      { Seq#Index($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, k#1) } 
      LitInt(0) <= k#1
           && k#1 < Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq)
         ==> Seq#Index($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, k#1)
           == Seq#Index($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
            Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq) - 1 - k#1));
    assert {:id "id575"} r#0 != null;
    ##s#0 := $Unbox(read($Heap, this, _module.LinkedList.List)): Seq;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, TSeq(_module.LinkedList$T), $Heap);
    assume _module.LinkedList.ReverseSeq#canCall(_module.LinkedList$T, $Unbox(read($Heap, this, _module.LinkedList.List)): Seq);
    assume {:id "id576"} Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
      _module.LinkedList.ReverseSeq(_module.LinkedList$T, 
        $LS($LZ), 
        $Unbox(read($Heap, this, _module.LinkedList.List)): Seq));
}



procedure {:verboseName "LinkedList.Reverse (call)"} Call$$_module.LinkedList.Reverse(_module.LinkedList$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(this, Tclass._module.LinkedList(_module.LinkedList$T), $Heap))
   returns (r#0: ref
       where $Is(r#0, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(r#0, Tclass._module.LinkedList(_module.LinkedList$T), $Heap));
  // user-defined preconditions
  requires {:id "id577"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this));
  requires {:id "id578"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || LitInt(0) <= $Unbox(read($Heap, this, _module.LinkedList.length)): int;
  requires {:id "id579"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || $Unbox(read($Heap, this, _module.LinkedList.length)): int
         == Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq);
  requires {:id "id580"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
         ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq));
  requires {:id "id581"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
         ==> $Unbox(read($Heap, this, _module.LinkedList.tail)): ref == null);
  requires {:id "id582"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null);
  requires {:id "id583"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
          read($Heap, this, _module.LinkedList.tail)));
  requires {:id "id584"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set));
  requires {:id "id585"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(this)));
  requires {:id "id586"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, this, _module.LinkedList.tail)): ref));
  requires {:id "id587"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq)));
  requires {:id "id588"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, this, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0);
  free ensures {:id "id589"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     && 
    _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
     && 
    Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, $Box(r#0))
     && LitInt(0) <= $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
     && $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
       == Seq#Length($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq)
     && ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int == LitInt(0)
       ==> Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, Seq#Empty(): Seq)
         && $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref == null)
     && ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
       ==> $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref != null
         && Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, 
          read($Heap, r#0, _module.LinkedList.tail))
         && Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(r#0))
         && _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref)
         && Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, r#0, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq))
         && $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  ensures {:id "id590"} Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq)
     == Seq#Length($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq);
  free ensures true;
  ensures {:id "id591"} (forall k#1: int :: 
    { Seq#Index($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, k#1) } 
    LitInt(0) <= k#1
         && k#1 < Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq)
       ==> Seq#Index($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, k#1)
         == Seq#Index($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
          Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq) - 1 - k#1));
  free ensures _module.LinkedList.ReverseSeq#canCall(_module.LinkedList$T, $Unbox(read($Heap, this, _module.LinkedList.List)): Seq);
  ensures {:id "id592"} Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
    _module.LinkedList.ReverseSeq(_module.LinkedList$T, 
      $LS($LS($LZ)), 
      $Unbox(read($Heap, this, _module.LinkedList.List)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LinkedList.Reverse (correctness)"} Impl$$_module.LinkedList.Reverse(_module.LinkedList$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(this, Tclass._module.LinkedList(_module.LinkedList$T), $Heap))
   returns (defass#r#0: bool, 
    r#0: ref
       where defass#r#0
         ==> $Is(r#0, Tclass._module.LinkedList(_module.LinkedList$T))
           && $IsAlloc(r#0, Tclass._module.LinkedList(_module.LinkedList$T), $Heap), 
    $_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id593"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, this)
     && 
    _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, $Box(this))
     && LitInt(0) <= $Unbox(read($Heap, this, _module.LinkedList.length)): int
     && $Unbox(read($Heap, this, _module.LinkedList.length)): int
       == Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq)
     && ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0)
       ==> Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, Seq#Empty(): Seq)
         && $Unbox(read($Heap, this, _module.LinkedList.tail)): ref == null)
     && ($Unbox(read($Heap, this, _module.LinkedList.length)): int != 0
       ==> $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null
         && Set#IsMember($Unbox(read($Heap, this, _module.LinkedList.Repr)): Set, 
          read($Heap, this, _module.LinkedList.tail))
         && Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, this, _module.LinkedList.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(this))
         && _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, this, _module.LinkedList.tail)): ref)
         && Seq#Equal($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq))
         && $Unbox(read($Heap, this, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0);
  ensures {:id "id594"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, $Box(r#0));
  ensures {:id "id595"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || LitInt(0) <= $Unbox(read($Heap, r#0, _module.LinkedList.length)): int;
  ensures {:id "id596"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
         == Seq#Length($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq);
  ensures {:id "id597"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int == LitInt(0)
         ==> Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, Seq#Empty(): Seq));
  ensures {:id "id598"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int == LitInt(0)
         ==> $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref == null);
  ensures {:id "id599"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref != null);
  ensures {:id "id600"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> Set#IsMember($Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set, 
          read($Heap, r#0, _module.LinkedList.tail)));
  ensures {:id "id601"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Unbox(read($Heap, r#0, _module.LinkedList.Repr)): Set));
  ensures {:id "id602"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> !Set#IsMember($Unbox(read($Heap, 
              $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
              _module.LinkedList.Repr)): Set, 
          $Box(r#0)));
  ensures {:id "id603"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> _module.LinkedList.Valid(_module.LinkedList$T, 
          $LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref));
  ensures {:id "id604"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, r#0, _module.LinkedList.head)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.List)): Seq)));
  ensures {:id "id605"} _module.LinkedList.Valid#canCall(_module.LinkedList$T, $Heap, r#0)
     ==> _module.LinkedList.Valid(_module.LinkedList$T, $LS($LZ), $Heap, r#0)
       || ($Unbox(read($Heap, r#0, _module.LinkedList.length)): int != 0
         ==> $Unbox(read($Heap, r#0, _module.LinkedList.length)): int
           == $Unbox(read($Heap, 
                $Unbox(read($Heap, r#0, _module.LinkedList.tail)): ref, 
                _module.LinkedList.length)): int
             + 1);
  ensures {:id "id606"} Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq)
     == Seq#Length($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq);
  free ensures true;
  ensures {:id "id607"} (forall k#1: int :: 
    { Seq#Index($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, k#1) } 
    LitInt(0) <= k#1
         && k#1 < Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq)
       ==> Seq#Index($Unbox(read($Heap, this, _module.LinkedList.List)): Seq, k#1)
         == Seq#Index($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
          Seq#Length($Unbox(read($Heap, this, _module.LinkedList.List)): Seq) - 1 - k#1));
  free ensures _module.LinkedList.ReverseSeq#canCall(_module.LinkedList$T, $Unbox(read($Heap, this, _module.LinkedList.List)): Seq);
  ensures {:id "id608"} Seq#Equal($Unbox(read($Heap, r#0, _module.LinkedList.List)): Seq, 
    _module.LinkedList.ReverseSeq(_module.LinkedList$T, 
      $LS($LS($LZ)), 
      $Unbox(read($Heap, this, _module.LinkedList.List)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LinkedList.Reverse (correctness)"} Impl$$_module.LinkedList.Reverse(_module.LinkedList$T: Ty, this: ref)
   returns (defass#r#0: bool, r#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##1_0: ref;
  var defass#e#1_0: bool;
  var e#1_0: ref
     where defass#e#1_0
       ==> $Is(e#1_0, Tclass._module.LinkedList(_module.LinkedList$T))
         && $IsAlloc(e#1_0, Tclass._module.LinkedList(_module.LinkedList$T), $Heap);
  var $nw: ref;
  var $rhs##1_1: ref;
  var d##1_0: Box;
  var $rhs##1_2: ref;
  var end##1_0: ref;

    // AddMethodImpl: Reverse, Impl$$_module.LinkedList.Reverse
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(153,5)
    assume true;
    if ($Unbox(read($Heap, this, _module.LinkedList.length)): int == LitInt(0))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(154,9)
        assume true;
        assume true;
        r#0 := this;
        defass#r#0 := true;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(156,24)
        assume true;
        // TrCallStmt: Adding lhs with type LinkedList<T>
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id610"} $Unbox(read($Heap, this, _module.LinkedList.tail)): ref != null;
        assert {:id "id611"} Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.LinkedList.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), this, _module.LinkedList.Repr)): Set, 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.LinkedList.tail)): ref, 
                _module.LinkedList.Repr)): Set);
        call {:id "id612"} $rhs##1_0 := Call$$_module.LinkedList.Reverse(_module.LinkedList$T, $Unbox(read($Heap, this, _module.LinkedList.tail)): ref);
        // TrCallStmt: After ProcessCallStmt
        r#0 := $rhs##1_0;
        defass#r#0 := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(157,13)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(157,34)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id614"} $nw := Call$$_module.LinkedList.Init(_module.LinkedList$T);
        // TrCallStmt: After ProcessCallStmt
        e#1_0 := $nw;
        defass#e#1_0 := true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(158,18)
        assume true;
        // TrCallStmt: Adding lhs with type LinkedList<T>
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id616"} defass#e#1_0;
        assume true;
        assert {:id "id617"} e#1_0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d##1_0 := read($Heap, this, _module.LinkedList.head);
        call {:id "id618"} $rhs##1_1 := Call$$_module.LinkedList.Cons(_module.LinkedList$T, e#1_0, d##1_0);
        // TrCallStmt: After ProcessCallStmt
        e#1_0 := $rhs##1_1;
        defass#e#1_0 := true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VSComp2010/Problem5-DoubleEndedQueue.dfy(159,20)
        assume true;
        // TrCallStmt: Adding lhs with type LinkedList<T>
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id620"} defass#r#0;
        assume true;
        assert {:id "id621"} r#0 != null;
        assert {:id "id622"} defass#e#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        end##1_0 := e#1_0;
        call {:id "id623"} $rhs##1_2 := Call$$_module.LinkedList.Concat(_module.LinkedList$T, r#0, end##1_0);
        // TrCallStmt: After ProcessCallStmt
        r#0 := $rhs##1_2;
        defass#r#0 := true;
    }

    assert {:id "id625"} defass#r#0;
}



// function declaration for _module.LinkedList.ReverseSeq
function _module.LinkedList.ReverseSeq(_module.LinkedList$T: Ty, $ly: LayerType, s#0: Seq) : Seq
uses {
// consequence axiom for _module.LinkedList.ReverseSeq
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.LinkedList$T: Ty, $ly: LayerType, s#0: Seq :: 
    { _module.LinkedList.ReverseSeq(_module.LinkedList$T, $ly, s#0) } 
    _module.LinkedList.ReverseSeq#canCall(_module.LinkedList$T, s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(_module.LinkedList$T)))
       ==> $Is(_module.LinkedList.ReverseSeq(_module.LinkedList$T, $ly, s#0), 
        TSeq(_module.LinkedList$T)));
// alloc consequence axiom for _module.LinkedList.ReverseSeq
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.LinkedList$T: Ty, $ly: LayerType, s#0: Seq :: 
    { $IsAlloc(_module.LinkedList.ReverseSeq(_module.LinkedList$T, $ly, s#0), 
        TSeq(_module.LinkedList$T), 
        $Heap) } 
    (_module.LinkedList.ReverseSeq#canCall(_module.LinkedList$T, s#0)
           || (0 < $FunctionContextHeight
             && 
            $Is(s#0, TSeq(_module.LinkedList$T))
             && $IsAlloc(s#0, TSeq(_module.LinkedList$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.LinkedList.ReverseSeq(_module.LinkedList$T, $ly, s#0), 
        TSeq(_module.LinkedList$T), 
        $Heap));
// definition axiom for _module.LinkedList.ReverseSeq (revealed)
axiom {:id "id626"} 0 <= $FunctionContextHeight
   ==> (forall _module.LinkedList$T: Ty, $ly: LayerType, s#0: Seq :: 
    { _module.LinkedList.ReverseSeq(_module.LinkedList$T, $LS($ly), s#0) } 
    _module.LinkedList.ReverseSeq#canCall(_module.LinkedList$T, s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(_module.LinkedList$T)))
       ==> (!Seq#Equal(s#0, Seq#Empty(): Seq)
           ==> _module.LinkedList.ReverseSeq#canCall(_module.LinkedList$T, Seq#Drop(s#0, LitInt(1))))
         && _module.LinkedList.ReverseSeq(_module.LinkedList$T, $LS($ly), s#0)
           == (if Seq#Equal(s#0, Seq#Empty(): Seq)
             then Seq#Empty(): Seq
             else Seq#Append(_module.LinkedList.ReverseSeq(_module.LinkedList$T, $ly, Seq#Drop(s#0, LitInt(1))), 
              Seq#Build(Seq#Empty(): Seq, Seq#Index(s#0, LitInt(0))))));
// definition axiom for _module.LinkedList.ReverseSeq for all literals (revealed)
axiom {:id "id627"} 0 <= $FunctionContextHeight
   ==> (forall _module.LinkedList$T: Ty, $ly: LayerType, s#0: Seq :: 
    {:weight 3} { _module.LinkedList.ReverseSeq(_module.LinkedList$T, $LS($ly), Lit(s#0)) } 
    _module.LinkedList.ReverseSeq#canCall(_module.LinkedList$T, Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(_module.LinkedList$T)))
       ==> (!Seq#Equal(s#0, Seq#Empty(): Seq)
           ==> _module.LinkedList.ReverseSeq#canCall(_module.LinkedList$T, Lit(Seq#Drop(Lit(s#0), LitInt(1)))))
         && _module.LinkedList.ReverseSeq(_module.LinkedList$T, $LS($ly), Lit(s#0))
           == (if Seq#Equal(s#0, Seq#Empty(): Seq)
             then Seq#Empty(): Seq
             else Seq#Append(_module.LinkedList.ReverseSeq(_module.LinkedList$T, $LS($ly), Lit(Seq#Drop(Lit(s#0), LitInt(1)))), 
              Seq#Build(Seq#Empty(): Seq, Seq#Index(Lit(s#0), LitInt(0))))));
}

function _module.LinkedList.ReverseSeq#canCall(_module.LinkedList$T: Ty, s#0: Seq) : bool;

// layer synonym axiom
axiom (forall _module.LinkedList$T: Ty, $ly: LayerType, s#0: Seq :: 
  { _module.LinkedList.ReverseSeq(_module.LinkedList$T, $LS($ly), s#0) } 
  _module.LinkedList.ReverseSeq(_module.LinkedList$T, $LS($ly), s#0)
     == _module.LinkedList.ReverseSeq(_module.LinkedList$T, $ly, s#0));

// fuel synonym axiom
axiom (forall _module.LinkedList$T: Ty, $ly: LayerType, s#0: Seq :: 
  { _module.LinkedList.ReverseSeq(_module.LinkedList$T, AsFuelBottom($ly), s#0) } 
  _module.LinkedList.ReverseSeq(_module.LinkedList$T, $ly, s#0)
     == _module.LinkedList.ReverseSeq(_module.LinkedList$T, $LZ, s#0));

function _module.LinkedList.ReverseSeq#requires(Ty, LayerType, Seq) : bool;

// #requires axiom for _module.LinkedList.ReverseSeq
axiom (forall _module.LinkedList$T: Ty, $ly: LayerType, s#0: Seq :: 
  { _module.LinkedList.ReverseSeq#requires(_module.LinkedList$T, $ly, s#0) } 
  $Is(s#0, TSeq(_module.LinkedList$T))
     ==> _module.LinkedList.ReverseSeq#requires(_module.LinkedList$T, $ly, s#0) == true);

procedure {:verboseName "LinkedList.ReverseSeq (well-formedness)"} CheckWellformed$$_module.LinkedList.ReverseSeq(_module.LinkedList$T: Ty, s#0: Seq where $Is(s#0, TSeq(_module.LinkedList$T)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LinkedList.ReverseSeq (well-formedness)"} CheckWellformed$$_module.LinkedList.ReverseSeq(_module.LinkedList$T: Ty, s#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##s#0: Seq;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.LinkedList.ReverseSeq(_module.LinkedList$T, $LS($LZ), s#0), 
          TSeq(_module.LinkedList$T));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (Seq#Equal(s#0, Seq#Empty(): Seq))
        {
            assume {:id "id628"} _module.LinkedList.ReverseSeq(_module.LinkedList$T, $LS($LZ), s#0)
               == Lit(Seq#Empty(): Seq);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.LinkedList.ReverseSeq(_module.LinkedList$T, $LS($LZ), s#0), 
              TSeq(_module.LinkedList$T));
            return;
        }
        else
        {
            assert {:id "id629"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(s#0);
            ##s#0 := Seq#Drop(s#0, LitInt(1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, TSeq(_module.LinkedList$T), $Heap);
            assert {:id "id630"} Seq#Rank(##s#0) < Seq#Rank(s#0);
            assume _module.LinkedList.ReverseSeq#canCall(_module.LinkedList$T, Seq#Drop(s#0, LitInt(1)));
            assert {:id "id631"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(s#0);
            assume {:id "id632"} _module.LinkedList.ReverseSeq(_module.LinkedList$T, $LS($LZ), s#0)
               == Seq#Append(_module.LinkedList.ReverseSeq(_module.LinkedList$T, $LS($LZ), Seq#Drop(s#0, LitInt(1))), 
                Seq#Build(Seq#Empty(): Seq, Seq#Index(s#0, LitInt(0))));
            assume _module.LinkedList.ReverseSeq#canCall(_module.LinkedList$T, Seq#Drop(s#0, LitInt(1)));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.LinkedList.ReverseSeq(_module.LinkedList$T, $LS($LZ), s#0), 
              TSeq(_module.LinkedList$T));
            return;
        }

        assume false;
    }
}



// $Is axiom for non-null type _module.LinkedList
axiom (forall _module.LinkedList$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.LinkedList(_module.LinkedList$T)) } 
    { $Is(c#0, Tclass._module.LinkedList?(_module.LinkedList$T)) } 
  $Is(c#0, Tclass._module.LinkedList(_module.LinkedList$T))
     <==> $Is(c#0, Tclass._module.LinkedList?(_module.LinkedList$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.LinkedList
axiom (forall _module.LinkedList$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.LinkedList(_module.LinkedList$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.LinkedList?(_module.LinkedList$T), $h) } 
  $IsAlloc(c#0, Tclass._module.LinkedList(_module.LinkedList$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.LinkedList?(_module.LinkedList$T), $h));

const unique tytagFamily$nat: TyTagFamily;

const unique tytagFamily$object: TyTagFamily;

const unique tytagFamily$array: TyTagFamily;

const unique tytagFamily$_#Func1: TyTagFamily;

const unique tytagFamily$_#PartialFunc1: TyTagFamily;

const unique tytagFamily$_#TotalFunc1: TyTagFamily;

const unique tytagFamily$_#Func0: TyTagFamily;

const unique tytagFamily$_#PartialFunc0: TyTagFamily;

const unique tytagFamily$_#TotalFunc0: TyTagFamily;

const unique tytagFamily$_tuple#2: TyTagFamily;

const unique tytagFamily$_tuple#0: TyTagFamily;

const unique tytagFamily$AmortizedQueue: TyTagFamily;

const unique tytagFamily$LinkedList: TyTagFamily;

const unique field$front: NameFamily;

const unique field$rear: NameFamily;

const unique field$Repr: NameFamily;

const unique field$List: NameFamily;

const unique field$length: NameFamily;

const unique field$tail: NameFamily;

const unique field$head: NameFamily;
