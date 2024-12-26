// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy

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

function Tclass._System.___hFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc2: TyTag;

// Tclass._System.___hFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == Tagclass._System.___hFunc2
     && TagFamily(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == tytagFamily$_#Func2);

function Tclass._System.___hFunc2_0(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_0(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$T0);

function Tclass._System.___hFunc2_1(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_1(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$T1);

function Tclass._System.___hFunc2_2(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_2(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc2(#$T0, #$T1, #$R)));

function Handle2([Heap,Box,Box]Box, [Heap,Box,Box]bool, [Heap,Box,Box]Set) : HandleType;

function Apply2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : Box;

function Requires2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : bool;

function Reads2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box :: 
  { Apply2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) } 
  Apply2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) == h[heap, bx0, bx1]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box :: 
  { Requires2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) } 
  r[heap, bx0, bx1] ==> Requires2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx: Box :: 
  { Set#IsMember(Reads2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1), bx) } 
  Set#IsMember(Reads2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1), bx)
     == Set#IsMember(rd[heap, bx0, bx1], bx));

function {:inline} Requires2#canCall(t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box) : bool
{
  true
}

function {:inline} Reads2#canCall(t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box) : bool
{
  true
}

// frame axiom for Reads2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Reads2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads2(t0, t1, t2, h0, f, bx0, bx1) == Reads2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Reads2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Reads2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads2(t0, t1, t2, h0, f, bx0, bx1) == Reads2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Requires2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires2(t0, t1, t2, h0, f, bx0, bx1) == Requires2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Requires2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires2(t0, t1, t2, h0, f, bx0, bx1) == Requires2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Apply2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Apply2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply2(t0, t1, t2, h0, f, bx0, bx1) == Apply2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Apply2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Apply2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply2(t0, t1, t2, h0, f, bx0, bx1) == Apply2(t0, t1, t2, h1, f, bx0, bx1));

// empty-reads property for Reads2 
axiom (forall t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), $IsGoodHeap(heap) } 
    { Reads2(t0, t1, t2, heap, f, bx0, bx1) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
     ==> (Set#Equal(Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), Set#Empty(): Set)
       <==> Set#Equal(Reads2(t0, t1, t2, heap, f, bx0, bx1), Set#Empty(): Set)));

// empty-reads property for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { Requires2(t0, t1, t2, $OneHeap, f, bx0, bx1), $IsGoodHeap(heap) } 
    { Requires2(t0, t1, t2, heap, f, bx0, bx1) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && Set#Equal(Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), Set#Empty(): Set)
     ==> Requires2(t0, t1, t2, $OneHeap, f, bx0, bx1)
       == Requires2(t0, t1, t2, heap, f, bx0, bx1));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty :: 
  { $Is(f, Tclass._System.___hFunc2(t0, t1, t2)) } 
  $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
     <==> (forall h: Heap, bx0: Box, bx1: Box :: 
      { Apply2(t0, t1, t2, h, f, bx0, bx1) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && Requires2(t0, t1, t2, h, f, bx0, bx1)
         ==> $IsBox(Apply2(t0, t1, t2, h, f, bx0, bx1), t2)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, u0: Ty, u1: Ty, u2: Ty :: 
  { $Is(f, Tclass._System.___hFunc2(t0, t1, t2)), $Is(f, Tclass._System.___hFunc2(u0, u1, u2)) } 
  $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, t2) } { $IsBox(bx, u2) } 
        $IsBox(bx, t2) ==> $IsBox(bx, u2))
     ==> $Is(f, Tclass._System.___hFunc2(u0, u1, u2)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h)
       <==> (forall bx0: Box, bx1: Box :: 
        { Apply2(t0, t1, t2, h, f, bx0, bx1) } { Reads2(t0, t1, t2, h, f, bx0, bx1) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && Requires2(t0, t1, t2, h, f, bx0, bx1)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads2(t0, t1, t2, h, f, bx0, bx1), $Box(r)) } 
            r != null && Set#IsMember(Reads2(t0, t1, t2, h, f, bx0, bx1), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h)
     ==> (forall bx0: Box, bx1: Box :: 
      { Apply2(t0, t1, t2, h, f, bx0, bx1) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && Requires2(t0, t1, t2, h, f, bx0, bx1)
         ==> $IsAllocBox(Apply2(t0, t1, t2, h, f, bx0, bx1), t2, h)));

function Tclass._System.___hPartialFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc2: TyTag;

// Tclass._System.___hPartialFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       == Tagclass._System.___hPartialFunc2
     && TagFamily(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       == tytagFamily$_#PartialFunc2);

function Tclass._System.___hPartialFunc2_0(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_0(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc2_1(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_1(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc2_2(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_2(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)));

// $Is axiom for subset type _System._#PartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc2(#$T0, #$T1, #$R))
       && (forall x0#0: Box, x1#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1)
           ==> Set#Equal(Reads2(#$T0, #$T1, #$R, $OneHeap, f#0, x0#0, x1#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc2(#$T0, #$T1, #$R), $h));

function Tclass._System.___hTotalFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc2: TyTag;

// Tclass._System.___hTotalFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
       == Tagclass._System.___hTotalFunc2
     && TagFamily(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
       == tytagFamily$_#TotalFunc2);

function Tclass._System.___hTotalFunc2_0(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_0(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc2_1(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_1(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc2_2(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_2(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)));

// $Is axiom for subset type _System._#TotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       && (forall x0#0: Box, x1#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1)
           ==> Requires2(#$T0, #$T1, #$R, $OneHeap, f#0, x0#0, x1#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h));

function Tclass._System.___hFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc3: TyTag;

// Tclass._System.___hFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hFunc3
     && TagFamily(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#Func3);

function Tclass._System.___hFunc3_0(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_0(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hFunc3_1(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_1(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hFunc3_2(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_2(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hFunc3_3(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_3(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)));

function Handle3([Heap,Box,Box,Box]Box, [Heap,Box,Box,Box]bool, [Heap,Box,Box,Box]Set)
   : HandleType;

function Apply3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Box;

function Requires3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : bool;

function Reads3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2)
     == h[heap, bx0, bx1, bx2]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  r[heap, bx0, bx1, bx2]
     ==> Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx: Box :: 
  { Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx) } 
  Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2], bx));

function {:inline} Requires3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

function {:inline} Reads3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// empty-reads property for Reads3 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     ==> (Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
       <==> Set#Equal(Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2), Set#Empty(): Set)));

// empty-reads property for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
     ==> Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, u0: Ty, u1: Ty, u2: Ty, u3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)), $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u2) } { $IsBox(bx, t2) } 
        $IsBox(bx, u2) ==> $IsBox(bx, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, t3) } { $IsBox(bx, u3) } 
        $IsBox(bx, t3) ==> $IsBox(bx, u3))
     ==> $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box :: 
        { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
          { Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r)) } 
            r != null && Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsAllocBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3, h)));

function Tclass._System.___hPartialFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc3: TyTag;

// Tclass._System.___hPartialFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hPartialFunc3
     && TagFamily(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#PartialFunc3);

function Tclass._System.___hPartialFunc3_0(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_0(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc3_1(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_1(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc3_2(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_2(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc3_3(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_3(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Set#Equal(Reads3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R), $h));

function Tclass._System.___hTotalFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc3: TyTag;

// Tclass._System.___hTotalFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hTotalFunc3
     && TagFamily(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#TotalFunc3);

function Tclass._System.___hTotalFunc3_0(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_0(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc3_1(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_1(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc3_2(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_2(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc3_3(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_3(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Requires3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h));

function Tclass._System.___hFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc4: TyTag;

// Tclass._System.___hFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hFunc4
     && TagFamily(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#Func4);

function Tclass._System.___hFunc4_0(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_0(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hFunc4_1(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_1(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hFunc4_2(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_2(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hFunc4_3(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_3(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hFunc4_4(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_4(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

function Handle4([Heap,Box,Box,Box,Box]Box, [Heap,Box,Box,Box,Box]bool, [Heap,Box,Box,Box,Box]Set)
   : HandleType;

function Apply4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Box;

function Requires4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : bool;

function Reads4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3)
     == h[heap, bx0, bx1, bx2, bx3]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  r[heap, bx0, bx1, bx2, bx3]
     ==> Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx: Box :: 
  { Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx) } 
  Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2, bx3], bx));

function {:inline} Requires4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

function {:inline} Reads4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// empty-reads property for Reads4 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     ==> (Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
       <==> Set#Equal(Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)));

// empty-reads property for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
     ==> Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && $IsBox(bx3, t3)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4)));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    u0: Ty, 
    u1: Ty, 
    u2: Ty, 
    u3: Ty, 
    u4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)), $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u2) } { $IsBox(bx, t2) } 
        $IsBox(bx, u2) ==> $IsBox(bx, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, u3) } { $IsBox(bx, t3) } 
        $IsBox(bx, u3) ==> $IsBox(bx, t3))
       && (forall bx: Box :: 
        { $IsBox(bx, t4) } { $IsBox(bx, u4) } 
        $IsBox(bx, t4) ==> $IsBox(bx, u4))
     ==> $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
        { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
          { Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && 
            $IsBox(bx3, t3)
             && $IsAllocBox(bx3, t3, h)
             && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r)) } 
            r != null
                 && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && $IsAllocBox(bx3, t3, h)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsAllocBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4, h)));

function Tclass._System.___hPartialFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc4: TyTag;

// Tclass._System.___hPartialFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hPartialFunc4
     && TagFamily(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#PartialFunc4);

function Tclass._System.___hPartialFunc4_0(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_0(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc4_1(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_1(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc4_2(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_2(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc4_3(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_3(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hPartialFunc4_4(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_4(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Set#Equal(Reads4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0), 
            Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

function Tclass._System.___hTotalFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc4: TyTag;

// Tclass._System.___hTotalFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hTotalFunc4
     && TagFamily(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#TotalFunc4);

function Tclass._System.___hTotalFunc4_0(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_0(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc4_1(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_1(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc4_2(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_2(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc4_3(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_3(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hTotalFunc4_4(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_4(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Requires4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

const unique class._module.__default: ClassName;

// function declaration for _module._default.Tail
function _module.__default.Tail(_module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int)
   : DatatypeType
uses {
// consequence axiom for _module.__default.Tail
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int :: 
    { _module.__default.Tail(_module._default.Tail$_T0, $ly, s#0, n#0) } 
    _module.__default.Tail#canCall(_module._default.Tail$_T0, s#0, n#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.Tail$_T0))
           && LitInt(0) <= n#0)
       ==> $Is(_module.__default.Tail(_module._default.Tail$_T0, $ly, s#0, n#0), 
        Tclass._module.Stream(_module._default.Tail$_T0)));
// alloc consequence axiom for _module.__default.Tail
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.Tail$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      n#0: int :: 
    { $IsAlloc(_module.__default.Tail(_module._default.Tail$_T0, $ly, s#0, n#0), 
        Tclass._module.Stream(_module._default.Tail$_T0), 
        $Heap) } 
    (_module.__default.Tail#canCall(_module._default.Tail$_T0, s#0, n#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(s#0, Tclass._module.Stream(_module._default.Tail$_T0))
             && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Tail$_T0), $Heap)
             && LitInt(0) <= n#0))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Tail(_module._default.Tail$_T0, $ly, s#0, n#0), 
        Tclass._module.Stream(_module._default.Tail$_T0), 
        $Heap));
// definition axiom for _module.__default.Tail (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int :: 
    { _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), s#0, n#0) } 
    _module.__default.Tail#canCall(_module._default.Tail$_T0, s#0, n#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.Tail$_T0))
           && LitInt(0) <= n#0)
       ==> (n#0 != LitInt(0)
           ==> _module.Stream.Cons_q(s#0)
             && _module.__default.Tail#canCall(_module._default.Tail$_T0, _module.Stream.tail(s#0), n#0 - 1))
         && _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), s#0, n#0)
           == (if n#0 == LitInt(0)
             then s#0
             else _module.__default.Tail(_module._default.Tail$_T0, $ly, _module.Stream.tail(s#0), n#0 - 1)));
// definition axiom for _module.__default.Tail for decreasing-related literals (revealed)
axiom {:id "id1"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int :: 
    {:weight 3} { _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), s#0, LitInt(n#0)) } 
    _module.__default.Tail#canCall(_module._default.Tail$_T0, s#0, LitInt(n#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.Tail$_T0))
           && LitInt(0) <= n#0)
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.Stream.Cons_q(s#0)
             && _module.__default.Tail#canCall(_module._default.Tail$_T0, _module.Stream.tail(s#0), LitInt(n#0 - 1)))
         && _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), s#0, LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then s#0
             else _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), _module.Stream.tail(s#0), LitInt(n#0 - 1))));
// definition axiom for _module.__default.Tail for all literals (revealed)
axiom {:id "id2"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int :: 
    {:weight 3} { _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), Lit(s#0), LitInt(n#0)) } 
    _module.__default.Tail#canCall(_module._default.Tail$_T0, Lit(s#0), LitInt(n#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.Tail$_T0))
           && LitInt(0) <= n#0)
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.Stream.Cons_q(Lit(s#0))
             && _module.__default.Tail#canCall(_module._default.Tail$_T0, Lit(_module.Stream.tail(Lit(s#0))), LitInt(n#0 - 1)))
         && _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), Lit(s#0), LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then s#0
             else _module.__default.Tail(_module._default.Tail$_T0, 
              $LS($ly), 
              Lit(_module.Stream.tail(Lit(s#0))), 
              LitInt(n#0 - 1))));
}

function _module.__default.Tail#canCall(_module._default.Tail$_T0: Ty, s#0: DatatypeType, n#0: int) : bool;

// layer synonym axiom
axiom (forall _module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int :: 
  { _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), s#0, n#0) } 
  _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), s#0, n#0)
     == _module.__default.Tail(_module._default.Tail$_T0, $ly, s#0, n#0));

// fuel synonym axiom
axiom (forall _module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int :: 
  { _module.__default.Tail(_module._default.Tail$_T0, AsFuelBottom($ly), s#0, n#0) } 
  _module.__default.Tail(_module._default.Tail$_T0, $ly, s#0, n#0)
     == _module.__default.Tail(_module._default.Tail$_T0, $LZ, s#0, n#0));

function Tclass._module.Stream(Ty) : Ty;

const unique Tagclass._module.Stream: TyTag;

// Tclass._module.Stream Tag
axiom (forall _module.Stream$T: Ty :: 
  { Tclass._module.Stream(_module.Stream$T) } 
  Tag(Tclass._module.Stream(_module.Stream$T)) == Tagclass._module.Stream
     && TagFamily(Tclass._module.Stream(_module.Stream$T)) == tytagFamily$Stream);

function Tclass._module.Stream_0(Ty) : Ty;

// Tclass._module.Stream injectivity 0
axiom (forall _module.Stream$T: Ty :: 
  { Tclass._module.Stream(_module.Stream$T) } 
  Tclass._module.Stream_0(Tclass._module.Stream(_module.Stream$T))
     == _module.Stream$T);

// Box/unbox axiom for Tclass._module.Stream
axiom (forall _module.Stream$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Stream(_module.Stream$T)) } 
  $IsBox(bx, Tclass._module.Stream(_module.Stream$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Stream(_module.Stream$T)));

function _module.__default.Tail#requires(Ty, LayerType, DatatypeType, int) : bool;

// #requires axiom for _module.__default.Tail
axiom (forall _module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int :: 
  { _module.__default.Tail#requires(_module._default.Tail$_T0, $ly, s#0, n#0) } 
  $Is(s#0, Tclass._module.Stream(_module._default.Tail$_T0)) && LitInt(0) <= n#0
     ==> _module.__default.Tail#requires(_module._default.Tail$_T0, $ly, s#0, n#0)
       == true);

procedure {:verboseName "Tail (well-formedness)"} CheckWellformed$$_module.__default.Tail(_module._default.Tail$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Tail$_T0)), 
    n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tail (well-formedness)"} CheckWellformed$$_module.__default.Tail(_module._default.Tail$_T0: Ty, s#0: DatatypeType, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##n#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Tail(_module._default.Tail$_T0, $LS($LZ), s#0, n#0), 
          Tclass._module.Stream(_module._default.Tail$_T0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume {:id "id3"} _module.__default.Tail(_module._default.Tail$_T0, $LS($LZ), s#0, n#0) == s#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Tail(_module._default.Tail$_T0, $LS($LZ), s#0, n#0), 
              Tclass._module.Stream(_module._default.Tail$_T0));
            return;
        }
        else
        {
            assume _module.Stream.Cons_q(s#0);
            ##s#0 := _module.Stream.tail(s#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, Tclass._module.Stream(_module._default.Tail$_T0), $Heap);
            assert {:id "id4"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assert {:id "id5"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id6"} ##n#0 < n#0;
            assume _module.__default.Tail#canCall(_module._default.Tail$_T0, _module.Stream.tail(s#0), n#0 - 1);
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail$_T0, $LS($LZ), _module.Stream.tail(s#0), n#0 - 1));
            assume {:id "id7"} _module.__default.Tail(_module._default.Tail$_T0, $LS($LZ), s#0, n#0)
               == _module.__default.Tail(_module._default.Tail$_T0, $LS($LZ), _module.Stream.tail(s#0), n#0 - 1);
            assume _module.Stream.Cons_q(s#0)
               && _module.__default.Tail#canCall(_module._default.Tail$_T0, _module.Stream.tail(s#0), n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Tail(_module._default.Tail$_T0, $LS($LZ), s#0, n#0), 
              Tclass._module.Stream(_module._default.Tail$_T0));
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.In
function _module.__default.In(_module._default.In$T: Ty, x#0: Box, s#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.In (revealed)
axiom {:id "id8"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.In$T: Ty, x#0: Box, s#0: DatatypeType :: 
    { _module.__default.In(_module._default.In$T, x#0, s#0) } 
    _module.__default.In#canCall(_module._default.In$T, x#0, s#0)
         || (2 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.In$T)
           && $Is(s#0, Tclass._module.Stream(_module._default.In$T)))
       ==> (forall n#0: int :: 
          { _module.__default.Tail(_module._default.In$T, $LS($LZ), s#0, n#0) } 
          LitInt(0) <= n#0
             ==> 
            LitInt(0) <= n#0
             ==> _module.__default.Tail#canCall(_module._default.In$T, s#0, n#0)
               && _module.Stream.Cons_q(_module.__default.Tail(_module._default.In$T, $LS($LZ), s#0, n#0)))
         && _module.__default.In(_module._default.In$T, x#0, s#0)
           == (exists n#0: int :: 
            { _module.__default.Tail(_module._default.In$T, $LS($LZ), s#0, n#0) } 
            LitInt(0) <= n#0
               && 
              LitInt(0) <= n#0
               && _module.Stream.head(_module.__default.Tail(_module._default.In$T, $LS($LZ), s#0, n#0))
                 == x#0));
// definition axiom for _module.__default.In for all literals (revealed)
axiom {:id "id9"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.In$T: Ty, x#0: Box, s#0: DatatypeType :: 
    {:weight 3} { _module.__default.In(_module._default.In$T, Lit(x#0), Lit(s#0)) } 
    _module.__default.In#canCall(_module._default.In$T, Lit(x#0), Lit(s#0))
         || (2 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.In$T)
           && $Is(s#0, Tclass._module.Stream(_module._default.In$T)))
       ==> (forall n#1: int :: 
          { _module.__default.Tail(_module._default.In$T, $LS($LZ), s#0, n#1) } 
          LitInt(0) <= n#1
             ==> 
            LitInt(0) <= n#1
             ==> _module.__default.Tail#canCall(_module._default.In$T, Lit(s#0), n#1)
               && _module.Stream.Cons_q(_module.__default.Tail(_module._default.In$T, $LS($LZ), Lit(s#0), n#1)))
         && _module.__default.In(_module._default.In$T, Lit(x#0), Lit(s#0))
           == (exists n#1: int :: 
            { _module.__default.Tail(_module._default.In$T, $LS($LZ), s#0, n#1) } 
            LitInt(0) <= n#1
               && 
              LitInt(0) <= n#1
               && _module.Stream.head(_module.__default.Tail(_module._default.In$T, $LS($LZ), Lit(s#0), n#1))
                 == Lit(x#0)));
}

function _module.__default.In#canCall(_module._default.In$T: Ty, x#0: Box, s#0: DatatypeType) : bool;

function _module.__default.In#requires(Ty, Box, DatatypeType) : bool;

// #requires axiom for _module.__default.In
axiom (forall _module._default.In$T: Ty, x#0: Box, s#0: DatatypeType :: 
  { _module.__default.In#requires(_module._default.In$T, x#0, s#0) } 
  $IsBox(x#0, _module._default.In$T)
       && $Is(s#0, Tclass._module.Stream(_module._default.In$T))
     ==> _module.__default.In#requires(_module._default.In$T, x#0, s#0) == true);

procedure {:verboseName "In (well-formedness)"} CheckWellformed$$_module.__default.In(_module._default.In$T: Ty, 
    x#0: Box where $IsBox(x#0, _module._default.In$T), 
    s#0: DatatypeType where $Is(s#0, Tclass._module.Stream(_module._default.In$T)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.IsSubStream
function _module.__default.IsSubStream(_module._default.IsSubStream$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    u#0: DatatypeType)
   : bool
uses {
// definition axiom for _module.__default.IsSubStream (revealed)
axiom {:id "id11"} 3 <= $FunctionContextHeight
   ==> (forall _module._default.IsSubStream$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      u#0: DatatypeType :: 
    { _module.__default.IsSubStream(_module._default.IsSubStream$_T0, $LS($ly), s#0, u#0) } 
    _module.__default.IsSubStream#canCall(_module._default.IsSubStream$_T0, s#0, u#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.IsSubStream$_T0))
           && $Is(u#0, Tclass._module.Stream(_module._default.IsSubStream$_T0)))
       ==> _module.Stream.Cons_q(s#0)
         && _module.__default.In#canCall(_module._default.IsSubStream$_T0, _module.Stream.head(s#0), u#0)
         && (_module.__default.In(_module._default.IsSubStream$_T0, _module.Stream.head(s#0), u#0)
           ==> _module.Stream.Cons_q(s#0)
             && _module.__default.IsSubStream#canCall(_module._default.IsSubStream$_T0, _module.Stream.tail(s#0), u#0))
         && _module.__default.IsSubStream(_module._default.IsSubStream$_T0, $LS($ly), s#0, u#0)
           == (_module.__default.In(_module._default.IsSubStream$_T0, _module.Stream.head(s#0), u#0)
             && _module.__default.IsSubStream(_module._default.IsSubStream$_T0, $ly, _module.Stream.tail(s#0), u#0)));
}

function _module.__default.IsSubStream#canCall(_module._default.IsSubStream$_T0: Ty, s#0: DatatypeType, u#0: DatatypeType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.IsSubStream$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    u#0: DatatypeType :: 
  { _module.__default.IsSubStream(_module._default.IsSubStream$_T0, $LS($ly), s#0, u#0) } 
  _module.__default.IsSubStream(_module._default.IsSubStream$_T0, $LS($ly), s#0, u#0)
     == _module.__default.IsSubStream(_module._default.IsSubStream$_T0, $ly, s#0, u#0));

// fuel synonym axiom
axiom (forall _module._default.IsSubStream$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    u#0: DatatypeType :: 
  { _module.__default.IsSubStream(_module._default.IsSubStream$_T0, AsFuelBottom($ly), s#0, u#0) } 
  _module.__default.IsSubStream(_module._default.IsSubStream$_T0, $ly, s#0, u#0)
     == _module.__default.IsSubStream(_module._default.IsSubStream$_T0, $LZ, s#0, u#0));

function _module.__default.IsSubStream#requires(Ty, LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.IsSubStream
axiom (forall _module._default.IsSubStream$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    u#0: DatatypeType :: 
  { _module.__default.IsSubStream#requires(_module._default.IsSubStream$_T0, $ly, s#0, u#0) } 
  $Is(s#0, Tclass._module.Stream(_module._default.IsSubStream$_T0))
       && $Is(u#0, Tclass._module.Stream(_module._default.IsSubStream$_T0))
     ==> _module.__default.IsSubStream#requires(_module._default.IsSubStream$_T0, $ly, s#0, u#0)
       == true);

// 1st prefix predicate axiom for _module.__default.IsSubStream_h
axiom 4 <= $FunctionContextHeight
   ==> (forall _module._default.IsSubStream#$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      u#0: DatatypeType :: 
    { _module.__default.IsSubStream(_module._default.IsSubStream#$_T0, $LS($ly), s#0, u#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.IsSubStream#$_T0))
         && $Is(u#0, Tclass._module.Stream(_module._default.IsSubStream#$_T0))
         && _module.__default.IsSubStream(_module._default.IsSubStream#$_T0, $LS($ly), s#0, u#0)
       ==> (forall _k#0: int :: 
        { _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $LS($ly), _k#0, s#0, u#0) } 
        LitInt(0) <= _k#0
           ==> _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $LS($ly), _k#0, s#0, u#0)));

// 2nd prefix predicate axiom
axiom 4 <= $FunctionContextHeight
   ==> (forall _module._default.IsSubStream#$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      u#0: DatatypeType :: 
    { _module.__default.IsSubStream(_module._default.IsSubStream#$_T0, $LS($ly), s#0, u#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.IsSubStream#$_T0))
         && $Is(u#0, Tclass._module.Stream(_module._default.IsSubStream#$_T0))
         && (forall _k#0: int :: 
          { _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $LS($ly), _k#0, s#0, u#0) } 
          LitInt(0) <= _k#0
             ==> _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $LS($ly), _k#0, s#0, u#0))
       ==> _module.__default.IsSubStream(_module._default.IsSubStream#$_T0, $LS($ly), s#0, u#0));

// 3rd prefix predicate axiom
axiom 4 <= $FunctionContextHeight
   ==> (forall _module._default.IsSubStream#$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      u#0: DatatypeType, 
      _k#0: int :: 
    { _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $ly, _k#0, s#0, u#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.IsSubStream#$_T0))
         && $Is(u#0, Tclass._module.Stream(_module._default.IsSubStream#$_T0))
         && _k#0 == 0
       ==> _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $ly, _k#0, s#0, u#0));

procedure {:verboseName "IsSubStream (well-formedness)"} CheckWellformed$$_module.__default.IsSubStream(_module._default.IsSubStream$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.IsSubStream$_T0)), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._module.Stream(_module._default.IsSubStream$_T0)));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.IsSubStream#
function _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: int, 
    s#0: DatatypeType, 
    u#0: DatatypeType)
   : bool
uses {
// definition axiom for _module.__default.IsSubStream_h (revealed)
axiom {:id "id13"} 4 <= $FunctionContextHeight
   ==> (forall _module._default.IsSubStream#$_T0: Ty, 
      $ly: LayerType, 
      _k#0: int, 
      s#0: DatatypeType, 
      u#0: DatatypeType :: 
    { _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $LS($ly), _k#0, s#0, u#0) } 
    _module.__default.IsSubStream_h#canCall(_module._default.IsSubStream#$_T0, _k#0, s#0, u#0)
         || (4 < $FunctionContextHeight
           && 
          LitInt(0) <= _k#0
           && $Is(s#0, Tclass._module.Stream(_module._default.IsSubStream#$_T0))
           && $Is(u#0, Tclass._module.Stream(_module._default.IsSubStream#$_T0)))
       ==> (0 < _k#0
           ==> _module.Stream.Cons_q(s#0)
             && _module.__default.In#canCall(_module._default.IsSubStream#$_T0, _module.Stream.head(s#0), u#0)
             && (_module.__default.In(_module._default.IsSubStream#$_T0, _module.Stream.head(s#0), u#0)
               ==> _module.Stream.Cons_q(s#0)
                 && _module.__default.IsSubStream_h#canCall(_module._default.IsSubStream#$_T0, _k#0 - 1, _module.Stream.tail(s#0), u#0)))
         && _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $LS($ly), _k#0, s#0, u#0)
           == (0 < _k#0
             ==> _module.__default.In(_module._default.IsSubStream#$_T0, _module.Stream.head(s#0), u#0)
               && _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $ly, _k#0 - 1, _module.Stream.tail(s#0), u#0)));
// definition axiom for _module.__default.IsSubStream_h for decreasing-related literals (revealed)
axiom {:id "id14"} 4 <= $FunctionContextHeight
   ==> (forall _module._default.IsSubStream#$_T0: Ty, 
      $ly: LayerType, 
      _k#0: int, 
      s#0: DatatypeType, 
      u#0: DatatypeType :: 
    {:weight 3} { _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $LS($ly), LitInt(_k#0), s#0, u#0) } 
    _module.__default.IsSubStream_h#canCall(_module._default.IsSubStream#$_T0, LitInt(_k#0), s#0, u#0)
         || (4 < $FunctionContextHeight
           && 
          LitInt(0) <= _k#0
           && $Is(s#0, Tclass._module.Stream(_module._default.IsSubStream#$_T0))
           && $Is(u#0, Tclass._module.Stream(_module._default.IsSubStream#$_T0)))
       ==> (0 < _k#0
           ==> _module.Stream.Cons_q(s#0)
             && _module.__default.In#canCall(_module._default.IsSubStream#$_T0, _module.Stream.head(s#0), u#0)
             && (_module.__default.In(_module._default.IsSubStream#$_T0, _module.Stream.head(s#0), u#0)
               ==> _module.Stream.Cons_q(s#0)
                 && _module.__default.IsSubStream_h#canCall(_module._default.IsSubStream#$_T0, _k#0 - 1, _module.Stream.tail(s#0), u#0)))
         && _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $LS($ly), LitInt(_k#0), s#0, u#0)
           == (0 < _k#0
             ==> _module.__default.In(_module._default.IsSubStream#$_T0, _module.Stream.head(s#0), u#0)
               && _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, 
                $LS($ly), 
                _k#0 - 1, 
                _module.Stream.tail(s#0), 
                u#0)));
// definition axiom for _module.__default.IsSubStream_h for all literals (revealed)
axiom {:id "id15"} 4 <= $FunctionContextHeight
   ==> (forall _module._default.IsSubStream#$_T0: Ty, 
      $ly: LayerType, 
      _k#0: int, 
      s#0: DatatypeType, 
      u#0: DatatypeType :: 
    {:weight 3} { _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $LS($ly), LitInt(_k#0), Lit(s#0), Lit(u#0)) } 
    _module.__default.IsSubStream_h#canCall(_module._default.IsSubStream#$_T0, LitInt(_k#0), Lit(s#0), Lit(u#0))
         || (4 < $FunctionContextHeight
           && 
          LitInt(0) <= _k#0
           && $Is(s#0, Tclass._module.Stream(_module._default.IsSubStream#$_T0))
           && $Is(u#0, Tclass._module.Stream(_module._default.IsSubStream#$_T0)))
       ==> (0 < _k#0
           ==> _module.Stream.Cons_q(Lit(s#0))
             && _module.__default.In#canCall(_module._default.IsSubStream#$_T0, Lit(_module.Stream.head(Lit(s#0))), Lit(u#0))
             && (Lit(_module.__default.In(_module._default.IsSubStream#$_T0, Lit(_module.Stream.head(Lit(s#0))), Lit(u#0)))
               ==> _module.Stream.Cons_q(Lit(s#0))
                 && _module.__default.IsSubStream_h#canCall(_module._default.IsSubStream#$_T0, 
                  _k#0 - 1, 
                  Lit(_module.Stream.tail(Lit(s#0))), 
                  Lit(u#0))))
         && _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $LS($ly), LitInt(_k#0), Lit(s#0), Lit(u#0))
           == (0 < _k#0
             ==> _module.__default.In(_module._default.IsSubStream#$_T0, Lit(_module.Stream.head(Lit(s#0))), Lit(u#0))
               && _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, 
                $LS($ly), 
                _k#0 - 1, 
                Lit(_module.Stream.tail(Lit(s#0))), 
                Lit(u#0))));
}

function _module.__default.IsSubStream_h#canCall(_module._default.IsSubStream#$_T0: Ty, 
    _k#0: int, 
    s#0: DatatypeType, 
    u#0: DatatypeType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.IsSubStream#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: int, 
    s#0: DatatypeType, 
    u#0: DatatypeType :: 
  { _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $LS($ly), _k#0, s#0, u#0) } 
  _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $LS($ly), _k#0, s#0, u#0)
     == _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $ly, _k#0, s#0, u#0));

// fuel synonym axiom
axiom (forall _module._default.IsSubStream#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: int, 
    s#0: DatatypeType, 
    u#0: DatatypeType :: 
  { _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, AsFuelBottom($ly), _k#0, s#0, u#0) } 
  _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $ly, _k#0, s#0, u#0)
     == _module.__default.IsSubStream_h(_module._default.IsSubStream#$_T0, $LZ, _k#0, s#0, u#0));

function _module.__default.IsSubStream_h#requires(Ty, LayerType, int, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.IsSubStream_h
axiom (forall _module._default.IsSubStream#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: int, 
    s#0: DatatypeType, 
    u#0: DatatypeType :: 
  { _module.__default.IsSubStream_h#requires(_module._default.IsSubStream#$_T0, $ly, _k#0, s#0, u#0) } 
  LitInt(0) <= _k#0
       && $Is(s#0, Tclass._module.Stream(_module._default.IsSubStream#$_T0))
       && $Is(u#0, Tclass._module.Stream(_module._default.IsSubStream#$_T0))
     ==> _module.__default.IsSubStream_h#requires(_module._default.IsSubStream#$_T0, $ly, _k#0, s#0, u#0)
       == true);

procedure {:verboseName "Lemma_InTail (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__InTail(_module._default.Lemma_InTail$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module._default.Lemma_InTail$T)
         && $IsAllocBox(x#0, _module._default.Lemma_InTail$T, $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_InTail$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_InTail$T), $Heap)
         && $IsA#_module.Stream(s#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Lemma_InTail (call)"} Call$$_module.__default.Lemma__InTail(_module._default.Lemma_InTail$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module._default.Lemma_InTail$T)
         && $IsAllocBox(x#0, _module._default.Lemma_InTail$T, $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_InTail$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_InTail$T), $Heap)
         && $IsA#_module.Stream(s#0));
  // user-defined preconditions
  requires {:id "id18"} _module.__default.In#canCall(_module._default.Lemma_InTail$T, x#0, _module.Stream.tail(s#0))
     ==> _module.__default.In(_module._default.Lemma_InTail$T, x#0, _module.Stream.tail(s#0))
       || (exists n#0: int :: 
        { _module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), _module.Stream.tail(s#0), n#0) } 
        LitInt(0) <= n#0
           && 
          LitInt(0) <= n#0
           && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), _module.Stream.tail(s#0), n#0))
             == x#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.In#canCall(_module._default.Lemma_InTail$T, x#0, s#0);
  free ensures {:id "id19"} _module.__default.In#canCall(_module._default.Lemma_InTail$T, x#0, s#0)
     && 
    _module.__default.In(_module._default.Lemma_InTail$T, x#0, s#0)
     && (exists n#1: int :: 
      { _module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), s#0, n#1) } 
      LitInt(0) <= n#1
         && 
        LitInt(0) <= n#1
         && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), s#0, n#1))
           == x#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_InTail (correctness)"} Impl$$_module.__default.Lemma__InTail(_module._default.Lemma_InTail$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module._default.Lemma_InTail$T)
         && $IsAllocBox(x#0, _module._default.Lemma_InTail$T, $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_InTail$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_InTail$T), $Heap)
         && $IsA#_module.Stream(s#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id20"} _module.__default.In#canCall(_module._default.Lemma_InTail$T, x#0, _module.Stream.tail(s#0))
     && 
    _module.__default.In(_module._default.Lemma_InTail$T, x#0, _module.Stream.tail(s#0))
     && (exists n#2: int :: 
      { _module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), _module.Stream.tail(s#0), n#2) } 
      LitInt(0) <= n#2
         && 
        LitInt(0) <= n#2
         && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), _module.Stream.tail(s#0), n#2))
           == x#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.In#canCall(_module._default.Lemma_InTail$T, x#0, s#0);
  ensures {:id "id21"} _module.__default.In#canCall(_module._default.Lemma_InTail$T, x#0, s#0)
     ==> _module.__default.In(_module._default.Lemma_InTail$T, x#0, s#0)
       || (exists n#3: int :: 
        { _module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), s#0, n#3) } 
        LitInt(0) <= n#3
           && 
          LitInt(0) <= n#3
           && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), s#0, n#3))
             == x#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_InTail (correctness)"} Impl$$_module.__default.Lemma__InTail(_module._default.Lemma_InTail$T: Ty, x#0: Box, s#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#4: int;
  var n#5: int;
  var ##s#2: DatatypeType;
  var ##n#0: int;
  var ##s#3: DatatypeType;
  var ##n#1: int;

    // AddMethodImpl: Lemma_InTail, Impl$$_module.__default.Lemma__InTail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(23,9)
    havoc n#5;
    if (true)
    {
        if (LitInt(0) <= n#5)
        {
            assume _module.Stream.Cons_q(s#0);
            ##s#2 := _module.Stream.tail(s#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#2, Tclass._module.Stream(_module._default.Lemma_InTail$T), $Heap);
            assert {:id "id22"} $Is(n#5, Tclass._System.nat());
            ##n#0 := n#5;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(_module._default.Lemma_InTail$T, _module.Stream.tail(s#0), n#5);
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), _module.Stream.tail(s#0), n#5));
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), _module.Stream.tail(s#0), n#5));
        }

        assume LitInt(0) <= n#5
           ==> _module.Stream.Cons_q(s#0)
             && _module.__default.Tail#canCall(_module._default.Lemma_InTail$T, _module.Stream.tail(s#0), n#5)
             && _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), _module.Stream.tail(s#0), n#5));
    }

    assert {:id "id23"} ($Is(LitInt(0), TInt)
         && 
        LitInt(0) <= LitInt(0)
         && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), _module.Stream.tail(s#0), LitInt(0)))
           == x#0)
       || 
      ($Is(LitInt(0), TInt)
         && 
        LitInt(0) <= LitInt(0)
         && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), _module.Stream.tail(s#0), LitInt(0)))
           == x#0)
       || (exists $as#n0#0: int :: 
        LitInt(0) <= $as#n0#0
           && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), _module.Stream.tail(s#0), $as#n0#0))
             == x#0);
    havoc n#4;
    assume {:id "id24"} LitInt(0) <= n#4
       && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), _module.Stream.tail(s#0), n#4))
         == x#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(24,3)
    ##s#3 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#3, Tclass._module.Stream(_module._default.Lemma_InTail$T), $Heap);
    assert {:id "id25"} $Is(n#4 + 1, Tclass._System.nat());
    ##n#1 := n#4 + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.Tail#canCall(_module._default.Lemma_InTail$T, s#0, n#4 + 1);
    assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), s#0, n#4 + 1));
    assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), s#0, n#4 + 1));
    assume _module.__default.Tail#canCall(_module._default.Lemma_InTail$T, s#0, n#4 + 1)
       && _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), s#0, n#4 + 1));
    assert {:id "id26"} {:subsumption 0} _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LS($LZ)), s#0, n#4 + 1))
       == x#0;
    assume {:id "id27"} _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InTail$T, $LS($LZ), s#0, n#4 + 1))
       == x#0;
}



procedure {:verboseName "Lemma_TailSubStream (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__TailSubStream(_module._default.Lemma_TailSubStream$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_TailSubStream$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_TailSubStream$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._module.Stream(_module._default.Lemma_TailSubStream$_T0))
         && $IsAlloc(u#0, Tclass._module.Stream(_module._default.Lemma_TailSubStream$_T0), $Heap)
         && $IsA#_module.Stream(u#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Lemma_TailSubStream (call)"} Call$$_module.__default.Lemma__TailSubStream(_module._default.Lemma_TailSubStream$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_TailSubStream$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_TailSubStream$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._module.Stream(_module._default.Lemma_TailSubStream$_T0))
         && $IsAlloc(u#0, Tclass._module.Stream(_module._default.Lemma_TailSubStream$_T0), $Heap)
         && $IsA#_module.Stream(u#0));
  // user-defined preconditions
  requires {:id "id30"} _module.__default.IsSubStream#canCall(_module._default.Lemma_TailSubStream$_T0, s#0, _module.Stream.tail(u#0))
     ==> _module.__default.IsSubStream(_module._default.Lemma_TailSubStream$_T0, 
        $LS($LZ), 
        s#0, 
        _module.Stream.tail(u#0))
       || (_module.__default.In#canCall(_module._default.Lemma_TailSubStream$_T0, 
          _module.Stream.head(s#0), 
          _module.Stream.tail(u#0))
         ==> _module.__default.In(_module._default.Lemma_TailSubStream$_T0, 
            _module.Stream.head(s#0), 
            _module.Stream.tail(u#0))
           || (exists n#0: int :: 
            { _module.__default.Tail(_module._default.Lemma_TailSubStream$_T0, 
                $LS($LZ), 
                _module.Stream.tail(u#0), 
                n#0) } 
            LitInt(0) <= n#0
               && 
              LitInt(0) <= n#0
               && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_TailSubStream$_T0, 
                    $LS($LZ), 
                    _module.Stream.tail(u#0), 
                    n#0))
                 == _module.Stream.head(s#0)));
  requires {:id "id31"} _module.__default.IsSubStream#canCall(_module._default.Lemma_TailSubStream$_T0, s#0, _module.Stream.tail(u#0))
     ==> _module.__default.IsSubStream(_module._default.Lemma_TailSubStream$_T0, 
        $LS($LZ), 
        s#0, 
        _module.Stream.tail(u#0))
       || _module.__default.IsSubStream(_module._default.Lemma_TailSubStream$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#0), 
        _module.Stream.tail(u#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsSubStream#canCall(_module._default.Lemma_TailSubStream$_T0, s#0, u#0);
  free ensures {:id "id32"} _module.__default.IsSubStream#canCall(_module._default.Lemma_TailSubStream$_T0, s#0, u#0)
     && 
    _module.__default.IsSubStream(_module._default.Lemma_TailSubStream$_T0, $LS($LZ), s#0, u#0)
     && 
    _module.__default.In(_module._default.Lemma_TailSubStream$_T0, _module.Stream.head(s#0), u#0)
     && _module.__default.IsSubStream(_module._default.Lemma_TailSubStream$_T0, 
      $LS($LZ), 
      _module.Stream.tail(s#0), 
      u#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_TailSubStream# (co-call)"} CoCall$$_module.__default.Lemma__TailSubStream_h(_module._default.Lemma_TailSubStream#$_T0: Ty, 
    _k#0: int where LitInt(0) <= _k#0, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Lemma_TailSubStream#$_T0))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.Lemma_TailSubStream#$_T0), $Heap)
         && $IsA#_module.Stream(s#1), 
    u#1: DatatypeType
       where $Is(u#1, Tclass._module.Stream(_module._default.Lemma_TailSubStream#$_T0))
         && $IsAlloc(u#1, Tclass._module.Stream(_module._default.Lemma_TailSubStream#$_T0), $Heap)
         && $IsA#_module.Stream(u#1));
  // user-defined preconditions
  requires {:id "id33"} _module.__default.IsSubStream#canCall(_module._default.Lemma_TailSubStream#$_T0, s#1, _module.Stream.tail(u#1))
     ==> _module.__default.IsSubStream(_module._default.Lemma_TailSubStream#$_T0, 
        $LS($LZ), 
        s#1, 
        _module.Stream.tail(u#1))
       || (_module.__default.In#canCall(_module._default.Lemma_TailSubStream#$_T0, 
          _module.Stream.head(s#1), 
          _module.Stream.tail(u#1))
         ==> _module.__default.In(_module._default.Lemma_TailSubStream#$_T0, 
            _module.Stream.head(s#1), 
            _module.Stream.tail(u#1))
           || (exists n#2: int :: 
            { _module.__default.Tail(_module._default.Lemma_TailSubStream#$_T0, 
                $LS($LZ), 
                _module.Stream.tail(u#1), 
                n#2) } 
            LitInt(0) <= n#2
               && 
              LitInt(0) <= n#2
               && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_TailSubStream#$_T0, 
                    $LS($LZ), 
                    _module.Stream.tail(u#1), 
                    n#2))
                 == _module.Stream.head(s#1)));
  requires {:id "id34"} _module.__default.IsSubStream#canCall(_module._default.Lemma_TailSubStream#$_T0, s#1, _module.Stream.tail(u#1))
     ==> _module.__default.IsSubStream(_module._default.Lemma_TailSubStream#$_T0, 
        $LS($LZ), 
        s#1, 
        _module.Stream.tail(u#1))
       || _module.__default.IsSubStream(_module._default.Lemma_TailSubStream#$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#1), 
        _module.Stream.tail(u#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsSubStream_h#canCall(_module._default.Lemma_TailSubStream#$_T0, _k#0, s#1, u#1);
  free ensures {:id "id35"} _module.__default.IsSubStream_h#canCall(_module._default.Lemma_TailSubStream#$_T0, _k#0, s#1, u#1)
     && 
    _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStream#$_T0, $LS($LZ), _k#0, s#1, u#1)
     && (0 < _k#0
       ==> _module.__default.In(_module._default.Lemma_TailSubStream#$_T0, _module.Stream.head(s#1), u#1)
         && _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStream#$_T0, 
          $LS($LZ), 
          _k#0 - 1, 
          _module.Stream.tail(s#1), 
          u#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_TailSubStream# (correctness)"} Impl$$_module.__default.Lemma__TailSubStream_h(_module._default.Lemma_TailSubStream#$_T0: Ty, 
    _k#0: int where LitInt(0) <= _k#0, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Lemma_TailSubStream#$_T0))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.Lemma_TailSubStream#$_T0), $Heap)
         && $IsA#_module.Stream(s#1), 
    u#1: DatatypeType
       where $Is(u#1, Tclass._module.Stream(_module._default.Lemma_TailSubStream#$_T0))
         && $IsAlloc(u#1, Tclass._module.Stream(_module._default.Lemma_TailSubStream#$_T0), $Heap)
         && $IsA#_module.Stream(u#1))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id36"} _module.__default.IsSubStream#canCall(_module._default.Lemma_TailSubStream#$_T0, s#1, _module.Stream.tail(u#1))
     && 
    _module.__default.IsSubStream(_module._default.Lemma_TailSubStream#$_T0, 
      $LS($LZ), 
      s#1, 
      _module.Stream.tail(u#1))
     && 
    _module.__default.In(_module._default.Lemma_TailSubStream#$_T0, 
      _module.Stream.head(s#1), 
      _module.Stream.tail(u#1))
     && _module.__default.IsSubStream(_module._default.Lemma_TailSubStream#$_T0, 
      $LS($LZ), 
      _module.Stream.tail(s#1), 
      _module.Stream.tail(u#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsSubStream_h#canCall(_module._default.Lemma_TailSubStream#$_T0, _k#0, s#1, u#1);
  ensures {:id "id37"} _module.__default.IsSubStream_h#canCall(_module._default.Lemma_TailSubStream#$_T0, _k#0, s#1, u#1)
     ==> _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStream#$_T0, $LS($LZ), _k#0, s#1, u#1)
       || (0 < _k#0
         ==> 
        _module.__default.In#canCall(_module._default.Lemma_TailSubStream#$_T0, _module.Stream.head(s#1), u#1)
         ==> _module.__default.In(_module._default.Lemma_TailSubStream#$_T0, _module.Stream.head(s#1), u#1)
           || (exists n#5: int :: 
            { _module.__default.Tail(_module._default.Lemma_TailSubStream#$_T0, $LS($LZ), u#1, n#5) } 
            LitInt(0) <= n#5
               && 
              LitInt(0) <= n#5
               && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_TailSubStream#$_T0, $LS($LZ), u#1, n#5))
                 == _module.Stream.head(s#1)));
  ensures {:id "id38"} _module.__default.IsSubStream_h#canCall(_module._default.Lemma_TailSubStream#$_T0, _k#0, s#1, u#1)
     ==> _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStream#$_T0, $LS($LZ), _k#0, s#1, u#1)
       || (0 < _k#0
         ==> _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStream#$_T0, 
          $LS($LS($LZ)), 
          _k#0 - 1, 
          _module.Stream.tail(s#1), 
          u#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_TailSubStream# (correctness)"} Impl$$_module.__default.Lemma__TailSubStream_h(_module._default.Lemma_TailSubStream#$_T0: Ty, 
    _k#0: int, 
    s#1: DatatypeType, 
    u#1: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var x##0: Box;
  var s##0: DatatypeType;

    // AddMethodImpl: Lemma_TailSubStream#, Impl$$_module.__default.Lemma__TailSubStream_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#1);
    assume $IsA#_module.Stream(u#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: int, $ih#s0#0: DatatypeType, $ih#u0#0: DatatypeType :: 
      { _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStream#$_T0, 
          $LS($LZ), 
          $ih#_k0#0, 
          $ih#s0#0, 
          $ih#u0#0) } 
      LitInt(0) <= $ih#_k0#0
           && $Is($ih#s0#0, Tclass._module.Stream(_module._default.Lemma_TailSubStream#$_T0))
           && $Is($ih#u0#0, Tclass._module.Stream(_module._default.Lemma_TailSubStream#$_T0))
           && _module.__default.IsSubStream(_module._default.Lemma_TailSubStream#$_T0, 
            $LS($LZ), 
            $ih#s0#0, 
            _module.Stream.tail($ih#u0#0))
           && 
          0 <= $ih#_k0#0
           && $ih#_k0#0 < _k#0
         ==> _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStream#$_T0, 
          $LS($LZ), 
          $ih#_k0#0, 
          $ih#s0#0, 
          $ih#u0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(29,1)
    assume true;
    if (0 < _k#0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(30,15)
        // TrCallStmt: Before ProcessCallStmt
        assume _module.Stream.Cons_q(s#1);
        assume _module.Stream.Cons_q(s#1);
        // ProcessCallStmt: CheckSubrange
        x##0 := _module.Stream.head(s#1);
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0 := u#1;
        call {:id "id39"} Call$$_module.__default.Lemma__InTail(_module._default.Lemma_TailSubStream#$_T0, x##0, s##0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "Lemma_TailSubStreamK (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__TailSubStreamK(_module._default.Lemma_TailSubStreamK$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_TailSubStreamK$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_TailSubStreamK$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._module.Stream(_module._default.Lemma_TailSubStreamK$_T0))
         && $IsAlloc(u#0, Tclass._module.Stream(_module._default.Lemma_TailSubStreamK$_T0), $Heap)
         && $IsA#_module.Stream(u#0), 
    k#0: int where LitInt(0) <= k#0);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Lemma_TailSubStreamK (call)"} Call$$_module.__default.Lemma__TailSubStreamK(_module._default.Lemma_TailSubStreamK$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_TailSubStreamK$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_TailSubStreamK$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._module.Stream(_module._default.Lemma_TailSubStreamK$_T0))
         && $IsAlloc(u#0, Tclass._module.Stream(_module._default.Lemma_TailSubStreamK$_T0), $Heap)
         && $IsA#_module.Stream(u#0), 
    k#0: int where LitInt(0) <= k#0);
  // user-defined preconditions
  requires {:id "id42"} _module.__default.IsSubStream_h#canCall(_module._default.Lemma_TailSubStreamK$_T0, k#0, s#0, _module.Stream.tail(u#0))
     ==> _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStreamK$_T0, 
        $LS($LZ), 
        k#0, 
        s#0, 
        _module.Stream.tail(u#0))
       || (0 < k#0
         ==> 
        _module.__default.In#canCall(_module._default.Lemma_TailSubStreamK$_T0, 
          _module.Stream.head(s#0), 
          _module.Stream.tail(u#0))
         ==> _module.__default.In(_module._default.Lemma_TailSubStreamK$_T0, 
            _module.Stream.head(s#0), 
            _module.Stream.tail(u#0))
           || (exists n#0: int :: 
            { _module.__default.Tail(_module._default.Lemma_TailSubStreamK$_T0, 
                $LS($LZ), 
                _module.Stream.tail(u#0), 
                n#0) } 
            LitInt(0) <= n#0
               && 
              LitInt(0) <= n#0
               && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_TailSubStreamK$_T0, 
                    $LS($LZ), 
                    _module.Stream.tail(u#0), 
                    n#0))
                 == _module.Stream.head(s#0)));
  requires {:id "id43"} _module.__default.IsSubStream_h#canCall(_module._default.Lemma_TailSubStreamK$_T0, k#0, s#0, _module.Stream.tail(u#0))
     ==> _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStreamK$_T0, 
        $LS($LZ), 
        k#0, 
        s#0, 
        _module.Stream.tail(u#0))
       || (0 < k#0
         ==> _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStreamK$_T0, 
          $LS($LS($LZ)), 
          k#0 - 1, 
          _module.Stream.tail(s#0), 
          _module.Stream.tail(u#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsSubStream_h#canCall(_module._default.Lemma_TailSubStreamK$_T0, k#0, s#0, u#0);
  free ensures {:id "id44"} _module.__default.IsSubStream_h#canCall(_module._default.Lemma_TailSubStreamK$_T0, k#0, s#0, u#0)
     && 
    _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStreamK$_T0, $LS($LZ), k#0, s#0, u#0)
     && (0 < k#0
       ==> _module.__default.In(_module._default.Lemma_TailSubStreamK$_T0, _module.Stream.head(s#0), u#0)
         && _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStreamK$_T0, 
          $LS($LZ), 
          k#0 - 1, 
          _module.Stream.tail(s#0), 
          u#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_TailSubStreamK (correctness)"} Impl$$_module.__default.Lemma__TailSubStreamK(_module._default.Lemma_TailSubStreamK$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_TailSubStreamK$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_TailSubStreamK$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._module.Stream(_module._default.Lemma_TailSubStreamK$_T0))
         && $IsAlloc(u#0, Tclass._module.Stream(_module._default.Lemma_TailSubStreamK$_T0), $Heap)
         && $IsA#_module.Stream(u#0), 
    k#0: int where LitInt(0) <= k#0)
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id45"} _module.__default.IsSubStream_h#canCall(_module._default.Lemma_TailSubStreamK$_T0, k#0, s#0, _module.Stream.tail(u#0))
     && 
    _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStreamK$_T0, 
      $LS($LZ), 
      k#0, 
      s#0, 
      _module.Stream.tail(u#0))
     && (0 < k#0
       ==> _module.__default.In(_module._default.Lemma_TailSubStreamK$_T0, 
          _module.Stream.head(s#0), 
          _module.Stream.tail(u#0))
         && _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStreamK$_T0, 
          $LS($LZ), 
          k#0 - 1, 
          _module.Stream.tail(s#0), 
          _module.Stream.tail(u#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsSubStream_h#canCall(_module._default.Lemma_TailSubStreamK$_T0, k#0, s#0, u#0);
  ensures {:id "id46"} _module.__default.IsSubStream_h#canCall(_module._default.Lemma_TailSubStreamK$_T0, k#0, s#0, u#0)
     ==> _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStreamK$_T0, $LS($LZ), k#0, s#0, u#0)
       || (0 < k#0
         ==> 
        _module.__default.In#canCall(_module._default.Lemma_TailSubStreamK$_T0, _module.Stream.head(s#0), u#0)
         ==> _module.__default.In(_module._default.Lemma_TailSubStreamK$_T0, _module.Stream.head(s#0), u#0)
           || (exists n#3: int :: 
            { _module.__default.Tail(_module._default.Lemma_TailSubStreamK$_T0, $LS($LZ), u#0, n#3) } 
            LitInt(0) <= n#3
               && 
              LitInt(0) <= n#3
               && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_TailSubStreamK$_T0, $LS($LZ), u#0, n#3))
                 == _module.Stream.head(s#0)));
  ensures {:id "id47"} _module.__default.IsSubStream_h#canCall(_module._default.Lemma_TailSubStreamK$_T0, k#0, s#0, u#0)
     ==> _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStreamK$_T0, $LS($LZ), k#0, s#0, u#0)
       || (0 < k#0
         ==> _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStreamK$_T0, 
          $LS($LS($LZ)), 
          k#0 - 1, 
          _module.Stream.tail(s#0), 
          u#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_TailSubStreamK (correctness)"} Impl$$_module.__default.Lemma__TailSubStreamK(_module._default.Lemma_TailSubStreamK$_T0: Ty, 
    s#0: DatatypeType, 
    u#0: DatatypeType, 
    k#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var x##0_0: Box;
  var s##0_0: DatatypeType;

    // AddMethodImpl: Lemma_TailSubStreamK, Impl$$_module.__default.Lemma__TailSubStreamK
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#0);
    assume $IsA#_module.Stream(u#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#s0#0: DatatypeType, $ih#u0#0: DatatypeType, $ih#k0#0: int :: 
      { _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStreamK$_T0, 
          $LS($LZ), 
          $ih#k0#0, 
          $ih#s0#0, 
          _module.Stream.tail($ih#u0#0)) } 
      $Is($ih#s0#0, Tclass._module.Stream(_module._default.Lemma_TailSubStreamK$_T0))
           && $Is($ih#u0#0, Tclass._module.Stream(_module._default.Lemma_TailSubStreamK$_T0))
           && LitInt(0) <= $ih#k0#0
           && _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStreamK$_T0, 
            $LS($LZ), 
            $ih#k0#0, 
            $ih#s0#0, 
            _module.Stream.tail($ih#u0#0))
           && 
          0 <= $ih#k0#0
           && $ih#k0#0 < k#0
         ==> _module.__default.IsSubStream_h(_module._default.Lemma_TailSubStreamK$_T0, 
          $LS($LZ), 
          $ih#k0#0, 
          $ih#s0#0, 
          $ih#u0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(36,3)
    assume true;
    if (k#0 != 0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(37,17)
        // TrCallStmt: Before ProcessCallStmt
        assume _module.Stream.Cons_q(s#0);
        assume _module.Stream.Cons_q(s#0);
        // ProcessCallStmt: CheckSubrange
        x##0_0 := _module.Stream.head(s#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_0 := u#0;
        call {:id "id48"} Call$$_module.__default.Lemma__InTail(_module._default.Lemma_TailSubStreamK$_T0, x##0_0, s##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "Lemma_InSubStream (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__InSubStream(_module._default.Lemma_InSubStream$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module._default.Lemma_InSubStream$T)
         && $IsAllocBox(x#0, _module._default.Lemma_InSubStream$T, $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_InSubStream$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_InSubStream$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._module.Stream(_module._default.Lemma_InSubStream$T))
         && $IsAlloc(u#0, Tclass._module.Stream(_module._default.Lemma_InSubStream$T), $Heap)
         && $IsA#_module.Stream(u#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Lemma_InSubStream (call)"} Call$$_module.__default.Lemma__InSubStream(_module._default.Lemma_InSubStream$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module._default.Lemma_InSubStream$T)
         && $IsAllocBox(x#0, _module._default.Lemma_InSubStream$T, $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_InSubStream$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_InSubStream$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._module.Stream(_module._default.Lemma_InSubStream$T))
         && $IsAlloc(u#0, Tclass._module.Stream(_module._default.Lemma_InSubStream$T), $Heap)
         && $IsA#_module.Stream(u#0));
  // user-defined preconditions
  requires {:id "id52"} _module.__default.In#canCall(_module._default.Lemma_InSubStream$T, x#0, s#0)
     ==> _module.__default.In(_module._default.Lemma_InSubStream$T, x#0, s#0)
       || (exists n#0: int :: 
        { _module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), s#0, n#0) } 
        LitInt(0) <= n#0
           && 
          LitInt(0) <= n#0
           && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), s#0, n#0))
             == x#0);
  requires {:id "id53"} _module.__default.IsSubStream#canCall(_module._default.Lemma_InSubStream$T, s#0, u#0)
     ==> _module.__default.IsSubStream(_module._default.Lemma_InSubStream$T, $LS($LZ), s#0, u#0)
       || (_module.__default.In#canCall(_module._default.Lemma_InSubStream$T, _module.Stream.head(s#0), u#0)
         ==> _module.__default.In(_module._default.Lemma_InSubStream$T, _module.Stream.head(s#0), u#0)
           || (exists n#1: int :: 
            { _module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), u#0, n#1) } 
            LitInt(0) <= n#1
               && 
              LitInt(0) <= n#1
               && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), u#0, n#1))
                 == _module.Stream.head(s#0)));
  requires {:id "id54"} _module.__default.IsSubStream#canCall(_module._default.Lemma_InSubStream$T, s#0, u#0)
     ==> _module.__default.IsSubStream(_module._default.Lemma_InSubStream$T, $LS($LZ), s#0, u#0)
       || _module.__default.IsSubStream(_module._default.Lemma_InSubStream$T, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#0), 
        u#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.In#canCall(_module._default.Lemma_InSubStream$T, x#0, u#0);
  free ensures {:id "id55"} _module.__default.In#canCall(_module._default.Lemma_InSubStream$T, x#0, u#0)
     && 
    _module.__default.In(_module._default.Lemma_InSubStream$T, x#0, u#0)
     && (exists n#2: int :: 
      { _module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), u#0, n#2) } 
      LitInt(0) <= n#2
         && 
        LitInt(0) <= n#2
         && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), u#0, n#2))
           == x#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_InSubStream (correctness)"} Impl$$_module.__default.Lemma__InSubStream(_module._default.Lemma_InSubStream$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module._default.Lemma_InSubStream$T)
         && $IsAllocBox(x#0, _module._default.Lemma_InSubStream$T, $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_InSubStream$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_InSubStream$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._module.Stream(_module._default.Lemma_InSubStream$T))
         && $IsAlloc(u#0, Tclass._module.Stream(_module._default.Lemma_InSubStream$T), $Heap)
         && $IsA#_module.Stream(u#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id56"} _module.__default.In#canCall(_module._default.Lemma_InSubStream$T, x#0, s#0)
     && 
    _module.__default.In(_module._default.Lemma_InSubStream$T, x#0, s#0)
     && (exists n#3: int :: 
      { _module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), s#0, n#3) } 
      LitInt(0) <= n#3
         && 
        LitInt(0) <= n#3
         && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), s#0, n#3))
           == x#0);
  free requires {:id "id57"} _module.__default.IsSubStream#canCall(_module._default.Lemma_InSubStream$T, s#0, u#0)
     && 
    _module.__default.IsSubStream(_module._default.Lemma_InSubStream$T, $LS($LZ), s#0, u#0)
     && 
    _module.__default.In(_module._default.Lemma_InSubStream$T, _module.Stream.head(s#0), u#0)
     && _module.__default.IsSubStream(_module._default.Lemma_InSubStream$T, $LS($LZ), _module.Stream.tail(s#0), u#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.In#canCall(_module._default.Lemma_InSubStream$T, x#0, u#0);
  ensures {:id "id58"} _module.__default.In#canCall(_module._default.Lemma_InSubStream$T, x#0, u#0)
     ==> _module.__default.In(_module._default.Lemma_InSubStream$T, x#0, u#0)
       || (exists n#5: int :: 
        { _module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), u#0, n#5) } 
        LitInt(0) <= n#5
           && 
          LitInt(0) <= n#5
           && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), u#0, n#5))
             == x#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_InSubStream (correctness)"} Impl$$_module.__default.Lemma__InSubStream(_module._default.Lemma_InSubStream$T: Ty, 
    x#0: Box, 
    s#0: DatatypeType, 
    u#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var n#6: int where LitInt(0) <= n#6;
  var n#7: int;
  var ##s#3: DatatypeType;
  var ##n#0: int;
  var defass#t#0: bool;
  var t#0: DatatypeType
     where defass#t#0
       ==> $Is(t#0, Tclass._module.Stream(_module._default.Lemma_InSubStream$T))
         && $IsAlloc(t#0, Tclass._module.Stream(_module._default.Lemma_InSubStream$T), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var preLoop$loop#0$defass#t#0: bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var ##s#4: DatatypeType;
  var ##n#1: int;
  var ##s#5: DatatypeType;
  var ##u#1: DatatypeType;
  var $decr$loop#00: int;
  var $rhs#0_0: DatatypeType;
  var $rhs#0_1: int;
  var newtype$check#0_0: int;

    // AddMethodImpl: Lemma_InSubStream, Impl$$_module.__default.Lemma__InSubStream
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#0);
    assume $IsA#_module.Stream(u#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#s0#0: DatatypeType, $ih#u0#0: DatatypeType :: 
      { _module.__default.In(_module._default.Lemma_InSubStream$T, x#0, $ih#u0#0), _module.__default.In(_module._default.Lemma_InSubStream$T, x#0, $ih#s0#0) } 
        { _module.__default.IsSubStream(_module._default.Lemma_InSubStream$T, $LS($LZ), $ih#s0#0, $ih#u0#0) } 
      true);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(45,9)
    havoc n#7;
    if (LitInt(0) <= n#7)
    {
        if (LitInt(0) <= n#7)
        {
            ##s#3 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#3, Tclass._module.Stream(_module._default.Lemma_InSubStream$T), $Heap);
            ##n#0 := n#7;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(_module._default.Lemma_InSubStream$T, s#0, n#7);
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), s#0, n#7));
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), s#0, n#7));
        }

        assume LitInt(0) <= n#7
           ==> _module.__default.Tail#canCall(_module._default.Lemma_InSubStream$T, s#0, n#7)
             && _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), s#0, n#7));
    }

    assert {:id "id59"} ($Is(LitInt(0), Tclass._System.nat())
         && 
        LitInt(0) <= LitInt(0)
         && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), s#0, LitInt(0)))
           == x#0)
       || 
      ($Is(LitInt(0), Tclass._System.nat())
         && 
        LitInt(0) <= LitInt(0)
         && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), s#0, LitInt(0)))
           == x#0)
       || 
      ($Is(LitInt(0), Tclass._System.nat())
         && 
        LitInt(0) <= LitInt(0)
         && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), s#0, LitInt(0)))
           == x#0)
       || (exists $as#n0#0: int :: 
        LitInt(0) <= $as#n0#0
           && 
          LitInt(0) <= $as#n0#0
           && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), s#0, $as#n0#0))
             == x#0);
    havoc n#6;
    assume {:id "id60"} LitInt(0) <= n#6
       && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), s#0, n#6))
         == x#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(46,9)
    assume true;
    assume true;
    t#0 := s#0;
    defass#t#0 := true;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(47,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    preLoop$loop#0$defass#t#0 := defass#t#0;
    $decr_init$loop#00 := (if n#6 <= LitInt(0) then 0 - n#6 else n#6 - 0);
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id63"} $w$loop#0 ==> LitInt(0) <= n#6;
      free invariant $w$loop#0
         ==> _module.__default.Tail#canCall(_module._default.Lemma_InSubStream$T, t#0, n#6)
           && _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), t#0, n#6));
      invariant {:id "id66"} $w$loop#0
         ==> _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LS($LZ)), t#0, n#6))
           == x#0;
      free invariant $w$loop#0
         ==> _module.__default.IsSubStream#canCall(_module._default.Lemma_InSubStream$T, t#0, u#0);
      invariant {:id "id69"} $w$loop#0
         ==> 
        _module.__default.IsSubStream#canCall(_module._default.Lemma_InSubStream$T, t#0, u#0)
         ==> _module.__default.IsSubStream(_module._default.Lemma_InSubStream$T, $LS($LZ), t#0, u#0)
           || (_module.__default.In#canCall(_module._default.Lemma_InSubStream$T, _module.Stream.head(t#0), u#0)
             ==> _module.__default.In(_module._default.Lemma_InSubStream$T, _module.Stream.head(t#0), u#0)
               || (exists n#8: int :: 
                { _module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), u#0, n#8) } 
                LitInt(0) <= n#8
                   && 
                  LitInt(0) <= n#8
                   && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), u#0, n#8))
                     == _module.Stream.head(t#0)));
      invariant {:id "id70"} $w$loop#0
         ==> 
        _module.__default.IsSubStream#canCall(_module._default.Lemma_InSubStream$T, t#0, u#0)
         ==> _module.__default.IsSubStream(_module._default.Lemma_InSubStream$T, $LS($LZ), t#0, u#0)
           || _module.__default.IsSubStream(_module._default.Lemma_InSubStream$T, 
            $LS($LS($LZ)), 
            _module.Stream.tail(t#0), 
            u#0);
      free invariant {:id "id71"} $w$loop#0
         ==> _module.__default.IsSubStream#canCall(_module._default.Lemma_InSubStream$T, t#0, u#0)
           && 
          _module.__default.IsSubStream(_module._default.Lemma_InSubStream$T, $LS($LZ), t#0, u#0)
           && 
          _module.__default.In(_module._default.Lemma_InSubStream$T, _module.Stream.head(t#0), u#0)
           && _module.__default.IsSubStream(_module._default.Lemma_InSubStream$T, $LS($LZ), _module.Stream.tail(t#0), u#0);
      free invariant $PreLoopHeap$loop#0 == $Heap;
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant preLoop$loop#0$defass#t#0 ==> defass#t#0;
      free invariant (if n#6 <= LitInt(0) then 0 - n#6 else n#6 - 0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id62"} LitInt(0) <= n#6;
            assert {:id "id64"} defass#t#0;
            ##s#4 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#4, Tclass._module.Stream(_module._default.Lemma_InSubStream$T), $Heap);
            ##n#1 := n#6;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(_module._default.Lemma_InSubStream$T, t#0, n#6);
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), t#0, n#6));
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), t#0, n#6));
            assume _module.__default.Tail#canCall(_module._default.Lemma_InSubStream$T, t#0, n#6)
               && _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), t#0, n#6));
            assume {:id "id65"} _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), t#0, n#6))
               == x#0;
            assert {:id "id67"} defass#t#0;
            ##s#5 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#5, Tclass._module.Stream(_module._default.Lemma_InSubStream$T), $Heap);
            ##u#1 := u#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##u#1, Tclass._module.Stream(_module._default.Lemma_InSubStream$T), $Heap);
            assume _module.__default.IsSubStream#canCall(_module._default.Lemma_InSubStream$T, t#0, u#0);
            assume _module.__default.IsSubStream#canCall(_module._default.Lemma_InSubStream$T, t#0, u#0);
            assume {:id "id68"} _module.__default.IsSubStream(_module._default.Lemma_InSubStream$T, $LS($LZ), t#0, u#0);
            if (n#6 <= LitInt(0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (n#6 == 0)
        {
            break;
        }

        $decr$loop#00 := (if n#6 <= LitInt(0) then 0 - n#6 else n#6 - 0);
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(52,10)
        assume true;
        assume true;
        assert {:id "id72"} defass#t#0;
        assume _module.Stream.Cons_q(t#0);
        assume _module.Stream.Cons_q(t#0);
        $rhs#0_0 := _module.Stream.tail(t#0);
        newtype$check#0_0 := n#6 - 1;
        assert {:id "id74"} LitInt(0) <= newtype$check#0_0;
        assume true;
        $rhs#0_1 := n#6 - 1;
        t#0 := $rhs#0_0;
        defass#t#0 := true;
        n#6 := $rhs#0_1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(47,3)
        assert {:id "id78"} 0 <= $decr$loop#00
           || (if n#6 <= LitInt(0) then 0 - n#6 else n#6 - 0) == $decr$loop#00;
        assert {:id "id79"} (if n#6 <= LitInt(0) then 0 - n#6 else n#6 - 0) < $decr$loop#00;
        assume LitInt(0) <= n#6
           ==> _module.__default.Tail#canCall(_module._default.Lemma_InSubStream$T, t#0, n#6)
             && _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), t#0, n#6))
             && (_module.Stream.head(_module.__default.Tail(_module._default.Lemma_InSubStream$T, $LS($LZ), t#0, n#6))
                 == x#0
               ==> _module.__default.IsSubStream#canCall(_module._default.Lemma_InSubStream$T, t#0, u#0));
    }
}



// function declaration for _module._default.AllP
function _module.__default.AllP(_module._default.AllP$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    P#0: HandleType)
   : bool
uses {
// definition axiom for _module.__default.AllP (revealed)
axiom {:id "id80"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.AllP$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    { _module.__default.AllP(_module._default.AllP$_T0, $LS($ly), s#0, P#0), $IsGoodHeap($Heap) } 
    _module.__default.AllP#canCall(_module._default.AllP$_T0, s#0, P#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.AllP$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AllP$_T0, TBool)))
       ==> _module.Stream.Cons_q(s#0)
         && ($Unbox(Apply1(_module._default.AllP$_T0, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool
           ==> _module.Stream.Cons_q(s#0)
             && _module.__default.AllP#canCall(_module._default.AllP$_T0, _module.Stream.tail(s#0), P#0))
         && _module.__default.AllP(_module._default.AllP$_T0, $LS($ly), s#0, P#0)
           == ($Unbox(Apply1(_module._default.AllP$_T0, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool
             && _module.__default.AllP(_module._default.AllP$_T0, $ly, _module.Stream.tail(s#0), P#0)));
}

function _module.__default.AllP#canCall(_module._default.AllP$_T0: Ty, s#0: DatatypeType, P#0: HandleType) : bool;

// layer synonym axiom
axiom (forall _module._default.AllP$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.AllP(_module._default.AllP$_T0, $LS($ly), s#0, P#0) } 
  _module.__default.AllP(_module._default.AllP$_T0, $LS($ly), s#0, P#0)
     == _module.__default.AllP(_module._default.AllP$_T0, $ly, s#0, P#0));

// fuel synonym axiom
axiom (forall _module._default.AllP$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.AllP(_module._default.AllP$_T0, AsFuelBottom($ly), s#0, P#0) } 
  _module.__default.AllP(_module._default.AllP$_T0, $ly, s#0, P#0)
     == _module.__default.AllP(_module._default.AllP$_T0, $LZ, s#0, P#0));

function _module.__default.AllP#requires(Ty, LayerType, DatatypeType, HandleType) : bool;

// #requires axiom for _module.__default.AllP
axiom (forall _module._default.AllP$_T0: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.AllP#requires(_module._default.AllP$_T0, $ly, s#0, P#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(s#0, Tclass._module.Stream(_module._default.AllP$_T0))
       && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AllP$_T0, TBool))
     ==> _module.__default.AllP#requires(_module._default.AllP$_T0, $ly, s#0, P#0)
       == true);

// 1st prefix predicate axiom for _module.__default.AllP_h
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.AllP#$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    { _module.__default.AllP(_module._default.AllP#$_T0, $LS($ly), s#0, P#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.AllP#$_T0))
         && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AllP#$_T0, TBool))
         && _module.__default.AllP(_module._default.AllP#$_T0, $LS($ly), s#0, P#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), _k#0, s#0, P#0) } 
        _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), _k#0, s#0, P#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.AllP#$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    { _module.__default.AllP(_module._default.AllP#$_T0, $LS($ly), s#0, P#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.AllP#$_T0))
         && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AllP#$_T0, TBool))
         && (forall _k#0: Box :: 
          { _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), _k#0, s#0, P#0) } 
          _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), _k#0, s#0, P#0))
       ==> _module.__default.AllP(_module._default.AllP#$_T0, $LS($ly), s#0, P#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.AllP#$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      P#0: HandleType, 
      _k#0: Box :: 
    { _module.__default.AllP_h(_module._default.AllP#$_T0, $ly, _k#0, s#0, P#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.AllP#$_T0))
         && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AllP#$_T0, TBool))
         && _k#0 == ORD#FromNat(0)
       ==> _module.__default.AllP_h(_module._default.AllP#$_T0, $ly, _k#0, s#0, P#0));

procedure {:verboseName "AllP (well-formedness)"} CheckWellformed$$_module.__default.AllP(_module._default.AllP$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.AllP$_T0)), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AllP$_T0, TBool)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.AllP#
function _module.__default.AllP_h(_module._default.AllP#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    s#0: DatatypeType, 
    P#0: HandleType)
   : bool
uses {
// definition axiom for _module.__default.AllP_h (revealed)
axiom {:id "id82"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.AllP#$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      _k#0: Box, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    { _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), _k#0, s#0, P#0), $IsGoodHeap($Heap) } 
    _module.__default.AllP_h#canCall(_module._default.AllP#$_T0, _k#0, s#0, P#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.AllP#$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AllP#$_T0, TBool)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.Stream.Cons_q(s#0)
             && ($Unbox(Apply1(_module._default.AllP#$_T0, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool
               ==> _module.Stream.Cons_q(s#0)
                 && _module.__default.AllP_h#canCall(_module._default.AllP#$_T0, 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Stream.tail(s#0), 
                  P#0)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> $Unbox(Apply1(_module._default.AllP#$_T0, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool
             && _module.__default.AllP_h(_module._default.AllP#$_T0, 
              $ly, 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              _module.Stream.tail(s#0), 
              P#0))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.AllP_h(_module._default.AllP#$_T0, $ly, _k'#0, s#0, P#0) } 
            ORD#Less(_k'#0, _k#0)
               ==> _module.__default.AllP_h#canCall(_module._default.AllP#$_T0, _k'#0, s#0, P#0)))
         && _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), _k#0, s#0, P#0)
           == ((0 < ORD#Offset(_k#0)
               ==> $Unbox(Apply1(_module._default.AllP#$_T0, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool
                 && _module.__default.AllP_h(_module._default.AllP#$_T0, 
                  $ly, 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Stream.tail(s#0), 
                  P#0))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.AllP_h(_module._default.AllP#$_T0, $ly, _k'#0, s#0, P#0) } 
                ORD#Less(_k'#0, _k#0)
                   ==> _module.__default.AllP_h(_module._default.AllP#$_T0, $ly, _k'#0, s#0, P#0)))));
// definition axiom for _module.__default.AllP_h for decreasing-related literals (revealed)
axiom {:id "id83"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.AllP#$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      _k#0: Box, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    {:weight 3} { _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), Lit(_k#0), s#0, P#0), $IsGoodHeap($Heap) } 
    _module.__default.AllP_h#canCall(_module._default.AllP#$_T0, Lit(_k#0), s#0, P#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.AllP#$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AllP#$_T0, TBool)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.Stream.Cons_q(s#0)
             && ($Unbox(Apply1(_module._default.AllP#$_T0, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool
               ==> _module.Stream.Cons_q(s#0)
                 && _module.__default.AllP_h#canCall(_module._default.AllP#$_T0, 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Stream.tail(s#0), 
                  P#0)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> $Unbox(Apply1(_module._default.AllP#$_T0, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool
             && _module.__default.AllP_h(_module._default.AllP#$_T0, 
              $LS($ly), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              _module.Stream.tail(s#0), 
              P#0))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), _k'#1, s#0, P#0) } 
            ORD#Less(_k'#1, _k#0)
               ==> _module.__default.AllP_h#canCall(_module._default.AllP#$_T0, _k'#1, s#0, P#0)))
         && _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), Lit(_k#0), s#0, P#0)
           == ((0 < ORD#Offset(_k#0)
               ==> $Unbox(Apply1(_module._default.AllP#$_T0, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool
                 && _module.__default.AllP_h(_module._default.AllP#$_T0, 
                  $LS($ly), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Stream.tail(s#0), 
                  P#0))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), _k'#1, s#0, P#0) } 
                ORD#Less(_k'#1, _k#0)
                   ==> _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), _k'#1, s#0, P#0)))));
// definition axiom for _module.__default.AllP_h for all literals (revealed)
axiom {:id "id84"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.AllP#$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      _k#0: Box, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    {:weight 3} { _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), Lit(_k#0), Lit(s#0), Lit(P#0)), $IsGoodHeap($Heap) } 
    _module.__default.AllP_h#canCall(_module._default.AllP#$_T0, Lit(_k#0), Lit(s#0), Lit(P#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.AllP#$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AllP#$_T0, TBool)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.Stream.Cons_q(Lit(s#0))
             && ($Unbox(Apply1(_module._default.AllP#$_T0, 
                  TBool, 
                  $Heap, 
                  Lit(P#0), 
                  Lit(_module.Stream.head(Lit(s#0))))): bool
               ==> _module.Stream.Cons_q(Lit(s#0))
                 && _module.__default.AllP_h#canCall(_module._default.AllP#$_T0, 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(_module.Stream.tail(Lit(s#0))), 
                  Lit(P#0))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> $Unbox(Apply1(_module._default.AllP#$_T0, 
                TBool, 
                $Heap, 
                Lit(P#0), 
                Lit(_module.Stream.head(Lit(s#0))))): bool
             && _module.__default.AllP_h(_module._default.AllP#$_T0, 
              $LS($ly), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              Lit(_module.Stream.tail(Lit(s#0))), 
              Lit(P#0)))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), _k'#2, s#0, P#0) } 
            ORD#Less(_k'#2, _k#0)
               ==> _module.__default.AllP_h#canCall(_module._default.AllP#$_T0, _k'#2, s#0, P#0)))
         && _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), Lit(_k#0), Lit(s#0), Lit(P#0))
           == ((0 < ORD#Offset(_k#0)
               ==> $Unbox(Apply1(_module._default.AllP#$_T0, 
                    TBool, 
                    $Heap, 
                    Lit(P#0), 
                    Lit(_module.Stream.head(Lit(s#0))))): bool
                 && _module.__default.AllP_h(_module._default.AllP#$_T0, 
                  $LS($ly), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(_module.Stream.tail(Lit(s#0))), 
                  Lit(P#0)))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), _k'#2, s#0, P#0) } 
                ORD#Less(_k'#2, _k#0)
                   ==> _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), _k'#2, s#0, P#0)))));
}

function _module.__default.AllP_h#canCall(_module._default.AllP#$_T0: Ty, _k#0: Box, s#0: DatatypeType, P#0: HandleType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.AllP#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), _k#0, s#0, P#0) } 
  _module.__default.AllP_h(_module._default.AllP#$_T0, $LS($ly), _k#0, s#0, P#0)
     == _module.__default.AllP_h(_module._default.AllP#$_T0, $ly, _k#0, s#0, P#0));

// fuel synonym axiom
axiom (forall _module._default.AllP#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.AllP_h(_module._default.AllP#$_T0, AsFuelBottom($ly), _k#0, s#0, P#0) } 
  _module.__default.AllP_h(_module._default.AllP#$_T0, $ly, _k#0, s#0, P#0)
     == _module.__default.AllP_h(_module._default.AllP#$_T0, $LZ, _k#0, s#0, P#0));

function _module.__default.AllP_h#requires(Ty, LayerType, Box, DatatypeType, HandleType) : bool;

// #requires axiom for _module.__default.AllP_h
axiom (forall _module._default.AllP#$_T0: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    _k#0: Box, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.AllP_h#requires(_module._default.AllP#$_T0, $ly, _k#0, s#0, P#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(s#0, Tclass._module.Stream(_module._default.AllP#$_T0))
       && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AllP#$_T0, TBool))
     ==> _module.__default.AllP_h#requires(_module._default.AllP#$_T0, $ly, _k#0, s#0, P#0)
       == true);

procedure {:verboseName "Lemma_InAllP (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__InAllP(_module._default.Lemma_InAllP$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module._default.Lemma_InAllP$T)
         && $IsAllocBox(x#0, _module._default.Lemma_InAllP$T, $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_InAllP$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_InAllP$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Lemma_InAllP$T, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_InAllP$T, TBool), 
          $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Lemma_InAllP (call)"} Call$$_module.__default.Lemma__InAllP(_module._default.Lemma_InAllP$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module._default.Lemma_InAllP$T)
         && $IsAllocBox(x#0, _module._default.Lemma_InAllP$T, $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_InAllP$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_InAllP$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Lemma_InAllP$T, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_InAllP$T, TBool), 
          $Heap));
  // user-defined preconditions
  requires {:id "id88"} _module.__default.In#canCall(_module._default.Lemma_InAllP$T, x#0, s#0)
     ==> _module.__default.In(_module._default.Lemma_InAllP$T, x#0, s#0)
       || (exists n#0: int :: 
        { _module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), s#0, n#0) } 
        LitInt(0) <= n#0
           && 
          LitInt(0) <= n#0
           && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), s#0, n#0))
             == x#0);
  requires {:id "id89"} _module.__default.AllP#canCall(_module._default.Lemma_InAllP$T, s#0, P#0)
     ==> _module.__default.AllP(_module._default.Lemma_InAllP$T, $LS($LZ), s#0, P#0)
       || $Unbox(Apply1(_module._default.Lemma_InAllP$T, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool;
  requires {:id "id90"} _module.__default.AllP#canCall(_module._default.Lemma_InAllP$T, s#0, P#0)
     ==> _module.__default.AllP(_module._default.Lemma_InAllP$T, $LS($LZ), s#0, P#0)
       || _module.__default.AllP(_module._default.Lemma_InAllP$T, $LS($LS($LZ)), _module.Stream.tail(s#0), P#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id91"} $Unbox(Apply1(_module._default.Lemma_InAllP$T, TBool, $Heap, P#0, x#0)): bool;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_InAllP (correctness)"} Impl$$_module.__default.Lemma__InAllP(_module._default.Lemma_InAllP$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module._default.Lemma_InAllP$T)
         && $IsAllocBox(x#0, _module._default.Lemma_InAllP$T, $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_InAllP$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_InAllP$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Lemma_InAllP$T, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_InAllP$T, TBool), 
          $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id92"} _module.__default.In#canCall(_module._default.Lemma_InAllP$T, x#0, s#0)
     && 
    _module.__default.In(_module._default.Lemma_InAllP$T, x#0, s#0)
     && (exists n#1: int :: 
      { _module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), s#0, n#1) } 
      LitInt(0) <= n#1
         && 
        LitInt(0) <= n#1
         && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), s#0, n#1))
           == x#0);
  free requires {:id "id93"} _module.__default.AllP#canCall(_module._default.Lemma_InAllP$T, s#0, P#0)
     && 
    _module.__default.AllP(_module._default.Lemma_InAllP$T, $LS($LZ), s#0, P#0)
     && 
    $Unbox(Apply1(_module._default.Lemma_InAllP$T, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool
     && _module.__default.AllP(_module._default.Lemma_InAllP$T, $LS($LZ), _module.Stream.tail(s#0), P#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id94"} $Unbox(Apply1(_module._default.Lemma_InAllP$T, TBool, $Heap, P#0, x#0)): bool;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_InAllP (correctness)"} Impl$$_module.__default.Lemma__InAllP(_module._default.Lemma_InAllP$T: Ty, 
    x#0: Box, 
    s#0: DatatypeType, 
    P#0: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var n#2: int where LitInt(0) <= n#2;
  var n#3: int;
  var ##s#2: DatatypeType;
  var ##n#0: int;
  var defass#t#0: bool;
  var t#0: DatatypeType
     where defass#t#0
       ==> $Is(t#0, Tclass._module.Stream(_module._default.Lemma_InAllP$T))
         && $IsAlloc(t#0, Tclass._module.Stream(_module._default.Lemma_InAllP$T), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var preLoop$loop#0$defass#t#0: bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var ##s#3: DatatypeType;
  var ##n#1: int;
  var ##s#4: DatatypeType;
  var ##P#1: HandleType;
  var $decr$loop#00: int;
  var $rhs#0_0: DatatypeType;
  var $rhs#0_1: int;
  var newtype$check#0_0: int;

    // AddMethodImpl: Lemma_InAllP, Impl$$_module.__default.Lemma__InAllP
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#s0#0: DatatypeType :: 
      { _module.__default.AllP(_module._default.Lemma_InAllP$T, $LS($LZ), $ih#s0#0, P#0) } 
        { _module.__default.In(_module._default.Lemma_InAllP$T, x#0, $ih#s0#0) } 
      true);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(66,9)
    havoc n#3;
    if (LitInt(0) <= n#3)
    {
        if (LitInt(0) <= n#3)
        {
            ##s#2 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#2, Tclass._module.Stream(_module._default.Lemma_InAllP$T), $Heap);
            ##n#0 := n#3;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(_module._default.Lemma_InAllP$T, s#0, n#3);
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), s#0, n#3));
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), s#0, n#3));
        }

        assume LitInt(0) <= n#3
           ==> _module.__default.Tail#canCall(_module._default.Lemma_InAllP$T, s#0, n#3)
             && _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), s#0, n#3));
    }

    assert {:id "id95"} ($Is(LitInt(0), Tclass._System.nat())
         && 
        LitInt(0) <= LitInt(0)
         && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), s#0, LitInt(0)))
           == x#0)
       || 
      ($Is(LitInt(0), Tclass._System.nat())
         && 
        LitInt(0) <= LitInt(0)
         && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), s#0, LitInt(0)))
           == x#0)
       || 
      ($Is(LitInt(0), Tclass._System.nat())
         && 
        LitInt(0) <= LitInt(0)
         && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), s#0, LitInt(0)))
           == x#0)
       || (exists $as#n0#0: int :: 
        LitInt(0) <= $as#n0#0
           && 
          LitInt(0) <= $as#n0#0
           && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), s#0, $as#n0#0))
             == x#0);
    havoc n#2;
    assume {:id "id96"} LitInt(0) <= n#2
       && _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), s#0, n#2))
         == x#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(67,9)
    assume true;
    assume true;
    t#0 := s#0;
    defass#t#0 := true;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(68,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    preLoop$loop#0$defass#t#0 := defass#t#0;
    $decr_init$loop#00 := (if n#2 <= LitInt(0) then 0 - n#2 else n#2 - 0);
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id99"} $w$loop#0 ==> LitInt(0) <= n#2;
      free invariant $w$loop#0
         ==> _module.__default.Tail#canCall(_module._default.Lemma_InAllP$T, t#0, n#2)
           && _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), t#0, n#2));
      invariant {:id "id102"} $w$loop#0
         ==> _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LS($LZ)), t#0, n#2))
           == x#0;
      free invariant $w$loop#0
         ==> _module.__default.AllP#canCall(_module._default.Lemma_InAllP$T, t#0, P#0);
      invariant {:id "id105"} $w$loop#0
         ==> 
        _module.__default.AllP#canCall(_module._default.Lemma_InAllP$T, t#0, P#0)
         ==> _module.__default.AllP(_module._default.Lemma_InAllP$T, $LS($LZ), t#0, P#0)
           || $Unbox(Apply1(_module._default.Lemma_InAllP$T, TBool, $Heap, P#0, _module.Stream.head(t#0))): bool;
      invariant {:id "id106"} $w$loop#0
         ==> 
        _module.__default.AllP#canCall(_module._default.Lemma_InAllP$T, t#0, P#0)
         ==> _module.__default.AllP(_module._default.Lemma_InAllP$T, $LS($LZ), t#0, P#0)
           || _module.__default.AllP(_module._default.Lemma_InAllP$T, $LS($LS($LZ)), _module.Stream.tail(t#0), P#0);
      free invariant {:id "id107"} $w$loop#0
         ==> _module.__default.AllP#canCall(_module._default.Lemma_InAllP$T, t#0, P#0)
           && 
          _module.__default.AllP(_module._default.Lemma_InAllP$T, $LS($LZ), t#0, P#0)
           && 
          $Unbox(Apply1(_module._default.Lemma_InAllP$T, TBool, $Heap, P#0, _module.Stream.head(t#0))): bool
           && _module.__default.AllP(_module._default.Lemma_InAllP$T, $LS($LZ), _module.Stream.tail(t#0), P#0);
      free invariant $PreLoopHeap$loop#0 == $Heap;
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant preLoop$loop#0$defass#t#0 ==> defass#t#0;
      free invariant (if n#2 <= LitInt(0) then 0 - n#2 else n#2 - 0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id98"} LitInt(0) <= n#2;
            assert {:id "id100"} defass#t#0;
            ##s#3 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#3, Tclass._module.Stream(_module._default.Lemma_InAllP$T), $Heap);
            ##n#1 := n#2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(_module._default.Lemma_InAllP$T, t#0, n#2);
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), t#0, n#2));
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), t#0, n#2));
            assume _module.__default.Tail#canCall(_module._default.Lemma_InAllP$T, t#0, n#2)
               && _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), t#0, n#2));
            assume {:id "id101"} _module.Stream.head(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), t#0, n#2))
               == x#0;
            assert {:id "id103"} defass#t#0;
            ##s#4 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#4, Tclass._module.Stream(_module._default.Lemma_InAllP$T), $Heap);
            ##P#1 := P#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##P#1, 
              Tclass._System.___hTotalFunc1(_module._default.Lemma_InAllP$T, TBool), 
              $Heap);
            assume _module.__default.AllP#canCall(_module._default.Lemma_InAllP$T, t#0, P#0);
            assume _module.__default.AllP#canCall(_module._default.Lemma_InAllP$T, t#0, P#0);
            assume {:id "id104"} _module.__default.AllP(_module._default.Lemma_InAllP$T, $LS($LZ), t#0, P#0);
            if (n#2 <= LitInt(0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (n#2 == 0)
        {
            break;
        }

        $decr$loop#00 := (if n#2 <= LitInt(0) then 0 - n#2 else n#2 - 0);
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(73,10)
        assume true;
        assume true;
        assert {:id "id108"} defass#t#0;
        assume _module.Stream.Cons_q(t#0);
        assume _module.Stream.Cons_q(t#0);
        $rhs#0_0 := _module.Stream.tail(t#0);
        newtype$check#0_0 := n#2 - 1;
        assert {:id "id110"} LitInt(0) <= newtype$check#0_0;
        assume true;
        $rhs#0_1 := n#2 - 1;
        t#0 := $rhs#0_0;
        defass#t#0 := true;
        n#2 := $rhs#0_1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(68,3)
        assert {:id "id114"} 0 <= $decr$loop#00
           || (if n#2 <= LitInt(0) then 0 - n#2 else n#2 - 0) == $decr$loop#00;
        assert {:id "id115"} (if n#2 <= LitInt(0) then 0 - n#2 else n#2 - 0) < $decr$loop#00;
        assume LitInt(0) <= n#2
           ==> _module.__default.Tail#canCall(_module._default.Lemma_InAllP$T, t#0, n#2)
             && _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), t#0, n#2))
             && (_module.Stream.head(_module.__default.Tail(_module._default.Lemma_InAllP$T, $LS($LZ), t#0, n#2))
                 == x#0
               ==> _module.__default.AllP#canCall(_module._default.Lemma_InAllP$T, t#0, P#0));
    }
}



// function declaration for _module._default.IsAnother
function _module.__default.IsAnother(_module._default.IsAnother$_T0: Ty, s#0: DatatypeType, P#0: HandleType) : bool
uses {
// definition axiom for _module.__default.IsAnother (revealed)
axiom {:id "id116"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.IsAnother$_T0: Ty, 
      $Heap: Heap, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    { _module.__default.IsAnother(_module._default.IsAnother$_T0, s#0, P#0), $IsGoodHeap($Heap) } 
    _module.__default.IsAnother#canCall(_module._default.IsAnother$_T0, s#0, P#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.IsAnother$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.IsAnother$_T0, TBool)))
       ==> (forall n#0: int :: 
          { _module.__default.Tail(_module._default.IsAnother$_T0, $LS($LZ), s#0, n#0) } 
          LitInt(0) <= n#0
             ==> 
            LitInt(0) <= n#0
             ==> _module.__default.Tail#canCall(_module._default.IsAnother$_T0, s#0, n#0)
               && _module.Stream.Cons_q(_module.__default.Tail(_module._default.IsAnother$_T0, $LS($LZ), s#0, n#0)))
         && _module.__default.IsAnother(_module._default.IsAnother$_T0, s#0, P#0)
           == (exists n#0: int :: 
            { _module.__default.Tail(_module._default.IsAnother$_T0, $LS($LZ), s#0, n#0) } 
            LitInt(0) <= n#0
               && 
              LitInt(0) <= n#0
               && $Unbox(Apply1(_module._default.IsAnother$_T0, 
                  TBool, 
                  $Heap, 
                  P#0, 
                  _module.Stream.head(_module.__default.Tail(_module._default.IsAnother$_T0, $LS($LZ), s#0, n#0)))): bool));
// definition axiom for _module.__default.IsAnother for all literals (revealed)
axiom {:id "id117"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.IsAnother$_T0: Ty, 
      $Heap: Heap, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    {:weight 3} { _module.__default.IsAnother(_module._default.IsAnother$_T0, Lit(s#0), Lit(P#0)), $IsGoodHeap($Heap) } 
    _module.__default.IsAnother#canCall(_module._default.IsAnother$_T0, Lit(s#0), Lit(P#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.IsAnother$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.IsAnother$_T0, TBool)))
       ==> (forall n#1: int :: 
          { _module.__default.Tail(_module._default.IsAnother$_T0, $LS($LZ), s#0, n#1) } 
          LitInt(0) <= n#1
             ==> 
            LitInt(0) <= n#1
             ==> _module.__default.Tail#canCall(_module._default.IsAnother$_T0, Lit(s#0), n#1)
               && _module.Stream.Cons_q(_module.__default.Tail(_module._default.IsAnother$_T0, $LS($LZ), Lit(s#0), n#1)))
         && _module.__default.IsAnother(_module._default.IsAnother$_T0, Lit(s#0), Lit(P#0))
           == (exists n#1: int :: 
            { _module.__default.Tail(_module._default.IsAnother$_T0, $LS($LZ), s#0, n#1) } 
            LitInt(0) <= n#1
               && 
              LitInt(0) <= n#1
               && $Unbox(Apply1(_module._default.IsAnother$_T0, 
                  TBool, 
                  $Heap, 
                  Lit(P#0), 
                  _module.Stream.head(_module.__default.Tail(_module._default.IsAnother$_T0, $LS($LZ), Lit(s#0), n#1)))): bool));
}

function _module.__default.IsAnother#canCall(_module._default.IsAnother$_T0: Ty, s#0: DatatypeType, P#0: HandleType) : bool;

function _module.__default.IsAnother#requires(Ty, DatatypeType, HandleType) : bool;

// #requires axiom for _module.__default.IsAnother
axiom (forall _module._default.IsAnother$_T0: Ty, 
    $Heap: Heap, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.IsAnother#requires(_module._default.IsAnother$_T0, s#0, P#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(s#0, Tclass._module.Stream(_module._default.IsAnother$_T0))
       && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.IsAnother$_T0, TBool))
     ==> _module.__default.IsAnother#requires(_module._default.IsAnother$_T0, s#0, P#0)
       == true);

procedure {:verboseName "IsAnother (well-formedness)"} CheckWellformed$$_module.__default.IsAnother(_module._default.IsAnother$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.IsAnother$_T0)), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.IsAnother$_T0, TBool)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.AlwaysAnother
function _module.__default.AlwaysAnother(_module._default.AlwaysAnother$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    P#0: HandleType)
   : bool
uses {
// definition axiom for _module.__default.AlwaysAnother (revealed)
axiom {:id "id119"} 3 <= $FunctionContextHeight
   ==> (forall _module._default.AlwaysAnother$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    { _module.__default.AlwaysAnother(_module._default.AlwaysAnother$_T0, $LS($ly), s#0, P#0) } 
    _module.__default.AlwaysAnother#canCall(_module._default.AlwaysAnother$_T0, s#0, P#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.AlwaysAnother$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AlwaysAnother$_T0, TBool)))
       ==> _module.__default.IsAnother#canCall(_module._default.AlwaysAnother$_T0, s#0, P#0)
         && (_module.__default.IsAnother(_module._default.AlwaysAnother$_T0, s#0, P#0)
           ==> _module.Stream.Cons_q(s#0)
             && _module.__default.AlwaysAnother#canCall(_module._default.AlwaysAnother$_T0, _module.Stream.tail(s#0), P#0))
         && _module.__default.AlwaysAnother(_module._default.AlwaysAnother$_T0, $LS($ly), s#0, P#0)
           == (_module.__default.IsAnother(_module._default.AlwaysAnother$_T0, s#0, P#0)
             && _module.__default.AlwaysAnother(_module._default.AlwaysAnother$_T0, $ly, _module.Stream.tail(s#0), P#0)));
}

function _module.__default.AlwaysAnother#canCall(_module._default.AlwaysAnother$_T0: Ty, s#0: DatatypeType, P#0: HandleType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.AlwaysAnother$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.AlwaysAnother(_module._default.AlwaysAnother$_T0, $LS($ly), s#0, P#0) } 
  _module.__default.AlwaysAnother(_module._default.AlwaysAnother$_T0, $LS($ly), s#0, P#0)
     == _module.__default.AlwaysAnother(_module._default.AlwaysAnother$_T0, $ly, s#0, P#0));

// fuel synonym axiom
axiom (forall _module._default.AlwaysAnother$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.AlwaysAnother(_module._default.AlwaysAnother$_T0, AsFuelBottom($ly), s#0, P#0) } 
  _module.__default.AlwaysAnother(_module._default.AlwaysAnother$_T0, $ly, s#0, P#0)
     == _module.__default.AlwaysAnother(_module._default.AlwaysAnother$_T0, $LZ, s#0, P#0));

function _module.__default.AlwaysAnother#requires(Ty, LayerType, DatatypeType, HandleType) : bool;

// #requires axiom for _module.__default.AlwaysAnother
axiom (forall _module._default.AlwaysAnother$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.AlwaysAnother#requires(_module._default.AlwaysAnother$_T0, $ly, s#0, P#0) } 
  $Is(s#0, Tclass._module.Stream(_module._default.AlwaysAnother$_T0))
       && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AlwaysAnother$_T0, TBool))
     ==> _module.__default.AlwaysAnother#requires(_module._default.AlwaysAnother$_T0, $ly, s#0, P#0)
       == true);

// 1st prefix predicate axiom for _module.__default.AlwaysAnother_h
axiom 4 <= $FunctionContextHeight
   ==> (forall _module._default.AlwaysAnother#$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    { _module.__default.AlwaysAnother(_module._default.AlwaysAnother#$_T0, $LS($ly), s#0, P#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.AlwaysAnother#$_T0))
         && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AlwaysAnother#$_T0, TBool))
         && _module.__default.AlwaysAnother(_module._default.AlwaysAnother#$_T0, $LS($ly), s#0, P#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), _k#0, s#0, P#0) } 
        _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), _k#0, s#0, P#0)));

// 2nd prefix predicate axiom
axiom 4 <= $FunctionContextHeight
   ==> (forall _module._default.AlwaysAnother#$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    { _module.__default.AlwaysAnother(_module._default.AlwaysAnother#$_T0, $LS($ly), s#0, P#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.AlwaysAnother#$_T0))
         && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AlwaysAnother#$_T0, TBool))
         && (forall _k#0: Box :: 
          { _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), _k#0, s#0, P#0) } 
          _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), _k#0, s#0, P#0))
       ==> _module.__default.AlwaysAnother(_module._default.AlwaysAnother#$_T0, $LS($ly), s#0, P#0));

// 3rd prefix predicate axiom
axiom 4 <= $FunctionContextHeight
   ==> (forall _module._default.AlwaysAnother#$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      P#0: HandleType, 
      _k#0: Box :: 
    { _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $ly, _k#0, s#0, P#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.AlwaysAnother#$_T0))
         && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AlwaysAnother#$_T0, TBool))
         && _k#0 == ORD#FromNat(0)
       ==> _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $ly, _k#0, s#0, P#0));

procedure {:verboseName "AlwaysAnother (well-formedness)"} CheckWellformed$$_module.__default.AlwaysAnother(_module._default.AlwaysAnother$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.AlwaysAnother$_T0)), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AlwaysAnother$_T0, TBool)));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.AlwaysAnother#
function _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    s#0: DatatypeType, 
    P#0: HandleType)
   : bool
uses {
// definition axiom for _module.__default.AlwaysAnother_h (revealed)
axiom {:id "id121"} 4 <= $FunctionContextHeight
   ==> (forall _module._default.AlwaysAnother#$_T0: Ty, 
      $ly: LayerType, 
      _k#0: Box, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    { _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), _k#0, s#0, P#0) } 
    _module.__default.AlwaysAnother_h#canCall(_module._default.AlwaysAnother#$_T0, _k#0, s#0, P#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.AlwaysAnother#$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AlwaysAnother#$_T0, TBool)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.__default.IsAnother#canCall(_module._default.AlwaysAnother#$_T0, s#0, P#0)
             && (_module.__default.IsAnother(_module._default.AlwaysAnother#$_T0, s#0, P#0)
               ==> _module.Stream.Cons_q(s#0)
                 && _module.__default.AlwaysAnother_h#canCall(_module._default.AlwaysAnother#$_T0, 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Stream.tail(s#0), 
                  P#0)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.__default.IsAnother(_module._default.AlwaysAnother#$_T0, s#0, P#0)
             && _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, 
              $ly, 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              _module.Stream.tail(s#0), 
              P#0))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $ly, _k'#0, s#0, P#0) } 
            ORD#Less(_k'#0, _k#0)
               ==> _module.__default.AlwaysAnother_h#canCall(_module._default.AlwaysAnother#$_T0, _k'#0, s#0, P#0)))
         && _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), _k#0, s#0, P#0)
           == ((0 < ORD#Offset(_k#0)
               ==> _module.__default.IsAnother(_module._default.AlwaysAnother#$_T0, s#0, P#0)
                 && _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, 
                  $ly, 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Stream.tail(s#0), 
                  P#0))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $ly, _k'#0, s#0, P#0) } 
                ORD#Less(_k'#0, _k#0)
                   ==> _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $ly, _k'#0, s#0, P#0)))));
// definition axiom for _module.__default.AlwaysAnother_h for decreasing-related literals (revealed)
axiom {:id "id122"} 4 <= $FunctionContextHeight
   ==> (forall _module._default.AlwaysAnother#$_T0: Ty, 
      $ly: LayerType, 
      _k#0: Box, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    {:weight 3} { _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), Lit(_k#0), s#0, P#0) } 
    _module.__default.AlwaysAnother_h#canCall(_module._default.AlwaysAnother#$_T0, Lit(_k#0), s#0, P#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.AlwaysAnother#$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AlwaysAnother#$_T0, TBool)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.__default.IsAnother#canCall(_module._default.AlwaysAnother#$_T0, s#0, P#0)
             && (_module.__default.IsAnother(_module._default.AlwaysAnother#$_T0, s#0, P#0)
               ==> _module.Stream.Cons_q(s#0)
                 && _module.__default.AlwaysAnother_h#canCall(_module._default.AlwaysAnother#$_T0, 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Stream.tail(s#0), 
                  P#0)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.__default.IsAnother(_module._default.AlwaysAnother#$_T0, s#0, P#0)
             && _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, 
              $LS($ly), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              _module.Stream.tail(s#0), 
              P#0))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), _k'#1, s#0, P#0) } 
            ORD#Less(_k'#1, _k#0)
               ==> _module.__default.AlwaysAnother_h#canCall(_module._default.AlwaysAnother#$_T0, _k'#1, s#0, P#0)))
         && _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), Lit(_k#0), s#0, P#0)
           == ((0 < ORD#Offset(_k#0)
               ==> _module.__default.IsAnother(_module._default.AlwaysAnother#$_T0, s#0, P#0)
                 && _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, 
                  $LS($ly), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Stream.tail(s#0), 
                  P#0))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), _k'#1, s#0, P#0) } 
                ORD#Less(_k'#1, _k#0)
                   ==> _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), _k'#1, s#0, P#0)))));
// definition axiom for _module.__default.AlwaysAnother_h for all literals (revealed)
axiom {:id "id123"} 4 <= $FunctionContextHeight
   ==> (forall _module._default.AlwaysAnother#$_T0: Ty, 
      $ly: LayerType, 
      _k#0: Box, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    {:weight 3} { _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), Lit(_k#0), Lit(s#0), Lit(P#0)) } 
    _module.__default.AlwaysAnother_h#canCall(_module._default.AlwaysAnother#$_T0, Lit(_k#0), Lit(s#0), Lit(P#0))
         || (4 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.AlwaysAnother#$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AlwaysAnother#$_T0, TBool)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.__default.IsAnother#canCall(_module._default.AlwaysAnother#$_T0, Lit(s#0), Lit(P#0))
             && (Lit(_module.__default.IsAnother(_module._default.AlwaysAnother#$_T0, Lit(s#0), Lit(P#0)))
               ==> _module.Stream.Cons_q(Lit(s#0))
                 && _module.__default.AlwaysAnother_h#canCall(_module._default.AlwaysAnother#$_T0, 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(_module.Stream.tail(Lit(s#0))), 
                  Lit(P#0))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.__default.IsAnother(_module._default.AlwaysAnother#$_T0, Lit(s#0), Lit(P#0))
             && _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, 
              $LS($ly), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              Lit(_module.Stream.tail(Lit(s#0))), 
              Lit(P#0)))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), _k'#2, s#0, P#0) } 
            ORD#Less(_k'#2, _k#0)
               ==> _module.__default.AlwaysAnother_h#canCall(_module._default.AlwaysAnother#$_T0, _k'#2, s#0, P#0)))
         && _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), Lit(_k#0), Lit(s#0), Lit(P#0))
           == ((0 < ORD#Offset(_k#0)
               ==> _module.__default.IsAnother(_module._default.AlwaysAnother#$_T0, Lit(s#0), Lit(P#0))
                 && _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, 
                  $LS($ly), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(_module.Stream.tail(Lit(s#0))), 
                  Lit(P#0)))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), _k'#2, s#0, P#0) } 
                ORD#Less(_k'#2, _k#0)
                   ==> _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), _k'#2, s#0, P#0)))));
}

function _module.__default.AlwaysAnother_h#canCall(_module._default.AlwaysAnother#$_T0: Ty, 
    _k#0: Box, 
    s#0: DatatypeType, 
    P#0: HandleType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.AlwaysAnother#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), _k#0, s#0, P#0) } 
  _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LS($ly), _k#0, s#0, P#0)
     == _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $ly, _k#0, s#0, P#0));

// fuel synonym axiom
axiom (forall _module._default.AlwaysAnother#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, AsFuelBottom($ly), _k#0, s#0, P#0) } 
  _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $ly, _k#0, s#0, P#0)
     == _module.__default.AlwaysAnother_h(_module._default.AlwaysAnother#$_T0, $LZ, _k#0, s#0, P#0));

function _module.__default.AlwaysAnother_h#requires(Ty, LayerType, Box, DatatypeType, HandleType) : bool;

// #requires axiom for _module.__default.AlwaysAnother_h
axiom (forall _module._default.AlwaysAnother#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.AlwaysAnother_h#requires(_module._default.AlwaysAnother#$_T0, $ly, _k#0, s#0, P#0) } 
  $Is(s#0, Tclass._module.Stream(_module._default.AlwaysAnother#$_T0))
       && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.AlwaysAnother#$_T0, TBool))
     ==> _module.__default.AlwaysAnother_h#requires(_module._default.AlwaysAnother#$_T0, $ly, _k#0, s#0, P#0)
       == true);

procedure {:verboseName "Lemma_AllImpliesAlwaysAnother (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__AllImpliesAlwaysAnother(_module._default.Lemma_AllImpliesAlwaysAnother$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_AllImpliesAlwaysAnother$_T0))
         && $IsAlloc(s#0, 
          Tclass._module.Stream(_module._default.Lemma_AllImpliesAlwaysAnother$_T0), 
          $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_AllImpliesAlwaysAnother$_T0, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_AllImpliesAlwaysAnother$_T0, TBool), 
          $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Lemma_AllImpliesAlwaysAnother (call)"} Call$$_module.__default.Lemma__AllImpliesAlwaysAnother(_module._default.Lemma_AllImpliesAlwaysAnother$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_AllImpliesAlwaysAnother$_T0))
         && $IsAlloc(s#0, 
          Tclass._module.Stream(_module._default.Lemma_AllImpliesAlwaysAnother$_T0), 
          $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_AllImpliesAlwaysAnother$_T0, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_AllImpliesAlwaysAnother$_T0, TBool), 
          $Heap));
  // user-defined preconditions
  requires {:id "id126"} _module.__default.AllP#canCall(_module._default.Lemma_AllImpliesAlwaysAnother$_T0, s#0, P#0)
     ==> _module.__default.AllP(_module._default.Lemma_AllImpliesAlwaysAnother$_T0, $LS($LZ), s#0, P#0)
       || $Unbox(Apply1(_module._default.Lemma_AllImpliesAlwaysAnother$_T0, 
          TBool, 
          $Heap, 
          P#0, 
          _module.Stream.head(s#0))): bool;
  requires {:id "id127"} _module.__default.AllP#canCall(_module._default.Lemma_AllImpliesAlwaysAnother$_T0, s#0, P#0)
     ==> _module.__default.AllP(_module._default.Lemma_AllImpliesAlwaysAnother$_T0, $LS($LZ), s#0, P#0)
       || _module.__default.AllP(_module._default.Lemma_AllImpliesAlwaysAnother$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#0), 
        P#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.AlwaysAnother#canCall(_module._default.Lemma_AllImpliesAlwaysAnother$_T0, s#0, P#0);
  free ensures {:id "id128"} _module.__default.AlwaysAnother#canCall(_module._default.Lemma_AllImpliesAlwaysAnother$_T0, s#0, P#0)
     && 
    _module.__default.AlwaysAnother(_module._default.Lemma_AllImpliesAlwaysAnother$_T0, $LS($LZ), s#0, P#0)
     && 
    _module.__default.IsAnother(_module._default.Lemma_AllImpliesAlwaysAnother$_T0, s#0, P#0)
     && _module.__default.AlwaysAnother(_module._default.Lemma_AllImpliesAlwaysAnother$_T0, 
      $LS($LZ), 
      _module.Stream.tail(s#0), 
      P#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_AllImpliesAlwaysAnother# (co-call)"} CoCall$$_module.__default.Lemma__AllImpliesAlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0: Ty, 
    _k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0))
         && $IsAlloc(s#1, 
          Tclass._module.Stream(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0), 
          $Heap)
         && $IsA#_module.Stream(s#1), 
    P#1: HandleType
       where $Is(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, TBool))
         && $IsAlloc(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, TBool), 
          $Heap));
  // user-defined preconditions
  requires {:id "id129"} _module.__default.AllP#canCall(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, s#1, P#1)
     ==> _module.__default.AllP(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), s#1, P#1)
       || $Unbox(Apply1(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
          TBool, 
          $Heap, 
          P#1, 
          _module.Stream.head(s#1))): bool;
  requires {:id "id130"} _module.__default.AllP#canCall(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, s#1, P#1)
     ==> _module.__default.AllP(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), s#1, P#1)
       || _module.__default.AllP(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#1), 
        P#1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.AlwaysAnother_h#canCall(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, _k#0, s#1, P#1);
  free ensures {:id "id131"} _module.__default.AlwaysAnother_h#canCall(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, _k#0, s#1, P#1)
     && 
    _module.__default.AlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), _k#0, s#1, P#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> _module.__default.IsAnother(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, s#1, P#1)
         && _module.__default.AlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
          $LS($LZ), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          _module.Stream.tail(s#1), 
          P#1))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.AlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), _k'#0, s#1, P#1) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.AlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), _k'#0, s#1, P#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_AllImpliesAlwaysAnother# (correctness)"} Impl$$_module.__default.Lemma__AllImpliesAlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0: Ty, 
    _k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0))
         && $IsAlloc(s#1, 
          Tclass._module.Stream(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0), 
          $Heap)
         && $IsA#_module.Stream(s#1), 
    P#1: HandleType
       where $Is(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, TBool))
         && $IsAlloc(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, TBool), 
          $Heap))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id132"} _module.__default.AllP#canCall(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, s#1, P#1)
     && 
    _module.__default.AllP(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), s#1, P#1)
     && 
    $Unbox(Apply1(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
        TBool, 
        $Heap, 
        P#1, 
        _module.Stream.head(s#1))): bool
     && _module.__default.AllP(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
      $LS($LZ), 
      _module.Stream.tail(s#1), 
      P#1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.AlwaysAnother_h#canCall(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, _k#0, s#1, P#1);
  ensures {:id "id133"} _module.__default.AlwaysAnother_h#canCall(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, _k#0, s#1, P#1)
     ==> _module.__default.AlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), _k#0, s#1, P#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        _module.__default.IsAnother#canCall(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, s#1, P#1)
         ==> _module.__default.IsAnother(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, s#1, P#1)
           || (exists n#2: int :: 
            { _module.__default.Tail(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), s#1, n#2) } 
            LitInt(0) <= n#2
               && 
              LitInt(0) <= n#2
               && $Unbox(Apply1(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
                  TBool, 
                  $Heap, 
                  P#1, 
                  _module.Stream.head(_module.__default.Tail(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), s#1, n#2)))): bool));
  ensures {:id "id134"} _module.__default.AlwaysAnother_h#canCall(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, _k#0, s#1, P#1)
     ==> _module.__default.AlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), _k#0, s#1, P#1)
       || (0 < ORD#Offset(_k#0)
         ==> _module.__default.AlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
          $LS($LS($LZ)), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          _module.Stream.tail(s#1), 
          P#1));
  ensures {:id "id135"} _module.__default.AlwaysAnother_h#canCall(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, _k#0, s#1, P#1)
     ==> _module.__default.AlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), _k#0, s#1, P#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.AlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
              $LS($LS($LZ)), 
              _k'#1, 
              s#1, 
              P#1) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.AlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
              $LS($LS($LZ)), 
              _k'#1, 
              s#1, 
              P#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_AllImpliesAlwaysAnother# (correctness)"} Impl$$_module.__default.Lemma__AllImpliesAlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0: Ty, 
    _k#0: Box, 
    s#1: DatatypeType, 
    P#1: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##s#2: DatatypeType;
  var ##n#0: int;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Lemma_AllImpliesAlwaysAnother#, Impl$$_module.__default.Lemma__AllImpliesAlwaysAnother_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#s0#0: DatatypeType :: 
      { _module.__default.AlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
          $LS($LZ), 
          $ih#_k0#0, 
          $ih#s0#0, 
          P#1) } 
      $Is($ih#s0#0, 
            Tclass._module.Stream(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0))
           && _module.__default.AllP(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), $ih#s0#0, P#1)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> _module.__default.AlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
          $LS($LZ), 
          $ih#_k0#0, 
          $ih#s0#0, 
          P#1));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(88,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(89,3)
        ##s#2 := s#1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#2, 
          Tclass._module.Stream(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0), 
          $Heap);
        assert {:id "id136"} $Is(LitInt(0), Tclass._System.nat());
        ##n#0 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
        assume _module.__default.Tail#canCall(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, s#1, LitInt(0));
        assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), s#1, LitInt(0)));
        assume $IsA#_module.Stream(_module.__default.Tail(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), s#1, LitInt(0)))
           && $IsA#_module.Stream(s#1)
           && _module.__default.Tail#canCall(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, s#1, LitInt(0));
        assert {:id "id137"} {:subsumption 0} $Eq#_module.Stream(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
          _module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
          $LS($LS($LZ)), 
          _module.__default.Tail(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
            $LS($LS($LZ)), 
            s#1, 
            LitInt(0)), 
          s#1);
        assume {:id "id138"} $Eq#_module.Stream(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
          _module._default.Lemma_AllImpliesAlwaysAnother#$_T0, 
          $LS($LS($LZ)), 
          _module.__default.Tail(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), s#1, LitInt(0)), 
          s#1);
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(88,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, s#2: DatatypeType, P#2: HandleType :: 
          { _module.__default.AlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), _k'#2, s#2, P#2) } 
            { _module.__default.AllP(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), s#2, P#2), ORD#Less(_k'#2, _k#0) } 
          $Is(s#2, Tclass._module.Stream(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0))
               && $Is(P#2, 
                Tclass._System.___hTotalFunc1(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, TBool))
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.AllP(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), s#2, P#2)
             ==> _module.__default.AlwaysAnother_h(_module._default.Lemma_AllImpliesAlwaysAnother#$_T0, $LS($LZ), _k'#2, s#2, P#2));
    }
}



// function declaration for _module._default.Next
function _module.__default.Next(_module._default.Next$_T0: Ty, s#0: DatatypeType, P#0: HandleType) : int
uses {
// consequence axiom for _module.__default.Next
axiom 4 <= $FunctionContextHeight
   ==> (forall _module._default.Next$_T0: Ty, $Heap: Heap, s#0: DatatypeType, P#0: HandleType :: 
    { _module.__default.Next(_module._default.Next$_T0, s#0, P#0), $IsGoodHeap($Heap) } 
    _module.__default.Next#canCall(_module._default.Next$_T0, s#0, P#0)
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.Next$_T0))
           && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Next$_T0), $Heap)
           && 
          $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Next$_T0, TBool))
           && $IsAlloc(P#0, Tclass._System.___hTotalFunc1(_module._default.Next$_T0, TBool), $Heap)
           && _module.__default.AlwaysAnother(_module._default.Next$_T0, $LS($LZ), s#0, P#0))
       ==> $Unbox(Apply1(_module._default.Next$_T0, 
            TBool, 
            $Heap, 
            P#0, 
            _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, 
                $LS($LZ), 
                s#0, 
                _module.__default.Next(_module._default.Next$_T0, s#0, P#0))))): bool
         && (forall i#0: int :: 
          { _module.__default.Tail(_module._default.Next$_T0, $LS($LZ), s#0, i#0) } 
          LitInt(0) <= i#0
               && i#0 < _module.__default.Next(_module._default.Next$_T0, s#0, P#0)
             ==> !$Unbox(Apply1(_module._default.Next$_T0, 
                TBool, 
                $Heap, 
                P#0, 
                _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), s#0, i#0)))): bool)
         && LitInt(0) <= _module.__default.Next(_module._default.Next$_T0, s#0, P#0));
// definition axiom for _module.__default.Next (revealed)
axiom {:id "id139"} 4 <= $FunctionContextHeight
   ==> (forall _module._default.Next$_T0: Ty, $Heap: Heap, s#0: DatatypeType, P#0: HandleType :: 
    { _module.__default.Next(_module._default.Next$_T0, s#0, P#0), $IsGoodHeap($Heap) } 
    _module.__default.Next#canCall(_module._default.Next$_T0, s#0, P#0)
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.Next$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Next$_T0, TBool))
           && _module.__default.AlwaysAnother(_module._default.Next$_T0, $LS($LZ), s#0, P#0))
       ==> $let#0$canCall(_module._default.Next$_T0, $Heap, P#0, s#0)
         && _module.__default.NextMinimizer#canCall(_module._default.Next$_T0, 
          s#0, 
          P#0, 
          $let#0_n(_module._default.Next$_T0, $Heap, P#0, s#0))
         && _module.__default.Next(_module._default.Next$_T0, s#0, P#0)
           == (var n#0 := $let#0_n(_module._default.Next$_T0, $Heap, P#0, s#0); 
            _module.__default.NextMinimizer(_module._default.Next$_T0, $LS($LZ), s#0, P#0, n#0)));
// definition axiom for _module.__default.Next for all literals (revealed)
axiom {:id "id140"} 4 <= $FunctionContextHeight
   ==> (forall _module._default.Next$_T0: Ty, $Heap: Heap, s#0: DatatypeType, P#0: HandleType :: 
    {:weight 3} { _module.__default.Next(_module._default.Next$_T0, Lit(s#0), Lit(P#0)), $IsGoodHeap($Heap) } 
    _module.__default.Next#canCall(_module._default.Next$_T0, Lit(s#0), Lit(P#0))
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.Next$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Next$_T0, TBool))
           && Lit(_module.__default.AlwaysAnother(_module._default.Next$_T0, $LS($LZ), Lit(s#0), Lit(P#0))))
       ==> $let#0$canCall(_module._default.Next$_T0, $Heap, Lit(P#0), Lit(s#0))
         && _module.__default.NextMinimizer#canCall(_module._default.Next$_T0, 
          Lit(s#0), 
          Lit(P#0), 
          $let#0_n(_module._default.Next$_T0, $Heap, Lit(P#0), Lit(s#0)))
         && _module.__default.Next(_module._default.Next$_T0, Lit(s#0), Lit(P#0))
           == (var n#1 := $let#0_n(_module._default.Next$_T0, $Heap, Lit(P#0), Lit(s#0)); 
            _module.__default.NextMinimizer(_module._default.Next$_T0, $LS($LZ), Lit(s#0), Lit(P#0), n#1)));
}

function _module.__default.Next#canCall(_module._default.Next$_T0: Ty, s#0: DatatypeType, P#0: HandleType) : bool;

function _module.__default.Next#requires(Ty, DatatypeType, HandleType) : bool;

// #requires axiom for _module.__default.Next
axiom (forall _module._default.Next$_T0: Ty, $Heap: Heap, s#0: DatatypeType, P#0: HandleType :: 
  { _module.__default.Next#requires(_module._default.Next$_T0, s#0, P#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(s#0, Tclass._module.Stream(_module._default.Next$_T0))
       && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Next$_T0, TBool))
     ==> _module.__default.Next#requires(_module._default.Next$_T0, s#0, P#0)
       == _module.__default.AlwaysAnother(_module._default.Next$_T0, $LS($LZ), s#0, P#0));

function $let#0_n(_module._default.Next$_T0: Ty, $heap: Heap, P: HandleType, s: DatatypeType)
   : int;

function $let#0$canCall(_module._default.Next$_T0: Ty, $heap: Heap, P: HandleType, s: DatatypeType)
   : bool;

axiom (forall _module._default.Next$_T0: Ty, $heap: Heap, P: HandleType, s: DatatypeType :: 
  { $let#0_n(_module._default.Next$_T0, $heap, P, s) } 
  $let#0$canCall(_module._default.Next$_T0, $heap, P, s)
     ==> LitInt(0) <= $let#0_n(_module._default.Next$_T0, $heap, P, s)
       && 
      LitInt(0) <= $let#0_n(_module._default.Next$_T0, $heap, P, s)
       && $Unbox(Apply1(_module._default.Next$_T0, 
          TBool, 
          $heap, 
          P, 
          _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, 
              $LS($LZ), 
              s, 
              $let#0_n(_module._default.Next$_T0, $heap, P, s))))): bool);

procedure {:verboseName "Next (well-formedness)"} CheckWellformed$$_module.__default.Next(_module._default.Next$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Next$_T0)), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Next$_T0, TBool)));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id141"} $Unbox(Apply1(_module._default.Next$_T0, 
      TBool, 
      $Heap, 
      P#0, 
      _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, 
          $LS($LS($LZ)), 
          s#0, 
          _module.__default.Next(_module._default.Next$_T0, s#0, P#0))))): bool;
  ensures {:id "id142"} (forall i#1: int :: 
    { _module.__default.Tail(_module._default.Next$_T0, $LS($LS($LZ)), s#0, i#1) } 
    LitInt(0) <= i#1
         && i#1 < _module.__default.Next(_module._default.Next$_T0, s#0, P#0)
       ==> !$Unbox(Apply1(_module._default.Next$_T0, 
          TBool, 
          $Heap, 
          P#0, 
          _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, $LS($LS($LZ)), s#0, i#1)))): bool);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Next (well-formedness)"} CheckWellformed$$_module.__default.Next(_module._default.Next$_T0: Ty, s#0: DatatypeType, P#0: HandleType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##P#0: HandleType;
  var ##s#1: DatatypeType;
  var ##n#0: int;
  var ##s#2: DatatypeType;
  var ##P#1: HandleType;
  var i#2: int;
  var ##s#3: DatatypeType;
  var ##P#2: HandleType;
  var ##s#4: DatatypeType;
  var ##n#1: int;
  var n#4: int;
  var ##s#5: DatatypeType;
  var ##n#2: int;
  var ##s#6: DatatypeType;
  var ##P#3: HandleType;
  var ##n#3: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(_module._default.Next$_T0), $Heap);
    ##P#0 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#0, Tclass._System.___hTotalFunc1(_module._default.Next$_T0, TBool), $Heap);
    assume _module.__default.AlwaysAnother#canCall(_module._default.Next$_T0, s#0, P#0);
    assume {:id "id143"} _module.__default.AlwaysAnother(_module._default.Next$_T0, $LS($LZ), s#0, P#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.__default.Next(_module._default.Next$_T0, s#0, P#0);
        ##s#1 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#1, Tclass._module.Stream(_module._default.Next$_T0), $Heap);
        ##s#2 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#2, Tclass._module.Stream(_module._default.Next$_T0), $Heap);
        ##P#1 := P#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##P#1, Tclass._System.___hTotalFunc1(_module._default.Next$_T0, TBool), $Heap);
        assert {:id "id144"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Next$_T0, ##s#2, ##P#1)
           ==> _module.__default.AlwaysAnother(_module._default.Next$_T0, $LS($LZ), ##s#2, ##P#1)
             || (_module.__default.IsAnother#canCall(_module._default.Next$_T0, ##s#2, ##P#1)
               ==> _module.__default.IsAnother(_module._default.Next$_T0, ##s#2, ##P#1)
                 || (exists n#2: int :: 
                  { _module.__default.Tail(_module._default.Next$_T0, $LS($LZ), ##s#2, n#2) } 
                  LitInt(0) <= n#2
                     && 
                    LitInt(0) <= n#2
                     && $Unbox(Apply1(_module._default.Next$_T0, 
                        TBool, 
                        $Heap, 
                        ##P#1, 
                        _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), ##s#2, n#2)))): bool));
        assert {:id "id145"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Next$_T0, ##s#2, ##P#1)
           ==> _module.__default.AlwaysAnother(_module._default.Next$_T0, $LS($LZ), ##s#2, ##P#1)
             || _module.__default.AlwaysAnother(_module._default.Next$_T0, $LS($LS($LZ)), _module.Stream.tail(##s#2), ##P#1);
        assume _module.__default.AlwaysAnother(_module._default.Next$_T0, $LS($LZ), ##s#2, ##P#1);
        assert {:id "id146"} $Eq#_module.Stream(_module._default.Next$_T0, _module._default.Next$_T0, $LS($LS($LZ)), s#0, s#0)
           && P#0 == P#0;
        assume ($Eq#_module.Stream(_module._default.Next$_T0, _module._default.Next$_T0, $LS($LS($LZ)), s#0, s#0)
             && P#0 == P#0)
           || _module.__default.Next#canCall(_module._default.Next$_T0, s#0, P#0);
        ##n#0 := _module.__default.Next(_module._default.Next$_T0, s#0, P#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
        assume _module.__default.Tail#canCall(_module._default.Next$_T0, 
          s#0, 
          _module.__default.Next(_module._default.Next$_T0, s#0, P#0));
        assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Next$_T0, 
            $LS($LZ), 
            s#0, 
            _module.__default.Next(_module._default.Next$_T0, s#0, P#0)));
        assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Next$_T0, 
            $LS($LZ), 
            s#0, 
            _module.__default.Next(_module._default.Next$_T0, s#0, P#0)));
        assume {:id "id147"} $Unbox(Apply1(_module._default.Next$_T0, 
            TBool, 
            $Heap, 
            P#0, 
            _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, 
                $LS($LZ), 
                s#0, 
                _module.__default.Next(_module._default.Next$_T0, s#0, P#0))))): bool;
        havoc i#2;
        assume true;
        if (*)
        {
            if (LitInt(0) <= i#2)
            {
                ##s#3 := s#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, Tclass._module.Stream(_module._default.Next$_T0), $Heap);
                ##P#2 := P#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##P#2, Tclass._System.___hTotalFunc1(_module._default.Next$_T0, TBool), $Heap);
                assert {:id "id148"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Next$_T0, ##s#3, ##P#2)
                   ==> _module.__default.AlwaysAnother(_module._default.Next$_T0, $LS($LZ), ##s#3, ##P#2)
                     || (_module.__default.IsAnother#canCall(_module._default.Next$_T0, ##s#3, ##P#2)
                       ==> _module.__default.IsAnother(_module._default.Next$_T0, ##s#3, ##P#2)
                         || (exists n#3: int :: 
                          { _module.__default.Tail(_module._default.Next$_T0, $LS($LZ), ##s#3, n#3) } 
                          LitInt(0) <= n#3
                             && 
                            LitInt(0) <= n#3
                             && $Unbox(Apply1(_module._default.Next$_T0, 
                                TBool, 
                                $Heap, 
                                ##P#2, 
                                _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), ##s#3, n#3)))): bool));
                assert {:id "id149"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Next$_T0, ##s#3, ##P#2)
                   ==> _module.__default.AlwaysAnother(_module._default.Next$_T0, $LS($LZ), ##s#3, ##P#2)
                     || _module.__default.AlwaysAnother(_module._default.Next$_T0, $LS($LS($LZ)), _module.Stream.tail(##s#3), ##P#2);
                assume _module.__default.AlwaysAnother(_module._default.Next$_T0, $LS($LZ), ##s#3, ##P#2);
                assert {:id "id150"} $Eq#_module.Stream(_module._default.Next$_T0, _module._default.Next$_T0, $LS($LS($LZ)), s#0, s#0)
                   && P#0 == P#0;
                assume ($Eq#_module.Stream(_module._default.Next$_T0, _module._default.Next$_T0, $LS($LS($LZ)), s#0, s#0)
                     && P#0 == P#0)
                   || _module.__default.Next#canCall(_module._default.Next$_T0, s#0, P#0);
            }

            assume {:id "id151"} LitInt(0) <= i#2
               && i#2 < _module.__default.Next(_module._default.Next$_T0, s#0, P#0);
            ##s#4 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#4, Tclass._module.Stream(_module._default.Next$_T0), $Heap);
            assert {:id "id152"} $Is(i#2, Tclass._System.nat());
            ##n#1 := i#2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(_module._default.Next$_T0, s#0, i#2);
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), s#0, i#2));
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), s#0, i#2));
            assume {:id "id153"} !$Unbox(Apply1(_module._default.Next$_T0, 
                TBool, 
                $Heap, 
                P#0, 
                _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), s#0, i#2)))): bool;
        }
        else
        {
            assume {:id "id154"} LitInt(0) <= i#2
                 && i#2 < _module.__default.Next(_module._default.Next$_T0, s#0, P#0)
               ==> !$Unbox(Apply1(_module._default.Next$_T0, 
                  TBool, 
                  $Heap, 
                  P#0, 
                  _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), s#0, i#2)))): bool;
        }

        assume {:id "id155"} (forall i#1: int :: 
          { _module.__default.Tail(_module._default.Next$_T0, $LS($LZ), s#0, i#1) } 
          LitInt(0) <= i#1
               && i#1 < _module.__default.Next(_module._default.Next$_T0, s#0, P#0)
             ==> !$Unbox(Apply1(_module._default.Next$_T0, 
                TBool, 
                $Heap, 
                P#0, 
                _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), s#0, i#1)))): bool);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc n#4;
        if (LitInt(0) <= n#4)
        {
            if (LitInt(0) <= n#4)
            {
                ##s#5 := s#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#5, Tclass._module.Stream(_module._default.Next$_T0), $Heap);
                ##n#2 := n#4;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
                assume _module.__default.Tail#canCall(_module._default.Next$_T0, s#0, n#4);
                assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), s#0, n#4));
                assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), s#0, n#4));
            }
        }

        assert {:id "id156"} ($Is(LitInt(0), Tclass._System.nat())
             && 
            LitInt(0) <= LitInt(0)
             && $Unbox(Apply1(_module._default.Next$_T0, 
                TBool, 
                $Heap, 
                P#0, 
                _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), s#0, LitInt(0))))): bool)
           || 
          ($Is(LitInt(0), Tclass._System.nat())
             && 
            LitInt(0) <= LitInt(0)
             && $Unbox(Apply1(_module._default.Next$_T0, 
                TBool, 
                $Heap, 
                P#0, 
                _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), s#0, LitInt(0))))): bool)
           || 
          ($Is(LitInt(0), Tclass._System.nat())
             && 
            LitInt(0) <= LitInt(0)
             && $Unbox(Apply1(_module._default.Next$_T0, 
                TBool, 
                $Heap, 
                P#0, 
                _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), s#0, LitInt(0))))): bool)
           || (exists n#5: int :: 
            LitInt(0) <= n#5
               && 
              LitInt(0) <= n#5
               && $Unbox(Apply1(_module._default.Next$_T0, 
                  TBool, 
                  $Heap, 
                  P#0, 
                  _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), s#0, n#5)))): bool);
        assume LitInt(0) <= n#4;
        assume LitInt(0) <= n#4
           && $Unbox(Apply1(_module._default.Next$_T0, 
              TBool, 
              $Heap, 
              P#0, 
              _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), s#0, n#4)))): bool;
        ##s#6 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#6, Tclass._module.Stream(_module._default.Next$_T0), $Heap);
        ##P#3 := P#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##P#3, Tclass._System.___hTotalFunc1(_module._default.Next$_T0, TBool), $Heap);
        ##n#3 := n#4;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
        assert {:id "id157"} {:subsumption 0} $Unbox(Apply1(_module._default.Next$_T0, 
            TBool, 
            $Heap, 
            ##P#3, 
            _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, $LS($LS($LZ)), ##s#6, ##n#3)))): bool;
        assume $Unbox(Apply1(_module._default.Next$_T0, 
            TBool, 
            $Heap, 
            ##P#3, 
            _module.Stream.head(_module.__default.Tail(_module._default.Next$_T0, $LS($LZ), ##s#6, ##n#3)))): bool;
        assume _module.__default.NextMinimizer#canCall(_module._default.Next$_T0, s#0, P#0, n#4);
        assume $let#0$canCall(_module._default.Next$_T0, $Heap, P#0, s#0);
        assume {:id "id158"} _module.__default.Next(_module._default.Next$_T0, s#0, P#0)
           == _module.__default.NextMinimizer(_module._default.Next$_T0, $LS($LZ), s#0, P#0, n#4);
        assume _module.__default.NextMinimizer#canCall(_module._default.Next$_T0, s#0, P#0, n#4);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Next(_module._default.Next$_T0, s#0, P#0), 
          Tclass._System.nat());
        return;

        assume false;
    }
}



// function declaration for _module._default.NextMinimizer
function _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    P#0: HandleType, 
    n#0: int)
   : int
uses {
// consequence axiom for _module.__default.NextMinimizer
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.NextMinimizer$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      s#0: DatatypeType, 
      P#0: HandleType, 
      n#0: int :: 
    { _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $ly, s#0, P#0, n#0), $IsGoodHeap($Heap) } 
    _module.__default.NextMinimizer#canCall(_module._default.NextMinimizer$_T0, s#0, P#0, n#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.NextMinimizer$_T0))
           && $IsAlloc(s#0, Tclass._module.Stream(_module._default.NextMinimizer$_T0), $Heap)
           && 
          $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.NextMinimizer$_T0, TBool))
           && $IsAlloc(P#0, 
            Tclass._System.___hTotalFunc1(_module._default.NextMinimizer$_T0, TBool), 
            $Heap)
           && LitInt(0) <= n#0
           && $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
              TBool, 
              $Heap, 
              P#0, 
              _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, n#0)))): bool)
       ==> $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
            TBool, 
            $Heap, 
            P#0, 
            _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, 
                $LS($LZ), 
                s#0, 
                _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $ly, s#0, P#0, n#0))))): bool
         && (forall i#0: int :: 
          { _module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#0) } 
          LitInt(0) <= i#0
               && i#0
                 < _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $ly, s#0, P#0, n#0)
             ==> !$Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                TBool, 
                $Heap, 
                P#0, 
                _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#0)))): bool)
         && LitInt(0)
           <= _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $ly, s#0, P#0, n#0));
// definition axiom for _module.__default.NextMinimizer (revealed)
axiom {:id "id159"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.NextMinimizer$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      s#0: DatatypeType, 
      P#0: HandleType, 
      n#0: int :: 
    { _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($ly), s#0, P#0, n#0), $IsGoodHeap($Heap) } 
    _module.__default.NextMinimizer#canCall(_module._default.NextMinimizer$_T0, s#0, P#0, n#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.NextMinimizer$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.NextMinimizer$_T0, TBool))
           && LitInt(0) <= n#0
           && $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
              TBool, 
              $Heap, 
              P#0, 
              _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, n#0)))): bool)
       ==> (forall i#1: int :: 
          { _module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#1) } 
          LitInt(0) <= i#1
             ==> 
            i#1 < n#0
             ==> _module.__default.Tail#canCall(_module._default.NextMinimizer$_T0, s#0, i#1)
               && _module.Stream.Cons_q(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#1)))
         && (!(forall i#1: int :: 
            { _module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#1) } 
            LitInt(0) <= i#1 && i#1 < n#0
               ==> !$Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                  TBool, 
                  $Heap, 
                  P#0, 
                  _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#1)))): bool)
           ==> $let#3$canCall(_module._default.NextMinimizer$_T0, $Heap, n#0, P#0, s#0)
             && _module.__default.NextMinimizer#canCall(_module._default.NextMinimizer$_T0, 
              s#0, 
              P#0, 
              $let#3_k(_module._default.NextMinimizer$_T0, $Heap, n#0, P#0, s#0)))
         && _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($ly), s#0, P#0, n#0)
           == (if (forall i#1: int :: 
              { _module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#1) } 
              LitInt(0) <= i#1 && i#1 < n#0
                 ==> !$Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                    TBool, 
                    $Heap, 
                    P#0, 
                    _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#1)))): bool)
             then n#0
             else (var k#0 := $let#3_k(_module._default.NextMinimizer$_T0, $Heap, n#0, P#0, s#0); 
              _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $ly, s#0, P#0, k#0))));
// definition axiom for _module.__default.NextMinimizer for decreasing-related literals (revealed)
axiom {:id "id160"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.NextMinimizer$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      s#0: DatatypeType, 
      P#0: HandleType, 
      n#0: int :: 
    {:weight 3} { _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($ly), s#0, P#0, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.__default.NextMinimizer#canCall(_module._default.NextMinimizer$_T0, s#0, P#0, LitInt(n#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.NextMinimizer$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.NextMinimizer$_T0, TBool))
           && LitInt(0) <= n#0
           && $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
              TBool, 
              $Heap, 
              P#0, 
              _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, LitInt(n#0))))): bool)
       ==> (forall i#2: int :: 
          { _module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#2) } 
          LitInt(0) <= i#2
             ==> 
            i#2 < n#0
             ==> _module.__default.Tail#canCall(_module._default.NextMinimizer$_T0, s#0, i#2)
               && _module.Stream.Cons_q(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#2)))
         && (!(forall i#2: int :: 
            { _module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#2) } 
            LitInt(0) <= i#2 && i#2 < n#0
               ==> !$Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                  TBool, 
                  $Heap, 
                  P#0, 
                  _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#2)))): bool)
           ==> $let#3$canCall(_module._default.NextMinimizer$_T0, $Heap, LitInt(n#0), P#0, s#0)
             && _module.__default.NextMinimizer#canCall(_module._default.NextMinimizer$_T0, 
              s#0, 
              P#0, 
              $let#3_k(_module._default.NextMinimizer$_T0, $Heap, LitInt(n#0), P#0, s#0)))
         && _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($ly), s#0, P#0, LitInt(n#0))
           == (if (forall i#2: int :: 
              { _module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#2) } 
              LitInt(0) <= i#2 && i#2 < n#0
                 ==> !$Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                    TBool, 
                    $Heap, 
                    P#0, 
                    _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#2)))): bool)
             then n#0
             else (var k#1 := $let#3_k(_module._default.NextMinimizer$_T0, $Heap, LitInt(n#0), P#0, s#0); 
              _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($ly), s#0, P#0, k#1))));
// definition axiom for _module.__default.NextMinimizer for all literals (revealed)
axiom {:id "id161"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.NextMinimizer$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      s#0: DatatypeType, 
      P#0: HandleType, 
      n#0: int :: 
    {:weight 3} { _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($ly), Lit(s#0), Lit(P#0), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.__default.NextMinimizer#canCall(_module._default.NextMinimizer$_T0, Lit(s#0), Lit(P#0), LitInt(n#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.NextMinimizer$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.NextMinimizer$_T0, TBool))
           && LitInt(0) <= n#0
           && $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
              TBool, 
              $Heap, 
              Lit(P#0), 
              Lit(_module.Stream.head(Lit(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), Lit(s#0), LitInt(n#0))))))): bool)
       ==> (forall i#3: int :: 
          { _module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#3) } 
          LitInt(0) <= i#3
             ==> 
            i#3 < n#0
             ==> _module.__default.Tail#canCall(_module._default.NextMinimizer$_T0, Lit(s#0), i#3)
               && _module.Stream.Cons_q(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), Lit(s#0), i#3)))
         && (!(forall i#3: int :: 
            { _module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#3) } 
            LitInt(0) <= i#3 && i#3 < n#0
               ==> !$Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                  TBool, 
                  $Heap, 
                  Lit(P#0), 
                  _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), Lit(s#0), i#3)))): bool)
           ==> $let#3$canCall(_module._default.NextMinimizer$_T0, $Heap, LitInt(n#0), Lit(P#0), Lit(s#0))
             && _module.__default.NextMinimizer#canCall(_module._default.NextMinimizer$_T0, 
              Lit(s#0), 
              Lit(P#0), 
              $let#3_k(_module._default.NextMinimizer$_T0, $Heap, LitInt(n#0), Lit(P#0), Lit(s#0))))
         && _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($ly), Lit(s#0), Lit(P#0), LitInt(n#0))
           == (if (forall i#3: int :: 
              { _module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#3) } 
              LitInt(0) <= i#3 && i#3 < n#0
                 ==> !$Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                    TBool, 
                    $Heap, 
                    Lit(P#0), 
                    _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), Lit(s#0), i#3)))): bool)
             then n#0
             else (var k#2 := $let#3_k(_module._default.NextMinimizer$_T0, $Heap, LitInt(n#0), Lit(P#0), Lit(s#0)); 
              _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($ly), Lit(s#0), Lit(P#0), k#2))));
}

function _module.__default.NextMinimizer#canCall(_module._default.NextMinimizer$_T0: Ty, 
    s#0: DatatypeType, 
    P#0: HandleType, 
    n#0: int)
   : bool;

// layer synonym axiom
axiom (forall _module._default.NextMinimizer$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    P#0: HandleType, 
    n#0: int :: 
  { _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($ly), s#0, P#0, n#0) } 
  _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($ly), s#0, P#0, n#0)
     == _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $ly, s#0, P#0, n#0));

// fuel synonym axiom
axiom (forall _module._default.NextMinimizer$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    P#0: HandleType, 
    n#0: int :: 
  { _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, AsFuelBottom($ly), s#0, P#0, n#0) } 
  _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $ly, s#0, P#0, n#0)
     == _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LZ, s#0, P#0, n#0));

function _module.__default.NextMinimizer#requires(Ty, LayerType, DatatypeType, HandleType, int) : bool;

// #requires axiom for _module.__default.NextMinimizer
axiom (forall _module._default.NextMinimizer$_T0: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    s#0: DatatypeType, 
    P#0: HandleType, 
    n#0: int :: 
  { _module.__default.NextMinimizer#requires(_module._default.NextMinimizer$_T0, $ly, s#0, P#0, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(s#0, Tclass._module.Stream(_module._default.NextMinimizer$_T0))
       && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.NextMinimizer$_T0, TBool))
       && LitInt(0) <= n#0
     ==> _module.__default.NextMinimizer#requires(_module._default.NextMinimizer$_T0, $ly, s#0, P#0, n#0)
       == $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
          TBool, 
          $Heap, 
          P#0, 
          _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, n#0)))): bool);

function $let#3_k(_module._default.NextMinimizer$_T0: Ty, 
    $heap: Heap, 
    n: int, 
    P: HandleType, 
    s: DatatypeType)
   : int;

function $let#3$canCall(_module._default.NextMinimizer$_T0: Ty, 
    $heap: Heap, 
    n: int, 
    P: HandleType, 
    s: DatatypeType)
   : bool;

axiom (forall _module._default.NextMinimizer$_T0: Ty, 
    $heap: Heap, 
    n: int, 
    P: HandleType, 
    s: DatatypeType :: 
  { $let#3_k(_module._default.NextMinimizer$_T0, $heap, n, P, s) } 
  $let#3$canCall(_module._default.NextMinimizer$_T0, $heap, n, P, s)
     ==> LitInt(0) <= $let#3_k(_module._default.NextMinimizer$_T0, $heap, n, P, s)
       && $let#3_k(_module._default.NextMinimizer$_T0, $heap, n, P, s) < n
       && $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
          TBool, 
          $heap, 
          P, 
          _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, 
              $LS($LZ), 
              s, 
              $let#3_k(_module._default.NextMinimizer$_T0, $heap, n, P, s))))): bool);

procedure {:verboseName "NextMinimizer (well-formedness)"} CheckWellformed$$_module.__default.NextMinimizer(_module._default.NextMinimizer$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.NextMinimizer$_T0)), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.NextMinimizer$_T0, TBool)), 
    n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id162"} $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
      TBool, 
      $Heap, 
      P#0, 
      _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, 
          $LS($LS($LZ)), 
          s#0, 
          _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LS($LZ)), s#0, P#0, n#0))))): bool;
  ensures {:id "id163"} (forall i#4: int :: 
    { _module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LS($LZ)), s#0, i#4) } 
    LitInt(0) <= i#4
         && i#4
           < _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LS($LZ)), s#0, P#0, n#0)
       ==> !$Unbox(Apply1(_module._default.NextMinimizer$_T0, 
          TBool, 
          $Heap, 
          P#0, 
          _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LS($LZ)), s#0, i#4)))): bool);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NextMinimizer (well-formedness)"} CheckWellformed$$_module.__default.NextMinimizer(_module._default.NextMinimizer$_T0: Ty, 
    s#0: DatatypeType, 
    P#0: HandleType, 
    n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##n#0: int;
  var ##s#1: DatatypeType;
  var ##n#1: int;
  var ##s#2: DatatypeType;
  var ##P#0: HandleType;
  var ##n#2: int;
  var i#5: int;
  var ##s#3: DatatypeType;
  var ##P#1: HandleType;
  var ##n#3: int;
  var ##s#4: DatatypeType;
  var ##n#4: int;
  var i#6: int;
  var ##s#5: DatatypeType;
  var ##n#5: int;
  var k#3: int;
  var ##s#6: DatatypeType;
  var ##n#6: int;
  var ##s#7: DatatypeType;
  var ##P#2: HandleType;
  var ##n#7: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(_module._default.NextMinimizer$_T0), $Heap);
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.Tail#canCall(_module._default.NextMinimizer$_T0, s#0, n#0);
    assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, n#0));
    assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, n#0));
    assume {:id "id164"} $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
        TBool, 
        $Heap, 
        P#0, 
        _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, n#0)))): bool;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0)
           <= _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, P#0, n#0);
        ##s#1 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#1, Tclass._module.Stream(_module._default.NextMinimizer$_T0), $Heap);
        ##s#2 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#2, Tclass._module.Stream(_module._default.NextMinimizer$_T0), $Heap);
        ##P#0 := P#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##P#0, 
          Tclass._System.___hTotalFunc1(_module._default.NextMinimizer$_T0, TBool), 
          $Heap);
        ##n#2 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
        assert {:id "id165"} {:subsumption 0} $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
            TBool, 
            $Heap, 
            ##P#0, 
            _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LS($LZ)), ##s#2, ##n#2)))): bool;
        assume $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
            TBool, 
            $Heap, 
            ##P#0, 
            _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), ##s#2, ##n#2)))): bool;
        assert {:id "id166"} 0 <= n#0 || ##n#2 == n#0;
        assert {:id "id167"} (
            $Eq#_module.Stream(_module._default.NextMinimizer$_T0, 
              _module._default.NextMinimizer$_T0, 
              $LS($LS($LZ)), 
              s#0, 
              s#0)
             && P#0 == P#0
             && n#0 == n#0)
           || ##n#2 < n#0;
        assume (
            $Eq#_module.Stream(_module._default.NextMinimizer$_T0, 
              _module._default.NextMinimizer$_T0, 
              $LS($LS($LZ)), 
              s#0, 
              s#0)
             && P#0 == P#0
             && n#0 == n#0)
           || _module.__default.NextMinimizer#canCall(_module._default.NextMinimizer$_T0, s#0, P#0, n#0);
        ##n#1 := _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, P#0, n#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
        assume _module.__default.Tail#canCall(_module._default.NextMinimizer$_T0, 
          s#0, 
          _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, P#0, n#0));
        assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.NextMinimizer$_T0, 
            $LS($LZ), 
            s#0, 
            _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, P#0, n#0)));
        assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.NextMinimizer$_T0, 
            $LS($LZ), 
            s#0, 
            _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, P#0, n#0)));
        assume {:id "id168"} $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
            TBool, 
            $Heap, 
            P#0, 
            _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, 
                $LS($LZ), 
                s#0, 
                _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, P#0, n#0))))): bool;
        havoc i#5;
        assume true;
        if (*)
        {
            if (LitInt(0) <= i#5)
            {
                ##s#3 := s#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, Tclass._module.Stream(_module._default.NextMinimizer$_T0), $Heap);
                ##P#1 := P#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##P#1, 
                  Tclass._System.___hTotalFunc1(_module._default.NextMinimizer$_T0, TBool), 
                  $Heap);
                ##n#3 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
                assert {:id "id169"} {:subsumption 0} $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                    TBool, 
                    $Heap, 
                    ##P#1, 
                    _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LS($LZ)), ##s#3, ##n#3)))): bool;
                assume $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                    TBool, 
                    $Heap, 
                    ##P#1, 
                    _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), ##s#3, ##n#3)))): bool;
                assert {:id "id170"} 0 <= n#0 || ##n#3 == n#0;
                assert {:id "id171"} (
                    $Eq#_module.Stream(_module._default.NextMinimizer$_T0, 
                      _module._default.NextMinimizer$_T0, 
                      $LS($LS($LZ)), 
                      s#0, 
                      s#0)
                     && P#0 == P#0
                     && n#0 == n#0)
                   || ##n#3 < n#0;
                assume (
                    $Eq#_module.Stream(_module._default.NextMinimizer$_T0, 
                      _module._default.NextMinimizer$_T0, 
                      $LS($LS($LZ)), 
                      s#0, 
                      s#0)
                     && P#0 == P#0
                     && n#0 == n#0)
                   || _module.__default.NextMinimizer#canCall(_module._default.NextMinimizer$_T0, s#0, P#0, n#0);
            }

            assume {:id "id172"} LitInt(0) <= i#5
               && i#5
                 < _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, P#0, n#0);
            ##s#4 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#4, Tclass._module.Stream(_module._default.NextMinimizer$_T0), $Heap);
            assert {:id "id173"} $Is(i#5, Tclass._System.nat());
            ##n#4 := i#5;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#4, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(_module._default.NextMinimizer$_T0, s#0, i#5);
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#5));
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#5));
            assume {:id "id174"} !$Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                TBool, 
                $Heap, 
                P#0, 
                _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#5)))): bool;
        }
        else
        {
            assume {:id "id175"} LitInt(0) <= i#5
                 && i#5
                   < _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, P#0, n#0)
               ==> !$Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                  TBool, 
                  $Heap, 
                  P#0, 
                  _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#5)))): bool;
        }

        assume {:id "id176"} (forall i#4: int :: 
          { _module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#4) } 
          LitInt(0) <= i#4
               && i#4
                 < _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, P#0, n#0)
             ==> !$Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                TBool, 
                $Heap, 
                P#0, 
                _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#4)))): bool);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc i#6;
        if (true)
        {
            if (LitInt(0) <= i#6)
            {
            }

            if (LitInt(0) <= i#6 && i#6 < n#0)
            {
                ##s#5 := s#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#5, Tclass._module.Stream(_module._default.NextMinimizer$_T0), $Heap);
                assert {:id "id177"} $Is(i#6, Tclass._System.nat());
                ##n#5 := i#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#5, Tclass._System.nat(), $Heap);
                assume _module.__default.Tail#canCall(_module._default.NextMinimizer$_T0, s#0, i#6);
                assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#6));
                assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#6));
            }
        }

        // End Comprehension WF check
        if ((forall i#7: int :: 
          { _module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#7) } 
          LitInt(0) <= i#7 && i#7 < n#0
             ==> !$Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                TBool, 
                $Heap, 
                P#0, 
                _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, i#7)))): bool))
        {
            assume {:id "id178"} _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, P#0, n#0)
               == n#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, P#0, n#0), 
              Tclass._System.nat());
            return;
        }
        else
        {
            havoc k#3;
            if (true)
            {
                if (LitInt(0) <= k#3)
                {
                }

                if (LitInt(0) <= k#3 && k#3 < n#0)
                {
                    ##s#6 := s#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#6, Tclass._module.Stream(_module._default.NextMinimizer$_T0), $Heap);
                    assert {:id "id179"} $Is(k#3, Tclass._System.nat());
                    ##n#6 := k#3;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#6, Tclass._System.nat(), $Heap);
                    assume _module.__default.Tail#canCall(_module._default.NextMinimizer$_T0, s#0, k#3);
                    assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, k#3));
                    assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, k#3));
                }
            }

            assert {:id "id180"} ($Is(n#0 - 1, TInt)
                 && 
                LitInt(0) <= n#0 - 1
                 && n#0 - 1 < n#0
                 && $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                    TBool, 
                    $Heap, 
                    P#0, 
                    _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, n#0 - 1)))): bool)
               || 
              ($Is(LitInt(0), TInt)
                 && 
                LitInt(0) <= LitInt(0)
                 && 0 < n#0
                 && $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                    TBool, 
                    $Heap, 
                    P#0, 
                    _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, LitInt(0))))): bool)
               || 
              ($Is(LitInt(0), TInt)
                 && 
                LitInt(0) <= LitInt(0)
                 && 0 < n#0
                 && $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                    TBool, 
                    $Heap, 
                    P#0, 
                    _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, LitInt(0))))): bool)
               || (exists k#4: int :: 
                LitInt(0) <= k#4
                   && k#4 < n#0
                   && $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                      TBool, 
                      $Heap, 
                      P#0, 
                      _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, k#4)))): bool);
            assume true;
            assume LitInt(0) <= k#3
               && k#3 < n#0
               && $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                  TBool, 
                  $Heap, 
                  P#0, 
                  _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, k#3)))): bool;
            ##s#7 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#7, Tclass._module.Stream(_module._default.NextMinimizer$_T0), $Heap);
            ##P#2 := P#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##P#2, 
              Tclass._System.___hTotalFunc1(_module._default.NextMinimizer$_T0, TBool), 
              $Heap);
            assert {:id "id181"} $Is(k#3, Tclass._System.nat());
            ##n#7 := k#3;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#7, Tclass._System.nat(), $Heap);
            assert {:id "id182"} {:subsumption 0} $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                TBool, 
                $Heap, 
                ##P#2, 
                _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LS($LZ)), ##s#7, ##n#7)))): bool;
            assume $Unbox(Apply1(_module._default.NextMinimizer$_T0, 
                TBool, 
                $Heap, 
                ##P#2, 
                _module.Stream.head(_module.__default.Tail(_module._default.NextMinimizer$_T0, $LS($LZ), ##s#7, ##n#7)))): bool;
            assert {:id "id183"} 0 <= n#0 || ##n#7 == n#0;
            assert {:id "id184"} ##n#7 < n#0;
            assume _module.__default.NextMinimizer#canCall(_module._default.NextMinimizer$_T0, s#0, P#0, k#3);
            assume $let#3$canCall(_module._default.NextMinimizer$_T0, $Heap, n#0, P#0, s#0);
            assume {:id "id185"} _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, P#0, n#0)
               == _module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, P#0, k#3);
            assume _module.__default.NextMinimizer#canCall(_module._default.NextMinimizer$_T0, s#0, P#0, k#3);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.NextMinimizer(_module._default.NextMinimizer$_T0, $LS($LZ), s#0, P#0, n#0), 
              Tclass._System.nat());
            return;
        }

        assume false;
    }
}



procedure {:verboseName "NextLemma (well-formedness)"} CheckWellFormed$$_module.__default.NextLemma(_module._default.NextLemma$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.NextLemma$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.NextLemma$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.NextLemma$_T0, TBool))
         && $IsAlloc(P#0, Tclass._System.___hTotalFunc1(_module._default.NextLemma$_T0, TBool), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NextLemma (well-formedness)"} CheckWellFormed$$_module.__default.NextLemma(_module._default.NextLemma$_T0: Ty, s#0: DatatypeType, P#0: HandleType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##P#0: HandleType;
  var ##s#1: DatatypeType;
  var ##P#1: HandleType;
  var ##s#2: DatatypeType;
  var ##P#2: HandleType;


    // AddMethodImpl: NextLemma, CheckWellFormed$$_module.__default.NextLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(_module._default.NextLemma$_T0), $Heap);
    ##P#0 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#0, 
      Tclass._System.___hTotalFunc1(_module._default.NextLemma$_T0, TBool), 
      $Heap);
    assume _module.__default.AlwaysAnother#canCall(_module._default.NextLemma$_T0, s#0, P#0);
    assume {:id "id186"} _module.__default.AlwaysAnother(_module._default.NextLemma$_T0, $LS($LZ), s#0, P#0);
    assume _module.Stream.Cons_q(s#0);
    assume {:id "id187"} !$Unbox(Apply1(_module._default.NextLemma$_T0, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool;
    havoc $Heap;
    assume old($Heap) == $Heap;
    assume _module.Stream.Cons_q(s#0);
    ##s#1 := _module.Stream.tail(s#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, Tclass._module.Stream(_module._default.NextLemma$_T0), $Heap);
    ##P#1 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#1, 
      Tclass._System.___hTotalFunc1(_module._default.NextLemma$_T0, TBool), 
      $Heap);
    assert {:id "id188"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.NextLemma$_T0, ##s#1, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.NextLemma$_T0, $LS($LZ), ##s#1, ##P#1)
         || (_module.__default.IsAnother#canCall(_module._default.NextLemma$_T0, ##s#1, ##P#1)
           ==> _module.__default.IsAnother(_module._default.NextLemma$_T0, ##s#1, ##P#1)
             || (exists n#0: int :: 
              { _module.__default.Tail(_module._default.NextLemma$_T0, $LS($LZ), ##s#1, n#0) } 
              LitInt(0) <= n#0
                 && 
                LitInt(0) <= n#0
                 && $Unbox(Apply1(_module._default.NextLemma$_T0, 
                    TBool, 
                    $Heap, 
                    ##P#1, 
                    _module.Stream.head(_module.__default.Tail(_module._default.NextLemma$_T0, $LS($LZ), ##s#1, n#0)))): bool));
    assert {:id "id189"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.NextLemma$_T0, ##s#1, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.NextLemma$_T0, $LS($LZ), ##s#1, ##P#1)
         || _module.__default.AlwaysAnother(_module._default.NextLemma$_T0, $LS($LS($LZ)), _module.Stream.tail(##s#1), ##P#1);
    assume _module.__default.AlwaysAnother(_module._default.NextLemma$_T0, $LS($LZ), ##s#1, ##P#1);
    assume _module.__default.Next#canCall(_module._default.NextLemma$_T0, _module.Stream.tail(s#0), P#0);
    ##s#2 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#2, Tclass._module.Stream(_module._default.NextLemma$_T0), $Heap);
    ##P#2 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#2, 
      Tclass._System.___hTotalFunc1(_module._default.NextLemma$_T0, TBool), 
      $Heap);
    assert {:id "id190"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.NextLemma$_T0, ##s#2, ##P#2)
       ==> _module.__default.AlwaysAnother(_module._default.NextLemma$_T0, $LS($LZ), ##s#2, ##P#2)
         || (_module.__default.IsAnother#canCall(_module._default.NextLemma$_T0, ##s#2, ##P#2)
           ==> _module.__default.IsAnother(_module._default.NextLemma$_T0, ##s#2, ##P#2)
             || (exists n#1: int :: 
              { _module.__default.Tail(_module._default.NextLemma$_T0, $LS($LZ), ##s#2, n#1) } 
              LitInt(0) <= n#1
                 && 
                LitInt(0) <= n#1
                 && $Unbox(Apply1(_module._default.NextLemma$_T0, 
                    TBool, 
                    $Heap, 
                    ##P#2, 
                    _module.Stream.head(_module.__default.Tail(_module._default.NextLemma$_T0, $LS($LZ), ##s#2, n#1)))): bool));
    assert {:id "id191"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.NextLemma$_T0, ##s#2, ##P#2)
       ==> _module.__default.AlwaysAnother(_module._default.NextLemma$_T0, $LS($LZ), ##s#2, ##P#2)
         || _module.__default.AlwaysAnother(_module._default.NextLemma$_T0, $LS($LS($LZ)), _module.Stream.tail(##s#2), ##P#2);
    assume _module.__default.AlwaysAnother(_module._default.NextLemma$_T0, $LS($LZ), ##s#2, ##P#2);
    assume _module.__default.Next#canCall(_module._default.NextLemma$_T0, s#0, P#0);
    assume {:id "id192"} _module.__default.Next(_module._default.NextLemma$_T0, _module.Stream.tail(s#0), P#0)
       < _module.__default.Next(_module._default.NextLemma$_T0, s#0, P#0);
}



procedure {:verboseName "NextLemma (call)"} Call$$_module.__default.NextLemma(_module._default.NextLemma$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.NextLemma$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.NextLemma$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.NextLemma$_T0, TBool))
         && $IsAlloc(P#0, Tclass._System.___hTotalFunc1(_module._default.NextLemma$_T0, TBool), $Heap));
  // user-defined preconditions
  requires {:id "id193"} _module.__default.AlwaysAnother#canCall(_module._default.NextLemma$_T0, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.NextLemma$_T0, $LS($LZ), s#0, P#0)
       || (_module.__default.IsAnother#canCall(_module._default.NextLemma$_T0, s#0, P#0)
         ==> _module.__default.IsAnother(_module._default.NextLemma$_T0, s#0, P#0)
           || (exists n#2: int :: 
            { _module.__default.Tail(_module._default.NextLemma$_T0, $LS($LZ), s#0, n#2) } 
            LitInt(0) <= n#2
               && 
              LitInt(0) <= n#2
               && $Unbox(Apply1(_module._default.NextLemma$_T0, 
                  TBool, 
                  $Heap, 
                  P#0, 
                  _module.Stream.head(_module.__default.Tail(_module._default.NextLemma$_T0, $LS($LZ), s#0, n#2)))): bool));
  requires {:id "id194"} _module.__default.AlwaysAnother#canCall(_module._default.NextLemma$_T0, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.NextLemma$_T0, $LS($LZ), s#0, P#0)
       || _module.__default.AlwaysAnother(_module._default.NextLemma$_T0, $LS($LS($LZ)), _module.Stream.tail(s#0), P#0);
  requires {:id "id195"} !$Unbox(Apply1(_module._default.NextLemma$_T0, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Stream.Cons_q(s#0)
     && _module.__default.Next#canCall(_module._default.NextLemma$_T0, _module.Stream.tail(s#0), P#0)
     && _module.__default.Next#canCall(_module._default.NextLemma$_T0, s#0, P#0);
  ensures {:id "id196"} _module.__default.Next(_module._default.NextLemma$_T0, _module.Stream.tail(s#0), P#0)
     < _module.__default.Next(_module._default.NextLemma$_T0, s#0, P#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NextLemma (correctness)"} Impl$$_module.__default.NextLemma(_module._default.NextLemma$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.NextLemma$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.NextLemma$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.NextLemma$_T0, TBool))
         && $IsAlloc(P#0, Tclass._System.___hTotalFunc1(_module._default.NextLemma$_T0, TBool), $Heap))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id197"} _module.__default.AlwaysAnother#canCall(_module._default.NextLemma$_T0, s#0, P#0)
     && 
    _module.__default.AlwaysAnother(_module._default.NextLemma$_T0, $LS($LZ), s#0, P#0)
     && 
    _module.__default.IsAnother(_module._default.NextLemma$_T0, s#0, P#0)
     && _module.__default.AlwaysAnother(_module._default.NextLemma$_T0, $LS($LZ), _module.Stream.tail(s#0), P#0);
  requires {:id "id198"} !$Unbox(Apply1(_module._default.NextLemma$_T0, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Stream.Cons_q(s#0)
     && _module.__default.Next#canCall(_module._default.NextLemma$_T0, _module.Stream.tail(s#0), P#0)
     && _module.__default.Next#canCall(_module._default.NextLemma$_T0, s#0, P#0);
  ensures {:id "id199"} _module.__default.Next(_module._default.NextLemma$_T0, _module.Stream.tail(s#0), P#0)
     < _module.__default.Next(_module._default.NextLemma$_T0, s#0, P#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NextLemma (correctness)"} Impl$$_module.__default.NextLemma(_module._default.NextLemma$_T0: Ty, s#0: DatatypeType, P#0: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var i#0: int;
  var ##s#3: DatatypeType;
  var ##n#0: int;
  var ##s#4: DatatypeType;
  var ##n#1: int;

    // AddMethodImpl: NextLemma, Impl$$_module.__default.NextLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#s0#0: DatatypeType :: 
      { _module.Stream.tail($ih#s0#0) } 
        { _module.Stream.head($ih#s0#0) } 
        { _module.__default.AlwaysAnother(_module._default.NextLemma$_T0, $LS($LZ), $ih#s0#0, P#0) } 
      true);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(117,3)
    // Begin Comprehension WF check
    havoc i#0;
    if (true)
    {
        if (0 < i#0)
        {
            ##s#3 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#3, Tclass._module.Stream(_module._default.NextLemma$_T0), $Heap);
            assert {:id "id200"} $Is(i#0, Tclass._System.nat());
            ##n#0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(_module._default.NextLemma$_T0, s#0, i#0);
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.NextLemma$_T0, $LS($LZ), s#0, i#0));
            assume _module.Stream.Cons_q(s#0);
            ##s#4 := _module.Stream.tail(s#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#4, Tclass._module.Stream(_module._default.NextLemma$_T0), $Heap);
            assert {:id "id201"} $Is(i#0 - 1, Tclass._System.nat());
            ##n#1 := i#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(_module._default.NextLemma$_T0, _module.Stream.tail(s#0), i#0 - 1);
            assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.NextLemma$_T0, $LS($LZ), _module.Stream.tail(s#0), i#0 - 1));
        }
    }

    // End Comprehension WF check
    assume (forall i#1: int :: 
      { _module.__default.Tail(_module._default.NextLemma$_T0, $LS($LZ), s#0, i#1) } 
      0 < i#1
         ==> $IsA#_module.Stream(_module.__default.Tail(_module._default.NextLemma$_T0, $LS($LZ), s#0, i#1))
           && $IsA#_module.Stream(_module.__default.Tail(_module._default.NextLemma$_T0, $LS($LZ), _module.Stream.tail(s#0), i#1 - 1))
           && 
          _module.__default.Tail#canCall(_module._default.NextLemma$_T0, s#0, i#1)
           && 
          _module.Stream.Cons_q(s#0)
           && _module.__default.Tail#canCall(_module._default.NextLemma$_T0, _module.Stream.tail(s#0), i#1 - 1));
    assert {:id "id202"} {:subsumption 0} (forall i#1: int :: 
      { _module.__default.Tail(_module._default.NextLemma$_T0, $LS($LS($LZ)), s#0, i#1) } 
      0 < i#1
         ==> $Eq#_module.Stream(_module._default.NextLemma$_T0, 
          _module._default.NextLemma$_T0, 
          $LS($LS($LZ)), 
          _module.__default.Tail(_module._default.NextLemma$_T0, $LS($LS($LZ)), s#0, i#1), 
          _module.__default.Tail(_module._default.NextLemma$_T0, $LS($LS($LZ)), _module.Stream.tail(s#0), i#1 - 1)));
    assume {:id "id203"} (forall i#1: int :: 
      { _module.__default.Tail(_module._default.NextLemma$_T0, $LS($LZ), s#0, i#1) } 
      0 < i#1
         ==> $Eq#_module.Stream(_module._default.NextLemma$_T0, 
          _module._default.NextLemma$_T0, 
          $LS($LS($LZ)), 
          _module.__default.Tail(_module._default.NextLemma$_T0, $LS($LZ), s#0, i#1), 
          _module.__default.Tail(_module._default.NextLemma$_T0, $LS($LZ), _module.Stream.tail(s#0), i#1 - 1)));
}



// function declaration for _module._default.Filter
function _module.__default.Filter(_module._default.Filter$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    P#0: HandleType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.Filter
axiom 6 <= $FunctionContextHeight
   ==> (forall _module._default.Filter$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    { _module.__default.Filter(_module._default.Filter$_T0, $ly, s#0, P#0) } 
    _module.__default.Filter#canCall(_module._default.Filter$_T0, s#0, P#0)
         || (6 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.Filter$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Filter$_T0, TBool))
           && _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LZ), s#0, P#0))
       ==> $Is(_module.__default.Filter(_module._default.Filter$_T0, $ly, s#0, P#0), 
        Tclass._module.Stream(_module._default.Filter$_T0)));
// alloc consequence axiom for _module.__default.Filter
axiom 6 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.Filter$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    { $IsAlloc(_module.__default.Filter(_module._default.Filter$_T0, $ly, s#0, P#0), 
        Tclass._module.Stream(_module._default.Filter$_T0), 
        $Heap) } 
    (_module.__default.Filter#canCall(_module._default.Filter$_T0, s#0, P#0)
           || (6 < $FunctionContextHeight
             && 
            $Is(s#0, Tclass._module.Stream(_module._default.Filter$_T0))
             && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Filter$_T0), $Heap)
             && 
            $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Filter$_T0, TBool))
             && $IsAlloc(P#0, Tclass._System.___hTotalFunc1(_module._default.Filter$_T0, TBool), $Heap)
             && _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LZ), s#0, P#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Filter(_module._default.Filter$_T0, $ly, s#0, P#0), 
        Tclass._module.Stream(_module._default.Filter$_T0), 
        $Heap));
// definition axiom for _module.__default.Filter (revealed)
axiom {:id "id204"} 6 <= $FunctionContextHeight
   ==> (forall _module._default.Filter$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      s#0: DatatypeType, 
      P#0: HandleType :: 
    { _module.__default.Filter(_module._default.Filter$_T0, $LS($ly), s#0, P#0), $IsGoodHeap($Heap) } 
    _module.__default.Filter#canCall(_module._default.Filter$_T0, s#0, P#0)
         || (6 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.Filter$_T0))
           && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Filter$_T0, TBool))
           && _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LZ), s#0, P#0))
       ==> _module.Stream.Cons_q(s#0)
         && ($Unbox(Apply1(_module._default.Filter$_T0, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool
           ==> _module.Stream.Cons_q(s#0)
             && 
            _module.Stream.Cons_q(s#0)
             && _module.__default.Filter#canCall(_module._default.Filter$_T0, _module.Stream.tail(s#0), P#0))
         && (!$Unbox(Apply1(_module._default.Filter$_T0, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool
           ==> _module.Stream.Cons_q(s#0)
             && _module.__default.Filter#canCall(_module._default.Filter$_T0, _module.Stream.tail(s#0), P#0))
         && _module.__default.Filter(_module._default.Filter$_T0, $LS($ly), s#0, P#0)
           == (if $Unbox(Apply1(_module._default.Filter$_T0, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool
             then #_module.Stream.Cons(_module.Stream.head(s#0), 
              _module.__default.Filter(_module._default.Filter$_T0, $ly, _module.Stream.tail(s#0), P#0))
             else _module.__default.Filter(_module._default.Filter$_T0, $ly, _module.Stream.tail(s#0), P#0)));
}

function _module.__default.Filter#canCall(_module._default.Filter$_T0: Ty, s#0: DatatypeType, P#0: HandleType) : bool;

// layer synonym axiom
axiom (forall _module._default.Filter$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.Filter(_module._default.Filter$_T0, $LS($ly), s#0, P#0) } 
  _module.__default.Filter(_module._default.Filter$_T0, $LS($ly), s#0, P#0)
     == _module.__default.Filter(_module._default.Filter$_T0, $ly, s#0, P#0));

// fuel synonym axiom
axiom (forall _module._default.Filter$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.Filter(_module._default.Filter$_T0, AsFuelBottom($ly), s#0, P#0) } 
  _module.__default.Filter(_module._default.Filter$_T0, $ly, s#0, P#0)
     == _module.__default.Filter(_module._default.Filter$_T0, $LZ, s#0, P#0));

function _module.__default.Filter#requires(Ty, LayerType, DatatypeType, HandleType) : bool;

// #requires axiom for _module.__default.Filter
axiom (forall _module._default.Filter$_T0: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    s#0: DatatypeType, 
    P#0: HandleType :: 
  { _module.__default.Filter#requires(_module._default.Filter$_T0, $ly, s#0, P#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(s#0, Tclass._module.Stream(_module._default.Filter$_T0))
       && $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Filter$_T0, TBool))
     ==> _module.__default.Filter#requires(_module._default.Filter$_T0, $ly, s#0, P#0)
       == _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LZ), s#0, P#0));

procedure {:verboseName "Filter (well-formedness)"} CheckWellformed$$_module.__default.Filter(_module._default.Filter$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Filter$_T0)), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Filter$_T0, TBool)));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Filter (well-formedness)"} CheckWellformed$$_module.__default.Filter(_module._default.Filter$_T0: Ty, s#0: DatatypeType, P#0: HandleType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##P#0: HandleType;
  var ##s#1: DatatypeType;
  var ##P#1: HandleType;
  var ##s#2: DatatypeType;
  var ##P#2: HandleType;
  var s##0: DatatypeType;
  var P##0: HandleType;
  var ##s#3: DatatypeType;
  var ##P#3: HandleType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(_module._default.Filter$_T0), $Heap);
    ##P#0 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#0, Tclass._System.___hTotalFunc1(_module._default.Filter$_T0, TBool), $Heap);
    assume _module.__default.AlwaysAnother#canCall(_module._default.Filter$_T0, s#0, P#0);
    assume {:id "id205"} _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LZ), s#0, P#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    ##s#1 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, Tclass._module.Stream(_module._default.Filter$_T0), $Heap);
    ##P#1 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#1, Tclass._System.___hTotalFunc1(_module._default.Filter$_T0, TBool), $Heap);
    assert {:id "id206"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter$_T0, ##s#1, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LZ), ##s#1, ##P#1)
         || (_module.__default.IsAnother#canCall(_module._default.Filter$_T0, ##s#1, ##P#1)
           ==> _module.__default.IsAnother(_module._default.Filter$_T0, ##s#1, ##P#1)
             || (exists n#0: int :: 
              { _module.__default.Tail(_module._default.Filter$_T0, $LS($LZ), ##s#1, n#0) } 
              LitInt(0) <= n#0
                 && 
                LitInt(0) <= n#0
                 && $Unbox(Apply1(_module._default.Filter$_T0, 
                    TBool, 
                    $Heap, 
                    ##P#1, 
                    _module.Stream.head(_module.__default.Tail(_module._default.Filter$_T0, $LS($LZ), ##s#1, n#0)))): bool));
    assert {:id "id207"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter$_T0, ##s#1, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LZ), ##s#1, ##P#1)
         || _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LS($LZ)), _module.Stream.tail(##s#1), ##P#1);
    assume _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LZ), ##s#1, ##P#1);
    assume _module.__default.Next#canCall(_module._default.Filter$_T0, s#0, P#0);
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Filter(_module._default.Filter$_T0, $LS($LZ), s#0, P#0), 
          Tclass._module.Stream(_module._default.Filter$_T0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume _module.Stream.Cons_q(s#0);
        if ($Unbox(Apply1(_module._default.Filter$_T0, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool)
        {
            assume _module.Stream.Cons_q(s#0);
            assume _module.Stream.Cons_q(s#0);
            ##s#2 := _module.Stream.tail(s#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#2, Tclass._module.Stream(_module._default.Filter$_T0), $Heap);
            ##P#2 := P#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##P#2, Tclass._System.___hTotalFunc1(_module._default.Filter$_T0, TBool), $Heap);
            assert {:id "id208"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter$_T0, ##s#2, ##P#2)
               ==> _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LZ), ##s#2, ##P#2)
                 || (_module.__default.IsAnother#canCall(_module._default.Filter$_T0, ##s#2, ##P#2)
                   ==> _module.__default.IsAnother(_module._default.Filter$_T0, ##s#2, ##P#2)
                     || (exists n#1: int :: 
                      { _module.__default.Tail(_module._default.Filter$_T0, $LS($LZ), ##s#2, n#1) } 
                      LitInt(0) <= n#1
                         && 
                        LitInt(0) <= n#1
                         && $Unbox(Apply1(_module._default.Filter$_T0, 
                            TBool, 
                            $Heap, 
                            ##P#2, 
                            _module.Stream.head(_module.__default.Tail(_module._default.Filter$_T0, $LS($LZ), ##s#2, n#1)))): bool));
            assert {:id "id209"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter$_T0, ##s#2, ##P#2)
               ==> _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LZ), ##s#2, ##P#2)
                 || _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LS($LZ)), _module.Stream.tail(##s#2), ##P#2);
            assume _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LZ), ##s#2, ##P#2);
            assume _module.__default.Filter#canCall(_module._default.Filter$_T0, _module.Stream.tail(s#0), P#0);
            assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter$_T0, $LS($LZ), _module.Stream.tail(s#0), P#0));
            assume {:id "id210"} _module.__default.Filter(_module._default.Filter$_T0, $LS($LZ), s#0, P#0)
               == #_module.Stream.Cons(_module.Stream.head(s#0), 
                _module.__default.Filter(_module._default.Filter$_T0, $LS($LZ), _module.Stream.tail(s#0), P#0));
            assume _module.Stream.Cons_q(s#0)
               && 
              _module.Stream.Cons_q(s#0)
               && _module.__default.Filter#canCall(_module._default.Filter$_T0, _module.Stream.tail(s#0), P#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Filter(_module._default.Filter$_T0, $LS($LZ), s#0, P#0), 
              Tclass._module.Stream(_module._default.Filter$_T0));
            return;
        }
        else
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(127,14)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##0 := s#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            P##0 := P#0;
            call {:id "id211"} Call$$_module.__default.NextLemma(_module._default.Filter$_T0, s##0, P##0);
            // TrCallStmt: After ProcessCallStmt
            assume _module.Stream.Cons_q(s#0);
            ##s#3 := _module.Stream.tail(s#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#3, Tclass._module.Stream(_module._default.Filter$_T0), $Heap);
            ##P#3 := P#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##P#3, Tclass._System.___hTotalFunc1(_module._default.Filter$_T0, TBool), $Heap);
            assert {:id "id212"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter$_T0, ##s#3, ##P#3)
               ==> _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LZ), ##s#3, ##P#3)
                 || (_module.__default.IsAnother#canCall(_module._default.Filter$_T0, ##s#3, ##P#3)
                   ==> _module.__default.IsAnother(_module._default.Filter$_T0, ##s#3, ##P#3)
                     || (exists n#2: int :: 
                      { _module.__default.Tail(_module._default.Filter$_T0, $LS($LZ), ##s#3, n#2) } 
                      LitInt(0) <= n#2
                         && 
                        LitInt(0) <= n#2
                         && $Unbox(Apply1(_module._default.Filter$_T0, 
                            TBool, 
                            $Heap, 
                            ##P#3, 
                            _module.Stream.head(_module.__default.Tail(_module._default.Filter$_T0, $LS($LZ), ##s#3, n#2)))): bool));
            assert {:id "id213"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter$_T0, ##s#3, ##P#3)
               ==> _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LZ), ##s#3, ##P#3)
                 || _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LS($LZ)), _module.Stream.tail(##s#3), ##P#3);
            assume _module.__default.AlwaysAnother(_module._default.Filter$_T0, $LS($LZ), ##s#3, ##P#3);
            assert {:id "id214"} 0 <= LitInt(1) || LitInt(1) == LitInt(1);
            assert {:id "id215"} 0 <= _module.__default.Next(_module._default.Filter$_T0, s#0, P#0)
               || LitInt(1) < LitInt(1)
               || _module.__default.Next(_module._default.Filter$_T0, ##s#3, ##P#3)
                 == _module.__default.Next(_module._default.Filter$_T0, s#0, P#0);
            assert {:id "id216"} LitInt(1) < LitInt(1)
               || (LitInt(1) == LitInt(1)
                 && _module.__default.Next(_module._default.Filter$_T0, ##s#3, ##P#3)
                   < _module.__default.Next(_module._default.Filter$_T0, s#0, P#0));
            assume _module.__default.Filter#canCall(_module._default.Filter$_T0, _module.Stream.tail(s#0), P#0);
            assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter$_T0, $LS($LZ), _module.Stream.tail(s#0), P#0));
            assume {:id "id217"} _module.__default.Filter(_module._default.Filter$_T0, $LS($LZ), s#0, P#0)
               == _module.__default.Filter(_module._default.Filter$_T0, $LS($LZ), _module.Stream.tail(s#0), P#0);
            assume _module.Stream.Cons_q(s#0)
               && _module.__default.Filter#canCall(_module._default.Filter$_T0, _module.Stream.tail(s#0), P#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Filter(_module._default.Filter$_T0, $LS($LZ), s#0, P#0), 
              Tclass._module.Stream(_module._default.Filter$_T0));
            return;
        }

        assume false;
    }
}



procedure {:verboseName "Filter_AlwaysAnother (well-formedness)"} CheckWellFormed$$_module.__default.Filter__AlwaysAnother(_module._default.Filter_AlwaysAnother$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Filter_AlwaysAnother$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Filter_AlwaysAnother$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_AlwaysAnother$_T0, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_AlwaysAnother$_T0, TBool), 
          $Heap));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Filter_AlwaysAnother (well-formedness)"} CheckWellFormed$$_module.__default.Filter__AlwaysAnother(_module._default.Filter_AlwaysAnother$_T0: Ty, 
    s#0: DatatypeType, 
    P#0: HandleType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##P#0: HandleType;
  var ##s#1: DatatypeType;
  var ##P#1: HandleType;
  var ##s#2: DatatypeType;
  var ##s#3: DatatypeType;
  var ##P#2: HandleType;
  var ##P#3: HandleType;


    // AddMethodImpl: Filter_AlwaysAnother, CheckWellFormed$$_module.__default.Filter__AlwaysAnother
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(_module._default.Filter_AlwaysAnother$_T0), $Heap);
    ##P#0 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#0, 
      Tclass._System.___hTotalFunc1(_module._default.Filter_AlwaysAnother$_T0, TBool), 
      $Heap);
    assume _module.__default.AlwaysAnother#canCall(_module._default.Filter_AlwaysAnother$_T0, s#0, P#0);
    assume {:id "id218"} _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), s#0, P#0);
    ##s#1 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, Tclass._module.Stream(_module._default.Filter_AlwaysAnother$_T0), $Heap);
    ##P#1 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#1, 
      Tclass._System.___hTotalFunc1(_module._default.Filter_AlwaysAnother$_T0, TBool), 
      $Heap);
    assert {:id "id219"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_AlwaysAnother$_T0, ##s#1, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), ##s#1, ##P#1)
         || (_module.__default.IsAnother#canCall(_module._default.Filter_AlwaysAnother$_T0, ##s#1, ##P#1)
           ==> _module.__default.IsAnother(_module._default.Filter_AlwaysAnother$_T0, ##s#1, ##P#1)
             || (exists n#0: int :: 
              { _module.__default.Tail(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), ##s#1, n#0) } 
              LitInt(0) <= n#0
                 && 
                LitInt(0) <= n#0
                 && $Unbox(Apply1(_module._default.Filter_AlwaysAnother$_T0, 
                    TBool, 
                    $Heap, 
                    ##P#1, 
                    _module.Stream.head(_module.__default.Tail(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), ##s#1, n#0)))): bool));
    assert {:id "id220"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_AlwaysAnother$_T0, ##s#1, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), ##s#1, ##P#1)
         || _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother$_T0, 
          $LS($LS($LZ)), 
          _module.Stream.tail(##s#1), 
          ##P#1);
    assume _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), ##s#1, ##P#1);
    assume _module.__default.Next#canCall(_module._default.Filter_AlwaysAnother$_T0, s#0, P#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##s#3 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#3, Tclass._module.Stream(_module._default.Filter_AlwaysAnother$_T0), $Heap);
    ##P#2 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#2, 
      Tclass._System.___hTotalFunc1(_module._default.Filter_AlwaysAnother$_T0, TBool), 
      $Heap);
    assert {:id "id221"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_AlwaysAnother$_T0, ##s#3, ##P#2)
       ==> _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), ##s#3, ##P#2)
         || (_module.__default.IsAnother#canCall(_module._default.Filter_AlwaysAnother$_T0, ##s#3, ##P#2)
           ==> _module.__default.IsAnother(_module._default.Filter_AlwaysAnother$_T0, ##s#3, ##P#2)
             || (exists n#1: int :: 
              { _module.__default.Tail(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), ##s#3, n#1) } 
              LitInt(0) <= n#1
                 && 
                LitInt(0) <= n#1
                 && $Unbox(Apply1(_module._default.Filter_AlwaysAnother$_T0, 
                    TBool, 
                    $Heap, 
                    ##P#2, 
                    _module.Stream.head(_module.__default.Tail(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), ##s#3, n#1)))): bool));
    assert {:id "id222"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_AlwaysAnother$_T0, ##s#3, ##P#2)
       ==> _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), ##s#3, ##P#2)
         || _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother$_T0, 
          $LS($LS($LZ)), 
          _module.Stream.tail(##s#3), 
          ##P#2);
    assume _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), ##s#3, ##P#2);
    assume _module.__default.Filter#canCall(_module._default.Filter_AlwaysAnother$_T0, s#0, P#0);
    assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), s#0, P#0));
    ##s#2 := _module.__default.Filter(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), s#0, P#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#2, Tclass._module.Stream(_module._default.Filter_AlwaysAnother$_T0), $Heap);
    ##P#3 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#3, 
      Tclass._System.___hTotalFunc1(_module._default.Filter_AlwaysAnother$_T0, TBool), 
      $Heap);
    assume _module.__default.AllP#canCall(_module._default.Filter_AlwaysAnother$_T0, 
      _module.__default.Filter(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), s#0, P#0), 
      P#0);
    assume {:id "id223"} _module.__default.AllP(_module._default.Filter_AlwaysAnother$_T0, 
      $LS($LZ), 
      _module.__default.Filter(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), s#0, P#0), 
      P#0);
}



procedure {:verboseName "Filter_AlwaysAnother (call)"} Call$$_module.__default.Filter__AlwaysAnother(_module._default.Filter_AlwaysAnother$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Filter_AlwaysAnother$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Filter_AlwaysAnother$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_AlwaysAnother$_T0, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_AlwaysAnother$_T0, TBool), 
          $Heap));
  // user-defined preconditions
  requires {:id "id224"} _module.__default.AlwaysAnother#canCall(_module._default.Filter_AlwaysAnother$_T0, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), s#0, P#0)
       || (_module.__default.IsAnother#canCall(_module._default.Filter_AlwaysAnother$_T0, s#0, P#0)
         ==> _module.__default.IsAnother(_module._default.Filter_AlwaysAnother$_T0, s#0, P#0)
           || (exists n#2: int :: 
            { _module.__default.Tail(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), s#0, n#2) } 
            LitInt(0) <= n#2
               && 
              LitInt(0) <= n#2
               && $Unbox(Apply1(_module._default.Filter_AlwaysAnother$_T0, 
                  TBool, 
                  $Heap, 
                  P#0, 
                  _module.Stream.head(_module.__default.Tail(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), s#0, n#2)))): bool));
  requires {:id "id225"} _module.__default.AlwaysAnother#canCall(_module._default.Filter_AlwaysAnother$_T0, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), s#0, P#0)
       || _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#0), 
        P#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Filter#canCall(_module._default.Filter_AlwaysAnother$_T0, s#0, P#0)
     && _module.__default.AllP#canCall(_module._default.Filter_AlwaysAnother$_T0, 
      _module.__default.Filter(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), s#0, P#0), 
      P#0);
  free ensures {:id "id226"} _module.__default.AllP#canCall(_module._default.Filter_AlwaysAnother$_T0, 
      _module.__default.Filter(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), s#0, P#0), 
      P#0)
     && 
    _module.__default.AllP(_module._default.Filter_AlwaysAnother$_T0, 
      $LS($LZ), 
      _module.__default.Filter(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), s#0, P#0), 
      P#0)
     && 
    $Unbox(Apply1(_module._default.Filter_AlwaysAnother$_T0, 
        TBool, 
        $Heap, 
        P#0, 
        _module.Stream.head(_module.__default.Filter(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), s#0, P#0)))): bool
     && _module.__default.AllP(_module._default.Filter_AlwaysAnother$_T0, 
      $LS($LZ), 
      _module.Stream.tail(_module.__default.Filter(_module._default.Filter_AlwaysAnother$_T0, $LS($LZ), s#0, P#0)), 
      P#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Filter_AlwaysAnother# (co-call)"} CoCall$$_module.__default.Filter__AlwaysAnother_h(_module._default.Filter_AlwaysAnother#$_T0: Ty, 
    _k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Filter_AlwaysAnother#$_T0))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.Filter_AlwaysAnother#$_T0), $Heap)
         && $IsA#_module.Stream(s#1), 
    P#1: HandleType
       where $Is(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_AlwaysAnother#$_T0, TBool))
         && $IsAlloc(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_AlwaysAnother#$_T0, TBool), 
          $Heap));
  // user-defined preconditions
  requires {:id "id227"} _module.__default.AlwaysAnother#canCall(_module._default.Filter_AlwaysAnother#$_T0, s#1, P#1)
     ==> _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1)
       || (_module.__default.IsAnother#canCall(_module._default.Filter_AlwaysAnother#$_T0, s#1, P#1)
         ==> _module.__default.IsAnother(_module._default.Filter_AlwaysAnother#$_T0, s#1, P#1)
           || (exists n#3: int :: 
            { _module.__default.Tail(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, n#3) } 
            LitInt(0) <= n#3
               && 
              LitInt(0) <= n#3
               && $Unbox(Apply1(_module._default.Filter_AlwaysAnother#$_T0, 
                  TBool, 
                  $Heap, 
                  P#1, 
                  _module.Stream.head(_module.__default.Tail(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, n#3)))): bool));
  requires {:id "id228"} _module.__default.AlwaysAnother#canCall(_module._default.Filter_AlwaysAnother#$_T0, s#1, P#1)
     ==> _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1)
       || _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother#$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#1), 
        P#1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Filter#canCall(_module._default.Filter_AlwaysAnother#$_T0, s#1, P#1)
     && _module.__default.AllP_h#canCall(_module._default.Filter_AlwaysAnother#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1), 
      P#1);
  free ensures {:id "id229"} _module.__default.AllP_h#canCall(_module._default.Filter_AlwaysAnother#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1), 
      P#1)
     && 
    _module.__default.AllP_h(_module._default.Filter_AlwaysAnother#$_T0, 
      $LS($LZ), 
      _k#0, 
      _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1), 
      P#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> $Unbox(Apply1(_module._default.Filter_AlwaysAnother#$_T0, 
            TBool, 
            $Heap, 
            P#1, 
            _module.Stream.head(_module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1)))): bool
         && _module.__default.AllP_h(_module._default.Filter_AlwaysAnother#$_T0, 
          $LS($LZ), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          _module.Stream.tail(_module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1)), 
          P#1))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.AllP_h(_module._default.Filter_AlwaysAnother#$_T0, 
            $LS($LZ), 
            _k'#0, 
            _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1), 
            P#1) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.AllP_h(_module._default.Filter_AlwaysAnother#$_T0, 
            $LS($LZ), 
            _k'#0, 
            _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1), 
            P#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Filter_AlwaysAnother# (correctness)"} Impl$$_module.__default.Filter__AlwaysAnother_h(_module._default.Filter_AlwaysAnother#$_T0: Ty, 
    _k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Filter_AlwaysAnother#$_T0))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.Filter_AlwaysAnother#$_T0), $Heap)
         && $IsA#_module.Stream(s#1), 
    P#1: HandleType
       where $Is(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_AlwaysAnother#$_T0, TBool))
         && $IsAlloc(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_AlwaysAnother#$_T0, TBool), 
          $Heap))
   returns ($_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id230"} _module.__default.AlwaysAnother#canCall(_module._default.Filter_AlwaysAnother#$_T0, s#1, P#1)
     && 
    _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1)
     && 
    _module.__default.IsAnother(_module._default.Filter_AlwaysAnother#$_T0, s#1, P#1)
     && _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother#$_T0, 
      $LS($LZ), 
      _module.Stream.tail(s#1), 
      P#1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Filter#canCall(_module._default.Filter_AlwaysAnother#$_T0, s#1, P#1)
     && _module.__default.AllP_h#canCall(_module._default.Filter_AlwaysAnother#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1), 
      P#1);
  ensures {:id "id231"} _module.__default.AllP_h#canCall(_module._default.Filter_AlwaysAnother#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1), 
      P#1)
     ==> _module.__default.AllP_h(_module._default.Filter_AlwaysAnother#$_T0, 
        $LS($LZ), 
        _k#0, 
        _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1), 
        P#1)
       || (0 < ORD#Offset(_k#0)
         ==> $Unbox(Apply1(_module._default.Filter_AlwaysAnother#$_T0, 
            TBool, 
            $Heap, 
            P#1, 
            _module.Stream.head(_module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LS($LZ)), s#1, P#1)))): bool);
  ensures {:id "id232"} _module.__default.AllP_h#canCall(_module._default.Filter_AlwaysAnother#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1), 
      P#1)
     ==> _module.__default.AllP_h(_module._default.Filter_AlwaysAnother#$_T0, 
        $LS($LZ), 
        _k#0, 
        _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1), 
        P#1)
       || (0 < ORD#Offset(_k#0)
         ==> _module.__default.AllP_h(_module._default.Filter_AlwaysAnother#$_T0, 
          $LS($LS($LZ)), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          _module.Stream.tail(_module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LS($LZ)), s#1, P#1)), 
          P#1));
  ensures {:id "id233"} _module.__default.AllP_h#canCall(_module._default.Filter_AlwaysAnother#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1), 
      P#1)
     ==> _module.__default.AllP_h(_module._default.Filter_AlwaysAnother#$_T0, 
        $LS($LZ), 
        _k#0, 
        _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#1, P#1), 
        P#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.AllP_h(_module._default.Filter_AlwaysAnother#$_T0, 
              $LS($LS($LZ)), 
              _k'#1, 
              _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LS($LZ)), s#1, P#1), 
              P#1) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.AllP_h(_module._default.Filter_AlwaysAnother#$_T0, 
              $LS($LS($LZ)), 
              _k'#1, 
              _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LS($LZ)), s#1, P#1), 
              P#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Filter_AlwaysAnother# (correctness)"} Impl$$_module.__default.Filter__AlwaysAnother_h(_module._default.Filter_AlwaysAnother#$_T0: Ty, 
    _k#0: Box, 
    s#1: DatatypeType, 
    P#1: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _k##0: Box;
  var s##0: DatatypeType;
  var P##0: HandleType;
  var s##1: DatatypeType;
  var P##1: HandleType;
  var _k##1: Box;
  var s##2: DatatypeType;
  var P##2: HandleType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Filter_AlwaysAnother#, Impl$$_module.__default.Filter__AlwaysAnother_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#s0#0: DatatypeType :: 
      { _module.__default.AllP_h(_module._default.Filter_AlwaysAnother#$_T0, 
          $LS($LZ), 
          $ih#_k0#0, 
          _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), $ih#s0#0, P#1), 
          P#1) } 
      $Is($ih#s0#0, Tclass._module.Stream(_module._default.Filter_AlwaysAnother#$_T0))
           && _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), $ih#s0#0, P#1)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0
               && 
              0
                 <= _module.__default.Next(_module._default.Filter_AlwaysAnother#$_T0, $ih#s0#0, P#1)
               && _module.__default.Next(_module._default.Filter_AlwaysAnother#$_T0, $ih#s0#0, P#1)
                 < _module.__default.Next(_module._default.Filter_AlwaysAnother#$_T0, s#1, P#1)))
         ==> _module.__default.AllP_h(_module._default.Filter_AlwaysAnother#$_T0, 
          $LS($LZ), 
          $ih#_k0#0, 
          _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), $ih#s0#0, P#1), 
          P#1));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(135,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(136,3)
        assume _module.Stream.Cons_q(s#1);
        assume _module.Stream.Cons_q(s#1);
        if ($Unbox(Apply1(_module._default.Filter_AlwaysAnother#$_T0, 
            TBool, 
            $Heap, 
            P#1, 
            _module.Stream.head(s#1))): bool)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(137,25)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id234"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id235"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume _module.Stream.Cons_q(s#1);
            assume _module.Stream.Cons_q(s#1);
            // ProcessCallStmt: CheckSubrange
            s##0 := _module.Stream.tail(s#1);
            assume true;
            // ProcessCallStmt: CheckSubrange
            P##0 := P#1;
            assert {:id "id236"} 0
                 <= _module.__default.Next(_module._default.Filter_AlwaysAnother#$_T0, s#1, P#1)
               || ORD#Less(_k##0, _k#0)
               || _module.__default.Next(_module._default.Filter_AlwaysAnother#$_T0, s##0, P##0)
                 == _module.__default.Next(_module._default.Filter_AlwaysAnother#$_T0, s#1, P#1);
            assert {:id "id237"} ORD#Less(_k##0, _k#0)
               || (_k##0 == _k#0
                 && _module.__default.Next(_module._default.Filter_AlwaysAnother#$_T0, s##0, P##0)
                   < _module.__default.Next(_module._default.Filter_AlwaysAnother#$_T0, s#1, P#1));
            call {:id "id238"} CoCall$$_module.__default.Filter__AlwaysAnother_h(_module._default.Filter_AlwaysAnother#$_T0, _k##0, s##0, P##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(139,14)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##1 := s#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            P##1 := P#1;
            call {:id "id239"} Call$$_module.__default.NextLemma(_module._default.Filter_AlwaysAnother#$_T0, s##1, P##1);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(140,30)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##1 := _k#0;
            assume _module.Stream.Cons_q(s#1);
            assume _module.Stream.Cons_q(s#1);
            // ProcessCallStmt: CheckSubrange
            s##2 := _module.Stream.tail(s#1);
            assume true;
            // ProcessCallStmt: CheckSubrange
            P##2 := P#1;
            assert {:id "id240"} 0
                 <= _module.__default.Next(_module._default.Filter_AlwaysAnother#$_T0, s#1, P#1)
               || ORD#Less(_k##1, _k#0)
               || _module.__default.Next(_module._default.Filter_AlwaysAnother#$_T0, s##2, P##2)
                 == _module.__default.Next(_module._default.Filter_AlwaysAnother#$_T0, s#1, P#1);
            assert {:id "id241"} ORD#Less(_k##1, _k#0)
               || (_k##1 == _k#0
                 && _module.__default.Next(_module._default.Filter_AlwaysAnother#$_T0, s##2, P##2)
                   < _module.__default.Next(_module._default.Filter_AlwaysAnother#$_T0, s#1, P#1));
            call {:id "id242"} CoCall$$_module.__default.Filter__AlwaysAnother_h(_module._default.Filter_AlwaysAnother#$_T0, _k##1, s##2, P##2);
            // TrCallStmt: After ProcessCallStmt
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(135,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, s#2: DatatypeType, P#2: HandleType :: 
          { _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#2, P#2), ORD#Less(_k'#2, _k#0) } 
            { _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#2, P#2), ORD#Less(_k'#2, _k#0) } 
          $Is(s#2, Tclass._module.Stream(_module._default.Filter_AlwaysAnother#$_T0))
               && $Is(P#2, 
                Tclass._System.___hTotalFunc1(_module._default.Filter_AlwaysAnother#$_T0, TBool))
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.AlwaysAnother(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#2, P#2)
             ==> _module.__default.AllP_h(_module._default.Filter_AlwaysAnother#$_T0, 
              $LS($LZ), 
              _k'#2, 
              _module.__default.Filter(_module._default.Filter_AlwaysAnother#$_T0, $LS($LZ), s#2, P#2), 
              P#2));
    }
}



procedure {:verboseName "Filter_IsSubStream (well-formedness)"} CheckWellFormed$$_module.__default.Filter__IsSubStream(_module._default.Filter_IsSubStream$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Filter_IsSubStream$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Filter_IsSubStream$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream$_T0, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream$_T0, TBool), 
          $Heap));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Filter_IsSubStream (well-formedness)"} CheckWellFormed$$_module.__default.Filter__IsSubStream(_module._default.Filter_IsSubStream$_T0: Ty, s#0: DatatypeType, P#0: HandleType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##P#0: HandleType;
  var ##s#1: DatatypeType;
  var ##P#1: HandleType;
  var ##s#2: DatatypeType;
  var ##s#3: DatatypeType;
  var ##P#2: HandleType;
  var ##u#0: DatatypeType;


    // AddMethodImpl: Filter_IsSubStream, CheckWellFormed$$_module.__default.Filter__IsSubStream
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(_module._default.Filter_IsSubStream$_T0), $Heap);
    ##P#0 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#0, 
      Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream$_T0, TBool), 
      $Heap);
    assume _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream$_T0, s#0, P#0);
    assume {:id "id243"} _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream$_T0, $LS($LZ), s#0, P#0);
    ##s#1 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, Tclass._module.Stream(_module._default.Filter_IsSubStream$_T0), $Heap);
    ##P#1 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#1, 
      Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream$_T0, TBool), 
      $Heap);
    assert {:id "id244"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream$_T0, ##s#1, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream$_T0, $LS($LZ), ##s#1, ##P#1)
         || (_module.__default.IsAnother#canCall(_module._default.Filter_IsSubStream$_T0, ##s#1, ##P#1)
           ==> _module.__default.IsAnother(_module._default.Filter_IsSubStream$_T0, ##s#1, ##P#1)
             || (exists n#0: int :: 
              { _module.__default.Tail(_module._default.Filter_IsSubStream$_T0, $LS($LZ), ##s#1, n#0) } 
              LitInt(0) <= n#0
                 && 
                LitInt(0) <= n#0
                 && $Unbox(Apply1(_module._default.Filter_IsSubStream$_T0, 
                    TBool, 
                    $Heap, 
                    ##P#1, 
                    _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream$_T0, $LS($LZ), ##s#1, n#0)))): bool));
    assert {:id "id245"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream$_T0, ##s#1, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream$_T0, $LS($LZ), ##s#1, ##P#1)
         || _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream$_T0, 
          $LS($LS($LZ)), 
          _module.Stream.tail(##s#1), 
          ##P#1);
    assume _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream$_T0, $LS($LZ), ##s#1, ##P#1);
    assume _module.__default.Next#canCall(_module._default.Filter_IsSubStream$_T0, s#0, P#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##s#3 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#3, Tclass._module.Stream(_module._default.Filter_IsSubStream$_T0), $Heap);
    ##P#2 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#2, 
      Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream$_T0, TBool), 
      $Heap);
    assert {:id "id246"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream$_T0, ##s#3, ##P#2)
       ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream$_T0, $LS($LZ), ##s#3, ##P#2)
         || (_module.__default.IsAnother#canCall(_module._default.Filter_IsSubStream$_T0, ##s#3, ##P#2)
           ==> _module.__default.IsAnother(_module._default.Filter_IsSubStream$_T0, ##s#3, ##P#2)
             || (exists n#1: int :: 
              { _module.__default.Tail(_module._default.Filter_IsSubStream$_T0, $LS($LZ), ##s#3, n#1) } 
              LitInt(0) <= n#1
                 && 
                LitInt(0) <= n#1
                 && $Unbox(Apply1(_module._default.Filter_IsSubStream$_T0, 
                    TBool, 
                    $Heap, 
                    ##P#2, 
                    _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream$_T0, $LS($LZ), ##s#3, n#1)))): bool));
    assert {:id "id247"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream$_T0, ##s#3, ##P#2)
       ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream$_T0, $LS($LZ), ##s#3, ##P#2)
         || _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream$_T0, 
          $LS($LS($LZ)), 
          _module.Stream.tail(##s#3), 
          ##P#2);
    assume _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream$_T0, $LS($LZ), ##s#3, ##P#2);
    assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream$_T0, s#0, P#0);
    assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream$_T0, $LS($LZ), s#0, P#0));
    ##s#2 := _module.__default.Filter(_module._default.Filter_IsSubStream$_T0, $LS($LZ), s#0, P#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#2, Tclass._module.Stream(_module._default.Filter_IsSubStream$_T0), $Heap);
    ##u#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##u#0, Tclass._module.Stream(_module._default.Filter_IsSubStream$_T0), $Heap);
    assume _module.__default.IsSubStream#canCall(_module._default.Filter_IsSubStream$_T0, 
      _module.__default.Filter(_module._default.Filter_IsSubStream$_T0, $LS($LZ), s#0, P#0), 
      s#0);
    assume {:id "id248"} _module.__default.IsSubStream(_module._default.Filter_IsSubStream$_T0, 
      $LS($LZ), 
      _module.__default.Filter(_module._default.Filter_IsSubStream$_T0, $LS($LZ), s#0, P#0), 
      s#0);
}



procedure {:verboseName "Filter_IsSubStream (call)"} Call$$_module.__default.Filter__IsSubStream(_module._default.Filter_IsSubStream$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Filter_IsSubStream$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Filter_IsSubStream$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream$_T0, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream$_T0, TBool), 
          $Heap));
  // user-defined preconditions
  requires {:id "id249"} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream$_T0, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream$_T0, $LS($LZ), s#0, P#0)
       || (_module.__default.IsAnother#canCall(_module._default.Filter_IsSubStream$_T0, s#0, P#0)
         ==> _module.__default.IsAnother(_module._default.Filter_IsSubStream$_T0, s#0, P#0)
           || (exists n#2: int :: 
            { _module.__default.Tail(_module._default.Filter_IsSubStream$_T0, $LS($LZ), s#0, n#2) } 
            LitInt(0) <= n#2
               && 
              LitInt(0) <= n#2
               && $Unbox(Apply1(_module._default.Filter_IsSubStream$_T0, 
                  TBool, 
                  $Heap, 
                  P#0, 
                  _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream$_T0, $LS($LZ), s#0, n#2)))): bool));
  requires {:id "id250"} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream$_T0, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream$_T0, $LS($LZ), s#0, P#0)
       || _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#0), 
        P#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Filter#canCall(_module._default.Filter_IsSubStream$_T0, s#0, P#0)
     && _module.__default.IsSubStream#canCall(_module._default.Filter_IsSubStream$_T0, 
      _module.__default.Filter(_module._default.Filter_IsSubStream$_T0, $LS($LZ), s#0, P#0), 
      s#0);
  free ensures {:id "id251"} _module.__default.IsSubStream#canCall(_module._default.Filter_IsSubStream$_T0, 
      _module.__default.Filter(_module._default.Filter_IsSubStream$_T0, $LS($LZ), s#0, P#0), 
      s#0)
     && 
    _module.__default.IsSubStream(_module._default.Filter_IsSubStream$_T0, 
      $LS($LZ), 
      _module.__default.Filter(_module._default.Filter_IsSubStream$_T0, $LS($LZ), s#0, P#0), 
      s#0)
     && 
    _module.__default.In(_module._default.Filter_IsSubStream$_T0, 
      _module.Stream.head(_module.__default.Filter(_module._default.Filter_IsSubStream$_T0, $LS($LZ), s#0, P#0)), 
      s#0)
     && _module.__default.IsSubStream(_module._default.Filter_IsSubStream$_T0, 
      $LS($LZ), 
      _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream$_T0, $LS($LZ), s#0, P#0)), 
      s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Filter_IsSubStream# (co-call)"} CoCall$$_module.__default.Filter__IsSubStream_h(_module._default.Filter_IsSubStream#$_T0: Ty, 
    _k#0: int where LitInt(0) <= _k#0, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap)
         && $IsA#_module.Stream(s#1), 
    P#1: HandleType
       where $Is(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream#$_T0, TBool))
         && $IsAlloc(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream#$_T0, TBool), 
          $Heap));
  // user-defined preconditions
  requires {:id "id252"} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1)
     ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)
       || (_module.__default.IsAnother#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1)
         ==> _module.__default.IsAnother(_module._default.Filter_IsSubStream#$_T0, s#1, P#1)
           || (exists n#4: int :: 
            { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, n#4) } 
            LitInt(0) <= n#4
               && 
              LitInt(0) <= n#4
               && $Unbox(Apply1(_module._default.Filter_IsSubStream#$_T0, 
                  TBool, 
                  $Heap, 
                  P#1, 
                  _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, n#4)))): bool));
  requires {:id "id253"} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1)
     ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)
       || _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#1), 
        P#1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1)
     && _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1), 
      s#1);
  free ensures {:id "id254"} _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1), 
      s#1)
     && 
    _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
      $LS($LZ), 
      _k#0, 
      _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1), 
      s#1)
     && (0 < _k#0
       ==> _module.__default.In(_module._default.Filter_IsSubStream#$_T0, 
          _module.Stream.head(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
          s#1)
         && _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
          $LS($LZ), 
          _k#0 - 1, 
          _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
          s#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Filter_IsSubStream# (correctness)"} Impl$$_module.__default.Filter__IsSubStream_h(_module._default.Filter_IsSubStream#$_T0: Ty, 
    _k#0: int where LitInt(0) <= _k#0, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap)
         && $IsA#_module.Stream(s#1), 
    P#1: HandleType
       where $Is(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream#$_T0, TBool))
         && $IsAlloc(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream#$_T0, TBool), 
          $Heap))
   returns ($_reverifyPost: bool);
  free requires 8 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id255"} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1)
     && 
    _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)
     && 
    _module.__default.IsAnother(_module._default.Filter_IsSubStream#$_T0, s#1, P#1)
     && _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, 
      $LS($LZ), 
      _module.Stream.tail(s#1), 
      P#1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1)
     && _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1), 
      s#1);
  ensures {:id "id256"} _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1), 
      s#1)
     ==> _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
        $LS($LZ), 
        _k#0, 
        _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1), 
        s#1)
       || (0 < _k#0
         ==> 
        _module.__default.In#canCall(_module._default.Filter_IsSubStream#$_T0, 
          _module.Stream.head(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
          s#1)
         ==> _module.__default.In(_module._default.Filter_IsSubStream#$_T0, 
            _module.Stream.head(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
            s#1)
           || (exists n#7: int :: 
            { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, n#7) } 
            LitInt(0) <= n#7
               && 
              LitInt(0) <= n#7
               && _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, n#7))
                 == _module.Stream.head(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1))));
  ensures {:id "id257"} _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1), 
      s#1)
     ==> _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
        $LS($LZ), 
        _k#0, 
        _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1), 
        s#1)
       || (0 < _k#0
         ==> _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
          $LS($LS($LZ)), 
          _k#0 - 1, 
          _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LS($LZ)), s#1, P#1)), 
          s#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Filter_IsSubStream# (correctness)"} Impl$$_module.__default.Filter__IsSubStream_h(_module._default.Filter_IsSubStream#$_T0: Ty, 
    _k#0: int, 
    s#1: DatatypeType, 
    P#1: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##_k#0: int;
  var ##s#4: DatatypeType;
  var ##s#5: DatatypeType;
  var ##P#3: HandleType;
  var ##u#1: DatatypeType;
  var s##0: DatatypeType;
  var ##s#6: DatatypeType;
  var ##P#4: HandleType;
  var u##0: DatatypeType;
  var k##0: int;
  var ##_k#1: int;
  var ##s#7: DatatypeType;
  var ##s#8: DatatypeType;
  var ##P#5: HandleType;
  var ##u#2: DatatypeType;
  var ##_k#2: int;
  var ##s#9: DatatypeType;
  var ##s#10: DatatypeType;
  var ##P#6: HandleType;
  var ##u#3: DatatypeType;
  var ##_k#3: int;
  var ##s#11: DatatypeType;
  var ##s#12: DatatypeType;
  var ##P#7: HandleType;
  var ##u#4: DatatypeType;
  var _k##0: int;
  var s##1: DatatypeType;
  var P##0: HandleType;
  var ##_k#4: int;
  var ##s#13: DatatypeType;
  var ##s#14: DatatypeType;
  var ##P#8: HandleType;
  var ##u#5: DatatypeType;
  var ##x#0: Box;
  var ##s#15: DatatypeType;
  var ##s#16: DatatypeType;
  var ##n#0: int;
  var n#15: int;
  var ##s#17: DatatypeType;
  var ##n#1: int;
  var ##x#1: Box;
  var ##s#18: DatatypeType;
  var ##P#9: HandleType;
  var ##s#19: DatatypeType;
  var ##s#20: DatatypeType;
  var ##P#10: HandleType;
  var ##s#21: DatatypeType;
  var ##P#11: HandleType;
  var ##x#2: Box;
  var ##s#22: DatatypeType;
  var s##2: DatatypeType;
  var P##1: HandleType;
  var s##3: DatatypeType;
  var ##s#23: DatatypeType;
  var ##P#12: HandleType;
  var u##1: DatatypeType;
  var k##1: int;

    // AddMethodImpl: Filter_IsSubStream#, Impl$$_module.__default.Filter__IsSubStream_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: int, $ih#s0#0: DatatypeType :: 
      { _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
          $LS($LZ), 
          $ih#_k0#0, 
          _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), $ih#s0#0, P#1), 
          $ih#s0#0) } 
      LitInt(0) <= $ih#_k0#0
           && $Is($ih#s0#0, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0))
           && _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), $ih#s0#0, P#1)
           && ((0 <= $ih#_k0#0 && $ih#_k0#0 < _k#0)
             || ($ih#_k0#0 == _k#0
               && 
              0
                 <= _module.__default.Next(_module._default.Filter_IsSubStream#$_T0, $ih#s0#0, P#1)
               && _module.__default.Next(_module._default.Filter_IsSubStream#$_T0, $ih#s0#0, P#1)
                 < _module.__default.Next(_module._default.Filter_IsSubStream#$_T0, s#1, P#1)))
         ==> _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
          $LS($LZ), 
          $ih#_k0#0, 
          _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), $ih#s0#0, P#1), 
          $ih#s0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(147,1)
    assume true;
    if (0 < _k#0)
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(148,3)
        assume _module.Stream.Cons_q(s#1);
        assume _module.Stream.Cons_q(s#1);
        if ($Unbox(Apply1(_module._default.Filter_IsSubStream#$_T0, 
            TBool, 
            $Heap, 
            P#1, 
            _module.Stream.head(s#1))): bool)
        {
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(150,5)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(150,5)
                assume true;
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(150,5)
                assume true;
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(150,5)
                push;
                push;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(152,29)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id278"} $Is(_k#0 - 1, Tclass._System.nat());
                _k##0 := _k#0 - 1;
                assume _module.Stream.Cons_q(s#1);
                assume _module.Stream.Cons_q(s#1);
                // ProcessCallStmt: CheckSubrange
                s##1 := _module.Stream.tail(s#1);
                assume true;
                // ProcessCallStmt: CheckSubrange
                P##0 := P#1;
                call {:id "id279"} CoCall$$_module.__default.Filter__IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, _k##0, s##1, P##0);
                // TrCallStmt: After ProcessCallStmt
                pop;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(150,5)
                assert {:id "id280"} $Is(_k#0 - 1, Tclass._System.nat());
                ##_k#4 := _k#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#4, Tclass._System.nat(), $Heap);
                assume _module.Stream.Cons_q(s#1);
                ##s#14 := _module.Stream.tail(s#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#14, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                ##P#8 := P#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##P#8, 
                  Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream#$_T0, TBool), 
                  $Heap);
                assert {:id "id281"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#14, ##P#8)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#14, ##P#8)
                     || (_module.__default.IsAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#14, ##P#8)
                       ==> _module.__default.IsAnother(_module._default.Filter_IsSubStream#$_T0, ##s#14, ##P#8)
                         || (exists n#14: int :: 
                          { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#14, n#14) } 
                          LitInt(0) <= n#14
                             && 
                            LitInt(0) <= n#14
                             && $Unbox(Apply1(_module._default.Filter_IsSubStream#$_T0, 
                                TBool, 
                                $Heap, 
                                ##P#8, 
                                _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#14, n#14)))): bool));
                assert {:id "id282"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#14, ##P#8)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#14, ##P#8)
                     || _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LS($LZ)), 
                      _module.Stream.tail(##s#14), 
                      ##P#8);
                assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, _module.Stream.tail(s#1), P#1);
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, 
                    $LS($LZ), 
                    _module.Stream.tail(s#1), 
                    P#1));
                ##s#13 := _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, 
                  $LS($LZ), 
                  _module.Stream.tail(s#1), 
                  P#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#13, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                assume _module.Stream.Cons_q(s#1);
                ##u#5 := _module.Stream.tail(s#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##u#5, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                assume _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
                  _k#0 - 1, 
                  _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, 
                    $LS($LZ), 
                    _module.Stream.tail(s#1), 
                    P#1), 
                  _module.Stream.tail(s#1));
                assume _module.Stream.Cons_q(s#1)
                   && _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, _module.Stream.tail(s#1), P#1)
                   && _module.Stream.Cons_q(s#1)
                   && _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
                    _k#0 - 1, 
                    _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LZ), 
                      _module.Stream.tail(s#1), 
                      P#1), 
                    _module.Stream.tail(s#1));
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(150,5)
                assert {:id "id283"} {:subsumption 0} Lit(true)
                   == _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
                    $LS($LS($LZ)), 
                    _k#0 - 1, 
                    _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LS($LZ)), 
                      _module.Stream.tail(s#1), 
                      P#1), 
                    _module.Stream.tail(s#1));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(150,5)
                assume {:id "id271"} $Is(_k#0 - 1, Tclass._System.nat());
                ##_k#2 := _k#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, Tclass._System.nat(), $Heap);
                assume _module.Stream.Cons_q(s#1);
                ##s#10 := _module.Stream.tail(s#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#10, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                ##P#6 := P#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##P#6, 
                  Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream#$_T0, TBool), 
                  $Heap);
                assume {:id "id272"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#10, ##P#6)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#10, ##P#6)
                     || (_module.__default.IsAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#10, ##P#6)
                       ==> _module.__default.IsAnother(_module._default.Filter_IsSubStream#$_T0, ##s#10, ##P#6)
                         || (exists n#12: int :: 
                          { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#10, n#12) } 
                          LitInt(0) <= n#12
                             && 
                            LitInt(0) <= n#12
                             && $Unbox(Apply1(_module._default.Filter_IsSubStream#$_T0, 
                                TBool, 
                                $Heap, 
                                ##P#6, 
                                _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#10, n#12)))): bool));
                assume {:id "id273"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#10, ##P#6)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#10, ##P#6)
                     || _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LS($LZ)), 
                      _module.Stream.tail(##s#10), 
                      ##P#6);
                assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, _module.Stream.tail(s#1), P#1);
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, 
                    $LS($LZ), 
                    _module.Stream.tail(s#1), 
                    P#1));
                ##s#9 := _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, 
                  $LS($LZ), 
                  _module.Stream.tail(s#1), 
                  P#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#9, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                assume _module.Stream.Cons_q(s#1);
                ##u#3 := _module.Stream.tail(s#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##u#3, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                assume _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
                  _k#0 - 1, 
                  _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, 
                    $LS($LZ), 
                    _module.Stream.tail(s#1), 
                    P#1), 
                  _module.Stream.tail(s#1));
                assume _module.Stream.Cons_q(s#1)
                   && _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, _module.Stream.tail(s#1), P#1)
                   && _module.Stream.Cons_q(s#1)
                   && _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
                    _k#0 - 1, 
                    _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LZ), 
                      _module.Stream.tail(s#1), 
                      P#1), 
                    _module.Stream.tail(s#1));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(150,5)
                push;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(150,5)
                assert {:id "id274"} $Is(_k#0 - 1, Tclass._System.nat());
                ##_k#3 := _k#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#3, Tclass._System.nat(), $Heap);
                ##s#12 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#12, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                ##P#7 := P#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##P#7, 
                  Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream#$_T0, TBool), 
                  $Heap);
                assert {:id "id275"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#12, ##P#7)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#12, ##P#7)
                     || (_module.__default.IsAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#12, ##P#7)
                       ==> _module.__default.IsAnother(_module._default.Filter_IsSubStream#$_T0, ##s#12, ##P#7)
                         || (exists n#13: int :: 
                          { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#12, n#13) } 
                          LitInt(0) <= n#13
                             && 
                            LitInt(0) <= n#13
                             && $Unbox(Apply1(_module._default.Filter_IsSubStream#$_T0, 
                                TBool, 
                                $Heap, 
                                ##P#7, 
                                _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#12, n#13)))): bool));
                assert {:id "id276"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#12, ##P#7)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#12, ##P#7)
                     || _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LS($LZ)), 
                      _module.Stream.tail(##s#12), 
                      ##P#7);
                assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1);
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                ##s#11 := _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#11, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                assume _module.Stream.Cons_q(s#1);
                ##u#4 := _module.Stream.tail(s#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##u#4, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                assume _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
                  _k#0 - 1, 
                  _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                  _module.Stream.tail(s#1));
                assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1)
                   && _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1))
                   && _module.Stream.Cons_q(s#1)
                   && _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
                    _k#0 - 1, 
                    _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                    _module.Stream.tail(s#1));
                // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(150,5)
                assert {:id "id277"} {:subsumption 0} _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
                    $LS($LS($LZ)), 
                    _k#0 - 1, 
                    _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LS($LZ)), 
                      _module.Stream.tail(s#1), 
                      P#1), 
                    _module.Stream.tail(s#1))
                   == _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
                    $LS($LS($LZ)), 
                    _k#0 - 1, 
                    _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LS($LZ)), s#1, P#1)), 
                    _module.Stream.tail(s#1));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(150,5)
                assume {:id "id258"} $Is(_k#0 - 1, Tclass._System.nat());
                ##_k#0 := _k#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#0, Tclass._System.nat(), $Heap);
                ##s#5 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#5, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                ##P#3 := P#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##P#3, 
                  Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream#$_T0, TBool), 
                  $Heap);
                assume {:id "id259"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#5, ##P#3)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#5, ##P#3)
                     || (_module.__default.IsAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#5, ##P#3)
                       ==> _module.__default.IsAnother(_module._default.Filter_IsSubStream#$_T0, ##s#5, ##P#3)
                         || (exists n#8: int :: 
                          { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#5, n#8) } 
                          LitInt(0) <= n#8
                             && 
                            LitInt(0) <= n#8
                             && $Unbox(Apply1(_module._default.Filter_IsSubStream#$_T0, 
                                TBool, 
                                $Heap, 
                                ##P#3, 
                                _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#5, n#8)))): bool));
                assume {:id "id260"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#5, ##P#3)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#5, ##P#3)
                     || _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LS($LZ)), 
                      _module.Stream.tail(##s#5), 
                      ##P#3);
                assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1);
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                ##s#4 := _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#4, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                assume _module.Stream.Cons_q(s#1);
                ##u#1 := _module.Stream.tail(s#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##u#1, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                assume _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
                  _k#0 - 1, 
                  _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                  _module.Stream.tail(s#1));
                assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1)
                   && _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1))
                   && _module.Stream.Cons_q(s#1)
                   && _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
                    _k#0 - 1, 
                    _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                    _module.Stream.tail(s#1));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(150,5)
                assume {:id "id261"} _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
                  $LS($LZ), 
                  _k#0 - 1, 
                  _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                  _module.Stream.tail(s#1));
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(150,5)
                push;
                push;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(156,31)
                // TrCallStmt: Before ProcessCallStmt
                ##s#6 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#6, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                ##P#4 := P#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##P#4, 
                  Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream#$_T0, TBool), 
                  $Heap);
                assert {:id "id262"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#6, ##P#4)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#6, ##P#4)
                     || (_module.__default.IsAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#6, ##P#4)
                       ==> _module.__default.IsAnother(_module._default.Filter_IsSubStream#$_T0, ##s#6, ##P#4)
                         || (exists n#9: int :: 
                          { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#6, n#9) } 
                          LitInt(0) <= n#9
                             && 
                            LitInt(0) <= n#9
                             && $Unbox(Apply1(_module._default.Filter_IsSubStream#$_T0, 
                                TBool, 
                                $Heap, 
                                ##P#4, 
                                _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#6, n#9)))): bool));
                assert {:id "id263"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#6, ##P#4)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#6, ##P#4)
                     || _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LS($LZ)), 
                      _module.Stream.tail(##s#6), 
                      ##P#4);
                assume _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#6, ##P#4);
                assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1);
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1)
                   && _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                // ProcessCallStmt: CheckSubrange
                s##0 := _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                u##0 := s#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id264"} $Is(_k#0 - 1, Tclass._System.nat());
                k##0 := _k#0 - 1;
                call {:id "id265"} Call$$_module.__default.Lemma__TailSubStreamK(_module._default.Filter_IsSubStream#$_T0, s##0, u##0, k##0);
                // TrCallStmt: After ProcessCallStmt
                pop;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(150,5)
                assert {:id "id266"} $Is(_k#0 - 1, Tclass._System.nat());
                ##_k#1 := _k#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#1, Tclass._System.nat(), $Heap);
                ##s#8 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#8, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                ##P#5 := P#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##P#5, 
                  Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream#$_T0, TBool), 
                  $Heap);
                assert {:id "id267"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#8, ##P#5)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#8, ##P#5)
                     || (_module.__default.IsAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#8, ##P#5)
                       ==> _module.__default.IsAnother(_module._default.Filter_IsSubStream#$_T0, ##s#8, ##P#5)
                         || (exists n#10: int :: 
                          { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#8, n#10) } 
                          LitInt(0) <= n#10
                             && 
                            LitInt(0) <= n#10
                             && $Unbox(Apply1(_module._default.Filter_IsSubStream#$_T0, 
                                TBool, 
                                $Heap, 
                                ##P#5, 
                                _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#8, n#10)))): bool));
                assert {:id "id268"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#8, ##P#5)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#8, ##P#5)
                     || _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LS($LZ)), 
                      _module.Stream.tail(##s#8), 
                      ##P#5);
                assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1);
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                ##s#7 := _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#7, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                ##u#2 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##u#2, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                assume _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
                  _k#0 - 1, 
                  _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                  s#1);
                assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1)
                   && _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1))
                   && _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
                    _k#0 - 1, 
                    _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                    s#1);
                // ----- assert line2 ==> line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(150,5)
                assert {:id "id269"} {:subsumption 0} _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
                    $LS($LZ), 
                    _k#0 - 1, 
                    _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                    _module.Stream.tail(s#1))
                   ==> 
                  _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
                    _k#0 - 1, 
                    _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                    s#1)
                   ==> _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LZ), 
                      _k#0 - 1, 
                      _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                      s#1)
                     || (0 < _k#0 - 1
                       ==> 
                      _module.__default.In#canCall(_module._default.Filter_IsSubStream#$_T0, 
                        _module.Stream.head(_module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1))), 
                        s#1)
                       ==> _module.__default.In(_module._default.Filter_IsSubStream#$_T0, 
                          _module.Stream.head(_module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1))), 
                          s#1)
                         || (exists n#11: int :: 
                          { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, n#11) } 
                          LitInt(0) <= n#11
                             && 
                            LitInt(0) <= n#11
                             && _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, n#11))
                               == _module.Stream.head(_module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)))));
                assert {:id "id270"} {:subsumption 0} _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
                    $LS($LZ), 
                    _k#0 - 1, 
                    _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                    _module.Stream.tail(s#1))
                   ==> 
                  _module.__default.IsSubStream_h#canCall(_module._default.Filter_IsSubStream#$_T0, 
                    _k#0 - 1, 
                    _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                    s#1)
                   ==> _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LZ), 
                      _k#0 - 1, 
                      _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                      s#1)
                     || (0 < _k#0 - 1
                       ==> _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
                        $LS($LS($LZ)), 
                        _k#0 - 1 - 1, 
                        _module.Stream.tail(_module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LS($LZ)), s#1, P#1))), 
                        s#1));
                assume false;
            }

            assume {:id "id284"} true
               ==> _module.__default.IsSubStream_h(_module._default.Filter_IsSubStream#$_T0, 
                $LS($LZ), 
                _k#0 - 1, 
                _module.Stream.tail(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                s#1);
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(159,5)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(159,5)
                assume true;
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(159,5)
                ##s#18 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#18, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                ##P#9 := P#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##P#9, 
                  Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream#$_T0, TBool), 
                  $Heap);
                assume {:id "id291"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#18, ##P#9)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#18, ##P#9)
                     || (_module.__default.IsAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#18, ##P#9)
                       ==> _module.__default.IsAnother(_module._default.Filter_IsSubStream#$_T0, ##s#18, ##P#9)
                         || (exists n#17: int :: 
                          { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#18, n#17) } 
                          LitInt(0) <= n#17
                             && 
                            LitInt(0) <= n#17
                             && $Unbox(Apply1(_module._default.Filter_IsSubStream#$_T0, 
                                TBool, 
                                $Heap, 
                                ##P#9, 
                                _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#18, n#17)))): bool));
                assume {:id "id292"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#18, ##P#9)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#18, ##P#9)
                     || _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LS($LZ)), 
                      _module.Stream.tail(##s#18), 
                      ##P#9);
                assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1);
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                ##x#1 := _module.Stream.head(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                // assume allocatedness for argument to function
                assume $IsAllocBox(##x#1, _module._default.Filter_IsSubStream#$_T0, $Heap);
                ##s#19 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#19, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                assume _module.__default.In#canCall(_module._default.Filter_IsSubStream#$_T0, 
                  _module.Stream.head(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                  s#1);
                assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1)
                   && _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1))
                   && _module.__default.In#canCall(_module._default.Filter_IsSubStream#$_T0, 
                    _module.Stream.head(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                    s#1);
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(159,5)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(161,11)
                ##s#20 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#20, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                ##P#10 := P#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##P#10, 
                  Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream#$_T0, TBool), 
                  $Heap);
                assert {:id "id293"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#20, ##P#10)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#20, ##P#10)
                     || (_module.__default.IsAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#20, ##P#10)
                       ==> _module.__default.IsAnother(_module._default.Filter_IsSubStream#$_T0, ##s#20, ##P#10)
                         || (exists n#18: int :: 
                          { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#20, n#18) } 
                          LitInt(0) <= n#18
                             && 
                            LitInt(0) <= n#18
                             && $Unbox(Apply1(_module._default.Filter_IsSubStream#$_T0, 
                                TBool, 
                                $Heap, 
                                ##P#10, 
                                _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#20, n#18)))): bool));
                assert {:id "id294"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#20, ##P#10)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#20, ##P#10)
                     || _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LS($LZ)), 
                      _module.Stream.tail(##s#20), 
                      ##P#10);
                assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1);
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1));
                assume _module.Stream.Cons_q(s#1);
                assume _module.Stream.Cons_q(s#1);
                ##s#21 := _module.Stream.tail(s#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#21, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                ##P#11 := P#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##P#11, 
                  Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream#$_T0, TBool), 
                  $Heap);
                assert {:id "id295"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#21, ##P#11)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#21, ##P#11)
                     || (_module.__default.IsAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#21, ##P#11)
                       ==> _module.__default.IsAnother(_module._default.Filter_IsSubStream#$_T0, ##s#21, ##P#11)
                         || (exists n#19: int :: 
                          { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#21, n#19) } 
                          LitInt(0) <= n#19
                             && 
                            LitInt(0) <= n#19
                             && $Unbox(Apply1(_module._default.Filter_IsSubStream#$_T0, 
                                TBool, 
                                $Heap, 
                                ##P#11, 
                                _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#21, n#19)))): bool));
                assert {:id "id296"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#21, ##P#11)
                   ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#21, ##P#11)
                     || _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LS($LZ)), 
                      _module.Stream.tail(##s#21), 
                      ##P#11);
                assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, _module.Stream.tail(s#1), P#1);
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, 
                    $LS($LZ), 
                    _module.Stream.tail(s#1), 
                    P#1));
                assume $IsA#_module.Stream(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1))
                   && 
                  _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, P#1)
                   && 
                  _module.Stream.Cons_q(s#1)
                   && 
                  _module.Stream.Cons_q(s#1)
                   && _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, _module.Stream.tail(s#1), P#1);
                assert {:id "id297"} {:subsumption 0} $Eq#_module.Stream(_module._default.Filter_IsSubStream#$_T0, 
                  _module._default.Filter_IsSubStream#$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LS($LZ)), s#1, P#1), 
                  #_module.Stream.Cons(_module.Stream.head(s#1), 
                    _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LS($LZ)), 
                      _module.Stream.tail(s#1), 
                      P#1)));
                assume {:id "id298"} $Eq#_module.Stream(_module._default.Filter_IsSubStream#$_T0, 
                  _module._default.Filter_IsSubStream#$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1), 
                  #_module.Stream.Cons(_module.Stream.head(s#1), 
                    _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, 
                      $LS($LZ), 
                      _module.Stream.tail(s#1), 
                      P#1)));
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(159,5)
                assume _module.Stream.Cons_q(s#1);
                ##x#2 := _module.Stream.head(s#1);
                // assume allocatedness for argument to function
                assume $IsAllocBox(##x#2, _module._default.Filter_IsSubStream#$_T0, $Heap);
                ##s#22 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#22, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                assume _module.__default.In#canCall(_module._default.Filter_IsSubStream#$_T0, _module.Stream.head(s#1), s#1);
                assume _module.Stream.Cons_q(s#1)
                   && _module.__default.In#canCall(_module._default.Filter_IsSubStream#$_T0, _module.Stream.head(s#1), s#1);
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(159,5)
                assert {:id "id299"} {:subsumption 0} _module.__default.In(_module._default.Filter_IsSubStream#$_T0, 
                    _module.Stream.head(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LS($LZ)), s#1, P#1)), 
                    s#1)
                   == _module.__default.In(_module._default.Filter_IsSubStream#$_T0, _module.Stream.head(s#1), s#1);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(159,5)
                assume _module.Stream.Cons_q(s#1);
                ##x#0 := _module.Stream.head(s#1);
                // assume allocatedness for argument to function
                assume $IsAllocBox(##x#0, _module._default.Filter_IsSubStream#$_T0, $Heap);
                ##s#15 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#15, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                assume _module.__default.In#canCall(_module._default.Filter_IsSubStream#$_T0, _module.Stream.head(s#1), s#1);
                assume _module.Stream.Cons_q(s#1)
                   && _module.__default.In#canCall(_module._default.Filter_IsSubStream#$_T0, _module.Stream.head(s#1), s#1);
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(159,5)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(163,11)
                ##s#16 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#16, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                assert {:id "id285"} $Is(LitInt(0), Tclass._System.nat());
                ##n#0 := LitInt(0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
                assume _module.__default.Tail#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, LitInt(0));
                assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, LitInt(0)));
                assume $IsA#_module.Stream(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, LitInt(0)))
                   && $IsA#_module.Stream(s#1)
                   && _module.__default.Tail#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, LitInt(0));
                assert {:id "id286"} {:subsumption 0} $Eq#_module.Stream(_module._default.Filter_IsSubStream#$_T0, 
                  _module._default.Filter_IsSubStream#$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LS($LZ)), s#1, LitInt(0)), 
                  s#1);
                assume {:id "id287"} $Eq#_module.Stream(_module._default.Filter_IsSubStream#$_T0, 
                  _module._default.Filter_IsSubStream#$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, LitInt(0)), 
                  s#1);
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(164,11)
                // Begin Comprehension WF check
                havoc n#15;
                if (LitInt(0) <= n#15)
                {
                    if (LitInt(0) <= n#15)
                    {
                        ##s#17 := s#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#17, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
                        ##n#1 := n#15;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
                        assume _module.__default.Tail#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, n#15);
                        assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, n#15));
                        assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, n#15));
                        assume _module.Stream.Cons_q(s#1);
                    }
                }

                // End Comprehension WF check
                assume (forall n#16: int :: 
                  { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, n#16) } 
                  LitInt(0) <= n#16
                     ==> 
                    LitInt(0) <= n#16
                     ==> _module.__default.Tail#canCall(_module._default.Filter_IsSubStream#$_T0, s#1, n#16)
                       && _module.Stream.Cons_q(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, n#16))
                       && _module.Stream.Cons_q(s#1));
                assert {:id "id288"} {:subsumption 0} (exists n#16: int :: 
                  { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, n#16) } 
                  LitInt(0) <= n#16
                     && 
                    LitInt(0) <= n#16
                     && _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, n#16))
                       == _module.Stream.head(s#1));
                assume {:id "id289"} (exists n#16: int :: 
                  { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LS($LZ)), s#1, n#16) } 
                  LitInt(0) <= n#16
                     && 
                    LitInt(0) <= n#16
                     && _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LS($LZ)), s#1, n#16))
                       == _module.Stream.head(s#1));
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(159,5)
                assume true;
                // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(159,5)
                assert {:id "id290"} {:subsumption 0} _module.__default.In(_module._default.Filter_IsSubStream#$_T0, _module.Stream.head(s#1), s#1)
                   == Lit(true);
                assume false;
            }

            assume {:id "id300"} true
               ==> _module.__default.In(_module._default.Filter_IsSubStream#$_T0, 
                _module.Stream.head(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), s#1, P#1)), 
                s#1);
        }
        else
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(169,14)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##2 := s#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            P##1 := P#1;
            call {:id "id301"} Call$$_module.__default.NextLemma(_module._default.Filter_IsSubStream#$_T0, s##2, P##1);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(170,25)
            // TrCallStmt: Before ProcessCallStmt
            assume _module.Stream.Cons_q(s#1);
            ##s#23 := _module.Stream.tail(s#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#23, Tclass._module.Stream(_module._default.Filter_IsSubStream#$_T0), $Heap);
            ##P#12 := P#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##P#12, 
              Tclass._System.___hTotalFunc1(_module._default.Filter_IsSubStream#$_T0, TBool), 
              $Heap);
            assert {:id "id302"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#23, ##P#12)
               ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#23, ##P#12)
                 || (_module.__default.IsAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#23, ##P#12)
                   ==> _module.__default.IsAnother(_module._default.Filter_IsSubStream#$_T0, ##s#23, ##P#12)
                     || (exists n#20: int :: 
                      { _module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#23, n#20) } 
                      LitInt(0) <= n#20
                         && 
                        LitInt(0) <= n#20
                         && $Unbox(Apply1(_module._default.Filter_IsSubStream#$_T0, 
                            TBool, 
                            $Heap, 
                            ##P#12, 
                            _module.Stream.head(_module.__default.Tail(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#23, n#20)))): bool));
            assert {:id "id303"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Filter_IsSubStream#$_T0, ##s#23, ##P#12)
               ==> _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#23, ##P#12)
                 || _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, 
                  $LS($LS($LZ)), 
                  _module.Stream.tail(##s#23), 
                  ##P#12);
            assume _module.__default.AlwaysAnother(_module._default.Filter_IsSubStream#$_T0, $LS($LZ), ##s#23, ##P#12);
            assume _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, _module.Stream.tail(s#1), P#1);
            assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, 
                $LS($LZ), 
                _module.Stream.tail(s#1), 
                P#1));
            assume _module.Stream.Cons_q(s#1)
               && _module.__default.Filter#canCall(_module._default.Filter_IsSubStream#$_T0, _module.Stream.tail(s#1), P#1);
            // ProcessCallStmt: CheckSubrange
            s##3 := _module.__default.Filter(_module._default.Filter_IsSubStream#$_T0, 
              $LS($LZ), 
              _module.Stream.tail(s#1), 
              P#1);
            assume true;
            // ProcessCallStmt: CheckSubrange
            u##1 := s#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            k##1 := _k#0;
            call {:id "id304"} Call$$_module.__default.Lemma__TailSubStreamK(_module._default.Filter_IsSubStream#$_T0, s##3, u##1, k##1);
            // TrCallStmt: After ProcessCallStmt
        }
    }
    else
    {
    }
}



procedure {:verboseName "Theorem_Filter (well-formedness)"} CheckWellFormed$$_module.__default.Theorem__Filter(_module._default.Theorem_Filter$T: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Theorem_Filter$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Theorem_Filter$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Theorem_Filter$T, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_Filter$T, TBool), 
          $Heap));
  free requires 9 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem_Filter (well-formedness)"} CheckWellFormed$$_module.__default.Theorem__Filter(_module._default.Theorem_Filter$T: Ty, s#0: DatatypeType, P#0: HandleType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##P#0: HandleType;
  var x#0: Box;
  var ##x#0: Box;
  var ##s#1: DatatypeType;
  var ##s#2: DatatypeType;
  var ##P#1: HandleType;
  var ##x#1: Box;
  var ##s#3: DatatypeType;


    // AddMethodImpl: Theorem_Filter, CheckWellFormed$$_module.__default.Theorem__Filter
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(_module._default.Theorem_Filter$T), $Heap);
    ##P#0 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#0, 
      Tclass._System.___hTotalFunc1(_module._default.Theorem_Filter$T, TBool), 
      $Heap);
    assume _module.__default.AlwaysAnother#canCall(_module._default.Theorem_Filter$T, s#0, P#0);
    assume {:id "id305"} _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc x#0;
    assume $IsBox(x#0, _module._default.Theorem_Filter$T)
       && $IsAllocBox(x#0, _module._default.Theorem_Filter$T, $Heap);
    ##x#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x#0, _module._default.Theorem_Filter$T, $Heap);
    ##s#2 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#2, Tclass._module.Stream(_module._default.Theorem_Filter$T), $Heap);
    ##P#1 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#1, 
      Tclass._System.___hTotalFunc1(_module._default.Theorem_Filter$T, TBool), 
      $Heap);
    assert {:id "id306"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_Filter$T, ##s#2, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, $LS($LZ), ##s#2, ##P#1)
         || (_module.__default.IsAnother#canCall(_module._default.Theorem_Filter$T, ##s#2, ##P#1)
           ==> _module.__default.IsAnother(_module._default.Theorem_Filter$T, ##s#2, ##P#1)
             || (exists n#0: int :: 
              { _module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), ##s#2, n#0) } 
              LitInt(0) <= n#0
                 && 
                LitInt(0) <= n#0
                 && $Unbox(Apply1(_module._default.Theorem_Filter$T, 
                    TBool, 
                    $Heap, 
                    ##P#1, 
                    _module.Stream.head(_module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), ##s#2, n#0)))): bool));
    assert {:id "id307"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_Filter$T, ##s#2, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, $LS($LZ), ##s#2, ##P#1)
         || _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, 
          $LS($LS($LZ)), 
          _module.Stream.tail(##s#2), 
          ##P#1);
    assume _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, $LS($LZ), ##s#2, ##P#1);
    assume _module.__default.Filter#canCall(_module._default.Theorem_Filter$T, s#0, P#0);
    assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0));
    ##s#1 := _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, Tclass._module.Stream(_module._default.Theorem_Filter$T), $Heap);
    assume _module.__default.In#canCall(_module._default.Theorem_Filter$T, 
      x#0, 
      _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0));
    ##x#1 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x#1, _module._default.Theorem_Filter$T, $Heap);
    ##s#3 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#3, Tclass._module.Stream(_module._default.Theorem_Filter$T), $Heap);
    assume _module.__default.In#canCall(_module._default.Theorem_Filter$T, x#0, s#0);
    if (_module.__default.In(_module._default.Theorem_Filter$T, x#0, s#0))
    {
    }

    assume {:id "id308"} _module.__default.In(_module._default.Theorem_Filter$T, 
        x#0, 
        _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0))
       <==> _module.__default.In(_module._default.Theorem_Filter$T, x#0, s#0)
         && $Unbox(Apply1(_module._default.Theorem_Filter$T, TBool, $Heap, P#0, x#0)): bool;
    assume {:id "id309"} (forall x#1: Box :: 
      { $Unbox(Apply1(_module._default.Theorem_Filter$T, TBool, $Heap, P#0, x#1)): bool } 
        { _module.__default.In(_module._default.Theorem_Filter$T, x#1, s#0) } 
        { _module.__default.In(_module._default.Theorem_Filter$T, 
          x#1, 
          _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0)) } 
      $IsBox(x#1, _module._default.Theorem_Filter$T)
           && $IsAllocBox(x#1, _module._default.Theorem_Filter$T, $Heap)
         ==> (_module.__default.In(_module._default.Theorem_Filter$T, 
            x#1, 
            _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0))
           <==> _module.__default.In(_module._default.Theorem_Filter$T, x#1, s#0)
             && $Unbox(Apply1(_module._default.Theorem_Filter$T, TBool, $Heap, P#0, x#1)): bool));
}



procedure {:verboseName "Theorem_Filter (call)"} Call$$_module.__default.Theorem__Filter(_module._default.Theorem_Filter$T: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Theorem_Filter$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Theorem_Filter$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Theorem_Filter$T, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_Filter$T, TBool), 
          $Heap));
  // user-defined preconditions
  requires {:id "id310"} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_Filter$T, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0)
       || (_module.__default.IsAnother#canCall(_module._default.Theorem_Filter$T, s#0, P#0)
         ==> _module.__default.IsAnother(_module._default.Theorem_Filter$T, s#0, P#0)
           || (exists n#1: int :: 
            { _module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), s#0, n#1) } 
            LitInt(0) <= n#1
               && 
              LitInt(0) <= n#1
               && $Unbox(Apply1(_module._default.Theorem_Filter$T, 
                  TBool, 
                  $Heap, 
                  P#0, 
                  _module.Stream.head(_module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), s#0, n#1)))): bool));
  requires {:id "id311"} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_Filter$T, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0)
       || _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, $LS($LS($LZ)), _module.Stream.tail(s#0), P#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: Box :: 
    { $Unbox(Apply1(_module._default.Theorem_Filter$T, TBool, $Heap, P#0, x#1)): bool } 
      { _module.__default.In(_module._default.Theorem_Filter$T, x#1, s#0) } 
      { _module.__default.In(_module._default.Theorem_Filter$T, 
        x#1, 
        _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0)) } 
    $IsBox(x#1, _module._default.Theorem_Filter$T)
       ==> _module.__default.Filter#canCall(_module._default.Theorem_Filter$T, s#0, P#0)
         && _module.__default.In#canCall(_module._default.Theorem_Filter$T, 
          x#1, 
          _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0))
         && _module.__default.In#canCall(_module._default.Theorem_Filter$T, x#1, s#0));
  free ensures {:id "id312"} (forall x#1: Box :: 
    { $Unbox(Apply1(_module._default.Theorem_Filter$T, TBool, $Heap, P#0, x#1)): bool } 
      { _module.__default.In(_module._default.Theorem_Filter$T, x#1, s#0) } 
      { _module.__default.In(_module._default.Theorem_Filter$T, 
        x#1, 
        _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0)) } 
    $IsBox(x#1, _module._default.Theorem_Filter$T)
         && $IsAllocBox(x#1, _module._default.Theorem_Filter$T, $Heap)
       ==> (_module.__default.In(_module._default.Theorem_Filter$T, 
          x#1, 
          _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0))
         <==> _module.__default.In(_module._default.Theorem_Filter$T, x#1, s#0)
           && $Unbox(Apply1(_module._default.Theorem_Filter$T, TBool, $Heap, P#0, x#1)): bool));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem_Filter (correctness)"} Impl$$_module.__default.Theorem__Filter(_module._default.Theorem_Filter$T: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Theorem_Filter$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Theorem_Filter$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.Theorem_Filter$T, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_Filter$T, TBool), 
          $Heap))
   returns ($_reverifyPost: bool);
  free requires 9 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id313"} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_Filter$T, s#0, P#0)
     && 
    _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0)
     && 
    _module.__default.IsAnother(_module._default.Theorem_Filter$T, s#0, P#0)
     && _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, $LS($LZ), _module.Stream.tail(s#0), P#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: Box :: 
    { $Unbox(Apply1(_module._default.Theorem_Filter$T, TBool, $Heap, P#0, x#1)): bool } 
      { _module.__default.In(_module._default.Theorem_Filter$T, x#1, s#0) } 
      { _module.__default.In(_module._default.Theorem_Filter$T, 
        x#1, 
        _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0)) } 
    $IsBox(x#1, _module._default.Theorem_Filter$T)
       ==> _module.__default.Filter#canCall(_module._default.Theorem_Filter$T, s#0, P#0)
         && _module.__default.In#canCall(_module._default.Theorem_Filter$T, 
          x#1, 
          _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0))
         && _module.__default.In#canCall(_module._default.Theorem_Filter$T, x#1, s#0));
  ensures {:id "id314"} (forall x#1: Box :: 
    { $Unbox(Apply1(_module._default.Theorem_Filter$T, TBool, $Heap, P#0, x#1)): bool } 
      { _module.__default.In(_module._default.Theorem_Filter$T, x#1, s#0) } 
      { _module.__default.In(_module._default.Theorem_Filter$T, 
        x#1, 
        _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LS($LZ)), s#0, P#0)) } 
    $IsBox(x#1, _module._default.Theorem_Filter$T)
         && $IsAllocBox(x#1, _module._default.Theorem_Filter$T, $Heap)
       ==> (_module.__default.In(_module._default.Theorem_Filter$T, 
          x#1, 
          _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LS($LZ)), s#0, P#0))
         <==> _module.__default.In(_module._default.Theorem_Filter$T, x#1, s#0)
           && $Unbox(Apply1(_module._default.Theorem_Filter$T, TBool, $Heap, P#0, x#1)): bool));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem_Filter (correctness)"} Impl$$_module.__default.Theorem__Filter(_module._default.Theorem_Filter$T: Ty, s#0: DatatypeType, P#0: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var x#0_0: Box;
  var ##x#0_0: Box;
  var ##s#0_0: DatatypeType;
  var ##s#0_1: DatatypeType;
  var ##P#0_0: HandleType;
  var ##x#0_1: Box;
  var ##s#0_2: DatatypeType;
  var ##x#0_2: Box;
  var ##s#0_3: DatatypeType;
  var ##s#0_4: DatatypeType;
  var ##P#0_1: HandleType;
  var s##0_0_0: DatatypeType;
  var P##0_0_0: HandleType;
  var x##0_0_0: Box;
  var ##x#0_3: Box;
  var ##s#0_5: DatatypeType;
  var k#0_1_0: int where LitInt(0) <= k#0_1_0;
  var k#0_1_1: int;
  var ##s#0_1_0: DatatypeType;
  var ##n#0_1_0: int;
  var s##0_1_0: DatatypeType;
  var P##0_1_0: HandleType;
  var x##0_1_0: Box;
  var k##0_1_0: int;

    // AddMethodImpl: Theorem_Filter, Impl$$_module.__default.Theorem__Filter
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#s0#0: DatatypeType :: 
      { _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), $ih#s0#0, P#0) } 
        { _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, $LS($LZ), $ih#s0#0, P#0) } 
      true);
    $_reverifyPost := false;
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(179,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc x#0_0;
        assume $IsBox(x#0_0, _module._default.Theorem_Filter$T)
           && $IsAllocBox(x#0_0, _module._default.Theorem_Filter$T, $Heap);
        assume true;
        assume {:id "id315"} true;
        if (*)
        {
            ##x#0_0 := x#0_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#0_0, _module._default.Theorem_Filter$T, $Heap);
            ##s#0_1 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_1, Tclass._module.Stream(_module._default.Theorem_Filter$T), $Heap);
            ##P#0_0 := P#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##P#0_0, 
              Tclass._System.___hTotalFunc1(_module._default.Theorem_Filter$T, TBool), 
              $Heap);
            assert {:id "id316"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_Filter$T, ##s#0_1, ##P#0_0)
               ==> _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, $LS($LZ), ##s#0_1, ##P#0_0)
                 || (_module.__default.IsAnother#canCall(_module._default.Theorem_Filter$T, ##s#0_1, ##P#0_0)
                   ==> _module.__default.IsAnother(_module._default.Theorem_Filter$T, ##s#0_1, ##P#0_0)
                     || (exists n#0_0: int :: 
                      { _module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), ##s#0_1, n#0_0) } 
                      LitInt(0) <= n#0_0
                         && 
                        LitInt(0) <= n#0_0
                         && $Unbox(Apply1(_module._default.Theorem_Filter$T, 
                            TBool, 
                            $Heap, 
                            ##P#0_0, 
                            _module.Stream.head(_module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), ##s#0_1, n#0_0)))): bool));
            assert {:id "id317"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_Filter$T, ##s#0_1, ##P#0_0)
               ==> _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, $LS($LZ), ##s#0_1, ##P#0_0)
                 || _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, 
                  $LS($LS($LZ)), 
                  _module.Stream.tail(##s#0_1), 
                  ##P#0_0);
            assume _module.__default.Filter#canCall(_module._default.Theorem_Filter$T, s#0, P#0);
            assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0));
            ##s#0_0 := _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0, Tclass._module.Stream(_module._default.Theorem_Filter$T), $Heap);
            assume _module.__default.In#canCall(_module._default.Theorem_Filter$T, 
              x#0_0, 
              _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0));
            ##x#0_1 := x#0_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#0_1, _module._default.Theorem_Filter$T, $Heap);
            ##s#0_2 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_2, Tclass._module.Stream(_module._default.Theorem_Filter$T), $Heap);
            assume _module.__default.In#canCall(_module._default.Theorem_Filter$T, x#0_0, s#0);
            if (_module.__default.In(_module._default.Theorem_Filter$T, x#0_0, s#0))
            {
            }

            assume _module.__default.Filter#canCall(_module._default.Theorem_Filter$T, s#0, P#0)
               && _module.__default.In#canCall(_module._default.Theorem_Filter$T, 
                x#0_0, 
                _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0))
               && _module.__default.In#canCall(_module._default.Theorem_Filter$T, x#0_0, s#0);
            assume {:id "id318"} _module.__default.In(_module._default.Theorem_Filter$T, 
                x#0_0, 
                _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0))
               <==> _module.__default.In(_module._default.Theorem_Filter$T, x#0_0, s#0)
                 && $Unbox(Apply1(_module._default.Theorem_Filter$T, TBool, $Heap, P#0, x#0_0)): bool;
            assume false;
        }

        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(182,5)
        ##x#0_2 := x#0_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#0_2, _module._default.Theorem_Filter$T, $Heap);
        ##s#0_4 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_4, Tclass._module.Stream(_module._default.Theorem_Filter$T), $Heap);
        ##P#0_1 := P#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##P#0_1, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_Filter$T, TBool), 
          $Heap);
        assert {:id "id319"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_Filter$T, ##s#0_4, ##P#0_1)
           ==> _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, $LS($LZ), ##s#0_4, ##P#0_1)
             || (_module.__default.IsAnother#canCall(_module._default.Theorem_Filter$T, ##s#0_4, ##P#0_1)
               ==> _module.__default.IsAnother(_module._default.Theorem_Filter$T, ##s#0_4, ##P#0_1)
                 || (exists n#0_1: int :: 
                  { _module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), ##s#0_4, n#0_1) } 
                  LitInt(0) <= n#0_1
                     && 
                    LitInt(0) <= n#0_1
                     && $Unbox(Apply1(_module._default.Theorem_Filter$T, 
                        TBool, 
                        $Heap, 
                        ##P#0_1, 
                        _module.Stream.head(_module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), ##s#0_4, n#0_1)))): bool));
        assert {:id "id320"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_Filter$T, ##s#0_4, ##P#0_1)
           ==> _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, $LS($LZ), ##s#0_4, ##P#0_1)
             || _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, 
              $LS($LS($LZ)), 
              _module.Stream.tail(##s#0_4), 
              ##P#0_1);
        assume _module.__default.AlwaysAnother(_module._default.Theorem_Filter$T, $LS($LZ), ##s#0_4, ##P#0_1);
        assume _module.__default.Filter#canCall(_module._default.Theorem_Filter$T, s#0, P#0);
        assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0));
        ##s#0_3 := _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_3, Tclass._module.Stream(_module._default.Theorem_Filter$T), $Heap);
        assume _module.__default.In#canCall(_module._default.Theorem_Filter$T, 
          x#0_0, 
          _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0));
        assume _module.__default.Filter#canCall(_module._default.Theorem_Filter$T, s#0, P#0)
           && _module.__default.In#canCall(_module._default.Theorem_Filter$T, 
            x#0_0, 
            _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0));
        if (_module.__default.In(_module._default.Theorem_Filter$T, 
          x#0_0, 
          _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0)))
        {
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(183,14)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##0_0_0 := s#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            P##0_0_0 := P#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##0_0_0 := x#0_0;
            call {:id "id321"} Call$$_module.__default.FS__Ping(_module._default.Theorem_Filter$T, s##0_0_0, P##0_0_0, x##0_0_0);
            // TrCallStmt: After ProcessCallStmt
            pop;
        }
        else
        {
        }

        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(185,5)
        ##x#0_3 := x#0_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#0_3, _module._default.Theorem_Filter$T, $Heap);
        ##s#0_5 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_5, Tclass._module.Stream(_module._default.Theorem_Filter$T), $Heap);
        assume _module.__default.In#canCall(_module._default.Theorem_Filter$T, x#0_0, s#0);
        if (_module.__default.In(_module._default.Theorem_Filter$T, x#0_0, s#0))
        {
        }

        assume _module.__default.In#canCall(_module._default.Theorem_Filter$T, x#0_0, s#0);
        if (_module.__default.In(_module._default.Theorem_Filter$T, x#0_0, s#0)
           && $Unbox(Apply1(_module._default.Theorem_Filter$T, TBool, $Heap, P#0, x#0_0)): bool)
        {
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(186,13)
            havoc k#0_1_1;
            if (LitInt(0) <= k#0_1_1)
            {
                if (LitInt(0) <= k#0_1_1)
                {
                    ##s#0_1_0 := s#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_0, Tclass._module.Stream(_module._default.Theorem_Filter$T), $Heap);
                    ##n#0_1_0 := k#0_1_1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#0_1_0, Tclass._System.nat(), $Heap);
                    assume _module.__default.Tail#canCall(_module._default.Theorem_Filter$T, s#0, k#0_1_1);
                    assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), s#0, k#0_1_1));
                    assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), s#0, k#0_1_1));
                }

                assume LitInt(0) <= k#0_1_1
                   ==> _module.__default.Tail#canCall(_module._default.Theorem_Filter$T, s#0, k#0_1_1)
                     && _module.Stream.Cons_q(_module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), s#0, k#0_1_1));
            }

            assert {:id "id322"} ($Is(LitInt(0), Tclass._System.nat())
                 && 
                LitInt(0) <= LitInt(0)
                 && _module.Stream.head(_module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), s#0, LitInt(0)))
                   == x#0_0)
               || 
              ($Is(LitInt(0), Tclass._System.nat())
                 && 
                LitInt(0) <= LitInt(0)
                 && _module.Stream.head(_module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), s#0, LitInt(0)))
                   == x#0_0)
               || 
              ($Is(LitInt(0), Tclass._System.nat())
                 && 
                LitInt(0) <= LitInt(0)
                 && _module.Stream.head(_module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), s#0, LitInt(0)))
                   == x#0_0)
               || (exists $as#k0_1_0#0_1_0: int :: 
                LitInt(0) <= $as#k0_1_0#0_1_0
                   && 
                  LitInt(0) <= $as#k0_1_0#0_1_0
                   && _module.Stream.head(_module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), s#0, $as#k0_1_0#0_1_0))
                     == x#0_0);
            havoc k#0_1_0;
            assume {:id "id323"} LitInt(0) <= k#0_1_0
               && _module.Stream.head(_module.__default.Tail(_module._default.Theorem_Filter$T, $LS($LZ), s#0, k#0_1_0))
                 == x#0_0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(187,14)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##0_1_0 := s#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            P##0_1_0 := P#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##0_1_0 := x#0_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            k##0_1_0 := k#0_1_0;
            call {:id "id324"} Call$$_module.__default.FS__Pong(_module._default.Theorem_Filter$T, s##0_1_0, P##0_1_0, x##0_1_0, k##0_1_0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
        }

        assert {:id "id325"} _module.__default.In(_module._default.Theorem_Filter$T, 
            x#0_0, 
            _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LS($LZ)), s#0, P#0))
           <==> _module.__default.In(_module._default.Theorem_Filter$T, x#0_0, s#0)
             && $Unbox(Apply1(_module._default.Theorem_Filter$T, TBool, $Heap, P#0, x#0_0)): bool;
        assume false;
    }
    else
    {
        assume (forall x#0_1: Box :: 
          { $Unbox(Apply1(_module._default.Theorem_Filter$T, TBool, $Heap, P#0, x#0_1)): bool } 
            { _module.__default.In(_module._default.Theorem_Filter$T, x#0_1, s#0) } 
            { _module.__default.In(_module._default.Theorem_Filter$T, 
              x#0_1, 
              _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0)) } 
          $IsBox(x#0_1, _module._default.Theorem_Filter$T)
               && $IsAllocBox(x#0_1, _module._default.Theorem_Filter$T, $Heap)
               && Lit(true)
             ==> (_module.__default.In(_module._default.Theorem_Filter$T, 
                x#0_1, 
                _module.__default.Filter(_module._default.Theorem_Filter$T, $LS($LZ), s#0, P#0))
               <==> _module.__default.In(_module._default.Theorem_Filter$T, x#0_1, s#0)
                 && $Unbox(Apply1(_module._default.Theorem_Filter$T, TBool, $Heap, P#0, x#0_1)): bool));
    }
}



procedure {:verboseName "FS_Ping (well-formedness)"} CheckWellFormed$$_module.__default.FS__Ping(_module._default.FS_Ping$T: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.FS_Ping$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.FS_Ping$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.FS_Ping$T, TBool))
         && $IsAlloc(P#0, Tclass._System.___hTotalFunc1(_module._default.FS_Ping$T, TBool), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.FS_Ping$T)
         && $IsAllocBox(x#0, _module._default.FS_Ping$T, $Heap));
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FS_Ping (well-formedness)"} CheckWellFormed$$_module.__default.FS__Ping(_module._default.FS_Ping$T: Ty, s#0: DatatypeType, P#0: HandleType, x#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##P#0: HandleType;
  var ##x#0: Box;
  var ##s#1: DatatypeType;
  var ##s#2: DatatypeType;
  var ##P#1: HandleType;
  var ##x#1: Box;
  var ##s#3: DatatypeType;


    // AddMethodImpl: FS_Ping, CheckWellFormed$$_module.__default.FS__Ping
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(_module._default.FS_Ping$T), $Heap);
    ##P#0 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#0, Tclass._System.___hTotalFunc1(_module._default.FS_Ping$T, TBool), $Heap);
    assume _module.__default.AlwaysAnother#canCall(_module._default.FS_Ping$T, s#0, P#0);
    assume {:id "id326"} _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0);
    ##x#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x#0, _module._default.FS_Ping$T, $Heap);
    ##s#2 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#2, Tclass._module.Stream(_module._default.FS_Ping$T), $Heap);
    ##P#1 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#1, Tclass._System.___hTotalFunc1(_module._default.FS_Ping$T, TBool), $Heap);
    assert {:id "id327"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Ping$T, ##s#2, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), ##s#2, ##P#1)
         || (_module.__default.IsAnother#canCall(_module._default.FS_Ping$T, ##s#2, ##P#1)
           ==> _module.__default.IsAnother(_module._default.FS_Ping$T, ##s#2, ##P#1)
             || (exists n#0: int :: 
              { _module.__default.Tail(_module._default.FS_Ping$T, $LS($LZ), ##s#2, n#0) } 
              LitInt(0) <= n#0
                 && 
                LitInt(0) <= n#0
                 && $Unbox(Apply1(_module._default.FS_Ping$T, 
                    TBool, 
                    $Heap, 
                    ##P#1, 
                    _module.Stream.head(_module.__default.Tail(_module._default.FS_Ping$T, $LS($LZ), ##s#2, n#0)))): bool));
    assert {:id "id328"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Ping$T, ##s#2, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), ##s#2, ##P#1)
         || _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LS($LZ)), _module.Stream.tail(##s#2), ##P#1);
    assume _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), ##s#2, ##P#1);
    assume _module.__default.Filter#canCall(_module._default.FS_Ping$T, s#0, P#0);
    assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0));
    ##s#1 := _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, Tclass._module.Stream(_module._default.FS_Ping$T), $Heap);
    assume _module.__default.In#canCall(_module._default.FS_Ping$T, 
      x#0, 
      _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0));
    assume {:id "id329"} _module.__default.In(_module._default.FS_Ping$T, 
      x#0, 
      _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0));
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##x#1 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x#1, _module._default.FS_Ping$T, $Heap);
    ##s#3 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#3, Tclass._module.Stream(_module._default.FS_Ping$T), $Heap);
    assume _module.__default.In#canCall(_module._default.FS_Ping$T, x#0, s#0);
    assume {:id "id330"} _module.__default.In(_module._default.FS_Ping$T, x#0, s#0);
    assume {:id "id331"} $Unbox(Apply1(_module._default.FS_Ping$T, TBool, $Heap, P#0, x#0)): bool;
}



procedure {:verboseName "FS_Ping (call)"} Call$$_module.__default.FS__Ping(_module._default.FS_Ping$T: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.FS_Ping$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.FS_Ping$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.FS_Ping$T, TBool))
         && $IsAlloc(P#0, Tclass._System.___hTotalFunc1(_module._default.FS_Ping$T, TBool), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.FS_Ping$T)
         && $IsAllocBox(x#0, _module._default.FS_Ping$T, $Heap));
  // user-defined preconditions
  requires {:id "id332"} _module.__default.AlwaysAnother#canCall(_module._default.FS_Ping$T, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0)
       || (_module.__default.IsAnother#canCall(_module._default.FS_Ping$T, s#0, P#0)
         ==> _module.__default.IsAnother(_module._default.FS_Ping$T, s#0, P#0)
           || (exists n#1: int :: 
            { _module.__default.Tail(_module._default.FS_Ping$T, $LS($LZ), s#0, n#1) } 
            LitInt(0) <= n#1
               && 
              LitInt(0) <= n#1
               && $Unbox(Apply1(_module._default.FS_Ping$T, 
                  TBool, 
                  $Heap, 
                  P#0, 
                  _module.Stream.head(_module.__default.Tail(_module._default.FS_Ping$T, $LS($LZ), s#0, n#1)))): bool));
  requires {:id "id333"} _module.__default.AlwaysAnother#canCall(_module._default.FS_Ping$T, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0)
       || _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LS($LZ)), _module.Stream.tail(s#0), P#0);
  requires {:id "id334"} _module.__default.In#canCall(_module._default.FS_Ping$T, 
      x#0, 
      _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0))
     ==> _module.__default.In(_module._default.FS_Ping$T, 
        x#0, 
        _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0))
       || (exists n#2: int :: 
        { _module.__default.Tail(_module._default.FS_Ping$T, 
            $LS($LZ), 
            _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0), 
            n#2) } 
        LitInt(0) <= n#2
           && 
          LitInt(0) <= n#2
           && _module.Stream.head(_module.__default.Tail(_module._default.FS_Ping$T, 
                $LS($LZ), 
                _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0), 
                n#2))
             == x#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.In#canCall(_module._default.FS_Ping$T, x#0, s#0);
  free ensures {:id "id335"} _module.__default.In#canCall(_module._default.FS_Ping$T, x#0, s#0)
     && 
    _module.__default.In(_module._default.FS_Ping$T, x#0, s#0)
     && (exists n#3: int :: 
      { _module.__default.Tail(_module._default.FS_Ping$T, $LS($LZ), s#0, n#3) } 
      LitInt(0) <= n#3
         && 
        LitInt(0) <= n#3
         && _module.Stream.head(_module.__default.Tail(_module._default.FS_Ping$T, $LS($LZ), s#0, n#3))
           == x#0);
  ensures {:id "id336"} $Unbox(Apply1(_module._default.FS_Ping$T, TBool, $Heap, P#0, x#0)): bool;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "FS_Ping (correctness)"} Impl$$_module.__default.FS__Ping(_module._default.FS_Ping$T: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.FS_Ping$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.FS_Ping$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.FS_Ping$T, TBool))
         && $IsAlloc(P#0, Tclass._System.___hTotalFunc1(_module._default.FS_Ping$T, TBool), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.FS_Ping$T)
         && $IsAllocBox(x#0, _module._default.FS_Ping$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 8 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id337"} _module.__default.AlwaysAnother#canCall(_module._default.FS_Ping$T, s#0, P#0)
     && 
    _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0)
     && 
    _module.__default.IsAnother(_module._default.FS_Ping$T, s#0, P#0)
     && _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), _module.Stream.tail(s#0), P#0);
  free requires {:id "id338"} _module.__default.In#canCall(_module._default.FS_Ping$T, 
      x#0, 
      _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0))
     && 
    _module.__default.In(_module._default.FS_Ping$T, 
      x#0, 
      _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0))
     && (exists n#5: int :: 
      { _module.__default.Tail(_module._default.FS_Ping$T, 
          $LS($LZ), 
          _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0), 
          n#5) } 
      LitInt(0) <= n#5
         && 
        LitInt(0) <= n#5
         && _module.Stream.head(_module.__default.Tail(_module._default.FS_Ping$T, 
              $LS($LZ), 
              _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0), 
              n#5))
           == x#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.In#canCall(_module._default.FS_Ping$T, x#0, s#0);
  ensures {:id "id339"} _module.__default.In#canCall(_module._default.FS_Ping$T, x#0, s#0)
     ==> _module.__default.In(_module._default.FS_Ping$T, x#0, s#0)
       || (exists n#6: int :: 
        { _module.__default.Tail(_module._default.FS_Ping$T, $LS($LZ), s#0, n#6) } 
        LitInt(0) <= n#6
           && 
          LitInt(0) <= n#6
           && _module.Stream.head(_module.__default.Tail(_module._default.FS_Ping$T, $LS($LZ), s#0, n#6))
             == x#0);
  ensures {:id "id340"} $Unbox(Apply1(_module._default.FS_Ping$T, TBool, $Heap, P#0, x#0)): bool;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FS_Ping (correctness)"} Impl$$_module.__default.FS__Ping(_module._default.FS_Ping$T: Ty, s#0: DatatypeType, P#0: HandleType, x#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var s##0: DatatypeType;
  var P##0: HandleType;
  var x##0: Box;
  var s##1: DatatypeType;
  var ##s#4: DatatypeType;
  var ##P#2: HandleType;
  var u##0: DatatypeType;
  var s##2: DatatypeType;
  var P##1: HandleType;
  var ##s#5: DatatypeType;
  var ##s#6: DatatypeType;
  var ##P#3: HandleType;
  var ##P#4: HandleType;
  var x##1: Box;
  var s##3: DatatypeType;
  var ##s#7: DatatypeType;
  var ##P#5: HandleType;
  var P##2: HandleType;

    // AddMethodImpl: FS_Ping, Impl$$_module.__default.FS__Ping
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#s0#0: DatatypeType :: 
      { _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), $ih#s0#0, P#0) } 
        { _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), $ih#s0#0, P#0) } 
      true);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(196,21)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    P##0 := P#0;
    call {:id "id341"} Call$$_module.__default.Filter__IsSubStream(_module._default.FS_Ping$T, s##0, P##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(197,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := x#0;
    ##s#4 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#4, Tclass._module.Stream(_module._default.FS_Ping$T), $Heap);
    ##P#2 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#2, Tclass._System.___hTotalFunc1(_module._default.FS_Ping$T, TBool), $Heap);
    assert {:id "id342"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Ping$T, ##s#4, ##P#2)
       ==> _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), ##s#4, ##P#2)
         || (_module.__default.IsAnother#canCall(_module._default.FS_Ping$T, ##s#4, ##P#2)
           ==> _module.__default.IsAnother(_module._default.FS_Ping$T, ##s#4, ##P#2)
             || (exists n#7: int :: 
              { _module.__default.Tail(_module._default.FS_Ping$T, $LS($LZ), ##s#4, n#7) } 
              LitInt(0) <= n#7
                 && 
                LitInt(0) <= n#7
                 && $Unbox(Apply1(_module._default.FS_Ping$T, 
                    TBool, 
                    $Heap, 
                    ##P#2, 
                    _module.Stream.head(_module.__default.Tail(_module._default.FS_Ping$T, $LS($LZ), ##s#4, n#7)))): bool));
    assert {:id "id343"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Ping$T, ##s#4, ##P#2)
       ==> _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), ##s#4, ##P#2)
         || _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LS($LZ)), _module.Stream.tail(##s#4), ##P#2);
    assume _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), ##s#4, ##P#2);
    assume _module.__default.Filter#canCall(_module._default.FS_Ping$T, s#0, P#0);
    assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0));
    assume _module.__default.Filter#canCall(_module._default.FS_Ping$T, s#0, P#0);
    // ProcessCallStmt: CheckSubrange
    s##1 := _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##0 := s#0;
    call {:id "id344"} Call$$_module.__default.Lemma__InSubStream(_module._default.FS_Ping$T, x##0, s##1, u##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(199,23)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##2 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    P##1 := P#0;
    call {:id "id345"} Call$$_module.__default.Filter__AlwaysAnother(_module._default.FS_Ping$T, s##2, P##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(200,3)
    ##s#6 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#6, Tclass._module.Stream(_module._default.FS_Ping$T), $Heap);
    ##P#3 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#3, Tclass._System.___hTotalFunc1(_module._default.FS_Ping$T, TBool), $Heap);
    assert {:id "id346"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Ping$T, ##s#6, ##P#3)
       ==> _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), ##s#6, ##P#3)
         || (_module.__default.IsAnother#canCall(_module._default.FS_Ping$T, ##s#6, ##P#3)
           ==> _module.__default.IsAnother(_module._default.FS_Ping$T, ##s#6, ##P#3)
             || (exists n#8: int :: 
              { _module.__default.Tail(_module._default.FS_Ping$T, $LS($LZ), ##s#6, n#8) } 
              LitInt(0) <= n#8
                 && 
                LitInt(0) <= n#8
                 && $Unbox(Apply1(_module._default.FS_Ping$T, 
                    TBool, 
                    $Heap, 
                    ##P#3, 
                    _module.Stream.head(_module.__default.Tail(_module._default.FS_Ping$T, $LS($LZ), ##s#6, n#8)))): bool));
    assert {:id "id347"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Ping$T, ##s#6, ##P#3)
       ==> _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), ##s#6, ##P#3)
         || _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LS($LZ)), _module.Stream.tail(##s#6), ##P#3);
    assume _module.__default.Filter#canCall(_module._default.FS_Ping$T, s#0, P#0);
    assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0));
    ##s#5 := _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#5, Tclass._module.Stream(_module._default.FS_Ping$T), $Heap);
    ##P#4 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#4, Tclass._System.___hTotalFunc1(_module._default.FS_Ping$T, TBool), $Heap);
    assume _module.__default.AllP#canCall(_module._default.FS_Ping$T, 
      _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0), 
      P#0);
    assume _module.__default.Filter#canCall(_module._default.FS_Ping$T, s#0, P#0)
       && _module.__default.AllP#canCall(_module._default.FS_Ping$T, 
        _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0), 
        P#0);
    assert {:id "id348"} {:subsumption 0} _module.__default.AllP#canCall(_module._default.FS_Ping$T, 
        _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0), 
        P#0)
       ==> _module.__default.AllP(_module._default.FS_Ping$T, 
          $LS($LZ), 
          _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0), 
          P#0)
         || $Unbox(Apply1(_module._default.FS_Ping$T, 
            TBool, 
            $Heap, 
            P#0, 
            _module.Stream.head(_module.__default.Filter(_module._default.FS_Ping$T, $LS($LS($LZ)), s#0, P#0)))): bool;
    assert {:id "id349"} {:subsumption 0} _module.__default.AllP#canCall(_module._default.FS_Ping$T, 
        _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0), 
        P#0)
       ==> _module.__default.AllP(_module._default.FS_Ping$T, 
          $LS($LZ), 
          _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0), 
          P#0)
         || _module.__default.AllP(_module._default.FS_Ping$T, 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.Filter(_module._default.FS_Ping$T, $LS($LS($LZ)), s#0, P#0)), 
          P#0);
    assume {:id "id350"} _module.__default.AllP(_module._default.FS_Ping$T, 
      $LS($LZ), 
      _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0), 
      P#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(201,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := x#0;
    ##s#7 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#7, Tclass._module.Stream(_module._default.FS_Ping$T), $Heap);
    ##P#5 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#5, Tclass._System.___hTotalFunc1(_module._default.FS_Ping$T, TBool), $Heap);
    assert {:id "id351"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Ping$T, ##s#7, ##P#5)
       ==> _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), ##s#7, ##P#5)
         || (_module.__default.IsAnother#canCall(_module._default.FS_Ping$T, ##s#7, ##P#5)
           ==> _module.__default.IsAnother(_module._default.FS_Ping$T, ##s#7, ##P#5)
             || (exists n#9: int :: 
              { _module.__default.Tail(_module._default.FS_Ping$T, $LS($LZ), ##s#7, n#9) } 
              LitInt(0) <= n#9
                 && 
                LitInt(0) <= n#9
                 && $Unbox(Apply1(_module._default.FS_Ping$T, 
                    TBool, 
                    $Heap, 
                    ##P#5, 
                    _module.Stream.head(_module.__default.Tail(_module._default.FS_Ping$T, $LS($LZ), ##s#7, n#9)))): bool));
    assert {:id "id352"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Ping$T, ##s#7, ##P#5)
       ==> _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), ##s#7, ##P#5)
         || _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LS($LZ)), _module.Stream.tail(##s#7), ##P#5);
    assume _module.__default.AlwaysAnother(_module._default.FS_Ping$T, $LS($LZ), ##s#7, ##P#5);
    assume _module.__default.Filter#canCall(_module._default.FS_Ping$T, s#0, P#0);
    assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0));
    assume _module.__default.Filter#canCall(_module._default.FS_Ping$T, s#0, P#0);
    // ProcessCallStmt: CheckSubrange
    s##3 := _module.__default.Filter(_module._default.FS_Ping$T, $LS($LZ), s#0, P#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    P##2 := P#0;
    call {:id "id353"} Call$$_module.__default.Lemma__InAllP(_module._default.FS_Ping$T, x##1, s##3, P##2);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "FS_Pong (well-formedness)"} CheckWellFormed$$_module.__default.FS__Pong(_module._default.FS_Pong$T: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.FS_Pong$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.FS_Pong$T, TBool))
         && $IsAlloc(P#0, Tclass._System.___hTotalFunc1(_module._default.FS_Pong$T, TBool), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.FS_Pong$T)
         && $IsAllocBox(x#0, _module._default.FS_Pong$T, $Heap), 
    k#0: int where LitInt(0) <= k#0);
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FS_Pong (well-formedness)"} CheckWellFormed$$_module.__default.FS__Pong(_module._default.FS_Pong$T: Ty, 
    s#0: DatatypeType, 
    P#0: HandleType, 
    x#0: Box, 
    k#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##P#0: HandleType;
  var ##x#0: Box;
  var ##s#1: DatatypeType;
  var ##s#2: DatatypeType;
  var ##n#0: int;
  var ##x#1: Box;
  var ##s#3: DatatypeType;
  var ##s#4: DatatypeType;
  var ##P#1: HandleType;


    // AddMethodImpl: FS_Pong, CheckWellFormed$$_module.__default.FS__Pong
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap);
    ##P#0 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#0, Tclass._System.___hTotalFunc1(_module._default.FS_Pong$T, TBool), $Heap);
    assume _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, s#0, P#0);
    assume {:id "id354"} _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0);
    ##x#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x#0, _module._default.FS_Pong$T, $Heap);
    ##s#1 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap);
    assume _module.__default.In#canCall(_module._default.FS_Pong$T, x#0, s#0);
    assume {:id "id355"} _module.__default.In(_module._default.FS_Pong$T, x#0, s#0);
    assume {:id "id356"} $Unbox(Apply1(_module._default.FS_Pong$T, TBool, $Heap, P#0, x#0)): bool;
    ##s#2 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#2, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap);
    ##n#0 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.Tail#canCall(_module._default.FS_Pong$T, s#0, k#0);
    assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), s#0, k#0));
    assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), s#0, k#0));
    assume {:id "id357"} _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), s#0, k#0))
       == x#0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##x#1 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x#1, _module._default.FS_Pong$T, $Heap);
    ##s#4 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#4, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap);
    ##P#1 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#1, Tclass._System.___hTotalFunc1(_module._default.FS_Pong$T, TBool), $Heap);
    assert {:id "id358"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, ##s#4, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), ##s#4, ##P#1)
         || (_module.__default.IsAnother#canCall(_module._default.FS_Pong$T, ##s#4, ##P#1)
           ==> _module.__default.IsAnother(_module._default.FS_Pong$T, ##s#4, ##P#1)
             || (exists n#0: int :: 
              { _module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), ##s#4, n#0) } 
              LitInt(0) <= n#0
                 && 
                LitInt(0) <= n#0
                 && $Unbox(Apply1(_module._default.FS_Pong$T, 
                    TBool, 
                    $Heap, 
                    ##P#1, 
                    _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), ##s#4, n#0)))): bool));
    assert {:id "id359"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, ##s#4, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), ##s#4, ##P#1)
         || _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LS($LZ)), _module.Stream.tail(##s#4), ##P#1);
    assume _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), ##s#4, ##P#1);
    assume _module.__default.Filter#canCall(_module._default.FS_Pong$T, s#0, P#0);
    assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0));
    ##s#3 := _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#3, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap);
    assume _module.__default.In#canCall(_module._default.FS_Pong$T, 
      x#0, 
      _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0));
    assume {:id "id360"} _module.__default.In(_module._default.FS_Pong$T, 
      x#0, 
      _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0));
}



procedure {:verboseName "FS_Pong (call)"} Call$$_module.__default.FS__Pong(_module._default.FS_Pong$T: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.FS_Pong$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.FS_Pong$T, TBool))
         && $IsAlloc(P#0, Tclass._System.___hTotalFunc1(_module._default.FS_Pong$T, TBool), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.FS_Pong$T)
         && $IsAllocBox(x#0, _module._default.FS_Pong$T, $Heap), 
    k#0: int where LitInt(0) <= k#0);
  // user-defined preconditions
  requires {:id "id361"} _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0)
       || (_module.__default.IsAnother#canCall(_module._default.FS_Pong$T, s#0, P#0)
         ==> _module.__default.IsAnother(_module._default.FS_Pong$T, s#0, P#0)
           || (exists n#1: int :: 
            { _module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), s#0, n#1) } 
            LitInt(0) <= n#1
               && 
              LitInt(0) <= n#1
               && $Unbox(Apply1(_module._default.FS_Pong$T, 
                  TBool, 
                  $Heap, 
                  P#0, 
                  _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), s#0, n#1)))): bool));
  requires {:id "id362"} _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0)
       || _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LS($LZ)), _module.Stream.tail(s#0), P#0);
  requires {:id "id363"} _module.__default.In#canCall(_module._default.FS_Pong$T, x#0, s#0)
     ==> _module.__default.In(_module._default.FS_Pong$T, x#0, s#0)
       || (exists n#2: int :: 
        { _module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), s#0, n#2) } 
        LitInt(0) <= n#2
           && 
          LitInt(0) <= n#2
           && _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), s#0, n#2))
             == x#0);
  requires {:id "id364"} $Unbox(Apply1(_module._default.FS_Pong$T, TBool, $Heap, P#0, x#0)): bool;
  requires {:id "id365"} _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LS($LZ)), s#0, k#0))
     == x#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Filter#canCall(_module._default.FS_Pong$T, s#0, P#0)
     && _module.__default.In#canCall(_module._default.FS_Pong$T, 
      x#0, 
      _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0));
  free ensures {:id "id366"} _module.__default.In#canCall(_module._default.FS_Pong$T, 
      x#0, 
      _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0))
     && 
    _module.__default.In(_module._default.FS_Pong$T, 
      x#0, 
      _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0))
     && (exists n#3: int :: 
      { _module.__default.Tail(_module._default.FS_Pong$T, 
          $LS($LZ), 
          _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0), 
          n#3) } 
      LitInt(0) <= n#3
         && 
        LitInt(0) <= n#3
         && _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, 
              $LS($LZ), 
              _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0), 
              n#3))
           == x#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "FS_Pong (correctness)"} Impl$$_module.__default.FS__Pong(_module._default.FS_Pong$T: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.FS_Pong$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(_module._default.FS_Pong$T, TBool))
         && $IsAlloc(P#0, Tclass._System.___hTotalFunc1(_module._default.FS_Pong$T, TBool), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module._default.FS_Pong$T)
         && $IsAllocBox(x#0, _module._default.FS_Pong$T, $Heap), 
    k#0: int where LitInt(0) <= k#0)
   returns ($_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id367"} _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, s#0, P#0)
     && 
    _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0)
     && 
    _module.__default.IsAnother(_module._default.FS_Pong$T, s#0, P#0)
     && _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0);
  free requires {:id "id368"} _module.__default.In#canCall(_module._default.FS_Pong$T, x#0, s#0)
     && 
    _module.__default.In(_module._default.FS_Pong$T, x#0, s#0)
     && (exists n#5: int :: 
      { _module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), s#0, n#5) } 
      LitInt(0) <= n#5
         && 
        LitInt(0) <= n#5
         && _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), s#0, n#5))
           == x#0);
  requires {:id "id369"} $Unbox(Apply1(_module._default.FS_Pong$T, TBool, $Heap, P#0, x#0)): bool;
  requires {:id "id370"} _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LS($LZ)), s#0, k#0))
     == x#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Filter#canCall(_module._default.FS_Pong$T, s#0, P#0)
     && _module.__default.In#canCall(_module._default.FS_Pong$T, 
      x#0, 
      _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0));
  ensures {:id "id371"} _module.__default.In#canCall(_module._default.FS_Pong$T, 
      x#0, 
      _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0))
     ==> _module.__default.In(_module._default.FS_Pong$T, 
        x#0, 
        _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0))
       || (exists n#6: int :: 
        { _module.__default.Tail(_module._default.FS_Pong$T, 
            $LS($LZ), 
            _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0), 
            n#6) } 
        LitInt(0) <= n#6
           && 
          LitInt(0) <= n#6
           && _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, 
                $LS($LZ), 
                _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0), 
                n#6))
             == x#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FS_Pong (correctness)"} Impl$$_module.__default.FS__Pong(_module._default.FS_Pong$T: Ty, 
    s#0: DatatypeType, 
    P#0: HandleType, 
    x#0: Box, 
    k#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var defass#fs#0: bool;
  var fs#0: DatatypeType
     where defass#fs#0
       ==> $Is(fs#0, Tclass._module.Stream(_module._default.FS_Pong$T))
         && $IsAlloc(fs#0, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap);
  var ##s#5: DatatypeType;
  var ##P#2: HandleType;
  var ##s#0_0: DatatypeType;
  var ##n#0_0: int;
  var ##s#1_0_0: DatatypeType;
  var ##P#1_0_0: HandleType;
  var ##x#1_0_0_0_0: Box;
  var ##s#1_0_0_0_0: DatatypeType;
  var ##s#1_0_0_0_1: DatatypeType;
  var ##P#1_0_0_0_0: HandleType;
  var x##1_0_0_0_0: Box;
  var s##1_0_0_0_0: DatatypeType;
  var ##x#1_0_0_0_1: Box;
  var ##s#1_0_0_0_2: DatatypeType;
  var s##1_0_0_1_0: DatatypeType;
  var P##1_0_0_1_0: HandleType;
  var x##1_0_0_1_0: Box;
  var k##1_0_0_1_0: int;
  var ##x#1_0_0_1_0: Box;
  var ##s#1_0_0_1_0: DatatypeType;
  var ##s#1_0_0_1_1: DatatypeType;
  var ##P#1_0_0_1_0: HandleType;
  var ##s#1_1_0: DatatypeType;
  var ##P#1_1_0: HandleType;

    // AddMethodImpl: FS_Pong, Impl$$_module.__default.FS__Pong
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#s0#0: DatatypeType, $ih#k0#0: int :: 
      { _module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), $ih#s0#0, $ih#k0#0) } 
      $Is($ih#s0#0, Tclass._module.Stream(_module._default.FS_Pong$T))
           && LitInt(0) <= $ih#k0#0
           && 
          _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), $ih#s0#0, P#0)
           && _module.__default.In(_module._default.FS_Pong$T, x#0, $ih#s0#0)
           && $Unbox(Apply1(_module._default.FS_Pong$T, TBool, $initHeapForallStmt#0, P#0, x#0)): bool
           && _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), $ih#s0#0, $ih#k0#0))
             == x#0
           && 
          0 <= $ih#k0#0
           && $ih#k0#0 < k#0
         ==> _module.__default.In(_module._default.FS_Pong$T, 
          x#0, 
          _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), $ih#s0#0, P#0)));
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(210,10)
    assume true;
    ##s#5 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#5, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap);
    ##P#2 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#2, Tclass._System.___hTotalFunc1(_module._default.FS_Pong$T, TBool), $Heap);
    assert {:id "id372"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, ##s#5, ##P#2)
       ==> _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), ##s#5, ##P#2)
         || (_module.__default.IsAnother#canCall(_module._default.FS_Pong$T, ##s#5, ##P#2)
           ==> _module.__default.IsAnother(_module._default.FS_Pong$T, ##s#5, ##P#2)
             || (exists n#7: int :: 
              { _module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), ##s#5, n#7) } 
              LitInt(0) <= n#7
                 && 
                LitInt(0) <= n#7
                 && $Unbox(Apply1(_module._default.FS_Pong$T, 
                    TBool, 
                    $Heap, 
                    ##P#2, 
                    _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), ##s#5, n#7)))): bool));
    assert {:id "id373"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, ##s#5, ##P#2)
       ==> _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), ##s#5, ##P#2)
         || _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LS($LZ)), _module.Stream.tail(##s#5), ##P#2);
    assume _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), ##s#5, ##P#2);
    assume _module.__default.Filter#canCall(_module._default.FS_Pong$T, s#0, P#0);
    assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0));
    assume _module.__default.Filter#canCall(_module._default.FS_Pong$T, s#0, P#0);
    fs#0 := _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), s#0, P#0);
    defass#fs#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(211,3)
    assume _module.Stream.Cons_q(s#0);
    assume _module.Stream.Cons_q(s#0);
    if (_module.Stream.head(s#0) == x#0)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(212,5)
        assert {:id "id375"} defass#fs#0;
        ##s#0_0 := fs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_0, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap);
        assert {:id "id376"} $Is(LitInt(0), Tclass._System.nat());
        ##n#0_0 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0, Tclass._System.nat(), $Heap);
        assume _module.__default.Tail#canCall(_module._default.FS_Pong$T, fs#0, LitInt(0));
        assume _module.Stream.Cons_q(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), fs#0, LitInt(0)));
        assert {:id "id377"} defass#fs#0;
        assume $IsA#_module.Stream(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), fs#0, LitInt(0)))
           && $IsA#_module.Stream(fs#0)
           && _module.__default.Tail#canCall(_module._default.FS_Pong$T, fs#0, LitInt(0));
        assert {:id "id378"} {:subsumption 0} $Eq#_module.Stream(_module._default.FS_Pong$T, 
          _module._default.FS_Pong$T, 
          $LS($LS($LZ)), 
          _module.__default.Tail(_module._default.FS_Pong$T, $LS($LS($LZ)), fs#0, LitInt(0)), 
          fs#0);
        assume {:id "id379"} $Eq#_module.Stream(_module._default.FS_Pong$T, 
          _module._default.FS_Pong$T, 
          $LS($LS($LZ)), 
          _module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), fs#0, LitInt(0)), 
          fs#0);
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(213,10)
        assume _module.Stream.Cons_q(s#0);
        assume _module.Stream.Cons_q(s#0);
        if ($Unbox(Apply1(_module._default.FS_Pong$T, TBool, $Heap, P#0, _module.Stream.head(s#0))): bool)
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(214,5)
            assert {:id "id380"} defass#fs#0;
            assume _module.Stream.Cons_q(s#0);
            assume _module.Stream.Cons_q(s#0);
            ##s#1_0_0 := _module.Stream.tail(s#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_0, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap);
            ##P#1_0_0 := P#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##P#1_0_0, 
              Tclass._System.___hTotalFunc1(_module._default.FS_Pong$T, TBool), 
              $Heap);
            assert {:id "id381"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, ##s#1_0_0, ##P#1_0_0)
               ==> _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), ##s#1_0_0, ##P#1_0_0)
                 || (_module.__default.IsAnother#canCall(_module._default.FS_Pong$T, ##s#1_0_0, ##P#1_0_0)
                   ==> _module.__default.IsAnother(_module._default.FS_Pong$T, ##s#1_0_0, ##P#1_0_0)
                     || (exists n#1_0_0: int :: 
                      { _module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), ##s#1_0_0, n#1_0_0) } 
                      LitInt(0) <= n#1_0_0
                         && 
                        LitInt(0) <= n#1_0_0
                         && $Unbox(Apply1(_module._default.FS_Pong$T, 
                            TBool, 
                            $Heap, 
                            ##P#1_0_0, 
                            _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), ##s#1_0_0, n#1_0_0)))): bool));
            assert {:id "id382"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, ##s#1_0_0, ##P#1_0_0)
               ==> _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), ##s#1_0_0, ##P#1_0_0)
                 || _module.__default.AlwaysAnother(_module._default.FS_Pong$T, 
                  $LS($LS($LZ)), 
                  _module.Stream.tail(##s#1_0_0), 
                  ##P#1_0_0);
            assume _module.__default.Filter#canCall(_module._default.FS_Pong$T, _module.Stream.tail(s#0), P#0);
            assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0));
            assume $IsA#_module.Stream(fs#0)
               && 
              _module.Stream.Cons_q(s#0)
               && 
              _module.Stream.Cons_q(s#0)
               && _module.__default.Filter#canCall(_module._default.FS_Pong$T, _module.Stream.tail(s#0), P#0);
            assert {:id "id383"} {:subsumption 0} $Eq#_module.Stream(_module._default.FS_Pong$T, 
              _module._default.FS_Pong$T, 
              $LS($LS($LZ)), 
              fs#0, 
              #_module.Stream.Cons(_module.Stream.head(s#0), 
                _module.__default.Filter(_module._default.FS_Pong$T, $LS($LS($LZ)), _module.Stream.tail(s#0), P#0)));
            assume {:id "id384"} $Eq#_module.Stream(_module._default.FS_Pong$T, 
              _module._default.FS_Pong$T, 
              $LS($LS($LZ)), 
              fs#0, 
              #_module.Stream.Cons(_module.Stream.head(s#0), 
                _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0)));
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(215,5)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(215,5)
                assume true;
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(215,5)
                assume true;
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(215,5)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(217,18)
                // TrCallStmt: Before ProcessCallStmt
                assume _module.Stream.Cons_q(s#0);
                assume _module.Stream.Cons_q(s#0);
                // ProcessCallStmt: CheckSubrange
                s##1_0_0_1_0 := _module.Stream.tail(s#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                P##1_0_0_1_0 := P#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                x##1_0_0_1_0 := x#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id394"} $Is(k#0 - 1, Tclass._System.nat());
                k##1_0_0_1_0 := k#0 - 1;
                assert {:id "id395"} 0 <= k#0 || k##1_0_0_1_0 == k#0;
                assert {:id "id396"} k##1_0_0_1_0 < k#0;
                call {:id "id397"} Call$$_module.__default.FS__Pong(_module._default.FS_Pong$T, s##1_0_0_1_0, P##1_0_0_1_0, x##1_0_0_1_0, k##1_0_0_1_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(215,5)
                ##x#1_0_0_1_0 := x#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##x#1_0_0_1_0, _module._default.FS_Pong$T, $Heap);
                assume _module.Stream.Cons_q(s#0);
                ##s#1_0_0_1_1 := _module.Stream.tail(s#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#1_0_0_1_1, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap);
                ##P#1_0_0_1_0 := P#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##P#1_0_0_1_0, 
                  Tclass._System.___hTotalFunc1(_module._default.FS_Pong$T, TBool), 
                  $Heap);
                assert {:id "id398"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, ##s#1_0_0_1_1, ##P#1_0_0_1_0)
                   ==> _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), ##s#1_0_0_1_1, ##P#1_0_0_1_0)
                     || (_module.__default.IsAnother#canCall(_module._default.FS_Pong$T, ##s#1_0_0_1_1, ##P#1_0_0_1_0)
                       ==> _module.__default.IsAnother(_module._default.FS_Pong$T, ##s#1_0_0_1_1, ##P#1_0_0_1_0)
                         || (exists n#1_0_0_1_0: int :: 
                          { _module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), ##s#1_0_0_1_1, n#1_0_0_1_0) } 
                          LitInt(0) <= n#1_0_0_1_0
                             && 
                            LitInt(0) <= n#1_0_0_1_0
                             && $Unbox(Apply1(_module._default.FS_Pong$T, 
                                TBool, 
                                $Heap, 
                                ##P#1_0_0_1_0, 
                                _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), ##s#1_0_0_1_1, n#1_0_0_1_0)))): bool));
                assert {:id "id399"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, ##s#1_0_0_1_1, ##P#1_0_0_1_0)
                   ==> _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), ##s#1_0_0_1_1, ##P#1_0_0_1_0)
                     || _module.__default.AlwaysAnother(_module._default.FS_Pong$T, 
                      $LS($LS($LZ)), 
                      _module.Stream.tail(##s#1_0_0_1_1), 
                      ##P#1_0_0_1_0);
                assume _module.__default.Filter#canCall(_module._default.FS_Pong$T, _module.Stream.tail(s#0), P#0);
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0));
                ##s#1_0_0_1_0 := _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#1_0_0_1_0, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap);
                assume _module.__default.In#canCall(_module._default.FS_Pong$T, 
                  x#0, 
                  _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0));
                assume _module.Stream.Cons_q(s#0)
                   && _module.__default.Filter#canCall(_module._default.FS_Pong$T, _module.Stream.tail(s#0), P#0)
                   && _module.__default.In#canCall(_module._default.FS_Pong$T, 
                    x#0, 
                    _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0));
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(215,5)
                assert {:id "id400"} {:subsumption 0} Lit(true)
                   == _module.__default.In(_module._default.FS_Pong$T, 
                    x#0, 
                    _module.__default.Filter(_module._default.FS_Pong$T, $LS($LS($LZ)), _module.Stream.tail(s#0), P#0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(215,5)
                ##x#1_0_0_0_0 := x#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##x#1_0_0_0_0, _module._default.FS_Pong$T, $Heap);
                assume _module.Stream.Cons_q(s#0);
                ##s#1_0_0_0_1 := _module.Stream.tail(s#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#1_0_0_0_1, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap);
                ##P#1_0_0_0_0 := P#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##P#1_0_0_0_0, 
                  Tclass._System.___hTotalFunc1(_module._default.FS_Pong$T, TBool), 
                  $Heap);
                assume {:id "id385"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, ##s#1_0_0_0_1, ##P#1_0_0_0_0)
                   ==> _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), ##s#1_0_0_0_1, ##P#1_0_0_0_0)
                     || (_module.__default.IsAnother#canCall(_module._default.FS_Pong$T, ##s#1_0_0_0_1, ##P#1_0_0_0_0)
                       ==> _module.__default.IsAnother(_module._default.FS_Pong$T, ##s#1_0_0_0_1, ##P#1_0_0_0_0)
                         || (exists n#1_0_0_0_0: int :: 
                          { _module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), ##s#1_0_0_0_1, n#1_0_0_0_0) } 
                          LitInt(0) <= n#1_0_0_0_0
                             && 
                            LitInt(0) <= n#1_0_0_0_0
                             && $Unbox(Apply1(_module._default.FS_Pong$T, 
                                TBool, 
                                $Heap, 
                                ##P#1_0_0_0_0, 
                                _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), ##s#1_0_0_0_1, n#1_0_0_0_0)))): bool));
                assume {:id "id386"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, ##s#1_0_0_0_1, ##P#1_0_0_0_0)
                   ==> _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), ##s#1_0_0_0_1, ##P#1_0_0_0_0)
                     || _module.__default.AlwaysAnother(_module._default.FS_Pong$T, 
                      $LS($LS($LZ)), 
                      _module.Stream.tail(##s#1_0_0_0_1), 
                      ##P#1_0_0_0_0);
                assume _module.__default.Filter#canCall(_module._default.FS_Pong$T, _module.Stream.tail(s#0), P#0);
                assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0));
                ##s#1_0_0_0_0 := _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#1_0_0_0_0, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap);
                assume _module.__default.In#canCall(_module._default.FS_Pong$T, 
                  x#0, 
                  _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0));
                assume _module.Stream.Cons_q(s#0)
                   && _module.__default.Filter#canCall(_module._default.FS_Pong$T, _module.Stream.tail(s#0), P#0)
                   && _module.__default.In#canCall(_module._default.FS_Pong$T, 
                    x#0, 
                    _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(215,5)
                assume {:id "id387"} _module.__default.In(_module._default.FS_Pong$T, 
                  x#0, 
                  _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(215,5)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(219,11)
                assert {:id "id388"} defass#fs#0;
                assume _module.Stream.Cons_q(fs#0);
                assume _module.Stream.Cons_q(fs#0);
                assert {:id "id389"} _module.Stream.head(fs#0) != x#0;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(219,45)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                x##1_0_0_0_0 := x#0;
                assert {:id "id390"} defass#fs#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##1_0_0_0_0 := fs#0;
                call {:id "id391"} Call$$_module.__default.Lemma__InTail(_module._default.FS_Pong$T, x##1_0_0_0_0, s##1_0_0_0_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(215,5)
                ##x#1_0_0_0_1 := x#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##x#1_0_0_0_1, _module._default.FS_Pong$T, $Heap);
                assert {:id "id392"} defass#fs#0;
                ##s#1_0_0_0_2 := fs#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#1_0_0_0_2, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap);
                assume _module.__default.In#canCall(_module._default.FS_Pong$T, x#0, fs#0);
                assume _module.__default.In#canCall(_module._default.FS_Pong$T, x#0, fs#0);
                // ----- assert line1 ==> line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(215,5)
                assert {:id "id393"} {:subsumption 0} _module.__default.In(_module._default.FS_Pong$T, 
                    x#0, 
                    _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0))
                   ==> 
                  _module.__default.In#canCall(_module._default.FS_Pong$T, x#0, fs#0)
                   ==> _module.__default.In(_module._default.FS_Pong$T, x#0, fs#0)
                     || (exists n#1_0_0_0_1: int :: 
                      { _module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), fs#0, n#1_0_0_0_1) } 
                      LitInt(0) <= n#1_0_0_0_1
                         && 
                        LitInt(0) <= n#1_0_0_0_1
                         && _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), fs#0, n#1_0_0_0_1))
                           == x#0);
                assume false;
            }

            assume {:id "id401"} true ==> _module.__default.In(_module._default.FS_Pong$T, x#0, fs#0);
        }
        else
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(223,5)
            assert {:id "id402"} defass#fs#0;
            assume _module.Stream.Cons_q(s#0);
            ##s#1_1_0 := _module.Stream.tail(s#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_1_0, Tclass._module.Stream(_module._default.FS_Pong$T), $Heap);
            ##P#1_1_0 := P#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##P#1_1_0, 
              Tclass._System.___hTotalFunc1(_module._default.FS_Pong$T, TBool), 
              $Heap);
            assert {:id "id403"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, ##s#1_1_0, ##P#1_1_0)
               ==> _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), ##s#1_1_0, ##P#1_1_0)
                 || (_module.__default.IsAnother#canCall(_module._default.FS_Pong$T, ##s#1_1_0, ##P#1_1_0)
                   ==> _module.__default.IsAnother(_module._default.FS_Pong$T, ##s#1_1_0, ##P#1_1_0)
                     || (exists n#1_1_0: int :: 
                      { _module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), ##s#1_1_0, n#1_1_0) } 
                      LitInt(0) <= n#1_1_0
                         && 
                        LitInt(0) <= n#1_1_0
                         && $Unbox(Apply1(_module._default.FS_Pong$T, 
                            TBool, 
                            $Heap, 
                            ##P#1_1_0, 
                            _module.Stream.head(_module.__default.Tail(_module._default.FS_Pong$T, $LS($LZ), ##s#1_1_0, n#1_1_0)))): bool));
            assert {:id "id404"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.FS_Pong$T, ##s#1_1_0, ##P#1_1_0)
               ==> _module.__default.AlwaysAnother(_module._default.FS_Pong$T, $LS($LZ), ##s#1_1_0, ##P#1_1_0)
                 || _module.__default.AlwaysAnother(_module._default.FS_Pong$T, 
                  $LS($LS($LZ)), 
                  _module.Stream.tail(##s#1_1_0), 
                  ##P#1_1_0);
            assume _module.__default.Filter#canCall(_module._default.FS_Pong$T, _module.Stream.tail(s#0), P#0);
            assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0));
            assume $IsA#_module.Stream(fs#0)
               && $IsA#_module.Stream(_module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0))
               && 
              _module.Stream.Cons_q(s#0)
               && _module.__default.Filter#canCall(_module._default.FS_Pong$T, _module.Stream.tail(s#0), P#0);
            assert {:id "id405"} {:subsumption 0} $Eq#_module.Stream(_module._default.FS_Pong$T, 
              _module._default.FS_Pong$T, 
              $LS($LS($LZ)), 
              fs#0, 
              _module.__default.Filter(_module._default.FS_Pong$T, $LS($LS($LZ)), _module.Stream.tail(s#0), P#0));
            assume {:id "id406"} $Eq#_module.Stream(_module._default.FS_Pong$T, 
              _module._default.FS_Pong$T, 
              $LS($LS($LZ)), 
              fs#0, 
              _module.__default.Filter(_module._default.FS_Pong$T, $LS($LZ), _module.Stream.tail(s#0), P#0));
        }
    }
}



// function declaration for _module._default.Increasing
function _module.__default.Increasing(_module._default.Increasing$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    ord#0: HandleType)
   : bool
uses {
// definition axiom for _module.__default.Increasing (revealed)
axiom {:id "id407"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Increasing$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      s#0: DatatypeType, 
      ord#0: HandleType :: 
    { _module.__default.Increasing(_module._default.Increasing$_T0, $LS($ly), s#0, ord#0), $IsGoodHeap($Heap) } 
    _module.__default.Increasing#canCall(_module._default.Increasing$_T0, s#0, ord#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.Increasing$_T0))
           && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.Increasing$_T0, TInt)))
       ==> _module.Stream.Cons_q(s#0)
         && 
        _module.Stream.Cons_q(s#0)
         && _module.Stream.Cons_q(_module.Stream.tail(s#0))
         && ($Unbox(Apply1(_module._default.Increasing$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
             < $Unbox(Apply1(_module._default.Increasing$_T0, 
                TInt, 
                $Heap, 
                ord#0, 
                _module.Stream.head(_module.Stream.tail(s#0)))): int
           ==> _module.Stream.Cons_q(s#0)
             && _module.__default.Increasing#canCall(_module._default.Increasing$_T0, _module.Stream.tail(s#0), ord#0))
         && _module.__default.Increasing(_module._default.Increasing$_T0, $LS($ly), s#0, ord#0)
           == ($Unbox(Apply1(_module._default.Increasing$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
               < $Unbox(Apply1(_module._default.Increasing$_T0, 
                  TInt, 
                  $Heap, 
                  ord#0, 
                  _module.Stream.head(_module.Stream.tail(s#0)))): int
             && _module.__default.Increasing(_module._default.Increasing$_T0, $ly, _module.Stream.tail(s#0), ord#0)));
}

function _module.__default.Increasing#canCall(_module._default.Increasing$_T0: Ty, s#0: DatatypeType, ord#0: HandleType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.Increasing$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    ord#0: HandleType :: 
  { _module.__default.Increasing(_module._default.Increasing$_T0, $LS($ly), s#0, ord#0) } 
  _module.__default.Increasing(_module._default.Increasing$_T0, $LS($ly), s#0, ord#0)
     == _module.__default.Increasing(_module._default.Increasing$_T0, $ly, s#0, ord#0));

// fuel synonym axiom
axiom (forall _module._default.Increasing$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    ord#0: HandleType :: 
  { _module.__default.Increasing(_module._default.Increasing$_T0, AsFuelBottom($ly), s#0, ord#0) } 
  _module.__default.Increasing(_module._default.Increasing$_T0, $ly, s#0, ord#0)
     == _module.__default.Increasing(_module._default.Increasing$_T0, $LZ, s#0, ord#0));

function _module.__default.Increasing#requires(Ty, LayerType, DatatypeType, HandleType) : bool;

// #requires axiom for _module.__default.Increasing
axiom (forall _module._default.Increasing$_T0: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    s#0: DatatypeType, 
    ord#0: HandleType :: 
  { _module.__default.Increasing#requires(_module._default.Increasing$_T0, $ly, s#0, ord#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(s#0, Tclass._module.Stream(_module._default.Increasing$_T0))
       && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.Increasing$_T0, TInt))
     ==> _module.__default.Increasing#requires(_module._default.Increasing$_T0, $ly, s#0, ord#0)
       == true);

// 1st prefix predicate axiom for _module.__default.Increasing_h
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.Increasing#$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      ord#0: HandleType :: 
    { _module.__default.Increasing(_module._default.Increasing#$_T0, $LS($ly), s#0, ord#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.Increasing#$_T0))
         && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.Increasing#$_T0, TInt))
         && _module.__default.Increasing(_module._default.Increasing#$_T0, $LS($ly), s#0, ord#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), _k#0, s#0, ord#0) } 
        _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), _k#0, s#0, ord#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.Increasing#$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      ord#0: HandleType :: 
    { _module.__default.Increasing(_module._default.Increasing#$_T0, $LS($ly), s#0, ord#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.Increasing#$_T0))
         && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.Increasing#$_T0, TInt))
         && (forall _k#0: Box :: 
          { _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), _k#0, s#0, ord#0) } 
          _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), _k#0, s#0, ord#0))
       ==> _module.__default.Increasing(_module._default.Increasing#$_T0, $LS($ly), s#0, ord#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.Increasing#$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      ord#0: HandleType, 
      _k#0: Box :: 
    { _module.__default.Increasing_h(_module._default.Increasing#$_T0, $ly, _k#0, s#0, ord#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.Increasing#$_T0))
         && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.Increasing#$_T0, TInt))
         && _k#0 == ORD#FromNat(0)
       ==> _module.__default.Increasing_h(_module._default.Increasing#$_T0, $ly, _k#0, s#0, ord#0));

procedure {:verboseName "Increasing (well-formedness)"} CheckWellformed$$_module.__default.Increasing(_module._default.Increasing$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Increasing$_T0)), 
    ord#0: HandleType
       where $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.Increasing$_T0, TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Increasing#
function _module.__default.Increasing_h(_module._default.Increasing#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    s#0: DatatypeType, 
    ord#0: HandleType)
   : bool
uses {
// definition axiom for _module.__default.Increasing_h (revealed)
axiom {:id "id409"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.Increasing#$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      _k#0: Box, 
      s#0: DatatypeType, 
      ord#0: HandleType :: 
    { _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), _k#0, s#0, ord#0), $IsGoodHeap($Heap) } 
    _module.__default.Increasing_h#canCall(_module._default.Increasing#$_T0, _k#0, s#0, ord#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.Increasing#$_T0))
           && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.Increasing#$_T0, TInt)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.Stream.Cons_q(s#0)
             && 
            _module.Stream.Cons_q(s#0)
             && _module.Stream.Cons_q(_module.Stream.tail(s#0))
             && ($Unbox(Apply1(_module._default.Increasing#$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
                 < $Unbox(Apply1(_module._default.Increasing#$_T0, 
                    TInt, 
                    $Heap, 
                    ord#0, 
                    _module.Stream.head(_module.Stream.tail(s#0)))): int
               ==> _module.Stream.Cons_q(s#0)
                 && _module.__default.Increasing_h#canCall(_module._default.Increasing#$_T0, 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Stream.tail(s#0), 
                  ord#0)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> $Unbox(Apply1(_module._default.Increasing#$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
               < $Unbox(Apply1(_module._default.Increasing#$_T0, 
                  TInt, 
                  $Heap, 
                  ord#0, 
                  _module.Stream.head(_module.Stream.tail(s#0)))): int
             && _module.__default.Increasing_h(_module._default.Increasing#$_T0, 
              $ly, 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              _module.Stream.tail(s#0), 
              ord#0))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.Increasing_h(_module._default.Increasing#$_T0, $ly, _k'#0, s#0, ord#0) } 
            ORD#Less(_k'#0, _k#0)
               ==> _module.__default.Increasing_h#canCall(_module._default.Increasing#$_T0, _k'#0, s#0, ord#0)))
         && _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), _k#0, s#0, ord#0)
           == ((0 < ORD#Offset(_k#0)
               ==> $Unbox(Apply1(_module._default.Increasing#$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
                   < $Unbox(Apply1(_module._default.Increasing#$_T0, 
                      TInt, 
                      $Heap, 
                      ord#0, 
                      _module.Stream.head(_module.Stream.tail(s#0)))): int
                 && _module.__default.Increasing_h(_module._default.Increasing#$_T0, 
                  $ly, 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Stream.tail(s#0), 
                  ord#0))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.Increasing_h(_module._default.Increasing#$_T0, $ly, _k'#0, s#0, ord#0) } 
                ORD#Less(_k'#0, _k#0)
                   ==> _module.__default.Increasing_h(_module._default.Increasing#$_T0, $ly, _k'#0, s#0, ord#0)))));
// definition axiom for _module.__default.Increasing_h for decreasing-related literals (revealed)
axiom {:id "id410"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.Increasing#$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      _k#0: Box, 
      s#0: DatatypeType, 
      ord#0: HandleType :: 
    {:weight 3} { _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), Lit(_k#0), s#0, ord#0), $IsGoodHeap($Heap) } 
    _module.__default.Increasing_h#canCall(_module._default.Increasing#$_T0, Lit(_k#0), s#0, ord#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.Increasing#$_T0))
           && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.Increasing#$_T0, TInt)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.Stream.Cons_q(s#0)
             && 
            _module.Stream.Cons_q(s#0)
             && _module.Stream.Cons_q(_module.Stream.tail(s#0))
             && ($Unbox(Apply1(_module._default.Increasing#$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
                 < $Unbox(Apply1(_module._default.Increasing#$_T0, 
                    TInt, 
                    $Heap, 
                    ord#0, 
                    _module.Stream.head(_module.Stream.tail(s#0)))): int
               ==> _module.Stream.Cons_q(s#0)
                 && _module.__default.Increasing_h#canCall(_module._default.Increasing#$_T0, 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Stream.tail(s#0), 
                  ord#0)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> $Unbox(Apply1(_module._default.Increasing#$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
               < $Unbox(Apply1(_module._default.Increasing#$_T0, 
                  TInt, 
                  $Heap, 
                  ord#0, 
                  _module.Stream.head(_module.Stream.tail(s#0)))): int
             && _module.__default.Increasing_h(_module._default.Increasing#$_T0, 
              $LS($ly), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              _module.Stream.tail(s#0), 
              ord#0))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), _k'#1, s#0, ord#0) } 
            ORD#Less(_k'#1, _k#0)
               ==> _module.__default.Increasing_h#canCall(_module._default.Increasing#$_T0, _k'#1, s#0, ord#0)))
         && _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), Lit(_k#0), s#0, ord#0)
           == ((0 < ORD#Offset(_k#0)
               ==> $Unbox(Apply1(_module._default.Increasing#$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
                   < $Unbox(Apply1(_module._default.Increasing#$_T0, 
                      TInt, 
                      $Heap, 
                      ord#0, 
                      _module.Stream.head(_module.Stream.tail(s#0)))): int
                 && _module.__default.Increasing_h(_module._default.Increasing#$_T0, 
                  $LS($ly), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Stream.tail(s#0), 
                  ord#0))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), _k'#1, s#0, ord#0) } 
                ORD#Less(_k'#1, _k#0)
                   ==> _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), _k'#1, s#0, ord#0)))));
// definition axiom for _module.__default.Increasing_h for all literals (revealed)
axiom {:id "id411"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.Increasing#$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      _k#0: Box, 
      s#0: DatatypeType, 
      ord#0: HandleType :: 
    {:weight 3} { _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), Lit(_k#0), Lit(s#0), Lit(ord#0)), $IsGoodHeap($Heap) } 
    _module.__default.Increasing_h#canCall(_module._default.Increasing#$_T0, Lit(_k#0), Lit(s#0), Lit(ord#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.Increasing#$_T0))
           && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.Increasing#$_T0, TInt)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.Stream.Cons_q(Lit(s#0))
             && 
            _module.Stream.Cons_q(Lit(s#0))
             && _module.Stream.Cons_q(Lit(_module.Stream.tail(Lit(s#0))))
             && ($Unbox(Apply1(_module._default.Increasing#$_T0, 
                    TInt, 
                    $Heap, 
                    Lit(ord#0), 
                    Lit(_module.Stream.head(Lit(s#0))))): int
                 < $Unbox(Apply1(_module._default.Increasing#$_T0, 
                    TInt, 
                    $Heap, 
                    Lit(ord#0), 
                    Lit(_module.Stream.head(Lit(_module.Stream.tail(Lit(s#0))))))): int
               ==> _module.Stream.Cons_q(Lit(s#0))
                 && _module.__default.Increasing_h#canCall(_module._default.Increasing#$_T0, 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(_module.Stream.tail(Lit(s#0))), 
                  Lit(ord#0))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> $Unbox(Apply1(_module._default.Increasing#$_T0, 
                  TInt, 
                  $Heap, 
                  Lit(ord#0), 
                  Lit(_module.Stream.head(Lit(s#0))))): int
               < $Unbox(Apply1(_module._default.Increasing#$_T0, 
                  TInt, 
                  $Heap, 
                  Lit(ord#0), 
                  Lit(_module.Stream.head(Lit(_module.Stream.tail(Lit(s#0))))))): int
             && _module.__default.Increasing_h(_module._default.Increasing#$_T0, 
              $LS($ly), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              Lit(_module.Stream.tail(Lit(s#0))), 
              Lit(ord#0)))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), _k'#2, s#0, ord#0) } 
            ORD#Less(_k'#2, _k#0)
               ==> _module.__default.Increasing_h#canCall(_module._default.Increasing#$_T0, _k'#2, s#0, ord#0)))
         && _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), Lit(_k#0), Lit(s#0), Lit(ord#0))
           == ((0 < ORD#Offset(_k#0)
               ==> $Unbox(Apply1(_module._default.Increasing#$_T0, 
                      TInt, 
                      $Heap, 
                      Lit(ord#0), 
                      Lit(_module.Stream.head(Lit(s#0))))): int
                   < $Unbox(Apply1(_module._default.Increasing#$_T0, 
                      TInt, 
                      $Heap, 
                      Lit(ord#0), 
                      Lit(_module.Stream.head(Lit(_module.Stream.tail(Lit(s#0))))))): int
                 && _module.__default.Increasing_h(_module._default.Increasing#$_T0, 
                  $LS($ly), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(_module.Stream.tail(Lit(s#0))), 
                  Lit(ord#0)))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), _k'#2, s#0, ord#0) } 
                ORD#Less(_k'#2, _k#0)
                   ==> _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), _k'#2, s#0, ord#0)))));
}

function _module.__default.Increasing_h#canCall(_module._default.Increasing#$_T0: Ty, 
    _k#0: Box, 
    s#0: DatatypeType, 
    ord#0: HandleType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.Increasing#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    s#0: DatatypeType, 
    ord#0: HandleType :: 
  { _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), _k#0, s#0, ord#0) } 
  _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LS($ly), _k#0, s#0, ord#0)
     == _module.__default.Increasing_h(_module._default.Increasing#$_T0, $ly, _k#0, s#0, ord#0));

// fuel synonym axiom
axiom (forall _module._default.Increasing#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    s#0: DatatypeType, 
    ord#0: HandleType :: 
  { _module.__default.Increasing_h(_module._default.Increasing#$_T0, AsFuelBottom($ly), _k#0, s#0, ord#0) } 
  _module.__default.Increasing_h(_module._default.Increasing#$_T0, $ly, _k#0, s#0, ord#0)
     == _module.__default.Increasing_h(_module._default.Increasing#$_T0, $LZ, _k#0, s#0, ord#0));

function _module.__default.Increasing_h#requires(Ty, LayerType, Box, DatatypeType, HandleType) : bool;

// #requires axiom for _module.__default.Increasing_h
axiom (forall _module._default.Increasing#$_T0: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    _k#0: Box, 
    s#0: DatatypeType, 
    ord#0: HandleType :: 
  { _module.__default.Increasing_h#requires(_module._default.Increasing#$_T0, $ly, _k#0, s#0, ord#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(s#0, Tclass._module.Stream(_module._default.Increasing#$_T0))
       && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.Increasing#$_T0, TInt))
     ==> _module.__default.Increasing_h#requires(_module._default.Increasing#$_T0, $ly, _k#0, s#0, ord#0)
       == true);

// function declaration for _module._default.IncrFrom
function _module.__default.IncrFrom(_module._default.IncrFrom$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    low#0: int, 
    ord#0: HandleType)
   : bool
uses {
// definition axiom for _module.__default.IncrFrom (revealed)
axiom {:id "id412"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.IncrFrom$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      s#0: DatatypeType, 
      low#0: int, 
      ord#0: HandleType :: 
    { _module.__default.IncrFrom(_module._default.IncrFrom$_T0, $LS($ly), s#0, low#0, ord#0), $IsGoodHeap($Heap) } 
    _module.__default.IncrFrom#canCall(_module._default.IncrFrom$_T0, s#0, low#0, ord#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(s#0, Tclass._module.Stream(_module._default.IncrFrom$_T0))
           && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.IncrFrom$_T0, TInt)))
       ==> _module.Stream.Cons_q(s#0)
         && (low#0
             <= $Unbox(Apply1(_module._default.IncrFrom$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
           ==> _module.Stream.Cons_q(s#0)
             && _module.Stream.Cons_q(s#0)
             && _module.__default.IncrFrom#canCall(_module._default.IncrFrom$_T0, 
              _module.Stream.tail(s#0), 
              $Unbox(Apply1(_module._default.IncrFrom$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
                 + 1, 
              ord#0))
         && _module.__default.IncrFrom(_module._default.IncrFrom$_T0, $LS($ly), s#0, low#0, ord#0)
           == (low#0
               <= $Unbox(Apply1(_module._default.IncrFrom$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
             && _module.__default.IncrFrom(_module._default.IncrFrom$_T0, 
              $ly, 
              _module.Stream.tail(s#0), 
              $Unbox(Apply1(_module._default.IncrFrom$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
                 + 1, 
              ord#0)));
}

function _module.__default.IncrFrom#canCall(_module._default.IncrFrom$_T0: Ty, 
    s#0: DatatypeType, 
    low#0: int, 
    ord#0: HandleType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.IncrFrom$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    low#0: int, 
    ord#0: HandleType :: 
  { _module.__default.IncrFrom(_module._default.IncrFrom$_T0, $LS($ly), s#0, low#0, ord#0) } 
  _module.__default.IncrFrom(_module._default.IncrFrom$_T0, $LS($ly), s#0, low#0, ord#0)
     == _module.__default.IncrFrom(_module._default.IncrFrom$_T0, $ly, s#0, low#0, ord#0));

// fuel synonym axiom
axiom (forall _module._default.IncrFrom$_T0: Ty, 
    $ly: LayerType, 
    s#0: DatatypeType, 
    low#0: int, 
    ord#0: HandleType :: 
  { _module.__default.IncrFrom(_module._default.IncrFrom$_T0, AsFuelBottom($ly), s#0, low#0, ord#0) } 
  _module.__default.IncrFrom(_module._default.IncrFrom$_T0, $ly, s#0, low#0, ord#0)
     == _module.__default.IncrFrom(_module._default.IncrFrom$_T0, $LZ, s#0, low#0, ord#0));

function _module.__default.IncrFrom#requires(Ty, LayerType, DatatypeType, int, HandleType) : bool;

// #requires axiom for _module.__default.IncrFrom
axiom (forall _module._default.IncrFrom$_T0: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    s#0: DatatypeType, 
    low#0: int, 
    ord#0: HandleType :: 
  { _module.__default.IncrFrom#requires(_module._default.IncrFrom$_T0, $ly, s#0, low#0, ord#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(s#0, Tclass._module.Stream(_module._default.IncrFrom$_T0))
       && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.IncrFrom$_T0, TInt))
     ==> _module.__default.IncrFrom#requires(_module._default.IncrFrom$_T0, $ly, s#0, low#0, ord#0)
       == true);

// 1st prefix predicate axiom for _module.__default.IncrFrom_h
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.IncrFrom#$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      low#0: int, 
      ord#0: HandleType :: 
    { _module.__default.IncrFrom(_module._default.IncrFrom#$_T0, $LS($ly), s#0, low#0, ord#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.IncrFrom#$_T0))
         && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.IncrFrom#$_T0, TInt))
         && _module.__default.IncrFrom(_module._default.IncrFrom#$_T0, $LS($ly), s#0, low#0, ord#0)
       ==> (forall _k#0: int :: 
        { _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, $LS($ly), _k#0, s#0, low#0, ord#0) } 
        LitInt(0) <= _k#0
           ==> _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, $LS($ly), _k#0, s#0, low#0, ord#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.IncrFrom#$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      low#0: int, 
      ord#0: HandleType :: 
    { _module.__default.IncrFrom(_module._default.IncrFrom#$_T0, $LS($ly), s#0, low#0, ord#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.IncrFrom#$_T0))
         && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.IncrFrom#$_T0, TInt))
         && (forall _k#0: int :: 
          { _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, $LS($ly), _k#0, s#0, low#0, ord#0) } 
          LitInt(0) <= _k#0
             ==> _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, $LS($ly), _k#0, s#0, low#0, ord#0))
       ==> _module.__default.IncrFrom(_module._default.IncrFrom#$_T0, $LS($ly), s#0, low#0, ord#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.IncrFrom#$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      low#0: int, 
      ord#0: HandleType, 
      _k#0: int :: 
    { _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, $ly, _k#0, s#0, low#0, ord#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.IncrFrom#$_T0))
         && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.IncrFrom#$_T0, TInt))
         && _k#0 == 0
       ==> _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, $ly, _k#0, s#0, low#0, ord#0));

procedure {:verboseName "IncrFrom (well-formedness)"} CheckWellformed$$_module.__default.IncrFrom(_module._default.IncrFrom$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.IncrFrom$_T0)), 
    low#0: int, 
    ord#0: HandleType
       where $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.IncrFrom$_T0, TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.IncrFrom#
function _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: int, 
    s#0: DatatypeType, 
    low#0: int, 
    ord#0: HandleType)
   : bool
uses {
// definition axiom for _module.__default.IncrFrom_h (revealed)
axiom {:id "id414"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.IncrFrom#$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      _k#0: int, 
      s#0: DatatypeType, 
      low#0: int, 
      ord#0: HandleType :: 
    { _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, $LS($ly), _k#0, s#0, low#0, ord#0), $IsGoodHeap($Heap) } 
    _module.__default.IncrFrom_h#canCall(_module._default.IncrFrom#$_T0, _k#0, s#0, low#0, ord#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && LitInt(0) <= _k#0
           && $Is(s#0, Tclass._module.Stream(_module._default.IncrFrom#$_T0))
           && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.IncrFrom#$_T0, TInt)))
       ==> (0 < _k#0
           ==> _module.Stream.Cons_q(s#0)
             && (low#0
                 <= $Unbox(Apply1(_module._default.IncrFrom#$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
               ==> _module.Stream.Cons_q(s#0)
                 && _module.Stream.Cons_q(s#0)
                 && _module.__default.IncrFrom_h#canCall(_module._default.IncrFrom#$_T0, 
                  _k#0 - 1, 
                  _module.Stream.tail(s#0), 
                  $Unbox(Apply1(_module._default.IncrFrom#$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
                     + 1, 
                  ord#0)))
         && _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, $LS($ly), _k#0, s#0, low#0, ord#0)
           == (0 < _k#0
             ==> low#0
                 <= $Unbox(Apply1(_module._default.IncrFrom#$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
               && _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, 
                $ly, 
                _k#0 - 1, 
                _module.Stream.tail(s#0), 
                $Unbox(Apply1(_module._default.IncrFrom#$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
                   + 1, 
                ord#0)));
// definition axiom for _module.__default.IncrFrom_h for decreasing-related literals (revealed)
axiom {:id "id415"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.IncrFrom#$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      _k#0: int, 
      s#0: DatatypeType, 
      low#0: int, 
      ord#0: HandleType :: 
    {:weight 3} { _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, $LS($ly), LitInt(_k#0), s#0, low#0, ord#0), $IsGoodHeap($Heap) } 
    _module.__default.IncrFrom_h#canCall(_module._default.IncrFrom#$_T0, LitInt(_k#0), s#0, low#0, ord#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && LitInt(0) <= _k#0
           && $Is(s#0, Tclass._module.Stream(_module._default.IncrFrom#$_T0))
           && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.IncrFrom#$_T0, TInt)))
       ==> (0 < _k#0
           ==> _module.Stream.Cons_q(s#0)
             && (low#0
                 <= $Unbox(Apply1(_module._default.IncrFrom#$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
               ==> _module.Stream.Cons_q(s#0)
                 && _module.Stream.Cons_q(s#0)
                 && _module.__default.IncrFrom_h#canCall(_module._default.IncrFrom#$_T0, 
                  _k#0 - 1, 
                  _module.Stream.tail(s#0), 
                  $Unbox(Apply1(_module._default.IncrFrom#$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
                     + 1, 
                  ord#0)))
         && _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, $LS($ly), LitInt(_k#0), s#0, low#0, ord#0)
           == (0 < _k#0
             ==> low#0
                 <= $Unbox(Apply1(_module._default.IncrFrom#$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
               && _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, 
                $LS($ly), 
                _k#0 - 1, 
                _module.Stream.tail(s#0), 
                $Unbox(Apply1(_module._default.IncrFrom#$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
                   + 1, 
                ord#0)));
// definition axiom for _module.__default.IncrFrom_h for all literals (revealed)
axiom {:id "id416"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.IncrFrom#$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      _k#0: int, 
      s#0: DatatypeType, 
      low#0: int, 
      ord#0: HandleType :: 
    {:weight 3} { _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, 
        $LS($ly), 
        LitInt(_k#0), 
        Lit(s#0), 
        LitInt(low#0), 
        Lit(ord#0)), $IsGoodHeap($Heap) } 
    _module.__default.IncrFrom_h#canCall(_module._default.IncrFrom#$_T0, 
          LitInt(_k#0), 
          Lit(s#0), 
          LitInt(low#0), 
          Lit(ord#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && LitInt(0) <= _k#0
           && $Is(s#0, Tclass._module.Stream(_module._default.IncrFrom#$_T0))
           && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.IncrFrom#$_T0, TInt)))
       ==> (0 < _k#0
           ==> _module.Stream.Cons_q(Lit(s#0))
             && (LitInt(low#0)
                 <= $Unbox(Apply1(_module._default.IncrFrom#$_T0, 
                    TInt, 
                    $Heap, 
                    Lit(ord#0), 
                    Lit(_module.Stream.head(Lit(s#0))))): int
               ==> _module.Stream.Cons_q(Lit(s#0))
                 && _module.Stream.Cons_q(Lit(s#0))
                 && _module.__default.IncrFrom_h#canCall(_module._default.IncrFrom#$_T0, 
                  _k#0 - 1, 
                  Lit(_module.Stream.tail(Lit(s#0))), 
                  $Unbox(Apply1(_module._default.IncrFrom#$_T0, 
                        TInt, 
                        $Heap, 
                        Lit(ord#0), 
                        Lit(_module.Stream.head(Lit(s#0))))): int
                     + 1, 
                  Lit(ord#0))))
         && _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, 
            $LS($ly), 
            LitInt(_k#0), 
            Lit(s#0), 
            LitInt(low#0), 
            Lit(ord#0))
           == (0 < _k#0
             ==> LitInt(low#0)
                 <= $Unbox(Apply1(_module._default.IncrFrom#$_T0, 
                    TInt, 
                    $Heap, 
                    Lit(ord#0), 
                    Lit(_module.Stream.head(Lit(s#0))))): int
               && _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, 
                $LS($ly), 
                _k#0 - 1, 
                Lit(_module.Stream.tail(Lit(s#0))), 
                $Unbox(Apply1(_module._default.IncrFrom#$_T0, 
                      TInt, 
                      $Heap, 
                      Lit(ord#0), 
                      Lit(_module.Stream.head(Lit(s#0))))): int
                   + 1, 
                Lit(ord#0))));
}

function _module.__default.IncrFrom_h#canCall(_module._default.IncrFrom#$_T0: Ty, 
    _k#0: int, 
    s#0: DatatypeType, 
    low#0: int, 
    ord#0: HandleType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.IncrFrom#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: int, 
    s#0: DatatypeType, 
    low#0: int, 
    ord#0: HandleType :: 
  { _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, $LS($ly), _k#0, s#0, low#0, ord#0) } 
  _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, $LS($ly), _k#0, s#0, low#0, ord#0)
     == _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, $ly, _k#0, s#0, low#0, ord#0));

// fuel synonym axiom
axiom (forall _module._default.IncrFrom#$_T0: Ty, 
    $ly: LayerType, 
    _k#0: int, 
    s#0: DatatypeType, 
    low#0: int, 
    ord#0: HandleType :: 
  { _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, AsFuelBottom($ly), _k#0, s#0, low#0, ord#0) } 
  _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, $ly, _k#0, s#0, low#0, ord#0)
     == _module.__default.IncrFrom_h(_module._default.IncrFrom#$_T0, $LZ, _k#0, s#0, low#0, ord#0));

function _module.__default.IncrFrom_h#requires(Ty, LayerType, int, DatatypeType, int, HandleType) : bool;

// #requires axiom for _module.__default.IncrFrom_h
axiom (forall _module._default.IncrFrom#$_T0: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    _k#0: int, 
    s#0: DatatypeType, 
    low#0: int, 
    ord#0: HandleType :: 
  { _module.__default.IncrFrom_h#requires(_module._default.IncrFrom#$_T0, $ly, _k#0, s#0, low#0, ord#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && LitInt(0) <= _k#0
       && $Is(s#0, Tclass._module.Stream(_module._default.IncrFrom#$_T0))
       && $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.IncrFrom#$_T0, TInt))
     ==> _module.__default.IncrFrom_h#requires(_module._default.IncrFrom#$_T0, $ly, _k#0, s#0, low#0, ord#0)
       == true);

procedure {:verboseName "Lemma_Incr0 (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__Incr0(_module._default.Lemma_Incr0$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_Incr0$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_Incr0$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    low#0: int, 
    ord#0: HandleType
       where $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr0$_T0, TInt))
         && $IsAlloc(ord#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr0$_T0, TInt), 
          $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Lemma_Incr0 (call)"} Call$$_module.__default.Lemma__Incr0(_module._default.Lemma_Incr0$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_Incr0$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_Incr0$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    low#0: int, 
    ord#0: HandleType
       where $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr0$_T0, TInt))
         && $IsAlloc(ord#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr0$_T0, TInt), 
          $Heap));
  // user-defined preconditions
  requires {:id "id419"} _module.__default.IncrFrom#canCall(_module._default.Lemma_Incr0$_T0, s#0, low#0, ord#0)
     ==> _module.__default.IncrFrom(_module._default.Lemma_Incr0$_T0, $LS($LZ), s#0, low#0, ord#0)
       || low#0
         <= $Unbox(Apply1(_module._default.Lemma_Incr0$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int;
  requires {:id "id420"} _module.__default.IncrFrom#canCall(_module._default.Lemma_Incr0$_T0, s#0, low#0, ord#0)
     ==> _module.__default.IncrFrom(_module._default.Lemma_Incr0$_T0, $LS($LZ), s#0, low#0, ord#0)
       || _module.__default.IncrFrom(_module._default.Lemma_Incr0$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#0), 
        $Unbox(Apply1(_module._default.Lemma_Incr0$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
           + 1, 
        ord#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Increasing#canCall(_module._default.Lemma_Incr0$_T0, s#0, ord#0);
  free ensures {:id "id421"} _module.__default.Increasing#canCall(_module._default.Lemma_Incr0$_T0, s#0, ord#0)
     && 
    _module.__default.Increasing(_module._default.Lemma_Incr0$_T0, $LS($LZ), s#0, ord#0)
     && 
    $Unbox(Apply1(_module._default.Lemma_Incr0$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
       < $Unbox(Apply1(_module._default.Lemma_Incr0$_T0, 
          TInt, 
          $Heap, 
          ord#0, 
          _module.Stream.head(_module.Stream.tail(s#0)))): int
     && _module.__default.Increasing(_module._default.Lemma_Incr0$_T0, $LS($LZ), _module.Stream.tail(s#0), ord#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_Incr0# (co-call)"} CoCall$$_module.__default.Lemma__Incr0_h(_module._default.Lemma_Incr0#$_T0: Ty, 
    _k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Lemma_Incr0#$_T0))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.Lemma_Incr0#$_T0), $Heap)
         && $IsA#_module.Stream(s#1), 
    low#1: int, 
    ord#1: HandleType
       where $Is(ord#1, Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr0#$_T0, TInt))
         && $IsAlloc(ord#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr0#$_T0, TInt), 
          $Heap));
  // user-defined preconditions
  requires {:id "id422"} _module.__default.IncrFrom#canCall(_module._default.Lemma_Incr0#$_T0, s#1, low#1, ord#1)
     ==> _module.__default.IncrFrom(_module._default.Lemma_Incr0#$_T0, $LS($LZ), s#1, low#1, ord#1)
       || low#1
         <= $Unbox(Apply1(_module._default.Lemma_Incr0#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int;
  requires {:id "id423"} _module.__default.IncrFrom#canCall(_module._default.Lemma_Incr0#$_T0, s#1, low#1, ord#1)
     ==> _module.__default.IncrFrom(_module._default.Lemma_Incr0#$_T0, $LS($LZ), s#1, low#1, ord#1)
       || _module.__default.IncrFrom(_module._default.Lemma_Incr0#$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#1), 
        $Unbox(Apply1(_module._default.Lemma_Incr0#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int
           + 1, 
        ord#1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Increasing_h#canCall(_module._default.Lemma_Incr0#$_T0, _k#0, s#1, ord#1);
  free ensures {:id "id424"} _module.__default.Increasing_h#canCall(_module._default.Lemma_Incr0#$_T0, _k#0, s#1, ord#1)
     && 
    _module.__default.Increasing_h(_module._default.Lemma_Incr0#$_T0, $LS($LZ), _k#0, s#1, ord#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> $Unbox(Apply1(_module._default.Lemma_Incr0#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int
           < $Unbox(Apply1(_module._default.Lemma_Incr0#$_T0, 
              TInt, 
              $Heap, 
              ord#1, 
              _module.Stream.head(_module.Stream.tail(s#1)))): int
         && _module.__default.Increasing_h(_module._default.Lemma_Incr0#$_T0, 
          $LS($LZ), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          _module.Stream.tail(s#1), 
          ord#1))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.Increasing_h(_module._default.Lemma_Incr0#$_T0, $LS($LZ), _k'#0, s#1, ord#1) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.Increasing_h(_module._default.Lemma_Incr0#$_T0, $LS($LZ), _k'#0, s#1, ord#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_Incr0# (correctness)"} Impl$$_module.__default.Lemma__Incr0_h(_module._default.Lemma_Incr0#$_T0: Ty, 
    _k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Lemma_Incr0#$_T0))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.Lemma_Incr0#$_T0), $Heap)
         && $IsA#_module.Stream(s#1), 
    low#1: int, 
    ord#1: HandleType
       where $Is(ord#1, Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr0#$_T0, TInt))
         && $IsAlloc(ord#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr0#$_T0, TInt), 
          $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id425"} _module.__default.IncrFrom#canCall(_module._default.Lemma_Incr0#$_T0, s#1, low#1, ord#1)
     && 
    _module.__default.IncrFrom(_module._default.Lemma_Incr0#$_T0, $LS($LZ), s#1, low#1, ord#1)
     && 
    low#1
       <= $Unbox(Apply1(_module._default.Lemma_Incr0#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int
     && _module.__default.IncrFrom(_module._default.Lemma_Incr0#$_T0, 
      $LS($LZ), 
      _module.Stream.tail(s#1), 
      $Unbox(Apply1(_module._default.Lemma_Incr0#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int
         + 1, 
      ord#1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Increasing_h#canCall(_module._default.Lemma_Incr0#$_T0, _k#0, s#1, ord#1);
  ensures {:id "id426"} _module.__default.Increasing_h#canCall(_module._default.Lemma_Incr0#$_T0, _k#0, s#1, ord#1)
     ==> _module.__default.Increasing_h(_module._default.Lemma_Incr0#$_T0, $LS($LZ), _k#0, s#1, ord#1)
       || (0 < ORD#Offset(_k#0)
         ==> $Unbox(Apply1(_module._default.Lemma_Incr0#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int
           < $Unbox(Apply1(_module._default.Lemma_Incr0#$_T0, 
              TInt, 
              $Heap, 
              ord#1, 
              _module.Stream.head(_module.Stream.tail(s#1)))): int);
  ensures {:id "id427"} _module.__default.Increasing_h#canCall(_module._default.Lemma_Incr0#$_T0, _k#0, s#1, ord#1)
     ==> _module.__default.Increasing_h(_module._default.Lemma_Incr0#$_T0, $LS($LZ), _k#0, s#1, ord#1)
       || (0 < ORD#Offset(_k#0)
         ==> _module.__default.Increasing_h(_module._default.Lemma_Incr0#$_T0, 
          $LS($LS($LZ)), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          _module.Stream.tail(s#1), 
          ord#1));
  ensures {:id "id428"} _module.__default.Increasing_h#canCall(_module._default.Lemma_Incr0#$_T0, _k#0, s#1, ord#1)
     ==> _module.__default.Increasing_h(_module._default.Lemma_Incr0#$_T0, $LS($LZ), _k#0, s#1, ord#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.Increasing_h(_module._default.Lemma_Incr0#$_T0, $LS($LS($LZ)), _k'#1, s#1, ord#1) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.Increasing_h(_module._default.Lemma_Incr0#$_T0, $LS($LS($LZ)), _k'#1, s#1, ord#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_Incr0# (correctness)"} Impl$$_module.__default.Lemma__Incr0_h(_module._default.Lemma_Incr0#$_T0: Ty, 
    _k#0: Box, 
    s#1: DatatypeType, 
    low#1: int, 
    ord#1: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Lemma_Incr0#, Impl$$_module.__default.Lemma__Incr0_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#s0#0: DatatypeType, $ih#low0#0: int :: 
      { _module.__default.Increasing_h(_module._default.Lemma_Incr0#$_T0, $LS($LZ), $ih#_k0#0, $ih#s0#0, ord#1), _module.__default.IncrFrom(_module._default.Lemma_Incr0#$_T0, $LS($LZ), $ih#s0#0, $ih#low0#0, ord#1) } 
      $Is($ih#s0#0, Tclass._module.Stream(_module._default.Lemma_Incr0#$_T0))
           && _module.__default.IncrFrom(_module._default.Lemma_Incr0#$_T0, $LS($LZ), $ih#s0#0, $ih#low0#0, ord#1)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0 && 0 <= $ih#low0#0 && $ih#low0#0 < low#1))
         ==> _module.__default.Increasing_h(_module._default.Lemma_Incr0#$_T0, $LS($LZ), $ih#_k0#0, $ih#s0#0, ord#1));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(244,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(244,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, s#2: DatatypeType, low#2: int, ord#2: HandleType :: 
          { _module.__default.Increasing_h(_module._default.Lemma_Incr0#$_T0, $LS($LZ), _k'#2, s#2, ord#2), _module.__default.IncrFrom(_module._default.Lemma_Incr0#$_T0, $LS($LZ), s#2, low#2, ord#2) } 
            { _module.__default.IncrFrom(_module._default.Lemma_Incr0#$_T0, $LS($LZ), s#2, low#2, ord#2), ORD#Less(_k'#2, _k#0) } 
          $Is(s#2, Tclass._module.Stream(_module._default.Lemma_Incr0#$_T0))
               && $Is(ord#2, Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr0#$_T0, TInt))
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.IncrFrom(_module._default.Lemma_Incr0#$_T0, $LS($LZ), s#2, low#2, ord#2)
             ==> _module.__default.Increasing_h(_module._default.Lemma_Incr0#$_T0, $LS($LZ), _k'#2, s#2, ord#2));
    }
}



procedure {:verboseName "Lemma_Incr1 (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__Incr1(_module._default.Lemma_Incr1$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_Incr1$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_Incr1$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    ord#0: HandleType
       where $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr1$_T0, TInt))
         && $IsAlloc(ord#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr1$_T0, TInt), 
          $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Lemma_Incr1 (call)"} Call$$_module.__default.Lemma__Incr1(_module._default.Lemma_Incr1$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_Incr1$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Lemma_Incr1$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    ord#0: HandleType
       where $Is(ord#0, Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr1$_T0, TInt))
         && $IsAlloc(ord#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr1$_T0, TInt), 
          $Heap));
  // user-defined preconditions
  requires {:id "id431"} _module.__default.Increasing#canCall(_module._default.Lemma_Incr1$_T0, s#0, ord#0)
     ==> _module.__default.Increasing(_module._default.Lemma_Incr1$_T0, $LS($LZ), s#0, ord#0)
       || $Unbox(Apply1(_module._default.Lemma_Incr1$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
         < $Unbox(Apply1(_module._default.Lemma_Incr1$_T0, 
            TInt, 
            $Heap, 
            ord#0, 
            _module.Stream.head(_module.Stream.tail(s#0)))): int;
  requires {:id "id432"} _module.__default.Increasing#canCall(_module._default.Lemma_Incr1$_T0, s#0, ord#0)
     ==> _module.__default.Increasing(_module._default.Lemma_Incr1$_T0, $LS($LZ), s#0, ord#0)
       || _module.__default.Increasing(_module._default.Lemma_Incr1$_T0, $LS($LS($LZ)), _module.Stream.tail(s#0), ord#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Stream.Cons_q(s#0)
     && _module.__default.IncrFrom#canCall(_module._default.Lemma_Incr1$_T0, 
      s#0, 
      $Unbox(Apply1(_module._default.Lemma_Incr1$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int, 
      ord#0);
  free ensures {:id "id433"} _module.__default.IncrFrom#canCall(_module._default.Lemma_Incr1$_T0, 
      s#0, 
      $Unbox(Apply1(_module._default.Lemma_Incr1$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int, 
      ord#0)
     && 
    _module.__default.IncrFrom(_module._default.Lemma_Incr1$_T0, 
      $LS($LZ), 
      s#0, 
      $Unbox(Apply1(_module._default.Lemma_Incr1$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int, 
      ord#0)
     && 
    $Unbox(Apply1(_module._default.Lemma_Incr1$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
       <= $Unbox(Apply1(_module._default.Lemma_Incr1$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
     && _module.__default.IncrFrom(_module._default.Lemma_Incr1$_T0, 
      $LS($LZ), 
      _module.Stream.tail(s#0), 
      $Unbox(Apply1(_module._default.Lemma_Incr1$_T0, TInt, $Heap, ord#0, _module.Stream.head(s#0))): int
         + 1, 
      ord#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_Incr1# (co-call)"} CoCall$$_module.__default.Lemma__Incr1_h(_module._default.Lemma_Incr1#$_T0: Ty, 
    _k#0: int where LitInt(0) <= _k#0, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Lemma_Incr1#$_T0))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.Lemma_Incr1#$_T0), $Heap)
         && $IsA#_module.Stream(s#1), 
    ord#1: HandleType
       where $Is(ord#1, Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr1#$_T0, TInt))
         && $IsAlloc(ord#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr1#$_T0, TInt), 
          $Heap));
  // user-defined preconditions
  requires {:id "id434"} _module.__default.Increasing#canCall(_module._default.Lemma_Incr1#$_T0, s#1, ord#1)
     ==> _module.__default.Increasing(_module._default.Lemma_Incr1#$_T0, $LS($LZ), s#1, ord#1)
       || $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int
         < $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, 
            TInt, 
            $Heap, 
            ord#1, 
            _module.Stream.head(_module.Stream.tail(s#1)))): int;
  requires {:id "id435"} _module.__default.Increasing#canCall(_module._default.Lemma_Incr1#$_T0, s#1, ord#1)
     ==> _module.__default.Increasing(_module._default.Lemma_Incr1#$_T0, $LS($LZ), s#1, ord#1)
       || _module.__default.Increasing(_module._default.Lemma_Incr1#$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#1), 
        ord#1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Stream.Cons_q(s#1)
     && _module.__default.IncrFrom_h#canCall(_module._default.Lemma_Incr1#$_T0, 
      _k#0, 
      s#1, 
      $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int, 
      ord#1);
  free ensures {:id "id436"} _module.__default.IncrFrom_h#canCall(_module._default.Lemma_Incr1#$_T0, 
      _k#0, 
      s#1, 
      $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int, 
      ord#1)
     && 
    _module.__default.IncrFrom_h(_module._default.Lemma_Incr1#$_T0, 
      $LS($LZ), 
      _k#0, 
      s#1, 
      $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int, 
      ord#1)
     && (0 < _k#0
       ==> $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int
           <= $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int
         && _module.__default.IncrFrom_h(_module._default.Lemma_Incr1#$_T0, 
          $LS($LZ), 
          _k#0 - 1, 
          _module.Stream.tail(s#1), 
          $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int
             + 1, 
          ord#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_Incr1# (correctness)"} Impl$$_module.__default.Lemma__Incr1_h(_module._default.Lemma_Incr1#$_T0: Ty, 
    _k#0: int where LitInt(0) <= _k#0, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Lemma_Incr1#$_T0))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.Lemma_Incr1#$_T0), $Heap)
         && $IsA#_module.Stream(s#1), 
    ord#1: HandleType
       where $Is(ord#1, Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr1#$_T0, TInt))
         && $IsAlloc(ord#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_Incr1#$_T0, TInt), 
          $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id437"} _module.__default.Increasing#canCall(_module._default.Lemma_Incr1#$_T0, s#1, ord#1)
     && 
    _module.__default.Increasing(_module._default.Lemma_Incr1#$_T0, $LS($LZ), s#1, ord#1)
     && 
    $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int
       < $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, 
          TInt, 
          $Heap, 
          ord#1, 
          _module.Stream.head(_module.Stream.tail(s#1)))): int
     && _module.__default.Increasing(_module._default.Lemma_Incr1#$_T0, $LS($LZ), _module.Stream.tail(s#1), ord#1);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Stream.Cons_q(s#1)
     && _module.__default.IncrFrom_h#canCall(_module._default.Lemma_Incr1#$_T0, 
      _k#0, 
      s#1, 
      $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int, 
      ord#1);
  ensures {:id "id438"} _module.__default.IncrFrom_h#canCall(_module._default.Lemma_Incr1#$_T0, 
      _k#0, 
      s#1, 
      $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int, 
      ord#1)
     ==> _module.__default.IncrFrom_h(_module._default.Lemma_Incr1#$_T0, 
        $LS($LZ), 
        _k#0, 
        s#1, 
        $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int, 
        ord#1)
       || (0 < _k#0
         ==> $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int
           <= $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int);
  ensures {:id "id439"} _module.__default.IncrFrom_h#canCall(_module._default.Lemma_Incr1#$_T0, 
      _k#0, 
      s#1, 
      $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int, 
      ord#1)
     ==> _module.__default.IncrFrom_h(_module._default.Lemma_Incr1#$_T0, 
        $LS($LZ), 
        _k#0, 
        s#1, 
        $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int, 
        ord#1)
       || (0 < _k#0
         ==> _module.__default.IncrFrom_h(_module._default.Lemma_Incr1#$_T0, 
          $LS($LS($LZ)), 
          _k#0 - 1, 
          _module.Stream.tail(s#1), 
          $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, TInt, $Heap, ord#1, _module.Stream.head(s#1))): int
             + 1, 
          ord#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_Incr1# (correctness)"} Impl$$_module.__default.Lemma__Incr1_h(_module._default.Lemma_Incr1#$_T0: Ty, 
    _k#0: int, 
    s#1: DatatypeType, 
    ord#1: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _k##0: int;
  var s##0: DatatypeType;
  var ord##0: HandleType;

    // AddMethodImpl: Lemma_Incr1#, Impl$$_module.__default.Lemma__Incr1_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: int, $ih#s0#0: DatatypeType :: 
      { _module.__default.IncrFrom_h(_module._default.Lemma_Incr1#$_T0, 
          $LS($LZ), 
          $ih#_k0#0, 
          $ih#s0#0, 
          $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, 
              TInt, 
              $Heap, 
              ord#1, 
              _module.Stream.head($ih#s0#0))): int, 
          ord#1) } 
      LitInt(0) <= $ih#_k0#0
           && $Is($ih#s0#0, Tclass._module.Stream(_module._default.Lemma_Incr1#$_T0))
           && _module.__default.Increasing(_module._default.Lemma_Incr1#$_T0, $LS($LZ), $ih#s0#0, ord#1)
           && 
          0 <= $ih#_k0#0
           && $ih#_k0#0 < _k#0
         ==> _module.__default.IncrFrom_h(_module._default.Lemma_Incr1#$_T0, 
          $LS($LZ), 
          $ih#_k0#0, 
          $ih#s0#0, 
          $Unbox(Apply1(_module._default.Lemma_Incr1#$_T0, 
              TInt, 
              $Heap, 
              ord#1, 
              _module.Stream.head($ih#s0#0))): int, 
          ord#1));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(249,1)
    assume true;
    if (0 < _k#0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(250,14)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id440"} $Is(_k#0 - 1, Tclass._System.nat());
        _k##0 := _k#0 - 1;
        assume _module.Stream.Cons_q(s#1);
        assume _module.Stream.Cons_q(s#1);
        // ProcessCallStmt: CheckSubrange
        s##0 := _module.Stream.tail(s#1);
        assume true;
        // ProcessCallStmt: CheckSubrange
        ord##0 := ord#1;
        call {:id "id441"} CoCall$$_module.__default.Lemma__Incr1_h(_module._default.Lemma_Incr1#$_T0, _k##0, s##0, ord##0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "Theorem_FilterPreservesOrdering (well-formedness)"} CheckWellFormed$$_module.__default.Theorem__FilterPreservesOrdering(_module._default.Theorem_FilterPreservesOrdering$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Theorem_FilterPreservesOrdering$_T0))
         && $IsAlloc(s#0, 
          Tclass._module.Stream(_module._default.Theorem_FilterPreservesOrdering$_T0), 
          $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TBool), 
          $Heap), 
    ord#0: HandleType
       where $Is(ord#0, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TInt))
         && $IsAlloc(ord#0, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TInt), 
          $Heap));
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem_FilterPreservesOrdering (well-formedness)"} CheckWellFormed$$_module.__default.Theorem__FilterPreservesOrdering(_module._default.Theorem_FilterPreservesOrdering$_T0: Ty, 
    s#0: DatatypeType, 
    P#0: HandleType, 
    ord#0: HandleType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##ord#0: HandleType;
  var ##s#1: DatatypeType;
  var ##P#0: HandleType;
  var ##s#2: DatatypeType;
  var ##s#3: DatatypeType;
  var ##P#1: HandleType;
  var ##ord#1: HandleType;


    // AddMethodImpl: Theorem_FilterPreservesOrdering, CheckWellFormed$$_module.__default.Theorem__FilterPreservesOrdering
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, 
      Tclass._module.Stream(_module._default.Theorem_FilterPreservesOrdering$_T0), 
      $Heap);
    ##ord#0 := ord#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##ord#0, 
      Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TInt), 
      $Heap);
    assume _module.__default.Increasing#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, ord#0);
    assume {:id "id442"} _module.__default.Increasing(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, ord#0);
    ##s#1 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, 
      Tclass._module.Stream(_module._default.Theorem_FilterPreservesOrdering$_T0), 
      $Heap);
    ##P#0 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#0, 
      Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TBool), 
      $Heap);
    assume _module.__default.AlwaysAnother#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, P#0);
    assume {:id "id443"} _module.__default.AlwaysAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##s#3 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#3, 
      Tclass._module.Stream(_module._default.Theorem_FilterPreservesOrdering$_T0), 
      $Heap);
    ##P#1 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#1, 
      Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TBool), 
      $Heap);
    assert {:id "id444"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, ##s#3, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), ##s#3, ##P#1)
         || (_module.__default.IsAnother#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, ##s#3, ##P#1)
           ==> _module.__default.IsAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, ##s#3, ##P#1)
             || (exists n#0: int :: 
              { _module.__default.Tail(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), ##s#3, n#0) } 
              LitInt(0) <= n#0
                 && 
                LitInt(0) <= n#0
                 && $Unbox(Apply1(_module._default.Theorem_FilterPreservesOrdering$_T0, 
                    TBool, 
                    $Heap, 
                    ##P#1, 
                    _module.Stream.head(_module.__default.Tail(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), ##s#3, n#0)))): bool));
    assert {:id "id445"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, ##s#3, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), ##s#3, ##P#1)
         || _module.__default.AlwaysAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, 
          $LS($LS($LZ)), 
          _module.Stream.tail(##s#3), 
          ##P#1);
    assume _module.__default.AlwaysAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), ##s#3, ##P#1);
    assume _module.__default.Filter#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, P#0);
    assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0));
    ##s#2 := _module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#2, 
      Tclass._module.Stream(_module._default.Theorem_FilterPreservesOrdering$_T0), 
      $Heap);
    ##ord#1 := ord#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##ord#1, 
      Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TInt), 
      $Heap);
    assume _module.__default.Increasing#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, 
      _module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0), 
      ord#0);
    assume {:id "id446"} _module.__default.Increasing(_module._default.Theorem_FilterPreservesOrdering$_T0, 
      $LS($LZ), 
      _module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0), 
      ord#0);
}



procedure {:verboseName "Theorem_FilterPreservesOrdering (call)"} Call$$_module.__default.Theorem__FilterPreservesOrdering(_module._default.Theorem_FilterPreservesOrdering$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Theorem_FilterPreservesOrdering$_T0))
         && $IsAlloc(s#0, 
          Tclass._module.Stream(_module._default.Theorem_FilterPreservesOrdering$_T0), 
          $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TBool), 
          $Heap), 
    ord#0: HandleType
       where $Is(ord#0, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TInt))
         && $IsAlloc(ord#0, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TInt), 
          $Heap));
  // user-defined preconditions
  requires {:id "id447"} _module.__default.Increasing#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, ord#0)
     ==> _module.__default.Increasing(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, ord#0)
       || $Unbox(Apply1(_module._default.Theorem_FilterPreservesOrdering$_T0, 
            TInt, 
            $Heap, 
            ord#0, 
            _module.Stream.head(s#0))): int
         < $Unbox(Apply1(_module._default.Theorem_FilterPreservesOrdering$_T0, 
            TInt, 
            $Heap, 
            ord#0, 
            _module.Stream.head(_module.Stream.tail(s#0)))): int;
  requires {:id "id448"} _module.__default.Increasing#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, ord#0)
     ==> _module.__default.Increasing(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, ord#0)
       || _module.__default.Increasing(_module._default.Theorem_FilterPreservesOrdering$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#0), 
        ord#0);
  requires {:id "id449"} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0)
       || (_module.__default.IsAnother#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, P#0)
         ==> _module.__default.IsAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, P#0)
           || (exists n#1: int :: 
            { _module.__default.Tail(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, n#1) } 
            LitInt(0) <= n#1
               && 
              LitInt(0) <= n#1
               && $Unbox(Apply1(_module._default.Theorem_FilterPreservesOrdering$_T0, 
                  TBool, 
                  $Heap, 
                  P#0, 
                  _module.Stream.head(_module.__default.Tail(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, n#1)))): bool));
  requires {:id "id450"} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0)
       || _module.__default.AlwaysAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#0), 
        P#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Filter#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, P#0)
     && _module.__default.Increasing#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, 
      _module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0), 
      ord#0);
  free ensures {:id "id451"} _module.__default.Increasing#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, 
      _module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0), 
      ord#0)
     && 
    _module.__default.Increasing(_module._default.Theorem_FilterPreservesOrdering$_T0, 
      $LS($LZ), 
      _module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0), 
      ord#0)
     && 
    $Unbox(Apply1(_module._default.Theorem_FilterPreservesOrdering$_T0, 
          TInt, 
          $Heap, 
          ord#0, 
          _module.Stream.head(_module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0)))): int
       < $Unbox(Apply1(_module._default.Theorem_FilterPreservesOrdering$_T0, 
          TInt, 
          $Heap, 
          ord#0, 
          _module.Stream.head(_module.Stream.tail(_module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0))))): int
     && _module.__default.Increasing(_module._default.Theorem_FilterPreservesOrdering$_T0, 
      $LS($LZ), 
      _module.Stream.tail(_module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0)), 
      ord#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem_FilterPreservesOrdering (correctness)"} Impl$$_module.__default.Theorem__FilterPreservesOrdering(_module._default.Theorem_FilterPreservesOrdering$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Theorem_FilterPreservesOrdering$_T0))
         && $IsAlloc(s#0, 
          Tclass._module.Stream(_module._default.Theorem_FilterPreservesOrdering$_T0), 
          $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TBool), 
          $Heap), 
    ord#0: HandleType
       where $Is(ord#0, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TInt))
         && $IsAlloc(ord#0, 
          Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TInt), 
          $Heap))
   returns ($_reverifyPost: bool);
  free requires 8 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id452"} _module.__default.Increasing#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, ord#0)
     && 
    _module.__default.Increasing(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, ord#0)
     && 
    $Unbox(Apply1(_module._default.Theorem_FilterPreservesOrdering$_T0, 
          TInt, 
          $Heap, 
          ord#0, 
          _module.Stream.head(s#0))): int
       < $Unbox(Apply1(_module._default.Theorem_FilterPreservesOrdering$_T0, 
          TInt, 
          $Heap, 
          ord#0, 
          _module.Stream.head(_module.Stream.tail(s#0)))): int
     && _module.__default.Increasing(_module._default.Theorem_FilterPreservesOrdering$_T0, 
      $LS($LZ), 
      _module.Stream.tail(s#0), 
      ord#0);
  free requires {:id "id453"} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, P#0)
     && 
    _module.__default.AlwaysAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0)
     && 
    _module.__default.IsAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, P#0)
     && _module.__default.AlwaysAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, 
      $LS($LZ), 
      _module.Stream.tail(s#0), 
      P#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Filter#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, P#0)
     && _module.__default.Increasing#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, 
      _module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0), 
      ord#0);
  ensures {:id "id454"} _module.__default.Increasing#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, 
      _module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0), 
      ord#0)
     ==> _module.__default.Increasing(_module._default.Theorem_FilterPreservesOrdering$_T0, 
        $LS($LZ), 
        _module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0), 
        ord#0)
       || $Unbox(Apply1(_module._default.Theorem_FilterPreservesOrdering$_T0, 
            TInt, 
            $Heap, 
            ord#0, 
            _module.Stream.head(_module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LS($LZ)), s#0, P#0)))): int
         < $Unbox(Apply1(_module._default.Theorem_FilterPreservesOrdering$_T0, 
            TInt, 
            $Heap, 
            ord#0, 
            _module.Stream.head(_module.Stream.tail(_module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LS($LZ)), s#0, P#0))))): int;
  ensures {:id "id455"} _module.__default.Increasing#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, 
      _module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0), 
      ord#0)
     ==> _module.__default.Increasing(_module._default.Theorem_FilterPreservesOrdering$_T0, 
        $LS($LZ), 
        _module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0), 
        ord#0)
       || _module.__default.Increasing(_module._default.Theorem_FilterPreservesOrdering$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(_module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LS($LZ)), s#0, P#0)), 
        ord#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem_FilterPreservesOrdering (correctness)"} Impl$$_module.__default.Theorem__FilterPreservesOrdering(_module._default.Theorem_FilterPreservesOrdering$_T0: Ty, 
    s#0: DatatypeType, 
    P#0: HandleType, 
    ord#0: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var s##0: DatatypeType;
  var ord##0: HandleType;
  var s##1: DatatypeType;
  var P##0: HandleType;
  var low##0: int;
  var ord##1: HandleType;
  var s##2: DatatypeType;
  var ##s#4: DatatypeType;
  var ##P#2: HandleType;
  var low##1: int;
  var ord##2: HandleType;

    // AddMethodImpl: Theorem_FilterPreservesOrdering, Impl$$_module.__default.Theorem__FilterPreservesOrdering
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#s0#0: DatatypeType :: 
      { _module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), $ih#s0#0, P#0) } 
        { _module.__default.AlwaysAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), $ih#s0#0, P#0) } 
      true);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(257,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    ord##0 := ord#0;
    call {:id "id456"} Call$$_module.__default.Lemma__Incr1(_module._default.Theorem_FilterPreservesOrdering$_T0, s##0, ord##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(258,32)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##1 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    P##0 := P#0;
    assume _module.Stream.Cons_q(s#0);
    assume _module.Stream.Cons_q(s#0);
    // ProcessCallStmt: CheckSubrange
    low##0 := $Unbox(Apply1(_module._default.Theorem_FilterPreservesOrdering$_T0, 
        TInt, 
        $Heap, 
        ord#0, 
        _module.Stream.head(s#0))): int;
    assume true;
    // ProcessCallStmt: CheckSubrange
    ord##1 := ord#0;
    call {:id "id457"} Call$$_module.__default.Lemma__FilterPreservesIncrFrom(_module._default.Theorem_FilterPreservesOrdering$_T0, s##1, P##0, low##0, ord##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(259,14)
    // TrCallStmt: Before ProcessCallStmt
    ##s#4 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#4, 
      Tclass._module.Stream(_module._default.Theorem_FilterPreservesOrdering$_T0), 
      $Heap);
    ##P#2 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#2, 
      Tclass._System.___hTotalFunc1(_module._default.Theorem_FilterPreservesOrdering$_T0, TBool), 
      $Heap);
    assert {:id "id458"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, ##s#4, ##P#2)
       ==> _module.__default.AlwaysAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), ##s#4, ##P#2)
         || (_module.__default.IsAnother#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, ##s#4, ##P#2)
           ==> _module.__default.IsAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, ##s#4, ##P#2)
             || (exists n#3: int :: 
              { _module.__default.Tail(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), ##s#4, n#3) } 
              LitInt(0) <= n#3
                 && 
                LitInt(0) <= n#3
                 && $Unbox(Apply1(_module._default.Theorem_FilterPreservesOrdering$_T0, 
                    TBool, 
                    $Heap, 
                    ##P#2, 
                    _module.Stream.head(_module.__default.Tail(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), ##s#4, n#3)))): bool));
    assert {:id "id459"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, ##s#4, ##P#2)
       ==> _module.__default.AlwaysAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), ##s#4, ##P#2)
         || _module.__default.AlwaysAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, 
          $LS($LS($LZ)), 
          _module.Stream.tail(##s#4), 
          ##P#2);
    assume _module.__default.AlwaysAnother(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), ##s#4, ##P#2);
    assume _module.__default.Filter#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, P#0);
    assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0));
    assume _module.__default.Filter#canCall(_module._default.Theorem_FilterPreservesOrdering$_T0, s#0, P#0);
    // ProcessCallStmt: CheckSubrange
    s##2 := _module.__default.Filter(_module._default.Theorem_FilterPreservesOrdering$_T0, $LS($LZ), s#0, P#0);
    assume _module.Stream.Cons_q(s#0);
    assume _module.Stream.Cons_q(s#0);
    // ProcessCallStmt: CheckSubrange
    low##1 := $Unbox(Apply1(_module._default.Theorem_FilterPreservesOrdering$_T0, 
        TInt, 
        $Heap, 
        ord#0, 
        _module.Stream.head(s#0))): int;
    assume true;
    // ProcessCallStmt: CheckSubrange
    ord##2 := ord#0;
    call {:id "id460"} Call$$_module.__default.Lemma__Incr0(_module._default.Theorem_FilterPreservesOrdering$_T0, s##2, low##1, ord##2);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Lemma_FilterPreservesIncrFrom (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__FilterPreservesIncrFrom(_module._default.Lemma_FilterPreservesIncrFrom$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_FilterPreservesIncrFrom$_T0))
         && $IsAlloc(s#0, 
          Tclass._module.Stream(_module._default.Lemma_FilterPreservesIncrFrom$_T0), 
          $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, TBool), 
          $Heap), 
    low#0: int, 
    ord#0: HandleType
       where $Is(ord#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, TInt))
         && $IsAlloc(ord#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, TInt), 
          $Heap));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_FilterPreservesIncrFrom (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__FilterPreservesIncrFrom(_module._default.Lemma_FilterPreservesIncrFrom$_T0: Ty, 
    s#0: DatatypeType, 
    P#0: HandleType, 
    low#0: int, 
    ord#0: HandleType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##low#0: int;
  var ##ord#0: HandleType;
  var ##s#1: DatatypeType;
  var ##P#0: HandleType;
  var ##s#2: DatatypeType;
  var ##P#1: HandleType;
  var ##s#3: DatatypeType;
  var ##s#4: DatatypeType;
  var ##P#2: HandleType;
  var ##low#1: int;
  var ##ord#1: HandleType;


    // AddMethodImpl: Lemma_FilterPreservesIncrFrom, CheckWellFormed$$_module.__default.Lemma__FilterPreservesIncrFrom
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, 
      Tclass._module.Stream(_module._default.Lemma_FilterPreservesIncrFrom$_T0), 
      $Heap);
    ##low#0 := low#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##low#0, TInt, $Heap);
    ##ord#0 := ord#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##ord#0, 
      Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, TInt), 
      $Heap);
    assume _module.__default.IncrFrom#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, s#0, low#0, ord#0);
    assume {:id "id461"} _module.__default.IncrFrom(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, low#0, ord#0);
    ##s#1 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, 
      Tclass._module.Stream(_module._default.Lemma_FilterPreservesIncrFrom$_T0), 
      $Heap);
    ##P#0 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#0, 
      Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, TBool), 
      $Heap);
    assume _module.__default.AlwaysAnother#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, s#0, P#0);
    assume {:id "id462"} _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, P#0);
    assume _module.Stream.Cons_q(s#0);
    assume {:id "id463"} low#0
       <= $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
          TInt, 
          $Heap, 
          ord#0, 
          _module.Stream.head(s#0))): int;
    ##s#2 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#2, 
      Tclass._module.Stream(_module._default.Lemma_FilterPreservesIncrFrom$_T0), 
      $Heap);
    ##P#1 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#1, 
      Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, TBool), 
      $Heap);
    assert {:id "id464"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, ##s#2, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), ##s#2, ##P#1)
         || (_module.__default.IsAnother#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, ##s#2, ##P#1)
           ==> _module.__default.IsAnother(_module._default.Lemma_FilterPreservesIncrFrom$_T0, ##s#2, ##P#1)
             || (exists n#0: int :: 
              { _module.__default.Tail(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), ##s#2, n#0) } 
              LitInt(0) <= n#0
                 && 
                LitInt(0) <= n#0
                 && $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
                    TBool, 
                    $Heap, 
                    ##P#1, 
                    _module.Stream.head(_module.__default.Tail(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), ##s#2, n#0)))): bool));
    assert {:id "id465"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, ##s#2, ##P#1)
       ==> _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), ##s#2, ##P#1)
         || _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
          $LS($LS($LZ)), 
          _module.Stream.tail(##s#2), 
          ##P#1);
    assume _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), ##s#2, ##P#1);
    assume _module.__default.Next#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, s#0, P#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##s#4 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#4, 
      Tclass._module.Stream(_module._default.Lemma_FilterPreservesIncrFrom$_T0), 
      $Heap);
    ##P#2 := P#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##P#2, 
      Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, TBool), 
      $Heap);
    assert {:id "id466"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, ##s#4, ##P#2)
       ==> _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), ##s#4, ##P#2)
         || (_module.__default.IsAnother#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, ##s#4, ##P#2)
           ==> _module.__default.IsAnother(_module._default.Lemma_FilterPreservesIncrFrom$_T0, ##s#4, ##P#2)
             || (exists n#1: int :: 
              { _module.__default.Tail(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), ##s#4, n#1) } 
              LitInt(0) <= n#1
                 && 
                LitInt(0) <= n#1
                 && $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
                    TBool, 
                    $Heap, 
                    ##P#2, 
                    _module.Stream.head(_module.__default.Tail(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), ##s#4, n#1)))): bool));
    assert {:id "id467"} {:subsumption 0} _module.__default.AlwaysAnother#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, ##s#4, ##P#2)
       ==> _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), ##s#4, ##P#2)
         || _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
          $LS($LS($LZ)), 
          _module.Stream.tail(##s#4), 
          ##P#2);
    assume _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), ##s#4, ##P#2);
    assume _module.__default.Filter#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, s#0, P#0);
    assume _module.Stream.Cons_q(_module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, P#0));
    ##s#3 := _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, P#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#3, 
      Tclass._module.Stream(_module._default.Lemma_FilterPreservesIncrFrom$_T0), 
      $Heap);
    ##low#1 := low#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##low#1, TInt, $Heap);
    ##ord#1 := ord#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##ord#1, 
      Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, TInt), 
      $Heap);
    assume _module.__default.IncrFrom#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
      _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, P#0), 
      low#0, 
      ord#0);
    assume {:id "id468"} _module.__default.IncrFrom(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
      $LS($LZ), 
      _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, P#0), 
      low#0, 
      ord#0);
}



procedure {:verboseName "Lemma_FilterPreservesIncrFrom (call)"} Call$$_module.__default.Lemma__FilterPreservesIncrFrom(_module._default.Lemma_FilterPreservesIncrFrom$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Lemma_FilterPreservesIncrFrom$_T0))
         && $IsAlloc(s#0, 
          Tclass._module.Stream(_module._default.Lemma_FilterPreservesIncrFrom$_T0), 
          $Heap)
         && $IsA#_module.Stream(s#0), 
    P#0: HandleType
       where $Is(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, TBool), 
          $Heap), 
    low#0: int, 
    ord#0: HandleType
       where $Is(ord#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, TInt))
         && $IsAlloc(ord#0, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, TInt), 
          $Heap));
  // user-defined preconditions
  requires {:id "id469"} _module.__default.IncrFrom#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, s#0, low#0, ord#0)
     ==> _module.__default.IncrFrom(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, low#0, ord#0)
       || low#0
         <= $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
            TInt, 
            $Heap, 
            ord#0, 
            _module.Stream.head(s#0))): int;
  requires {:id "id470"} _module.__default.IncrFrom#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, s#0, low#0, ord#0)
     ==> _module.__default.IncrFrom(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, low#0, ord#0)
       || _module.__default.IncrFrom(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#0), 
        $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
              TInt, 
              $Heap, 
              ord#0, 
              _module.Stream.head(s#0))): int
           + 1, 
        ord#0);
  requires {:id "id471"} _module.__default.AlwaysAnother#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, P#0)
       || (_module.__default.IsAnother#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, s#0, P#0)
         ==> _module.__default.IsAnother(_module._default.Lemma_FilterPreservesIncrFrom$_T0, s#0, P#0)
           || (exists n#2: int :: 
            { _module.__default.Tail(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, n#2) } 
            LitInt(0) <= n#2
               && 
              LitInt(0) <= n#2
               && $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
                  TBool, 
                  $Heap, 
                  P#0, 
                  _module.Stream.head(_module.__default.Tail(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, n#2)))): bool));
  requires {:id "id472"} _module.__default.AlwaysAnother#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, s#0, P#0)
     ==> _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, P#0)
       || _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#0), 
        P#0);
  requires {:id "id473"} low#0
     <= $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
        TInt, 
        $Heap, 
        ord#0, 
        _module.Stream.head(s#0))): int;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Filter#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, s#0, P#0)
     && _module.__default.IncrFrom#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
      _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, P#0), 
      low#0, 
      ord#0);
  free ensures {:id "id474"} _module.__default.IncrFrom#canCall(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
      _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, P#0), 
      low#0, 
      ord#0)
     && 
    _module.__default.IncrFrom(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
      $LS($LZ), 
      _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, P#0), 
      low#0, 
      ord#0)
     && 
    low#0
       <= $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
          TInt, 
          $Heap, 
          ord#0, 
          _module.Stream.head(_module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, P#0)))): int
     && _module.__default.IncrFrom(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
      $LS($LZ), 
      _module.Stream.tail(_module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, P#0)), 
      $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom$_T0, 
            TInt, 
            $Heap, 
            ord#0, 
            _module.Stream.head(_module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom$_T0, $LS($LZ), s#0, P#0)))): int
         + 1, 
      ord#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_FilterPreservesIncrFrom# (co-call)"} CoCall$$_module.__default.Lemma__FilterPreservesIncrFrom_h(_module._default.Lemma_FilterPreservesIncrFrom#$_T0: Ty, 
    _k#0: int where LitInt(0) <= _k#0, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Lemma_FilterPreservesIncrFrom#$_T0))
         && $IsAlloc(s#1, 
          Tclass._module.Stream(_module._default.Lemma_FilterPreservesIncrFrom#$_T0), 
          $Heap)
         && $IsA#_module.Stream(s#1), 
    P#1: HandleType
       where $Is(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, TBool))
         && $IsAlloc(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, TBool), 
          $Heap), 
    low#1: int, 
    ord#1: HandleType
       where $Is(ord#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, TInt))
         && $IsAlloc(ord#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, TInt), 
          $Heap));
  // user-defined preconditions
  requires {:id "id475"} _module.__default.IncrFrom#canCall(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, low#1, ord#1)
     ==> _module.__default.IncrFrom(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, low#1, ord#1)
       || low#1
         <= $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
            TInt, 
            $Heap, 
            ord#1, 
            _module.Stream.head(s#1))): int;
  requires {:id "id476"} _module.__default.IncrFrom#canCall(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, low#1, ord#1)
     ==> _module.__default.IncrFrom(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, low#1, ord#1)
       || _module.__default.IncrFrom(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#1), 
        $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
              TInt, 
              $Heap, 
              ord#1, 
              _module.Stream.head(s#1))): int
           + 1, 
        ord#1);
  requires {:id "id477"} _module.__default.AlwaysAnother#canCall(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, P#1)
     ==> _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, P#1)
       || (_module.__default.IsAnother#canCall(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, P#1)
         ==> _module.__default.IsAnother(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, P#1)
           || (exists n#3: int :: 
            { _module.__default.Tail(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, n#3) } 
            LitInt(0) <= n#3
               && 
              LitInt(0) <= n#3
               && $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
                  TBool, 
                  $Heap, 
                  P#1, 
                  _module.Stream.head(_module.__default.Tail(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, n#3)))): bool));
  requires {:id "id478"} _module.__default.AlwaysAnother#canCall(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, P#1)
     ==> _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, P#1)
       || _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
        $LS($LS($LZ)), 
        _module.Stream.tail(s#1), 
        P#1);
  requires {:id "id479"} low#1
     <= $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
        TInt, 
        $Heap, 
        ord#1, 
        _module.Stream.head(s#1))): int;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Filter#canCall(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, P#1)
     && _module.__default.IncrFrom_h#canCall(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, P#1), 
      low#1, 
      ord#1);
  free ensures {:id "id480"} _module.__default.IncrFrom_h#canCall(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, P#1), 
      low#1, 
      ord#1)
     && 
    _module.__default.IncrFrom_h(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
      $LS($LZ), 
      _k#0, 
      _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, P#1), 
      low#1, 
      ord#1)
     && (0 < _k#0
       ==> low#1
           <= $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
              TInt, 
              $Heap, 
              ord#1, 
              _module.Stream.head(_module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, P#1)))): int
         && _module.__default.IncrFrom_h(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
          $LS($LZ), 
          _k#0 - 1, 
          _module.Stream.tail(_module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, P#1)), 
          $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
                TInt, 
                $Heap, 
                ord#1, 
                _module.Stream.head(_module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, P#1)))): int
             + 1, 
          ord#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_FilterPreservesIncrFrom# (correctness)"} Impl$$_module.__default.Lemma__FilterPreservesIncrFrom_h(_module._default.Lemma_FilterPreservesIncrFrom#$_T0: Ty, 
    _k#0: int where LitInt(0) <= _k#0, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.Lemma_FilterPreservesIncrFrom#$_T0))
         && $IsAlloc(s#1, 
          Tclass._module.Stream(_module._default.Lemma_FilterPreservesIncrFrom#$_T0), 
          $Heap)
         && $IsA#_module.Stream(s#1), 
    P#1: HandleType
       where $Is(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, TBool))
         && $IsAlloc(P#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, TBool), 
          $Heap), 
    low#1: int, 
    ord#1: HandleType
       where $Is(ord#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, TInt))
         && $IsAlloc(ord#1, 
          Tclass._System.___hTotalFunc1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, TInt), 
          $Heap))
   returns ($_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id481"} _module.__default.IncrFrom#canCall(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, low#1, ord#1)
     && 
    _module.__default.IncrFrom(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, low#1, ord#1)
     && 
    low#1
       <= $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
          TInt, 
          $Heap, 
          ord#1, 
          _module.Stream.head(s#1))): int
     && _module.__default.IncrFrom(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
      $LS($LZ), 
      _module.Stream.tail(s#1), 
      $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
            TInt, 
            $Heap, 
            ord#1, 
            _module.Stream.head(s#1))): int
         + 1, 
      ord#1);
  free requires {:id "id482"} _module.__default.AlwaysAnother#canCall(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, P#1)
     && 
    _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, P#1)
     && 
    _module.__default.IsAnother(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, P#1)
     && _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
      $LS($LZ), 
      _module.Stream.tail(s#1), 
      P#1);
  requires {:id "id483"} low#1
     <= $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
        TInt, 
        $Heap, 
        ord#1, 
        _module.Stream.head(s#1))): int;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Filter#canCall(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, P#1)
     && _module.__default.IncrFrom_h#canCall(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, P#1), 
      low#1, 
      ord#1);
  ensures {:id "id484"} _module.__default.IncrFrom_h#canCall(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, P#1), 
      low#1, 
      ord#1)
     ==> _module.__default.IncrFrom_h(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
        $LS($LZ), 
        _k#0, 
        _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, P#1), 
        low#1, 
        ord#1)
       || (0 < _k#0
         ==> low#1
           <= $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
              TInt, 
              $Heap, 
              ord#1, 
              _module.Stream.head(_module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LS($LZ)), s#1, P#1)))): int);
  ensures {:id "id485"} _module.__default.IncrFrom_h#canCall(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
      _k#0, 
      _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, P#1), 
      low#1, 
      ord#1)
     ==> _module.__default.IncrFrom_h(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
        $LS($LZ), 
        _k#0, 
        _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), s#1, P#1), 
        low#1, 
        ord#1)
       || (0 < _k#0
         ==> _module.__default.IncrFrom_h(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
          $LS($LS($LZ)), 
          _k#0 - 1, 
          _module.Stream.tail(_module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LS($LZ)), s#1, P#1)), 
          $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
                TInt, 
                $Heap, 
                ord#1, 
                _module.Stream.head(_module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LS($LZ)), s#1, P#1)))): int
             + 1, 
          ord#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_FilterPreservesIncrFrom# (correctness)"} Impl$$_module.__default.Lemma__FilterPreservesIncrFrom_h(_module._default.Lemma_FilterPreservesIncrFrom#$_T0: Ty, 
    _k#0: int, 
    s#1: DatatypeType, 
    P#1: HandleType, 
    low#1: int, 
    ord#1: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _k##0: int;
  var s##0: DatatypeType;
  var P##0: HandleType;
  var low##0: int;
  var ord##0: HandleType;
  var s##1: DatatypeType;
  var P##1: HandleType;
  var _k##1: int;
  var s##2: DatatypeType;
  var P##2: HandleType;
  var low##1: int;
  var ord##1: HandleType;

    // AddMethodImpl: Lemma_FilterPreservesIncrFrom#, Impl$$_module.__default.Lemma__FilterPreservesIncrFrom_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: int, $ih#s0#0: DatatypeType, $ih#low0#0: int :: 
      { _module.__default.IncrFrom_h(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
          $LS($LZ), 
          $ih#_k0#0, 
          _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), $ih#s0#0, P#1), 
          $ih#low0#0, 
          ord#1) } 
      LitInt(0) <= $ih#_k0#0
           && $Is($ih#s0#0, 
            Tclass._module.Stream(_module._default.Lemma_FilterPreservesIncrFrom#$_T0))
           && 
          _module.__default.IncrFrom(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
            $LS($LZ), 
            $ih#s0#0, 
            $ih#low0#0, 
            ord#1)
           && _module.__default.AlwaysAnother(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), $ih#s0#0, P#1)
           && $ih#low0#0
             <= $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
                TInt, 
                $initHeapForallStmt#0, 
                ord#1, 
                _module.Stream.head($ih#s0#0))): int
           && ((0 <= $ih#_k0#0 && $ih#_k0#0 < _k#0)
             || ($ih#_k0#0 == _k#0
               && 
              0
                 <= _module.__default.Next(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $ih#s0#0, P#1)
               && _module.__default.Next(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $ih#s0#0, P#1)
                 < _module.__default.Next(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, P#1)))
         ==> _module.__default.IncrFrom_h(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
          $LS($LZ), 
          $ih#_k0#0, 
          _module.__default.Filter(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, $LS($LZ), $ih#s0#0, P#1), 
          $ih#low0#0, 
          ord#1));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(265,1)
    assume true;
    if (0 < _k#0)
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(266,3)
        assume _module.Stream.Cons_q(s#1);
        assume _module.Stream.Cons_q(s#1);
        if ($Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
            TBool, 
            $Heap, 
            P#1, 
            _module.Stream.head(s#1))): bool)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(267,34)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id486"} $Is(_k#0 - 1, Tclass._System.nat());
            _k##0 := _k#0 - 1;
            assume _module.Stream.Cons_q(s#1);
            assume _module.Stream.Cons_q(s#1);
            // ProcessCallStmt: CheckSubrange
            s##0 := _module.Stream.tail(s#1);
            assume true;
            // ProcessCallStmt: CheckSubrange
            P##0 := P#1;
            assume _module.Stream.Cons_q(s#1);
            assume _module.Stream.Cons_q(s#1);
            // ProcessCallStmt: CheckSubrange
            low##0 := $Unbox(Apply1(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, 
                  TInt, 
                  $Heap, 
                  ord#1, 
                  _module.Stream.head(s#1))): int
               + 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            ord##0 := ord#1;
            assert {:id "id487"} 0 <= _k#0 || _k##0 == _k#0;
            assert {:id "id488"} 0
                 <= _module.__default.Next(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, P#1)
               || _k##0 < _k#0
               || _module.__default.Next(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s##0, P##0)
                 == _module.__default.Next(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, P#1);
            assert {:id "id489"} _k##0 < _k#0
               || (_k##0 == _k#0
                 && _module.__default.Next(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s##0, P##0)
                   < _module.__default.Next(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, P#1));
            call {:id "id490"} CoCall$$_module.__default.Lemma__FilterPreservesIncrFrom_h(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, _k##0, s##0, P##0, low##0, ord##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(269,14)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##1 := s#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            P##1 := P#1;
            call {:id "id491"} Call$$_module.__default.NextLemma(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s##1, P##1);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Filter.dfy(270,39)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##1 := _k#0;
            assume _module.Stream.Cons_q(s#1);
            assume _module.Stream.Cons_q(s#1);
            // ProcessCallStmt: CheckSubrange
            s##2 := _module.Stream.tail(s#1);
            assume true;
            // ProcessCallStmt: CheckSubrange
            P##2 := P#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            low##1 := low#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            ord##1 := ord#1;
            assert {:id "id492"} 0 <= _k#0 || _k##1 == _k#0;
            assert {:id "id493"} 0
                 <= _module.__default.Next(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, P#1)
               || _k##1 < _k#0
               || _module.__default.Next(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s##2, P##2)
                 == _module.__default.Next(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, P#1);
            assert {:id "id494"} _k##1 < _k#0
               || (_k##1 == _k#0
                 && _module.__default.Next(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s##2, P##2)
                   < _module.__default.Next(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, s#1, P#1));
            call {:id "id495"} CoCall$$_module.__default.Lemma__FilterPreservesIncrFrom_h(_module._default.Lemma_FilterPreservesIncrFrom#$_T0, _k##1, s##2, P##2, low##1, ord##1);
            // TrCallStmt: After ProcessCallStmt
        }
    }
    else
    {
    }
}



// Constructor function declaration
function #_module.Stream.Cons(Box, DatatypeType) : DatatypeType;

const unique ##_module.Stream.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: DatatypeType :: 
  { #_module.Stream.Cons(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_module.Stream.Cons(a#0#0#0, a#0#1#0)) == ##_module.Stream.Cons);
}

function _module.Stream.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Stream.Cons_q(d) } 
  _module.Stream.Cons_q(d) <==> DatatypeCtorId(d) == ##_module.Stream.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Stream.Cons_q(d) } 
  _module.Stream.Cons_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: DatatypeType :: 
      d == #_module.Stream.Cons(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall _module.Stream$T: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType :: 
  { $Is(#_module.Stream.Cons(a#2#0#0, a#2#1#0), Tclass._module.Stream(_module.Stream$T)) } 
  $Is(#_module.Stream.Cons(a#2#0#0, a#2#1#0), Tclass._module.Stream(_module.Stream$T))
     <==> $IsBox(a#2#0#0, _module.Stream$T)
       && $Is(a#2#1#0, Tclass._module.Stream(_module.Stream$T)));

// Constructor $IsAlloc
axiom (forall _module.Stream$T: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.Stream.Cons(a#2#0#0, a#2#1#0), 
      Tclass._module.Stream(_module.Stream$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Stream.Cons(a#2#0#0, a#2#1#0), 
        Tclass._module.Stream(_module.Stream$T), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _module.Stream$T, $h)
         && $IsAlloc(a#2#1#0, Tclass._module.Stream(_module.Stream$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Stream.head(d), _module.Stream$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.Cons_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$T), $h)
     ==> $IsAllocBox(_module.Stream.head(d), _module.Stream$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.Stream.tail(d), Tclass._module.Stream(_module.Stream$T), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.Cons_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$T), $h)
     ==> $IsAlloc(_module.Stream.tail(d), Tclass._module.Stream(_module.Stream$T), $h));

function _module.Stream.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#3#0#0: Box, a#3#1#0: DatatypeType :: 
  { #_module.Stream.Cons(a#3#0#0, a#3#1#0) } 
  _module.Stream.head(#_module.Stream.Cons(a#3#0#0, a#3#1#0)) == a#3#0#0);

function _module.Stream.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #_module.Stream.Cons(a#4#0#0, a#4#1#0) } 
  _module.Stream.tail(#_module.Stream.Cons(a#4#0#0, a#4#1#0)) == a#4#1#0);

// Depth-one case-split function
function $IsA#_module.Stream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Stream(d) } 
  $IsA#_module.Stream(d) ==> _module.Stream.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Stream$T: Ty, d: DatatypeType :: 
  { _module.Stream.Cons_q(d), $Is(d, Tclass._module.Stream(_module.Stream$T)) } 
  $Is(d, Tclass._module.Stream(_module.Stream$T)) ==> _module.Stream.Cons_q(d));

function $Eq#_module.Stream(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream(_module.Stream$T#l))
       && $Is(d1, Tclass._module.Stream(_module.Stream$T#r))
     ==> ($Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
       <==> _module.Stream.Cons_q(d0)
         && _module.Stream.Cons_q(d1)
         && (_module.Stream.Cons_q(d0) && _module.Stream.Cons_q(d1)
           ==> _module.Stream.head(d0) == _module.Stream.head(d1)
             && $Eq#_module.Stream(_module.Stream$T#l, 
              _module.Stream$T#r, 
              ly, 
              _module.Stream.tail(d0), 
              _module.Stream.tail(d1)))));

// Unbump layer co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
     <==> $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.Stream(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream(_module.Stream$T#l))
       && $Is(d1, Tclass._module.Stream(_module.Stream$T#r))
     ==> ($PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> _module.Stream.Cons_q(d0)
             && _module.Stream.Cons_q(d1)
             && (_module.Stream.Cons_q(d0) && _module.Stream.Cons_q(d1)
               ==> _module.Stream.head(d0) == _module.Stream.head(d1)
                 && $PrefixEq#_module.Stream(_module.Stream$T#l, 
                  _module.Stream$T#r, 
                  ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  _module.Stream.tail(d0), 
                  _module.Stream.tail(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1), $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1));

const unique class._module.Stream: ClassName;

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

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$_#Func4: TyTagFamily;

const unique tytagFamily$_#PartialFunc4: TyTagFamily;

const unique tytagFamily$_#TotalFunc4: TyTagFamily;

const unique tytagFamily$Stream: TyTagFamily;
