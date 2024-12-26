// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy

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

// function declaration for _module._default.upCast
function _module.__default.upCast(o#0: ref) : ref
uses {
// consequence axiom for _module.__default.upCast
axiom 0 <= $FunctionContextHeight
   ==> (forall o#0: ref :: 
    { _module.__default.upCast(o#0) } 
    _module.__default.upCast#canCall(o#0)
         || (0 < $FunctionContextHeight && $Is(o#0, Tclass._System.object()))
       ==> $Is(_module.__default.upCast(o#0), Tclass._System.object()));
// alloc consequence axiom for _module.__default.upCast
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, o#0: ref :: 
    { $IsAlloc(_module.__default.upCast(o#0), Tclass._System.object(), $Heap) } 
    (_module.__default.upCast#canCall(o#0)
           || (0 < $FunctionContextHeight
             && 
            $Is(o#0, Tclass._System.object())
             && $IsAlloc(o#0, Tclass._System.object(), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.upCast(o#0), Tclass._System.object(), $Heap));
// definition axiom for _module.__default.upCast (revealed)
axiom {:id "id0"} 0 <= $FunctionContextHeight
   ==> (forall o#0: ref :: 
    { _module.__default.upCast(o#0) } 
    _module.__default.upCast#canCall(o#0)
         || (0 < $FunctionContextHeight && $Is(o#0, Tclass._System.object()))
       ==> _module.__default.upCast(o#0) == o#0);
// definition axiom for _module.__default.upCast for all literals (revealed)
axiom {:id "id1"} 0 <= $FunctionContextHeight
   ==> (forall o#0: ref :: 
    {:weight 3} { _module.__default.upCast(Lit(o#0)) } 
    _module.__default.upCast#canCall(Lit(o#0))
         || (0 < $FunctionContextHeight && $Is(o#0, Tclass._System.object()))
       ==> _module.__default.upCast(Lit(o#0)) == Lit(o#0));
}

function _module.__default.upCast#canCall(o#0: ref) : bool;

function _module.__default.upCast#requires(ref) : bool;

// #requires axiom for _module.__default.upCast
axiom (forall o#0: ref :: 
  { _module.__default.upCast#requires(o#0) } 
  $Is(o#0, Tclass._System.object())
     ==> _module.__default.upCast#requires(o#0) == true);

procedure {:verboseName "upCast (well-formedness)"} CheckWellformed$$_module.__default.upCast(o#0: ref where $Is(o#0, Tclass._System.object()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



const unique class._module.Universe?: ClassName;

function Tclass._module.Universe?() : Ty
uses {
// Tclass._module.Universe? Tag
axiom Tag(Tclass._module.Universe?()) == Tagclass._module.Universe?
   && TagFamily(Tclass._module.Universe?()) == tytagFamily$Universe;
}

const unique Tagclass._module.Universe?: TyTag;

// Box/unbox axiom for Tclass._module.Universe?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Universe?()) } 
  $IsBox(bx, Tclass._module.Universe?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Universe?()));

// $Is axiom for trait Universe
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Universe?()) } 
  $Is($o, Tclass._module.Universe?())
     <==> $o == null || implements$_module.Universe(dtype($o)));

// $IsAlloc axiom for trait Universe
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Universe?(), $h) } 
  $IsAlloc($o, Tclass._module.Universe?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.Universe(ty: Ty) : bool;

const _module.Universe.content: Field
uses {
axiom FDim(_module.Universe.content) == 0
   && FieldOfDecl(class._module.Universe?, field$content) == _module.Universe.content
   && $IsGhostField(_module.Universe.content);
}

function Tclass._module.Object() : Ty
uses {
// Tclass._module.Object Tag
axiom Tag(Tclass._module.Object()) == Tagclass._module.Object
   && TagFamily(Tclass._module.Object()) == tytagFamily$Object;
}

const unique Tagclass._module.Object: TyTag;

// Box/unbox axiom for Tclass._module.Object
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Object()) } 
  $IsBox(bx, Tclass._module.Object())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Object()));

// Universe.content: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Universe.content)): Set } 
  $IsGoodHeap($h) && $o != null && $Is($o, Tclass._module.Universe?())
     ==> $Is($Unbox(read($h, $o, _module.Universe.content)): Set, 
      TSet(Tclass._module.Object())));

// Universe.content: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Universe.content)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass._module.Universe?())
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Universe.content)): Set, 
      TSet(Tclass._module.Object()), 
      $h));

// function declaration for _module.Universe.i0
function _module.Universe.i0($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Universe.i0 (revealed)
axiom {:id "id3"} 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Universe.i0($Heap, this), $IsGoodHeap($Heap) } 
    _module.Universe.i0#canCall($Heap, this)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Universe())
           && $IsAlloc(this, Tclass._module.Universe(), $Heap))
       ==> (forall o#0: ref :: 
          { _module.__default.upCast(o#0) } 
            { _module.Object.universe(o#0) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0)) } 
          $Is(o#0, Tclass._module.Object())
             ==> 
            Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0))
             ==> 
            _module.Object.universe(o#0) == this
             ==> _module.__default.upCast#canCall(o#0))
         && _module.Universe.i0($Heap, this)
           == (forall o#0: ref :: 
            { _module.__default.upCast(o#0) } 
              { _module.Object.universe(o#0) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0)) } 
            $Is(o#0, Tclass._module.Object())
                 && Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0))
               ==> _module.Object.universe(o#0) == this && _module.__default.upCast(o#0) != this));
}

function _module.Universe.i0#canCall($heap: Heap, this: ref) : bool;

function Tclass._module.Universe() : Ty
uses {
// Tclass._module.Universe Tag
axiom Tag(Tclass._module.Universe()) == Tagclass._module.Universe
   && TagFamily(Tclass._module.Universe()) == tytagFamily$Universe;
}

const unique Tagclass._module.Universe: TyTag;

// Box/unbox axiom for Tclass._module.Universe
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Universe()) } 
  $IsBox(bx, Tclass._module.Universe())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Universe()));

// frame axiom for _module.Universe.i0
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Universe.i0($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Universe())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.Universe.content)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Universe.i0($h0, this) == _module.Universe.i0($h1, this));

function _module.Universe.i0#requires(Heap, ref) : bool;

// #requires axiom for _module.Universe.i0
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Universe.i0#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Universe())
       && $IsAlloc(this, Tclass._module.Universe(), $Heap)
     ==> _module.Universe.i0#requires($Heap, this) == true);

function _module.Object.universe(this: ref) : ref
uses {
// Object.universe: Type axiom
axiom 1 < $FunctionContextHeight
   ==> (forall $o: ref :: 
    { _module.Object.universe($o) } 
    $o != null && $Is($o, Tclass._module.Object?())
       ==> $Is(_module.Object.universe($o), Tclass._module.Universe()));
// Object.universe: Allocation axiom
axiom 1 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: ref :: 
    { _module.Object.universe($o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && $Is($o, Tclass._module.Object?())
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(_module.Object.universe($o), Tclass._module.Universe(), $h));
}

procedure {:verboseName "Universe.i0 (well-formedness)"} CheckWellformed$$_module.Universe.i0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Universe())
         && $IsAlloc(this, Tclass._module.Universe(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Universe.i0 (well-formedness)"} CheckWellformed$$_module.Universe.i0(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var o#1: ref;
  var ##o#0: ref;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.Universe.content];
    assert {:id "id4"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc o#1;
        if ($Is(o#1, Tclass._module.Object())
           && $IsAlloc(o#1, Tclass._module.Object(), $Heap))
        {
            b$reqreads#1 := $_ReadsFrame[this, _module.Universe.content];
            if (Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#1)))
            {
                assert {:id "id5"} o#1 != null;
                if (_module.Object.universe(o#1) == this)
                {
                    ##o#0 := o#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##o#0, Tclass._System.object(), $Heap);
                    assume _module.__default.upCast#canCall(o#1);
                }
            }
        }

        // End Comprehension WF check
        assume {:id "id6"} _module.Universe.i0($Heap, this)
           == (forall o#2: ref :: 
            { _module.__default.upCast(o#2) } 
              { _module.Object.universe(o#2) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2)) } 
            $Is(o#2, Tclass._module.Object())
                 && Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2))
               ==> _module.Object.universe(o#2) == this && _module.__default.upCast(o#2) != this);
        assume (forall o#2: ref :: 
          { _module.__default.upCast(o#2) } 
            { _module.Object.universe(o#2) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2)) } 
          $Is(o#2, Tclass._module.Object())
             ==> 
            Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2))
             ==> 
            _module.Object.universe(o#2) == this
             ==> _module.__default.upCast#canCall(o#2));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Universe.i0($Heap, this), TBool);
        assert {:id "id7"} b$reqreads#1;
        return;

        assume false;
    }
}



// function declaration for _module.Universe.i
function _module.Universe.i($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Universe.i (revealed)
axiom {:id "id8"} 7 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Universe.i($Heap, this), $IsGoodHeap($Heap) } 
    _module.Universe.i#canCall($Heap, this)
         || (7 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Universe())
           && $IsAlloc(this, Tclass._module.Universe(), $Heap))
       ==> _module.Universe.i0#canCall($Heap, this)
         && (_module.Universe.i0($Heap, this)
           ==> (forall o#0: ref :: 
            { _module.Object.i($Heap, o#0) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0)) } 
            $Is(o#0, Tclass._module.Object())
               ==> 
              Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0))
               ==> _module.Object.i#canCall($Heap, o#0)))
         && _module.Universe.i($Heap, this)
           == (_module.Universe.i0($Heap, this)
             && (forall o#0: ref :: 
              { _module.Object.i($Heap, o#0) } 
                { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0)) } 
              $Is(o#0, Tclass._module.Object())
                   && Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0))
                 ==> _module.Object.i($Heap, o#0))));
}

function _module.Universe.i#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Universe.i
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Universe.i($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Universe())
       && $IsAlloc(this, Tclass._module.Universe(), $h0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Universe.i($h0, this) == _module.Universe.i($h1, this));

function _module.Universe.i#requires(Heap, ref) : bool;

// #requires axiom for _module.Universe.i
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Universe.i#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Universe())
       && $IsAlloc(this, Tclass._module.Universe(), $Heap)
     ==> _module.Universe.i#requires($Heap, this) == true);

procedure {:verboseName "Universe.i (well-formedness)"} CheckWellformed$$_module.Universe.i(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Universe())
         && $IsAlloc(this, Tclass._module.Universe(), $Heap));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.Object?() : Ty
uses {
// Tclass._module.Object? Tag
axiom Tag(Tclass._module.Object?()) == Tagclass._module.Object?
   && TagFamily(Tclass._module.Object?()) == tytagFamily$Object;
}

const unique Tagclass._module.Object?: TyTag;

// Box/unbox axiom for Tclass._module.Object?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Object?()) } 
  $IsBox(bx, Tclass._module.Object?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Object?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Universe.i (well-formedness)"} CheckWellformed$$_module.Universe.i(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var o#1: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Universe?(), $Heap);
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && ($o == this
                 || Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box($o)))
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Universe.i0#canCall($Heap, this);
        if (_module.Universe.i0($Heap, this))
        {
            // Begin Comprehension WF check
            havoc o#1;
            if ($Is(o#1, Tclass._module.Object())
               && $IsAlloc(o#1, Tclass._module.Object(), $Heap))
            {
                b$reqreads#1 := $_ReadsFrame[this, _module.Universe.content];
                if (Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#1)))
                {
                    assert {:id "id9"} o#1 != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(o#1), Tclass._module.Object?(), $Heap);
                    b$reqreads#2 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && $Unbox(read($Heap, $o, alloc)): bool
                         ==> $_ReadsFrame[$o, $f]);
                    assume _module.Object.i#canCall($Heap, o#1);
                }
            }

            // End Comprehension WF check
        }

        assume {:id "id10"} _module.Universe.i($Heap, this)
           == (_module.Universe.i0($Heap, this)
             && (forall o#2: ref :: 
              { _module.Object.i($Heap, o#2) } 
                { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2)) } 
              $Is(o#2, Tclass._module.Object())
                   && Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2))
                 ==> _module.Object.i($Heap, o#2)));
        assume _module.Universe.i0#canCall($Heap, this)
           && (_module.Universe.i0($Heap, this)
             ==> (forall o#2: ref :: 
              { _module.Object.i($Heap, o#2) } 
                { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2)) } 
              $Is(o#2, Tclass._module.Object())
                 ==> 
                Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2))
                 ==> _module.Object.i#canCall($Heap, o#2)));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Universe.i($Heap, this), TBool);
        assert {:id "id11"} b$reqreads#0;
        assert {:id "id12"} b$reqreads#1;
        assert {:id "id13"} b$reqreads#2;
        return;

        assume false;
    }
}



// function declaration for _module.Universe.i2
function _module.Universe.i2($prevHeap: Heap, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Universe.i2 (revealed)
axiom {:id "id14"} 3 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
    { _module.Universe.i2($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Universe.i2#canCall($prevHeap, $Heap, this)
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Universe())
           && $IsAlloc(this, Tclass._module.Universe(), $prevHeap))
       ==> (forall o#0: ref :: 
          { _module.Object.i2($prevHeap, $Heap, o#0) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0)) } 
            { Set#IsMember($Unbox(read($prevHeap, this, _module.Universe.content)): Set, $Box(o#0)) } 
          $Is(o#0, Tclass._module.Object())
             ==> 
            Set#IsMember($Unbox(read($prevHeap, this, _module.Universe.content)): Set, $Box(o#0))
             ==> 
            Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0))
             ==> _module.Object.i2#canCall($prevHeap, $Heap, o#0))
         && _module.Universe.i2($prevHeap, $Heap, this)
           == (forall o#0: ref :: 
            { _module.Object.i2($prevHeap, $Heap, o#0) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0)) } 
              { Set#IsMember($Unbox(read($prevHeap, this, _module.Universe.content)): Set, $Box(o#0)) } 
            $Is(o#0, Tclass._module.Object())
                 && Set#IsMember($Unbox(read($prevHeap, this, _module.Universe.content)): Set, $Box(o#0))
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0))
                 && _module.Object.i2($prevHeap, $Heap, o#0)));
}

function _module.Universe.i2#canCall($prevHeap: Heap, $heap: Heap, this: ref) : bool;

// frame axiom for _module.Universe.i2
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Universe.i2($prevHeap, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Universe())
       && $IsAlloc(this, Tclass._module.Universe(), $h0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Universe.i2($prevHeap, $h0, this)
       == _module.Universe.i2($prevHeap, $h1, this));

function _module.Universe.i2#requires(Heap, Heap, ref) : bool;

// #requires axiom for _module.Universe.i2
axiom (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
  { _module.Universe.i2#requires($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Universe())
       && $IsAlloc(this, Tclass._module.Universe(), $prevHeap)
     ==> _module.Universe.i2#requires($prevHeap, $Heap, this) == true);

procedure {:verboseName "Universe.i2 (well-formedness)"} CheckWellformed$$_module.Universe.i2(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Universe())
         && $IsAlloc(this, Tclass._module.Universe(), previous$Heap));
  free requires 3 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Universe.i2 (well-formedness)"} CheckWellformed$$_module.Universe.i2(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var o#1: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc o#1;
        if ($Is(o#1, Tclass._module.Object())
           && $IsAlloc(o#1, Tclass._module.Object(), $Heap))
        {
            assert {:id "id15"} $IsAlloc(this, Tclass._module.Universe(), old($Heap));
            if (Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#1)))
            {
                b$reqreads#0 := $_ReadsFrame[this, _module.Universe.content];
                if (Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#1)))
                {
                    assert {:id "id16"} o#1 != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(o#1), Tclass._module.Object?(), $Heap);
                    assert {:id "id17"} $IsAlloc(o#1, Tclass._module.Object(), old($Heap));
                    b$reqreads#1 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && $Unbox(read($Heap, $o, alloc)): bool
                         ==> $_ReadsFrame[$o, $f]);
                    assume _module.Object.i2#canCall(old($Heap), $Heap, o#1);
                }
            }
        }

        // End Comprehension WF check
        assume {:id "id18"} _module.Universe.i2(old($Heap), $Heap, this)
           == (forall o#2: ref :: 
            { _module.Object.i2(old($Heap), $Heap, o#2) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2)) } 
              { Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#2)) } 
            $Is(o#2, Tclass._module.Object())
                 && Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#2))
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2))
                 && _module.Object.i2(old($Heap), $Heap, o#2));
        assume (forall o#2: ref :: 
          { _module.Object.i2(old($Heap), $Heap, o#2) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2)) } 
            { Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#2)) } 
          $Is(o#2, Tclass._module.Object())
             ==> 
            Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#2))
             ==> 
            Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2))
             ==> _module.Object.i2#canCall(old($Heap), $Heap, o#2));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Universe.i2(old($Heap), $Heap, this), TBool);
        assert {:id "id19"} b$reqreads#0;
        assert {:id "id20"} b$reqreads#1;
        return;

        assume false;
    }
}



// function declaration for _module.Universe.legal0
function _module.Universe.legal0($prevHeap: Heap, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Universe.legal0 (revealed)
axiom {:id "id21"} 7 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
    { _module.Universe.legal0($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Universe.legal0#canCall($prevHeap, $Heap, this)
         || (7 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Universe())
           && $IsAlloc(this, Tclass._module.Universe(), $prevHeap))
       ==> (forall o#0: ref :: 
          { _module.Object.i($Heap, o#0) } 
            { _module.Object.i2($prevHeap, $Heap, o#0) } 
            { Set#IsMember($Unbox(read($prevHeap, this, _module.Universe.content)): Set, $Box(o#0)) } 
          $Is(o#0, Tclass._module.Object())
             ==> 
            Set#IsMember($Unbox(read($prevHeap, this, _module.Universe.content)): Set, $Box(o#0))
             ==> (!(forall $o: ref, $f: Field :: 
                  { read($Heap, $o, $f) } 
                  $o != null ==> $o == o#0 ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
                 ==> _module.Object.i2#canCall($prevHeap, $Heap, o#0))
               && ((forall $o: ref, $f: Field :: 
                    { read($Heap, $o, $f) } 
                    $o != null ==> $o == o#0 ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
                   || _module.Object.i2($prevHeap, $Heap, o#0)
                 ==> 
                !(forall $o: ref, $f: Field :: 
                  { read($Heap, $o, $f) } 
                  $o != null ==> $o == o#0 ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
                 ==> _module.Object.i#canCall($Heap, o#0)))
         && _module.Universe.legal0($prevHeap, $Heap, this)
           == (forall o#0: ref :: 
            { _module.Object.i($Heap, o#0) } 
              { _module.Object.i2($prevHeap, $Heap, o#0) } 
              { Set#IsMember($Unbox(read($prevHeap, this, _module.Universe.content)): Set, $Box(o#0)) } 
            $Is(o#0, Tclass._module.Object())
                 && Set#IsMember($Unbox(read($prevHeap, this, _module.Universe.content)): Set, $Box(o#0))
               ==> ((forall $o: ref, $f: Field :: 
                    { read($Heap, $o, $f) } 
                    $o != null ==> $o == o#0 ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
                   || _module.Object.i2($prevHeap, $Heap, o#0))
                 && ((forall $o: ref, $f: Field :: 
                    { read($Heap, $o, $f) } 
                    $o != null ==> $o == o#0 ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
                   || _module.Object.i($Heap, o#0))));
}

function _module.Universe.legal0#canCall($prevHeap: Heap, $heap: Heap, this: ref) : bool;

// frame axiom for _module.Universe.legal0
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Universe.legal0($prevHeap, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Universe())
       && $IsAlloc(this, Tclass._module.Universe(), $h0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Universe.legal0($prevHeap, $h0, this)
       == _module.Universe.legal0($prevHeap, $h1, this));

function _module.Universe.legal0#requires(Heap, Heap, ref) : bool;

// #requires axiom for _module.Universe.legal0
axiom (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
  { _module.Universe.legal0#requires($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Universe())
       && $IsAlloc(this, Tclass._module.Universe(), $prevHeap)
     ==> _module.Universe.legal0#requires($prevHeap, $Heap, this) == true);

procedure {:verboseName "Universe.legal0 (well-formedness)"} CheckWellformed$$_module.Universe.legal0(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Universe())
         && $IsAlloc(this, Tclass._module.Universe(), previous$Heap));
  free requires 7 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Universe.legal0 (well-formedness)"} CheckWellformed$$_module.Universe.legal0(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var o#1: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc o#1;
        if ($Is(o#1, Tclass._module.Object())
           && $IsAlloc(o#1, Tclass._module.Object(), $Heap))
        {
            assert {:id "id22"} $IsAlloc(this, Tclass._module.Universe(), old($Heap));
            if (Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#1)))
            {
                assert {:id "id23"} $IsAlloc(o#1, Tclass._module.Object(), old($Heap));
                b$reqreads#0 := (forall $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == o#1
                     ==> $_ReadsFrame[$o, $f]);
                if (!(forall $o: ref, $f: Field :: 
                  { read($Heap, $o, $f) } 
                  $o != null ==> $o == o#1 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)))
                {
                    assert {:id "id24"} o#1 != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(o#1), Tclass._module.Object?(), $Heap);
                    assert {:id "id25"} $IsAlloc(o#1, Tclass._module.Object(), old($Heap));
                    b$reqreads#1 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && $Unbox(read($Heap, $o, alloc)): bool
                         ==> $_ReadsFrame[$o, $f]);
                    assume _module.Object.i2#canCall(old($Heap), $Heap, o#1);
                    if (_module.Object.i2(old($Heap), $Heap, o#1))
                    {
                        assert {:id "id26"} o#1 != null;
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(o#1), Tclass._module.Object?(), $Heap);
                        b$reqreads#2 := (forall $o: ref, $f: Field :: 
                          $o != null
                               && $Unbox(read($Heap, $o, alloc)): bool
                               && $Unbox(read($Heap, $o, alloc)): bool
                             ==> $_ReadsFrame[$o, $f]);
                        assume _module.Object.i#canCall($Heap, o#1);
                    }
                }
            }
        }

        // End Comprehension WF check
        assume {:id "id27"} _module.Universe.legal0(old($Heap), $Heap, this)
           == (forall o#2: ref :: 
            { _module.Object.i($Heap, o#2) } 
              { _module.Object.i2(old($Heap), $Heap, o#2) } 
              { Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#2)) } 
            $Is(o#2, Tclass._module.Object())
                 && Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#2))
               ==> ((forall $o: ref, $f: Field :: 
                    { read($Heap, $o, $f) } 
                    $o != null ==> $o == o#2 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
                   || _module.Object.i2(old($Heap), $Heap, o#2))
                 && ((forall $o: ref, $f: Field :: 
                    { read($Heap, $o, $f) } 
                    $o != null ==> $o == o#2 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
                   || _module.Object.i($Heap, o#2)));
        assume (forall o#2: ref :: 
          { _module.Object.i($Heap, o#2) } 
            { _module.Object.i2(old($Heap), $Heap, o#2) } 
            { Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#2)) } 
          $Is(o#2, Tclass._module.Object())
             ==> 
            Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#2))
             ==> (!(forall $o: ref, $f: Field :: 
                  { read($Heap, $o, $f) } 
                  $o != null ==> $o == o#2 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
                 ==> _module.Object.i2#canCall(old($Heap), $Heap, o#2))
               && ((forall $o: ref, $f: Field :: 
                    { read($Heap, $o, $f) } 
                    $o != null ==> $o == o#2 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
                   || _module.Object.i2(old($Heap), $Heap, o#2)
                 ==> 
                !(forall $o: ref, $f: Field :: 
                  { read($Heap, $o, $f) } 
                  $o != null ==> $o == o#2 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
                 ==> _module.Object.i#canCall($Heap, o#2)));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Universe.legal0(old($Heap), $Heap, this), TBool);
        assert {:id "id28"} b$reqreads#0;
        assert {:id "id29"} b$reqreads#1;
        assert {:id "id30"} b$reqreads#2;
        return;

        assume false;
    }
}



// function declaration for _module.Universe.legal1
function _module.Universe.legal1($prevHeap: Heap, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Universe.legal1 (revealed)
axiom {:id "id31"} 7 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
    { _module.Universe.legal1($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Universe.legal1#canCall($prevHeap, $Heap, this)
         || (7 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Universe())
           && $IsAlloc(this, Tclass._module.Universe(), $prevHeap))
       ==> (forall o#0: ref :: 
          { _module.Object.i($Heap, o#0) } 
            { Set#IsMember($Unbox(read($prevHeap, this, _module.Universe.content)): Set, $Box(o#0)) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0)) } 
          $Is(o#0, Tclass._module.Object())
             ==> 
            Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0))
               && !Set#IsMember($Unbox(read($prevHeap, this, _module.Universe.content)): Set, $Box(o#0))
             ==> _module.Object.i#canCall($Heap, o#0))
         && _module.Universe.legal1($prevHeap, $Heap, this)
           == (forall o#0: ref :: 
            { _module.Object.i($Heap, o#0) } 
              { Set#IsMember($Unbox(read($prevHeap, this, _module.Universe.content)): Set, $Box(o#0)) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0)) } 
            $Is(o#0, Tclass._module.Object())
                 && 
                Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#0))
                 && !Set#IsMember($Unbox(read($prevHeap, this, _module.Universe.content)): Set, $Box(o#0))
               ==> _module.Object.i($Heap, o#0)));
}

function _module.Universe.legal1#canCall($prevHeap: Heap, $heap: Heap, this: ref) : bool;

// frame axiom for _module.Universe.legal1
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Universe.legal1($prevHeap, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Universe())
       && $IsAlloc(this, Tclass._module.Universe(), $h0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Universe.legal1($prevHeap, $h0, this)
       == _module.Universe.legal1($prevHeap, $h1, this));

function _module.Universe.legal1#requires(Heap, Heap, ref) : bool;

// #requires axiom for _module.Universe.legal1
axiom (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
  { _module.Universe.legal1#requires($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Universe())
       && $IsAlloc(this, Tclass._module.Universe(), $prevHeap)
     ==> _module.Universe.legal1#requires($prevHeap, $Heap, this) == true);

procedure {:verboseName "Universe.legal1 (well-formedness)"} CheckWellformed$$_module.Universe.legal1(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Universe())
         && $IsAlloc(this, Tclass._module.Universe(), previous$Heap));
  free requires 7 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Universe.legal1 (well-formedness)"} CheckWellformed$$_module.Universe.legal1(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var o#1: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc o#1;
        if ($Is(o#1, Tclass._module.Object())
           && $IsAlloc(o#1, Tclass._module.Object(), $Heap))
        {
            b$reqreads#0 := $_ReadsFrame[this, _module.Universe.content];
            if (Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#1)))
            {
                assert {:id "id32"} $IsAlloc(this, Tclass._module.Universe(), old($Heap));
            }

            if (Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#1))
               && !Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#1)))
            {
                assert {:id "id33"} o#1 != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(o#1), Tclass._module.Object?(), $Heap);
                b$reqreads#1 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && $Unbox(read($Heap, $o, alloc)): bool
                     ==> $_ReadsFrame[$o, $f]);
                assume _module.Object.i#canCall($Heap, o#1);
            }
        }

        // End Comprehension WF check
        assume {:id "id34"} _module.Universe.legal1(old($Heap), $Heap, this)
           == (forall o#2: ref :: 
            { _module.Object.i($Heap, o#2) } 
              { Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#2)) } 
              { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2)) } 
            $Is(o#2, Tclass._module.Object())
                 && 
                Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2))
                 && !Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#2))
               ==> _module.Object.i($Heap, o#2));
        assume (forall o#2: ref :: 
          { _module.Object.i($Heap, o#2) } 
            { Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#2)) } 
            { Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2)) } 
          $Is(o#2, Tclass._module.Object())
             ==> 
            Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box(o#2))
               && !Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#2))
             ==> _module.Object.i#canCall($Heap, o#2));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Universe.legal1(old($Heap), $Heap, this), TBool);
        assert {:id "id35"} b$reqreads#0;
        assert {:id "id36"} b$reqreads#1;
        return;

        assume false;
    }
}



// function declaration for _module.Universe.legal
function _module.Universe.legal($prevHeap: Heap, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Universe.legal (revealed)
axiom {:id "id37"} 8 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
    { _module.Universe.legal($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Universe.legal#canCall($prevHeap, $Heap, this)
         || (8 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Universe())
           && $IsAlloc(this, Tclass._module.Universe(), $prevHeap))
       ==> _module.Universe.i#canCall($prevHeap, this)
         && (_module.Universe.i($prevHeap, this)
           ==> _module.Universe.i0#canCall($Heap, this)
             && (_module.Universe.i0($Heap, this)
               ==> 
              Set#Subset($Unbox(read($prevHeap, this, _module.Universe.content)): Set, 
                $Unbox(read($Heap, this, _module.Universe.content)): Set)
               ==> _module.Universe.legal0#canCall($prevHeap, $Heap, this)
                 && (_module.Universe.legal0($prevHeap, $Heap, this)
                   ==> _module.Universe.legal1#canCall($prevHeap, $Heap, this))))
         && _module.Universe.legal($prevHeap, $Heap, this)
           == (
            _module.Universe.i($prevHeap, this)
             && _module.Universe.i0($Heap, this)
             && Set#Subset($Unbox(read($prevHeap, this, _module.Universe.content)): Set, 
              $Unbox(read($Heap, this, _module.Universe.content)): Set)
             && _module.Universe.legal0($prevHeap, $Heap, this)
             && _module.Universe.legal1($prevHeap, $Heap, this)));
}

function _module.Universe.legal#canCall($prevHeap: Heap, $heap: Heap, this: ref) : bool;

// frame axiom for _module.Universe.legal
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Universe.legal($prevHeap, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Universe())
       && $IsAlloc(this, Tclass._module.Universe(), $h0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Universe.legal($prevHeap, $h0, this)
       == _module.Universe.legal($prevHeap, $h1, this));

function _module.Universe.legal#requires(Heap, Heap, ref) : bool;

// #requires axiom for _module.Universe.legal
axiom (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
  { _module.Universe.legal#requires($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Universe())
       && $IsAlloc(this, Tclass._module.Universe(), $prevHeap)
     ==> _module.Universe.legal#requires($prevHeap, $Heap, this) == true);

procedure {:verboseName "Universe.legal (well-formedness)"} CheckWellformed$$_module.Universe.legal(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Universe())
         && $IsAlloc(this, Tclass._module.Universe(), previous$Heap));
  free requires 8 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Universe.legal (well-formedness)"} CheckWellformed$$_module.Universe.legal(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id38"} $IsAlloc(this, Tclass._module.Universe(), old($Heap));
        assume _module.Universe.i#canCall(old($Heap), this);
        if (_module.Universe.i(old($Heap), this))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Universe?(), $Heap);
            b$reqreads#0 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && ($o == this
                     || Set#IsMember($Unbox(read($Heap, this, _module.Universe.content)): Set, $Box($o)))
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Universe.i0#canCall($Heap, this);
        }

        if (_module.Universe.i(old($Heap), this) && _module.Universe.i0($Heap, this))
        {
            assert {:id "id39"} $IsAlloc(this, Tclass._module.Universe(), old($Heap));
            b$reqreads#1 := $_ReadsFrame[this, _module.Universe.content];
        }

        if (_module.Universe.i(old($Heap), this)
           && _module.Universe.i0($Heap, this)
           && Set#Subset($Unbox(read(old($Heap), this, _module.Universe.content)): Set, 
            $Unbox(read($Heap, this, _module.Universe.content)): Set))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Universe?(), $Heap);
            assert {:id "id40"} $IsAlloc(this, Tclass._module.Universe(), old($Heap));
            b$reqreads#2 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && $Unbox(read($Heap, $o, alloc)): bool
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Universe.legal0#canCall(old($Heap), $Heap, this);
        }

        if (_module.Universe.i(old($Heap), this)
           && _module.Universe.i0($Heap, this)
           && Set#Subset($Unbox(read(old($Heap), this, _module.Universe.content)): Set, 
            $Unbox(read($Heap, this, _module.Universe.content)): Set)
           && _module.Universe.legal0(old($Heap), $Heap, this))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Universe?(), $Heap);
            assert {:id "id41"} $IsAlloc(this, Tclass._module.Universe(), old($Heap));
            b$reqreads#3 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && $Unbox(read($Heap, $o, alloc)): bool
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Universe.legal1#canCall(old($Heap), $Heap, this);
        }

        assume {:id "id42"} _module.Universe.legal(old($Heap), $Heap, this)
           == (
            _module.Universe.i(old($Heap), this)
             && _module.Universe.i0($Heap, this)
             && Set#Subset($Unbox(read(old($Heap), this, _module.Universe.content)): Set, 
              $Unbox(read($Heap, this, _module.Universe.content)): Set)
             && _module.Universe.legal0(old($Heap), $Heap, this)
             && _module.Universe.legal1(old($Heap), $Heap, this));
        assume _module.Universe.i#canCall(old($Heap), this)
           && (_module.Universe.i(old($Heap), this)
             ==> _module.Universe.i0#canCall($Heap, this)
               && (_module.Universe.i0($Heap, this)
                 ==> 
                Set#Subset($Unbox(read(old($Heap), this, _module.Universe.content)): Set, 
                  $Unbox(read($Heap, this, _module.Universe.content)): Set)
                 ==> _module.Universe.legal0#canCall(old($Heap), $Heap, this)
                   && (_module.Universe.legal0(old($Heap), $Heap, this)
                     ==> _module.Universe.legal1#canCall(old($Heap), $Heap, this))));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Universe.legal(old($Heap), $Heap, this), TBool);
        assert {:id "id43"} b$reqreads#0;
        assert {:id "id44"} b$reqreads#1;
        assert {:id "id45"} b$reqreads#2;
        assert {:id "id46"} b$reqreads#3;
        return;

        assume false;
    }
}



procedure {:verboseName "Universe.lci (well-formedness)"} CheckWellFormed$$_module.Universe.lci(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Universe())
         && $IsAlloc(this, Tclass._module.Universe(), previous$Heap));
  free requires 12 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Universe.lci (well-formedness)"} CheckWellFormed$$_module.Universe.lci(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: lci, CheckWellFormed$$_module.Universe.lci
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Universe?(), $Heap);
    assert {:id "id47"} $IsAlloc(this, Tclass._module.Universe(), old($Heap));
    assume _module.Universe.legal#canCall(old($Heap), $Heap, this);
    assume {:id "id48"} _module.Universe.legal(old($Heap), $Heap, this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Universe?(), $Heap);
    assume _module.Universe.i#canCall($Heap, this);
    assume {:id "id49"} _module.Universe.i($Heap, this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Universe?(), $Heap);
    assert {:id "id50"} $IsAlloc(this, Tclass._module.Universe(), old($Heap));
    assume _module.Universe.i2#canCall(old($Heap), $Heap, this);
    assume {:id "id51"} _module.Universe.i2(old($Heap), $Heap, this);
}



procedure {:verboseName "Universe.lci (call)"} Call$$_module.Universe.lci(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Universe())
         && $IsAlloc(this, Tclass._module.Universe(), previous$Heap));
  // user-defined preconditions
  requires {:id "id52"} _module.Universe.legal#canCall(previous$Heap, current$Heap, this)
     ==> _module.Universe.legal(previous$Heap, current$Heap, this)
       || (_module.Universe.i#canCall(previous$Heap, this)
         ==> _module.Universe.i(previous$Heap, this)
           || (_module.Universe.i0#canCall(previous$Heap, this)
             ==> _module.Universe.i0(previous$Heap, this)
               || (forall o#0: ref :: 
                { _module.__default.upCast(o#0) } 
                  { _module.Object.universe(o#0) } 
                  { Set#IsMember($Unbox(read(previous$Heap, this, _module.Universe.content)): Set, $Box(o#0)) } 
                $Is(o#0, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(previous$Heap, this, _module.Universe.content)): Set, $Box(o#0))
                   ==> _module.Object.universe(o#0) == this && _module.__default.upCast(o#0) != this)));
  requires {:id "id53"} _module.Universe.legal#canCall(previous$Heap, current$Heap, this)
     ==> _module.Universe.legal(previous$Heap, current$Heap, this)
       || (_module.Universe.i#canCall(previous$Heap, this)
         ==> _module.Universe.i(previous$Heap, this)
           || (forall o#1: ref :: 
            { _module.Object.i(previous$Heap, o#1) } 
              { Set#IsMember($Unbox(read(previous$Heap, this, _module.Universe.content)): Set, $Box(o#1)) } 
            $Is(o#1, Tclass._module.Object())
                 && Set#IsMember($Unbox(read(previous$Heap, this, _module.Universe.content)): Set, $Box(o#1))
               ==> _module.Object.i(previous$Heap, o#1)));
  requires {:id "id54"} _module.Universe.legal#canCall(previous$Heap, current$Heap, this)
     ==> _module.Universe.legal(previous$Heap, current$Heap, this)
       || (_module.Universe.i0#canCall(current$Heap, this)
         ==> _module.Universe.i0(current$Heap, this)
           || (forall o#2: ref :: 
            { _module.__default.upCast(o#2) } 
              { _module.Object.universe(o#2) } 
              { Set#IsMember($Unbox(read(current$Heap, this, _module.Universe.content)): Set, $Box(o#2)) } 
            $Is(o#2, Tclass._module.Object())
                 && Set#IsMember($Unbox(read(current$Heap, this, _module.Universe.content)): Set, $Box(o#2))
               ==> _module.Object.universe(o#2) == this && _module.__default.upCast(o#2) != this));
  requires {:id "id55"} _module.Universe.legal#canCall(previous$Heap, current$Heap, this)
     ==> _module.Universe.legal(previous$Heap, current$Heap, this)
       || Set#Subset($Unbox(read(previous$Heap, this, _module.Universe.content)): Set, 
        $Unbox(read(current$Heap, this, _module.Universe.content)): Set);
  requires {:id "id56"} _module.Universe.legal#canCall(previous$Heap, current$Heap, this)
     ==> _module.Universe.legal(previous$Heap, current$Heap, this)
       || (_module.Universe.legal0#canCall(previous$Heap, current$Heap, this)
         ==> _module.Universe.legal0(previous$Heap, current$Heap, this)
           || (forall o#3: ref :: 
            { _module.Object.i(current$Heap, o#3) } 
              { _module.Object.i2(previous$Heap, current$Heap, o#3) } 
              { Set#IsMember($Unbox(read(previous$Heap, this, _module.Universe.content)): Set, $Box(o#3)) } 
            $Is(o#3, Tclass._module.Object())
                 && Set#IsMember($Unbox(read(previous$Heap, this, _module.Universe.content)): Set, $Box(o#3))
               ==> ((forall $o: ref, $f: Field :: 
                    { read(current$Heap, $o, $f) } 
                    $o != null
                       ==> 
                      $o == o#3
                       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f))
                   || _module.Object.i2(previous$Heap, current$Heap, o#3))
                 && ((forall $o: ref, $f: Field :: 
                    { read(current$Heap, $o, $f) } 
                    $o != null
                       ==> 
                      $o == o#3
                       ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f))
                   || _module.Object.i(current$Heap, o#3))));
  requires {:id "id57"} _module.Universe.legal#canCall(previous$Heap, current$Heap, this)
     ==> _module.Universe.legal(previous$Heap, current$Heap, this)
       || (_module.Universe.legal1#canCall(previous$Heap, current$Heap, this)
         ==> _module.Universe.legal1(previous$Heap, current$Heap, this)
           || (forall o#4: ref :: 
            { _module.Object.i(current$Heap, o#4) } 
              { Set#IsMember($Unbox(read(previous$Heap, this, _module.Universe.content)): Set, $Box(o#4)) } 
              { Set#IsMember($Unbox(read(current$Heap, this, _module.Universe.content)): Set, $Box(o#4)) } 
            $Is(o#4, Tclass._module.Object())
                 && 
                Set#IsMember($Unbox(read(current$Heap, this, _module.Universe.content)): Set, $Box(o#4))
                 && !Set#IsMember($Unbox(read(previous$Heap, this, _module.Universe.content)): Set, $Box(o#4))
               ==> _module.Object.i(current$Heap, o#4)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Universe.i#canCall(current$Heap, this)
     && (_module.Universe.i(current$Heap, this)
       ==> _module.Universe.i2#canCall(previous$Heap, current$Heap, this));
  free ensures {:id "id58"} _module.Universe.i#canCall(current$Heap, this)
     && 
    _module.Universe.i(current$Heap, this)
     && 
    _module.Universe.i0(current$Heap, this)
     && (forall o#6: ref :: 
      { _module.Object.i(current$Heap, o#6) } 
        { Set#IsMember($Unbox(read(current$Heap, this, _module.Universe.content)): Set, $Box(o#6)) } 
      $Is(o#6, Tclass._module.Object())
           && Set#IsMember($Unbox(read(current$Heap, this, _module.Universe.content)): Set, $Box(o#6))
         ==> _module.Object.i(current$Heap, o#6));
  free ensures {:id "id59"} _module.Universe.i2#canCall(previous$Heap, current$Heap, this)
     && 
    _module.Universe.i2(previous$Heap, current$Heap, this)
     && (forall o#7: ref :: 
      { _module.Object.i2(previous$Heap, current$Heap, o#7) } 
        { Set#IsMember($Unbox(read(current$Heap, this, _module.Universe.content)): Set, $Box(o#7)) } 
        { Set#IsMember($Unbox(read(previous$Heap, this, _module.Universe.content)): Set, $Box(o#7)) } 
      $Is(o#7, Tclass._module.Object())
           && Set#IsMember($Unbox(read(previous$Heap, this, _module.Universe.content)): Set, $Box(o#7))
         ==> Set#IsMember($Unbox(read(current$Heap, this, _module.Universe.content)): Set, $Box(o#7))
           && _module.Object.i2(previous$Heap, current$Heap, o#7));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Universe.lci (correctness)"} Impl$$_module.Universe.lci(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Universe())
         && $IsAlloc(this, Tclass._module.Universe(), previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 12 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  // user-defined preconditions
  free requires {:id "id60"} _module.Universe.legal#canCall(previous$Heap, current$Heap, this)
     && 
    _module.Universe.legal(previous$Heap, current$Heap, this)
     && 
    _module.Universe.i(previous$Heap, this)
     && _module.Universe.i0(current$Heap, this)
     && Set#Subset($Unbox(read(previous$Heap, this, _module.Universe.content)): Set, 
      $Unbox(read(current$Heap, this, _module.Universe.content)): Set)
     && _module.Universe.legal0(previous$Heap, current$Heap, this)
     && _module.Universe.legal1(previous$Heap, current$Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Universe.i#canCall(current$Heap, this)
     && (_module.Universe.i(current$Heap, this)
       ==> _module.Universe.i2#canCall(previous$Heap, current$Heap, this));
  ensures {:id "id61"} _module.Universe.i#canCall(current$Heap, this)
     ==> _module.Universe.i(current$Heap, this)
       || (_module.Universe.i0#canCall(current$Heap, this)
         ==> _module.Universe.i0(current$Heap, this)
           || (forall o#13: ref :: 
            { _module.__default.upCast(o#13) } 
              { _module.Object.universe(o#13) } 
              { Set#IsMember($Unbox(read(current$Heap, this, _module.Universe.content)): Set, $Box(o#13)) } 
            $Is(o#13, Tclass._module.Object())
                 && Set#IsMember($Unbox(read(current$Heap, this, _module.Universe.content)): Set, $Box(o#13))
               ==> _module.Object.universe(o#13) == this && _module.__default.upCast(o#13) != this));
  ensures {:id "id62"} _module.Universe.i#canCall(current$Heap, this)
     ==> _module.Universe.i(current$Heap, this)
       || (forall o#14: ref :: 
        { _module.Object.i(current$Heap, o#14) } 
          { Set#IsMember($Unbox(read(current$Heap, this, _module.Universe.content)): Set, $Box(o#14)) } 
        $Is(o#14, Tclass._module.Object())
             && Set#IsMember($Unbox(read(current$Heap, this, _module.Universe.content)): Set, $Box(o#14))
           ==> _module.Object.i(current$Heap, o#14));
  ensures {:id "id63"} _module.Universe.i2#canCall(previous$Heap, current$Heap, this)
     ==> _module.Universe.i2(previous$Heap, current$Heap, this)
       || (forall o#15: ref :: 
        { _module.Object.i2(previous$Heap, current$Heap, o#15) } 
          { Set#IsMember($Unbox(read(current$Heap, this, _module.Universe.content)): Set, $Box(o#15)) } 
          { Set#IsMember($Unbox(read(previous$Heap, this, _module.Universe.content)): Set, $Box(o#15)) } 
        $Is(o#15, Tclass._module.Object())
             && Set#IsMember($Unbox(read(previous$Heap, this, _module.Universe.content)): Set, $Box(o#15))
           ==> Set#IsMember($Unbox(read(current$Heap, this, _module.Universe.content)): Set, $Box(o#15))
             && _module.Object.i2(previous$Heap, current$Heap, o#15));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Universe.lci (correctness)"} Impl$$_module.Universe.lci(previous$Heap: Heap, current$Heap: Heap, this: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var o#0_0: ref;

    // AddMethodImpl: lci, Impl$$_module.Universe.lci
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(61,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc o#0_0;
        assume $Is(o#0_0, Tclass._module.Object());
        assert {:id "id64"} $IsAlloc(this, Tclass._module.Universe(), old($Heap));
        if (Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#0_0)))
        {
            assert {:id "id65"} {:subsumption 0} o#0_0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(o#0_0), Tclass._module.Object?(), $Heap);
            assert {:id "id66"} $IsAlloc(o#0_0, Tclass._module.Object(), old($Heap));
            assume _module.Object.admPre#canCall(old($Heap), $Heap, o#0_0);
        }

        assume Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#0_0))
           ==> _module.Object.admPre#canCall(old($Heap), $Heap, o#0_0);
        assume {:id "id67"} Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#0_0))
           && _module.Object.admPre(old($Heap), $Heap, o#0_0);
        if (*)
        {
            assert {:id "id68"} {:subsumption 0} o#0_0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(o#0_0), Tclass._module.Object?(), $Heap);
            assert {:id "id69"} $IsAlloc(o#0_0, Tclass._module.Object(), old($Heap));
            assume _module.Object.i2#canCall(old($Heap), $Heap, o#0_0);
            if (_module.Object.i2(old($Heap), $Heap, o#0_0))
            {
                assert {:id "id70"} {:subsumption 0} o#0_0 != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(o#0_0), Tclass._module.Object?(), $Heap);
                assume _module.Object.i#canCall($Heap, o#0_0);
            }

            assume _module.Object.i2#canCall(old($Heap), $Heap, o#0_0)
               && (_module.Object.i2(old($Heap), $Heap, o#0_0)
                 ==> _module.Object.i#canCall($Heap, o#0_0));
            assume {:id "id71"} _module.Object.i2(old($Heap), $Heap, o#0_0) && _module.Object.i($Heap, o#0_0);
            assume false;
        }

        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(61,87)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id72"} o#0_0 != null;
        assert {:id "id73"} $IsAlloc(o#0_0, Tclass._module.Object(), old($Heap));
        call {:id "id74"} Call$$_module.Object.adm(old($Heap), $Heap, o#0_0);
        // TrCallStmt: After ProcessCallStmt
        assert {:id "id75"} _module.Object.i2(old($Heap), $Heap, o#0_0);
        assert {:id "id76"} _module.Object.i($Heap, o#0_0);
        assume false;
    }
    else
    {
        assume (forall o#0_1: ref :: 
          { _module.Object.i($Heap, o#0_1) } 
            { _module.Object.i2(old($Heap), $Heap, o#0_1) } 
            { _module.Object.admPre(old($Heap), $Heap, o#0_1) } 
            { Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#0_1)) } 
          $Is(o#0_1, Tclass._module.Object())
               && 
              Set#IsMember($Unbox(read(old($Heap), this, _module.Universe.content)): Set, $Box(o#0_1))
               && _module.Object.admPre(old($Heap), $Heap, o#0_1)
             ==> _module.Object.i2(old($Heap), $Heap, o#0_1) && _module.Object.i($Heap, o#0_1));
    }
}



// $Is axiom for non-null type _module.Universe
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Universe()) } 
    { $Is(c#0, Tclass._module.Universe?()) } 
  $Is(c#0, Tclass._module.Universe())
     <==> $Is(c#0, Tclass._module.Universe?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Universe
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Universe(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Universe?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Universe(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Universe?(), $h));

const unique class._module.Object?: ClassName;

// $Is axiom for trait Object
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Object?()) } 
  $Is($o, Tclass._module.Object?())
     <==> $o == null || implements$_module.Object(dtype($o)));

// $IsAlloc axiom for trait Object
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Object?(), $h) } 
  $IsAlloc($o, Tclass._module.Object?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.Object(ty: Ty) : bool;

// function declaration for _module.Object.i0
function _module.Object.i0($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Object.i0 (revealed)
axiom {:id "id77"} 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Object.i0($Heap, this), $IsGoodHeap($Heap) } 
    _module.Object.i0#canCall($Heap, this)
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Object())
           && $IsAlloc(this, Tclass._module.Object(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this))
           ==> _module.Universe.i0#canCall($Heap, _module.Object.universe(this)))
         && _module.Object.i0($Heap, this)
           == (Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
              $Box(this))
             && _module.Universe.i0($Heap, _module.Object.universe(this))));
}

function _module.Object.i0#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Object.i0
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Object.i0($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $h0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Object.i0($h0, this) == _module.Object.i0($h1, this));

function _module.Object.i0#requires(Heap, ref) : bool;

// #requires axiom for _module.Object.i0
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Object.i0#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $Heap)
     ==> _module.Object.i0#requires($Heap, this) == true);

procedure {:verboseName "Object.i0 (well-formedness)"} CheckWellformed$$_module.Object.i0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Object.i0 (well-formedness)"} CheckWellformed$$_module.Object.i0(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id78"} _module.Object.universe(this) != null;
        b$reqreads#0 := $_ReadsFrame[_module.Object.universe(this), _module.Universe.content];
        if (Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
          $Box(this)))
        {
            assert {:id "id79"} _module.Object.universe(this) != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(_module.Object.universe(this)), Tclass._module.Universe?(), $Heap);
            b$reqreads#1 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && ($o == _module.Object.universe(this)
                     || Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box($o)))
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Universe.i0#canCall($Heap, _module.Object.universe(this));
        }

        assume {:id "id80"} _module.Object.i0($Heap, this)
           == (Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
              $Box(this))
             && _module.Universe.i0($Heap, _module.Object.universe(this)));
        assume Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this))
           ==> _module.Universe.i0#canCall($Heap, _module.Object.universe(this));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Object.i0($Heap, this), TBool);
        assert {:id "id81"} b$reqreads#0;
        assert {:id "id82"} b$reqreads#1;
        return;

        assume false;
    }
}



procedure {:verboseName "Object.join (well-formedness)"} CheckWellFormed$$_module.Object.join(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Object.join (well-formedness)"} CheckWellFormed$$_module.Object.join(this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##o#0: ref;


    // AddMethodImpl: join, CheckWellFormed$$_module.Object.join
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == _module.Object.universe(this));
    assert {:id "id83"} _module.Object.universe(this) != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(_module.Object.universe(this)), Tclass._module.Universe?(), $Heap);
    assume _module.Universe.i0#canCall($Heap, _module.Object.universe(this));
    assume {:id "id84"} _module.Universe.i0($Heap, _module.Object.universe(this));
    ##o#0 := this;
    // assume allocatedness for argument to function
    assume $IsAlloc(##o#0, Tclass._System.object(), $Heap);
    assume _module.__default.upCast#canCall(this);
    assume {:id "id85"} _module.__default.upCast(this) != _module.Object.universe(this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == _module.Object.universe(this));
    assume $HeapSuccGhost(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
    assume _module.Object.i0#canCall($Heap, this);
    assume {:id "id86"} _module.Object.i0($Heap, this);
    assert {:id "id87"} _module.Object.universe(this) != null;
    assert {:id "id88"} $IsAlloc(this, Tclass._module.Object(), old($Heap));
    assert {:id "id89"} _module.Object.universe(this) != null;
    assert {:id "id90"} $IsAlloc(_module.Object.universe(this), Tclass._module.Universe(), old($Heap));
    assume {:id "id91"} Set#Equal($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
      Set#Union($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
        Set#UnionOne(Set#Empty(): Set, $Box(this))));
}



procedure {:verboseName "Object.join (call)"} Call$$_module.Object.join(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), $Heap));
  // user-defined preconditions
  requires {:id "id92"} _module.Universe.i0#canCall($Heap, _module.Object.universe(this))
     ==> _module.Universe.i0($Heap, _module.Object.universe(this))
       || (forall o#0: ref :: 
        { _module.__default.upCast(o#0) } 
          { _module.Object.universe(o#0) } 
          { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(o#0)) } 
        $Is(o#0, Tclass._module.Object())
             && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
              $Box(o#0))
           ==> _module.Object.universe(o#0) == _module.Object.universe(this)
             && _module.__default.upCast(o#0) != _module.Object.universe(this));
  requires {:id "id93"} _module.__default.upCast(this) != _module.Object.universe(this);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Object.i0#canCall($Heap, this);
  free ensures {:id "id94"} _module.Object.i0#canCall($Heap, this)
     && 
    _module.Object.i0($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
      $Box(this))
     && _module.Universe.i0($Heap, _module.Object.universe(this));
  ensures {:id "id95"} Set#Equal($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
    Set#Union($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(this))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == _module.Object.universe(this));
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "Object.join (correctness)"} Impl$$_module.Object.join(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id96"} _module.Universe.i0#canCall($Heap, _module.Object.universe(this))
     && 
    _module.Universe.i0($Heap, _module.Object.universe(this))
     && (forall o#2: ref :: 
      { _module.__default.upCast(o#2) } 
        { _module.Object.universe(o#2) } 
        { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
          $Box(o#2)) } 
      $Is(o#2, Tclass._module.Object())
           && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(o#2))
         ==> _module.Object.universe(o#2) == _module.Object.universe(this)
           && _module.__default.upCast(o#2) != _module.Object.universe(this));
  requires {:id "id97"} _module.__default.upCast(this) != _module.Object.universe(this);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Object.i0#canCall($Heap, this);
  ensures {:id "id98"} _module.Object.i0#canCall($Heap, this)
     ==> _module.Object.i0($Heap, this)
       || Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
        $Box(this));
  ensures {:id "id99"} _module.Object.i0#canCall($Heap, this)
     ==> _module.Object.i0($Heap, this)
       || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
         ==> _module.Universe.i0($Heap, _module.Object.universe(this))
           || (forall o#3: ref :: 
            { _module.__default.upCast(o#3) } 
              { _module.Object.universe(o#3) } 
              { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#3)) } 
            $Is(o#3, Tclass._module.Object())
                 && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#3))
               ==> _module.Object.universe(o#3) == _module.Object.universe(this)
                 && _module.__default.upCast(o#3) != _module.Object.universe(this)));
  ensures {:id "id100"} Set#Equal($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
    Set#Union($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(this))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == _module.Object.universe(this));
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Object.join (correctness)"} Impl$$_module.Object.join(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Set;

    // AddMethodImpl: join, Impl$$_module.Object.join
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == _module.Object.universe(this));
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(81,22)
    assert {:id "id101"} _module.Object.universe(this) != null;
    assume true;
    assert {:id "id102"} $_ModifiesFrame[_module.Object.universe(this), _module.Universe.content];
    assert {:id "id103"} _module.Object.universe(this) != null;
    assume true;
    $rhs#0 := Set#Union($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(this)));
    $Heap := update($Heap, _module.Object.universe(this), _module.Universe.content, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



// function declaration for _module.Object.admPre
function _module.Object.admPre($prevHeap: Heap, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Object.admPre (revealed)
axiom {:id "id106"} 9 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
    { _module.Object.admPre($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Object.admPre#canCall($prevHeap, $Heap, this)
         || (9 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Object())
           && $IsAlloc(this, Tclass._module.Object(), $prevHeap))
       ==> _module.Object.i0#canCall($Heap, this)
         && (_module.Object.i0($Heap, this)
           ==> _module.Object.i0#canCall($prevHeap, this)
             && (_module.Object.i0($prevHeap, this)
               ==> _module.Universe.i#canCall($prevHeap, _module.Object.universe(this)))
             && (_module.Object.i0($prevHeap, this)
                 && _module.Universe.i($prevHeap, _module.Object.universe(this))
               ==> 
              (forall $o: ref, $f: Field :: 
                { read($Heap, $o, $f) } 
                $o != null ==> $o == this ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
               ==> _module.Universe.legal#canCall($prevHeap, $Heap, _module.Object.universe(this))))
         && _module.Object.admPre($prevHeap, $Heap, this)
           == (
            _module.Object.i0($Heap, this)
             && 
            _module.Object.i0($prevHeap, this)
             && _module.Universe.i($prevHeap, _module.Object.universe(this))
             && (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null ==> $o == this ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
             && _module.Universe.legal($prevHeap, $Heap, _module.Object.universe(this))));
}

function _module.Object.admPre#canCall($prevHeap: Heap, $heap: Heap, this: ref) : bool;

// frame axiom for _module.Object.admPre
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Object.admPre($prevHeap, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $h0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Object.admPre($prevHeap, $h0, this)
       == _module.Object.admPre($prevHeap, $h1, this));

function _module.Object.admPre#requires(Heap, Heap, ref) : bool;

// #requires axiom for _module.Object.admPre
axiom (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
  { _module.Object.admPre#requires($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $prevHeap)
     ==> _module.Object.admPre#requires($prevHeap, $Heap, this) == true);

procedure {:verboseName "Object.admPre (well-formedness)"} CheckWellformed$$_module.Object.admPre(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), previous$Heap));
  free requires 9 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Object.admPre (well-formedness)"} CheckWellformed$$_module.Object.admPre(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && $Unbox(read($Heap, $o, alloc)): bool
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Object.i0#canCall($Heap, this);
        if (_module.Object.i0($Heap, this))
        {
            assert {:id "id107"} $IsAlloc(this, Tclass._module.Object(), old($Heap));
            assume _module.Object.i0#canCall(old($Heap), this);
            if (_module.Object.i0(old($Heap), this))
            {
                assert {:id "id108"} $IsAlloc(this, Tclass._module.Object(), old($Heap));
                assert {:id "id109"} _module.Object.universe(this) != null;
                assert {:id "id110"} $IsAlloc(_module.Object.universe(this), Tclass._module.Universe(), old($Heap));
                assume _module.Universe.i#canCall(old($Heap), _module.Object.universe(this));
            }
        }

        if (_module.Object.i0($Heap, this)
           && 
          _module.Object.i0(old($Heap), this)
           && _module.Universe.i(old($Heap), _module.Object.universe(this)))
        {
            assert {:id "id111"} $IsAlloc(this, Tclass._module.Object(), old($Heap));
            b$reqreads#1 := (forall $o: ref, $f: Field :: 
              $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this
                 ==> $_ReadsFrame[$o, $f]);
        }

        if (_module.Object.i0($Heap, this)
           && 
          _module.Object.i0(old($Heap), this)
           && _module.Universe.i(old($Heap), _module.Object.universe(this))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == this ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)))
        {
            assert {:id "id112"} _module.Object.universe(this) != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(_module.Object.universe(this)), Tclass._module.Universe?(), $Heap);
            assert {:id "id113"} $IsAlloc(_module.Object.universe(this), Tclass._module.Universe(), old($Heap));
            b$reqreads#2 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && $Unbox(read($Heap, $o, alloc)): bool
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Universe.legal#canCall(old($Heap), $Heap, _module.Object.universe(this));
        }

        assume {:id "id114"} _module.Object.admPre(old($Heap), $Heap, this)
           == (
            _module.Object.i0($Heap, this)
             && 
            _module.Object.i0(old($Heap), this)
             && _module.Universe.i(old($Heap), _module.Object.universe(this))
             && (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null ==> $o == this ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
             && _module.Universe.legal(old($Heap), $Heap, _module.Object.universe(this)));
        assume _module.Object.i0#canCall($Heap, this)
           && (_module.Object.i0($Heap, this)
             ==> _module.Object.i0#canCall(old($Heap), this)
               && (_module.Object.i0(old($Heap), this)
                 ==> _module.Universe.i#canCall(old($Heap), _module.Object.universe(this)))
               && (_module.Object.i0(old($Heap), this)
                   && _module.Universe.i(old($Heap), _module.Object.universe(this))
                 ==> 
                (forall $o: ref, $f: Field :: 
                  { read($Heap, $o, $f) } 
                  $o != null ==> $o == this ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
                 ==> _module.Universe.legal#canCall(old($Heap), $Heap, _module.Object.universe(this))));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Object.admPre(old($Heap), $Heap, this), TBool);
        assert {:id "id115"} b$reqreads#0;
        assert {:id "id116"} b$reqreads#1;
        assert {:id "id117"} b$reqreads#2;
        return;

        assume false;
    }
}



// function declaration for _module.Object.gi
function _module.Object.gi($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Object.gi (revealed)
axiom {:id "id118"} 8 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Object.gi($Heap, this), $IsGoodHeap($Heap) } 
    _module.Object.gi#canCall($Heap, this)
         || (8 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Object())
           && $IsAlloc(this, Tclass._module.Object(), $Heap))
       ==> _module.Object.i0#canCall($Heap, this)
         && (_module.Object.i0($Heap, this)
           ==> _module.Universe.i#canCall($Heap, _module.Object.universe(this)))
         && _module.Object.gi($Heap, this)
           == (_module.Object.i0($Heap, this)
             && _module.Universe.i($Heap, _module.Object.universe(this))));
}

function _module.Object.gi#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Object.gi
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Object.gi($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $h0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Object.gi($h0, this) == _module.Object.gi($h1, this));

function _module.Object.gi#requires(Heap, ref) : bool;

// #requires axiom for _module.Object.gi
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Object.gi#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $Heap)
     ==> _module.Object.gi#requires($Heap, this) == true);

procedure {:verboseName "Object.gi (well-formedness)"} CheckWellformed$$_module.Object.gi(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), $Heap));
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Object.gi (well-formedness)"} CheckWellformed$$_module.Object.gi(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && $Unbox(read($Heap, $o, alloc)): bool
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Object.i0#canCall($Heap, this);
        if (_module.Object.i0($Heap, this))
        {
            assert {:id "id119"} _module.Object.universe(this) != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(_module.Object.universe(this)), Tclass._module.Universe?(), $Heap);
            b$reqreads#1 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && $Unbox(read($Heap, $o, alloc)): bool
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Universe.i#canCall($Heap, _module.Object.universe(this));
        }

        assume {:id "id120"} _module.Object.gi($Heap, this)
           == (_module.Object.i0($Heap, this)
             && _module.Universe.i($Heap, _module.Object.universe(this)));
        assume _module.Object.i0#canCall($Heap, this)
           && (_module.Object.i0($Heap, this)
             ==> _module.Universe.i#canCall($Heap, _module.Object.universe(this)));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Object.gi($Heap, this), TBool);
        assert {:id "id121"} b$reqreads#0;
        assert {:id "id122"} b$reqreads#1;
        return;

        assume false;
    }
}



// function declaration for _module.Object.gi2
function _module.Object.gi2($prevHeap: Heap, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Object.gi2 (revealed)
axiom {:id "id123"} 9 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
    { _module.Object.gi2($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Object.gi2#canCall($prevHeap, $Heap, this)
         || (9 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Object())
           && $IsAlloc(this, Tclass._module.Object(), $prevHeap)
           && _module.Object.gi($prevHeap, this))
       ==> _module.Object.i0#canCall($Heap, this)
         && (_module.Object.i0($Heap, this)
           ==> _module.Universe.i2#canCall($prevHeap, $Heap, _module.Object.universe(this)))
         && _module.Object.gi2($prevHeap, $Heap, this)
           == (_module.Object.i0($Heap, this)
             && _module.Universe.i2($prevHeap, $Heap, _module.Object.universe(this))));
}

function _module.Object.gi2#canCall($prevHeap: Heap, $heap: Heap, this: ref) : bool;

// frame axiom for _module.Object.gi2
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Object.gi2($prevHeap, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $h0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Object.gi2($prevHeap, $h0, this)
       == _module.Object.gi2($prevHeap, $h1, this));

function _module.Object.gi2#requires(Heap, Heap, ref) : bool;

// #requires axiom for _module.Object.gi2
axiom (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
  { _module.Object.gi2#requires($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $prevHeap)
     ==> _module.Object.gi2#requires($prevHeap, $Heap, this)
       == _module.Object.gi($prevHeap, this));

procedure {:verboseName "Object.gi2 (well-formedness)"} CheckWellformed$$_module.Object.gi2(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), previous$Heap));
  free requires 9 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Object.gi2 (well-formedness)"} CheckWellformed$$_module.Object.gi2(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    // Check well-formedness of preconditions, and then assume them
    assert {:id "id124"} $IsAlloc(this, Tclass._module.Object(), old($Heap));
    assume _module.Object.gi#canCall(old($Heap), this);
    assume {:id "id125"} _module.Object.gi(old($Heap), this);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && $Unbox(read($Heap, $o, alloc)): bool
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Object.i0#canCall($Heap, this);
        if (_module.Object.i0($Heap, this))
        {
            assert {:id "id126"} _module.Object.universe(this) != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(_module.Object.universe(this)), Tclass._module.Universe?(), $Heap);
            assert {:id "id127"} $IsAlloc(_module.Object.universe(this), Tclass._module.Universe(), old($Heap));
            b$reqreads#1 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && $Unbox(read($Heap, $o, alloc)): bool
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Universe.i2#canCall(old($Heap), $Heap, _module.Object.universe(this));
        }

        assume {:id "id128"} _module.Object.gi2(old($Heap), $Heap, this)
           == (_module.Object.i0($Heap, this)
             && _module.Universe.i2(old($Heap), $Heap, _module.Object.universe(this)));
        assume _module.Object.i0#canCall($Heap, this)
           && (_module.Object.i0($Heap, this)
             ==> _module.Universe.i2#canCall(old($Heap), $Heap, _module.Object.universe(this)));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Object.gi2(old($Heap), $Heap, this), TBool);
        assert {:id "id129"} b$reqreads#0;
        assert {:id "id130"} b$reqreads#1;
        return;

        assume false;
    }
}



// function declaration for _module.Object.i
function _module.Object.i($heap: Heap, this: ref) : bool;

function _module.Object.i#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Object.i
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Object.i($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $h0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Object.i($h0, this) == _module.Object.i($h1, this));

function _module.Object.i#requires(Heap, ref) : bool;

// #requires axiom for _module.Object.i
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Object.i#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $Heap)
     ==> _module.Object.i#requires($Heap, this) == true);

procedure {:verboseName "Object.i (well-formedness)"} CheckWellformed$$_module.Object.i(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), $Heap));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Object.i2
function _module.Object.i2($prevHeap: Heap, $heap: Heap, this: ref) : bool;

function _module.Object.i2#canCall($prevHeap: Heap, $heap: Heap, this: ref) : bool;

// frame axiom for _module.Object.i2
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Object.i2($prevHeap, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $h0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Object.i2($prevHeap, $h0, this)
       == _module.Object.i2($prevHeap, $h1, this));

function _module.Object.i2#requires(Heap, Heap, ref) : bool;

// #requires axiom for _module.Object.i2
axiom (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
  { _module.Object.i2#requires($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $prevHeap)
     ==> _module.Object.i2#requires($prevHeap, $Heap, this) == true);

procedure {:verboseName "Object.i2 (well-formedness)"} CheckWellformed$$_module.Object.i2(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), previous$Heap));
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



procedure {:verboseName "Object.adm (well-formedness)"} CheckWellFormed$$_module.Object.adm(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), previous$Heap));
  free requires 11 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Object.adm (well-formedness)"} CheckWellFormed$$_module.Object.adm(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: adm, CheckWellFormed$$_module.Object.adm
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
    assert {:id "id131"} $IsAlloc(this, Tclass._module.Object(), old($Heap));
    assume _module.Object.admPre#canCall(old($Heap), $Heap, this);
    assume {:id "id132"} _module.Object.admPre(old($Heap), $Heap, this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
    assert {:id "id133"} $IsAlloc(this, Tclass._module.Object(), old($Heap));
    assume _module.Object.i2#canCall(old($Heap), $Heap, this);
    assume {:id "id134"} _module.Object.i2(old($Heap), $Heap, this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
    assume _module.Object.i#canCall($Heap, this);
    assume {:id "id135"} _module.Object.i($Heap, this);
}



procedure {:verboseName "Object.adm (call)"} Call$$_module.Object.adm(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), previous$Heap));
  // user-defined preconditions
  requires {:id "id136"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Object.i0#canCall(current$Heap, this)
         ==> _module.Object.i0(current$Heap, this)
           || Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  requires {:id "id137"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Object.i0#canCall(current$Heap, this)
         ==> _module.Object.i0(current$Heap, this)
           || (_module.Universe.i0#canCall(current$Heap, _module.Object.universe(this))
             ==> _module.Universe.i0(current$Heap, _module.Object.universe(this))
               || (forall o#0: ref :: 
                { _module.__default.upCast(o#0) } 
                  { _module.Object.universe(o#0) } 
                  { Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#0)) } 
                $Is(o#0, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#0))
                   ==> _module.Object.universe(o#0) == _module.Object.universe(this)
                     && _module.__default.upCast(o#0) != _module.Object.universe(this))));
  requires {:id "id138"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Object.i0#canCall(previous$Heap, this)
         ==> _module.Object.i0(previous$Heap, this)
           || Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  requires {:id "id139"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Object.i0#canCall(previous$Heap, this)
         ==> _module.Object.i0(previous$Heap, this)
           || (_module.Universe.i0#canCall(previous$Heap, _module.Object.universe(this))
             ==> _module.Universe.i0(previous$Heap, _module.Object.universe(this))
               || (forall o#1: ref :: 
                { _module.__default.upCast(o#1) } 
                  { _module.Object.universe(o#1) } 
                  { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#1)) } 
                $Is(o#1, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#1))
                   ==> _module.Object.universe(o#1) == _module.Object.universe(this)
                     && _module.__default.upCast(o#1) != _module.Object.universe(this))));
  requires {:id "id140"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.i#canCall(previous$Heap, _module.Object.universe(this))
         ==> _module.Universe.i(previous$Heap, _module.Object.universe(this))
           || (_module.Universe.i0#canCall(previous$Heap, _module.Object.universe(this))
             ==> _module.Universe.i0(previous$Heap, _module.Object.universe(this))
               || (forall o#2: ref :: 
                { _module.__default.upCast(o#2) } 
                  { _module.Object.universe(o#2) } 
                  { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#2)) } 
                $Is(o#2, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#2))
                   ==> _module.Object.universe(o#2) == _module.Object.universe(this)
                     && _module.__default.upCast(o#2) != _module.Object.universe(this))));
  requires {:id "id141"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.i#canCall(previous$Heap, _module.Object.universe(this))
         ==> _module.Universe.i(previous$Heap, _module.Object.universe(this))
           || (forall o#3: ref :: 
            { _module.Object.i(previous$Heap, o#3) } 
              { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#3)) } 
            $Is(o#3, Tclass._module.Object())
                 && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#3))
               ==> _module.Object.i(previous$Heap, o#3)));
  requires {:id "id142"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (forall $o: ref, $f: Field :: 
        { read(current$Heap, $o, $f) } 
        $o != null
           ==> 
          $o == this
           ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  requires {:id "id143"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || (_module.Universe.i#canCall(previous$Heap, _module.Object.universe(this))
             ==> _module.Universe.i(previous$Heap, _module.Object.universe(this))
               || (_module.Universe.i0#canCall(previous$Heap, _module.Object.universe(this))
                 ==> _module.Universe.i0(previous$Heap, _module.Object.universe(this))
                   || (forall o#4: ref :: 
                    { _module.__default.upCast(o#4) } 
                      { _module.Object.universe(o#4) } 
                      { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#4)) } 
                    $Is(o#4, Tclass._module.Object())
                         && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                          $Box(o#4))
                       ==> _module.Object.universe(o#4) == _module.Object.universe(this)
                         && _module.__default.upCast(o#4) != _module.Object.universe(this)))));
  requires {:id "id144"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || (_module.Universe.i#canCall(previous$Heap, _module.Object.universe(this))
             ==> _module.Universe.i(previous$Heap, _module.Object.universe(this))
               || (forall o#5: ref :: 
                { _module.Object.i(previous$Heap, o#5) } 
                  { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#5)) } 
                $Is(o#5, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#5))
                   ==> _module.Object.i(previous$Heap, o#5))));
  requires {:id "id145"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || (_module.Universe.i0#canCall(current$Heap, _module.Object.universe(this))
             ==> _module.Universe.i0(current$Heap, _module.Object.universe(this))
               || (forall o#6: ref :: 
                { _module.__default.upCast(o#6) } 
                  { _module.Object.universe(o#6) } 
                  { Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#6)) } 
                $Is(o#6, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#6))
                   ==> _module.Object.universe(o#6) == _module.Object.universe(this)
                     && _module.__default.upCast(o#6) != _module.Object.universe(this))));
  requires {:id "id146"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || Set#Subset($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set));
  requires {:id "id147"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || (_module.Universe.legal0#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
             ==> _module.Universe.legal0(previous$Heap, current$Heap, _module.Object.universe(this))
               || (forall o#7: ref :: 
                { _module.Object.i(current$Heap, o#7) } 
                  { _module.Object.i2(previous$Heap, current$Heap, o#7) } 
                  { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#7)) } 
                $Is(o#7, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#7))
                   ==> ((forall $o: ref, $f: Field :: 
                        { read(current$Heap, $o, $f) } 
                        $o != null
                           ==> 
                          $o == o#7
                           ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f))
                       || _module.Object.i2(previous$Heap, current$Heap, o#7))
                     && ((forall $o: ref, $f: Field :: 
                        { read(current$Heap, $o, $f) } 
                        $o != null
                           ==> 
                          $o == o#7
                           ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f))
                       || _module.Object.i(current$Heap, o#7)))));
  requires {:id "id148"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || (_module.Universe.legal1#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
             ==> _module.Universe.legal1(previous$Heap, current$Heap, _module.Object.universe(this))
               || (forall o#8: ref :: 
                { _module.Object.i(current$Heap, o#8) } 
                  { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#8)) } 
                  { Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#8)) } 
                $Is(o#8, Tclass._module.Object())
                     && 
                    Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#8))
                     && !Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#8))
                   ==> _module.Object.i(current$Heap, o#8))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Object.i2#canCall(previous$Heap, current$Heap, this)
     && (_module.Object.i2(previous$Heap, current$Heap, this)
       ==> _module.Object.i#canCall(current$Heap, this));
  ensures {:id "id149"} _module.Object.i2(previous$Heap, current$Heap, this);
  ensures {:id "id150"} _module.Object.i(current$Heap, this);
  // frame condition
  free ensures old($Heap) == $Heap;



// $Is axiom for non-null type _module.Object
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Object()) } { $Is(c#0, Tclass._module.Object?()) } 
  $Is(c#0, Tclass._module.Object())
     <==> $Is(c#0, Tclass._module.Object?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Object
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Object(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Object?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Object(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Object?(), $h));

const unique class._module.ArcAtomicIsize?: ClassName;

function Tclass._module.ArcAtomicIsize?() : Ty
uses {
// Tclass._module.ArcAtomicIsize? Tag
axiom Tag(Tclass._module.ArcAtomicIsize?()) == Tagclass._module.ArcAtomicIsize?
   && TagFamily(Tclass._module.ArcAtomicIsize?()) == tytagFamily$ArcAtomicIsize;
axiom implements$_module.Object(Tclass._module.ArcAtomicIsize?());
}

const unique Tagclass._module.ArcAtomicIsize?: TyTag;

// Box/unbox axiom for Tclass._module.ArcAtomicIsize?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ArcAtomicIsize?()) } 
  $IsBox(bx, Tclass._module.ArcAtomicIsize?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.ArcAtomicIsize?()));

// $Is axiom for class ArcAtomicIsize
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.ArcAtomicIsize?()) } 
  $Is($o, Tclass._module.ArcAtomicIsize?())
     <==> $o == null || dtype($o) == Tclass._module.ArcAtomicIsize?());

// $IsAlloc axiom for class ArcAtomicIsize
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.ArcAtomicIsize?(), $h) } 
  $IsAlloc($o, Tclass._module.ArcAtomicIsize?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.ArcAtomicIsize.data: Field
uses {
axiom FDim(_module.ArcAtomicIsize.data) == 0
   && FieldOfDecl(class._module.ArcAtomicIsize?, field$data)
     == _module.ArcAtomicIsize.data
   && !$IsGhostField(_module.ArcAtomicIsize.data);
}

// ArcAtomicIsize.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ArcAtomicIsize.data)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.ArcAtomicIsize?()
     ==> $Is($Unbox(read($h, $o, _module.ArcAtomicIsize.data)): int, TInt));

// ArcAtomicIsize.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ArcAtomicIsize.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ArcAtomicIsize?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.ArcAtomicIsize.data)): int, TInt, $h));

// function declaration for _module.ArcAtomicIsize.i
function _module.ArcAtomicIsize.i($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.ArcAtomicIsize.i (revealed)
axiom {:id "id151"} 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.ArcAtomicIsize.i($Heap, this), $IsGoodHeap($Heap) } 
    _module.ArcAtomicIsize.i#canCall($Heap, this)
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.ArcAtomicIsize())
           && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), $Heap))
       ==> (Lit(true) ==> _module.Object.i0#canCall($Heap, this))
         && _module.ArcAtomicIsize.i($Heap, this)
           == (true && _module.Object.i0($Heap, this)));
}

function _module.ArcAtomicIsize.i#canCall($heap: Heap, this: ref) : bool;

function Tclass._module.ArcAtomicIsize() : Ty
uses {
// Tclass._module.ArcAtomicIsize Tag
axiom Tag(Tclass._module.ArcAtomicIsize()) == Tagclass._module.ArcAtomicIsize
   && TagFamily(Tclass._module.ArcAtomicIsize()) == tytagFamily$ArcAtomicIsize;
}

const unique Tagclass._module.ArcAtomicIsize: TyTag;

// Box/unbox axiom for Tclass._module.ArcAtomicIsize
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ArcAtomicIsize()) } 
  $IsBox(bx, Tclass._module.ArcAtomicIsize())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.ArcAtomicIsize()));

// frame axiom for _module.ArcAtomicIsize.i
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.ArcAtomicIsize.i($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.ArcAtomicIsize())
       && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), $h0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.ArcAtomicIsize.i($h0, this) == _module.ArcAtomicIsize.i($h1, this));

function _module.ArcAtomicIsize.i#requires(Heap, ref) : bool;

// #requires axiom for _module.ArcAtomicIsize.i
axiom (forall $Heap: Heap, this: ref :: 
  { _module.ArcAtomicIsize.i#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.ArcAtomicIsize())
       && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), $Heap)
     ==> _module.ArcAtomicIsize.i#requires($Heap, this) == true);

// override axiom for _module.Object.i in class _module.ArcAtomicIsize
axiom 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Object.i($Heap, this), $Is(this, Tclass._module.ArcAtomicIsize()), $IsGoodHeap($Heap) } 
      { _module.Object.i($Heap, this), _module.ArcAtomicIsize.i($Heap, this), $IsGoodHeap($Heap) } 
    _module.ArcAtomicIsize.i#canCall($Heap, this)
         || (4 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.ArcAtomicIsize()))
       ==> _module.Object.i($Heap, this) == _module.ArcAtomicIsize.i($Heap, this));

procedure {:verboseName "ArcAtomicIsize.i (well-formedness)"} CheckWellformed$$_module.ArcAtomicIsize.i(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArcAtomicIsize())
         && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArcAtomicIsize.i (well-formedness)"} CheckWellformed$$_module.ArcAtomicIsize.i(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (Lit(true))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
            b$reqreads#0 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && $Unbox(read($Heap, $o, alloc)): bool
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Object.i0#canCall($Heap, this);
        }

        assume {:id "id152"} _module.ArcAtomicIsize.i($Heap, this)
           == (true && _module.Object.i0($Heap, this));
        assume Lit(true) ==> _module.Object.i0#canCall($Heap, this);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.ArcAtomicIsize.i($Heap, this), TBool);
        assert {:id "id153"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "ArcAtomicIsize.i (override check)"} OverrideCheck$$_module.ArcAtomicIsize.i(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArcAtomicIsize())
         && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArcAtomicIsize.i (override check)"} OverrideCheck$$_module.ArcAtomicIsize.i(this: ref)
{
  var ArcAtomicIsize_$_ReadsFrame: [ref,Field]bool;

    assert {:id "id154"} Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set));
    ArcAtomicIsize_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    assert {:id "id155"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
}



// function declaration for _module.ArcAtomicIsize.i2
function _module.ArcAtomicIsize.i2($prevHeap: Heap, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.ArcAtomicIsize.i2 (revealed)
axiom {:id "id156"} 0 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
    { _module.ArcAtomicIsize.i2($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
    _module.ArcAtomicIsize.i2#canCall($prevHeap, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.ArcAtomicIsize())
           && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), $prevHeap))
       ==> _module.ArcAtomicIsize.i2($prevHeap, $Heap, this)
         == (true
           && $Unbox(read($prevHeap, this, _module.ArcAtomicIsize.data)): int
             <= $Unbox(read($Heap, this, _module.ArcAtomicIsize.data)): int));
}

function _module.ArcAtomicIsize.i2#canCall($prevHeap: Heap, $heap: Heap, this: ref) : bool;

// frame axiom for _module.ArcAtomicIsize.i2
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.ArcAtomicIsize.i2($prevHeap, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.ArcAtomicIsize())
       && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), $h0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.ArcAtomicIsize.i2($prevHeap, $h0, this)
       == _module.ArcAtomicIsize.i2($prevHeap, $h1, this));

function _module.ArcAtomicIsize.i2#requires(Heap, Heap, ref) : bool;

// #requires axiom for _module.ArcAtomicIsize.i2
axiom (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
  { _module.ArcAtomicIsize.i2#requires($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.ArcAtomicIsize())
       && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), $prevHeap)
     ==> _module.ArcAtomicIsize.i2#requires($prevHeap, $Heap, this) == true);

// override axiom for _module.Object.i2 in class _module.ArcAtomicIsize
axiom 0 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
    { _module.Object.i2($prevHeap, $Heap, this), $Is(this, Tclass._module.ArcAtomicIsize()), $IsGoodHeap($Heap) } 
      { _module.Object.i2($prevHeap, $Heap, this), _module.ArcAtomicIsize.i2($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
    _module.ArcAtomicIsize.i2#canCall($prevHeap, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.ArcAtomicIsize()))
       ==> _module.Object.i2($prevHeap, $Heap, this)
         == _module.ArcAtomicIsize.i2($prevHeap, $Heap, this));

procedure {:verboseName "ArcAtomicIsize.i2 (well-formedness)"} CheckWellformed$$_module.ArcAtomicIsize.i2(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArcAtomicIsize())
         && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), previous$Heap));
  free requires 0 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArcAtomicIsize.i2 (well-formedness)"} CheckWellformed$$_module.ArcAtomicIsize.i2(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (Lit(true))
        {
            assert {:id "id157"} $IsAlloc(this, Tclass._module.ArcAtomicIsize(), old($Heap));
            b$reqreads#0 := $_ReadsFrame[this, _module.ArcAtomicIsize.data];
        }

        assume {:id "id158"} _module.ArcAtomicIsize.i2(old($Heap), $Heap, this)
           == (true
             && $Unbox(read(old($Heap), this, _module.ArcAtomicIsize.data)): int
               <= $Unbox(read($Heap, this, _module.ArcAtomicIsize.data)): int);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.ArcAtomicIsize.i2(old($Heap), $Heap, this), TBool);
        assert {:id "id159"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "ArcAtomicIsize.i2 (override check)"} OverrideCheck$$_module.ArcAtomicIsize.i2(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArcAtomicIsize())
         && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), current$Heap));
  free requires 0 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArcAtomicIsize.i2 (override check)"} OverrideCheck$$_module.ArcAtomicIsize.i2(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var ArcAtomicIsize_$_ReadsFrame: [ref,Field]bool;

    $Heap := current$Heap;
    assert {:id "id160"} Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set));
    ArcAtomicIsize_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    assert {:id "id161"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
}



procedure {:verboseName "ArcAtomicIsize.adm (well-formedness)"} CheckWellFormed$$_module.ArcAtomicIsize.adm(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArcAtomicIsize())
         && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), previous$Heap));
  free requires 10 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArcAtomicIsize.adm (well-formedness)"} CheckWellFormed$$_module.ArcAtomicIsize.adm(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: adm, CheckWellFormed$$_module.ArcAtomicIsize.adm
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
    assert {:id "id162"} $IsAlloc(this, Tclass._module.ArcAtomicIsize(), old($Heap));
    assume _module.Object.admPre#canCall(old($Heap), $Heap, this);
    assume {:id "id163"} _module.Object.admPre(old($Heap), $Heap, this);
}



procedure {:verboseName "ArcAtomicIsize.adm (override check)"} OverrideCheck$$_module.ArcAtomicIsize.adm(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArcAtomicIsize())
         && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), previous$Heap));
  free requires 10 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArcAtomicIsize.adm (override check)"} OverrideCheck$$_module.ArcAtomicIsize.adm(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
    $Heap := current$Heap;
    assume {:id "id164"} _module.Object.admPre(old($Heap), $Heap, this);
    assert {:id "id165"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Object.i0#canCall($Heap, this)
           ==> _module.Object.i0($Heap, this)
             || Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
              $Box(this)));
    assert {:id "id166"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Object.i0#canCall($Heap, this)
           ==> _module.Object.i0($Heap, this)
             || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
               ==> _module.Universe.i0($Heap, _module.Object.universe(this))
                 || (forall o#0: ref :: 
                  { _module.__default.upCast(o#0) } 
                    { _module.Object.universe(o#0) } 
                    { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#0)) } 
                  $Is(o#0, Tclass._module.Object())
                       && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#0))
                     ==> _module.Object.universe(o#0) == _module.Object.universe(this)
                       && _module.__default.upCast(o#0) != _module.Object.universe(this))));
    assert {:id "id167"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Object.i0#canCall(old($Heap), this)
           ==> _module.Object.i0(old($Heap), this)
             || Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
              $Box(this)));
    assert {:id "id168"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Object.i0#canCall(old($Heap), this)
           ==> _module.Object.i0(old($Heap), this)
             || (_module.Universe.i0#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i0(old($Heap), _module.Object.universe(this))
                 || (forall o#1: ref :: 
                  { _module.__default.upCast(o#1) } 
                    { _module.Object.universe(o#1) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#1)) } 
                  $Is(o#1, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#1))
                     ==> _module.Object.universe(o#1) == _module.Object.universe(this)
                       && _module.__default.upCast(o#1) != _module.Object.universe(this))));
    assert {:id "id169"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
           ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
             || (_module.Universe.i0#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i0(old($Heap), _module.Object.universe(this))
                 || (forall o#2: ref :: 
                  { _module.__default.upCast(o#2) } 
                    { _module.Object.universe(o#2) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#2)) } 
                  $Is(o#2, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#2))
                     ==> _module.Object.universe(o#2) == _module.Object.universe(this)
                       && _module.__default.upCast(o#2) != _module.Object.universe(this))));
    assert {:id "id170"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
           ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
             || (forall o#3: ref :: 
              { _module.Object.i(old($Heap), o#3) } 
                { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#3)) } 
              $Is(o#3, Tclass._module.Object())
                   && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#3))
                 ==> _module.Object.i(old($Heap), o#3)));
    assert {:id "id171"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == this ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    assert {:id "id172"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.legal#canCall(old($Heap), $Heap, _module.Object.universe(this))
           ==> _module.Universe.legal(old($Heap), $Heap, _module.Object.universe(this))
             || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
                 || (_module.Universe.i0#canCall(old($Heap), _module.Object.universe(this))
                   ==> _module.Universe.i0(old($Heap), _module.Object.universe(this))
                     || (forall o#4: ref :: 
                      { _module.__default.upCast(o#4) } 
                        { _module.Object.universe(o#4) } 
                        { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                          $Box(o#4)) } 
                      $Is(o#4, Tclass._module.Object())
                           && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                            $Box(o#4))
                         ==> _module.Object.universe(o#4) == _module.Object.universe(this)
                           && _module.__default.upCast(o#4) != _module.Object.universe(this)))));
    assert {:id "id173"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.legal#canCall(old($Heap), $Heap, _module.Object.universe(this))
           ==> _module.Universe.legal(old($Heap), $Heap, _module.Object.universe(this))
             || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
                 || (forall o#5: ref :: 
                  { _module.Object.i(old($Heap), o#5) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#5)) } 
                  $Is(o#5, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#5))
                     ==> _module.Object.i(old($Heap), o#5))));
    assert {:id "id174"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.legal#canCall(old($Heap), $Heap, _module.Object.universe(this))
           ==> _module.Universe.legal(old($Heap), $Heap, _module.Object.universe(this))
             || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
               ==> _module.Universe.i0($Heap, _module.Object.universe(this))
                 || (forall o#6: ref :: 
                  { _module.__default.upCast(o#6) } 
                    { _module.Object.universe(o#6) } 
                    { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#6)) } 
                  $Is(o#6, Tclass._module.Object())
                       && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#6))
                     ==> _module.Object.universe(o#6) == _module.Object.universe(this)
                       && _module.__default.upCast(o#6) != _module.Object.universe(this))));
    assert {:id "id175"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.legal#canCall(old($Heap), $Heap, _module.Object.universe(this))
           ==> _module.Universe.legal(old($Heap), $Heap, _module.Object.universe(this))
             || Set#Subset($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
              $Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set));
    assert {:id "id176"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.legal#canCall(old($Heap), $Heap, _module.Object.universe(this))
           ==> _module.Universe.legal(old($Heap), $Heap, _module.Object.universe(this))
             || (_module.Universe.legal0#canCall(old($Heap), $Heap, _module.Object.universe(this))
               ==> _module.Universe.legal0(old($Heap), $Heap, _module.Object.universe(this))
                 || (forall o#7: ref :: 
                  { _module.Object.i($Heap, o#7) } 
                    { _module.Object.i2(old($Heap), $Heap, o#7) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#7)) } 
                  $Is(o#7, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#7))
                     ==> ((forall $o: ref, $f: Field :: 
                          { read($Heap, $o, $f) } 
                          $o != null ==> $o == o#7 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
                         || _module.Object.i2(old($Heap), $Heap, o#7))
                       && ((forall $o: ref, $f: Field :: 
                          { read($Heap, $o, $f) } 
                          $o != null ==> $o == o#7 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
                         || _module.Object.i($Heap, o#7)))));
    assert {:id "id177"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.legal#canCall(old($Heap), $Heap, _module.Object.universe(this))
           ==> _module.Universe.legal(old($Heap), $Heap, _module.Object.universe(this))
             || (_module.Universe.legal1#canCall(old($Heap), $Heap, _module.Object.universe(this))
               ==> _module.Universe.legal1(old($Heap), $Heap, _module.Object.universe(this))
                 || (forall o#8: ref :: 
                  { _module.Object.i($Heap, o#8) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#8)) } 
                    { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#8)) } 
                  $Is(o#8, Tclass._module.Object())
                       && 
                      Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#8))
                       && !Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#8))
                     ==> _module.Object.i($Heap, o#8))));
    assert {:id "id178"} true;
    assert {:id "id179"} (forall $o: ref, $f: Field :: true);
    assert {:id "id180"} (forall $o: ref, $f: Field :: true);
    assert {:id "id181"} _module.ArcAtomicIsize.i2#canCall(old($Heap), $Heap, this)
       ==> _module.ArcAtomicIsize.i2(old($Heap), $Heap, this) || Lit(true);
    assert {:id "id182"} _module.ArcAtomicIsize.i2#canCall(old($Heap), $Heap, this)
       ==> _module.ArcAtomicIsize.i2(old($Heap), $Heap, this)
         || $Unbox(read(old($Heap), this, _module.ArcAtomicIsize.data)): int
           <= $Unbox(read($Heap, this, _module.ArcAtomicIsize.data)): int;
    assert {:id "id183"} _module.ArcAtomicIsize.i#canCall($Heap, this)
       ==> _module.ArcAtomicIsize.i($Heap, this) || Lit(true);
    assert {:id "id184"} _module.ArcAtomicIsize.i#canCall($Heap, this)
       ==> _module.ArcAtomicIsize.i($Heap, this)
         || (_module.Object.i0#canCall($Heap, this)
           ==> _module.Object.i0($Heap, this)
             || Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
              $Box(this)));
    assert {:id "id185"} _module.ArcAtomicIsize.i#canCall($Heap, this)
       ==> _module.ArcAtomicIsize.i($Heap, this)
         || (_module.Object.i0#canCall($Heap, this)
           ==> _module.Object.i0($Heap, this)
             || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
               ==> _module.Universe.i0($Heap, _module.Object.universe(this))
                 || (forall o#9: ref :: 
                  { _module.__default.upCast(o#9) } 
                    { _module.Object.universe(o#9) } 
                    { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#9)) } 
                  $Is(o#9, Tclass._module.Object())
                       && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#9))
                     ==> _module.Object.universe(o#9) == _module.Object.universe(this)
                       && _module.__default.upCast(o#9) != _module.Object.universe(this))));
}



procedure {:verboseName "ArcAtomicIsize.adm (call)"} Call$$_module.ArcAtomicIsize.adm(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArcAtomicIsize())
         && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), previous$Heap));
  // user-defined preconditions
  requires {:id "id186"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Object.i0#canCall(current$Heap, this)
         ==> _module.Object.i0(current$Heap, this)
           || Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  requires {:id "id187"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Object.i0#canCall(current$Heap, this)
         ==> _module.Object.i0(current$Heap, this)
           || (_module.Universe.i0#canCall(current$Heap, _module.Object.universe(this))
             ==> _module.Universe.i0(current$Heap, _module.Object.universe(this))
               || (forall o#10: ref :: 
                { _module.__default.upCast(o#10) } 
                  { _module.Object.universe(o#10) } 
                  { Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#10)) } 
                $Is(o#10, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#10))
                   ==> _module.Object.universe(o#10) == _module.Object.universe(this)
                     && _module.__default.upCast(o#10) != _module.Object.universe(this))));
  requires {:id "id188"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Object.i0#canCall(previous$Heap, this)
         ==> _module.Object.i0(previous$Heap, this)
           || Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  requires {:id "id189"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Object.i0#canCall(previous$Heap, this)
         ==> _module.Object.i0(previous$Heap, this)
           || (_module.Universe.i0#canCall(previous$Heap, _module.Object.universe(this))
             ==> _module.Universe.i0(previous$Heap, _module.Object.universe(this))
               || (forall o#11: ref :: 
                { _module.__default.upCast(o#11) } 
                  { _module.Object.universe(o#11) } 
                  { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#11)) } 
                $Is(o#11, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#11))
                   ==> _module.Object.universe(o#11) == _module.Object.universe(this)
                     && _module.__default.upCast(o#11) != _module.Object.universe(this))));
  requires {:id "id190"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.i#canCall(previous$Heap, _module.Object.universe(this))
         ==> _module.Universe.i(previous$Heap, _module.Object.universe(this))
           || (_module.Universe.i0#canCall(previous$Heap, _module.Object.universe(this))
             ==> _module.Universe.i0(previous$Heap, _module.Object.universe(this))
               || (forall o#12: ref :: 
                { _module.__default.upCast(o#12) } 
                  { _module.Object.universe(o#12) } 
                  { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#12)) } 
                $Is(o#12, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#12))
                   ==> _module.Object.universe(o#12) == _module.Object.universe(this)
                     && _module.__default.upCast(o#12) != _module.Object.universe(this))));
  requires {:id "id191"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.i#canCall(previous$Heap, _module.Object.universe(this))
         ==> _module.Universe.i(previous$Heap, _module.Object.universe(this))
           || (forall o#13: ref :: 
            { _module.Object.i(previous$Heap, o#13) } 
              { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#13)) } 
            $Is(o#13, Tclass._module.Object())
                 && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#13))
               ==> _module.Object.i(previous$Heap, o#13)));
  requires {:id "id192"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (forall $o: ref, $f: Field :: 
        { read(current$Heap, $o, $f) } 
        $o != null
           ==> 
          $o == this
           ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  requires {:id "id193"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || (_module.Universe.i#canCall(previous$Heap, _module.Object.universe(this))
             ==> _module.Universe.i(previous$Heap, _module.Object.universe(this))
               || (_module.Universe.i0#canCall(previous$Heap, _module.Object.universe(this))
                 ==> _module.Universe.i0(previous$Heap, _module.Object.universe(this))
                   || (forall o#14: ref :: 
                    { _module.__default.upCast(o#14) } 
                      { _module.Object.universe(o#14) } 
                      { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#14)) } 
                    $Is(o#14, Tclass._module.Object())
                         && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                          $Box(o#14))
                       ==> _module.Object.universe(o#14) == _module.Object.universe(this)
                         && _module.__default.upCast(o#14) != _module.Object.universe(this)))));
  requires {:id "id194"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || (_module.Universe.i#canCall(previous$Heap, _module.Object.universe(this))
             ==> _module.Universe.i(previous$Heap, _module.Object.universe(this))
               || (forall o#15: ref :: 
                { _module.Object.i(previous$Heap, o#15) } 
                  { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#15)) } 
                $Is(o#15, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#15))
                   ==> _module.Object.i(previous$Heap, o#15))));
  requires {:id "id195"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || (_module.Universe.i0#canCall(current$Heap, _module.Object.universe(this))
             ==> _module.Universe.i0(current$Heap, _module.Object.universe(this))
               || (forall o#16: ref :: 
                { _module.__default.upCast(o#16) } 
                  { _module.Object.universe(o#16) } 
                  { Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#16)) } 
                $Is(o#16, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#16))
                   ==> _module.Object.universe(o#16) == _module.Object.universe(this)
                     && _module.__default.upCast(o#16) != _module.Object.universe(this))));
  requires {:id "id196"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || Set#Subset($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set));
  requires {:id "id197"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || (_module.Universe.legal0#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
             ==> _module.Universe.legal0(previous$Heap, current$Heap, _module.Object.universe(this))
               || (forall o#17: ref :: 
                { _module.Object.i(current$Heap, o#17) } 
                  { _module.Object.i2(previous$Heap, current$Heap, o#17) } 
                  { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#17)) } 
                $Is(o#17, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#17))
                   ==> ((forall $o: ref, $f: Field :: 
                        { read(current$Heap, $o, $f) } 
                        $o != null
                           ==> 
                          $o == o#17
                           ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f))
                       || _module.Object.i2(previous$Heap, current$Heap, o#17))
                     && ((forall $o: ref, $f: Field :: 
                        { read(current$Heap, $o, $f) } 
                        $o != null
                           ==> 
                          $o == o#17
                           ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f))
                       || _module.Object.i(current$Heap, o#17)))));
  requires {:id "id198"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || (_module.Universe.legal1#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
             ==> _module.Universe.legal1(previous$Heap, current$Heap, _module.Object.universe(this))
               || (forall o#18: ref :: 
                { _module.Object.i(current$Heap, o#18) } 
                  { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#18)) } 
                  { Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#18)) } 
                $Is(o#18, Tclass._module.Object())
                     && 
                    Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#18))
                     && !Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#18))
                   ==> _module.Object.i(current$Heap, o#18))));
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ArcAtomicIsize.adm (correctness)"} Impl$$_module.ArcAtomicIsize.adm(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArcAtomicIsize())
         && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 10 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  // user-defined preconditions
  free requires {:id "id199"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     && 
    _module.Object.admPre(previous$Heap, current$Heap, this)
     && 
    _module.Object.i0(current$Heap, this)
     && 
    _module.Object.i0(previous$Heap, this)
     && _module.Universe.i(previous$Heap, _module.Object.universe(this))
     && (forall $o: ref, $f: Field :: 
      { read(current$Heap, $o, $f) } 
      $o != null
         ==> 
        $o == this
         ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f))
     && _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this));
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ArcAtomicIsize._ctor (well-formedness)"} CheckWellFormed$$_module.ArcAtomicIsize.__ctor(universe#0: ref
       where $Is(universe#0, Tclass._module.Universe())
         && $IsAlloc(universe#0, Tclass._module.Universe(), $Heap), 
    initial_data#0: int)
   returns (this: ref);
  free requires 13 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArcAtomicIsize._ctor (well-formedness)"} CheckWellFormed$$_module.ArcAtomicIsize.__ctor(universe#0: ref, initial_data#0: int) returns (this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: _ctor, CheckWellFormed$$_module.ArcAtomicIsize.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == universe#0);
    assert {:id "id200"} universe#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(universe#0), Tclass._module.Universe?(), $Heap);
    assume _module.Universe.i#canCall($Heap, universe#0);
    assume {:id "id201"} _module.Universe.i($Heap, universe#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == universe#0);
    assume $HeapSucc(old($Heap), $Heap);
    havoc this;
    assume this != null
       && 
      $Is(this, Tclass._module.ArcAtomicIsize())
       && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), $Heap);
    assert {:id "id202"} universe#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(universe#0), Tclass._module.Universe?(), $Heap);
    assume _module.Universe.i#canCall($Heap, universe#0);
    assume {:id "id203"} _module.Universe.i($Heap, universe#0);
}



procedure {:verboseName "ArcAtomicIsize._ctor (call)"} Call$$_module.ArcAtomicIsize.__ctor(universe#0: ref
       where $Is(universe#0, Tclass._module.Universe())
         && $IsAlloc(universe#0, Tclass._module.Universe(), $Heap), 
    initial_data#0: int)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArcAtomicIsize())
         && $IsAlloc(this, Tclass._module.ArcAtomicIsize(), $Heap));
  // user-defined preconditions
  requires {:id "id204"} _module.Universe.i#canCall($Heap, universe#0)
     ==> _module.Universe.i($Heap, universe#0)
       || (_module.Universe.i0#canCall($Heap, universe#0)
         ==> _module.Universe.i0($Heap, universe#0)
           || (forall o#0: ref :: 
            { _module.__default.upCast(o#0) } 
              { _module.Object.universe(o#0) } 
              { Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#0)) } 
            $Is(o#0, Tclass._module.Object())
                 && Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#0))
               ==> _module.Object.universe(o#0) == universe#0
                 && _module.__default.upCast(o#0) != universe#0));
  requires {:id "id205"} _module.Universe.i#canCall($Heap, universe#0)
     ==> _module.Universe.i($Heap, universe#0)
       || (forall o#1: ref :: 
        { _module.Object.i($Heap, o#1) } 
          { Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#1)) } 
        $Is(o#1, Tclass._module.Object())
             && Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#1))
           ==> _module.Object.i($Heap, o#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Universe.i#canCall($Heap, universe#0);
  free ensures {:id "id206"} _module.Universe.i#canCall($Heap, universe#0)
     && 
    _module.Universe.i($Heap, universe#0)
     && 
    _module.Universe.i0($Heap, universe#0)
     && (forall o#3: ref :: 
      { _module.Object.i($Heap, o#3) } 
        { Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#3)) } 
      $Is(o#3, Tclass._module.Object())
           && Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#3))
         ==> _module.Object.i($Heap, o#3));
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == universe#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArcAtomicIsize._ctor (correctness)"} Impl$$_module.ArcAtomicIsize.__ctor(universe#0: ref
       where $Is(universe#0, Tclass._module.Universe())
         && $IsAlloc(universe#0, Tclass._module.Universe(), $Heap), 
    initial_data#0: int)
   returns (this: ref, $_reverifyPost: bool);
  free requires 13 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id207"} _module.Universe.i#canCall($Heap, universe#0)
     && 
    _module.Universe.i($Heap, universe#0)
     && 
    _module.Universe.i0($Heap, universe#0)
     && (forall o#5: ref :: 
      { _module.Object.i($Heap, o#5) } 
        { Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#5)) } 
      $Is(o#5, Tclass._module.Object())
           && Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#5))
         ==> _module.Object.i($Heap, o#5));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Universe.i#canCall($Heap, universe#0);
  ensures {:id "id208"} _module.Universe.i#canCall($Heap, universe#0)
     ==> _module.Universe.i($Heap, universe#0)
       || (_module.Universe.i0#canCall($Heap, universe#0)
         ==> _module.Universe.i0($Heap, universe#0)
           || (forall o#6: ref :: 
            { _module.__default.upCast(o#6) } 
              { _module.Object.universe(o#6) } 
              { Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#6)) } 
            $Is(o#6, Tclass._module.Object())
                 && Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#6))
               ==> _module.Object.universe(o#6) == universe#0
                 && _module.__default.upCast(o#6) != universe#0));
  ensures {:id "id209"} _module.Universe.i#canCall($Heap, universe#0)
     ==> _module.Universe.i($Heap, universe#0)
       || (forall o#7: ref :: 
        { _module.Object.i($Heap, o#7) } 
          { Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#7)) } 
        $Is(o#7, Tclass._module.Object())
             && Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#7))
           ==> _module.Object.i($Heap, o#7));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == universe#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArcAtomicIsize._ctor (correctness)"} Impl$$_module.ArcAtomicIsize.__ctor(universe#0: ref, initial_data#0: int) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.universe: ref;
  var this.data: int;
  var defass#this.universe: bool;

    // AddMethodImpl: _ctor, Impl$$_module.ArcAtomicIsize.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == universe#0);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(120,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(121,19)
    assume true;
    assume true;
    this.universe := universe#0;
    defass#this.universe := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(122,10)
    assume true;
    assume true;
    this.data := initial_data#0;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(120,3)
    assert {:id "id212"} defass#this.universe;
    assume this != null && $Is(this, Tclass._module.ArcAtomicIsize?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume _module.Object.universe(this) == this.universe;
    assume $Unbox(read($Heap, this, _module.ArcAtomicIsize.data)): int == this.data;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(120,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(126,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id213"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && $o == _module.Object.universe(this)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id214"} Call$$_module.Object.join(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(128,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id215"} universe#0 != null;
    assert {:id "id216"} $IsAlloc(universe#0, Tclass._module.Universe(), old($Heap));
    call {:id "id217"} Call$$_module.Universe.lci(old($Heap), $Heap, universe#0);
    // TrCallStmt: After ProcessCallStmt
}



// $Is axiom for non-null type _module.ArcAtomicIsize
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.ArcAtomicIsize()) } 
    { $Is(c#0, Tclass._module.ArcAtomicIsize?()) } 
  $Is(c#0, Tclass._module.ArcAtomicIsize())
     <==> $Is(c#0, Tclass._module.ArcAtomicIsize?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.ArcAtomicIsize
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.ArcAtomicIsize(), $h) } 
    { $IsAlloc(c#0, Tclass._module.ArcAtomicIsize?(), $h) } 
  $IsAlloc(c#0, Tclass._module.ArcAtomicIsize(), $h)
     <==> $IsAlloc(c#0, Tclass._module.ArcAtomicIsize?(), $h));

const unique class._module.WorkerMethod?: ClassName;

function Tclass._module.WorkerMethod?() : Ty
uses {
// Tclass._module.WorkerMethod? Tag
axiom Tag(Tclass._module.WorkerMethod?()) == Tagclass._module.WorkerMethod?
   && TagFamily(Tclass._module.WorkerMethod?()) == tytagFamily$WorkerMethod;
axiom implements$_module.Object(Tclass._module.WorkerMethod?());
}

const unique Tagclass._module.WorkerMethod?: TyTag;

// Box/unbox axiom for Tclass._module.WorkerMethod?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.WorkerMethod?()) } 
  $IsBox(bx, Tclass._module.WorkerMethod?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.WorkerMethod?()));

// $Is axiom for class WorkerMethod
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.WorkerMethod?()) } 
  $Is($o, Tclass._module.WorkerMethod?())
     <==> $o == null || dtype($o) == Tclass._module.WorkerMethod?());

// $IsAlloc axiom for class WorkerMethod
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.WorkerMethod?(), $h) } 
  $IsAlloc($o, Tclass._module.WorkerMethod?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.WorkerMethod.next__stmt: Field
uses {
axiom FDim(_module.WorkerMethod.next__stmt) == 0
   && FieldOfDecl(class._module.WorkerMethod?, field$next_stmt)
     == _module.WorkerMethod.next__stmt
   && !$IsGhostField(_module.WorkerMethod.next__stmt);
}

// WorkerMethod.next_stmt: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WorkerMethod.next__stmt)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.WorkerMethod?()
     ==> $Is($Unbox(read($h, $o, _module.WorkerMethod.next__stmt)): int, TInt));

// WorkerMethod.next_stmt: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WorkerMethod.next__stmt)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.WorkerMethod?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.WorkerMethod.next__stmt)): int, TInt, $h));

const _module.WorkerMethod.counter: Field
uses {
axiom FDim(_module.WorkerMethod.counter) == 0
   && FieldOfDecl(class._module.WorkerMethod?, field$counter)
     == _module.WorkerMethod.counter
   && !$IsGhostField(_module.WorkerMethod.counter);
}

// WorkerMethod.counter: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WorkerMethod.counter)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.WorkerMethod?()
     ==> $Is($Unbox(read($h, $o, _module.WorkerMethod.counter)): ref, 
      Tclass._module.ArcAtomicIsize()));

// WorkerMethod.counter: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WorkerMethod.counter)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.WorkerMethod?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.WorkerMethod.counter)): ref, 
      Tclass._module.ArcAtomicIsize(), 
      $h));

const _module.WorkerMethod.initial__value: Field
uses {
axiom FDim(_module.WorkerMethod.initial__value) == 0
   && FieldOfDecl(class._module.WorkerMethod?, field$initial_value)
     == _module.WorkerMethod.initial__value
   && !$IsGhostField(_module.WorkerMethod.initial__value);
}

// WorkerMethod.initial_value: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WorkerMethod.initial__value)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.WorkerMethod?()
     ==> $Is($Unbox(read($h, $o, _module.WorkerMethod.initial__value)): int, TInt));

// WorkerMethod.initial_value: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WorkerMethod.initial__value)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.WorkerMethod?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.WorkerMethod.initial__value)): int, TInt, $h));

const _module.WorkerMethod.final__value: Field
uses {
axiom FDim(_module.WorkerMethod.final__value) == 0
   && FieldOfDecl(class._module.WorkerMethod?, field$final_value)
     == _module.WorkerMethod.final__value
   && !$IsGhostField(_module.WorkerMethod.final__value);
}

// WorkerMethod.final_value: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WorkerMethod.final__value)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.WorkerMethod?()
     ==> $Is($Unbox(read($h, $o, _module.WorkerMethod.final__value)): int, TInt));

// WorkerMethod.final_value: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WorkerMethod.final__value)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.WorkerMethod?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.WorkerMethod.final__value)): int, TInt, $h));

// function declaration for _module.WorkerMethod.i
function _module.WorkerMethod.i($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.WorkerMethod.i (revealed)
axiom {:id "id218"} 5 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.WorkerMethod.i($Heap, this), $IsGoodHeap($Heap) } 
    _module.WorkerMethod.i#canCall($Heap, this)
         || (5 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.WorkerMethod())
           && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap))
       ==> _module.Object.i0#canCall($Heap, this)
         && (_module.Object.i0($Heap, this)
           ==> 
          LitInt(1) <= $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int
           ==> 
          $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int <= LitInt(4)
           ==> 
          _module.Object.universe(this)
             == _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
           ==> _module.ArcAtomicIsize.i#canCall($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref))
         && _module.WorkerMethod.i($Heap, this)
           == (
            _module.Object.i0($Heap, this)
             && 
            LitInt(1) <= $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int
             && $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int <= LitInt(4)
             && _module.Object.universe(this)
               == _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
             && _module.ArcAtomicIsize.i($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
             && ($Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int > 1
               ==> $Unbox(read($Heap, this, _module.WorkerMethod.initial__value)): int
                 <= $Unbox(read($Heap, 
                    $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, 
                    _module.ArcAtomicIsize.data)): int)
             && ($Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int > 2
               ==> $Unbox(read($Heap, this, _module.WorkerMethod.initial__value)): int
                   <= $Unbox(read($Heap, this, _module.WorkerMethod.final__value)): int
                 && $Unbox(read($Heap, this, _module.WorkerMethod.final__value)): int
                   <= $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, 
                      _module.ArcAtomicIsize.data)): int)));
}

function _module.WorkerMethod.i#canCall($heap: Heap, this: ref) : bool;

function Tclass._module.WorkerMethod() : Ty
uses {
// Tclass._module.WorkerMethod Tag
axiom Tag(Tclass._module.WorkerMethod()) == Tagclass._module.WorkerMethod
   && TagFamily(Tclass._module.WorkerMethod()) == tytagFamily$WorkerMethod;
}

const unique Tagclass._module.WorkerMethod: TyTag;

// Box/unbox axiom for Tclass._module.WorkerMethod
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.WorkerMethod()) } 
  $IsBox(bx, Tclass._module.WorkerMethod())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.WorkerMethod()));

// frame axiom for _module.WorkerMethod.i
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.WorkerMethod.i($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.WorkerMethod())
       && $IsAlloc(this, Tclass._module.WorkerMethod(), $h0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.WorkerMethod.i($h0, this) == _module.WorkerMethod.i($h1, this));

function _module.WorkerMethod.i#requires(Heap, ref) : bool;

// #requires axiom for _module.WorkerMethod.i
axiom (forall $Heap: Heap, this: ref :: 
  { _module.WorkerMethod.i#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.WorkerMethod())
       && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap)
     ==> _module.WorkerMethod.i#requires($Heap, this) == true);

// override axiom for _module.Object.i in class _module.WorkerMethod
axiom 5 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Object.i($Heap, this), $Is(this, Tclass._module.WorkerMethod()), $IsGoodHeap($Heap) } 
      { _module.Object.i($Heap, this), _module.WorkerMethod.i($Heap, this), $IsGoodHeap($Heap) } 
    _module.WorkerMethod.i#canCall($Heap, this)
         || (5 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.WorkerMethod()))
       ==> _module.Object.i($Heap, this) == _module.WorkerMethod.i($Heap, this));

procedure {:verboseName "WorkerMethod.i (well-formedness)"} CheckWellformed$$_module.WorkerMethod.i(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod.i (well-formedness)"} CheckWellformed$$_module.WorkerMethod.i(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
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

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && $Unbox(read($Heap, $o, alloc)): bool
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Object.i0#canCall($Heap, this);
        if (_module.Object.i0($Heap, this))
        {
            b$reqreads#1 := $_ReadsFrame[this, _module.WorkerMethod.next__stmt];
            if (LitInt(1) <= $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int)
            {
                b$reqreads#2 := $_ReadsFrame[this, _module.WorkerMethod.next__stmt];
            }
        }

        if (_module.Object.i0($Heap, this)
           && 
          LitInt(1) <= $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int
           && $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int <= LitInt(4))
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.WorkerMethod.counter];
            assert {:id "id219"} $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref != null;
        }

        if (_module.Object.i0($Heap, this)
           && 
          LitInt(1) <= $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int
           && $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int <= LitInt(4)
           && _module.Object.universe(this)
             == _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref))
        {
            b$reqreads#4 := $_ReadsFrame[this, _module.WorkerMethod.counter];
            assert {:id "id220"} $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.WorkerMethod.counter), 
              Tclass._module.ArcAtomicIsize?(), 
              $Heap);
            b$reqreads#5 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && $Unbox(read($Heap, $o, alloc)): bool
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.ArcAtomicIsize.i#canCall($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref);
        }

        if (_module.Object.i0($Heap, this)
           && 
          LitInt(1) <= $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int
           && $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int <= LitInt(4)
           && _module.Object.universe(this)
             == _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
           && _module.ArcAtomicIsize.i($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref))
        {
            b$reqreads#6 := $_ReadsFrame[this, _module.WorkerMethod.next__stmt];
            if ($Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int > 1)
            {
                b$reqreads#7 := $_ReadsFrame[this, _module.WorkerMethod.initial__value];
                b$reqreads#8 := $_ReadsFrame[this, _module.WorkerMethod.counter];
                assert {:id "id221"} $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref != null;
                b$reqreads#9 := $_ReadsFrame[$Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, _module.ArcAtomicIsize.data];
            }
        }

        if (_module.Object.i0($Heap, this)
           && 
          LitInt(1) <= $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int
           && $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int <= LitInt(4)
           && _module.Object.universe(this)
             == _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
           && _module.ArcAtomicIsize.i($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
           && ($Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int > 1
             ==> $Unbox(read($Heap, this, _module.WorkerMethod.initial__value)): int
               <= $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, 
                  _module.ArcAtomicIsize.data)): int))
        {
            b$reqreads#10 := $_ReadsFrame[this, _module.WorkerMethod.next__stmt];
            if ($Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int > 2)
            {
                b$reqreads#11 := $_ReadsFrame[this, _module.WorkerMethod.initial__value];
                b$reqreads#12 := $_ReadsFrame[this, _module.WorkerMethod.final__value];
                if ($Unbox(read($Heap, this, _module.WorkerMethod.initial__value)): int
                   <= $Unbox(read($Heap, this, _module.WorkerMethod.final__value)): int)
                {
                    b$reqreads#13 := $_ReadsFrame[this, _module.WorkerMethod.final__value];
                    b$reqreads#14 := $_ReadsFrame[this, _module.WorkerMethod.counter];
                    assert {:id "id222"} $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref != null;
                    b$reqreads#15 := $_ReadsFrame[$Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, _module.ArcAtomicIsize.data];
                }
            }
        }

        assume {:id "id223"} _module.WorkerMethod.i($Heap, this)
           == (
            _module.Object.i0($Heap, this)
             && 
            LitInt(1) <= $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int
             && $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int <= LitInt(4)
             && _module.Object.universe(this)
               == _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
             && _module.ArcAtomicIsize.i($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
             && ($Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int > 1
               ==> $Unbox(read($Heap, this, _module.WorkerMethod.initial__value)): int
                 <= $Unbox(read($Heap, 
                    $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, 
                    _module.ArcAtomicIsize.data)): int)
             && ($Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int > 2
               ==> $Unbox(read($Heap, this, _module.WorkerMethod.initial__value)): int
                   <= $Unbox(read($Heap, this, _module.WorkerMethod.final__value)): int
                 && $Unbox(read($Heap, this, _module.WorkerMethod.final__value)): int
                   <= $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, 
                      _module.ArcAtomicIsize.data)): int));
        assume _module.Object.i0#canCall($Heap, this)
           && (_module.Object.i0($Heap, this)
             ==> 
            LitInt(1) <= $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int
               && $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int <= LitInt(4)
             ==> 
            _module.Object.universe(this)
               == _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
             ==> _module.ArcAtomicIsize.i#canCall($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.WorkerMethod.i($Heap, this), TBool);
        assert {:id "id224"} b$reqreads#0;
        assert {:id "id225"} b$reqreads#1;
        assert {:id "id226"} b$reqreads#2;
        assert {:id "id227"} b$reqreads#3;
        assert {:id "id228"} b$reqreads#4;
        assert {:id "id229"} b$reqreads#5;
        assert {:id "id230"} b$reqreads#6;
        assert {:id "id231"} b$reqreads#7;
        assert {:id "id232"} b$reqreads#8;
        assert {:id "id233"} b$reqreads#9;
        assert {:id "id234"} b$reqreads#10;
        assert {:id "id235"} b$reqreads#11;
        assert {:id "id236"} b$reqreads#12;
        assert {:id "id237"} b$reqreads#13;
        assert {:id "id238"} b$reqreads#14;
        assert {:id "id239"} b$reqreads#15;
        return;

        assume false;
    }
}



procedure {:verboseName "WorkerMethod.i (override check)"} OverrideCheck$$_module.WorkerMethod.i(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod.i (override check)"} OverrideCheck$$_module.WorkerMethod.i(this: ref)
{
  var WorkerMethod_$_ReadsFrame: [ref,Field]bool;

    assert {:id "id240"} Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set));
    WorkerMethod_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    assert {:id "id241"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
}



// function declaration for _module.WorkerMethod.i2
function _module.WorkerMethod.i2($prevHeap: Heap, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.WorkerMethod.i2 (revealed)
axiom {:id "id242"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
    { _module.WorkerMethod.i2($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
    _module.WorkerMethod.i2#canCall($prevHeap, $Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.WorkerMethod())
           && $IsAlloc(this, Tclass._module.WorkerMethod(), $prevHeap))
       ==> ($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref
             == $Unbox(read($prevHeap, this, _module.WorkerMethod.counter)): ref
           ==> _module.ArcAtomicIsize.i2#canCall($prevHeap, $Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref))
         && _module.WorkerMethod.i2($prevHeap, $Heap, this)
           == (
            $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref
               == $Unbox(read($prevHeap, this, _module.WorkerMethod.counter)): ref
             && _module.ArcAtomicIsize.i2($prevHeap, $Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
             && $Unbox(read($prevHeap, this, _module.WorkerMethod.next__stmt)): int
               <= $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int));
}

function _module.WorkerMethod.i2#canCall($prevHeap: Heap, $heap: Heap, this: ref) : bool;

// frame axiom for _module.WorkerMethod.i2
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.WorkerMethod.i2($prevHeap, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.WorkerMethod())
       && $IsAlloc(this, Tclass._module.WorkerMethod(), $h0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.WorkerMethod.i2($prevHeap, $h0, this)
       == _module.WorkerMethod.i2($prevHeap, $h1, this));

function _module.WorkerMethod.i2#requires(Heap, Heap, ref) : bool;

// #requires axiom for _module.WorkerMethod.i2
axiom (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
  { _module.WorkerMethod.i2#requires($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.WorkerMethod())
       && $IsAlloc(this, Tclass._module.WorkerMethod(), $prevHeap)
     ==> _module.WorkerMethod.i2#requires($prevHeap, $Heap, this) == true);

// override axiom for _module.Object.i2 in class _module.WorkerMethod
axiom 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
    { _module.Object.i2($prevHeap, $Heap, this), $Is(this, Tclass._module.WorkerMethod()), $IsGoodHeap($Heap) } 
      { _module.Object.i2($prevHeap, $Heap, this), _module.WorkerMethod.i2($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
    _module.WorkerMethod.i2#canCall($prevHeap, $Heap, this)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.WorkerMethod()))
       ==> _module.Object.i2($prevHeap, $Heap, this)
         == _module.WorkerMethod.i2($prevHeap, $Heap, this));

procedure {:verboseName "WorkerMethod.i2 (well-formedness)"} CheckWellformed$$_module.WorkerMethod.i2(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), previous$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod.i2 (well-formedness)"} CheckWellformed$$_module.WorkerMethod.i2(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#0 := $_ReadsFrame[this, _module.WorkerMethod.counter];
        assert {:id "id243"} $IsAlloc(this, Tclass._module.WorkerMethod(), old($Heap));
        if ($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref
           == $Unbox(read(old($Heap), this, _module.WorkerMethod.counter)): ref)
        {
            b$reqreads#1 := $_ReadsFrame[this, _module.WorkerMethod.counter];
            assert {:id "id244"} $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.WorkerMethod.counter), 
              Tclass._module.ArcAtomicIsize?(), 
              $Heap);
            assert {:id "id245"} $IsAlloc($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, 
              Tclass._module.ArcAtomicIsize(), 
              old($Heap));
            b$reqreads#2 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && $Unbox(read($Heap, $o, alloc)): bool
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.ArcAtomicIsize.i2#canCall(old($Heap), $Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref);
        }

        if ($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref
             == $Unbox(read(old($Heap), this, _module.WorkerMethod.counter)): ref
           && _module.ArcAtomicIsize.i2(old($Heap), $Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref))
        {
            assert {:id "id246"} $IsAlloc(this, Tclass._module.WorkerMethod(), old($Heap));
            b$reqreads#3 := $_ReadsFrame[this, _module.WorkerMethod.next__stmt];
        }

        assume {:id "id247"} _module.WorkerMethod.i2(old($Heap), $Heap, this)
           == (
            $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref
               == $Unbox(read(old($Heap), this, _module.WorkerMethod.counter)): ref
             && _module.ArcAtomicIsize.i2(old($Heap), $Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
             && $Unbox(read(old($Heap), this, _module.WorkerMethod.next__stmt)): int
               <= $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int);
        assume $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref
             == $Unbox(read(old($Heap), this, _module.WorkerMethod.counter)): ref
           ==> _module.ArcAtomicIsize.i2#canCall(old($Heap), $Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.WorkerMethod.i2(old($Heap), $Heap, this), TBool);
        assert {:id "id248"} b$reqreads#0;
        assert {:id "id249"} b$reqreads#1;
        assert {:id "id250"} b$reqreads#2;
        assert {:id "id251"} b$reqreads#3;
        return;

        assume false;
    }
}



procedure {:verboseName "WorkerMethod.i2 (override check)"} OverrideCheck$$_module.WorkerMethod.i2(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), current$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod.i2 (override check)"} OverrideCheck$$_module.WorkerMethod.i2(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var WorkerMethod_$_ReadsFrame: [ref,Field]bool;

    $Heap := current$Heap;
    assert {:id "id252"} Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set));
    WorkerMethod_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    assert {:id "id253"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
}



procedure {:verboseName "WorkerMethod.adm (well-formedness)"} CheckWellFormed$$_module.WorkerMethod.adm(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), previous$Heap));
  free requires 10 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod.adm (well-formedness)"} CheckWellFormed$$_module.WorkerMethod.adm(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: adm, CheckWellFormed$$_module.WorkerMethod.adm
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
    assert {:id "id254"} $IsAlloc(this, Tclass._module.WorkerMethod(), old($Heap));
    assume _module.Object.admPre#canCall(old($Heap), $Heap, this);
    assume {:id "id255"} _module.Object.admPre(old($Heap), $Heap, this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.WorkerMethod?(), $Heap);
    assert {:id "id256"} $IsAlloc(this, Tclass._module.WorkerMethod(), old($Heap));
    assume _module.WorkerMethod.i2#canCall(old($Heap), $Heap, this);
    assume {:id "id257"} _module.WorkerMethod.i2(old($Heap), $Heap, this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.WorkerMethod?(), $Heap);
    assume _module.WorkerMethod.i#canCall($Heap, this);
    assume {:id "id258"} _module.WorkerMethod.i($Heap, this);
}



procedure {:verboseName "WorkerMethod.adm (override check)"} OverrideCheck$$_module.WorkerMethod.adm(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), previous$Heap));
  free requires 10 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod.adm (override check)"} OverrideCheck$$_module.WorkerMethod.adm(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
    $Heap := current$Heap;
    assume {:id "id259"} _module.Object.admPre(old($Heap), $Heap, this);
    assert {:id "id260"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Object.i0#canCall($Heap, this)
           ==> _module.Object.i0($Heap, this)
             || Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
              $Box(this)));
    assert {:id "id261"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Object.i0#canCall($Heap, this)
           ==> _module.Object.i0($Heap, this)
             || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
               ==> _module.Universe.i0($Heap, _module.Object.universe(this))
                 || (forall o#0: ref :: 
                  { _module.__default.upCast(o#0) } 
                    { _module.Object.universe(o#0) } 
                    { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#0)) } 
                  $Is(o#0, Tclass._module.Object())
                       && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#0))
                     ==> _module.Object.universe(o#0) == _module.Object.universe(this)
                       && _module.__default.upCast(o#0) != _module.Object.universe(this))));
    assert {:id "id262"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Object.i0#canCall(old($Heap), this)
           ==> _module.Object.i0(old($Heap), this)
             || Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
              $Box(this)));
    assert {:id "id263"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Object.i0#canCall(old($Heap), this)
           ==> _module.Object.i0(old($Heap), this)
             || (_module.Universe.i0#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i0(old($Heap), _module.Object.universe(this))
                 || (forall o#1: ref :: 
                  { _module.__default.upCast(o#1) } 
                    { _module.Object.universe(o#1) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#1)) } 
                  $Is(o#1, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#1))
                     ==> _module.Object.universe(o#1) == _module.Object.universe(this)
                       && _module.__default.upCast(o#1) != _module.Object.universe(this))));
    assert {:id "id264"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
           ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
             || (_module.Universe.i0#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i0(old($Heap), _module.Object.universe(this))
                 || (forall o#2: ref :: 
                  { _module.__default.upCast(o#2) } 
                    { _module.Object.universe(o#2) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#2)) } 
                  $Is(o#2, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#2))
                     ==> _module.Object.universe(o#2) == _module.Object.universe(this)
                       && _module.__default.upCast(o#2) != _module.Object.universe(this))));
    assert {:id "id265"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
           ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
             || (forall o#3: ref :: 
              { _module.Object.i(old($Heap), o#3) } 
                { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#3)) } 
              $Is(o#3, Tclass._module.Object())
                   && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#3))
                 ==> _module.Object.i(old($Heap), o#3)));
    assert {:id "id266"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == this ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    assert {:id "id267"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.legal#canCall(old($Heap), $Heap, _module.Object.universe(this))
           ==> _module.Universe.legal(old($Heap), $Heap, _module.Object.universe(this))
             || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
                 || (_module.Universe.i0#canCall(old($Heap), _module.Object.universe(this))
                   ==> _module.Universe.i0(old($Heap), _module.Object.universe(this))
                     || (forall o#4: ref :: 
                      { _module.__default.upCast(o#4) } 
                        { _module.Object.universe(o#4) } 
                        { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                          $Box(o#4)) } 
                      $Is(o#4, Tclass._module.Object())
                           && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                            $Box(o#4))
                         ==> _module.Object.universe(o#4) == _module.Object.universe(this)
                           && _module.__default.upCast(o#4) != _module.Object.universe(this)))));
    assert {:id "id268"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.legal#canCall(old($Heap), $Heap, _module.Object.universe(this))
           ==> _module.Universe.legal(old($Heap), $Heap, _module.Object.universe(this))
             || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
                 || (forall o#5: ref :: 
                  { _module.Object.i(old($Heap), o#5) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#5)) } 
                  $Is(o#5, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#5))
                     ==> _module.Object.i(old($Heap), o#5))));
    assert {:id "id269"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.legal#canCall(old($Heap), $Heap, _module.Object.universe(this))
           ==> _module.Universe.legal(old($Heap), $Heap, _module.Object.universe(this))
             || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
               ==> _module.Universe.i0($Heap, _module.Object.universe(this))
                 || (forall o#6: ref :: 
                  { _module.__default.upCast(o#6) } 
                    { _module.Object.universe(o#6) } 
                    { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#6)) } 
                  $Is(o#6, Tclass._module.Object())
                       && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#6))
                     ==> _module.Object.universe(o#6) == _module.Object.universe(this)
                       && _module.__default.upCast(o#6) != _module.Object.universe(this))));
    assert {:id "id270"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.legal#canCall(old($Heap), $Heap, _module.Object.universe(this))
           ==> _module.Universe.legal(old($Heap), $Heap, _module.Object.universe(this))
             || Set#Subset($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
              $Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set));
    assert {:id "id271"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.legal#canCall(old($Heap), $Heap, _module.Object.universe(this))
           ==> _module.Universe.legal(old($Heap), $Heap, _module.Object.universe(this))
             || (_module.Universe.legal0#canCall(old($Heap), $Heap, _module.Object.universe(this))
               ==> _module.Universe.legal0(old($Heap), $Heap, _module.Object.universe(this))
                 || (forall o#7: ref :: 
                  { _module.Object.i($Heap, o#7) } 
                    { _module.Object.i2(old($Heap), $Heap, o#7) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#7)) } 
                  $Is(o#7, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#7))
                     ==> ((forall $o: ref, $f: Field :: 
                          { read($Heap, $o, $f) } 
                          $o != null ==> $o == o#7 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
                         || _module.Object.i2(old($Heap), $Heap, o#7))
                       && ((forall $o: ref, $f: Field :: 
                          { read($Heap, $o, $f) } 
                          $o != null ==> $o == o#7 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
                         || _module.Object.i($Heap, o#7)))));
    assert {:id "id272"} _module.Object.admPre#canCall(old($Heap), $Heap, this)
       ==> _module.Object.admPre(old($Heap), $Heap, this)
         || (_module.Universe.legal#canCall(old($Heap), $Heap, _module.Object.universe(this))
           ==> _module.Universe.legal(old($Heap), $Heap, _module.Object.universe(this))
             || (_module.Universe.legal1#canCall(old($Heap), $Heap, _module.Object.universe(this))
               ==> _module.Universe.legal1(old($Heap), $Heap, _module.Object.universe(this))
                 || (forall o#8: ref :: 
                  { _module.Object.i($Heap, o#8) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#8)) } 
                    { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#8)) } 
                  $Is(o#8, Tclass._module.Object())
                       && 
                      Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#8))
                       && !Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#8))
                     ==> _module.Object.i($Heap, o#8))));
    assert {:id "id273"} true;
    assert {:id "id274"} (forall $o: ref, $f: Field :: true);
    assert {:id "id275"} (forall $o: ref, $f: Field :: true);
    assume {:id "id276"} _module.WorkerMethod.i2(old($Heap), $Heap, this)
       && _module.WorkerMethod.i($Heap, this);
    assert {:id "id277"} _module.WorkerMethod.i2#canCall(old($Heap), $Heap, this)
       ==> _module.WorkerMethod.i2(old($Heap), $Heap, this)
         || $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref
           == $Unbox(read(old($Heap), this, _module.WorkerMethod.counter)): ref;
    assert {:id "id278"} _module.WorkerMethod.i2#canCall(old($Heap), $Heap, this)
       ==> _module.WorkerMethod.i2(old($Heap), $Heap, this)
         || (_module.ArcAtomicIsize.i2#canCall(old($Heap), $Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
           ==> _module.ArcAtomicIsize.i2(old($Heap), $Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
             || Lit(true));
    assert {:id "id279"} _module.WorkerMethod.i2#canCall(old($Heap), $Heap, this)
       ==> _module.WorkerMethod.i2(old($Heap), $Heap, this)
         || (_module.ArcAtomicIsize.i2#canCall(old($Heap), $Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
           ==> _module.ArcAtomicIsize.i2(old($Heap), $Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
             || $Unbox(read(old($Heap), 
                  $Unbox(read(old($Heap), this, _module.WorkerMethod.counter)): ref, 
                  _module.ArcAtomicIsize.data)): int
               <= $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, 
                  _module.ArcAtomicIsize.data)): int);
    assert {:id "id280"} _module.WorkerMethod.i2#canCall(old($Heap), $Heap, this)
       ==> _module.WorkerMethod.i2(old($Heap), $Heap, this)
         || $Unbox(read(old($Heap), this, _module.WorkerMethod.next__stmt)): int
           <= $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int;
    assert {:id "id281"} _module.WorkerMethod.i#canCall($Heap, this)
       ==> _module.WorkerMethod.i($Heap, this)
         || (_module.Object.i0#canCall($Heap, this)
           ==> _module.Object.i0($Heap, this)
             || Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
              $Box(this)));
    assert {:id "id282"} _module.WorkerMethod.i#canCall($Heap, this)
       ==> _module.WorkerMethod.i($Heap, this)
         || (_module.Object.i0#canCall($Heap, this)
           ==> _module.Object.i0($Heap, this)
             || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
               ==> _module.Universe.i0($Heap, _module.Object.universe(this))
                 || (forall o#9: ref :: 
                  { _module.__default.upCast(o#9) } 
                    { _module.Object.universe(o#9) } 
                    { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#9)) } 
                  $Is(o#9, Tclass._module.Object())
                       && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#9))
                     ==> _module.Object.universe(o#9) == _module.Object.universe(this)
                       && _module.__default.upCast(o#9) != _module.Object.universe(this))));
    assert {:id "id283"} _module.WorkerMethod.i#canCall($Heap, this)
       ==> _module.WorkerMethod.i($Heap, this)
         || LitInt(1) <= $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int;
    assert {:id "id284"} _module.WorkerMethod.i#canCall($Heap, this)
       ==> _module.WorkerMethod.i($Heap, this)
         || $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int <= LitInt(4);
    assert {:id "id285"} _module.WorkerMethod.i#canCall($Heap, this)
       ==> _module.WorkerMethod.i($Heap, this)
         || _module.Object.universe(this)
           == _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref);
    assert {:id "id286"} _module.WorkerMethod.i#canCall($Heap, this)
       ==> _module.WorkerMethod.i($Heap, this)
         || (_module.ArcAtomicIsize.i#canCall($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
           ==> _module.ArcAtomicIsize.i($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
             || Lit(true));
    assert {:id "id287"} _module.WorkerMethod.i#canCall($Heap, this)
       ==> _module.WorkerMethod.i($Heap, this)
         || (_module.ArcAtomicIsize.i#canCall($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
           ==> _module.ArcAtomicIsize.i($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
             || (_module.Object.i0#canCall($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
               ==> _module.Object.i0($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
                 || Set#IsMember($Unbox(read($Heap, 
                      _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref), 
                      _module.Universe.content)): Set, 
                  read($Heap, this, _module.WorkerMethod.counter))));
    assert {:id "id288"} _module.WorkerMethod.i#canCall($Heap, this)
       ==> _module.WorkerMethod.i($Heap, this)
         || (_module.ArcAtomicIsize.i#canCall($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
           ==> _module.ArcAtomicIsize.i($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
             || (_module.Object.i0#canCall($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
               ==> _module.Object.i0($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
                 || (_module.Universe.i0#canCall($Heap, 
                    _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref))
                   ==> _module.Universe.i0($Heap, 
                      _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref))
                     || (forall o#10: ref :: 
                      { _module.__default.upCast(o#10) } 
                        { _module.Object.universe(o#10) } 
                        { Set#IsMember($Unbox(read($Heap, 
                              _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref), 
                              _module.Universe.content)): Set, 
                          $Box(o#10)) } 
                      $Is(o#10, Tclass._module.Object())
                           && Set#IsMember($Unbox(read($Heap, 
                                _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref), 
                                _module.Universe.content)): Set, 
                            $Box(o#10))
                         ==> _module.Object.universe(o#10)
                             == _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
                           && _module.__default.upCast(o#10)
                             != _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)))));
    assert {:id "id289"} _module.WorkerMethod.i#canCall($Heap, this)
       ==> _module.WorkerMethod.i($Heap, this)
         || ($Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int > 1
           ==> $Unbox(read($Heap, this, _module.WorkerMethod.initial__value)): int
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, 
                _module.ArcAtomicIsize.data)): int);
    assert {:id "id290"} _module.WorkerMethod.i#canCall($Heap, this)
       ==> _module.WorkerMethod.i($Heap, this)
         || ($Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int > 2
           ==> $Unbox(read($Heap, this, _module.WorkerMethod.initial__value)): int
             <= $Unbox(read($Heap, this, _module.WorkerMethod.final__value)): int);
    assert {:id "id291"} _module.WorkerMethod.i#canCall($Heap, this)
       ==> _module.WorkerMethod.i($Heap, this)
         || ($Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int > 2
           ==> $Unbox(read($Heap, this, _module.WorkerMethod.final__value)): int
             <= $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, 
                _module.ArcAtomicIsize.data)): int);
}



procedure {:verboseName "WorkerMethod.adm (call)"} Call$$_module.WorkerMethod.adm(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), previous$Heap));
  // user-defined preconditions
  requires {:id "id292"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Object.i0#canCall(current$Heap, this)
         ==> _module.Object.i0(current$Heap, this)
           || Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  requires {:id "id293"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Object.i0#canCall(current$Heap, this)
         ==> _module.Object.i0(current$Heap, this)
           || (_module.Universe.i0#canCall(current$Heap, _module.Object.universe(this))
             ==> _module.Universe.i0(current$Heap, _module.Object.universe(this))
               || (forall o#11: ref :: 
                { _module.__default.upCast(o#11) } 
                  { _module.Object.universe(o#11) } 
                  { Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#11)) } 
                $Is(o#11, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#11))
                   ==> _module.Object.universe(o#11) == _module.Object.universe(this)
                     && _module.__default.upCast(o#11) != _module.Object.universe(this))));
  requires {:id "id294"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Object.i0#canCall(previous$Heap, this)
         ==> _module.Object.i0(previous$Heap, this)
           || Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  requires {:id "id295"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Object.i0#canCall(previous$Heap, this)
         ==> _module.Object.i0(previous$Heap, this)
           || (_module.Universe.i0#canCall(previous$Heap, _module.Object.universe(this))
             ==> _module.Universe.i0(previous$Heap, _module.Object.universe(this))
               || (forall o#12: ref :: 
                { _module.__default.upCast(o#12) } 
                  { _module.Object.universe(o#12) } 
                  { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#12)) } 
                $Is(o#12, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#12))
                   ==> _module.Object.universe(o#12) == _module.Object.universe(this)
                     && _module.__default.upCast(o#12) != _module.Object.universe(this))));
  requires {:id "id296"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.i#canCall(previous$Heap, _module.Object.universe(this))
         ==> _module.Universe.i(previous$Heap, _module.Object.universe(this))
           || (_module.Universe.i0#canCall(previous$Heap, _module.Object.universe(this))
             ==> _module.Universe.i0(previous$Heap, _module.Object.universe(this))
               || (forall o#13: ref :: 
                { _module.__default.upCast(o#13) } 
                  { _module.Object.universe(o#13) } 
                  { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#13)) } 
                $Is(o#13, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#13))
                   ==> _module.Object.universe(o#13) == _module.Object.universe(this)
                     && _module.__default.upCast(o#13) != _module.Object.universe(this))));
  requires {:id "id297"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.i#canCall(previous$Heap, _module.Object.universe(this))
         ==> _module.Universe.i(previous$Heap, _module.Object.universe(this))
           || (forall o#14: ref :: 
            { _module.Object.i(previous$Heap, o#14) } 
              { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#14)) } 
            $Is(o#14, Tclass._module.Object())
                 && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#14))
               ==> _module.Object.i(previous$Heap, o#14)));
  requires {:id "id298"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (forall $o: ref, $f: Field :: 
        { read(current$Heap, $o, $f) } 
        $o != null
           ==> 
          $o == this
           ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f));
  requires {:id "id299"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || (_module.Universe.i#canCall(previous$Heap, _module.Object.universe(this))
             ==> _module.Universe.i(previous$Heap, _module.Object.universe(this))
               || (_module.Universe.i0#canCall(previous$Heap, _module.Object.universe(this))
                 ==> _module.Universe.i0(previous$Heap, _module.Object.universe(this))
                   || (forall o#15: ref :: 
                    { _module.__default.upCast(o#15) } 
                      { _module.Object.universe(o#15) } 
                      { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#15)) } 
                    $Is(o#15, Tclass._module.Object())
                         && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                          $Box(o#15))
                       ==> _module.Object.universe(o#15) == _module.Object.universe(this)
                         && _module.__default.upCast(o#15) != _module.Object.universe(this)))));
  requires {:id "id300"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || (_module.Universe.i#canCall(previous$Heap, _module.Object.universe(this))
             ==> _module.Universe.i(previous$Heap, _module.Object.universe(this))
               || (forall o#16: ref :: 
                { _module.Object.i(previous$Heap, o#16) } 
                  { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#16)) } 
                $Is(o#16, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#16))
                   ==> _module.Object.i(previous$Heap, o#16))));
  requires {:id "id301"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || (_module.Universe.i0#canCall(current$Heap, _module.Object.universe(this))
             ==> _module.Universe.i0(current$Heap, _module.Object.universe(this))
               || (forall o#17: ref :: 
                { _module.__default.upCast(o#17) } 
                  { _module.Object.universe(o#17) } 
                  { Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#17)) } 
                $Is(o#17, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#17))
                   ==> _module.Object.universe(o#17) == _module.Object.universe(this)
                     && _module.__default.upCast(o#17) != _module.Object.universe(this))));
  requires {:id "id302"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || Set#Subset($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set));
  requires {:id "id303"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || (_module.Universe.legal0#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
             ==> _module.Universe.legal0(previous$Heap, current$Heap, _module.Object.universe(this))
               || (forall o#18: ref :: 
                { _module.Object.i(current$Heap, o#18) } 
                  { _module.Object.i2(previous$Heap, current$Heap, o#18) } 
                  { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#18)) } 
                $Is(o#18, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#18))
                   ==> ((forall $o: ref, $f: Field :: 
                        { read(current$Heap, $o, $f) } 
                        $o != null
                           ==> 
                          $o == o#18
                           ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f))
                       || _module.Object.i2(previous$Heap, current$Heap, o#18))
                     && ((forall $o: ref, $f: Field :: 
                        { read(current$Heap, $o, $f) } 
                        $o != null
                           ==> 
                          $o == o#18
                           ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f))
                       || _module.Object.i(current$Heap, o#18)))));
  requires {:id "id304"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     ==> _module.Object.admPre(previous$Heap, current$Heap, this)
       || (_module.Universe.legal#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
         ==> _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this))
           || (_module.Universe.legal1#canCall(previous$Heap, current$Heap, _module.Object.universe(this))
             ==> _module.Universe.legal1(previous$Heap, current$Heap, _module.Object.universe(this))
               || (forall o#19: ref :: 
                { _module.Object.i(current$Heap, o#19) } 
                  { Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#19)) } 
                  { Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#19)) } 
                $Is(o#19, Tclass._module.Object())
                     && 
                    Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#19))
                     && !Set#IsMember($Unbox(read(previous$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#19))
                   ==> _module.Object.i(current$Heap, o#19))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.WorkerMethod.i2#canCall(previous$Heap, current$Heap, this)
     && (_module.WorkerMethod.i2(previous$Heap, current$Heap, this)
       ==> _module.WorkerMethod.i#canCall(current$Heap, this));
  free ensures {:id "id305"} _module.WorkerMethod.i2#canCall(previous$Heap, current$Heap, this)
     && 
    _module.WorkerMethod.i2(previous$Heap, current$Heap, this)
     && 
    $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref
       == $Unbox(read(previous$Heap, this, _module.WorkerMethod.counter)): ref
     && _module.ArcAtomicIsize.i2(previous$Heap, 
      current$Heap, 
      $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
     && $Unbox(read(previous$Heap, this, _module.WorkerMethod.next__stmt)): int
       <= $Unbox(read(current$Heap, this, _module.WorkerMethod.next__stmt)): int;
  free ensures {:id "id306"} _module.WorkerMethod.i#canCall(current$Heap, this)
     && 
    _module.WorkerMethod.i(current$Heap, this)
     && 
    _module.Object.i0(current$Heap, this)
     && 
    LitInt(1)
       <= $Unbox(read(current$Heap, this, _module.WorkerMethod.next__stmt)): int
     && $Unbox(read(current$Heap, this, _module.WorkerMethod.next__stmt)): int
       <= LitInt(4)
     && _module.Object.universe(this)
       == _module.Object.universe($Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
     && _module.ArcAtomicIsize.i(current$Heap, 
      $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
     && ($Unbox(read(current$Heap, this, _module.WorkerMethod.next__stmt)): int > 1
       ==> $Unbox(read(current$Heap, this, _module.WorkerMethod.initial__value)): int
         <= $Unbox(read(current$Heap, 
            $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref, 
            _module.ArcAtomicIsize.data)): int)
     && ($Unbox(read(current$Heap, this, _module.WorkerMethod.next__stmt)): int > 2
       ==> $Unbox(read(current$Heap, this, _module.WorkerMethod.initial__value)): int
           <= $Unbox(read(current$Heap, this, _module.WorkerMethod.final__value)): int
         && $Unbox(read(current$Heap, this, _module.WorkerMethod.final__value)): int
           <= $Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref, 
              _module.ArcAtomicIsize.data)): int);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "WorkerMethod.adm (correctness)"} Impl$$_module.WorkerMethod.adm(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 10 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  // user-defined preconditions
  free requires {:id "id307"} _module.Object.admPre#canCall(previous$Heap, current$Heap, this)
     && 
    _module.Object.admPre(previous$Heap, current$Heap, this)
     && 
    _module.Object.i0(current$Heap, this)
     && 
    _module.Object.i0(previous$Heap, this)
     && _module.Universe.i(previous$Heap, _module.Object.universe(this))
     && (forall $o: ref, $f: Field :: 
      { read(current$Heap, $o, $f) } 
      $o != null
         ==> 
        $o == this
         ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f))
     && _module.Universe.legal(previous$Heap, current$Heap, _module.Object.universe(this));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.WorkerMethod.i2#canCall(previous$Heap, current$Heap, this)
     && (_module.WorkerMethod.i2(previous$Heap, current$Heap, this)
       ==> _module.WorkerMethod.i#canCall(current$Heap, this));
  ensures {:id "id308"} _module.WorkerMethod.i2#canCall(previous$Heap, current$Heap, this)
     ==> _module.WorkerMethod.i2(previous$Heap, current$Heap, this)
       || $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref
         == $Unbox(read(previous$Heap, this, _module.WorkerMethod.counter)): ref;
  ensures {:id "id309"} _module.WorkerMethod.i2#canCall(previous$Heap, current$Heap, this)
     ==> _module.WorkerMethod.i2(previous$Heap, current$Heap, this)
       || (_module.ArcAtomicIsize.i2#canCall(previous$Heap, 
          current$Heap, 
          $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
         ==> _module.ArcAtomicIsize.i2(previous$Heap, 
            current$Heap, 
            $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
           || Lit(true));
  ensures {:id "id310"} _module.WorkerMethod.i2#canCall(previous$Heap, current$Heap, this)
     ==> _module.WorkerMethod.i2(previous$Heap, current$Heap, this)
       || (_module.ArcAtomicIsize.i2#canCall(previous$Heap, 
          current$Heap, 
          $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
         ==> _module.ArcAtomicIsize.i2(previous$Heap, 
            current$Heap, 
            $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
           || $Unbox(read(previous$Heap, 
                $Unbox(read(previous$Heap, this, _module.WorkerMethod.counter)): ref, 
                _module.ArcAtomicIsize.data)): int
             <= $Unbox(read(current$Heap, 
                $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref, 
                _module.ArcAtomicIsize.data)): int);
  ensures {:id "id311"} _module.WorkerMethod.i2#canCall(previous$Heap, current$Heap, this)
     ==> _module.WorkerMethod.i2(previous$Heap, current$Heap, this)
       || $Unbox(read(previous$Heap, this, _module.WorkerMethod.next__stmt)): int
         <= $Unbox(read(current$Heap, this, _module.WorkerMethod.next__stmt)): int;
  ensures {:id "id312"} _module.WorkerMethod.i#canCall(current$Heap, this)
     ==> _module.WorkerMethod.i(current$Heap, this)
       || (_module.Object.i0#canCall(current$Heap, this)
         ==> _module.Object.i0(current$Heap, this)
           || Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  ensures {:id "id313"} _module.WorkerMethod.i#canCall(current$Heap, this)
     ==> _module.WorkerMethod.i(current$Heap, this)
       || (_module.Object.i0#canCall(current$Heap, this)
         ==> _module.Object.i0(current$Heap, this)
           || (_module.Universe.i0#canCall(current$Heap, _module.Object.universe(this))
             ==> _module.Universe.i0(current$Heap, _module.Object.universe(this))
               || (forall o#31: ref :: 
                { _module.__default.upCast(o#31) } 
                  { _module.Object.universe(o#31) } 
                  { Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#31)) } 
                $Is(o#31, Tclass._module.Object())
                     && Set#IsMember($Unbox(read(current$Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#31))
                   ==> _module.Object.universe(o#31) == _module.Object.universe(this)
                     && _module.__default.upCast(o#31) != _module.Object.universe(this))));
  ensures {:id "id314"} _module.WorkerMethod.i#canCall(current$Heap, this)
     ==> _module.WorkerMethod.i(current$Heap, this)
       || LitInt(1)
         <= $Unbox(read(current$Heap, this, _module.WorkerMethod.next__stmt)): int;
  ensures {:id "id315"} _module.WorkerMethod.i#canCall(current$Heap, this)
     ==> _module.WorkerMethod.i(current$Heap, this)
       || $Unbox(read(current$Heap, this, _module.WorkerMethod.next__stmt)): int
         <= LitInt(4);
  ensures {:id "id316"} _module.WorkerMethod.i#canCall(current$Heap, this)
     ==> _module.WorkerMethod.i(current$Heap, this)
       || _module.Object.universe(this)
         == _module.Object.universe($Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref);
  ensures {:id "id317"} _module.WorkerMethod.i#canCall(current$Heap, this)
     ==> _module.WorkerMethod.i(current$Heap, this)
       || (_module.ArcAtomicIsize.i#canCall(current$Heap, 
          $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
         ==> _module.ArcAtomicIsize.i(current$Heap, 
            $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
           || Lit(true));
  ensures {:id "id318"} _module.WorkerMethod.i#canCall(current$Heap, this)
     ==> _module.WorkerMethod.i(current$Heap, this)
       || (_module.ArcAtomicIsize.i#canCall(current$Heap, 
          $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
         ==> _module.ArcAtomicIsize.i(current$Heap, 
            $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
           || (_module.Object.i0#canCall(current$Heap, 
              $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
             ==> _module.Object.i0(current$Heap, 
                $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
               || Set#IsMember($Unbox(read(current$Heap, 
                    _module.Object.universe($Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref), 
                    _module.Universe.content)): Set, 
                read(current$Heap, this, _module.WorkerMethod.counter))));
  ensures {:id "id319"} _module.WorkerMethod.i#canCall(current$Heap, this)
     ==> _module.WorkerMethod.i(current$Heap, this)
       || (_module.ArcAtomicIsize.i#canCall(current$Heap, 
          $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
         ==> _module.ArcAtomicIsize.i(current$Heap, 
            $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
           || (_module.Object.i0#canCall(current$Heap, 
              $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
             ==> _module.Object.i0(current$Heap, 
                $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
               || (_module.Universe.i0#canCall(current$Heap, 
                  _module.Object.universe($Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref))
                 ==> _module.Universe.i0(current$Heap, 
                    _module.Object.universe($Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref))
                   || (forall o#32: ref :: 
                    { _module.__default.upCast(o#32) } 
                      { _module.Object.universe(o#32) } 
                      { Set#IsMember($Unbox(read(current$Heap, 
                            _module.Object.universe($Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref), 
                            _module.Universe.content)): Set, 
                        $Box(o#32)) } 
                    $Is(o#32, Tclass._module.Object())
                         && Set#IsMember($Unbox(read(current$Heap, 
                              _module.Object.universe($Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref), 
                              _module.Universe.content)): Set, 
                          $Box(o#32))
                       ==> _module.Object.universe(o#32)
                           == _module.Object.universe($Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)
                         && _module.__default.upCast(o#32)
                           != _module.Object.universe($Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref)))));
  ensures {:id "id320"} _module.WorkerMethod.i#canCall(current$Heap, this)
     ==> _module.WorkerMethod.i(current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.WorkerMethod.next__stmt)): int > 1
         ==> $Unbox(read(current$Heap, this, _module.WorkerMethod.initial__value)): int
           <= $Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref, 
              _module.ArcAtomicIsize.data)): int);
  ensures {:id "id321"} _module.WorkerMethod.i#canCall(current$Heap, this)
     ==> _module.WorkerMethod.i(current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.WorkerMethod.next__stmt)): int > 2
         ==> $Unbox(read(current$Heap, this, _module.WorkerMethod.initial__value)): int
           <= $Unbox(read(current$Heap, this, _module.WorkerMethod.final__value)): int);
  ensures {:id "id322"} _module.WorkerMethod.i#canCall(current$Heap, this)
     ==> _module.WorkerMethod.i(current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.WorkerMethod.next__stmt)): int > 2
         ==> $Unbox(read(current$Heap, this, _module.WorkerMethod.final__value)): int
           <= $Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.WorkerMethod.counter)): ref, 
              _module.ArcAtomicIsize.data)): int);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod.adm (correctness)"} Impl$$_module.WorkerMethod.adm(previous$Heap: Heap, current$Heap: Heap, this: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: adm, Impl$$_module.WorkerMethod.adm
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "WorkerMethod._ctor (well-formedness)"} CheckWellFormed$$_module.WorkerMethod.__ctor(universe#0: ref
       where $Is(universe#0, Tclass._module.Universe())
         && $IsAlloc(universe#0, Tclass._module.Universe(), $Heap), 
    counter#0: ref
       where $Is(counter#0, Tclass._module.ArcAtomicIsize())
         && $IsAlloc(counter#0, Tclass._module.ArcAtomicIsize(), $Heap))
   returns (this: ref);
  free requires 13 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod._ctor (well-formedness)"} CheckWellFormed$$_module.WorkerMethod.__ctor(universe#0: ref, counter#0: ref) returns (this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: _ctor, CheckWellFormed$$_module.WorkerMethod.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == universe#0);
    assert {:id "id323"} universe#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(universe#0), Tclass._module.Universe?(), $Heap);
    assume _module.Universe.i#canCall($Heap, universe#0);
    assume {:id "id324"} _module.Universe.i($Heap, universe#0);
    assert {:id "id325"} counter#0 != null;
    assume {:id "id326"} universe#0 == _module.Object.universe(counter#0);
    assert {:id "id327"} counter#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(counter#0), Tclass._module.ArcAtomicIsize?(), $Heap);
    assume _module.ArcAtomicIsize.i#canCall($Heap, counter#0);
    assume {:id "id328"} _module.ArcAtomicIsize.i($Heap, counter#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == universe#0);
    assume $HeapSucc(old($Heap), $Heap);
    havoc this;
    assume this != null
       && 
      $Is(this, Tclass._module.WorkerMethod())
       && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.WorkerMethod?(), $Heap);
    assume _module.WorkerMethod.i#canCall($Heap, this);
    assume {:id "id329"} _module.WorkerMethod.i($Heap, this);
    assert {:id "id330"} universe#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(universe#0), Tclass._module.Universe?(), $Heap);
    assume _module.Universe.i#canCall($Heap, universe#0);
    assume {:id "id331"} _module.Universe.i($Heap, universe#0);
}



procedure {:verboseName "WorkerMethod._ctor (call)"} Call$$_module.WorkerMethod.__ctor(universe#0: ref
       where $Is(universe#0, Tclass._module.Universe())
         && $IsAlloc(universe#0, Tclass._module.Universe(), $Heap), 
    counter#0: ref
       where $Is(counter#0, Tclass._module.ArcAtomicIsize())
         && $IsAlloc(counter#0, Tclass._module.ArcAtomicIsize(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap));
  // user-defined preconditions
  requires {:id "id332"} _module.Universe.i#canCall($Heap, universe#0)
     ==> _module.Universe.i($Heap, universe#0)
       || (_module.Universe.i0#canCall($Heap, universe#0)
         ==> _module.Universe.i0($Heap, universe#0)
           || (forall o#0: ref :: 
            { _module.__default.upCast(o#0) } 
              { _module.Object.universe(o#0) } 
              { Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#0)) } 
            $Is(o#0, Tclass._module.Object())
                 && Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#0))
               ==> _module.Object.universe(o#0) == universe#0
                 && _module.__default.upCast(o#0) != universe#0));
  requires {:id "id333"} _module.Universe.i#canCall($Heap, universe#0)
     ==> _module.Universe.i($Heap, universe#0)
       || (forall o#1: ref :: 
        { _module.Object.i($Heap, o#1) } 
          { Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#1)) } 
        $Is(o#1, Tclass._module.Object())
             && Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#1))
           ==> _module.Object.i($Heap, o#1));
  requires {:id "id334"} universe#0 == _module.Object.universe(counter#0);
  requires {:id "id335"} _module.ArcAtomicIsize.i#canCall($Heap, counter#0)
     ==> _module.ArcAtomicIsize.i($Heap, counter#0) || Lit(true);
  requires {:id "id336"} _module.ArcAtomicIsize.i#canCall($Heap, counter#0)
     ==> _module.ArcAtomicIsize.i($Heap, counter#0)
       || (_module.Object.i0#canCall($Heap, counter#0)
         ==> _module.Object.i0($Heap, counter#0)
           || Set#IsMember($Unbox(read($Heap, _module.Object.universe(counter#0), _module.Universe.content)): Set, 
            $Box(counter#0)));
  requires {:id "id337"} _module.ArcAtomicIsize.i#canCall($Heap, counter#0)
     ==> _module.ArcAtomicIsize.i($Heap, counter#0)
       || (_module.Object.i0#canCall($Heap, counter#0)
         ==> _module.Object.i0($Heap, counter#0)
           || (_module.Universe.i0#canCall($Heap, _module.Object.universe(counter#0))
             ==> _module.Universe.i0($Heap, _module.Object.universe(counter#0))
               || (forall o#2: ref :: 
                { _module.__default.upCast(o#2) } 
                  { _module.Object.universe(o#2) } 
                  { Set#IsMember($Unbox(read($Heap, _module.Object.universe(counter#0), _module.Universe.content)): Set, 
                    $Box(o#2)) } 
                $Is(o#2, Tclass._module.Object())
                     && Set#IsMember($Unbox(read($Heap, _module.Object.universe(counter#0), _module.Universe.content)): Set, 
                      $Box(o#2))
                   ==> _module.Object.universe(o#2) == _module.Object.universe(counter#0)
                     && _module.__default.upCast(o#2) != _module.Object.universe(counter#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.WorkerMethod.i#canCall($Heap, this)
     && (_module.WorkerMethod.i($Heap, this)
       ==> _module.Universe.i#canCall($Heap, universe#0));
  free ensures {:id "id338"} _module.WorkerMethod.i#canCall($Heap, this)
     && 
    _module.WorkerMethod.i($Heap, this)
     && 
    _module.Object.i0($Heap, this)
     && 
    LitInt(1) <= $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int
     && $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int <= LitInt(4)
     && _module.Object.universe(this)
       == _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
     && _module.ArcAtomicIsize.i($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
     && ($Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int > 1
       ==> $Unbox(read($Heap, this, _module.WorkerMethod.initial__value)): int
         <= $Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, 
            _module.ArcAtomicIsize.data)): int)
     && ($Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int > 2
       ==> $Unbox(read($Heap, this, _module.WorkerMethod.initial__value)): int
           <= $Unbox(read($Heap, this, _module.WorkerMethod.final__value)): int
         && $Unbox(read($Heap, this, _module.WorkerMethod.final__value)): int
           <= $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, 
              _module.ArcAtomicIsize.data)): int);
  free ensures {:id "id339"} _module.Universe.i#canCall($Heap, universe#0)
     && 
    _module.Universe.i($Heap, universe#0)
     && 
    _module.Universe.i0($Heap, universe#0)
     && (forall o#6: ref :: 
      { _module.Object.i($Heap, o#6) } 
        { Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#6)) } 
      $Is(o#6, Tclass._module.Object())
           && Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#6))
         ==> _module.Object.i($Heap, o#6));
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == universe#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "WorkerMethod._ctor (correctness)"} Impl$$_module.WorkerMethod.__ctor(universe#0: ref
       where $Is(universe#0, Tclass._module.Universe())
         && $IsAlloc(universe#0, Tclass._module.Universe(), $Heap), 
    counter#0: ref
       where $Is(counter#0, Tclass._module.ArcAtomicIsize())
         && $IsAlloc(counter#0, Tclass._module.ArcAtomicIsize(), $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 13 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id340"} _module.Universe.i#canCall($Heap, universe#0)
     && 
    _module.Universe.i($Heap, universe#0)
     && 
    _module.Universe.i0($Heap, universe#0)
     && (forall o#8: ref :: 
      { _module.Object.i($Heap, o#8) } 
        { Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#8)) } 
      $Is(o#8, Tclass._module.Object())
           && Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#8))
         ==> _module.Object.i($Heap, o#8));
  requires {:id "id341"} universe#0 == _module.Object.universe(counter#0);
  free requires {:id "id342"} _module.ArcAtomicIsize.i#canCall($Heap, counter#0)
     && 
    _module.ArcAtomicIsize.i($Heap, counter#0)
     && 
    true
     && _module.Object.i0($Heap, counter#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.WorkerMethod.i#canCall($Heap, this)
     && (_module.WorkerMethod.i($Heap, this)
       ==> _module.Universe.i#canCall($Heap, universe#0));
  ensures {:id "id343"} _module.WorkerMethod.i#canCall($Heap, this)
     ==> _module.WorkerMethod.i($Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  ensures {:id "id344"} _module.WorkerMethod.i#canCall($Heap, this)
     ==> _module.WorkerMethod.i($Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
             ==> _module.Universe.i0($Heap, _module.Object.universe(this))
               || (forall o#10: ref :: 
                { _module.__default.upCast(o#10) } 
                  { _module.Object.universe(o#10) } 
                  { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#10)) } 
                $Is(o#10, Tclass._module.Object())
                     && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#10))
                   ==> _module.Object.universe(o#10) == _module.Object.universe(this)
                     && _module.__default.upCast(o#10) != _module.Object.universe(this))));
  ensures {:id "id345"} _module.WorkerMethod.i#canCall($Heap, this)
     ==> _module.WorkerMethod.i($Heap, this)
       || LitInt(1) <= $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int;
  ensures {:id "id346"} _module.WorkerMethod.i#canCall($Heap, this)
     ==> _module.WorkerMethod.i($Heap, this)
       || $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int <= LitInt(4);
  ensures {:id "id347"} _module.WorkerMethod.i#canCall($Heap, this)
     ==> _module.WorkerMethod.i($Heap, this)
       || _module.Object.universe(this)
         == _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref);
  ensures {:id "id348"} _module.WorkerMethod.i#canCall($Heap, this)
     ==> _module.WorkerMethod.i($Heap, this)
       || (_module.ArcAtomicIsize.i#canCall($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
         ==> _module.ArcAtomicIsize.i($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
           || Lit(true));
  ensures {:id "id349"} _module.WorkerMethod.i#canCall($Heap, this)
     ==> _module.WorkerMethod.i($Heap, this)
       || (_module.ArcAtomicIsize.i#canCall($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
         ==> _module.ArcAtomicIsize.i($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
           || (_module.Object.i0#canCall($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
             ==> _module.Object.i0($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
               || Set#IsMember($Unbox(read($Heap, 
                    _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref), 
                    _module.Universe.content)): Set, 
                read($Heap, this, _module.WorkerMethod.counter))));
  ensures {:id "id350"} _module.WorkerMethod.i#canCall($Heap, this)
     ==> _module.WorkerMethod.i($Heap, this)
       || (_module.ArcAtomicIsize.i#canCall($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
         ==> _module.ArcAtomicIsize.i($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
           || (_module.Object.i0#canCall($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
             ==> _module.Object.i0($Heap, $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
               || (_module.Universe.i0#canCall($Heap, 
                  _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref))
                 ==> _module.Universe.i0($Heap, 
                    _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref))
                   || (forall o#11: ref :: 
                    { _module.__default.upCast(o#11) } 
                      { _module.Object.universe(o#11) } 
                      { Set#IsMember($Unbox(read($Heap, 
                            _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref), 
                            _module.Universe.content)): Set, 
                        $Box(o#11)) } 
                    $Is(o#11, Tclass._module.Object())
                         && Set#IsMember($Unbox(read($Heap, 
                              _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref), 
                              _module.Universe.content)): Set, 
                          $Box(o#11))
                       ==> _module.Object.universe(o#11)
                           == _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)
                         && _module.__default.upCast(o#11)
                           != _module.Object.universe($Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref)))));
  ensures {:id "id351"} _module.WorkerMethod.i#canCall($Heap, this)
     ==> _module.WorkerMethod.i($Heap, this)
       || ($Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int > 1
         ==> $Unbox(read($Heap, this, _module.WorkerMethod.initial__value)): int
           <= $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, 
              _module.ArcAtomicIsize.data)): int);
  ensures {:id "id352"} _module.WorkerMethod.i#canCall($Heap, this)
     ==> _module.WorkerMethod.i($Heap, this)
       || ($Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int > 2
         ==> $Unbox(read($Heap, this, _module.WorkerMethod.initial__value)): int
           <= $Unbox(read($Heap, this, _module.WorkerMethod.final__value)): int);
  ensures {:id "id353"} _module.WorkerMethod.i#canCall($Heap, this)
     ==> _module.WorkerMethod.i($Heap, this)
       || ($Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int > 2
         ==> $Unbox(read($Heap, this, _module.WorkerMethod.final__value)): int
           <= $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, 
              _module.ArcAtomicIsize.data)): int);
  ensures {:id "id354"} _module.Universe.i#canCall($Heap, universe#0)
     ==> _module.Universe.i($Heap, universe#0)
       || (_module.Universe.i0#canCall($Heap, universe#0)
         ==> _module.Universe.i0($Heap, universe#0)
           || (forall o#12: ref :: 
            { _module.__default.upCast(o#12) } 
              { _module.Object.universe(o#12) } 
              { Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#12)) } 
            $Is(o#12, Tclass._module.Object())
                 && Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#12))
               ==> _module.Object.universe(o#12) == universe#0
                 && _module.__default.upCast(o#12) != universe#0));
  ensures {:id "id355"} _module.Universe.i#canCall($Heap, universe#0)
     ==> _module.Universe.i($Heap, universe#0)
       || (forall o#13: ref :: 
        { _module.Object.i($Heap, o#13) } 
          { Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#13)) } 
        $Is(o#13, Tclass._module.Object())
             && Set#IsMember($Unbox(read($Heap, universe#0, _module.Universe.content)): Set, $Box(o#13))
           ==> _module.Object.i($Heap, o#13));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == universe#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod._ctor (correctness)"} Impl$$_module.WorkerMethod.__ctor(universe#0: ref, counter#0: ref) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.universe: ref;
  var this.next_stmt: int;
  var this.counter: ref;
  var this.initial_value: int;
  var this.final_value: int;
  var defass#this.universe: bool;
  var defass#this.counter: bool;

    // AddMethodImpl: _ctor, Impl$$_module.WorkerMethod.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == universe#0);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(166,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(167,19)
    assume true;
    assume true;
    this.universe := universe#0;
    defass#this.universe := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(168,20)
    assume true;
    assume true;
    this.next_stmt := LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(169,18)
    assume true;
    assume true;
    this.counter := counter#0;
    defass#this.counter := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(166,3)
    assert {:id "id359"} defass#this.universe;
    assert {:id "id360"} defass#this.counter;
    assume this != null && $Is(this, Tclass._module.WorkerMethod?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume _module.Object.universe(this) == this.universe;
    assume $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int
       == this.next_stmt;
    assume $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref == this.counter;
    assume $Unbox(read($Heap, this, _module.WorkerMethod.initial__value)): int
       == this.initial_value;
    assume $Unbox(read($Heap, this, _module.WorkerMethod.final__value)): int
       == this.final_value;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(166,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(171,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id361"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && $o == _module.Object.universe(this)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id362"} Call$$_module.Object.join(this);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(172,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id363"} universe#0 != null;
    assert {:id "id364"} $IsAlloc(universe#0, Tclass._module.Universe(), old($Heap));
    call {:id "id365"} Call$$_module.Universe.lci(old($Heap), $Heap, universe#0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "WorkerMethod.Statement1 (well-formedness)"} CheckWellFormed$$_module.WorkerMethod.Statement1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap));
  free requires 13 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod.Statement1 (well-formedness)"} CheckWellFormed$$_module.WorkerMethod.Statement1(this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Statement1, CheckWellFormed$$_module.WorkerMethod.Statement1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
    assume _module.Object.gi#canCall($Heap, this);
    assume {:id "id366"} _module.Object.gi($Heap, this);
    assume {:id "id367"} $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int == LitInt(1);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
    assert {:id "id368"} $IsAlloc(this, Tclass._module.WorkerMethod(), old($Heap));
    assert {:id "id369"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Object.i0#canCall(old($Heap), this)
           ==> _module.Object.i0(old($Heap), this)
             || Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
              $Box(this)));
    assert {:id "id370"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Object.i0#canCall(old($Heap), this)
           ==> _module.Object.i0(old($Heap), this)
             || (_module.Universe.i0#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i0(old($Heap), _module.Object.universe(this))
                 || (forall o#0: ref :: 
                  { _module.__default.upCast(o#0) } 
                    { _module.Object.universe(o#0) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#0)) } 
                  $Is(o#0, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#0))
                     ==> _module.Object.universe(o#0) == _module.Object.universe(this)
                       && _module.__default.upCast(o#0) != _module.Object.universe(this))));
    assert {:id "id371"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
           ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
             || (_module.Universe.i0#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i0(old($Heap), _module.Object.universe(this))
                 || (forall o#1: ref :: 
                  { _module.__default.upCast(o#1) } 
                    { _module.Object.universe(o#1) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#1)) } 
                  $Is(o#1, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#1))
                     ==> _module.Object.universe(o#1) == _module.Object.universe(this)
                       && _module.__default.upCast(o#1) != _module.Object.universe(this))));
    assert {:id "id372"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
           ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
             || (forall o#2: ref :: 
              { _module.Object.i(old($Heap), o#2) } 
                { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#2)) } 
              $Is(o#2, Tclass._module.Object())
                   && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#2))
                 ==> _module.Object.i(old($Heap), o#2)));
    assume _module.Object.gi(old($Heap), this);
    assume _module.Object.gi2#canCall(old($Heap), $Heap, this);
    assume {:id "id373"} _module.Object.gi2(old($Heap), $Heap, this);
}



procedure {:verboseName "WorkerMethod.Statement1 (call)"} Call$$_module.WorkerMethod.Statement1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap));
  // user-defined preconditions
  requires {:id "id374"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  requires {:id "id375"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
             ==> _module.Universe.i0($Heap, _module.Object.universe(this))
               || (forall o#3: ref :: 
                { _module.__default.upCast(o#3) } 
                  { _module.Object.universe(o#3) } 
                  { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#3)) } 
                $Is(o#3, Tclass._module.Object())
                     && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#3))
                   ==> _module.Object.universe(o#3) == _module.Object.universe(this)
                     && _module.__default.upCast(o#3) != _module.Object.universe(this))));
  requires {:id "id376"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Universe.i#canCall($Heap, _module.Object.universe(this))
         ==> _module.Universe.i($Heap, _module.Object.universe(this))
           || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
             ==> _module.Universe.i0($Heap, _module.Object.universe(this))
               || (forall o#4: ref :: 
                { _module.__default.upCast(o#4) } 
                  { _module.Object.universe(o#4) } 
                  { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#4)) } 
                $Is(o#4, Tclass._module.Object())
                     && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#4))
                   ==> _module.Object.universe(o#4) == _module.Object.universe(this)
                     && _module.__default.upCast(o#4) != _module.Object.universe(this))));
  requires {:id "id377"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Universe.i#canCall($Heap, _module.Object.universe(this))
         ==> _module.Universe.i($Heap, _module.Object.universe(this))
           || (forall o#5: ref :: 
            { _module.Object.i($Heap, o#5) } 
              { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#5)) } 
            $Is(o#5, Tclass._module.Object())
                 && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#5))
               ==> _module.Object.i($Heap, o#5)));
  requires {:id "id378"} $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int == LitInt(1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Object.gi2#canCall(old($Heap), $Heap, this);
  free ensures {:id "id379"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     && 
    _module.Object.gi2(old($Heap), $Heap, this)
     && 
    _module.Object.i0($Heap, this)
     && _module.Universe.i2(old($Heap), $Heap, _module.Object.universe(this));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "WorkerMethod.Statement1 (correctness)"} Impl$$_module.WorkerMethod.Statement1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 13 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id380"} _module.Object.gi#canCall($Heap, this)
     && 
    _module.Object.gi($Heap, this)
     && 
    _module.Object.i0($Heap, this)
     && _module.Universe.i($Heap, _module.Object.universe(this));
  requires {:id "id381"} $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int == LitInt(1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Object.gi2#canCall(old($Heap), $Heap, this);
  ensures {:id "id382"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     ==> _module.Object.gi2(old($Heap), $Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  ensures {:id "id383"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     ==> _module.Object.gi2(old($Heap), $Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
             ==> _module.Universe.i0($Heap, _module.Object.universe(this))
               || (forall o#11: ref :: 
                { _module.__default.upCast(o#11) } 
                  { _module.Object.universe(o#11) } 
                  { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#11)) } 
                $Is(o#11, Tclass._module.Object())
                     && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#11))
                   ==> _module.Object.universe(o#11) == _module.Object.universe(this)
                     && _module.__default.upCast(o#11) != _module.Object.universe(this))));
  ensures {:id "id384"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     ==> _module.Object.gi2(old($Heap), $Heap, this)
       || (_module.Universe.i2#canCall(old($Heap), $Heap, _module.Object.universe(this))
         ==> _module.Universe.i2(old($Heap), $Heap, _module.Object.universe(this))
           || (forall o#12: ref :: 
            { _module.Object.i2(old($Heap), $Heap, o#12) } 
              { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#12)) } 
              { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#12)) } 
            $Is(o#12, Tclass._module.Object())
                 && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#12))
               ==> Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#12))
                 && _module.Object.i2(old($Heap), $Heap, o#12)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod.Statement1 (correctness)"} Impl$$_module.WorkerMethod.Statement1(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: Statement1, Impl$$_module.WorkerMethod.Statement1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(180,19)
    assume true;
    assert {:id "id385"} $_ModifiesFrame[this, _module.WorkerMethod.initial__value];
    assert {:id "id386"} $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, 
        _module.ArcAtomicIsize.data)): int;
    $Heap := update($Heap, this, _module.WorkerMethod.initial__value, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(181,15)
    assume true;
    assert {:id "id389"} $_ModifiesFrame[this, _module.WorkerMethod.next__stmt];
    assume true;
    $rhs#1 := $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int + 1;
    $Heap := update($Heap, this, _module.WorkerMethod.next__stmt, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(182,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id392"} _module.Object.universe(this) != null;
    assert {:id "id393"} $IsAlloc(_module.Object.universe(this), Tclass._module.Universe(), old($Heap));
    call {:id "id394"} Call$$_module.Universe.lci(old($Heap), $Heap, _module.Object.universe(this));
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "WorkerMethod.Statement2 (well-formedness)"} CheckWellFormed$$_module.WorkerMethod.Statement2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap));
  free requires 13 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod.Statement2 (well-formedness)"} CheckWellFormed$$_module.WorkerMethod.Statement2(this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Statement2, CheckWellFormed$$_module.WorkerMethod.Statement2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
    assume _module.Object.gi#canCall($Heap, this);
    assume {:id "id395"} _module.Object.gi($Heap, this);
    assume {:id "id396"} $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int == LitInt(2);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
    assert {:id "id397"} $IsAlloc(this, Tclass._module.WorkerMethod(), old($Heap));
    assert {:id "id398"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Object.i0#canCall(old($Heap), this)
           ==> _module.Object.i0(old($Heap), this)
             || Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
              $Box(this)));
    assert {:id "id399"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Object.i0#canCall(old($Heap), this)
           ==> _module.Object.i0(old($Heap), this)
             || (_module.Universe.i0#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i0(old($Heap), _module.Object.universe(this))
                 || (forall o#0: ref :: 
                  { _module.__default.upCast(o#0) } 
                    { _module.Object.universe(o#0) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#0)) } 
                  $Is(o#0, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#0))
                     ==> _module.Object.universe(o#0) == _module.Object.universe(this)
                       && _module.__default.upCast(o#0) != _module.Object.universe(this))));
    assert {:id "id400"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
           ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
             || (_module.Universe.i0#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i0(old($Heap), _module.Object.universe(this))
                 || (forall o#1: ref :: 
                  { _module.__default.upCast(o#1) } 
                    { _module.Object.universe(o#1) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#1)) } 
                  $Is(o#1, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#1))
                     ==> _module.Object.universe(o#1) == _module.Object.universe(this)
                       && _module.__default.upCast(o#1) != _module.Object.universe(this))));
    assert {:id "id401"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
           ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
             || (forall o#2: ref :: 
              { _module.Object.i(old($Heap), o#2) } 
                { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#2)) } 
              $Is(o#2, Tclass._module.Object())
                   && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#2))
                 ==> _module.Object.i(old($Heap), o#2)));
    assume _module.Object.gi(old($Heap), this);
    assume _module.Object.gi2#canCall(old($Heap), $Heap, this);
    assume {:id "id402"} _module.Object.gi2(old($Heap), $Heap, this);
}



procedure {:verboseName "WorkerMethod.Statement2 (call)"} Call$$_module.WorkerMethod.Statement2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap));
  // user-defined preconditions
  requires {:id "id403"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  requires {:id "id404"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
             ==> _module.Universe.i0($Heap, _module.Object.universe(this))
               || (forall o#3: ref :: 
                { _module.__default.upCast(o#3) } 
                  { _module.Object.universe(o#3) } 
                  { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#3)) } 
                $Is(o#3, Tclass._module.Object())
                     && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#3))
                   ==> _module.Object.universe(o#3) == _module.Object.universe(this)
                     && _module.__default.upCast(o#3) != _module.Object.universe(this))));
  requires {:id "id405"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Universe.i#canCall($Heap, _module.Object.universe(this))
         ==> _module.Universe.i($Heap, _module.Object.universe(this))
           || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
             ==> _module.Universe.i0($Heap, _module.Object.universe(this))
               || (forall o#4: ref :: 
                { _module.__default.upCast(o#4) } 
                  { _module.Object.universe(o#4) } 
                  { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#4)) } 
                $Is(o#4, Tclass._module.Object())
                     && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#4))
                   ==> _module.Object.universe(o#4) == _module.Object.universe(this)
                     && _module.__default.upCast(o#4) != _module.Object.universe(this))));
  requires {:id "id406"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Universe.i#canCall($Heap, _module.Object.universe(this))
         ==> _module.Universe.i($Heap, _module.Object.universe(this))
           || (forall o#5: ref :: 
            { _module.Object.i($Heap, o#5) } 
              { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#5)) } 
            $Is(o#5, Tclass._module.Object())
                 && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#5))
               ==> _module.Object.i($Heap, o#5)));
  requires {:id "id407"} $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int == LitInt(2);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Object.gi2#canCall(old($Heap), $Heap, this);
  free ensures {:id "id408"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     && 
    _module.Object.gi2(old($Heap), $Heap, this)
     && 
    _module.Object.i0($Heap, this)
     && _module.Universe.i2(old($Heap), $Heap, _module.Object.universe(this));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "WorkerMethod.Statement2 (correctness)"} Impl$$_module.WorkerMethod.Statement2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 13 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id409"} _module.Object.gi#canCall($Heap, this)
     && 
    _module.Object.gi($Heap, this)
     && 
    _module.Object.i0($Heap, this)
     && _module.Universe.i($Heap, _module.Object.universe(this));
  requires {:id "id410"} $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int == LitInt(2);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Object.gi2#canCall(old($Heap), $Heap, this);
  ensures {:id "id411"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     ==> _module.Object.gi2(old($Heap), $Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  ensures {:id "id412"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     ==> _module.Object.gi2(old($Heap), $Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
             ==> _module.Universe.i0($Heap, _module.Object.universe(this))
               || (forall o#11: ref :: 
                { _module.__default.upCast(o#11) } 
                  { _module.Object.universe(o#11) } 
                  { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#11)) } 
                $Is(o#11, Tclass._module.Object())
                     && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#11))
                   ==> _module.Object.universe(o#11) == _module.Object.universe(this)
                     && _module.__default.upCast(o#11) != _module.Object.universe(this))));
  ensures {:id "id413"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     ==> _module.Object.gi2(old($Heap), $Heap, this)
       || (_module.Universe.i2#canCall(old($Heap), $Heap, _module.Object.universe(this))
         ==> _module.Universe.i2(old($Heap), $Heap, _module.Object.universe(this))
           || (forall o#12: ref :: 
            { _module.Object.i2(old($Heap), $Heap, o#12) } 
              { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#12)) } 
              { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#12)) } 
            $Is(o#12, Tclass._module.Object())
                 && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#12))
               ==> Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#12))
                 && _module.Object.i2(old($Heap), $Heap, o#12)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod.Statement2 (correctness)"} Impl$$_module.WorkerMethod.Statement2(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: Statement2, Impl$$_module.WorkerMethod.Statement2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(190,17)
    assume true;
    assert {:id "id414"} $_ModifiesFrame[this, _module.WorkerMethod.final__value];
    assert {:id "id415"} $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.WorkerMethod.counter)): ref, 
        _module.ArcAtomicIsize.data)): int;
    $Heap := update($Heap, this, _module.WorkerMethod.final__value, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(191,15)
    assume true;
    assert {:id "id418"} $_ModifiesFrame[this, _module.WorkerMethod.next__stmt];
    assume true;
    $rhs#1 := $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int + 1;
    $Heap := update($Heap, this, _module.WorkerMethod.next__stmt, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(192,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id421"} _module.Object.universe(this) != null;
    assert {:id "id422"} $IsAlloc(_module.Object.universe(this), Tclass._module.Universe(), old($Heap));
    call {:id "id423"} Call$$_module.Universe.lci(old($Heap), $Heap, _module.Object.universe(this));
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "WorkerMethod.Statement3 (well-formedness)"} CheckWellFormed$$_module.WorkerMethod.Statement3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap));
  free requires 13 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod.Statement3 (well-formedness)"} CheckWellFormed$$_module.WorkerMethod.Statement3(this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Statement3, CheckWellFormed$$_module.WorkerMethod.Statement3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
    assume _module.Object.gi#canCall($Heap, this);
    assume {:id "id424"} _module.Object.gi($Heap, this);
    assume {:id "id425"} $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int == LitInt(3);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
    assert {:id "id426"} $IsAlloc(this, Tclass._module.WorkerMethod(), old($Heap));
    assert {:id "id427"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Object.i0#canCall(old($Heap), this)
           ==> _module.Object.i0(old($Heap), this)
             || Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
              $Box(this)));
    assert {:id "id428"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Object.i0#canCall(old($Heap), this)
           ==> _module.Object.i0(old($Heap), this)
             || (_module.Universe.i0#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i0(old($Heap), _module.Object.universe(this))
                 || (forall o#0: ref :: 
                  { _module.__default.upCast(o#0) } 
                    { _module.Object.universe(o#0) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#0)) } 
                  $Is(o#0, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#0))
                     ==> _module.Object.universe(o#0) == _module.Object.universe(this)
                       && _module.__default.upCast(o#0) != _module.Object.universe(this))));
    assert {:id "id429"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
           ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
             || (_module.Universe.i0#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i0(old($Heap), _module.Object.universe(this))
                 || (forall o#1: ref :: 
                  { _module.__default.upCast(o#1) } 
                    { _module.Object.universe(o#1) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#1)) } 
                  $Is(o#1, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#1))
                     ==> _module.Object.universe(o#1) == _module.Object.universe(this)
                       && _module.__default.upCast(o#1) != _module.Object.universe(this))));
    assert {:id "id430"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
           ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
             || (forall o#2: ref :: 
              { _module.Object.i(old($Heap), o#2) } 
                { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#2)) } 
              $Is(o#2, Tclass._module.Object())
                   && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#2))
                 ==> _module.Object.i(old($Heap), o#2)));
    assume _module.Object.gi(old($Heap), this);
    assume _module.Object.gi2#canCall(old($Heap), $Heap, this);
    assume {:id "id431"} _module.Object.gi2(old($Heap), $Heap, this);
}



procedure {:verboseName "WorkerMethod.Statement3 (call)"} Call$$_module.WorkerMethod.Statement3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap));
  // user-defined preconditions
  requires {:id "id432"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  requires {:id "id433"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
             ==> _module.Universe.i0($Heap, _module.Object.universe(this))
               || (forall o#3: ref :: 
                { _module.__default.upCast(o#3) } 
                  { _module.Object.universe(o#3) } 
                  { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#3)) } 
                $Is(o#3, Tclass._module.Object())
                     && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#3))
                   ==> _module.Object.universe(o#3) == _module.Object.universe(this)
                     && _module.__default.upCast(o#3) != _module.Object.universe(this))));
  requires {:id "id434"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Universe.i#canCall($Heap, _module.Object.universe(this))
         ==> _module.Universe.i($Heap, _module.Object.universe(this))
           || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
             ==> _module.Universe.i0($Heap, _module.Object.universe(this))
               || (forall o#4: ref :: 
                { _module.__default.upCast(o#4) } 
                  { _module.Object.universe(o#4) } 
                  { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#4)) } 
                $Is(o#4, Tclass._module.Object())
                     && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#4))
                   ==> _module.Object.universe(o#4) == _module.Object.universe(this)
                     && _module.__default.upCast(o#4) != _module.Object.universe(this))));
  requires {:id "id435"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Universe.i#canCall($Heap, _module.Object.universe(this))
         ==> _module.Universe.i($Heap, _module.Object.universe(this))
           || (forall o#5: ref :: 
            { _module.Object.i($Heap, o#5) } 
              { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#5)) } 
            $Is(o#5, Tclass._module.Object())
                 && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#5))
               ==> _module.Object.i($Heap, o#5)));
  requires {:id "id436"} $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int == LitInt(3);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Object.gi2#canCall(old($Heap), $Heap, this);
  free ensures {:id "id437"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     && 
    _module.Object.gi2(old($Heap), $Heap, this)
     && 
    _module.Object.i0($Heap, this)
     && _module.Universe.i2(old($Heap), $Heap, _module.Object.universe(this));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "WorkerMethod.Statement3 (correctness)"} Impl$$_module.WorkerMethod.Statement3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 13 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id438"} _module.Object.gi#canCall($Heap, this)
     && 
    _module.Object.gi($Heap, this)
     && 
    _module.Object.i0($Heap, this)
     && _module.Universe.i($Heap, _module.Object.universe(this));
  requires {:id "id439"} $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int == LitInt(3);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Object.gi2#canCall(old($Heap), $Heap, this);
  ensures {:id "id440"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     ==> _module.Object.gi2(old($Heap), $Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  ensures {:id "id441"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     ==> _module.Object.gi2(old($Heap), $Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
             ==> _module.Universe.i0($Heap, _module.Object.universe(this))
               || (forall o#11: ref :: 
                { _module.__default.upCast(o#11) } 
                  { _module.Object.universe(o#11) } 
                  { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#11)) } 
                $Is(o#11, Tclass._module.Object())
                     && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#11))
                   ==> _module.Object.universe(o#11) == _module.Object.universe(this)
                     && _module.__default.upCast(o#11) != _module.Object.universe(this))));
  ensures {:id "id442"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     ==> _module.Object.gi2(old($Heap), $Heap, this)
       || (_module.Universe.i2#canCall(old($Heap), $Heap, _module.Object.universe(this))
         ==> _module.Universe.i2(old($Heap), $Heap, _module.Object.universe(this))
           || (forall o#12: ref :: 
            { _module.Object.i2(old($Heap), $Heap, o#12) } 
              { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#12)) } 
              { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#12)) } 
            $Is(o#12, Tclass._module.Object())
                 && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#12))
               ==> Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#12))
                 && _module.Object.i2(old($Heap), $Heap, o#12)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod.Statement3 (correctness)"} Impl$$_module.WorkerMethod.Statement3(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;

    // AddMethodImpl: Statement3, Impl$$_module.WorkerMethod.Statement3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(201,5)
    assume true;
    assert {:id "id443"} $Unbox(read($Heap, this, _module.WorkerMethod.initial__value)): int
       <= $Unbox(read($Heap, this, _module.WorkerMethod.final__value)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(202,15)
    assume true;
    assert {:id "id444"} $_ModifiesFrame[this, _module.WorkerMethod.next__stmt];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int + 1;
    $Heap := update($Heap, this, _module.WorkerMethod.next__stmt, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(203,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id447"} _module.Object.universe(this) != null;
    assert {:id "id448"} $IsAlloc(_module.Object.universe(this), Tclass._module.Universe(), old($Heap));
    call {:id "id449"} Call$$_module.Universe.lci(old($Heap), $Heap, _module.Object.universe(this));
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "WorkerMethod.Statement4 (well-formedness)"} CheckWellFormed$$_module.WorkerMethod.Statement4(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap));
  free requires 13 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod.Statement4 (well-formedness)"} CheckWellFormed$$_module.WorkerMethod.Statement4(this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Statement4, CheckWellFormed$$_module.WorkerMethod.Statement4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
    assume _module.Object.gi#canCall($Heap, this);
    assume {:id "id450"} _module.Object.gi($Heap, this);
    assume {:id "id451"} $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int == LitInt(4);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
    assert {:id "id452"} $IsAlloc(this, Tclass._module.WorkerMethod(), old($Heap));
    assert {:id "id453"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Object.i0#canCall(old($Heap), this)
           ==> _module.Object.i0(old($Heap), this)
             || Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
              $Box(this)));
    assert {:id "id454"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Object.i0#canCall(old($Heap), this)
           ==> _module.Object.i0(old($Heap), this)
             || (_module.Universe.i0#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i0(old($Heap), _module.Object.universe(this))
                 || (forall o#0: ref :: 
                  { _module.__default.upCast(o#0) } 
                    { _module.Object.universe(o#0) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#0)) } 
                  $Is(o#0, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#0))
                     ==> _module.Object.universe(o#0) == _module.Object.universe(this)
                       && _module.__default.upCast(o#0) != _module.Object.universe(this))));
    assert {:id "id455"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
           ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
             || (_module.Universe.i0#canCall(old($Heap), _module.Object.universe(this))
               ==> _module.Universe.i0(old($Heap), _module.Object.universe(this))
                 || (forall o#1: ref :: 
                  { _module.__default.upCast(o#1) } 
                    { _module.Object.universe(o#1) } 
                    { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#1)) } 
                  $Is(o#1, Tclass._module.Object())
                       && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                        $Box(o#1))
                     ==> _module.Object.universe(o#1) == _module.Object.universe(this)
                       && _module.__default.upCast(o#1) != _module.Object.universe(this))));
    assert {:id "id456"} {:subsumption 0} _module.Object.gi#canCall(old($Heap), this)
       ==> _module.Object.gi(old($Heap), this)
         || (_module.Universe.i#canCall(old($Heap), _module.Object.universe(this))
           ==> _module.Universe.i(old($Heap), _module.Object.universe(this))
             || (forall o#2: ref :: 
              { _module.Object.i(old($Heap), o#2) } 
                { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#2)) } 
              $Is(o#2, Tclass._module.Object())
                   && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#2))
                 ==> _module.Object.i(old($Heap), o#2)));
    assume _module.Object.gi(old($Heap), this);
    assume _module.Object.gi2#canCall(old($Heap), $Heap, this);
    assume {:id "id457"} _module.Object.gi2(old($Heap), $Heap, this);
}



procedure {:verboseName "WorkerMethod.Statement4 (call)"} Call$$_module.WorkerMethod.Statement4(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap));
  // user-defined preconditions
  requires {:id "id458"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  requires {:id "id459"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
             ==> _module.Universe.i0($Heap, _module.Object.universe(this))
               || (forall o#3: ref :: 
                { _module.__default.upCast(o#3) } 
                  { _module.Object.universe(o#3) } 
                  { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#3)) } 
                $Is(o#3, Tclass._module.Object())
                     && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#3))
                   ==> _module.Object.universe(o#3) == _module.Object.universe(this)
                     && _module.__default.upCast(o#3) != _module.Object.universe(this))));
  requires {:id "id460"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Universe.i#canCall($Heap, _module.Object.universe(this))
         ==> _module.Universe.i($Heap, _module.Object.universe(this))
           || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
             ==> _module.Universe.i0($Heap, _module.Object.universe(this))
               || (forall o#4: ref :: 
                { _module.__default.upCast(o#4) } 
                  { _module.Object.universe(o#4) } 
                  { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#4)) } 
                $Is(o#4, Tclass._module.Object())
                     && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#4))
                   ==> _module.Object.universe(o#4) == _module.Object.universe(this)
                     && _module.__default.upCast(o#4) != _module.Object.universe(this))));
  requires {:id "id461"} _module.Object.gi#canCall($Heap, this)
     ==> _module.Object.gi($Heap, this)
       || (_module.Universe.i#canCall($Heap, _module.Object.universe(this))
         ==> _module.Universe.i($Heap, _module.Object.universe(this))
           || (forall o#5: ref :: 
            { _module.Object.i($Heap, o#5) } 
              { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#5)) } 
            $Is(o#5, Tclass._module.Object())
                 && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#5))
               ==> _module.Object.i($Heap, o#5)));
  requires {:id "id462"} $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int == LitInt(4);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Object.gi2#canCall(old($Heap), $Heap, this);
  free ensures {:id "id463"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     && 
    _module.Object.gi2(old($Heap), $Heap, this)
     && 
    _module.Object.i0($Heap, this)
     && _module.Universe.i2(old($Heap), $Heap, _module.Object.universe(this));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "WorkerMethod.Statement4 (correctness)"} Impl$$_module.WorkerMethod.Statement4(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WorkerMethod())
         && $IsAlloc(this, Tclass._module.WorkerMethod(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 13 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id464"} _module.Object.gi#canCall($Heap, this)
     && 
    _module.Object.gi($Heap, this)
     && 
    _module.Object.i0($Heap, this)
     && _module.Universe.i($Heap, _module.Object.universe(this));
  requires {:id "id465"} $Unbox(read($Heap, this, _module.WorkerMethod.next__stmt)): int == LitInt(4);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Object.gi2#canCall(old($Heap), $Heap, this);
  ensures {:id "id466"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     ==> _module.Object.gi2(old($Heap), $Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
            $Box(this)));
  ensures {:id "id467"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     ==> _module.Object.gi2(old($Heap), $Heap, this)
       || (_module.Object.i0#canCall($Heap, this)
         ==> _module.Object.i0($Heap, this)
           || (_module.Universe.i0#canCall($Heap, _module.Object.universe(this))
             ==> _module.Universe.i0($Heap, _module.Object.universe(this))
               || (forall o#11: ref :: 
                { _module.__default.upCast(o#11) } 
                  { _module.Object.universe(o#11) } 
                  { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                    $Box(o#11)) } 
                $Is(o#11, Tclass._module.Object())
                     && Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                      $Box(o#11))
                   ==> _module.Object.universe(o#11) == _module.Object.universe(this)
                     && _module.__default.upCast(o#11) != _module.Object.universe(this))));
  ensures {:id "id468"} _module.Object.gi2#canCall(old($Heap), $Heap, this)
     ==> _module.Object.gi2(old($Heap), $Heap, this)
       || (_module.Universe.i2#canCall(old($Heap), $Heap, _module.Object.universe(this))
         ==> _module.Universe.i2(old($Heap), $Heap, _module.Object.universe(this))
           || (forall o#12: ref :: 
            { _module.Object.i2(old($Heap), $Heap, o#12) } 
              { Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#12)) } 
              { Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                $Box(o#12)) } 
            $Is(o#12, Tclass._module.Object())
                 && Set#IsMember($Unbox(read(old($Heap), _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#12))
               ==> Set#IsMember($Unbox(read($Heap, _module.Object.universe(this), _module.Universe.content)): Set, 
                  $Box(o#12))
                 && _module.Object.i2(old($Heap), $Heap, o#12)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WorkerMethod.Statement4 (correctness)"} Impl$$_module.WorkerMethod.Statement4(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Statement4, Impl$$_module.WorkerMethod.Statement4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(212,5)
    assume true;
    assert {:id "id469"} Lit(true);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/concurrency/02-DoubleRead.dfy(213,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id470"} _module.Object.universe(this) != null;
    assert {:id "id471"} $IsAlloc(_module.Object.universe(this), Tclass._module.Universe(), old($Heap));
    call {:id "id472"} Call$$_module.Universe.lci(old($Heap), $Heap, _module.Object.universe(this));
    // TrCallStmt: After ProcessCallStmt
}



// $Is axiom for non-null type _module.WorkerMethod
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.WorkerMethod()) } 
    { $Is(c#0, Tclass._module.WorkerMethod?()) } 
  $Is(c#0, Tclass._module.WorkerMethod())
     <==> $Is(c#0, Tclass._module.WorkerMethod?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.WorkerMethod
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.WorkerMethod(), $h) } 
    { $IsAlloc(c#0, Tclass._module.WorkerMethod?(), $h) } 
  $IsAlloc(c#0, Tclass._module.WorkerMethod(), $h)
     <==> $IsAlloc(c#0, Tclass._module.WorkerMethod?(), $h));

// type axiom for trait parent: ArcAtomicIsize? extends Object?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.ArcAtomicIsize?()) } 
  $Is($o, Tclass._module.ArcAtomicIsize?()) ==> $Is($o, Tclass._module.Object?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ArcAtomicIsize?()) } 
  $IsBox(bx, Tclass._module.ArcAtomicIsize?())
     ==> $IsBox(bx, Tclass._module.Object?()));

// allocation axiom for trait parent: ArcAtomicIsize? extends Object?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.ArcAtomicIsize?(), $heap) } 
  $IsAlloc($o, Tclass._module.ArcAtomicIsize?(), $heap)
     ==> $IsAlloc($o, Tclass._module.Object?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.ArcAtomicIsize?(), $h) } 
  $IsAllocBox(bx, Tclass._module.ArcAtomicIsize?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.Object?(), $h));

// type axiom for trait parent: WorkerMethod? extends Object?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.WorkerMethod?()) } 
  $Is($o, Tclass._module.WorkerMethod?()) ==> $Is($o, Tclass._module.Object?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.WorkerMethod?()) } 
  $IsBox(bx, Tclass._module.WorkerMethod?())
     ==> $IsBox(bx, Tclass._module.Object?()));

// allocation axiom for trait parent: WorkerMethod? extends Object?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.WorkerMethod?(), $heap) } 
  $IsAlloc($o, Tclass._module.WorkerMethod?(), $heap)
     ==> $IsAlloc($o, Tclass._module.Object?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.WorkerMethod?(), $h) } 
  $IsAllocBox(bx, Tclass._module.WorkerMethod?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.Object?(), $h));

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

const unique tytagFamily$Universe: TyTagFamily;

const unique tytagFamily$Object: TyTagFamily;

const unique tytagFamily$ArcAtomicIsize: TyTagFamily;

const unique tytagFamily$WorkerMethod: TyTagFamily;

const unique field$content: NameFamily;

const unique field$data: NameFamily;

const unique field$next_stmt: NameFamily;

const unique field$counter: NameFamily;

const unique field$initial_value: NameFamily;

const unique field$final_value: NameFamily;