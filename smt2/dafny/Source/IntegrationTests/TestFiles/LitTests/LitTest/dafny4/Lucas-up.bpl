// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy

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

const reveal__module._default.EVEN: bool;

const reveal__module._default.binom: bool;

const unique class._module.__default: ClassName;

// function declaration for _module._default.Bit
function _module.__default.Bit($ly: LayerType, k#0: int, n#0: int) : bool
uses {
// definition axiom for _module.__default.Bit (revealed)
axiom {:id "id0"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, k#0: int, n#0: int :: 
    { _module.__default.Bit($LS($ly), k#0, n#0) } 
    _module.__default.Bit#canCall(k#0, n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= k#0 && LitInt(0) <= n#0)
       ==> (k#0 != LitInt(0)
           ==> _module.__default.Bit#canCall(k#0 - 1, Div(n#0, LitInt(2))))
         && _module.__default.Bit($LS($ly), k#0, n#0)
           == (if k#0 == LitInt(0)
             then Mod(n#0, LitInt(2)) == LitInt(1)
             else _module.__default.Bit($ly, k#0 - 1, Div(n#0, LitInt(2)))));
// definition axiom for _module.__default.Bit for all literals (revealed)
axiom {:id "id1"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, k#0: int, n#0: int :: 
    {:weight 3} { _module.__default.Bit($LS($ly), LitInt(k#0), LitInt(n#0)) } 
    _module.__default.Bit#canCall(LitInt(k#0), LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= k#0 && LitInt(0) <= n#0)
       ==> (LitInt(k#0) != LitInt(0)
           ==> _module.__default.Bit#canCall(LitInt(k#0 - 1), LitInt(Div(n#0, LitInt(2)))))
         && _module.__default.Bit($LS($ly), LitInt(k#0), LitInt(n#0))
           == (if LitInt(k#0) == LitInt(0)
             then LitInt(Mod(n#0, LitInt(2))) == LitInt(1)
             else _module.__default.Bit($LS($ly), LitInt(k#0 - 1), LitInt(Div(n#0, LitInt(2))))));
}

function _module.__default.Bit#canCall(k#0: int, n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, k#0: int, n#0: int :: 
  { _module.__default.Bit($LS($ly), k#0, n#0) } 
  _module.__default.Bit($LS($ly), k#0, n#0)
     == _module.__default.Bit($ly, k#0, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, k#0: int, n#0: int :: 
  { _module.__default.Bit(AsFuelBottom($ly), k#0, n#0) } 
  _module.__default.Bit($ly, k#0, n#0) == _module.__default.Bit($LZ, k#0, n#0));

function _module.__default.Bit#requires(LayerType, int, int) : bool;

// #requires axiom for _module.__default.Bit
axiom (forall $ly: LayerType, k#0: int, n#0: int :: 
  { _module.__default.Bit#requires($ly, k#0, n#0) } 
  LitInt(0) <= k#0 && LitInt(0) <= n#0
     ==> _module.__default.Bit#requires($ly, k#0, n#0) == true);

procedure {:verboseName "Bit (well-formedness)"} CheckWellformed$$_module.__default.Bit(k#0: int where LitInt(0) <= k#0, n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Bit (well-formedness)"} CheckWellformed$$_module.__default.Bit(k#0: int, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##k#0: int;
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
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (k#0 == LitInt(0))
        {
            assert {:id "id2"} LitInt(2) != 0;
            assume {:id "id3"} _module.__default.Bit($LS($LZ), k#0, n#0) == (Mod(n#0, LitInt(2)) == LitInt(1));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Bit($LS($LZ), k#0, n#0), TBool);
            return;
        }
        else
        {
            assert {:id "id4"} $Is(k#0 - 1, Tclass._System.nat());
            ##k#0 := k#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#0, Tclass._System.nat(), $Heap);
            assert {:id "id5"} LitInt(2) != 0;
            assert {:id "id6"} $Is(Div(n#0, LitInt(2)), Tclass._System.nat());
            ##n#0 := Div(n#0, LitInt(2));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assert {:id "id7"} 0 <= k#0 || ##k#0 == k#0;
            assert {:id "id8"} 0 <= n#0 || ##k#0 < k#0 || ##n#0 == n#0;
            assert {:id "id9"} ##k#0 < k#0 || (##k#0 == k#0 && ##n#0 < n#0);
            assume _module.__default.Bit#canCall(k#0 - 1, Div(n#0, LitInt(2)));
            assume {:id "id10"} _module.__default.Bit($LS($LZ), k#0, n#0)
               == _module.__default.Bit($LS($LZ), k#0 - 1, Div(n#0, LitInt(2)));
            assume _module.__default.Bit#canCall(k#0 - 1, Div(n#0, LitInt(2)));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Bit($LS($LZ), k#0, n#0), TBool);
            return;
        }

        assume false;
    }
}



procedure {:verboseName "ZeroBitOfEven (well-formedness)"} CheckWellFormed$$_module.__default.ZeroBitOfEven(n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZeroBitOfEven (well-formedness)"} CheckWellFormed$$_module.__default.ZeroBitOfEven(n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##k#0: int;
  var ##n#0: int;


    // AddMethodImpl: ZeroBitOfEven, CheckWellFormed$$_module.__default.ZeroBitOfEven
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id11"} $Is(LitInt(0), Tclass._System.nat());
    ##k#0 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#0, Tclass._System.nat(), $Heap);
    assert {:id "id12"} $Is(Mul(LitInt(2), n#0), Tclass._System.nat());
    ##n#0 := Mul(LitInt(2), n#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.Bit#canCall(LitInt(0), Mul(LitInt(2), n#0));
    assume {:id "id13"} !_module.__default.Bit($LS($LZ), LitInt(0), Mul(LitInt(2), n#0));
}



procedure {:verboseName "ZeroBitOfEven (call)"} Call$$_module.__default.ZeroBitOfEven(n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Bit#canCall(LitInt(0), Mul(LitInt(2), n#0));
  ensures {:id "id14"} !_module.__default.Bit($LS($LS($LZ)), LitInt(0), Mul(LitInt(2), n#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ZeroBitOfEven (correctness)"} Impl$$_module.__default.ZeroBitOfEven(n#0: int where LitInt(0) <= n#0) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Bit#canCall(LitInt(0), Mul(LitInt(2), n#0));
  ensures {:id "id15"} !_module.__default.Bit($LS($LS($LZ)), LitInt(0), Mul(LitInt(2), n#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZeroBitOfEven (correctness)"} Impl$$_module.__default.ZeroBitOfEven(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var r#0: int;
  var ##k#1: int;
  var ##n#1: int;

    // AddMethodImpl: ZeroBitOfEven, Impl$$_module.__default.ZeroBitOfEven
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int :: 
      { _module.__default.Bit($LS($LZ), LitInt(0), Mul(LitInt(2), $ih#n0#0)) } 
      LitInt(0) <= $ih#n0#0 && Lit(true) && 0 <= $ih#n0#0 && $ih#n0#0 < n#0
         ==> !_module.__default.Bit($LS($LZ), LitInt(0), Mul(LitInt(2), $ih#n0#0)));
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(30,9)
    assume true;
    assume true;
    r#0 := Mul(LitInt(2), n#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(31,3)
    assert {:id "id17"} $Is(LitInt(0), Tclass._System.nat());
    ##k#1 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#1, Tclass._System.nat(), $Heap);
    assert {:id "id18"} $Is(r#0, Tclass._System.nat());
    ##n#1 := r#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.Bit#canCall(LitInt(0), r#0);
    assert {:id "id19"} {:subsumption 0} LitInt(2) != 0;
    assume _module.__default.Bit#canCall(LitInt(0), r#0);
    assert {:id "id20"} {:subsumption 0} _module.__default.Bit($LS($LS($LZ)), LitInt(0), r#0)
       <==> Mod(r#0, LitInt(2)) == LitInt(1);
    assume {:id "id21"} _module.__default.Bit($LS($LZ), LitInt(0), r#0)
       <==> Mod(r#0, LitInt(2)) == LitInt(1);
}



// function declaration for _module._default.BitSet
function _module.__default.BitSet(n#0: int) : Set
uses {
// consequence axiom for _module.__default.BitSet
axiom 1 <= $FunctionContextHeight
   ==> (forall n#0: int :: 
    { _module.__default.BitSet(n#0) } 
    _module.__default.BitSet#canCall(n#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> $Is(_module.__default.BitSet(n#0), TSet(Tclass._System.nat())));
// definition axiom for _module.__default.BitSet (revealed)
axiom {:id "id22"} 1 <= $FunctionContextHeight
   ==> (forall n#0: int :: 
    { _module.__default.BitSet(n#0) } 
    _module.__default.BitSet#canCall(n#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (forall i#0: int :: 
          { _module.__default.Bit($LS($LZ), i#0, n#0) } 
          LitInt(0) <= i#0 ==> i#0 < n#0 ==> _module.__default.Bit#canCall(i#0, n#0))
         && _module.__default.BitSet(n#0)
           == Set#FromBoogieMap((lambda $y#0: Box :: 
              $IsBox($y#0, TInt)
                 && 
                LitInt(0) <= $Unbox($y#0): int
                 && $Unbox($y#0): int < n#0
                 && _module.__default.Bit($LS($LZ), $Unbox($y#0): int, n#0))));
// definition axiom for _module.__default.BitSet for all literals (revealed)
axiom {:id "id23"} 1 <= $FunctionContextHeight
   ==> (forall n#0: int :: 
    {:weight 3} { _module.__default.BitSet(LitInt(n#0)) } 
    _module.__default.BitSet#canCall(LitInt(n#0))
         || (1 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (forall i#1: int :: 
          { _module.__default.Bit($LS($LZ), i#1, n#0) } 
          LitInt(0) <= i#1
             ==> 
            i#1 < n#0
             ==> _module.__default.Bit#canCall(i#1, LitInt(n#0)))
         && _module.__default.BitSet(LitInt(n#0))
           == Set#FromBoogieMap((lambda $y#1: Box :: 
              $IsBox($y#1, TInt)
                 && 
                LitInt(0) <= $Unbox($y#1): int
                 && $Unbox($y#1): int < n#0
                 && _module.__default.Bit($LS($LZ), $Unbox($y#1): int, LitInt(n#0)))));
}

function _module.__default.BitSet#canCall(n#0: int) : bool;

function _module.__default.BitSet#requires(int) : bool;

// #requires axiom for _module.__default.BitSet
axiom (forall n#0: int :: 
  { _module.__default.BitSet#requires(n#0) } 
  LitInt(0) <= n#0 ==> _module.__default.BitSet#requires(n#0) == true);

procedure {:verboseName "BitSet (well-formedness)"} CheckWellformed$$_module.__default.BitSet(n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BitSet (well-formedness)"} CheckWellformed$$_module.__default.BitSet(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var i#2: int;
  var ##k#0: int;
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
        assume $Is(_module.__default.BitSet(n#0), TSet(Tclass._System.nat()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc i#2;
        if (true)
        {
            if (LitInt(0) <= i#2)
            {
            }

            if (LitInt(0) <= i#2 && i#2 < n#0)
            {
                assert {:id "id24"} $Is(i#2, Tclass._System.nat());
                ##k#0 := i#2;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0, Tclass._System.nat(), $Heap);
                ##n#0 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
                assume _module.__default.Bit#canCall(i#2, n#0);
            }

            if (LitInt(0) <= i#2 && i#2 < n#0 && _module.__default.Bit($LS($LZ), i#2, n#0))
            {
            }
        }

        // End Comprehension WF check
        assert {:id "id25"} $Is(Set#FromBoogieMap((lambda $y#2: Box :: 
              $IsBox($y#2, TInt)
                 && 
                LitInt(0) <= $Unbox($y#2): int
                 && $Unbox($y#2): int < n#0
                 && _module.__default.Bit($LS($LZ), $Unbox($y#2): int, n#0))), 
          TSet(Tclass._System.nat()));
        assume {:id "id26"} _module.__default.BitSet(n#0)
           == Set#FromBoogieMap((lambda $y#3: Box :: 
              $IsBox($y#3, TInt)
                 && 
                LitInt(0) <= $Unbox($y#3): int
                 && $Unbox($y#3): int < n#0
                 && _module.__default.Bit($LS($LZ), $Unbox($y#3): int, n#0)));
        assume (forall i#3: int :: 
          { _module.__default.Bit($LS($LZ), i#3, n#0) } 
          LitInt(0) <= i#3 && i#3 < n#0 ==> _module.__default.Bit#canCall(i#3, n#0));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.BitSet(n#0), TSet(Tclass._System.nat()));
        return;

        assume false;
    }
}



procedure {:verboseName "BitSize (well-formedness)"} CheckWellFormed$$_module.__default.BitSize(i#0: int where LitInt(0) <= i#0, n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BitSize (call)"} Call$$_module.__default.BitSize(i#0: int where LitInt(0) <= i#0, n#0: int where LitInt(0) <= n#0);
  // user-defined preconditions
  requires {:id "id29"} _module.__default.Bit#canCall(i#0, n#0)
     ==> _module.__default.Bit($LS($LZ), i#0, n#0)
       || (i#0 == LitInt(0) ==> Mod(n#0, LitInt(2)) == LitInt(1));
  requires {:id "id30"} _module.__default.Bit#canCall(i#0, n#0)
     ==> _module.__default.Bit($LS($LZ), i#0, n#0)
       || (i#0 != LitInt(0)
         ==> _module.__default.Bit($LS($LS($LZ)), i#0 - 1, Div(n#0, LitInt(2))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id31"} i#0 < n#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BitSize (correctness)"} Impl$$_module.__default.BitSize(i#0: int where LitInt(0) <= i#0, n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id32"} _module.__default.Bit#canCall(i#0, n#0)
     && 
    _module.__default.Bit($LS($LZ), i#0, n#0)
     && (if i#0 == LitInt(0)
       then Mod(n#0, LitInt(2)) == LitInt(1)
       else _module.__default.Bit($LS($LZ), i#0 - 1, Div(n#0, LitInt(2))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id33"} i#0 < n#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BitSize (correctness)"} Impl$$_module.__default.BitSize(i#0: int, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: BitSize, Impl$$_module.__default.BitSize
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#i0#0: int, $ih#n0#0: int :: 
      { _module.__default.Bit($LS($LZ), $ih#i0#0, $ih#n0#0) } 
      LitInt(0) <= $ih#i0#0
           && LitInt(0) <= $ih#n0#0
           && _module.__default.Bit($LS($LZ), $ih#i0#0, $ih#n0#0)
           && ((0 <= $ih#i0#0 && $ih#i0#0 < i#0)
             || ($ih#i0#0 == i#0 && 0 <= $ih#n0#0 && $ih#n0#0 < n#0))
         ==> $ih#i0#0 < $ih#n0#0);
    $_reverifyPost := false;
}



// function declaration for _module._default.EVEN
function _module.__default.EVEN($reveal: bool, n#0: int) : bool
uses {
// definition axiom for _module.__default.EVEN (revealed)
axiom {:id "id34"} 0 <= $FunctionContextHeight
   ==> (forall n#0: int :: 
    { _module.__default.EVEN(true, n#0) } 
    _module.__default.EVEN#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> _module.__default.EVEN(true, n#0) == (Mod(n#0, LitInt(2)) == LitInt(0)));
// definition axiom for _module.__default.EVEN for all literals (revealed)
axiom {:id "id35"} 0 <= $FunctionContextHeight
   ==> (forall n#0: int :: 
    {:weight 3} { _module.__default.EVEN(true, LitInt(n#0)) } 
    _module.__default.EVEN#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> _module.__default.EVEN(true, LitInt(n#0))
         == 
        (LitInt(Mod(n#0, LitInt(2)))
         == LitInt(0)));
}

function _module.__default.EVEN#canCall(n#0: int) : bool;

function _module.__default.EVEN#requires(int) : bool;

// #requires axiom for _module.__default.EVEN
axiom (forall n#0: int :: 
  { _module.__default.EVEN#requires(n#0) } 
  LitInt(0) <= n#0 ==> _module.__default.EVEN#requires(n#0) == true);

procedure {:verboseName "EVEN (well-formedness)"} CheckWellformed$$_module.__default.EVEN(n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EVEN (well-formedness)"} CheckWellformed$$_module.__default.EVEN(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
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
        assert {:id "id36"} LitInt(2) != 0;
        assume {:id "id37"} _module.__default.EVEN(reveal__module._default.EVEN, n#0)
           == 
          (Mod(n#0, LitInt(2))
           == LitInt(0));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.EVEN(reveal__module._default.EVEN, n#0), TBool);
        return;

        assume false;
    }
}



procedure {:verboseName "EvenPlus (well-formedness)"} CheckWellFormed$$_module.__default.EvenPlus(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EvenPlus (well-formedness)"} CheckWellFormed$$_module.__default.EvenPlus(a#0: int, b#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##n#1: int;
  var ##n#2: int;


    // AddMethodImpl: EvenPlus, CheckWellFormed$$_module.__default.EvenPlus
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id38"} $Is(a#0 + b#0, Tclass._System.nat());
    ##n#0 := a#0 + b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(a#0 + b#0);
    ##n#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(a#0);
    ##n#2 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(b#0);
    assume {:id "id39"} _module.__default.EVEN(reveal__module._default.EVEN, a#0 + b#0)
       <==> _module.__default.EVEN(reveal__module._default.EVEN, a#0)
         == _module.__default.EVEN(reveal__module._default.EVEN, b#0);
}



procedure {:verboseName "EvenPlus (call)"} Call$$_module.__default.EvenPlus(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.EVEN#canCall(a#0 + b#0)
     && 
    _module.__default.EVEN#canCall(a#0)
     && _module.__default.EVEN#canCall(b#0);
  ensures {:id "id40"} _module.__default.EVEN(reveal__module._default.EVEN, a#0 + b#0)
     <==> _module.__default.EVEN(reveal__module._default.EVEN, a#0)
       == _module.__default.EVEN(reveal__module._default.EVEN, b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EvenPlus (correctness)"} Impl$$_module.__default.EvenPlus(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.EVEN#canCall(a#0 + b#0)
     && 
    _module.__default.EVEN#canCall(a#0)
     && _module.__default.EVEN#canCall(b#0);
  ensures {:id "id41"} _module.__default.EVEN(reveal__module._default.EVEN, a#0 + b#0)
     <==> _module.__default.EVEN(reveal__module._default.EVEN, a#0)
       == _module.__default.EVEN(reveal__module._default.EVEN, b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EvenPlus (correctness)"} Impl$$_module.__default.EvenPlus(a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: EvenPlus, Impl$$_module.__default.EvenPlus
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(60,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(60,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id42"} Call$$_module.__default.reveal__EVEN();
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for _module._default.binom
function _module.__default.binom($ly: LayerType, $reveal: bool, a#0: int, b#0: int) : int
uses {
// consequence axiom for _module.__default.binom
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $reveal: bool, a#0: int, b#0: int :: 
    { _module.__default.binom($ly, $reveal, a#0, b#0) } 
    _module.__default.binom#canCall(a#0, b#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= a#0 && LitInt(0) <= b#0)
       ==> LitInt(0) <= _module.__default.binom($ly, $reveal, a#0, b#0));
// definition axiom for _module.__default.binom (revealed)
axiom {:id "id43"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: int, b#0: int :: 
    { _module.__default.binom($LS($ly), true, a#0, b#0) } 
    _module.__default.binom#canCall(a#0, b#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= a#0 && LitInt(0) <= b#0)
       ==> (b#0 != LitInt(0)
           ==> 
          a#0 != LitInt(0)
           ==> _module.__default.binom#canCall(a#0 - 1, b#0)
             && _module.__default.binom#canCall(a#0 - 1, b#0 - 1))
         && _module.__default.binom($LS($ly), true, a#0, b#0)
           == (if b#0 == LitInt(0)
             then 1
             else (if a#0 == LitInt(0)
               then 0
               else _module.__default.binom($ly, reveal__module._default.binom, a#0 - 1, b#0)
                 + _module.__default.binom($ly, reveal__module._default.binom, a#0 - 1, b#0 - 1))));
// definition axiom for _module.__default.binom for all literals (revealed)
axiom {:id "id44"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: int, b#0: int :: 
    {:weight 3} { _module.__default.binom($LS($ly), true, LitInt(a#0), LitInt(b#0)) } 
    _module.__default.binom#canCall(LitInt(a#0), LitInt(b#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= a#0 && LitInt(0) <= b#0)
       ==> (LitInt(b#0) != LitInt(0)
           ==> 
          LitInt(a#0) != LitInt(0)
           ==> _module.__default.binom#canCall(LitInt(a#0 - 1), LitInt(b#0))
             && _module.__default.binom#canCall(LitInt(a#0 - 1), LitInt(b#0 - 1)))
         && _module.__default.binom($LS($ly), true, LitInt(a#0), LitInt(b#0))
           == (if LitInt(b#0) == LitInt(0)
             then 1
             else (if LitInt(a#0) == LitInt(0)
               then 0
               else _module.__default.binom($LS($ly), reveal__module._default.binom, LitInt(a#0 - 1), LitInt(b#0))
                 + _module.__default.binom($LS($ly), reveal__module._default.binom, LitInt(a#0 - 1), LitInt(b#0 - 1)))));
}

function _module.__default.binom#canCall(a#0: int, b#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $reveal: bool, a#0: int, b#0: int :: 
  { _module.__default.binom($LS($ly), $reveal, a#0, b#0) } 
  _module.__default.binom($LS($ly), $reveal, a#0, b#0)
     == _module.__default.binom($ly, $reveal, a#0, b#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $reveal: bool, a#0: int, b#0: int :: 
  { _module.__default.binom(AsFuelBottom($ly), $reveal, a#0, b#0) } 
  _module.__default.binom($ly, $reveal, a#0, b#0)
     == _module.__default.binom($LZ, $reveal, a#0, b#0));

function _module.__default.binom#requires(LayerType, int, int) : bool;

// #requires axiom for _module.__default.binom
axiom (forall $ly: LayerType, a#0: int, b#0: int :: 
  { _module.__default.binom#requires($ly, a#0, b#0) } 
  LitInt(0) <= a#0 && LitInt(0) <= b#0
     ==> _module.__default.binom#requires($ly, a#0, b#0) == true);

procedure {:verboseName "binom (well-formedness)"} CheckWellformed$$_module.__default.binom(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "binom (well-formedness)"} CheckWellformed$$_module.__default.binom(a#0: int, b#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##a#0: int;
  var ##b#0: int;
  var ##a#1: int;
  var ##b#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0)
           <= _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (b#0 == LitInt(0))
        {
            assert {:id "id45"} $Is(LitInt(1), Tclass._System.nat());
            assume {:id "id46"} _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0)
               == LitInt(1);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0), 
              Tclass._System.nat());
            return;
        }
        else
        {
            if (a#0 == LitInt(0))
            {
                assert {:id "id47"} $Is(LitInt(0), Tclass._System.nat());
                assume {:id "id48"} _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0)
                   == LitInt(0);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0), 
                  Tclass._System.nat());
                return;
            }
            else
            {
                assert {:id "id49"} $Is(a#0 - 1, Tclass._System.nat());
                ##a#0 := a#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0, Tclass._System.nat(), $Heap);
                ##b#0 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#0, Tclass._System.nat(), $Heap);
                assert {:id "id50"} 0 <= a#0 || ##a#0 == a#0;
                assert {:id "id51"} 0 <= b#0 || ##a#0 < a#0 || ##b#0 == b#0;
                assert {:id "id52"} ##a#0 < a#0 || (##a#0 == a#0 && ##b#0 < b#0);
                assume _module.__default.binom#canCall(a#0 - 1, b#0);
                assert {:id "id53"} $Is(a#0 - 1, Tclass._System.nat());
                ##a#1 := a#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1, Tclass._System.nat(), $Heap);
                assert {:id "id54"} $Is(b#0 - 1, Tclass._System.nat());
                ##b#1 := b#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1, Tclass._System.nat(), $Heap);
                assert {:id "id55"} 0 <= a#0 || ##a#1 == a#0;
                assert {:id "id56"} 0 <= b#0 || ##a#1 < a#0 || ##b#1 == b#0;
                assert {:id "id57"} ##a#1 < a#0 || (##a#1 == a#0 && ##b#1 < b#0);
                assume _module.__default.binom#canCall(a#0 - 1, b#0 - 1);
                assert {:id "id58"} $Is(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0 - 1, b#0)
                     + _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0 - 1, b#0 - 1), 
                  Tclass._System.nat());
                assume {:id "id59"} _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0)
                   == _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0 - 1, b#0)
                     + _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0 - 1, b#0 - 1);
                assume _module.__default.binom#canCall(a#0 - 1, b#0)
                   && _module.__default.binom#canCall(a#0 - 1, b#0 - 1);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0), 
                  Tclass._System.nat());
                return;
            }
        }

        assume false;
    }
}



procedure {:verboseName "Lucas_Binary (well-formedness)"} CheckWellFormed$$_module.__default.Lucas__Binary(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lucas_Binary (well-formedness)"} CheckWellFormed$$_module.__default.Lucas__Binary(a#0: int, b#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##a#0: int;
  var ##b#0: int;
  var ##n#1: int;
  var ##a#1: int;
  var ##b#1: int;
  var ##n#2: int;
  var ##a#2: int;
  var ##b#2: int;
  var ##n#3: int;
  var ##a#3: int;
  var ##b#3: int;
  var ##n#4: int;
  var ##a#4: int;
  var ##b#4: int;
  var ##n#5: int;
  var ##a#5: int;
  var ##b#5: int;
  var ##n#6: int;
  var ##a#6: int;
  var ##b#6: int;


    // AddMethodImpl: Lucas_Binary, CheckWellFormed$$_module.__default.Lucas__Binary
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id60"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
    ##a#0 := Mul(LitInt(2), a#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._System.nat(), $Heap);
    assert {:id "id61"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
    ##b#0 := Mul(LitInt(2), b#0) + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1);
    ##n#0 := _module.__default.binom($LS($LZ), 
      reveal__module._default.binom, 
      Mul(LitInt(2), a#0), 
      Mul(LitInt(2), b#0) + 1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0) + 1));
    assume {:id "id62"} _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0) + 1));
    assert {:id "id63"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
    ##a#1 := Mul(LitInt(2), a#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, Tclass._System.nat(), $Heap);
    assert {:id "id64"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
    ##b#1 := Mul(LitInt(2), b#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
    ##n#1 := _module.__default.binom($LS($LZ), 
      reveal__module._default.binom, 
      Mul(LitInt(2), a#0), 
      Mul(LitInt(2), b#0));
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0)));
    ##a#2 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#2, Tclass._System.nat(), $Heap);
    ##b#2 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(a#0, b#0);
    ##n#2 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
    assume {:id "id65"} _module.__default.EVEN(reveal__module._default.EVEN, 
        _module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0), 
          Mul(LitInt(2), b#0)))
       <==> _module.__default.EVEN(reveal__module._default.EVEN, 
        _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
    assert {:id "id66"} $Is(Mul(LitInt(2), a#0) + 1, Tclass._System.nat());
    ##a#3 := Mul(LitInt(2), a#0) + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#3, Tclass._System.nat(), $Heap);
    assert {:id "id67"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
    ##b#3 := Mul(LitInt(2), b#0) + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0) + 1);
    ##n#3 := _module.__default.binom($LS($LZ), 
      reveal__module._default.binom, 
      Mul(LitInt(2), a#0) + 1, 
      Mul(LitInt(2), b#0) + 1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0) + 1));
    ##a#4 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#4, Tclass._System.nat(), $Heap);
    ##b#4 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(a#0, b#0);
    ##n#4 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#4, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
    assume {:id "id68"} _module.__default.EVEN(reveal__module._default.EVEN, 
        _module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0) + 1, 
          Mul(LitInt(2), b#0) + 1))
       <==> _module.__default.EVEN(reveal__module._default.EVEN, 
        _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
    assert {:id "id69"} $Is(Mul(LitInt(2), a#0) + 1, Tclass._System.nat());
    ##a#5 := Mul(LitInt(2), a#0) + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#5, Tclass._System.nat(), $Heap);
    assert {:id "id70"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
    ##b#5 := Mul(LitInt(2), b#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#5, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0));
    ##n#5 := _module.__default.binom($LS($LZ), 
      reveal__module._default.binom, 
      Mul(LitInt(2), a#0) + 1, 
      Mul(LitInt(2), b#0));
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#5, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0)));
    ##a#6 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#6, Tclass._System.nat(), $Heap);
    ##b#6 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#6, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(a#0, b#0);
    ##n#6 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#6, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
    assume {:id "id71"} _module.__default.EVEN(reveal__module._default.EVEN, 
        _module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0) + 1, 
          Mul(LitInt(2), b#0)))
       <==> _module.__default.EVEN(reveal__module._default.EVEN, 
        _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
}



procedure {:verboseName "Lucas_Binary (call)"} Call$$_module.__default.Lucas__Binary(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0) + 1));
  ensures {:id "id72"} _module.__default.EVEN(reveal__module._default.EVEN, 
    _module.__default.binom($LS($LS($LZ)), 
      reveal__module._default.binom, 
      Mul(LitInt(2), a#0), 
      Mul(LitInt(2), b#0) + 1));
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0)))
     && 
    _module.__default.binom#canCall(a#0, b#0)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
  ensures {:id "id73"} _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0)))
     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0));
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0) + 1)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0) + 1))
     && 
    _module.__default.binom#canCall(a#0, b#0)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
  ensures {:id "id74"} _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0) + 1))
     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0));
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0))
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0)))
     && 
    _module.__default.binom#canCall(a#0, b#0)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
  ensures {:id "id75"} _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0)))
     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lucas_Binary (correctness)"} Impl$$_module.__default.Lucas__Binary(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0) + 1));
  ensures {:id "id76"} _module.__default.EVEN(reveal__module._default.EVEN, 
    _module.__default.binom($LS($LS($LZ)), 
      reveal__module._default.binom, 
      Mul(LitInt(2), a#0), 
      Mul(LitInt(2), b#0) + 1));
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0)))
     && 
    _module.__default.binom#canCall(a#0, b#0)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
  ensures {:id "id77"} _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0)))
     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0));
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0) + 1)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0) + 1))
     && 
    _module.__default.binom#canCall(a#0, b#0)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
  ensures {:id "id78"} _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0) + 1))
     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0));
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0))
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0)))
     && 
    _module.__default.binom#canCall(a#0, b#0)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
  ensures {:id "id79"} _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0)))
     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lucas_Binary (correctness)"} Impl$$_module.__default.Lucas__Binary(a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a##0: int;
  var b##0: int;
  var a##1: int;
  var b##1: int;
  var a##2: int;
  var b##2: int;
  var a##3: int;
  var b##3: int;

    // AddMethodImpl: Lucas_Binary, Impl$$_module.__default.Lucas__Binary
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(82,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := b#0;
    call {:id "id80"} Call$$_module.__default.Lucas__Binary01(a##0, b##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(83,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##1 := b#0;
    call {:id "id81"} Call$$_module.__default.Lucas__Binary00(a##1, b##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(84,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##2 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##2 := b#0;
    call {:id "id82"} Call$$_module.__default.Lucas__Binary11(a##2, b##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(85,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##3 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##3 := b#0;
    call {:id "id83"} Call$$_module.__default.Lucas__Binary10(a##3, b##3);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Lucas_Binary01 (well-formedness)"} CheckWellFormed$$_module.__default.Lucas__Binary01(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lucas_Binary01 (well-formedness)"} CheckWellFormed$$_module.__default.Lucas__Binary01(a#0: int, b#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##a#0: int;
  var ##b#0: int;


    // AddMethodImpl: Lucas_Binary01, CheckWellFormed$$_module.__default.Lucas__Binary01
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id84"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
    ##a#0 := Mul(LitInt(2), a#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._System.nat(), $Heap);
    assert {:id "id85"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
    ##b#0 := Mul(LitInt(2), b#0) + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1);
    ##n#0 := _module.__default.binom($LS($LZ), 
      reveal__module._default.binom, 
      Mul(LitInt(2), a#0), 
      Mul(LitInt(2), b#0) + 1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0) + 1));
    assume {:id "id86"} _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0) + 1));
}



procedure {:verboseName "Lucas_Binary01 (call)"} Call$$_module.__default.Lucas__Binary01(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0) + 1));
  ensures {:id "id87"} _module.__default.EVEN(reveal__module._default.EVEN, 
    _module.__default.binom($LS($LS($LZ)), 
      reveal__module._default.binom, 
      Mul(LitInt(2), a#0), 
      Mul(LitInt(2), b#0) + 1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lucas_Binary01 (correctness)"} Impl$$_module.__default.Lucas__Binary01(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0) + 1));
  ensures {:id "id88"} _module.__default.EVEN(reveal__module._default.EVEN, 
    _module.__default.binom($LS($LS($LZ)), 
      reveal__module._default.binom, 
      Mul(LitInt(2), a#0), 
      Mul(LitInt(2), b#0) + 1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lucas_Binary01 (correctness)"} Impl$$_module.__default.Lucas__Binary01(a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var aa#0: int;
  var bb#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var r#0: int where LitInt(0) <= r#0;
  var ##a#1: int;
  var ##b#1: int;
  var ##n#0_0: int;
  var ##n#0_1: int;
  var a'#1_0: int;
  var b'#1_0: int;
  var $rhs#1_0: int;
  var $rhs#1_1: int;
  var ##n#1_0_0_0: int;
  var ##a#1_0_0_0: int;
  var ##b#1_0_0_0: int;
  var ##n#1_0_0_1: int;
  var ##a#1_0_0_1: int;
  var ##b#1_0_0_1: int;
  var ##n#1_0_1_0: int;
  var ##a#1_0_1_0: int;
  var ##b#1_0_1_0: int;
  var ##n#1_0_1_1: int;
  var ##a#1_0_1_1: int;
  var ##b#1_0_1_1: int;
  var a##1_0_1_0: int;
  var b##1_0_1_0: int;
  var ##n#1_0_1_2: int;
  var ##a#1_0_1_2: int;
  var ##b#1_0_1_2: int;
  var ##n#1_0_1_3: int;
  var ##a#1_0_1_3: int;
  var ##b#1_0_1_3: int;
  var ##n#1_0_2_0: int;
  var ##a#1_0_2_0: int;
  var ##b#1_0_2_0: int;
  var ##n#1_0_2_1: int;
  var ##a#1_0_2_1: int;
  var ##b#1_0_2_1: int;
  var a##1_0_2_0: int;
  var b##1_0_2_0: int;
  var ##n#1_0_2_2: int;
  var ##a#1_0_2_2: int;
  var ##b#1_0_2_2: int;
  var ##n#1_0_2_3: int;
  var ##a#1_0_2_3: int;
  var ##b#1_0_2_3: int;
  var ##n#1_0_3_0: int;
  var ##a#1_0_3_0: int;
  var ##b#1_0_3_0: int;
  var ##n#1_0_3_1: int;
  var ##a#1_0_3_1: int;
  var ##b#1_0_3_1: int;
  var a##1_0_3_0: int;
  var ##a#1_0_3_2: int;
  var ##b#1_0_3_2: int;
  var b##1_0_3_0: int;
  var ##a#1_0_3_3: int;
  var ##b#1_0_3_3: int;
  var ##n#1_0_3_2: int;
  var ##a#1_0_3_4: int;
  var ##b#1_0_3_4: int;
  var ##a#1_0_3_5: int;
  var ##b#1_0_3_5: int;
  var ##n#1_0_4_0: int;
  var ##a#1_0_4_0: int;
  var ##b#1_0_4_0: int;
  var ##a#1_0_4_1: int;
  var ##b#1_0_4_1: int;
  var ##n#1_0_4_1: int;
  var ##a#1_0_4_2: int;
  var ##b#1_0_4_2: int;
  var ##a#1_0_4_3: int;
  var ##b#1_0_4_3: int;
  var ##n#1_0_5_0: int;
  var ##a#1_0_5_0: int;
  var ##b#1_0_5_0: int;
  var ##a#1_0_5_1: int;
  var ##b#1_0_5_1: int;
  var ##n#1_0_5_1: int;

    // AddMethodImpl: Lucas_Binary01, Impl$$_module.__default.Lucas__Binary01
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(92,14)
    assume true;
    assume true;
    assume true;
    $rhs#0 := Mul(LitInt(2), a#0);
    assume true;
    $rhs#1 := Mul(LitInt(2), b#0) + 1;
    aa#0 := $rhs#0;
    bb#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(93,9)
    assume true;
    assert {:id "id93"} $Is(aa#0, Tclass._System.nat());
    ##a#1 := aa#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, Tclass._System.nat(), $Heap);
    assert {:id "id94"} $Is(bb#0, Tclass._System.nat());
    ##b#1 := bb#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(aa#0, bb#0);
    assume _module.__default.binom#canCall(aa#0, bb#0);
    r#0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0, bb#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(95,3)
    assume true;
    assert {:id "id96"} bb#0 != 0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(96,3)
    assume true;
    if (aa#0 == LitInt(0))
    {
        if (*)
        {
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(98,7)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(98,14)
            // TrCallStmt: Before ProcessCallStmt
            call {:id "id97"} Call$$_module.__default.reveal__binom();
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(98,23)
            // TrCallStmt: Before ProcessCallStmt
            call {:id "id98"} Call$$_module.__default.reveal__EVEN();
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(97,5)
            if (r#0 == LitInt(0))
            {
                ##n#0_0 := r#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(r#0);
            }

            assume r#0 == LitInt(0) ==> _module.__default.EVEN#canCall(r#0);
            assert {:id "id99"} {:subsumption 0} r#0 == LitInt(0);
            assert {:id "id100"} {:subsumption 0} _module.__default.EVEN(reveal__module._default.EVEN, r#0);
            assume {:id "id101"} r#0 == LitInt(0) && _module.__default.EVEN(reveal__module._default.EVEN, r#0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(97,5)
        if (r#0 == LitInt(0))
        {
            ##n#0_1 := r#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_1, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(r#0);
        }

        assume r#0 == LitInt(0) ==> _module.__default.EVEN#canCall(r#0);
        assume true;
        assume true;
        assume {:id "id102"} r#0 == LitInt(0) && _module.__default.EVEN(reveal__module._default.EVEN, r#0);
    }
    else
    {
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(101,16)
        assume true;
        assume true;
        assume true;
        $rhs#1_0 := a#0 - 1;
        assume true;
        $rhs#1_1 := b#0 - 1;
        a'#1_0 := $rhs#1_0;
        b'#1_0 := $rhs#1_1;
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assume true;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assume {:id "id167"} $Is(aa#0 - 1, Tclass._System.nat());
            ##a#1_0_5_0 := aa#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_5_0, Tclass._System.nat(), $Heap);
            assume {:id "id168"} $Is(bb#0, Tclass._System.nat());
            ##b#1_0_5_0 := bb#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_5_0, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(aa#0 - 1, bb#0);
            assume {:id "id169"} $Is(aa#0 - 1, Tclass._System.nat());
            ##a#1_0_5_1 := aa#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_5_1, Tclass._System.nat(), $Heap);
            assume {:id "id170"} $Is(bb#0 - 1, Tclass._System.nat());
            ##b#1_0_5_1 := bb#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_5_1, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(aa#0 - 1, bb#0 - 1);
            assume {:id "id171"} $Is(_module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                 + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1), 
              Tclass._System.nat());
            ##n#1_0_5_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
               + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_5_0, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                 + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1));
            assume _module.__default.binom#canCall(aa#0 - 1, bb#0)
               && _module.__default.binom#canCall(aa#0 - 1, bb#0 - 1)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                   + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1));
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assume {:id "id172"} _module.__default.EVEN(reveal__module._default.EVEN, 
              _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                 + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1));
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(104,9)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(104,16)
            // TrCallStmt: Before ProcessCallStmt
            call {:id "id173"} Call$$_module.__default.reveal__binom();
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            ##n#1_0_5_1 := r#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_5_1, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(r#0);
            assume _module.__default.EVEN#canCall(r#0);
            // ----- assert line0 <== line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assert {:id "id174"} {:subsumption 0} _module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                   + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1))
               ==> _module.__default.EVEN(reveal__module._default.EVEN, r#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assume {:id "id153"} $Is(Mul(LitInt(2), a'#1_0) + 1, Tclass._System.nat());
            ##a#1_0_4_0 := Mul(LitInt(2), a'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_4_0, Tclass._System.nat(), $Heap);
            assume {:id "id154"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
            ##b#1_0_4_0 := Mul(LitInt(2), b#0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_4_0, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0) + 1);
            assume {:id "id155"} $Is(Mul(LitInt(2), a'#1_0) + 1, Tclass._System.nat());
            ##a#1_0_4_1 := Mul(LitInt(2), a'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_4_1, Tclass._System.nat(), $Heap);
            assume {:id "id156"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
            ##b#1_0_4_1 := Mul(LitInt(2), b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_4_1, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0));
            assume {:id "id157"} $Is(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0) + 1)
                 + _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0)), 
              Tclass._System.nat());
            ##n#1_0_4_0 := _module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a'#1_0) + 1, 
                Mul(LitInt(2), b#0) + 1)
               + _module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a'#1_0) + 1, 
                Mul(LitInt(2), b#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_4_0, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0) + 1)
                 + _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0)));
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0) + 1)
               && _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0))
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_0) + 1, 
                    Mul(LitInt(2), b#0) + 1)
                   + _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_0) + 1, 
                    Mul(LitInt(2), b#0)));
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assume {:id "id158"} _module.__default.EVEN(reveal__module._default.EVEN, 
              _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0) + 1)
                 + _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0)));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(106,9)
            assume true;
            assert {:id "id159"} aa#0 - 1 == Mul(LitInt(2), a'#1_0) + 1;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(106,36)
            assume true;
            assert {:id "id160"} bb#0 == Mul(LitInt(2), b#0) + 1;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assert {:id "id161"} $Is(aa#0 - 1, Tclass._System.nat());
            ##a#1_0_4_2 := aa#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_4_2, Tclass._System.nat(), $Heap);
            assert {:id "id162"} $Is(bb#0, Tclass._System.nat());
            ##b#1_0_4_2 := bb#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_4_2, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(aa#0 - 1, bb#0);
            assert {:id "id163"} $Is(aa#0 - 1, Tclass._System.nat());
            ##a#1_0_4_3 := aa#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_4_3, Tclass._System.nat(), $Heap);
            assert {:id "id164"} $Is(bb#0 - 1, Tclass._System.nat());
            ##b#1_0_4_3 := bb#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_4_3, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(aa#0 - 1, bb#0 - 1);
            assert {:id "id165"} $Is(_module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                 + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1), 
              Tclass._System.nat());
            ##n#1_0_4_1 := _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
               + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_4_1, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                 + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1));
            assume _module.__default.binom#canCall(aa#0 - 1, bb#0)
               && _module.__default.binom#canCall(aa#0 - 1, bb#0 - 1)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                   + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1));
            // ----- assert line1 <== line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assert {:id "id166"} {:subsumption 0} _module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_0) + 1, 
                    Mul(LitInt(2), b#0) + 1)
                   + _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_0) + 1, 
                    Mul(LitInt(2), b#0)))
               ==> _module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, aa#0 - 1, bb#0)
                   + _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, aa#0 - 1, bb#0 - 1));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assume {:id "id137"} $Is(Mul(LitInt(2), a'#1_0) + 1, Tclass._System.nat());
            ##a#1_0_3_0 := Mul(LitInt(2), a'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_3_0, Tclass._System.nat(), $Heap);
            assume {:id "id138"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
            ##b#1_0_3_0 := Mul(LitInt(2), b#0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_3_0, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0) + 1);
            ##n#1_0_3_0 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a'#1_0) + 1, 
              Mul(LitInt(2), b#0) + 1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_3_0, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a'#1_0) + 1, 
                Mul(LitInt(2), b#0) + 1));
            assume {:id "id139"} $Is(Mul(LitInt(2), a'#1_0) + 1, Tclass._System.nat());
            ##a#1_0_3_1 := Mul(LitInt(2), a'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_3_1, Tclass._System.nat(), $Heap);
            assume {:id "id140"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
            ##b#1_0_3_1 := Mul(LitInt(2), b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_3_1, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0));
            ##n#1_0_3_1 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a'#1_0) + 1, 
              Mul(LitInt(2), b#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_3_1, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a'#1_0) + 1, 
                Mul(LitInt(2), b#0)));
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0) + 1)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0) + 1))
               && 
              _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0))
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0)));
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assume {:id "id141"} _module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0) + 1))
               <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0)));
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(108,17)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id142"} $Is(Mul(LitInt(2), a'#1_0) + 1, Tclass._System.nat());
            ##a#1_0_3_2 := Mul(LitInt(2), a'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_3_2, Tclass._System.nat(), $Heap);
            assert {:id "id143"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
            ##b#1_0_3_2 := Mul(LitInt(2), b#0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_3_2, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0) + 1);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0) + 1);
            // ProcessCallStmt: CheckSubrange
            a##1_0_3_0 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a'#1_0) + 1, 
              Mul(LitInt(2), b#0) + 1);
            assert {:id "id144"} $Is(Mul(LitInt(2), a'#1_0) + 1, Tclass._System.nat());
            ##a#1_0_3_3 := Mul(LitInt(2), a'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_3_3, Tclass._System.nat(), $Heap);
            assert {:id "id145"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
            ##b#1_0_3_3 := Mul(LitInt(2), b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_3_3, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0));
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0));
            // ProcessCallStmt: CheckSubrange
            b##1_0_3_0 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a'#1_0) + 1, 
              Mul(LitInt(2), b#0));
            call {:id "id146"} Call$$_module.__default.EvenPlus(a##1_0_3_0, b##1_0_3_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assert {:id "id147"} $Is(Mul(LitInt(2), a'#1_0) + 1, Tclass._System.nat());
            ##a#1_0_3_4 := Mul(LitInt(2), a'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_3_4, Tclass._System.nat(), $Heap);
            assert {:id "id148"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
            ##b#1_0_3_4 := Mul(LitInt(2), b#0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_3_4, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0) + 1);
            assert {:id "id149"} $Is(Mul(LitInt(2), a'#1_0) + 1, Tclass._System.nat());
            ##a#1_0_3_5 := Mul(LitInt(2), a'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_3_5, Tclass._System.nat(), $Heap);
            assert {:id "id150"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
            ##b#1_0_3_5 := Mul(LitInt(2), b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_3_5, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0));
            assert {:id "id151"} $Is(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0) + 1)
                 + _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0)), 
              Tclass._System.nat());
            ##n#1_0_3_2 := _module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a'#1_0) + 1, 
                Mul(LitInt(2), b#0) + 1)
               + _module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a'#1_0) + 1, 
                Mul(LitInt(2), b#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_3_2, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0) + 1)
                 + _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0)));
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0) + 1)
               && _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0))
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_0) + 1, 
                    Mul(LitInt(2), b#0) + 1)
                   + _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_0) + 1, 
                    Mul(LitInt(2), b#0)));
            // ----- assert line2 <== line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assert {:id "id152"} {:subsumption 0} (_module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_0) + 1, 
                    Mul(LitInt(2), b#0) + 1))
                 <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_0) + 1, 
                    Mul(LitInt(2), b#0))))
               ==> _module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LS($LZ)), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_0) + 1, 
                    Mul(LitInt(2), b#0) + 1)
                   + _module.__default.binom($LS($LS($LZ)), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_0) + 1, 
                    Mul(LitInt(2), b#0)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assume {:id "id123"} $Is(a'#1_0, Tclass._System.nat());
            ##a#1_0_2_0 := a'#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_2_0, Tclass._System.nat(), $Heap);
            ##b#1_0_2_0 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_2_0, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(a'#1_0, b#0);
            ##n#1_0_2_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_0, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0));
            assume {:id "id124"} $Is(Mul(LitInt(2), a'#1_0) + 1, Tclass._System.nat());
            ##a#1_0_2_1 := Mul(LitInt(2), a'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_2_1, Tclass._System.nat(), $Heap);
            assume {:id "id125"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
            ##b#1_0_2_1 := Mul(LitInt(2), b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_2_1, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0));
            ##n#1_0_2_1 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a'#1_0) + 1, 
              Mul(LitInt(2), b#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_1, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a'#1_0) + 1, 
                Mul(LitInt(2), b#0)));
            assume _module.__default.binom#canCall(a'#1_0, b#0)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0))
               && 
              _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0))
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0)));
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assume {:id "id126"} _module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0))
               <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0)));
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(110,23)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id127"} $Is(a'#1_0, Tclass._System.nat());
            a##1_0_2_0 := a'#1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##1_0_2_0 := b#0;
            assert {:id "id128"} 0 <= a#0 || a##1_0_2_0 == a#0;
            assert {:id "id129"} 0 <= b#0 || a##1_0_2_0 < a#0 || b##1_0_2_0 == b#0;
            assert {:id "id130"} a##1_0_2_0 < a#0 || (a##1_0_2_0 == a#0 && b##1_0_2_0 < b#0);
            call {:id "id131"} Call$$_module.__default.Lucas__Binary11(a##1_0_2_0, b##1_0_2_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assert {:id "id132"} $Is(Mul(LitInt(2), a'#1_0) + 1, Tclass._System.nat());
            ##a#1_0_2_2 := Mul(LitInt(2), a'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_2_2, Tclass._System.nat(), $Heap);
            assert {:id "id133"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
            ##b#1_0_2_2 := Mul(LitInt(2), b#0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_2_2, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0) + 1);
            ##n#1_0_2_2 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a'#1_0) + 1, 
              Mul(LitInt(2), b#0) + 1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_2, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a'#1_0) + 1, 
                Mul(LitInt(2), b#0) + 1));
            assert {:id "id134"} $Is(Mul(LitInt(2), a'#1_0) + 1, Tclass._System.nat());
            ##a#1_0_2_3 := Mul(LitInt(2), a'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_2_3, Tclass._System.nat(), $Heap);
            assert {:id "id135"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
            ##b#1_0_2_3 := Mul(LitInt(2), b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_2_3, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0));
            ##n#1_0_2_3 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a'#1_0) + 1, 
              Mul(LitInt(2), b#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_3, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a'#1_0) + 1, 
                Mul(LitInt(2), b#0)));
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0) + 1)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0) + 1))
               && 
              _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0))
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0)));
            // ----- assert line3 <== line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assert {:id "id136"} {:subsumption 0} (_module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0))
                 <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_0) + 1, 
                    Mul(LitInt(2), b#0))))
               ==> (_module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LS($LZ)), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_0) + 1, 
                    Mul(LitInt(2), b#0) + 1))
                 <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LS($LZ)), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_0) + 1, 
                    Mul(LitInt(2), b#0))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assume {:id "id111"} $Is(a'#1_0, Tclass._System.nat());
            ##a#1_0_1_0 := a'#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_1_0, Tclass._System.nat(), $Heap);
            ##b#1_0_1_0 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_1_0, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(a'#1_0, b#0);
            ##n#1_0_1_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_0, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0));
            assume {:id "id112"} $Is(a'#1_0, Tclass._System.nat());
            ##a#1_0_1_1 := a'#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_1_1, Tclass._System.nat(), $Heap);
            ##b#1_0_1_1 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_1_1, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(a'#1_0, b#0);
            ##n#1_0_1_1 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_1, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0));
            assume _module.__default.binom#canCall(a'#1_0, b#0)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0))
               && 
              _module.__default.binom#canCall(a'#1_0, b#0)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0));
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assume {:id "id113"} _module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0))
               <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0));
            // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(112,23)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id114"} $Is(a'#1_0, Tclass._System.nat());
            a##1_0_1_0 := a'#1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##1_0_1_0 := b#0;
            assert {:id "id115"} 0 <= a#0 || a##1_0_1_0 == a#0;
            assert {:id "id116"} 0 <= b#0 || a##1_0_1_0 < a#0 || b##1_0_1_0 == b#0;
            assert {:id "id117"} a##1_0_1_0 < a#0 || (a##1_0_1_0 == a#0 && b##1_0_1_0 < b#0);
            call {:id "id118"} Call$$_module.__default.Lucas__Binary10(a##1_0_1_0, b##1_0_1_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assert {:id "id119"} $Is(a'#1_0, Tclass._System.nat());
            ##a#1_0_1_2 := a'#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_1_2, Tclass._System.nat(), $Heap);
            ##b#1_0_1_2 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_1_2, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(a'#1_0, b#0);
            ##n#1_0_1_2 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_2, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0));
            assert {:id "id120"} $Is(Mul(LitInt(2), a'#1_0) + 1, Tclass._System.nat());
            ##a#1_0_1_3 := Mul(LitInt(2), a'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_1_3, Tclass._System.nat(), $Heap);
            assert {:id "id121"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
            ##b#1_0_1_3 := Mul(LitInt(2), b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_1_3, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0));
            ##n#1_0_1_3 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a'#1_0) + 1, 
              Mul(LitInt(2), b#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_3, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a'#1_0) + 1, 
                Mul(LitInt(2), b#0)));
            assume _module.__default.binom#canCall(a'#1_0, b#0)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0))
               && 
              _module.__default.binom#canCall(Mul(LitInt(2), a'#1_0) + 1, Mul(LitInt(2), b#0))
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_0) + 1, 
                  Mul(LitInt(2), b#0)));
            // ----- assert line4 <== line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assert {:id "id122"} {:subsumption 0} (_module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0))
                 <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0)))
               ==> (_module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_0, b#0))
                 <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LS($LZ)), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_0) + 1, 
                    Mul(LitInt(2), b#0))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assume true;
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assume {:id "id107"} true;
            // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assert {:id "id108"} $Is(a'#1_0, Tclass._System.nat());
            ##a#1_0_0_0 := a'#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_0_0, Tclass._System.nat(), $Heap);
            ##b#1_0_0_0 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_0_0, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(a'#1_0, b#0);
            ##n#1_0_0_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_0, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0));
            assert {:id "id109"} $Is(a'#1_0, Tclass._System.nat());
            ##a#1_0_0_1 := a'#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_0_1, Tclass._System.nat(), $Heap);
            ##b#1_0_0_1 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_0_1, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(a'#1_0, b#0);
            ##n#1_0_0_1 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_1, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0));
            assume _module.__default.binom#canCall(a'#1_0, b#0)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0))
               && 
              _module.__default.binom#canCall(a'#1_0, b#0)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_0, b#0));
            // ----- assert line5 <== line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(102,5)
            assert {:id "id110"} {:subsumption 0} Lit(true)
               ==> (_module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_0, b#0))
                 <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_0, b#0)));
            assume false;
        }

        assume {:id "id175"} true ==> _module.__default.EVEN(reveal__module._default.EVEN, r#0);
    }
}



procedure {:verboseName "Lucas_Binary00 (well-formedness)"} CheckWellFormed$$_module.__default.Lucas__Binary00(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lucas_Binary00 (well-formedness)"} CheckWellFormed$$_module.__default.Lucas__Binary00(a#0: int, b#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##a#0: int;
  var ##b#0: int;
  var ##n#1: int;
  var ##a#1: int;
  var ##b#1: int;


    // AddMethodImpl: Lucas_Binary00, CheckWellFormed$$_module.__default.Lucas__Binary00
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id176"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
    ##a#0 := Mul(LitInt(2), a#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._System.nat(), $Heap);
    assert {:id "id177"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
    ##b#0 := Mul(LitInt(2), b#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
    ##n#0 := _module.__default.binom($LS($LZ), 
      reveal__module._default.binom, 
      Mul(LitInt(2), a#0), 
      Mul(LitInt(2), b#0));
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0)));
    ##a#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, Tclass._System.nat(), $Heap);
    ##b#1 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(a#0, b#0);
    ##n#1 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
    assume {:id "id178"} _module.__default.EVEN(reveal__module._default.EVEN, 
        _module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0), 
          Mul(LitInt(2), b#0)))
       <==> _module.__default.EVEN(reveal__module._default.EVEN, 
        _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
}



procedure {:verboseName "Lucas_Binary00 (call)"} Call$$_module.__default.Lucas__Binary00(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0)))
     && 
    _module.__default.binom#canCall(a#0, b#0)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
  ensures {:id "id179"} _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0)))
     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lucas_Binary00 (correctness)"} Impl$$_module.__default.Lucas__Binary00(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0)))
     && 
    _module.__default.binom#canCall(a#0, b#0)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
  ensures {:id "id180"} _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0)))
     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lucas_Binary00 (correctness)"} Impl$$_module.__default.Lucas__Binary00(a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var aa#0: int;
  var bb#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var r#0: int where LitInt(0) <= r#0;
  var ##a#2: int;
  var ##b#2: int;
  var ##a#0_0: int;
  var ##b#0_0: int;
  var ##a#0_1: int;
  var ##b#0_1: int;
  var ##a#1_0_0: int;
  var ##b#1_0_0: int;
  var ##a#1_0_1: int;
  var ##b#1_0_1: int;
  var a'#1_1_0: int;
  var b'#1_1_0: int;
  var $rhs#1_1_0: int;
  var $rhs#1_1_1: int;
  var ##n#1_1_0_0_0: int;
  var ##a#1_1_0_0_0: int;
  var ##b#1_1_0_0_0: int;
  var ##a#1_1_0_0_1: int;
  var ##b#1_1_0_0_1: int;
  var ##n#1_1_0_0_1: int;
  var ##a#1_1_0_0_2: int;
  var ##b#1_1_0_0_2: int;
  var ##n#1_1_0_1_0: int;
  var ##a#1_1_0_1_0: int;
  var ##b#1_1_0_1_0: int;
  var ##n#1_1_0_1_1: int;
  var ##a#1_1_0_1_1: int;
  var ##b#1_1_0_1_1: int;
  var a##1_1_0_1_0: int;
  var ##a#1_1_0_1_2: int;
  var ##b#1_1_0_1_2: int;
  var b##1_1_0_1_0: int;
  var ##a#1_1_0_1_3: int;
  var ##b#1_1_0_1_3: int;
  var ##n#1_1_0_1_2: int;
  var ##a#1_1_0_1_4: int;
  var ##b#1_1_0_1_4: int;
  var ##a#1_1_0_1_5: int;
  var ##b#1_1_0_1_5: int;
  var ##n#1_1_0_2_0: int;
  var ##a#1_1_0_2_0: int;
  var ##b#1_1_0_2_0: int;
  var ##n#1_1_0_2_1: int;
  var ##a#1_1_0_2_1: int;
  var ##b#1_1_0_2_1: int;
  var ##n#1_1_0_2_2: int;
  var ##a#1_1_0_2_2: int;
  var ##b#1_1_0_2_2: int;
  var a##1_1_0_2_0: int;
  var b##1_1_0_2_0: int;
  var ##n#1_1_0_2_3: int;
  var ##a#1_1_0_2_3: int;
  var ##b#1_1_0_2_3: int;
  var ##n#1_1_0_2_4: int;
  var ##a#1_1_0_2_4: int;
  var ##b#1_1_0_2_4: int;
  var ##n#1_1_0_3_0: int;
  var ##a#1_1_0_3_0: int;
  var ##b#1_1_0_3_0: int;
  var ##n#1_1_0_3_1: int;
  var ##a#1_1_0_3_1: int;
  var ##b#1_1_0_3_1: int;
  var ##n#1_1_0_3_2: int;
  var ##a#1_1_0_3_2: int;
  var ##b#1_1_0_3_2: int;
  var ##n#1_1_0_3_3: int;
  var ##a#1_1_0_3_3: int;
  var ##b#1_1_0_3_3: int;
  var ##n#1_1_0_3_4: int;
  var ##a#1_1_0_3_4: int;
  var ##b#1_1_0_3_4: int;
  var ##n#1_1_0_3_5: int;
  var ##a#1_1_0_3_5: int;
  var ##b#1_1_0_3_5: int;
  var ##n#1_1_0_4_0: int;
  var ##a#1_1_0_4_0: int;
  var ##b#1_1_0_4_0: int;
  var ##n#1_1_0_4_1: int;
  var ##a#1_1_0_4_1: int;
  var ##b#1_1_0_4_1: int;
  var ##n#1_1_0_4_2: int;
  var ##a#1_1_0_4_2: int;
  var ##b#1_1_0_4_2: int;
  var a##1_1_0_4_0: int;
  var b##1_1_0_4_0: int;
  var ##n#1_1_0_4_3: int;
  var ##a#1_1_0_4_3: int;
  var ##b#1_1_0_4_3: int;
  var ##n#1_1_0_4_4: int;
  var ##a#1_1_0_4_4: int;
  var ##b#1_1_0_4_4: int;
  var ##n#1_1_0_4_5: int;
  var ##a#1_1_0_4_5: int;
  var ##b#1_1_0_4_5: int;
  var ##n#1_1_0_5_0: int;
  var ##a#1_1_0_5_0: int;
  var ##b#1_1_0_5_0: int;
  var ##n#1_1_0_5_1: int;
  var ##a#1_1_0_5_1: int;
  var ##b#1_1_0_5_1: int;
  var ##n#1_1_0_5_2: int;
  var ##a#1_1_0_5_2: int;
  var ##b#1_1_0_5_2: int;
  var a##1_1_0_5_0: int;
  var b##1_1_0_5_0: int;
  var ##n#1_1_0_5_3: int;
  var ##a#1_1_0_5_3: int;
  var ##b#1_1_0_5_3: int;
  var ##n#1_1_0_5_4: int;
  var ##a#1_1_0_5_4: int;
  var ##b#1_1_0_5_4: int;
  var ##n#1_1_0_5_5: int;
  var ##a#1_1_0_5_5: int;
  var ##b#1_1_0_5_5: int;
  var ##n#1_1_0_6_0: int;
  var ##a#1_1_0_6_0: int;
  var ##b#1_1_0_6_0: int;
  var ##a#1_1_0_6_1: int;
  var ##b#1_1_0_6_1: int;
  var ##n#1_1_0_6_1: int;
  var ##a#1_1_0_6_2: int;
  var ##b#1_1_0_6_2: int;
  var a##1_1_0_6_0: int;
  var ##a#1_1_0_6_3: int;
  var ##b#1_1_0_6_3: int;
  var b##1_1_0_6_0: int;
  var ##a#1_1_0_6_4: int;
  var ##b#1_1_0_6_4: int;
  var ##n#1_1_0_6_2: int;
  var ##a#1_1_0_6_5: int;
  var ##b#1_1_0_6_5: int;
  var ##n#1_1_0_6_3: int;
  var ##a#1_1_0_6_6: int;
  var ##b#1_1_0_6_6: int;
  var ##n#1_1_0_6_4: int;
  var ##a#1_1_0_6_7: int;
  var ##b#1_1_0_6_7: int;
  var ##n#1_1_0_7_0: int;
  var ##a#1_1_0_7_0: int;
  var ##b#1_1_0_7_0: int;
  var ##n#1_1_0_7_1: int;
  var ##a#1_1_0_7_1: int;
  var ##b#1_1_0_7_1: int;
  var ##a#1_1_0_7_2: int;
  var ##b#1_1_0_7_2: int;
  var ##a#1_1_0_7_3: int;
  var ##b#1_1_0_7_3: int;
  var ##a#1_1_0_7_4: int;
  var ##b#1_1_0_7_4: int;
  var ##a#1_1_0_7_5: int;
  var ##b#1_1_0_7_5: int;
  var ##a#1_1_0_7_6: int;
  var ##b#1_1_0_7_6: int;
  var ##a#1_1_0_7_7: int;
  var ##b#1_1_0_7_7: int;
  var ##n#1_1_0_7_2: int;
  var ##a#1_1_0_7_8: int;
  var ##b#1_1_0_7_8: int;
  var ##a#1_1_0_7_9: int;
  var ##b#1_1_0_7_9: int;
  var ##n#1_1_0_7_3: int;
  var ##a#1_1_0_7_10: int;
  var ##b#1_1_0_7_10: int;
  var ##n#1_1_0_8_0: int;
  var ##a#1_1_0_8_0: int;
  var ##b#1_1_0_8_0: int;
  var ##n#1_1_0_8_1: int;
  var ##a#1_1_0_8_1: int;
  var ##b#1_1_0_8_1: int;
  var a##1_1_0_8_0: int;
  var b##1_1_0_8_0: int;
  var ##n#1_1_0_8_2: int;
  var ##a#1_1_0_8_2: int;
  var ##b#1_1_0_8_2: int;
  var ##n#1_1_0_8_3: int;
  var ##a#1_1_0_8_3: int;
  var ##b#1_1_0_8_3: int;
  var ##n#1_1_0_9_0: int;
  var ##a#1_1_0_9_0: int;
  var ##b#1_1_0_9_0: int;
  var ##a#1_1_0_9_1: int;
  var ##b#1_1_0_9_1: int;
  var a##1_1_0_9_0: int;
  var ##a#1_1_0_9_2: int;
  var ##b#1_1_0_9_2: int;
  var b##1_1_0_9_0: int;
  var ##a#1_1_0_9_3: int;
  var ##b#1_1_0_9_3: int;
  var ##n#1_1_0_9_1: int;
  var ##a#1_1_0_9_4: int;
  var ##b#1_1_0_9_4: int;
  var ##n#1_1_0_9_2: int;
  var ##a#1_1_0_9_5: int;
  var ##b#1_1_0_9_5: int;
  var ##n#1_1_0_10_0: int;
  var ##a#1_1_0_10_0: int;
  var ##b#1_1_0_10_0: int;
  var ##a#1_1_0_10_1: int;
  var ##b#1_1_0_10_1: int;
  var ##n#1_1_0_10_1: int;
  var ##a#1_1_0_10_2: int;
  var ##b#1_1_0_10_2: int;
  var ##a#1_1_0_10_3: int;
  var ##b#1_1_0_10_3: int;
  var ##n#1_1_0_11_0: int;
  var ##n#1_1_0_11_1: int;
  var ##a#1_1_0_11_0: int;
  var ##b#1_1_0_11_0: int;
  var ##a#1_1_0_11_1: int;
  var ##b#1_1_0_11_1: int;
  var ##n#1_1_0_0: int;

    // AddMethodImpl: Lucas_Binary00, Impl$$_module.__default.Lucas__Binary00
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(123,14)
    assume true;
    assume true;
    assume true;
    $rhs#0 := Mul(LitInt(2), a#0);
    assume true;
    $rhs#1 := Mul(LitInt(2), b#0);
    aa#0 := $rhs#0;
    bb#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(124,9)
    assume true;
    assert {:id "id185"} $Is(aa#0, Tclass._System.nat());
    ##a#2 := aa#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#2, Tclass._System.nat(), $Heap);
    assert {:id "id186"} $Is(bb#0, Tclass._System.nat());
    ##b#2 := bb#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(aa#0, bb#0);
    assume _module.__default.binom#canCall(aa#0, bb#0);
    r#0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0, bb#0);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(126,3)
    assume true;
    if (bb#0 == LitInt(0))
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(127,5)
        assume true;
        assert {:id "id188"} b#0 == LitInt(0);
        if (*)
        {
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(129,7)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(129,14)
            // TrCallStmt: Before ProcessCallStmt
            call {:id "id189"} Call$$_module.__default.reveal__binom();
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(128,5)
            ##a#0_0 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0, Tclass._System.nat(), $Heap);
            ##b#0_0 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0_0, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(a#0, b#0);
            assume _module.__default.binom#canCall(a#0, b#0);
            assert {:id "id190"} {:subsumption 0} r#0
               == _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0);
            assume {:id "id191"} r#0
               == _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(128,5)
        ##a#0_1 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_1, Tclass._System.nat(), $Heap);
        ##b#0_1 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_1, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(a#0, b#0);
        assume _module.__default.binom#canCall(a#0, b#0);
        assume true;
        assume {:id "id192"} r#0
           == _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(131,10)
        assume true;
        if (aa#0 == LitInt(0))
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(132,5)
            assume true;
            assert {:id "id193"} a#0 == LitInt(0);
            if (*)
            {
                // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(134,7)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(134,14)
                // TrCallStmt: Before ProcessCallStmt
                call {:id "id194"} Call$$_module.__default.reveal__binom();
                // TrCallStmt: After ProcessCallStmt
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(133,5)
                ##a#1_0_0 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_0_0, Tclass._System.nat(), $Heap);
                ##b#1_0_0 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a#0, b#0);
                assume _module.__default.binom#canCall(a#0, b#0);
                assert {:id "id195"} {:subsumption 0} r#0
                   == _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0);
                assume {:id "id196"} r#0
                   == _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
                assume false;
            }

            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(133,5)
            ##a#1_0_1 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_1, Tclass._System.nat(), $Heap);
            ##b#1_0_1 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_1, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(a#0, b#0);
            assume _module.__default.binom#canCall(a#0, b#0);
            assume true;
            assume {:id "id197"} r#0
               == _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
        }
        else
        {
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(137,16)
            assume true;
            assume true;
            assume true;
            $rhs#1_1_0 := a#0 - 1;
            assume true;
            $rhs#1_1_1 := b#0 - 1;
            a'#1_1_0 := $rhs#1_1_0;
            b'#1_1_0 := $rhs#1_1_1;
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                ##n#1_1_0_0 := r#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(r#0);
                assume _module.__default.EVEN#canCall(r#0);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                ##n#1_1_0_11_0 := r#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_11_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(r#0);
                assume _module.__default.EVEN#canCall(r#0);
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(140,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(140,16)
                // TrCallStmt: Before ProcessCallStmt
                call {:id "id373"} Call$$_module.__default.reveal__binom();
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id374"} $Is(aa#0 - 1, Tclass._System.nat());
                ##a#1_1_0_11_0 := aa#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_11_0, Tclass._System.nat(), $Heap);
                assert {:id "id375"} $Is(bb#0, Tclass._System.nat());
                ##b#1_1_0_11_0 := bb#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_11_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(aa#0 - 1, bb#0);
                assert {:id "id376"} $Is(aa#0 - 1, Tclass._System.nat());
                ##a#1_1_0_11_1 := aa#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_11_1, Tclass._System.nat(), $Heap);
                assert {:id "id377"} $Is(bb#0 - 1, Tclass._System.nat());
                ##b#1_1_0_11_1 := bb#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_11_1, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(aa#0 - 1, bb#0 - 1);
                assert {:id "id378"} $Is(_module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                     + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1), 
                  Tclass._System.nat());
                ##n#1_1_0_11_1 := _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                   + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_11_1, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                     + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1));
                assume _module.__default.binom#canCall(aa#0 - 1, bb#0)
                   && _module.__default.binom#canCall(aa#0 - 1, bb#0 - 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                       + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1));
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id379"} {:subsumption 0} _module.__default.EVEN(reveal__module._default.EVEN, r#0)
                   == _module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, aa#0 - 1, bb#0)
                       + _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, aa#0 - 1, bb#0 - 1));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assume {:id "id360"} $Is(aa#0 - 1, Tclass._System.nat());
                ##a#1_1_0_10_0 := aa#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_10_0, Tclass._System.nat(), $Heap);
                assume {:id "id361"} $Is(bb#0, Tclass._System.nat());
                ##b#1_1_0_10_0 := bb#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_10_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(aa#0 - 1, bb#0);
                assume {:id "id362"} $Is(aa#0 - 1, Tclass._System.nat());
                ##a#1_1_0_10_1 := aa#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_10_1, Tclass._System.nat(), $Heap);
                assume {:id "id363"} $Is(bb#0 - 1, Tclass._System.nat());
                ##b#1_1_0_10_1 := bb#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_10_1, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(aa#0 - 1, bb#0 - 1);
                assume {:id "id364"} $Is(_module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                     + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1), 
                  Tclass._System.nat());
                ##n#1_1_0_10_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                   + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_10_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                     + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1));
                assume _module.__default.binom#canCall(aa#0 - 1, bb#0)
                   && _module.__default.binom#canCall(aa#0 - 1, bb#0 - 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0)
                       + _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0 - 1, bb#0 - 1));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(142,9)
                assume true;
                assert {:id "id365"} aa#0 - 1 == Mul(LitInt(2), a'#1_1_0) + 1;
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(142,36)
                assume true;
                assert {:id "id366"} bb#0 - 1 == Mul(LitInt(2), b'#1_1_0) + 1;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id367"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_10_2 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_10_2, Tclass._System.nat(), $Heap);
                assert {:id "id368"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                ##b#1_1_0_10_2 := Mul(LitInt(2), b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_10_2, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0));
                assert {:id "id369"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_10_3 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_10_3, Tclass._System.nat(), $Heap);
                assert {:id "id370"} $Is(Mul(LitInt(2), b'#1_1_0) + 1, Tclass._System.nat());
                ##b#1_1_0_10_3 := Mul(LitInt(2), b'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_10_3, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1);
                assert {:id "id371"} $Is(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b#0))
                     + _module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b'#1_1_0) + 1), 
                  Tclass._System.nat());
                ##n#1_1_0_10_1 := _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b#0))
                   + _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b'#1_1_0) + 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_10_1, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b#0))
                     + _module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b'#1_1_0) + 1));
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0))
                   && _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b#0))
                       + _module.__default.binom($LS($LZ), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b'#1_1_0) + 1));
                // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id372"} {:subsumption 0} _module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, aa#0 - 1, bb#0)
                       + _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, aa#0 - 1, bb#0 - 1))
                   == _module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b#0))
                       + _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b'#1_1_0) + 1));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assume {:id "id345"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_9_0 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_9_0, Tclass._System.nat(), $Heap);
                assume {:id "id346"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                ##b#1_1_0_9_0 := Mul(LitInt(2), b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_9_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0));
                assume {:id "id347"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_9_1 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_9_1, Tclass._System.nat(), $Heap);
                assume {:id "id348"} $Is(Mul(LitInt(2), b'#1_1_0) + 1, Tclass._System.nat());
                ##b#1_1_0_9_1 := Mul(LitInt(2), b'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_9_1, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1);
                assume {:id "id349"} $Is(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b#0))
                     + _module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b'#1_1_0) + 1), 
                  Tclass._System.nat());
                ##n#1_1_0_9_0 := _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b#0))
                   + _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b'#1_1_0) + 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_9_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b#0))
                     + _module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b'#1_1_0) + 1));
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0))
                   && _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b#0))
                       + _module.__default.binom($LS($LZ), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b'#1_1_0) + 1));
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(144,17)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id350"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_9_2 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_9_2, Tclass._System.nat(), $Heap);
                assert {:id "id351"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                ##b#1_1_0_9_2 := Mul(LitInt(2), b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_9_2, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0));
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0));
                // ProcessCallStmt: CheckSubrange
                a##1_1_0_9_0 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b#0));
                assert {:id "id352"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_9_3 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_9_3, Tclass._System.nat(), $Heap);
                assert {:id "id353"} $Is(Mul(LitInt(2), b'#1_1_0) + 1, Tclass._System.nat());
                ##b#1_1_0_9_3 := Mul(LitInt(2), b'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_9_3, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1);
                // ProcessCallStmt: CheckSubrange
                b##1_1_0_9_0 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b'#1_1_0) + 1);
                call {:id "id354"} Call$$_module.__default.EvenPlus(a##1_1_0_9_0, b##1_1_0_9_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id355"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_9_4 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_9_4, Tclass._System.nat(), $Heap);
                assert {:id "id356"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                ##b#1_1_0_9_4 := Mul(LitInt(2), b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_9_4, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0));
                ##n#1_1_0_9_1 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_9_1, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b#0)));
                assert {:id "id357"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_9_5 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_9_5, Tclass._System.nat(), $Heap);
                assert {:id "id358"} $Is(Mul(LitInt(2), b'#1_1_0) + 1, Tclass._System.nat());
                ##b#1_1_0_9_5 := Mul(LitInt(2), b'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_9_5, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1);
                ##n#1_1_0_9_2 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b'#1_1_0) + 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_9_2, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b'#1_1_0) + 1));
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0))
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b#0)))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b'#1_1_0) + 1));
                // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id359"} {:subsumption 0} _module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b#0))
                       + _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b'#1_1_0) + 1))
                   == (_module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b#0)))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b'#1_1_0) + 1)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assume {:id "id330"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_8_0 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_8_0, Tclass._System.nat(), $Heap);
                assume {:id "id331"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                ##b#1_1_0_8_0 := Mul(LitInt(2), b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_8_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0));
                ##n#1_1_0_8_0 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_8_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b#0)));
                assume {:id "id332"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_8_1 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_8_1, Tclass._System.nat(), $Heap);
                assume {:id "id333"} $Is(Mul(LitInt(2), b'#1_1_0) + 1, Tclass._System.nat());
                ##b#1_1_0_8_1 := Mul(LitInt(2), b'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_8_1, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1);
                ##n#1_1_0_8_1 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b'#1_1_0) + 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_8_1, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b'#1_1_0) + 1));
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0))
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b#0)))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b'#1_1_0) + 1));
                // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(146,23)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id334"} $Is(a'#1_1_0, Tclass._System.nat());
                a##1_1_0_8_0 := a'#1_1_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id335"} $Is(b'#1_1_0, Tclass._System.nat());
                b##1_1_0_8_0 := b'#1_1_0;
                assert {:id "id336"} 0 <= a#0 || a##1_1_0_8_0 == a#0;
                assert {:id "id337"} 0 <= b#0 || a##1_1_0_8_0 < a#0 || b##1_1_0_8_0 == b#0;
                assert {:id "id338"} a##1_1_0_8_0 < a#0 || (a##1_1_0_8_0 == a#0 && b##1_1_0_8_0 < b#0);
                call {:id "id339"} Call$$_module.__default.Lucas__Binary11(a##1_1_0_8_0, b##1_1_0_8_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id340"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_8_2 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_8_2, Tclass._System.nat(), $Heap);
                assert {:id "id341"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                ##b#1_1_0_8_2 := Mul(LitInt(2), b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_8_2, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0));
                ##n#1_1_0_8_2 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_8_2, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b#0)));
                assert {:id "id342"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_8_3 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_8_3, Tclass._System.nat(), $Heap);
                assert {:id "id343"} $Is(Mul(LitInt(2), b'#1_1_0) + 1, Tclass._System.nat());
                ##b#1_1_0_8_3 := Mul(LitInt(2), b'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_8_3, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1);
                ##n#1_1_0_8_3 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b'#1_1_0) + 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_8_3, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b'#1_1_0) + 1));
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0))
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b#0)))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b'#1_1_0) + 1));
                // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id344"} {:subsumption 0} (_module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b#0)))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b'#1_1_0) + 1)))
                   == (_module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b#0)))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b'#1_1_0) + 1)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assume {:id "id302"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_7_0 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_7_0, Tclass._System.nat(), $Heap);
                assume {:id "id303"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                ##b#1_1_0_7_0 := Mul(LitInt(2), b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_7_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0));
                ##n#1_1_0_7_0 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_7_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b#0)));
                assume {:id "id304"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_7_1 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_7_1, Tclass._System.nat(), $Heap);
                assume {:id "id305"} $Is(Mul(LitInt(2), b'#1_1_0) + 1, Tclass._System.nat());
                ##b#1_1_0_7_1 := Mul(LitInt(2), b'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_7_1, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1);
                ##n#1_1_0_7_1 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b'#1_1_0) + 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_7_1, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b'#1_1_0) + 1));
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0))
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b#0)))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b'#1_1_0) + 1));
                // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                if (*)
                {
                    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(148,85)
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(148,92)
                    // TrCallStmt: Before ProcessCallStmt
                    call {:id "id306"} Call$$_module.__default.reveal__binom();
                    // TrCallStmt: After ProcessCallStmt
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(148,9)
                    assert {:id "id307"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                    ##a#1_1_0_7_2 := Mul(LitInt(2), a'#1_1_0) + 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#1_1_0_7_2, Tclass._System.nat(), $Heap);
                    assert {:id "id308"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                    ##b#1_1_0_7_2 := Mul(LitInt(2), b#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##b#1_1_0_7_2, Tclass._System.nat(), $Heap);
                    assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0));
                    assert {:id "id309"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                    ##a#1_1_0_7_3 := Mul(LitInt(2), a'#1_1_0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#1_1_0_7_3, Tclass._System.nat(), $Heap);
                    assert {:id "id310"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                    ##b#1_1_0_7_3 := Mul(LitInt(2), b#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##b#1_1_0_7_3, Tclass._System.nat(), $Heap);
                    assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0));
                    assert {:id "id311"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                    ##a#1_1_0_7_4 := Mul(LitInt(2), a'#1_1_0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#1_1_0_7_4, Tclass._System.nat(), $Heap);
                    assert {:id "id312"} $Is(Mul(LitInt(2), b#0) - 1, Tclass._System.nat());
                    ##b#1_1_0_7_4 := Mul(LitInt(2), b#0) - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##b#1_1_0_7_4, Tclass._System.nat(), $Heap);
                    assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1);
                    assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0))
                       && 
                      _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0))
                       && _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1);
                    assert {:id "id313"} {:subsumption 0} _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b#0))
                       == _module.__default.binom($LS($LS($LZ)), 
                          reveal__module._default.binom, 
                          Mul(LitInt(2), a'#1_1_0), 
                          Mul(LitInt(2), b#0))
                         + _module.__default.binom($LS($LS($LZ)), 
                          reveal__module._default.binom, 
                          Mul(LitInt(2), a'#1_1_0), 
                          Mul(LitInt(2), b#0) - 1);
                    assume {:id "id314"} _module.__default.binom($LS($LZ), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b#0))
                       == _module.__default.binom($LS($LZ), 
                          reveal__module._default.binom, 
                          Mul(LitInt(2), a'#1_1_0), 
                          Mul(LitInt(2), b#0))
                         + _module.__default.binom($LS($LZ), 
                          reveal__module._default.binom, 
                          Mul(LitInt(2), a'#1_1_0), 
                          Mul(LitInt(2), b#0) - 1);
                    assume false;
                }

                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(148,9)
                assume {:id "id315"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_7_5 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_7_5, Tclass._System.nat(), $Heap);
                assume {:id "id316"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                ##b#1_1_0_7_5 := Mul(LitInt(2), b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_7_5, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0));
                assume {:id "id317"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_7_6 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_7_6, Tclass._System.nat(), $Heap);
                assume {:id "id318"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                ##b#1_1_0_7_6 := Mul(LitInt(2), b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_7_6, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0));
                assume {:id "id319"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_7_7 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_7_7, Tclass._System.nat(), $Heap);
                assume {:id "id320"} $Is(Mul(LitInt(2), b#0) - 1, Tclass._System.nat());
                ##b#1_1_0_7_7 := Mul(LitInt(2), b#0) - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_7_7, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b#0))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0))
                   && _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1);
                assume true;
                assume {:id "id321"} _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b#0))
                   == _module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0))
                     + _module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0) - 1);
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id322"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_7_8 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_7_8, Tclass._System.nat(), $Heap);
                assert {:id "id323"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                ##b#1_1_0_7_8 := Mul(LitInt(2), b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_7_8, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0));
                assert {:id "id324"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_7_9 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_7_9, Tclass._System.nat(), $Heap);
                assert {:id "id325"} $Is(Mul(LitInt(2), b#0) - 1, Tclass._System.nat());
                ##b#1_1_0_7_9 := Mul(LitInt(2), b#0) - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_7_9, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1);
                assert {:id "id326"} $Is(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0))
                     + _module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0) - 1), 
                  Tclass._System.nat());
                ##n#1_1_0_7_2 := _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0), 
                    Mul(LitInt(2), b#0))
                   + _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0), 
                    Mul(LitInt(2), b#0) - 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_7_2, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0))
                     + _module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0) - 1));
                assert {:id "id327"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_7_10 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_7_10, Tclass._System.nat(), $Heap);
                assert {:id "id328"} $Is(Mul(LitInt(2), b'#1_1_0) + 1, Tclass._System.nat());
                ##b#1_1_0_7_10 := Mul(LitInt(2), b'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_7_10, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1);
                ##n#1_1_0_7_3 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b'#1_1_0) + 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_7_3, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b'#1_1_0) + 1));
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0))
                   && _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0), 
                        Mul(LitInt(2), b#0))
                       + _module.__default.binom($LS($LZ), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0), 
                        Mul(LitInt(2), b#0) - 1))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b'#1_1_0) + 1));
                // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id329"} {:subsumption 0} (_module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b#0)))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b'#1_1_0) + 1)))
                   == (_module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                          reveal__module._default.binom, 
                          Mul(LitInt(2), a'#1_1_0), 
                          Mul(LitInt(2), b#0))
                         + _module.__default.binom($LS($LS($LZ)), 
                          reveal__module._default.binom, 
                          Mul(LitInt(2), a'#1_1_0), 
                          Mul(LitInt(2), b#0) - 1))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b'#1_1_0) + 1)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assume {:id "id283"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_6_0 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_6_0, Tclass._System.nat(), $Heap);
                assume {:id "id284"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                ##b#1_1_0_6_0 := Mul(LitInt(2), b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_6_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0));
                assume {:id "id285"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_6_1 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_6_1, Tclass._System.nat(), $Heap);
                assume {:id "id286"} $Is(Mul(LitInt(2), b#0) - 1, Tclass._System.nat());
                ##b#1_1_0_6_1 := Mul(LitInt(2), b#0) - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_6_1, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1);
                assume {:id "id287"} $Is(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0))
                     + _module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0) - 1), 
                  Tclass._System.nat());
                ##n#1_1_0_6_0 := _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0), 
                    Mul(LitInt(2), b#0))
                   + _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0), 
                    Mul(LitInt(2), b#0) - 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_6_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0))
                     + _module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0) - 1));
                assume {:id "id288"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_6_2 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_6_2, Tclass._System.nat(), $Heap);
                assume {:id "id289"} $Is(Mul(LitInt(2), b'#1_1_0) + 1, Tclass._System.nat());
                ##b#1_1_0_6_2 := Mul(LitInt(2), b'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_6_2, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1);
                ##n#1_1_0_6_1 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b'#1_1_0) + 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_6_1, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b'#1_1_0) + 1));
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0))
                   && _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0), 
                        Mul(LitInt(2), b#0))
                       + _module.__default.binom($LS($LZ), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0), 
                        Mul(LitInt(2), b#0) - 1))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b'#1_1_0) + 1));
                // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(150,17)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id290"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_6_3 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_6_3, Tclass._System.nat(), $Heap);
                assert {:id "id291"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                ##b#1_1_0_6_3 := Mul(LitInt(2), b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_6_3, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0));
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0));
                // ProcessCallStmt: CheckSubrange
                a##1_1_0_6_0 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0), 
                  Mul(LitInt(2), b#0));
                assert {:id "id292"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_6_4 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_6_4, Tclass._System.nat(), $Heap);
                assert {:id "id293"} $Is(Mul(LitInt(2), b#0) - 1, Tclass._System.nat());
                ##b#1_1_0_6_4 := Mul(LitInt(2), b#0) - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_6_4, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1);
                // ProcessCallStmt: CheckSubrange
                b##1_1_0_6_0 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0), 
                  Mul(LitInt(2), b#0) - 1);
                call {:id "id294"} Call$$_module.__default.EvenPlus(a##1_1_0_6_0, b##1_1_0_6_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id295"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_6_5 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_6_5, Tclass._System.nat(), $Heap);
                assert {:id "id296"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                ##b#1_1_0_6_5 := Mul(LitInt(2), b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_6_5, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0));
                ##n#1_1_0_6_2 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0), 
                  Mul(LitInt(2), b#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_6_2, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0), 
                    Mul(LitInt(2), b#0)));
                assert {:id "id297"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_6_6 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_6_6, Tclass._System.nat(), $Heap);
                assert {:id "id298"} $Is(Mul(LitInt(2), b#0) - 1, Tclass._System.nat());
                ##b#1_1_0_6_6 := Mul(LitInt(2), b#0) - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_6_6, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1);
                ##n#1_1_0_6_3 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0), 
                  Mul(LitInt(2), b#0) - 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_6_3, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0), 
                    Mul(LitInt(2), b#0) - 1));
                assert {:id "id299"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_6_7 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_6_7, Tclass._System.nat(), $Heap);
                assert {:id "id300"} $Is(Mul(LitInt(2), b'#1_1_0) + 1, Tclass._System.nat());
                ##b#1_1_0_6_7 := Mul(LitInt(2), b'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_6_7, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1);
                ##n#1_1_0_6_4 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b'#1_1_0) + 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_6_4, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b'#1_1_0) + 1));
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0))
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0)))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0) - 1))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b'#1_1_0) + 1));
                // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id301"} {:subsumption 0} (_module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                          reveal__module._default.binom, 
                          Mul(LitInt(2), a'#1_1_0), 
                          Mul(LitInt(2), b#0))
                         + _module.__default.binom($LS($LS($LZ)), 
                          reveal__module._default.binom, 
                          Mul(LitInt(2), a'#1_1_0), 
                          Mul(LitInt(2), b#0) - 1))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b'#1_1_0) + 1)))
                   == (
                    _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0), 
                        Mul(LitInt(2), b#0)))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0), 
                        Mul(LitInt(2), b#0) - 1))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b'#1_1_0) + 1)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assume {:id "id265"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_5_0 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_5_0, Tclass._System.nat(), $Heap);
                assume {:id "id266"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
                ##b#1_1_0_5_0 := Mul(LitInt(2), b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_5_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0));
                ##n#1_1_0_5_0 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0), 
                  Mul(LitInt(2), b#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_5_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0), 
                    Mul(LitInt(2), b#0)));
                assume {:id "id267"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_5_1 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_5_1, Tclass._System.nat(), $Heap);
                assume {:id "id268"} $Is(Mul(LitInt(2), b#0) - 1, Tclass._System.nat());
                ##b#1_1_0_5_1 := Mul(LitInt(2), b#0) - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_5_1, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1);
                ##n#1_1_0_5_1 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0), 
                  Mul(LitInt(2), b#0) - 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_5_1, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0), 
                    Mul(LitInt(2), b#0) - 1));
                assume {:id "id269"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_5_2 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_5_2, Tclass._System.nat(), $Heap);
                assume {:id "id270"} $Is(Mul(LitInt(2), b'#1_1_0) + 1, Tclass._System.nat());
                ##b#1_1_0_5_2 := Mul(LitInt(2), b'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_5_2, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1);
                ##n#1_1_0_5_2 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b'#1_1_0) + 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_5_2, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b'#1_1_0) + 1));
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0))
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0)))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0) - 1))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b'#1_1_0) + 1));
                // ----- Hint6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(152,23)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id271"} $Is(a'#1_1_0, Tclass._System.nat());
                a##1_1_0_5_0 := a'#1_1_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                b##1_1_0_5_0 := b#0;
                assert {:id "id272"} 0 <= a#0 || a##1_1_0_5_0 == a#0;
                assert {:id "id273"} 0 <= b#0 || a##1_1_0_5_0 < a#0 || b##1_1_0_5_0 == b#0;
                assert {:id "id274"} 0 <= LitInt(0)
                   || a##1_1_0_5_0 < a#0
                   || b##1_1_0_5_0 < b#0
                   || LitInt(0) == LitInt(0);
                assert {:id "id275"} a##1_1_0_5_0 < a#0
                   || (a##1_1_0_5_0 == a#0
                     && (b##1_1_0_5_0 < b#0 || (b##1_1_0_5_0 == b#0 && LitInt(0) < LitInt(0))));
                call {:id "id276"} Call$$_module.__default.Lucas__Binary00(a##1_1_0_5_0, b##1_1_0_5_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id277"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_5_3 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_5_3, Tclass._System.nat(), $Heap);
                ##b#1_1_0_5_3 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_5_3, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b#0);
                ##n#1_1_0_5_3 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_5_3, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0));
                assert {:id "id278"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_5_4 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_5_4, Tclass._System.nat(), $Heap);
                assert {:id "id279"} $Is(Mul(LitInt(2), b#0) - 1, Tclass._System.nat());
                ##b#1_1_0_5_4 := Mul(LitInt(2), b#0) - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_5_4, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1);
                ##n#1_1_0_5_4 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0), 
                  Mul(LitInt(2), b#0) - 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_5_4, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0), 
                    Mul(LitInt(2), b#0) - 1));
                assert {:id "id280"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_5_5 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_5_5, Tclass._System.nat(), $Heap);
                assert {:id "id281"} $Is(Mul(LitInt(2), b'#1_1_0) + 1, Tclass._System.nat());
                ##b#1_1_0_5_5 := Mul(LitInt(2), b'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_5_5, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1);
                ##n#1_1_0_5_5 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b'#1_1_0) + 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_5_5, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b'#1_1_0) + 1));
                assume _module.__default.binom#canCall(a'#1_1_0, b#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0) - 1))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b'#1_1_0) + 1));
                // ----- assert line6 == line7 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id282"} {:subsumption 0} (
                    _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0), 
                        Mul(LitInt(2), b#0)))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0), 
                        Mul(LitInt(2), b#0) - 1))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b'#1_1_0) + 1)))
                   == (
                    _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b#0))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0), 
                        Mul(LitInt(2), b#0) - 1))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b'#1_1_0) + 1)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assume {:id "id248"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_4_0 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_4_0, Tclass._System.nat(), $Heap);
                ##b#1_1_0_4_0 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_4_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b#0);
                ##n#1_1_0_4_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_4_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0));
                assume {:id "id249"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_4_1 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_4_1, Tclass._System.nat(), $Heap);
                assume {:id "id250"} $Is(Mul(LitInt(2), b#0) - 1, Tclass._System.nat());
                ##b#1_1_0_4_1 := Mul(LitInt(2), b#0) - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_4_1, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1);
                ##n#1_1_0_4_1 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0), 
                  Mul(LitInt(2), b#0) - 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_4_1, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0), 
                    Mul(LitInt(2), b#0) - 1));
                assume {:id "id251"} $Is(Mul(LitInt(2), a'#1_1_0) + 1, Tclass._System.nat());
                ##a#1_1_0_4_2 := Mul(LitInt(2), a'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_4_2, Tclass._System.nat(), $Heap);
                assume {:id "id252"} $Is(Mul(LitInt(2), b'#1_1_0) + 1, Tclass._System.nat());
                ##b#1_1_0_4_2 := Mul(LitInt(2), b'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_4_2, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1);
                ##n#1_1_0_4_2 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0) + 1, 
                  Mul(LitInt(2), b'#1_1_0) + 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_4_2, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0) + 1, 
                    Mul(LitInt(2), b'#1_1_0) + 1));
                assume _module.__default.binom#canCall(a'#1_1_0, b#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0) - 1))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0) + 1, Mul(LitInt(2), b'#1_1_0) + 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0) + 1, 
                      Mul(LitInt(2), b'#1_1_0) + 1));
                // ----- Hint7 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(154,23)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id253"} $Is(a'#1_1_0, Tclass._System.nat());
                a##1_1_0_4_0 := a'#1_1_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id254"} $Is(b'#1_1_0, Tclass._System.nat());
                b##1_1_0_4_0 := b'#1_1_0;
                assert {:id "id255"} 0 <= a#0 || a##1_1_0_4_0 == a#0;
                assert {:id "id256"} 0 <= b#0 || a##1_1_0_4_0 < a#0 || b##1_1_0_4_0 == b#0;
                assert {:id "id257"} a##1_1_0_4_0 < a#0 || (a##1_1_0_4_0 == a#0 && b##1_1_0_4_0 < b#0);
                call {:id "id258"} Call$$_module.__default.Lucas__Binary11(a##1_1_0_4_0, b##1_1_0_4_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id259"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_4_3 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_4_3, Tclass._System.nat(), $Heap);
                ##b#1_1_0_4_3 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_4_3, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b#0);
                ##n#1_1_0_4_3 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_4_3, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0));
                assert {:id "id260"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_4_4 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_4_4, Tclass._System.nat(), $Heap);
                assert {:id "id261"} $Is(Mul(LitInt(2), b#0) - 1, Tclass._System.nat());
                ##b#1_1_0_4_4 := Mul(LitInt(2), b#0) - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_4_4, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1);
                ##n#1_1_0_4_4 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0), 
                  Mul(LitInt(2), b#0) - 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_4_4, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0), 
                    Mul(LitInt(2), b#0) - 1));
                assert {:id "id262"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_4_5 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_4_5, Tclass._System.nat(), $Heap);
                assert {:id "id263"} $Is(b'#1_1_0, Tclass._System.nat());
                ##b#1_1_0_4_5 := b'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_4_5, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0);
                ##n#1_1_0_4_5 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_4_5, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                assume _module.__default.binom#canCall(a'#1_1_0, b#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0) - 1))
                   && 
                  _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                // ----- assert line7 == line8 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id264"} {:subsumption 0} (
                    _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b#0))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0), 
                        Mul(LitInt(2), b#0) - 1))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0) + 1, 
                        Mul(LitInt(2), b'#1_1_0) + 1)))
                   == (
                    _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b#0))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0), 
                        Mul(LitInt(2), b#0) - 1))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b'#1_1_0)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assume {:id "id236"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_3_0 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_3_0, Tclass._System.nat(), $Heap);
                ##b#1_1_0_3_0 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_3_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b#0);
                ##n#1_1_0_3_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_3_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0));
                assume {:id "id237"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_3_1 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_3_1, Tclass._System.nat(), $Heap);
                assume {:id "id238"} $Is(Mul(LitInt(2), b#0) - 1, Tclass._System.nat());
                ##b#1_1_0_3_1 := Mul(LitInt(2), b#0) - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_3_1, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1);
                ##n#1_1_0_3_1 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0), 
                  Mul(LitInt(2), b#0) - 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_3_1, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0), 
                    Mul(LitInt(2), b#0) - 1));
                assume {:id "id239"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_3_2 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_3_2, Tclass._System.nat(), $Heap);
                assume {:id "id240"} $Is(b'#1_1_0, Tclass._System.nat());
                ##b#1_1_0_3_2 := b'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_3_2, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0);
                ##n#1_1_0_3_2 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_3_2, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                assume _module.__default.binom#canCall(a'#1_1_0, b#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b#0) - 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b#0) - 1))
                   && 
                  _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                // ----- Hint8 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(156,9)
                assume true;
                assert {:id "id241"} Mul(LitInt(2), b#0) - 1 == Mul(LitInt(2), b'#1_1_0) + 1;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id242"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_3_3 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_3_3, Tclass._System.nat(), $Heap);
                ##b#1_1_0_3_3 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_3_3, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b#0);
                ##n#1_1_0_3_3 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_3_3, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0));
                assert {:id "id243"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_3_4 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_3_4, Tclass._System.nat(), $Heap);
                assert {:id "id244"} $Is(Mul(LitInt(2), b'#1_1_0) + 1, Tclass._System.nat());
                ##b#1_1_0_3_4 := Mul(LitInt(2), b'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_3_4, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b'#1_1_0) + 1);
                ##n#1_1_0_3_4 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0), 
                  Mul(LitInt(2), b'#1_1_0) + 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_3_4, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0), 
                    Mul(LitInt(2), b'#1_1_0) + 1));
                assert {:id "id245"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_3_5 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_3_5, Tclass._System.nat(), $Heap);
                assert {:id "id246"} $Is(b'#1_1_0, Tclass._System.nat());
                ##b#1_1_0_3_5 := b'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_3_5, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0);
                ##n#1_1_0_3_5 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_3_5, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                assume _module.__default.binom#canCall(a'#1_1_0, b#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b'#1_1_0) + 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b'#1_1_0) + 1))
                   && 
                  _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                // ----- assert line8 == line9 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id247"} {:subsumption 0} (
                    _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b#0))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0), 
                        Mul(LitInt(2), b#0) - 1))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b'#1_1_0)))
                   == (
                    _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b#0))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0), 
                        Mul(LitInt(2), b'#1_1_0) + 1))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b'#1_1_0)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assume {:id "id220"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_2_0 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_2_0, Tclass._System.nat(), $Heap);
                ##b#1_1_0_2_0 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_2_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b#0);
                ##n#1_1_0_2_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_2_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0));
                assume {:id "id221"} $Is(Mul(LitInt(2), a'#1_1_0), Tclass._System.nat());
                ##a#1_1_0_2_1 := Mul(LitInt(2), a'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_2_1, Tclass._System.nat(), $Heap);
                assume {:id "id222"} $Is(Mul(LitInt(2), b'#1_1_0) + 1, Tclass._System.nat());
                ##b#1_1_0_2_1 := Mul(LitInt(2), b'#1_1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_2_1, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b'#1_1_0) + 1);
                ##n#1_1_0_2_1 := _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a'#1_1_0), 
                  Mul(LitInt(2), b'#1_1_0) + 1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_2_1, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a'#1_1_0), 
                    Mul(LitInt(2), b'#1_1_0) + 1));
                assume {:id "id223"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_2_2 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_2_2, Tclass._System.nat(), $Heap);
                assume {:id "id224"} $Is(b'#1_1_0, Tclass._System.nat());
                ##b#1_1_0_2_2 := b'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_2_2, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0);
                ##n#1_1_0_2_2 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_2_2, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                assume _module.__default.binom#canCall(a'#1_1_0, b#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0))
                   && 
                  _module.__default.binom#canCall(Mul(LitInt(2), a'#1_1_0), Mul(LitInt(2), b'#1_1_0) + 1)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                      reveal__module._default.binom, 
                      Mul(LitInt(2), a'#1_1_0), 
                      Mul(LitInt(2), b'#1_1_0) + 1))
                   && 
                  _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                // ----- Hint9 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(158,23)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id225"} $Is(a'#1_1_0, Tclass._System.nat());
                a##1_1_0_2_0 := a'#1_1_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id226"} $Is(b'#1_1_0, Tclass._System.nat());
                b##1_1_0_2_0 := b'#1_1_0;
                assert {:id "id227"} 0 <= a#0 || a##1_1_0_2_0 == a#0;
                assert {:id "id228"} 0 <= b#0 || a##1_1_0_2_0 < a#0 || b##1_1_0_2_0 == b#0;
                assert {:id "id229"} 0 <= LitInt(0)
                   || a##1_1_0_2_0 < a#0
                   || b##1_1_0_2_0 < b#0
                   || LitInt(0) == LitInt(0);
                assert {:id "id230"} a##1_1_0_2_0 < a#0
                   || (a##1_1_0_2_0 == a#0
                     && (b##1_1_0_2_0 < b#0 || (b##1_1_0_2_0 == b#0 && LitInt(0) < LitInt(0))));
                call {:id "id231"} Call$$_module.__default.Lucas__Binary01(a##1_1_0_2_0, b##1_1_0_2_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id232"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_2_3 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_2_3, Tclass._System.nat(), $Heap);
                ##b#1_1_0_2_3 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_2_3, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b#0);
                ##n#1_1_0_2_3 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_2_3, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0));
                assert {:id "id233"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_2_4 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_2_4, Tclass._System.nat(), $Heap);
                assert {:id "id234"} $Is(b'#1_1_0, Tclass._System.nat());
                ##b#1_1_0_2_4 := b'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_2_4, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0);
                ##n#1_1_0_2_4 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_2_4, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                assume _module.__default.binom#canCall(a'#1_1_0, b#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0))
                   && 
                  _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                // ----- assert line9 == line10 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id235"} {:subsumption 0} (
                    _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b#0))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), 
                        reveal__module._default.binom, 
                        Mul(LitInt(2), a'#1_1_0), 
                        Mul(LitInt(2), b'#1_1_0) + 1))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b'#1_1_0)))
                   == (_module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b#0))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b'#1_1_0)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assume {:id "id208"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_1_0 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_1_0, Tclass._System.nat(), $Heap);
                ##b#1_1_0_1_0 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_1_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b#0);
                ##n#1_1_0_1_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_1_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0));
                assume {:id "id209"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_1_1 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_1_1, Tclass._System.nat(), $Heap);
                assume {:id "id210"} $Is(b'#1_1_0, Tclass._System.nat());
                ##b#1_1_0_1_1 := b'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_1_1, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0);
                ##n#1_1_0_1_1 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_1_1, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                assume _module.__default.binom#canCall(a'#1_1_0, b#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0))
                   && 
                  _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                // ----- Hint10 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(160,17)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id211"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_1_2 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_1_2, Tclass._System.nat(), $Heap);
                ##b#1_1_0_1_2 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_1_2, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b#0);
                assume _module.__default.binom#canCall(a'#1_1_0, b#0);
                // ProcessCallStmt: CheckSubrange
                a##1_1_0_1_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0);
                assert {:id "id212"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_1_3 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_1_3, Tclass._System.nat(), $Heap);
                assert {:id "id213"} $Is(b'#1_1_0, Tclass._System.nat());
                ##b#1_1_0_1_3 := b'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_1_3, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0);
                assume _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0);
                // ProcessCallStmt: CheckSubrange
                b##1_1_0_1_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0);
                call {:id "id214"} Call$$_module.__default.EvenPlus(a##1_1_0_1_0, b##1_1_0_1_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id215"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_1_4 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_1_4, Tclass._System.nat(), $Heap);
                ##b#1_1_0_1_4 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_1_4, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b#0);
                assert {:id "id216"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_1_5 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_1_5, Tclass._System.nat(), $Heap);
                assert {:id "id217"} $Is(b'#1_1_0, Tclass._System.nat());
                ##b#1_1_0_1_5 := b'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_1_5, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0);
                assert {:id "id218"} $Is(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0)
                     + _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0), 
                  Tclass._System.nat());
                ##n#1_1_0_1_2 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0)
                   + _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_1_2, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0)
                     + _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                assume _module.__default.binom#canCall(a'#1_1_0, b#0)
                   && _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0)
                       + _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                // ----- assert line10 == line11 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id219"} {:subsumption 0} (_module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b#0))
                     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b'#1_1_0)))
                   == _module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b#0)
                       + _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assume {:id "id202"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_0_0 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_0_0, Tclass._System.nat(), $Heap);
                ##b#1_1_0_0_0 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b#0);
                assume {:id "id203"} $Is(a'#1_1_0, Tclass._System.nat());
                ##a#1_1_0_0_1 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_0_1, Tclass._System.nat(), $Heap);
                assume {:id "id204"} $Is(b'#1_1_0, Tclass._System.nat());
                ##b#1_1_0_0_1 := b'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_0_1, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0);
                assume {:id "id205"} $Is(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0)
                     + _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0), 
                  Tclass._System.nat());
                ##n#1_1_0_0_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0)
                   + _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0)
                     + _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                assume _module.__default.binom#canCall(a'#1_1_0, b#0)
                   && _module.__default.binom#canCall(a'#1_1_0, b'#1_1_0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b#0)
                       + _module.__default.binom($LS($LZ), reveal__module._default.binom, a'#1_1_0, b'#1_1_0));
                // ----- Hint11 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(162,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(162,16)
                // TrCallStmt: Before ProcessCallStmt
                call {:id "id206"} Call$$_module.__default.reveal__binom();
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                ##a#1_1_0_0_2 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_0_2, Tclass._System.nat(), $Heap);
                ##b#1_1_0_0_2 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_0_2, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(a#0, b#0);
                ##n#1_1_0_0_1 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_0_1, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
                assume _module.__default.binom#canCall(a#0, b#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
                // ----- assert line11 == line12 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(138,5)
                assert {:id "id207"} {:subsumption 0} _module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b#0)
                       + _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a'#1_1_0, b'#1_1_0))
                   == _module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0));
                assume false;
            }

            assume {:id "id380"} _module.__default.EVEN(reveal__module._default.EVEN, r#0)
               == _module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
        }
    }
}



procedure {:verboseName "Lucas_Binary11 (well-formedness)"} CheckWellFormed$$_module.__default.Lucas__Binary11(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lucas_Binary11 (well-formedness)"} CheckWellFormed$$_module.__default.Lucas__Binary11(a#0: int, b#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##a#0: int;
  var ##b#0: int;
  var ##n#1: int;
  var ##a#1: int;
  var ##b#1: int;


    // AddMethodImpl: Lucas_Binary11, CheckWellFormed$$_module.__default.Lucas__Binary11
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id381"} $Is(Mul(LitInt(2), a#0) + 1, Tclass._System.nat());
    ##a#0 := Mul(LitInt(2), a#0) + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._System.nat(), $Heap);
    assert {:id "id382"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
    ##b#0 := Mul(LitInt(2), b#0) + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0) + 1);
    ##n#0 := _module.__default.binom($LS($LZ), 
      reveal__module._default.binom, 
      Mul(LitInt(2), a#0) + 1, 
      Mul(LitInt(2), b#0) + 1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0) + 1));
    ##a#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, Tclass._System.nat(), $Heap);
    ##b#1 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(a#0, b#0);
    ##n#1 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
    assume {:id "id383"} _module.__default.EVEN(reveal__module._default.EVEN, 
        _module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0) + 1, 
          Mul(LitInt(2), b#0) + 1))
       <==> _module.__default.EVEN(reveal__module._default.EVEN, 
        _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
}



procedure {:verboseName "Lucas_Binary11 (call)"} Call$$_module.__default.Lucas__Binary11(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0) + 1)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0) + 1))
     && 
    _module.__default.binom#canCall(a#0, b#0)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
  ensures {:id "id384"} _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0) + 1))
     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lucas_Binary11 (correctness)"} Impl$$_module.__default.Lucas__Binary11(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0) + 1)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0) + 1))
     && 
    _module.__default.binom#canCall(a#0, b#0)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
  ensures {:id "id385"} _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0) + 1))
     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lucas_Binary11 (correctness)"} Impl$$_module.__default.Lucas__Binary11(a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var aa#0: int;
  var bb#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var r#0: int where LitInt(0) <= r#0;
  var ##a#2: int;
  var ##b#2: int;
  var a'#0: int;
  var b'#0: int;
  var $rhs#2: int;
  var $rhs#3: int;
  var ##n#0_0_0: int;
  var ##a#0_0_0: int;
  var ##b#0_0_0: int;
  var a##0_0_0: int;
  var b##0_0_0: int;
  var ##n#0_0_1: int;
  var ##a#0_0_1: int;
  var ##b#0_0_1: int;
  var ##n#0_1_0: int;
  var ##a#0_1_0: int;
  var ##b#0_1_0: int;
  var ##n#0_1_1: int;
  var ##a#0_1_1: int;
  var ##b#0_1_1: int;
  var a##0_1_0: int;
  var b##0_1_0: int;
  var ##n#0_1_2: int;
  var ##a#0_1_2: int;
  var ##b#0_1_2: int;
  var ##n#0_2_0: int;
  var ##a#0_2_0: int;
  var ##b#0_2_0: int;
  var ##a#0_2_1: int;
  var ##b#0_2_1: int;
  var a##0_2_0: int;
  var ##a#0_2_2: int;
  var ##b#0_2_2: int;
  var b##0_2_0: int;
  var ##a#0_2_3: int;
  var ##b#0_2_3: int;
  var ##n#0_2_1: int;
  var ##a#0_2_4: int;
  var ##b#0_2_4: int;
  var ##n#0_2_2: int;
  var ##a#0_2_5: int;
  var ##b#0_2_5: int;
  var ##n#0_3_0: int;
  var ##n#0_3_1: int;
  var ##a#0_3_0: int;
  var ##b#0_3_0: int;
  var ##a#0_3_1: int;
  var ##b#0_3_1: int;
  var ##n#0_0: int;

    // AddMethodImpl: Lucas_Binary11, Impl$$_module.__default.Lucas__Binary11
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(171,14)
    assume true;
    assume true;
    assume true;
    $rhs#0 := Mul(LitInt(2), a#0) + 1;
    assume true;
    $rhs#1 := Mul(LitInt(2), b#0) + 1;
    aa#0 := $rhs#0;
    bb#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(172,9)
    assume true;
    assert {:id "id390"} $Is(aa#0, Tclass._System.nat());
    ##a#2 := aa#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#2, Tclass._System.nat(), $Heap);
    assert {:id "id391"} $Is(bb#0, Tclass._System.nat());
    ##b#2 := bb#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(aa#0, bb#0);
    assume _module.__default.binom#canCall(aa#0, bb#0);
    r#0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0, bb#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(174,3)
    assume true;
    assert {:id "id393"} bb#0 != 0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(175,3)
    assume true;
    assert {:id "id394"} aa#0 != 0;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(176,14)
    assume true;
    assume true;
    assume true;
    $rhs#2 := a#0 - 1;
    assume true;
    $rhs#3 := b#0 - 1;
    a'#0 := $rhs#2;
    b'#0 := $rhs#3;
    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
    // Assume Fuel Constant
    if (*)
    {
        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        ##n#0_0 := r#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0, Tclass._System.nat(), $Heap);
        assume _module.__default.EVEN#canCall(r#0);
        assume _module.__default.EVEN#canCall(r#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        ##n#0_3_0 := r#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_3_0, Tclass._System.nat(), $Heap);
        assume _module.__default.EVEN#canCall(r#0);
        assume _module.__default.EVEN#canCall(r#0);
        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(179,7)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(179,14)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id432"} Call$$_module.__default.reveal__binom();
        // TrCallStmt: After ProcessCallStmt
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        assert {:id "id433"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
        ##a#0_3_0 := Mul(LitInt(2), a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_3_0, Tclass._System.nat(), $Heap);
        assert {:id "id434"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
        ##b#0_3_0 := Mul(LitInt(2), b#0) + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_3_0, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1);
        assert {:id "id435"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
        ##a#0_3_1 := Mul(LitInt(2), a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_3_1, Tclass._System.nat(), $Heap);
        assert {:id "id436"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
        ##b#0_3_1 := Mul(LitInt(2), b#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_3_1, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
        assert {:id "id437"} $Is(_module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0) + 1)
             + _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0)), 
          Tclass._System.nat());
        ##n#0_3_1 := _module.__default.binom($LS($LZ), 
            reveal__module._default.binom, 
            Mul(LitInt(2), a#0), 
            Mul(LitInt(2), b#0) + 1)
           + _module.__default.binom($LS($LZ), 
            reveal__module._default.binom, 
            Mul(LitInt(2), a#0), 
            Mul(LitInt(2), b#0));
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_3_1, Tclass._System.nat(), $Heap);
        assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0) + 1)
             + _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0)));
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1)
           && _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
           && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0) + 1)
               + _module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0)));
        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        assert {:id "id438"} {:subsumption 0} _module.__default.EVEN(reveal__module._default.EVEN, r#0)
           == _module.__default.EVEN(reveal__module._default.EVEN, 
            _module.__default.binom($LS($LS($LZ)), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0) + 1)
               + _module.__default.binom($LS($LS($LZ)), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0)));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        assume {:id "id417"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
        ##a#0_2_0 := Mul(LitInt(2), a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_2_0, Tclass._System.nat(), $Heap);
        assume {:id "id418"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
        ##b#0_2_0 := Mul(LitInt(2), b#0) + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_2_0, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1);
        assume {:id "id419"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
        ##a#0_2_1 := Mul(LitInt(2), a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_2_1, Tclass._System.nat(), $Heap);
        assume {:id "id420"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
        ##b#0_2_1 := Mul(LitInt(2), b#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_2_1, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
        assume {:id "id421"} $Is(_module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0) + 1)
             + _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0)), 
          Tclass._System.nat());
        ##n#0_2_0 := _module.__default.binom($LS($LZ), 
            reveal__module._default.binom, 
            Mul(LitInt(2), a#0), 
            Mul(LitInt(2), b#0) + 1)
           + _module.__default.binom($LS($LZ), 
            reveal__module._default.binom, 
            Mul(LitInt(2), a#0), 
            Mul(LitInt(2), b#0));
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_2_0, Tclass._System.nat(), $Heap);
        assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0) + 1)
             + _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0)));
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1)
           && _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
           && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0) + 1)
               + _module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0)));
        // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(181,15)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id422"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
        ##a#0_2_2 := Mul(LitInt(2), a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_2_2, Tclass._System.nat(), $Heap);
        assert {:id "id423"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
        ##b#0_2_2 := Mul(LitInt(2), b#0) + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_2_2, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1);
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1);
        // ProcessCallStmt: CheckSubrange
        a##0_2_0 := _module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0), 
          Mul(LitInt(2), b#0) + 1);
        assert {:id "id424"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
        ##a#0_2_3 := Mul(LitInt(2), a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_2_3, Tclass._System.nat(), $Heap);
        assert {:id "id425"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
        ##b#0_2_3 := Mul(LitInt(2), b#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_2_3, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
        // ProcessCallStmt: CheckSubrange
        b##0_2_0 := _module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0), 
          Mul(LitInt(2), b#0));
        call {:id "id426"} Call$$_module.__default.EvenPlus(a##0_2_0, b##0_2_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        assert {:id "id427"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
        ##a#0_2_4 := Mul(LitInt(2), a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_2_4, Tclass._System.nat(), $Heap);
        assert {:id "id428"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
        ##b#0_2_4 := Mul(LitInt(2), b#0) + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_2_4, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1);
        ##n#0_2_1 := _module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0), 
          Mul(LitInt(2), b#0) + 1);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_2_1, Tclass._System.nat(), $Heap);
        assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
            reveal__module._default.binom, 
            Mul(LitInt(2), a#0), 
            Mul(LitInt(2), b#0) + 1));
        assert {:id "id429"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
        ##a#0_2_5 := Mul(LitInt(2), a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_2_5, Tclass._System.nat(), $Heap);
        assert {:id "id430"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
        ##b#0_2_5 := Mul(LitInt(2), b#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_2_5, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
        ##n#0_2_2 := _module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0), 
          Mul(LitInt(2), b#0));
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_2_2, Tclass._System.nat(), $Heap);
        assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
            reveal__module._default.binom, 
            Mul(LitInt(2), a#0), 
            Mul(LitInt(2), b#0)));
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1)
           && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0) + 1))
           && 
          _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
           && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0)));
        // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        assert {:id "id431"} {:subsumption 0} _module.__default.EVEN(reveal__module._default.EVEN, 
            _module.__default.binom($LS($LS($LZ)), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0) + 1)
               + _module.__default.binom($LS($LS($LZ)), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0)))
           == (_module.__default.EVEN(reveal__module._default.EVEN, 
              _module.__default.binom($LS($LS($LZ)), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0) + 1))
             <==> _module.__default.EVEN(reveal__module._default.EVEN, 
              _module.__default.binom($LS($LS($LZ)), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0))));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        assume {:id "id406"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
        ##a#0_1_0 := Mul(LitInt(2), a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_1_0, Tclass._System.nat(), $Heap);
        assume {:id "id407"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
        ##b#0_1_0 := Mul(LitInt(2), b#0) + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_1_0, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1);
        ##n#0_1_0 := _module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0), 
          Mul(LitInt(2), b#0) + 1);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1_0, Tclass._System.nat(), $Heap);
        assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
            reveal__module._default.binom, 
            Mul(LitInt(2), a#0), 
            Mul(LitInt(2), b#0) + 1));
        assume {:id "id408"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
        ##a#0_1_1 := Mul(LitInt(2), a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_1_1, Tclass._System.nat(), $Heap);
        assume {:id "id409"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
        ##b#0_1_1 := Mul(LitInt(2), b#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_1_1, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
        ##n#0_1_1 := _module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0), 
          Mul(LitInt(2), b#0));
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1_1, Tclass._System.nat(), $Heap);
        assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
            reveal__module._default.binom, 
            Mul(LitInt(2), a#0), 
            Mul(LitInt(2), b#0)));
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1)
           && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0) + 1))
           && 
          _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
           && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0)));
        // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(183,21)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_1_0 := a#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##0_1_0 := b#0;
        assert {:id "id410"} 0 <= a#0 || a##0_1_0 == a#0;
        assert {:id "id411"} 0 <= b#0 || a##0_1_0 <= a#0 || b##0_1_0 == b#0;
        assert {:id "id412"} a##0_1_0 <= a#0 && (a##0_1_0 == a#0 ==> b##0_1_0 <= b#0);
        call {:id "id413"} Call$$_module.__default.Lucas__Binary01(a##0_1_0, b##0_1_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        assert {:id "id414"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
        ##a#0_1_2 := Mul(LitInt(2), a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_1_2, Tclass._System.nat(), $Heap);
        assert {:id "id415"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
        ##b#0_1_2 := Mul(LitInt(2), b#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_1_2, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
        ##n#0_1_2 := _module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0), 
          Mul(LitInt(2), b#0));
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1_2, Tclass._System.nat(), $Heap);
        assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
            reveal__module._default.binom, 
            Mul(LitInt(2), a#0), 
            Mul(LitInt(2), b#0)));
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
           && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0)));
        // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        assert {:id "id416"} {:subsumption 0} (_module.__default.EVEN(reveal__module._default.EVEN, 
              _module.__default.binom($LS($LS($LZ)), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0) + 1))
             <==> _module.__default.EVEN(reveal__module._default.EVEN, 
              _module.__default.binom($LS($LS($LZ)), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0))))
           == _module.__default.EVEN(reveal__module._default.EVEN, 
            _module.__default.binom($LS($LS($LZ)), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0)));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        assume {:id "id399"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
        ##a#0_0_0 := Mul(LitInt(2), a#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_0_0, Tclass._System.nat(), $Heap);
        assume {:id "id400"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
        ##b#0_0_0 := Mul(LitInt(2), b#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_0_0, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
        ##n#0_0_0 := _module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0), 
          Mul(LitInt(2), b#0));
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0_0, Tclass._System.nat(), $Heap);
        assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
            reveal__module._default.binom, 
            Mul(LitInt(2), a#0), 
            Mul(LitInt(2), b#0)));
        assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
           && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0)));
        // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(185,21)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_0_0 := a#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##0_0_0 := b#0;
        assert {:id "id401"} 0 <= a#0 || a##0_0_0 == a#0;
        assert {:id "id402"} 0 <= b#0 || a##0_0_0 <= a#0 || b##0_0_0 == b#0;
        assert {:id "id403"} a##0_0_0 <= a#0 && (a##0_0_0 == a#0 ==> b##0_0_0 <= b#0);
        call {:id "id404"} Call$$_module.__default.Lucas__Binary00(a##0_0_0, b##0_0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        ##a#0_0_1 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_0_1, Tclass._System.nat(), $Heap);
        ##b#0_0_1 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_0_1, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(a#0, b#0);
        ##n#0_0_1 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0_1, Tclass._System.nat(), $Heap);
        assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
        assume _module.__default.binom#canCall(a#0, b#0)
           && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
        // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(177,3)
        assert {:id "id405"} {:subsumption 0} _module.__default.EVEN(reveal__module._default.EVEN, 
            _module.__default.binom($LS($LS($LZ)), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0)))
           == _module.__default.EVEN(reveal__module._default.EVEN, 
            _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0));
        assume false;
    }

    assume {:id "id439"} _module.__default.EVEN(reveal__module._default.EVEN, r#0)
       == _module.__default.EVEN(reveal__module._default.EVEN, 
        _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
}



procedure {:verboseName "Lucas_Binary10 (well-formedness)"} CheckWellFormed$$_module.__default.Lucas__Binary10(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lucas_Binary10 (well-formedness)"} CheckWellFormed$$_module.__default.Lucas__Binary10(a#0: int, b#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##a#0: int;
  var ##b#0: int;
  var ##n#1: int;
  var ##a#1: int;
  var ##b#1: int;


    // AddMethodImpl: Lucas_Binary10, CheckWellFormed$$_module.__default.Lucas__Binary10
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id440"} $Is(Mul(LitInt(2), a#0) + 1, Tclass._System.nat());
    ##a#0 := Mul(LitInt(2), a#0) + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._System.nat(), $Heap);
    assert {:id "id441"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
    ##b#0 := Mul(LitInt(2), b#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0));
    ##n#0 := _module.__default.binom($LS($LZ), 
      reveal__module._default.binom, 
      Mul(LitInt(2), a#0) + 1, 
      Mul(LitInt(2), b#0));
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0)));
    ##a#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, Tclass._System.nat(), $Heap);
    ##b#1 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(a#0, b#0);
    ##n#1 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
    assume {:id "id442"} _module.__default.EVEN(reveal__module._default.EVEN, 
        _module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0) + 1, 
          Mul(LitInt(2), b#0)))
       <==> _module.__default.EVEN(reveal__module._default.EVEN, 
        _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
}



procedure {:verboseName "Lucas_Binary10 (call)"} Call$$_module.__default.Lucas__Binary10(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0))
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0)))
     && 
    _module.__default.binom#canCall(a#0, b#0)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
  ensures {:id "id443"} _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0)))
     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lucas_Binary10 (correctness)"} Impl$$_module.__default.Lucas__Binary10(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0))
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0)))
     && 
    _module.__default.binom#canCall(a#0, b#0)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
  ensures {:id "id444"} _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0)))
     <==> _module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lucas_Binary10 (correctness)"} Impl$$_module.__default.Lucas__Binary10(a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var aa#0: int;
  var bb#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var r#0: int where LitInt(0) <= r#0;
  var ##a#2: int;
  var ##b#2: int;
  var ##a#0_0: int;
  var ##b#0_0: int;
  var ##a#0_1: int;
  var ##b#0_1: int;
  var a'#1_0: int;
  var b'#1_0: int;
  var $rhs#1_0: int;
  var $rhs#1_1: int;
  var ##n#1_0_0_0: int;
  var ##a#1_0_0_0: int;
  var ##b#1_0_0_0: int;
  var ##n#1_0_0_1: int;
  var ##a#1_0_0_1: int;
  var ##b#1_0_0_1: int;
  var a##1_0_0_0: int;
  var b##1_0_0_0: int;
  var ##n#1_0_0_2: int;
  var ##a#1_0_0_2: int;
  var ##b#1_0_0_2: int;
  var ##n#1_0_1_0: int;
  var ##a#1_0_1_0: int;
  var ##b#1_0_1_0: int;
  var ##n#1_0_1_1: int;
  var ##a#1_0_1_1: int;
  var ##b#1_0_1_1: int;
  var a##1_0_1_0: int;
  var b##1_0_1_0: int;
  var ##n#1_0_1_2: int;
  var ##a#1_0_1_2: int;
  var ##b#1_0_1_2: int;
  var ##n#1_0_1_3: int;
  var ##a#1_0_1_3: int;
  var ##b#1_0_1_3: int;
  var ##n#1_0_2_0: int;
  var ##a#1_0_2_0: int;
  var ##b#1_0_2_0: int;
  var ##a#1_0_2_1: int;
  var ##b#1_0_2_1: int;
  var a##1_0_2_0: int;
  var ##a#1_0_2_2: int;
  var ##b#1_0_2_2: int;
  var b##1_0_2_0: int;
  var ##a#1_0_2_3: int;
  var ##b#1_0_2_3: int;
  var ##n#1_0_2_1: int;
  var ##a#1_0_2_4: int;
  var ##b#1_0_2_4: int;
  var ##n#1_0_2_2: int;
  var ##a#1_0_2_5: int;
  var ##b#1_0_2_5: int;
  var ##n#1_0_3_0: int;
  var ##n#1_0_3_1: int;
  var ##a#1_0_3_0: int;
  var ##b#1_0_3_0: int;
  var ##a#1_0_3_1: int;
  var ##b#1_0_3_1: int;
  var ##n#1_0_0: int;

    // AddMethodImpl: Lucas_Binary10, Impl$$_module.__default.Lucas__Binary10
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(193,14)
    assume true;
    assume true;
    assume true;
    $rhs#0 := Mul(LitInt(2), a#0) + 1;
    assume true;
    $rhs#1 := Mul(LitInt(2), b#0);
    aa#0 := $rhs#0;
    bb#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(194,9)
    assume true;
    assert {:id "id449"} $Is(aa#0, Tclass._System.nat());
    ##a#2 := aa#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#2, Tclass._System.nat(), $Heap);
    assert {:id "id450"} $Is(bb#0, Tclass._System.nat());
    ##b#2 := bb#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(aa#0, bb#0);
    assume _module.__default.binom#canCall(aa#0, bb#0);
    r#0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, aa#0, bb#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(196,3)
    assume true;
    assert {:id "id452"} aa#0 != 0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(197,3)
    assume true;
    if (bb#0 == LitInt(0))
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(198,5)
        assume true;
        assert {:id "id453"} b#0 == LitInt(0);
        if (*)
        {
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(200,7)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(200,14)
            // TrCallStmt: Before ProcessCallStmt
            call {:id "id454"} Call$$_module.__default.reveal__binom();
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(199,5)
            ##a#0_0 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0, Tclass._System.nat(), $Heap);
            ##b#0_0 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0_0, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(a#0, b#0);
            assume _module.__default.binom#canCall(a#0, b#0);
            assert {:id "id455"} {:subsumption 0} r#0
               == _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0);
            assume {:id "id456"} r#0
               == _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(199,5)
        ##a#0_1 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_1, Tclass._System.nat(), $Heap);
        ##b#0_1 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_1, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(a#0, b#0);
        assume _module.__default.binom#canCall(a#0, b#0);
        assume true;
        assume {:id "id457"} r#0
           == _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
    }
    else
    {
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(203,16)
        assume true;
        assume true;
        assume true;
        $rhs#1_0 := a#0 - 1;
        assume true;
        $rhs#1_1 := b#0 - 1;
        a'#1_0 := $rhs#1_0;
        b'#1_0 := $rhs#1_1;
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            ##n#1_0_0 := r#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(r#0);
            assume _module.__default.EVEN#canCall(r#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            ##n#1_0_3_0 := r#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_3_0, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(r#0);
            assume _module.__default.EVEN#canCall(r#0);
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(206,9)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(206,16)
            // TrCallStmt: Before ProcessCallStmt
            call {:id "id496"} Call$$_module.__default.reveal__binom();
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            assert {:id "id497"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
            ##a#1_0_3_0 := Mul(LitInt(2), a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_3_0, Tclass._System.nat(), $Heap);
            assert {:id "id498"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
            ##b#1_0_3_0 := Mul(LitInt(2), b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_3_0, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
            assert {:id "id499"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
            ##a#1_0_3_1 := Mul(LitInt(2), a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_3_1, Tclass._System.nat(), $Heap);
            assert {:id "id500"} $Is(Mul(LitInt(2), b'#1_0) + 1, Tclass._System.nat());
            ##b#1_0_3_1 := Mul(LitInt(2), b'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_3_1, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b'#1_0) + 1);
            assert {:id "id501"} $Is(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a#0), 
                  Mul(LitInt(2), b#0))
                 + _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a#0), 
                  Mul(LitInt(2), b'#1_0) + 1), 
              Tclass._System.nat());
            ##n#1_0_3_1 := _module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0))
               + _module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b'#1_0) + 1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_3_1, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a#0), 
                  Mul(LitInt(2), b#0))
                 + _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a#0), 
                  Mul(LitInt(2), b'#1_0) + 1));
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
               && _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b'#1_0) + 1)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a#0), 
                    Mul(LitInt(2), b#0))
                   + _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a#0), 
                    Mul(LitInt(2), b'#1_0) + 1));
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            assert {:id "id502"} {:subsumption 0} _module.__default.EVEN(reveal__module._default.EVEN, r#0)
               == _module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LS($LZ)), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a#0), 
                    Mul(LitInt(2), b#0))
                   + _module.__default.binom($LS($LS($LZ)), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a#0), 
                    Mul(LitInt(2), b'#1_0) + 1));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            assume {:id "id481"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
            ##a#1_0_2_0 := Mul(LitInt(2), a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_2_0, Tclass._System.nat(), $Heap);
            assume {:id "id482"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
            ##b#1_0_2_0 := Mul(LitInt(2), b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_2_0, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
            assume {:id "id483"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
            ##a#1_0_2_1 := Mul(LitInt(2), a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_2_1, Tclass._System.nat(), $Heap);
            assume {:id "id484"} $Is(Mul(LitInt(2), b'#1_0) + 1, Tclass._System.nat());
            ##b#1_0_2_1 := Mul(LitInt(2), b'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_2_1, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b'#1_0) + 1);
            assume {:id "id485"} $Is(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a#0), 
                  Mul(LitInt(2), b#0))
                 + _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a#0), 
                  Mul(LitInt(2), b'#1_0) + 1), 
              Tclass._System.nat());
            ##n#1_0_2_0 := _module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0))
               + _module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b'#1_0) + 1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_0, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a#0), 
                  Mul(LitInt(2), b#0))
                 + _module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a#0), 
                  Mul(LitInt(2), b'#1_0) + 1));
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
               && _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b'#1_0) + 1)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a#0), 
                    Mul(LitInt(2), b#0))
                   + _module.__default.binom($LS($LZ), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a#0), 
                    Mul(LitInt(2), b'#1_0) + 1));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(208,17)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id486"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
            ##a#1_0_2_2 := Mul(LitInt(2), a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_2_2, Tclass._System.nat(), $Heap);
            assert {:id "id487"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
            ##b#1_0_2_2 := Mul(LitInt(2), b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_2_2, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
            // ProcessCallStmt: CheckSubrange
            a##1_0_2_0 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0));
            assert {:id "id488"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
            ##a#1_0_2_3 := Mul(LitInt(2), a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_2_3, Tclass._System.nat(), $Heap);
            assert {:id "id489"} $Is(Mul(LitInt(2), b'#1_0) + 1, Tclass._System.nat());
            ##b#1_0_2_3 := Mul(LitInt(2), b'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_2_3, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b'#1_0) + 1);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b'#1_0) + 1);
            // ProcessCallStmt: CheckSubrange
            b##1_0_2_0 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b'#1_0) + 1);
            call {:id "id490"} Call$$_module.__default.EvenPlus(a##1_0_2_0, b##1_0_2_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            assert {:id "id491"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
            ##a#1_0_2_4 := Mul(LitInt(2), a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_2_4, Tclass._System.nat(), $Heap);
            assert {:id "id492"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
            ##b#1_0_2_4 := Mul(LitInt(2), b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_2_4, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
            ##n#1_0_2_1 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_1, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0)));
            assert {:id "id493"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
            ##a#1_0_2_5 := Mul(LitInt(2), a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_2_5, Tclass._System.nat(), $Heap);
            assert {:id "id494"} $Is(Mul(LitInt(2), b'#1_0) + 1, Tclass._System.nat());
            ##b#1_0_2_5 := Mul(LitInt(2), b'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_2_5, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b'#1_0) + 1);
            ##n#1_0_2_2 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b'#1_0) + 1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_2, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b'#1_0) + 1));
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a#0), 
                  Mul(LitInt(2), b#0)))
               && 
              _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b'#1_0) + 1)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a#0), 
                  Mul(LitInt(2), b'#1_0) + 1));
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            assert {:id "id495"} {:subsumption 0} _module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LS($LZ)), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a#0), 
                    Mul(LitInt(2), b#0))
                   + _module.__default.binom($LS($LS($LZ)), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a#0), 
                    Mul(LitInt(2), b'#1_0) + 1))
               == (_module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LS($LZ)), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a#0), 
                    Mul(LitInt(2), b#0)))
                 <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LS($LZ)), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a#0), 
                    Mul(LitInt(2), b'#1_0) + 1)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            assume {:id "id470"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
            ##a#1_0_1_0 := Mul(LitInt(2), a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_1_0, Tclass._System.nat(), $Heap);
            assume {:id "id471"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
            ##b#1_0_1_0 := Mul(LitInt(2), b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_1_0, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
            ##n#1_0_1_0 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_0, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b#0)));
            assume {:id "id472"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
            ##a#1_0_1_1 := Mul(LitInt(2), a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_1_1, Tclass._System.nat(), $Heap);
            assume {:id "id473"} $Is(Mul(LitInt(2), b'#1_0) + 1, Tclass._System.nat());
            ##b#1_0_1_1 := Mul(LitInt(2), b'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_1_1, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b'#1_0) + 1);
            ##n#1_0_1_1 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b'#1_0) + 1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_1, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b'#1_0) + 1));
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a#0), 
                  Mul(LitInt(2), b#0)))
               && 
              _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b'#1_0) + 1)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a#0), 
                  Mul(LitInt(2), b'#1_0) + 1));
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(210,23)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##1_0_1_0 := a#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##1_0_1_0 := b#0;
            assert {:id "id474"} 0 <= a#0 || a##1_0_1_0 == a#0;
            assert {:id "id475"} 0 <= b#0 || a##1_0_1_0 <= a#0 || b##1_0_1_0 == b#0;
            assert {:id "id476"} a##1_0_1_0 <= a#0 && (a##1_0_1_0 == a#0 ==> b##1_0_1_0 <= b#0);
            call {:id "id477"} Call$$_module.__default.Lucas__Binary00(a##1_0_1_0, b##1_0_1_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            ##a#1_0_1_2 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_1_2, Tclass._System.nat(), $Heap);
            ##b#1_0_1_2 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_1_2, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(a#0, b#0);
            ##n#1_0_1_2 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_2, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
            assert {:id "id478"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
            ##a#1_0_1_3 := Mul(LitInt(2), a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_1_3, Tclass._System.nat(), $Heap);
            assert {:id "id479"} $Is(Mul(LitInt(2), b'#1_0) + 1, Tclass._System.nat());
            ##b#1_0_1_3 := Mul(LitInt(2), b'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_1_3, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b'#1_0) + 1);
            ##n#1_0_1_3 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b'#1_0) + 1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_3, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b'#1_0) + 1));
            assume _module.__default.binom#canCall(a#0, b#0)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0))
               && 
              _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b'#1_0) + 1)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a#0), 
                  Mul(LitInt(2), b'#1_0) + 1));
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            assert {:id "id480"} {:subsumption 0} (_module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LS($LZ)), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a#0), 
                    Mul(LitInt(2), b#0)))
                 <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LS($LZ)), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a#0), 
                    Mul(LitInt(2), b'#1_0) + 1)))
               == (_module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0))
                 <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LS($LZ)), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a#0), 
                    Mul(LitInt(2), b'#1_0) + 1)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            ##a#1_0_0_0 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_0_0, Tclass._System.nat(), $Heap);
            ##b#1_0_0_0 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_0_0, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(a#0, b#0);
            ##n#1_0_0_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_0, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
            assume {:id "id462"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
            ##a#1_0_0_1 := Mul(LitInt(2), a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_0_1, Tclass._System.nat(), $Heap);
            assume {:id "id463"} $Is(Mul(LitInt(2), b'#1_0) + 1, Tclass._System.nat());
            ##b#1_0_0_1 := Mul(LitInt(2), b'#1_0) + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_0_1, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b'#1_0) + 1);
            ##n#1_0_0_1 := _module.__default.binom($LS($LZ), 
              reveal__module._default.binom, 
              Mul(LitInt(2), a#0), 
              Mul(LitInt(2), b'#1_0) + 1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_1, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                reveal__module._default.binom, 
                Mul(LitInt(2), a#0), 
                Mul(LitInt(2), b'#1_0) + 1));
            assume _module.__default.binom#canCall(a#0, b#0)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0))
               && 
              _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b'#1_0) + 1)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), 
                  reveal__module._default.binom, 
                  Mul(LitInt(2), a#0), 
                  Mul(LitInt(2), b'#1_0) + 1));
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(212,23)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##1_0_0_0 := a#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id464"} $Is(b'#1_0, Tclass._System.nat());
            b##1_0_0_0 := b'#1_0;
            assert {:id "id465"} 0 <= a#0 || a##1_0_0_0 == a#0;
            assert {:id "id466"} 0 <= b#0 || a##1_0_0_0 <= a#0 || b##1_0_0_0 == b#0;
            assert {:id "id467"} a##1_0_0_0 <= a#0 && (a##1_0_0_0 == a#0 ==> b##1_0_0_0 <= b#0);
            call {:id "id468"} Call$$_module.__default.Lucas__Binary01(a##1_0_0_0, b##1_0_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            ##a#1_0_0_2 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_0_2, Tclass._System.nat(), $Heap);
            ##b#1_0_0_2 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_0_2, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(a#0, b#0);
            ##n#1_0_0_2 := _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_2, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
            assume _module.__default.binom#canCall(a#0, b#0)
               && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(204,5)
            assert {:id "id469"} {:subsumption 0} (_module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0))
                 <==> _module.__default.EVEN(reveal__module._default.EVEN, 
                  _module.__default.binom($LS($LS($LZ)), 
                    reveal__module._default.binom, 
                    Mul(LitInt(2), a#0), 
                    Mul(LitInt(2), b'#1_0) + 1)))
               == _module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0));
            assume false;
        }

        assume {:id "id503"} _module.__default.EVEN(reveal__module._default.EVEN, r#0)
           == _module.__default.EVEN(reveal__module._default.EVEN, 
            _module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0));
    }
}



procedure {:verboseName "Lucas_Binary' (well-formedness)"} CheckWellFormed$$_module.__default.Lucas__Binary_k(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lucas_Binary' (well-formedness)"} CheckWellFormed$$_module.__default.Lucas__Binary_k(a#0: int, b#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: int;
  var ##b#0: int;
  var ##a#1: int;
  var ##b#1: int;
  var ##a#2: int;
  var ##b#2: int;
  var ##a#3: int;
  var ##b#3: int;
  var ##a#4: int;
  var ##b#4: int;
  var ##a#5: int;
  var ##b#5: int;
  var ##a#6: int;
  var ##b#6: int;


    // AddMethodImpl: Lucas_Binary', CheckWellFormed$$_module.__default.Lucas__Binary_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id504"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
    ##a#0 := Mul(LitInt(2), a#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._System.nat(), $Heap);
    assert {:id "id505"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
    ##b#0 := Mul(LitInt(2), b#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0));
    assert {:id "id506"} LitInt(2) != 0;
    ##a#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, Tclass._System.nat(), $Heap);
    ##b#1 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(a#0, b#0);
    assert {:id "id507"} LitInt(2) != 0;
    assume {:id "id508"} Mod(_module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0), 
          Mul(LitInt(2), b#0)), 
        LitInt(2))
       == Mod(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0), 
        LitInt(2));
    assert {:id "id509"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
    ##a#2 := Mul(LitInt(2), a#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#2, Tclass._System.nat(), $Heap);
    assert {:id "id510"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
    ##b#2 := Mul(LitInt(2), b#0) + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1);
    assert {:id "id511"} LitInt(2) != 0;
    assume {:id "id512"} Mod(_module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0), 
          Mul(LitInt(2), b#0) + 1), 
        LitInt(2))
       == LitInt(0);
    assert {:id "id513"} $Is(Mul(LitInt(2), a#0) + 1, Tclass._System.nat());
    ##a#3 := Mul(LitInt(2), a#0) + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#3, Tclass._System.nat(), $Heap);
    assert {:id "id514"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
    ##b#3 := Mul(LitInt(2), b#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0));
    assert {:id "id515"} LitInt(2) != 0;
    ##a#4 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#4, Tclass._System.nat(), $Heap);
    ##b#4 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(a#0, b#0);
    assert {:id "id516"} LitInt(2) != 0;
    assume {:id "id517"} Mod(_module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0) + 1, 
          Mul(LitInt(2), b#0)), 
        LitInt(2))
       == Mod(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0), 
        LitInt(2));
    assert {:id "id518"} $Is(Mul(LitInt(2), a#0) + 1, Tclass._System.nat());
    ##a#5 := Mul(LitInt(2), a#0) + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#5, Tclass._System.nat(), $Heap);
    assert {:id "id519"} $Is(Mul(LitInt(2), b#0) + 1, Tclass._System.nat());
    ##b#5 := Mul(LitInt(2), b#0) + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#5, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0) + 1);
    assert {:id "id520"} LitInt(2) != 0;
    ##a#6 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#6, Tclass._System.nat(), $Heap);
    ##b#6 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#6, Tclass._System.nat(), $Heap);
    assume _module.__default.binom#canCall(a#0, b#0);
    assert {:id "id521"} LitInt(2) != 0;
    assume {:id "id522"} Mod(_module.__default.binom($LS($LZ), 
          reveal__module._default.binom, 
          Mul(LitInt(2), a#0) + 1, 
          Mul(LitInt(2), b#0) + 1), 
        LitInt(2))
       == Mod(_module.__default.binom($LS($LZ), reveal__module._default.binom, a#0, b#0), 
        LitInt(2));
}



procedure {:verboseName "Lucas_Binary' (call)"} Call$$_module.__default.Lucas__Binary_k(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
     && _module.__default.binom#canCall(a#0, b#0);
  ensures {:id "id523"} Mod(_module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0)), 
      LitInt(2))
     == Mod(_module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0), 
      LitInt(2));
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1);
  ensures {:id "id524"} Mod(_module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0) + 1), 
      LitInt(2))
     == LitInt(0);
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0))
     && _module.__default.binom#canCall(a#0, b#0);
  ensures {:id "id525"} Mod(_module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0)), 
      LitInt(2))
     == Mod(_module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0), 
      LitInt(2));
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0) + 1)
     && _module.__default.binom#canCall(a#0, b#0);
  ensures {:id "id526"} Mod(_module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0) + 1), 
      LitInt(2))
     == Mod(_module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0), 
      LitInt(2));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lucas_Binary' (correctness)"} Impl$$_module.__default.Lucas__Binary_k(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0)
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0))
     && _module.__default.binom#canCall(a#0, b#0);
  ensures {:id "id527"} Mod(_module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0)), 
      LitInt(2))
     == Mod(_module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0), 
      LitInt(2));
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0), Mul(LitInt(2), b#0) + 1);
  ensures {:id "id528"} Mod(_module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0), 
        Mul(LitInt(2), b#0) + 1), 
      LitInt(2))
     == LitInt(0);
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0))
     && _module.__default.binom#canCall(a#0, b#0);
  ensures {:id "id529"} Mod(_module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0)), 
      LitInt(2))
     == Mod(_module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0), 
      LitInt(2));
  free ensures _module.__default.binom#canCall(Mul(LitInt(2), a#0) + 1, Mul(LitInt(2), b#0) + 1)
     && _module.__default.binom#canCall(a#0, b#0);
  ensures {:id "id530"} Mod(_module.__default.binom($LS($LS($LZ)), 
        reveal__module._default.binom, 
        Mul(LitInt(2), a#0) + 1, 
        Mul(LitInt(2), b#0) + 1), 
      LitInt(2))
     == Mod(_module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, a#0, b#0), 
      LitInt(2));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lucas_Binary' (correctness)"} Impl$$_module.__default.Lucas__Binary_k(a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a##0: int;
  var b##0: int;

    // AddMethodImpl: Lucas_Binary', Impl$$_module.__default.Lucas__Binary_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(225,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := b#0;
    call {:id "id531"} Call$$_module.__default.Lucas__Binary(a##0, b##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(226,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(226,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id532"} Call$$_module.__default.reveal__EVEN();
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for _module._default.Suc
function _module.__default.Suc(S#0: Set) : Set
uses {
// consequence axiom for _module.__default.Suc
axiom 0 <= $FunctionContextHeight
   ==> (forall S#0: Set :: 
    { _module.__default.Suc(S#0) } 
    _module.__default.Suc#canCall(S#0)
         || (0 < $FunctionContextHeight && $Is(S#0, TSet(Tclass._System.nat())))
       ==> $Is(_module.__default.Suc(S#0), TSet(Tclass._System.nat())));
// definition axiom for _module.__default.Suc (revealed)
axiom {:id "id533"} 0 <= $FunctionContextHeight
   ==> (forall S#0: Set :: 
    { _module.__default.Suc(S#0) } 
    _module.__default.Suc#canCall(S#0)
         || (0 < $FunctionContextHeight && $Is(S#0, TSet(Tclass._System.nat())))
       ==> _module.__default.Suc(S#0)
         == Set#FromBoogieMap((lambda $y#0: Box :: 
            (exists x#0: int :: 
              { Set#IsMember(S#0, $Box(x#0)) } 
              LitInt(0) <= x#0 && Set#IsMember(S#0, $Box(x#0)) && $y#0 == $Box(x#0 + 1)))));
// definition axiom for _module.__default.Suc for all literals (revealed)
axiom {:id "id534"} 0 <= $FunctionContextHeight
   ==> (forall S#0: Set :: 
    {:weight 3} { _module.__default.Suc(Lit(S#0)) } 
    _module.__default.Suc#canCall(Lit(S#0))
         || (0 < $FunctionContextHeight && $Is(S#0, TSet(Tclass._System.nat())))
       ==> _module.__default.Suc(Lit(S#0))
         == Set#FromBoogieMap((lambda $y#1: Box :: 
            (exists x#1: int :: 
              { Set#IsMember(S#0, $Box(x#1)) } 
              LitInt(0) <= x#1 && Set#IsMember(Lit(S#0), $Box(x#1)) && $y#1 == $Box(x#1 + 1)))));
}

function _module.__default.Suc#canCall(S#0: Set) : bool;

function _module.__default.Suc#requires(Set) : bool;

// #requires axiom for _module.__default.Suc
axiom (forall S#0: Set :: 
  { _module.__default.Suc#requires(S#0) } 
  $Is(S#0, TSet(Tclass._System.nat()))
     ==> _module.__default.Suc#requires(S#0) == true);

procedure {:verboseName "Suc (well-formedness)"} CheckWellformed$$_module.__default.Suc(S#0: Set where $Is(S#0, TSet(Tclass._System.nat())));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Suc (well-formedness)"} CheckWellformed$$_module.__default.Suc(S#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var x#2: int;
  var newtype$check#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Suc(S#0), TSet(Tclass._System.nat()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc x#2;
        if (LitInt(0) <= x#2)
        {
            if (Set#IsMember(S#0, $Box(x#2)))
            {
                newtype$check#0 := x#2 + 1;
                assert {:id "id535"} LitInt(0) <= newtype$check#0;
            }
        }

        // End Comprehension WF check
        assume {:id "id536"} _module.__default.Suc(S#0)
           == Set#FromBoogieMap((lambda $y#3: Box :: 
              (exists x#3: int :: 
                { Set#IsMember(S#0, $Box(x#3)) } 
                LitInt(0) <= x#3 && Set#IsMember(S#0, $Box(x#3)) && $y#3 == $Box(x#3 + 1))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Suc(S#0), TSet(Tclass._System.nat()));
        return;

        assume false;
    }
}



procedure {:verboseName "SucElements (well-formedness)"} CheckWellFormed$$_module.__default.SucElements(S#0: Set
       where $Is(S#0, TSet(Tclass._System.nat()))
         && $IsAlloc(S#0, TSet(Tclass._System.nat()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SucElements (call)"} Call$$_module.__default.SucElements(S#0: Set
       where $Is(S#0, TSet(Tclass._System.nat()))
         && $IsAlloc(S#0, TSet(Tclass._System.nat()), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Suc#canCall(S#0);
  ensures {:id "id539"} (forall x#1: int :: 
    { Set#IsMember(S#0, $Box(x#1)) } 
    Set#IsMember(S#0, $Box(x#1))
       <==> Set#IsMember(_module.__default.Suc(S#0), $Box(x#1 + 1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "SucElements (correctness)"} Impl$$_module.__default.SucElements(S#0: Set
       where $Is(S#0, TSet(Tclass._System.nat()))
         && $IsAlloc(S#0, TSet(Tclass._System.nat()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Suc#canCall(S#0);
  ensures {:id "id540"} (forall x#1: int :: 
    { Set#IsMember(S#0, $Box(x#1)) } 
    Set#IsMember(S#0, $Box(x#1))
       <==> Set#IsMember(_module.__default.Suc(S#0), $Box(x#1 + 1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SucElements (correctness)"} Impl$$_module.__default.SucElements(S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: SucElements, Impl$$_module.__default.SucElements
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "ZeroNotInImageSuc (well-formedness)"} CheckWellFormed$$_module.__default.ZeroNotInImageSuc(S#0: Set
       where $Is(S#0, TSet(Tclass._System.nat()))
         && $IsAlloc(S#0, TSet(Tclass._System.nat()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZeroNotInImageSuc (call)"} Call$$_module.__default.ZeroNotInImageSuc(S#0: Set
       where $Is(S#0, TSet(Tclass._System.nat()))
         && $IsAlloc(S#0, TSet(Tclass._System.nat()), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Suc#canCall(S#0);
  ensures {:id "id542"} !Set#IsMember(_module.__default.Suc(S#0), $Box(LitInt(0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ZeroNotInImageSuc (correctness)"} Impl$$_module.__default.ZeroNotInImageSuc(S#0: Set
       where $Is(S#0, TSet(Tclass._System.nat()))
         && $IsAlloc(S#0, TSet(Tclass._System.nat()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Suc#canCall(S#0);
  ensures {:id "id543"} !Set#IsMember(_module.__default.Suc(S#0), $Box(LitInt(0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZeroNotInImageSuc (correctness)"} Impl$$_module.__default.ZeroNotInImageSuc(S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: ZeroNotInImageSuc, Impl$$_module.__default.ZeroNotInImageSuc
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "BitSet_Clauses (well-formedness)"} CheckWellFormed$$_module.__default.BitSet__Clauses(n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BitSet_Clauses (well-formedness)"} CheckWellFormed$$_module.__default.BitSet__Clauses(n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##S#0: Set;
  var ##n#1: int;
  var ##n#2: int;
  var ##S#1: Set;
  var ##n#3: int;


    // AddMethodImpl: BitSet_Clauses, CheckWellFormed$$_module.__default.BitSet__Clauses
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id544"} $Is(Mul(LitInt(2), n#0), Tclass._System.nat());
    ##n#0 := Mul(LitInt(2), n#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.BitSet#canCall(Mul(LitInt(2), n#0));
    ##n#1 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.BitSet#canCall(n#0);
    ##S#0 := _module.__default.BitSet(n#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#0, TSet(Tclass._System.nat()), $Heap);
    assume _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
    assume {:id "id545"} Set#Equal(_module.__default.BitSet(Mul(LitInt(2), n#0)), 
      _module.__default.Suc(_module.__default.BitSet(n#0)));
    assert {:id "id546"} $Is(Mul(LitInt(2), n#0) + 1, Tclass._System.nat());
    ##n#2 := Mul(LitInt(2), n#0) + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
    assume _module.__default.BitSet#canCall(Mul(LitInt(2), n#0) + 1);
    assert {:id "id547"} $Is(LitInt(0), Tclass._System.nat());
    ##n#3 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
    assume _module.__default.BitSet#canCall(n#0);
    ##S#1 := _module.__default.BitSet(n#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#1, TSet(Tclass._System.nat()), $Heap);
    assume _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
    assume {:id "id548"} Set#Equal(_module.__default.BitSet(Mul(LitInt(2), n#0) + 1), 
      Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), 
        _module.__default.Suc(_module.__default.BitSet(n#0))));
}



procedure {:verboseName "BitSet_Clauses (call)"} Call$$_module.__default.BitSet__Clauses(n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.BitSet#canCall(Mul(LitInt(2), n#0))
     && 
    _module.__default.BitSet#canCall(n#0)
     && _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
  ensures {:id "id549"} Set#Equal(_module.__default.BitSet(Mul(LitInt(2), n#0)), 
    _module.__default.Suc(_module.__default.BitSet(n#0)));
  free ensures _module.__default.BitSet#canCall(Mul(LitInt(2), n#0) + 1)
     && 
    _module.__default.BitSet#canCall(n#0)
     && _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
  ensures {:id "id550"} Set#Equal(_module.__default.BitSet(Mul(LitInt(2), n#0) + 1), 
    Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), 
      _module.__default.Suc(_module.__default.BitSet(n#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BitSet_Clauses (correctness)"} Impl$$_module.__default.BitSet__Clauses(n#0: int where LitInt(0) <= n#0) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.BitSet#canCall(Mul(LitInt(2), n#0))
     && 
    _module.__default.BitSet#canCall(n#0)
     && _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
  ensures {:id "id551"} Set#Equal(_module.__default.BitSet(Mul(LitInt(2), n#0)), 
    _module.__default.Suc(_module.__default.BitSet(n#0)));
  free ensures _module.__default.BitSet#canCall(Mul(LitInt(2), n#0) + 1)
     && 
    _module.__default.BitSet#canCall(n#0)
     && _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
  ensures {:id "id552"} Set#Equal(_module.__default.BitSet(Mul(LitInt(2), n#0) + 1), 
    Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), 
      _module.__default.Suc(_module.__default.BitSet(n#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BitSet_Clauses (correctness)"} Impl$$_module.__default.BitSet__Clauses(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var nn#1_0: int;
  var x#1_0_0: int;
  var ##n#1_0_0: int;
  var ##S#1_0_0: Set;
  var ##n#1_0_1: int;
  var ##n#1_0_0_0_0: int;
  var ##S#1_0_0_0_0: Set;
  var ##n#1_0_0_0_1: int;
  var ##k#1_0_0_1_0: int;
  var ##n#1_0_0_1_0: int;
  var ##n#1_0_0_1_1: int;
  var ##k#1_0_0_2_0: int;
  var ##n#1_0_0_2_0: int;
  var ##k#1_0_0_2_1: int;
  var ##n#1_0_0_2_1: int;
  var i##1_0_0_2_0_0: int;
  var n##1_0_0_2_0_0: int;
  var ##k#1_0_0_2_2: int;
  var ##n#1_0_0_2_2: int;
  var ##k#1_0_0_3_0: int;
  var ##n#1_0_0_3_0: int;
  var ##k#1_0_0_3_1: int;
  var ##n#1_0_0_3_1: int;
  var ##k#1_0_0_3_2: int;
  var ##n#1_0_0_3_2: int;
  var ##k#1_0_0_3_3: int;
  var ##n#1_0_0_3_3: int;
  var ##k#1_0_0_4_0: int;
  var ##n#1_0_0_4_0: int;
  var n##1_0_0_4_0: int;
  var ##k#1_0_0_4_1: int;
  var ##n#1_0_0_4_1: int;
  var ##n#1_0_0_5_0: int;
  var ##k#1_0_0_5_0: int;
  var ##n#1_0_0_5_1: int;
  var ##n#1_0_0_0: int;
  var x#1_1_0: int;
  var ##n#1_1_0: int;
  var ##S#1_1_0: Set;
  var ##n#1_1_1: int;
  var ##S#1_1_0_0_0: Set;
  var ##n#1_1_0_0_0: int;
  var ##S#1_1_0_0_1: Set;
  var ##n#1_1_0_0_1: int;
  var ##n#1_1_0_1_0: int;
  var ##S#1_1_0_1_0: Set;
  var ##n#1_1_0_1_1: int;
  var ##k#1_1_0_2_0: int;
  var ##n#1_1_0_2_0: int;
  var ##k#1_1_0_2_1: int;
  var ##n#1_1_0_2_1: int;
  var i##1_1_0_2_0_0: int;
  var n##1_1_0_2_0_0: int;
  var ##n#1_1_0_2_2: int;
  var ##k#1_1_0_3_0: int;
  var ##n#1_1_0_3_0: int;
  var ##k#1_1_0_3_1: int;
  var ##n#1_1_0_3_1: int;
  var ##k#1_1_0_4_0: int;
  var ##n#1_1_0_4_0: int;
  var ##k#1_1_0_4_1: int;
  var ##n#1_1_0_4_1: int;
  var ##k#1_1_0_4_2: int;
  var ##n#1_1_0_4_2: int;
  var ##n#1_1_0_5_0: int;
  var ##k#1_1_0_5_0: int;
  var ##n#1_1_0_5_1: int;
  var ##n#1_1_0_0: int;

    // AddMethodImpl: BitSet_Clauses, Impl$$_module.__default.BitSet__Clauses
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(255,3)
    assume true;
    if (n#0 == LitInt(0))
    {
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(257,12)
        assume true;
        assume true;
        nn#1_0 := Mul(LitInt(2), n#0);
        // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(258,5)
        if (*)
        {
            // Assume Fuel Constant
            havoc x#1_0_0;
            assume LitInt(0) <= x#1_0_0;
            assume true;
            assume {:id "id554"} true;
            if (*)
            {
                assert {:id "id555"} $Is(Mul(LitInt(2), n#0), Tclass._System.nat());
                ##n#1_0_0 := Mul(LitInt(2), n#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), n#0));
                ##n#1_0_1 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n#0);
                ##S#1_0_0 := _module.__default.BitSet(n#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_0_0, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), n#0))
                   && 
                  _module.__default.BitSet#canCall(n#0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
                assume {:id "id556"} Set#IsMember(_module.__default.BitSet(Mul(LitInt(2), n#0)), $Box(x#1_0_0))
                   == Set#IsMember(_module.__default.Suc(_module.__default.BitSet(n#0)), $Box(x#1_0_0));
                assume false;
            }

            push;
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                assert {:id "id582"} $Is(Mul(LitInt(2), n#0), Tclass._System.nat());
                ##n#1_0_0_0 := Mul(LitInt(2), n#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), n#0));
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), n#0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                assume {:id "id579"} $Is(Mul(LitInt(2), n#0), Tclass._System.nat());
                ##n#1_0_0_5_0 := Mul(LitInt(2), n#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_5_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), n#0));
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), n#0));
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                push;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                if (LitInt(0) <= x#1_0_0)
                {
                }

                if (LitInt(0) <= x#1_0_0 && x#1_0_0 < Mul(LitInt(2), n#0))
                {
                    ##k#1_0_0_5_0 := x#1_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_0_0_5_0, Tclass._System.nat(), $Heap);
                    assert {:id "id580"} $Is(Mul(LitInt(2), n#0), Tclass._System.nat());
                    ##n#1_0_0_5_1 := Mul(LitInt(2), n#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_0_0_5_1, Tclass._System.nat(), $Heap);
                    assume _module.__default.Bit#canCall(x#1_0_0, Mul(LitInt(2), n#0));
                }

                assume LitInt(0) <= x#1_0_0 && x#1_0_0 < Mul(LitInt(2), n#0)
                   ==> _module.__default.Bit#canCall(x#1_0_0, Mul(LitInt(2), n#0));
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                assert {:id "id581"} {:subsumption 0} Set#IsMember(_module.__default.BitSet(Mul(LitInt(2), n#0)), $Box(x#1_0_0))
                   == (
                    LitInt(0) <= x#1_0_0
                     && x#1_0_0 < Mul(LitInt(2), n#0)
                     && _module.__default.Bit($LS($LS($LZ)), x#1_0_0, Mul(LitInt(2), n#0)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                if (LitInt(0) <= x#1_0_0)
                {
                }

                if (LitInt(0) <= x#1_0_0 && x#1_0_0 < Mul(LitInt(2), n#0))
                {
                    ##k#1_0_0_4_0 := x#1_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_0_0_4_0, Tclass._System.nat(), $Heap);
                    assume {:id "id575"} $Is(Mul(LitInt(2), n#0), Tclass._System.nat());
                    ##n#1_0_0_4_0 := Mul(LitInt(2), n#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_0_0_4_0, Tclass._System.nat(), $Heap);
                    assume _module.__default.Bit#canCall(x#1_0_0, Mul(LitInt(2), n#0));
                }

                assume LitInt(0) <= x#1_0_0 && x#1_0_0 < Mul(LitInt(2), n#0)
                   ==> _module.__default.Bit#canCall(x#1_0_0, Mul(LitInt(2), n#0));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                push;
                push;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(263,26)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                n##1_0_0_4_0 := n#0;
                call {:id "id576"} Call$$_module.__default.ZeroBitOfEven(n##1_0_0_4_0);
                // TrCallStmt: After ProcessCallStmt
                pop;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                if (0 < x#1_0_0)
                {
                }

                if (0 < x#1_0_0 && x#1_0_0 < Mul(LitInt(2), n#0))
                {
                    ##k#1_0_0_4_1 := x#1_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_0_0_4_1, Tclass._System.nat(), $Heap);
                    assert {:id "id577"} $Is(Mul(LitInt(2), n#0), Tclass._System.nat());
                    ##n#1_0_0_4_1 := Mul(LitInt(2), n#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_0_0_4_1, Tclass._System.nat(), $Heap);
                    assume _module.__default.Bit#canCall(x#1_0_0, Mul(LitInt(2), n#0));
                }

                assume 0 < x#1_0_0 && x#1_0_0 < Mul(LitInt(2), n#0)
                   ==> _module.__default.Bit#canCall(x#1_0_0, Mul(LitInt(2), n#0));
                // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                assert {:id "id578"} {:subsumption 0} (
                    LitInt(0) <= x#1_0_0
                     && x#1_0_0 < Mul(LitInt(2), n#0)
                     && _module.__default.Bit($LS($LS($LZ)), x#1_0_0, Mul(LitInt(2), n#0)))
                   == (
                    0 < x#1_0_0
                     && x#1_0_0 < Mul(LitInt(2), n#0)
                     && _module.__default.Bit($LS($LS($LZ)), x#1_0_0, Mul(LitInt(2), n#0)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                if (0 < x#1_0_0)
                {
                }

                if (0 < x#1_0_0 && x#1_0_0 < Mul(LitInt(2), n#0))
                {
                    ##k#1_0_0_3_0 := x#1_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_0_0_3_0, Tclass._System.nat(), $Heap);
                    assume {:id "id566"} $Is(Mul(LitInt(2), n#0), Tclass._System.nat());
                    ##n#1_0_0_3_0 := Mul(LitInt(2), n#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_0_0_3_0, Tclass._System.nat(), $Heap);
                    assume _module.__default.Bit#canCall(x#1_0_0, Mul(LitInt(2), n#0));
                }

                assume 0 < x#1_0_0 && x#1_0_0 < Mul(LitInt(2), n#0)
                   ==> _module.__default.Bit#canCall(x#1_0_0, Mul(LitInt(2), n#0));
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                push;
                push;
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(265,13)
                if (0 < x#1_0_0)
                {
                    ##k#1_0_0_3_1 := x#1_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_0_0_3_1, Tclass._System.nat(), $Heap);
                    assert {:id "id567"} $Is(nn#1_0, Tclass._System.nat());
                    ##n#1_0_0_3_1 := nn#1_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_0_0_3_1, Tclass._System.nat(), $Heap);
                    assume _module.__default.Bit#canCall(x#1_0_0, nn#1_0);
                    assert {:id "id568"} $Is(x#1_0_0 - 1, Tclass._System.nat());
                    ##k#1_0_0_3_2 := x#1_0_0 - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_0_0_3_2, Tclass._System.nat(), $Heap);
                    assert {:id "id569"} {:subsumption 0} LitInt(2) != 0;
                    assert {:id "id570"} $Is(Div(nn#1_0, LitInt(2)), Tclass._System.nat());
                    ##n#1_0_0_3_2 := Div(nn#1_0, LitInt(2));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_0_0_3_2, Tclass._System.nat(), $Heap);
                    assume _module.__default.Bit#canCall(x#1_0_0 - 1, Div(nn#1_0, LitInt(2)));
                }

                assume 0 < x#1_0_0
                   ==> _module.__default.Bit#canCall(x#1_0_0, nn#1_0)
                     && _module.__default.Bit#canCall(x#1_0_0 - 1, Div(nn#1_0, LitInt(2)));
                assert {:id "id571"} {:subsumption 0} 0 < x#1_0_0
                   ==> _module.__default.Bit($LS($LS($LZ)), x#1_0_0, nn#1_0)
                     == _module.__default.Bit($LS($LS($LZ)), x#1_0_0 - 1, Div(nn#1_0, LitInt(2)));
                assume {:id "id572"} 0 < x#1_0_0
                   ==> _module.__default.Bit($LS($LZ), x#1_0_0, nn#1_0)
                     == _module.__default.Bit($LS($LZ), x#1_0_0 - 1, Div(nn#1_0, LitInt(2)));
                pop;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                if (0 < x#1_0_0)
                {
                }

                if (0 < x#1_0_0 && x#1_0_0 < Mul(LitInt(2), n#0))
                {
                    assert {:id "id573"} $Is(x#1_0_0 - 1, Tclass._System.nat());
                    ##k#1_0_0_3_3 := x#1_0_0 - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_0_0_3_3, Tclass._System.nat(), $Heap);
                    ##n#1_0_0_3_3 := n#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_0_0_3_3, Tclass._System.nat(), $Heap);
                    assume _module.__default.Bit#canCall(x#1_0_0 - 1, n#0);
                }

                assume 0 < x#1_0_0 && x#1_0_0 < Mul(LitInt(2), n#0)
                   ==> _module.__default.Bit#canCall(x#1_0_0 - 1, n#0);
                // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                assert {:id "id574"} {:subsumption 0} (
                    0 < x#1_0_0
                     && x#1_0_0 < Mul(LitInt(2), n#0)
                     && _module.__default.Bit($LS($LS($LZ)), x#1_0_0, Mul(LitInt(2), n#0)))
                   == (
                    0 < x#1_0_0
                     && x#1_0_0 < Mul(LitInt(2), n#0)
                     && _module.__default.Bit($LS($LS($LZ)), x#1_0_0 - 1, n#0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                if (0 < x#1_0_0)
                {
                }

                if (0 < x#1_0_0 && x#1_0_0 < Mul(LitInt(2), n#0))
                {
                    assume {:id "id560"} $Is(x#1_0_0 - 1, Tclass._System.nat());
                    ##k#1_0_0_2_0 := x#1_0_0 - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_0_0_2_0, Tclass._System.nat(), $Heap);
                    ##n#1_0_0_2_0 := n#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_0_0_2_0, Tclass._System.nat(), $Heap);
                    assume _module.__default.Bit#canCall(x#1_0_0 - 1, n#0);
                }

                assume 0 < x#1_0_0 && x#1_0_0 < Mul(LitInt(2), n#0)
                   ==> _module.__default.Bit#canCall(x#1_0_0 - 1, n#0);
                // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                push;
                push;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(267,13)
                if (0 < x#1_0_0)
                {
                    assert {:id "id561"} $Is(x#1_0_0 - 1, Tclass._System.nat());
                    ##k#1_0_0_2_1 := x#1_0_0 - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_0_0_2_1, Tclass._System.nat(), $Heap);
                    ##n#1_0_0_2_1 := n#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_0_0_2_1, Tclass._System.nat(), $Heap);
                    assume _module.__default.Bit#canCall(x#1_0_0 - 1, n#0);
                }

                assume 0 < x#1_0_0 ==> _module.__default.Bit#canCall(x#1_0_0 - 1, n#0);
                if (0 < x#1_0_0 && _module.__default.Bit($LS($LZ), x#1_0_0 - 1, n#0))
                {
                    push;
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(267,46)
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    assert {:id "id562"} $Is(x#1_0_0 - 1, Tclass._System.nat());
                    i##1_0_0_2_0_0 := x#1_0_0 - 1;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    n##1_0_0_2_0_0 := n#0;
                    call {:id "id563"} Call$$_module.__default.BitSize(i##1_0_0_2_0_0, n##1_0_0_2_0_0);
                    // TrCallStmt: After ProcessCallStmt
                    pop;
                }
                else
                {
                }

                pop;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                if (LitInt(0) <= x#1_0_0 - 1)
                {
                }

                if (LitInt(0) <= x#1_0_0 - 1 && x#1_0_0 - 1 < n#0)
                {
                    assert {:id "id564"} $Is(x#1_0_0 - 1, Tclass._System.nat());
                    ##k#1_0_0_2_2 := x#1_0_0 - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_0_0_2_2, Tclass._System.nat(), $Heap);
                    ##n#1_0_0_2_2 := n#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_0_0_2_2, Tclass._System.nat(), $Heap);
                    assume _module.__default.Bit#canCall(x#1_0_0 - 1, n#0);
                }

                assume LitInt(0) <= x#1_0_0 - 1 && x#1_0_0 - 1 < n#0
                   ==> _module.__default.Bit#canCall(x#1_0_0 - 1, n#0);
                // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                assert {:id "id565"} {:subsumption 0} (
                    0 < x#1_0_0
                     && x#1_0_0 < Mul(LitInt(2), n#0)
                     && _module.__default.Bit($LS($LS($LZ)), x#1_0_0 - 1, n#0))
                   == (
                    LitInt(0) <= x#1_0_0 - 1
                     && x#1_0_0 - 1 < n#0
                     && _module.__default.Bit($LS($LS($LZ)), x#1_0_0 - 1, n#0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                if (LitInt(0) <= x#1_0_0 - 1)
                {
                }

                if (LitInt(0) <= x#1_0_0 - 1 && x#1_0_0 - 1 < n#0)
                {
                    assume {:id "id558"} $Is(x#1_0_0 - 1, Tclass._System.nat());
                    ##k#1_0_0_1_0 := x#1_0_0 - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_0_0_1_0, Tclass._System.nat(), $Heap);
                    ##n#1_0_0_1_0 := n#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_0_0_1_0, Tclass._System.nat(), $Heap);
                    assume _module.__default.Bit#canCall(x#1_0_0 - 1, n#0);
                }

                assume LitInt(0) <= x#1_0_0 - 1 && x#1_0_0 - 1 < n#0
                   ==> _module.__default.Bit#canCall(x#1_0_0 - 1, n#0);
                // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                push;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                ##n#1_0_0_1_1 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_1_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n#0);
                assume _module.__default.BitSet#canCall(n#0);
                // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                assert {:id "id559"} {:subsumption 0} (
                    LitInt(0) <= x#1_0_0 - 1
                     && x#1_0_0 - 1 < n#0
                     && _module.__default.Bit($LS($LS($LZ)), x#1_0_0 - 1, n#0))
                   == Set#IsMember(_module.__default.BitSet(n#0), $Box(x#1_0_0 - 1));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                ##n#1_0_0_0_0 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n#0);
                assume _module.__default.BitSet#canCall(n#0);
                // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                push;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                ##n#1_0_0_0_1 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_0_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n#0);
                ##S#1_0_0_0_0 := _module.__default.BitSet(n#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_0_0_0_0, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
                assume _module.__default.BitSet#canCall(n#0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
                // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(259,7)
                assert {:id "id557"} {:subsumption 0} Set#IsMember(_module.__default.BitSet(n#0), $Box(x#1_0_0 - 1))
                   == Set#IsMember(_module.__default.Suc(_module.__default.BitSet(n#0)), $Box(x#1_0_0));
                assume false;
            }

            assume {:id "id583"} Set#IsMember(_module.__default.BitSet(Mul(LitInt(2), n#0)), $Box(x#1_0_0))
               == Set#IsMember(_module.__default.Suc(_module.__default.BitSet(n#0)), $Box(x#1_0_0));
            pop;
            assert {:id "id584"} Set#IsMember(_module.__default.BitSet(Mul(LitInt(2), n#0)), $Box(x#1_0_0))
               == Set#IsMember(_module.__default.Suc(_module.__default.BitSet(n#0)), $Box(x#1_0_0));
            assume false;
        }
        else
        {
            assume (forall x#1_0_1: int :: 
              { Set#IsMember(_module.__default.Suc(_module.__default.BitSet(n#0)), $Box(x#1_0_1)) } 
                { Set#IsMember(_module.__default.BitSet(Mul(2, n#0)), $Box(x#1_0_1)) } 
              LitInt(0) <= x#1_0_1 && Lit(true)
                 ==> Set#IsMember(_module.__default.BitSet(Mul(LitInt(2), n#0)), $Box(x#1_0_1))
                   == Set#IsMember(_module.__default.Suc(_module.__default.BitSet(n#0)), $Box(x#1_0_1)));
        }

        // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(275,5)
        if (*)
        {
            // Assume Fuel Constant
            havoc x#1_1_0;
            assume LitInt(0) <= x#1_1_0;
            assume true;
            assume {:id "id585"} true;
            if (*)
            {
                assert {:id "id586"} $Is(Mul(LitInt(2), n#0) + 1, Tclass._System.nat());
                ##n#1_1_0 := Mul(LitInt(2), n#0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), n#0) + 1);
                assert {:id "id587"} $Is(LitInt(0), Tclass._System.nat());
                ##n#1_1_1 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n#0);
                ##S#1_1_0 := _module.__default.BitSet(n#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_1_0, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), n#0) + 1)
                   && 
                  _module.__default.BitSet#canCall(n#0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
                assume {:id "id588"} Set#IsMember(_module.__default.BitSet(Mul(LitInt(2), n#0) + 1), $Box(x#1_1_0))
                   == Set#IsMember(Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), 
                      _module.__default.Suc(_module.__default.BitSet(n#0))), 
                    $Box(x#1_1_0));
                assume false;
            }

            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                assert {:id "id612"} $Is(Mul(LitInt(2), n#0) + 1, Tclass._System.nat());
                ##n#1_1_0_0 := Mul(LitInt(2), n#0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), n#0) + 1);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), n#0) + 1);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                assume {:id "id609"} $Is(Mul(LitInt(2), n#0) + 1, Tclass._System.nat());
                ##n#1_1_0_5_0 := Mul(LitInt(2), n#0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_5_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), n#0) + 1);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), n#0) + 1);
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                if (LitInt(0) <= x#1_1_0)
                {
                }

                if (LitInt(0) <= x#1_1_0 && x#1_1_0 < Mul(LitInt(2), n#0) + 1)
                {
                    ##k#1_1_0_5_0 := x#1_1_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_1_0_5_0, Tclass._System.nat(), $Heap);
                    assert {:id "id610"} $Is(Mul(LitInt(2), n#0) + 1, Tclass._System.nat());
                    ##n#1_1_0_5_1 := Mul(LitInt(2), n#0) + 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_1_0_5_1, Tclass._System.nat(), $Heap);
                    assume _module.__default.Bit#canCall(x#1_1_0, Mul(LitInt(2), n#0) + 1);
                }

                assume LitInt(0) <= x#1_1_0 && x#1_1_0 < Mul(LitInt(2), n#0) + 1
                   ==> _module.__default.Bit#canCall(x#1_1_0, Mul(LitInt(2), n#0) + 1);
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                assert {:id "id611"} {:subsumption 0} Set#IsMember(_module.__default.BitSet(Mul(LitInt(2), n#0) + 1), $Box(x#1_1_0))
                   == (
                    LitInt(0) <= x#1_1_0
                     && x#1_1_0 < Mul(LitInt(2), n#0) + 1
                     && _module.__default.Bit($LS($LS($LZ)), x#1_1_0, Mul(LitInt(2), n#0) + 1));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                if (LitInt(0) <= x#1_1_0)
                {
                }

                if (LitInt(0) <= x#1_1_0 && x#1_1_0 < Mul(LitInt(2), n#0) + 1)
                {
                    ##k#1_1_0_4_0 := x#1_1_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_1_0_4_0, Tclass._System.nat(), $Heap);
                    assume {:id "id602"} $Is(Mul(LitInt(2), n#0) + 1, Tclass._System.nat());
                    ##n#1_1_0_4_0 := Mul(LitInt(2), n#0) + 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_1_0_4_0, Tclass._System.nat(), $Heap);
                    assume _module.__default.Bit#canCall(x#1_1_0, Mul(LitInt(2), n#0) + 1);
                }

                assume LitInt(0) <= x#1_1_0 && x#1_1_0 < Mul(LitInt(2), n#0) + 1
                   ==> _module.__default.Bit#canCall(x#1_1_0, Mul(LitInt(2), n#0) + 1);
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(280,13)
                if (x#1_1_0 == LitInt(0))
                {
                    ##k#1_1_0_4_1 := x#1_1_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_1_0_4_1, Tclass._System.nat(), $Heap);
                    assert {:id "id603"} $Is(Mul(LitInt(2), n#0) + 1, Tclass._System.nat());
                    ##n#1_1_0_4_1 := Mul(LitInt(2), n#0) + 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_1_0_4_1, Tclass._System.nat(), $Heap);
                    assume _module.__default.Bit#canCall(x#1_1_0, Mul(LitInt(2), n#0) + 1);
                }

                assume x#1_1_0 == LitInt(0)
                   ==> _module.__default.Bit#canCall(x#1_1_0, Mul(LitInt(2), n#0) + 1);
                assert {:id "id604"} {:subsumption 0} x#1_1_0 == LitInt(0)
                   ==> 
                  _module.__default.Bit#canCall(x#1_1_0, Mul(LitInt(2), n#0) + 1)
                   ==> _module.__default.Bit($LS($LZ), x#1_1_0, Mul(LitInt(2), n#0) + 1)
                     || (x#1_1_0 == LitInt(0) ==> Mod(Mul(LitInt(2), n#0) + 1, LitInt(2)) == LitInt(1));
                assert {:id "id605"} {:subsumption 0} x#1_1_0 == LitInt(0)
                   ==> 
                  _module.__default.Bit#canCall(x#1_1_0, Mul(LitInt(2), n#0) + 1)
                   ==> _module.__default.Bit($LS($LZ), x#1_1_0, Mul(LitInt(2), n#0) + 1)
                     || (x#1_1_0 != LitInt(0)
                       ==> _module.__default.Bit($LS($LS($LZ)), x#1_1_0 - 1, Div(Mul(LitInt(2), n#0) + 1, LitInt(2))));
                assume {:id "id606"} x#1_1_0 == LitInt(0)
                   ==> _module.__default.Bit($LS($LZ), x#1_1_0, Mul(LitInt(2), n#0) + 1);
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                if (x#1_1_0 != LitInt(0))
                {
                    if (0 < x#1_1_0)
                    {
                    }

                    if (0 < x#1_1_0 && x#1_1_0 < Mul(LitInt(2), n#0) + 1)
                    {
                        ##k#1_1_0_4_2 := x#1_1_0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#1_1_0_4_2, Tclass._System.nat(), $Heap);
                        assert {:id "id607"} $Is(Mul(LitInt(2), n#0) + 1, Tclass._System.nat());
                        ##n#1_1_0_4_2 := Mul(LitInt(2), n#0) + 1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##n#1_1_0_4_2, Tclass._System.nat(), $Heap);
                        assume _module.__default.Bit#canCall(x#1_1_0, Mul(LitInt(2), n#0) + 1);
                    }
                }

                assume x#1_1_0 != LitInt(0)
                   ==> 
                  0 < x#1_1_0 && x#1_1_0 < Mul(LitInt(2), n#0) + 1
                   ==> _module.__default.Bit#canCall(x#1_1_0, Mul(LitInt(2), n#0) + 1);
                // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                assert {:id "id608"} {:subsumption 0} (
                    LitInt(0) <= x#1_1_0
                     && x#1_1_0 < Mul(LitInt(2), n#0) + 1
                     && _module.__default.Bit($LS($LS($LZ)), x#1_1_0, Mul(LitInt(2), n#0) + 1))
                   == (x#1_1_0 == LitInt(0)
                     || (
                      0 < x#1_1_0
                       && x#1_1_0 < Mul(LitInt(2), n#0) + 1
                       && _module.__default.Bit($LS($LS($LZ)), x#1_1_0, Mul(LitInt(2), n#0) + 1)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                if (x#1_1_0 != LitInt(0))
                {
                    if (0 < x#1_1_0)
                    {
                    }

                    if (0 < x#1_1_0 && x#1_1_0 < Mul(LitInt(2), n#0) + 1)
                    {
                        ##k#1_1_0_3_0 := x#1_1_0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#1_1_0_3_0, Tclass._System.nat(), $Heap);
                        assume {:id "id597"} $Is(Mul(LitInt(2), n#0) + 1, Tclass._System.nat());
                        ##n#1_1_0_3_0 := Mul(LitInt(2), n#0) + 1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##n#1_1_0_3_0, Tclass._System.nat(), $Heap);
                        assume _module.__default.Bit#canCall(x#1_1_0, Mul(LitInt(2), n#0) + 1);
                    }
                }

                assume x#1_1_0 != LitInt(0)
                   ==> 
                  0 < x#1_1_0 && x#1_1_0 < Mul(LitInt(2), n#0) + 1
                   ==> _module.__default.Bit#canCall(x#1_1_0, Mul(LitInt(2), n#0) + 1);
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(282,13)
                assert {:id "id598"} {:subsumption 0} LitInt(2) != 0;
                assume true;
                assert {:id "id599"} Div(Mul(LitInt(2), n#0) + 1, LitInt(2)) == n#0;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                if (x#1_1_0 != LitInt(0))
                {
                    if (0 < x#1_1_0)
                    {
                    }

                    if (0 < x#1_1_0 && x#1_1_0 < Mul(LitInt(2), n#0) + 1)
                    {
                        assert {:id "id600"} $Is(x#1_1_0 - 1, Tclass._System.nat());
                        ##k#1_1_0_3_1 := x#1_1_0 - 1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#1_1_0_3_1, Tclass._System.nat(), $Heap);
                        ##n#1_1_0_3_1 := n#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##n#1_1_0_3_1, Tclass._System.nat(), $Heap);
                        assume _module.__default.Bit#canCall(x#1_1_0 - 1, n#0);
                    }
                }

                assume x#1_1_0 != LitInt(0)
                   ==> 
                  0 < x#1_1_0 && x#1_1_0 < Mul(LitInt(2), n#0) + 1
                   ==> _module.__default.Bit#canCall(x#1_1_0 - 1, n#0);
                // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                assert {:id "id601"} {:subsumption 0} (x#1_1_0 == LitInt(0)
                     || (
                      0 < x#1_1_0
                       && x#1_1_0 < Mul(LitInt(2), n#0) + 1
                       && _module.__default.Bit($LS($LS($LZ)), x#1_1_0, Mul(LitInt(2), n#0) + 1)))
                   == (x#1_1_0 == LitInt(0)
                     || (
                      0 < x#1_1_0
                       && x#1_1_0 < Mul(LitInt(2), n#0) + 1
                       && _module.__default.Bit($LS($LS($LZ)), x#1_1_0 - 1, n#0)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                if (x#1_1_0 != LitInt(0))
                {
                    if (0 < x#1_1_0)
                    {
                    }

                    if (0 < x#1_1_0 && x#1_1_0 < Mul(LitInt(2), n#0) + 1)
                    {
                        assume {:id "id592"} $Is(x#1_1_0 - 1, Tclass._System.nat());
                        ##k#1_1_0_2_0 := x#1_1_0 - 1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#1_1_0_2_0, Tclass._System.nat(), $Heap);
                        ##n#1_1_0_2_0 := n#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##n#1_1_0_2_0, Tclass._System.nat(), $Heap);
                        assume _module.__default.Bit#canCall(x#1_1_0 - 1, n#0);
                    }
                }

                assume x#1_1_0 != LitInt(0)
                   ==> 
                  0 < x#1_1_0 && x#1_1_0 < Mul(LitInt(2), n#0) + 1
                   ==> _module.__default.Bit#canCall(x#1_1_0 - 1, n#0);
                // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(284,13)
                if (0 < x#1_1_0)
                {
                    assert {:id "id593"} $Is(x#1_1_0 - 1, Tclass._System.nat());
                    ##k#1_1_0_2_1 := x#1_1_0 - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_1_0_2_1, Tclass._System.nat(), $Heap);
                    ##n#1_1_0_2_1 := n#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_1_0_2_1, Tclass._System.nat(), $Heap);
                    assume _module.__default.Bit#canCall(x#1_1_0 - 1, n#0);
                }

                assume 0 < x#1_1_0 ==> _module.__default.Bit#canCall(x#1_1_0 - 1, n#0);
                if (0 < x#1_1_0 && _module.__default.Bit($LS($LZ), x#1_1_0 - 1, n#0))
                {
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(284,46)
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    assert {:id "id594"} $Is(x#1_1_0 - 1, Tclass._System.nat());
                    i##1_1_0_2_0_0 := x#1_1_0 - 1;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    n##1_1_0_2_0_0 := n#0;
                    call {:id "id595"} Call$$_module.__default.BitSize(i##1_1_0_2_0_0, n##1_1_0_2_0_0);
                    // TrCallStmt: After ProcessCallStmt
                }
                else
                {
                }

                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                if (x#1_1_0 != LitInt(0))
                {
                    ##n#1_1_0_2_2 := n#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_1_0_2_2, Tclass._System.nat(), $Heap);
                    assume _module.__default.BitSet#canCall(n#0);
                }

                assume x#1_1_0 != LitInt(0) ==> _module.__default.BitSet#canCall(n#0);
                // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                assert {:id "id596"} {:subsumption 0} (x#1_1_0 == LitInt(0)
                     || (
                      0 < x#1_1_0
                       && x#1_1_0 < Mul(LitInt(2), n#0) + 1
                       && _module.__default.Bit($LS($LS($LZ)), x#1_1_0 - 1, n#0)))
                   == (x#1_1_0 == LitInt(0)
                     || Set#IsMember(_module.__default.BitSet(n#0), $Box(x#1_1_0 - 1)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                if (x#1_1_0 != LitInt(0))
                {
                    ##n#1_1_0_1_0 := n#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_1_0_1_0, Tclass._System.nat(), $Heap);
                    assume _module.__default.BitSet#canCall(n#0);
                }

                assume x#1_1_0 != LitInt(0) ==> _module.__default.BitSet#canCall(n#0);
                // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                if (x#1_1_0 != LitInt(0))
                {
                    ##n#1_1_0_1_1 := n#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_1_0_1_1, Tclass._System.nat(), $Heap);
                    assume _module.__default.BitSet#canCall(n#0);
                    ##S#1_1_0_1_0 := _module.__default.BitSet(n#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#1_1_0_1_0, TSet(Tclass._System.nat()), $Heap);
                    assume _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
                }

                assume x#1_1_0 != LitInt(0)
                   ==> _module.__default.BitSet#canCall(n#0)
                     && _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
                // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                assert {:id "id591"} {:subsumption 0} (x#1_1_0 == LitInt(0)
                     || Set#IsMember(_module.__default.BitSet(n#0), $Box(x#1_1_0 - 1)))
                   == (x#1_1_0 == LitInt(0)
                     || Set#IsMember(_module.__default.Suc(_module.__default.BitSet(n#0)), $Box(x#1_1_0)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                if (x#1_1_0 != LitInt(0))
                {
                    ##n#1_1_0_0_0 := n#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_1_0_0_0, Tclass._System.nat(), $Heap);
                    assume _module.__default.BitSet#canCall(n#0);
                    ##S#1_1_0_0_0 := _module.__default.BitSet(n#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#1_1_0_0_0, TSet(Tclass._System.nat()), $Heap);
                    assume _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
                }

                assume x#1_1_0 != LitInt(0)
                   ==> _module.__default.BitSet#canCall(n#0)
                     && _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
                // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                assert {:id "id589"} $Is(LitInt(0), Tclass._System.nat());
                ##n#1_1_0_0_1 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_0_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n#0);
                ##S#1_1_0_0_1 := _module.__default.BitSet(n#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_1_0_0_1, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
                assume _module.__default.BitSet#canCall(n#0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(n#0));
                // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(276,7)
                assert {:id "id590"} {:subsumption 0} (x#1_1_0 == LitInt(0)
                     || Set#IsMember(_module.__default.Suc(_module.__default.BitSet(n#0)), $Box(x#1_1_0)))
                   == Set#IsMember(Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), 
                      _module.__default.Suc(_module.__default.BitSet(n#0))), 
                    $Box(x#1_1_0));
                assume false;
            }

            assume {:id "id613"} Set#IsMember(_module.__default.BitSet(Mul(LitInt(2), n#0) + 1), $Box(x#1_1_0))
               == Set#IsMember(Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), 
                  _module.__default.Suc(_module.__default.BitSet(n#0))), 
                $Box(x#1_1_0));
            assert {:id "id614"} Set#IsMember(_module.__default.BitSet(Mul(LitInt(2), n#0) + 1), $Box(x#1_1_0))
               == Set#IsMember(Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), 
                  _module.__default.Suc(_module.__default.BitSet(n#0))), 
                $Box(x#1_1_0));
            assume false;
        }
        else
        {
            assume (forall x#1_1_1: int :: 
              { Set#IsMember(Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(0)), 
                    _module.__default.Suc(_module.__default.BitSet(n#0))), 
                  $Box(x#1_1_1)) } 
              LitInt(0) <= x#1_1_1 && Lit(true)
                 ==> Set#IsMember(_module.__default.BitSet(Mul(LitInt(2), n#0) + 1), $Box(x#1_1_1))
                   == Set#IsMember(Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), 
                      _module.__default.Suc(_module.__default.BitSet(n#0))), 
                    $Box(x#1_1_1)));
        }
    }
}



procedure {:verboseName "INDUCTION_EVEN_ODD (well-formedness)"} CheckWellFormed$$_module.__default.INDUCTION__EVEN__ODD(P#0: HandleType
       where $Is(P#0, 
          Tclass._System.___hTotalFunc2(Tclass._System.nat(), Tclass._System.nat(), TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc2(Tclass._System.nat(), Tclass._System.nat(), TBool), 
          $Heap), 
    A#0: int where LitInt(0) <= A#0, 
    B#0: int where LitInt(0) <= B#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "INDUCTION_EVEN_ODD (well-formedness)"} CheckWellFormed$$_module.__default.INDUCTION__EVEN__ODD(P#0: HandleType, A#0: int, B#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var b#0: int;
  var a#2: int;
  var b#2: int;
  var a#4: int;
  var b#4: int;
  var a#6: int;
  var b#6: int;


    // AddMethodImpl: INDUCTION_EVEN_ODD, CheckWellFormed$$_module.__default.INDUCTION__EVEN__ODD
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id615"} $Is(LitInt(0), Tclass._System.nat());
    assert {:id "id616"} $Is(LitInt(0), Tclass._System.nat());
    assume {:id "id617"} $Unbox(Apply2(Tclass._System.nat(), 
        Tclass._System.nat(), 
        TBool, 
        $Heap, 
        P#0, 
        $Box(LitInt(0)), 
        $Box(LitInt(0)))): bool;
    havoc a#0;
    havoc b#0;
    assume LitInt(0) <= a#0 && LitInt(0) <= b#0;
    if (*)
    {
        assume {:id "id618"} $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(a#0), 
            $Box(b#0))): bool;
        assert {:id "id619"} $Is(Mul(LitInt(2), a#0), Tclass._System.nat());
        assert {:id "id620"} $Is(Mul(LitInt(2), b#0), Tclass._System.nat());
        assume {:id "id621"} $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(Mul(LitInt(2), a#0)), 
            $Box(Mul(LitInt(2), b#0)))): bool;
    }
    else
    {
        assume {:id "id622"} $Unbox(Apply2(Tclass._System.nat(), 
              Tclass._System.nat(), 
              TBool, 
              $Heap, 
              P#0, 
              $Box(a#0), 
              $Box(b#0))): bool
           ==> $Unbox(Apply2(Tclass._System.nat(), 
              Tclass._System.nat(), 
              TBool, 
              $Heap, 
              P#0, 
              $Box(Mul(LitInt(2), a#0)), 
              $Box(Mul(LitInt(2), b#0)))): bool;
    }

    assume {:id "id623"} (forall a#1: int, b#1: int :: 
      { Mul(2, b#1), Mul(2, a#1) } 
      LitInt(0) <= a#1 && LitInt(0) <= b#1
         ==> 
        $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(a#1), 
            $Box(b#1))): bool
         ==> $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(Mul(LitInt(2), a#1)), 
            $Box(Mul(LitInt(2), b#1)))): bool);
    havoc a#2;
    havoc b#2;
    assume LitInt(0) <= a#2 && LitInt(0) <= b#2;
    if (*)
    {
        assume {:id "id624"} $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(a#2), 
            $Box(b#2))): bool;
        assert {:id "id625"} $Is(Mul(LitInt(2), a#2), Tclass._System.nat());
        assert {:id "id626"} $Is(Mul(LitInt(2), b#2) + 1, Tclass._System.nat());
        assume {:id "id627"} $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(Mul(LitInt(2), a#2)), 
            $Box(Mul(LitInt(2), b#2) + 1))): bool;
    }
    else
    {
        assume {:id "id628"} $Unbox(Apply2(Tclass._System.nat(), 
              Tclass._System.nat(), 
              TBool, 
              $Heap, 
              P#0, 
              $Box(a#2), 
              $Box(b#2))): bool
           ==> $Unbox(Apply2(Tclass._System.nat(), 
              Tclass._System.nat(), 
              TBool, 
              $Heap, 
              P#0, 
              $Box(Mul(LitInt(2), a#2)), 
              $Box(Mul(LitInt(2), b#2) + 1))): bool;
    }

    assume {:id "id629"} (forall a#3: int, b#3: int, _t#0#0: int :: 
      { $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(Mul(2, a#3)), 
            $Box(_t#0#0))): bool, $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(a#3), 
            $Box(b#3))): bool } 
        { $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(Mul(2, a#3)), 
            $Box(_t#0#0))): bool, Mul(2, b#3) } 
      LitInt(0) <= a#3 && LitInt(0) <= b#3 && _t#0#0 == Mul(LitInt(2), b#3) + 1
         ==> 
        $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(a#3), 
            $Box(b#3))): bool
         ==> $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(Mul(LitInt(2), a#3)), 
            $Box(_t#0#0))): bool);
    havoc a#4;
    havoc b#4;
    assume LitInt(0) <= a#4 && LitInt(0) <= b#4;
    if (*)
    {
        assume {:id "id630"} $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(a#4), 
            $Box(b#4))): bool;
        assert {:id "id631"} $Is(Mul(LitInt(2), a#4) + 1, Tclass._System.nat());
        assert {:id "id632"} $Is(Mul(LitInt(2), b#4), Tclass._System.nat());
        assume {:id "id633"} $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(Mul(LitInt(2), a#4) + 1), 
            $Box(Mul(LitInt(2), b#4)))): bool;
    }
    else
    {
        assume {:id "id634"} $Unbox(Apply2(Tclass._System.nat(), 
              Tclass._System.nat(), 
              TBool, 
              $Heap, 
              P#0, 
              $Box(a#4), 
              $Box(b#4))): bool
           ==> $Unbox(Apply2(Tclass._System.nat(), 
              Tclass._System.nat(), 
              TBool, 
              $Heap, 
              P#0, 
              $Box(Mul(LitInt(2), a#4) + 1), 
              $Box(Mul(LitInt(2), b#4)))): bool;
    }

    assume {:id "id635"} (forall a#5: int, b#5: int, _t#0#1: int :: 
      { $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(_t#0#1), 
            $Box(Mul(2, b#5)))): bool, $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(a#5), 
            $Box(b#5))): bool } 
        { $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(_t#0#1), 
            $Box(Mul(2, b#5)))): bool, Mul(2, a#5) } 
      LitInt(0) <= a#5 && LitInt(0) <= b#5 && _t#0#1 == Mul(LitInt(2), a#5) + 1
         ==> 
        $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(a#5), 
            $Box(b#5))): bool
         ==> $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(_t#0#1), 
            $Box(Mul(LitInt(2), b#5)))): bool);
    havoc a#6;
    havoc b#6;
    assume LitInt(0) <= a#6 && LitInt(0) <= b#6;
    if (*)
    {
        assume {:id "id636"} $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(a#6), 
            $Box(b#6))): bool;
        assert {:id "id637"} $Is(Mul(LitInt(2), a#6) + 1, Tclass._System.nat());
        assert {:id "id638"} $Is(Mul(LitInt(2), b#6) + 1, Tclass._System.nat());
        assume {:id "id639"} $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(Mul(LitInt(2), a#6) + 1), 
            $Box(Mul(LitInt(2), b#6) + 1))): bool;
    }
    else
    {
        assume {:id "id640"} $Unbox(Apply2(Tclass._System.nat(), 
              Tclass._System.nat(), 
              TBool, 
              $Heap, 
              P#0, 
              $Box(a#6), 
              $Box(b#6))): bool
           ==> $Unbox(Apply2(Tclass._System.nat(), 
              Tclass._System.nat(), 
              TBool, 
              $Heap, 
              P#0, 
              $Box(Mul(LitInt(2), a#6) + 1), 
              $Box(Mul(LitInt(2), b#6) + 1))): bool;
    }

    assume {:id "id641"} (forall a#7: int, b#7: int, _t#0#2: int, _t#1#0: int :: 
      { $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(_t#0#2), 
            $Box(_t#1#0))): bool, $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(a#7), 
            $Box(b#7))): bool } 
        { $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(_t#0#2), 
            $Box(_t#1#0))): bool, Mul(2, a#7), Mul(2, b#7) } 
      LitInt(0) <= a#7
           && LitInt(0) <= b#7
           && 
          _t#1#0 == Mul(LitInt(2), b#7) + 1
           && _t#0#2 == Mul(LitInt(2), a#7) + 1
         ==> 
        $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(a#7), 
            $Box(b#7))): bool
         ==> $Unbox(Apply2(Tclass._System.nat(), 
            Tclass._System.nat(), 
            TBool, 
            $Heap, 
            P#0, 
            $Box(_t#0#2), 
            $Box(_t#1#0))): bool);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assume {:id "id642"} $Unbox(Apply2(Tclass._System.nat(), 
        Tclass._System.nat(), 
        TBool, 
        $Heap, 
        P#0, 
        $Box(A#0), 
        $Box(B#0))): bool;
}



procedure {:verboseName "INDUCTION_EVEN_ODD (call)"} Call$$_module.__default.INDUCTION__EVEN__ODD(P#0: HandleType
       where $Is(P#0, 
          Tclass._System.___hTotalFunc2(Tclass._System.nat(), Tclass._System.nat(), TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc2(Tclass._System.nat(), Tclass._System.nat(), TBool), 
          $Heap), 
    A#0: int where LitInt(0) <= A#0, 
    B#0: int where LitInt(0) <= B#0);
  // user-defined preconditions
  requires {:id "id643"} $Unbox(Apply2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      TBool, 
      $Heap, 
      P#0, 
      $Box(LitInt(0)), 
      $Box(LitInt(0)))): bool;
  requires {:id "id644"} (forall a#1: int, b#1: int :: 
    { Mul(2, b#1), Mul(2, a#1) } 
    LitInt(0) <= a#1 && LitInt(0) <= b#1
       ==> 
      $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(a#1), 
          $Box(b#1))): bool
       ==> $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(Mul(LitInt(2), a#1)), 
          $Box(Mul(LitInt(2), b#1)))): bool);
  requires {:id "id645"} (forall a#3: int, b#3: int, _t#0#0: int :: 
    { $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(Mul(2, a#3)), 
          $Box(_t#0#0))): bool, $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(a#3), 
          $Box(b#3))): bool } 
      { $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(Mul(2, a#3)), 
          $Box(_t#0#0))): bool, Mul(2, b#3) } 
    LitInt(0) <= a#3 && LitInt(0) <= b#3 && _t#0#0 == Mul(LitInt(2), b#3) + 1
       ==> 
      $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(a#3), 
          $Box(b#3))): bool
       ==> $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(Mul(LitInt(2), a#3)), 
          $Box(_t#0#0))): bool);
  requires {:id "id646"} (forall a#5: int, b#5: int, _t#0#1: int :: 
    { $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(_t#0#1), 
          $Box(Mul(2, b#5)))): bool, $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(a#5), 
          $Box(b#5))): bool } 
      { $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(_t#0#1), 
          $Box(Mul(2, b#5)))): bool, Mul(2, a#5) } 
    LitInt(0) <= a#5 && LitInt(0) <= b#5 && _t#0#1 == Mul(LitInt(2), a#5) + 1
       ==> 
      $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(a#5), 
          $Box(b#5))): bool
       ==> $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(_t#0#1), 
          $Box(Mul(LitInt(2), b#5)))): bool);
  requires {:id "id647"} (forall a#7: int, b#7: int, _t#0#2: int, _t#1#0: int :: 
    { $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(_t#0#2), 
          $Box(_t#1#0))): bool, $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(a#7), 
          $Box(b#7))): bool } 
      { $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(_t#0#2), 
          $Box(_t#1#0))): bool, Mul(2, a#7), Mul(2, b#7) } 
    LitInt(0) <= a#7
         && LitInt(0) <= b#7
         && 
        _t#1#0 == Mul(LitInt(2), b#7) + 1
         && _t#0#2 == Mul(LitInt(2), a#7) + 1
       ==> 
      $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(a#7), 
          $Box(b#7))): bool
       ==> $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(_t#0#2), 
          $Box(_t#1#0))): bool);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id648"} $Unbox(Apply2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      TBool, 
      $Heap, 
      P#0, 
      $Box(A#0), 
      $Box(B#0))): bool;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "INDUCTION_EVEN_ODD (correctness)"} Impl$$_module.__default.INDUCTION__EVEN__ODD(P#0: HandleType
       where $Is(P#0, 
          Tclass._System.___hTotalFunc2(Tclass._System.nat(), Tclass._System.nat(), TBool))
         && $IsAlloc(P#0, 
          Tclass._System.___hTotalFunc2(Tclass._System.nat(), Tclass._System.nat(), TBool), 
          $Heap), 
    A#0: int where LitInt(0) <= A#0, 
    B#0: int where LitInt(0) <= B#0)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id649"} $Unbox(Apply2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      TBool, 
      $Heap, 
      P#0, 
      $Box(LitInt(0)), 
      $Box(LitInt(0)))): bool;
  requires {:id "id650"} (forall a#1: int, b#1: int :: 
    { Mul(2, b#1), Mul(2, a#1) } 
    LitInt(0) <= a#1 && LitInt(0) <= b#1
       ==> 
      $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(a#1), 
          $Box(b#1))): bool
       ==> $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(Mul(LitInt(2), a#1)), 
          $Box(Mul(LitInt(2), b#1)))): bool);
  requires {:id "id651"} (forall a#3: int, b#3: int, _t#0#0: int :: 
    { $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(Mul(2, a#3)), 
          $Box(_t#0#0))): bool, $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(a#3), 
          $Box(b#3))): bool } 
      { $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(Mul(2, a#3)), 
          $Box(_t#0#0))): bool, Mul(2, b#3) } 
    LitInt(0) <= a#3 && LitInt(0) <= b#3 && _t#0#0 == Mul(LitInt(2), b#3) + 1
       ==> 
      $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(a#3), 
          $Box(b#3))): bool
       ==> $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(Mul(LitInt(2), a#3)), 
          $Box(_t#0#0))): bool);
  requires {:id "id652"} (forall a#5: int, b#5: int, _t#0#1: int :: 
    { $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(_t#0#1), 
          $Box(Mul(2, b#5)))): bool, $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(a#5), 
          $Box(b#5))): bool } 
      { $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(_t#0#1), 
          $Box(Mul(2, b#5)))): bool, Mul(2, a#5) } 
    LitInt(0) <= a#5 && LitInt(0) <= b#5 && _t#0#1 == Mul(LitInt(2), a#5) + 1
       ==> 
      $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(a#5), 
          $Box(b#5))): bool
       ==> $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(_t#0#1), 
          $Box(Mul(LitInt(2), b#5)))): bool);
  requires {:id "id653"} (forall a#7: int, b#7: int, _t#0#2: int, _t#1#0: int :: 
    { $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(_t#0#2), 
          $Box(_t#1#0))): bool, $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(a#7), 
          $Box(b#7))): bool } 
      { $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(_t#0#2), 
          $Box(_t#1#0))): bool, Mul(2, a#7), Mul(2, b#7) } 
    LitInt(0) <= a#7
         && LitInt(0) <= b#7
         && 
        _t#1#0 == Mul(LitInt(2), b#7) + 1
         && _t#0#2 == Mul(LitInt(2), a#7) + 1
       ==> 
      $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(a#7), 
          $Box(b#7))): bool
       ==> $Unbox(Apply2(Tclass._System.nat(), 
          Tclass._System.nat(), 
          TBool, 
          $Heap, 
          P#0, 
          $Box(_t#0#2), 
          $Box(_t#1#0))): bool);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id654"} $Unbox(Apply2(Tclass._System.nat(), 
      Tclass._System.nat(), 
      TBool, 
      $Heap, 
      P#0, 
      $Box(A#0), 
      $Box(B#0))): bool;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "INDUCTION_EVEN_ODD (correctness)"} Impl$$_module.__default.INDUCTION__EVEN__ODD(P#0: HandleType, A#0: int, B#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#1_0: int;
  var b#1_0: int;
  var $rhs#1_0: int;
  var $rhs#1_1: int;
  var P##1_0: HandleType;
  var A##1_0: int;
  var B##1_0: int;

    // AddMethodImpl: INDUCTION_EVEN_ODD, Impl$$_module.__default.INDUCTION__EVEN__ODD
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(306,3)
    if (A#0 == LitInt(0))
    {
    }

    assume true;
    if (A#0 == LitInt(0) && B#0 == LitInt(0))
    {
    }
    else
    {
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(308,14)
        assume true;
        assume true;
        assert {:id "id655"} LitInt(2) != 0;
        assume true;
        $rhs#1_0 := Div(A#0, LitInt(2));
        assert {:id "id657"} LitInt(2) != 0;
        assume true;
        $rhs#1_1 := Div(B#0, LitInt(2));
        a#1_0 := $rhs#1_0;
        b#1_0 := $rhs#1_1;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(309,5)
        if (A#0 != Mul(LitInt(2), a#1_0))
        {
        }

        assume true;
        assert {:id "id661"} A#0 == Mul(LitInt(2), a#1_0) || A#0 == Mul(LitInt(2), a#1_0) + 1;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(310,5)
        if (B#0 != Mul(LitInt(2), b#1_0))
        {
        }

        assume true;
        assert {:id "id662"} B#0 == Mul(LitInt(2), b#1_0) || B#0 == Mul(LitInt(2), b#1_0) + 1;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(311,23)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        P##1_0 := P#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id663"} $Is(a#1_0, Tclass._System.nat());
        A##1_0 := a#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id664"} $Is(b#1_0, Tclass._System.nat());
        B##1_0 := b#1_0;
        assert {:id "id665"} 0 <= A#0 || A##1_0 == A#0;
        assert {:id "id666"} 0 <= B#0 || A##1_0 < A#0 || B##1_0 == B#0;
        assert {:id "id667"} A##1_0 < A#0 || (A##1_0 == A#0 && B##1_0 < B#0);
        call {:id "id668"} Call$$_module.__default.INDUCTION__EVEN__ODD(P##1_0, A##1_0, B##1_0);
        // TrCallStmt: After ProcessCallStmt
    }
}



procedure {:verboseName "Lucas_Theorem (well-formedness)"} CheckWellFormed$$_module.__default.Lucas__Theorem(m#0: int where LitInt(0) <= m#0, n#0: int where LitInt(0) <= n#0);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Lucas_Theorem (call)"} Call$$_module.__default.Lucas__Theorem(m#0: int where LitInt(0) <= m#0, n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.BitSet#canCall(m#0)
     && _module.__default.BitSet#canCall(n#0)
     && 
    _module.__default.binom#canCall(n#0, m#0)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
  ensures {:id "id670"} Set#Subset(_module.__default.BitSet(m#0), _module.__default.BitSet(n#0))
     <==> !_module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, n#0, m#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lucas_Theorem (correctness)"} Impl$$_module.__default.Lucas__Theorem(m#0: int where LitInt(0) <= m#0, n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.BitSet#canCall(m#0)
     && _module.__default.BitSet#canCall(n#0)
     && 
    _module.__default.binom#canCall(n#0, m#0)
     && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
  ensures {:id "id671"} Set#Subset(_module.__default.BitSet(m#0), _module.__default.BitSet(n#0))
     <==> !_module.__default.EVEN(reveal__module._default.EVEN, 
      _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, n#0, m#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lucas_Theorem (correctness)"} Impl$$_module.__default.Lucas__Theorem(m#0: int, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##a#0_0: int;
  var ##b#0_0: int;
  var ##n#0_0: int;
  var ##a#0_1: int;
  var ##b#0_1: int;
  var ##n#0_1: int;
  var m'#1_0: int;
  var n'#1_0: int;
  var $rhs#1_0: int;
  var $rhs#1_1: int;
  var ##S#1_0_0_0_0: Set;
  var ##n#1_0_0_0_0: int;
  var ##S#1_0_0_0_1: Set;
  var ##n#1_0_0_0_1: int;
  var n##1_0_0_0_0: int;
  var n##1_0_0_0_1: int;
  var ##n#1_0_0_0_2: int;
  var ##n#1_0_0_0_3: int;
  var ##S#1_0_0_1_0: Set;
  var ##n#1_0_0_1_0: int;
  var ##S#1_0_0_1_1: Set;
  var ##n#1_0_0_1_1: int;
  var S##1_0_0_1_0: Set;
  var ##n#1_0_0_1_2: int;
  var S##1_0_0_1_1: Set;
  var ##n#1_0_0_1_3: int;
  var ##S#1_0_0_1_2: Set;
  var ##n#1_0_0_1_4: int;
  var ##S#1_0_0_1_3: Set;
  var ##n#1_0_0_1_5: int;
  var ##n#1_0_0_2_0: int;
  var ##n#1_0_0_2_1: int;
  var S##1_0_0_2_0: Set;
  var ##n#1_0_0_2_2: int;
  var S##1_0_0_2_1: Set;
  var ##n#1_0_0_2_3: int;
  var ##S#1_0_0_2_0: Set;
  var ##n#1_0_0_2_4: int;
  var ##S#1_0_0_2_1: Set;
  var ##n#1_0_0_2_5: int;
  var ##n#1_0_0_3_0: int;
  var ##a#1_0_0_3_0: int;
  var ##b#1_0_0_3_0: int;
  var m##1_0_0_3_0: int;
  var n##1_0_0_3_0: int;
  var ##n#1_0_0_3_1: int;
  var ##n#1_0_0_3_2: int;
  var ##n#1_0_0_4_0: int;
  var ##a#1_0_0_4_0: int;
  var ##b#1_0_0_4_0: int;
  var a##1_0_0_4_0: int;
  var b##1_0_0_4_0: int;
  var ##n#1_0_0_4_1: int;
  var ##a#1_0_0_4_1: int;
  var ##b#1_0_0_4_1: int;
  var ##n#1_0_0_0: int;
  var ##a#1_0_0_0: int;
  var ##b#1_0_0_0: int;
  var ##n#1_1_0_0_0: int;
  var ##n#1_1_0_0_1: int;
  var ##n#1_1_0_0_2: int;
  var ##n#1_1_0_0_3: int;
  var ##n#1_1_0_1_0: int;
  var ##a#1_1_0_1_0: int;
  var ##b#1_1_0_1_0: int;
  var a##1_1_0_1_0: int;
  var b##1_1_0_1_0: int;
  var ##n#1_1_0_0: int;
  var ##a#1_1_0_0: int;
  var ##b#1_1_0_0: int;
  var ##S#1_2_0_0_0: Set;
  var ##n#1_2_0_0_0: int;
  var ##S#1_2_0_0_1: Set;
  var ##n#1_2_0_0_1: int;
  var n##1_2_0_0_0: int;
  var n##1_2_0_0_1: int;
  var ##n#1_2_0_0_2: int;
  var ##n#1_2_0_0_3: int;
  var ##S#1_2_0_1_0: Set;
  var ##n#1_2_0_1_0: int;
  var ##S#1_2_0_1_1: Set;
  var ##n#1_2_0_1_1: int;
  var S##1_2_0_1_0: Set;
  var ##n#1_2_0_1_2: int;
  var ##S#1_2_0_1_2: Set;
  var ##n#1_2_0_1_3: int;
  var ##S#1_2_0_1_3: Set;
  var ##n#1_2_0_1_4: int;
  var ##n#1_2_0_2_0: int;
  var ##n#1_2_0_2_1: int;
  var S##1_2_0_2_0: Set;
  var ##n#1_2_0_2_2: int;
  var S##1_2_0_2_1: Set;
  var ##n#1_2_0_2_3: int;
  var ##S#1_2_0_2_0: Set;
  var ##n#1_2_0_2_4: int;
  var ##S#1_2_0_2_1: Set;
  var ##n#1_2_0_2_5: int;
  var ##n#1_2_0_3_0: int;
  var ##a#1_2_0_3_0: int;
  var ##b#1_2_0_3_0: int;
  var m##1_2_0_3_0: int;
  var n##1_2_0_3_0: int;
  var ##n#1_2_0_3_1: int;
  var ##n#1_2_0_3_2: int;
  var ##n#1_2_0_4_0: int;
  var ##a#1_2_0_4_0: int;
  var ##b#1_2_0_4_0: int;
  var a##1_2_0_4_0: int;
  var b##1_2_0_4_0: int;
  var ##n#1_2_0_4_1: int;
  var ##a#1_2_0_4_1: int;
  var ##b#1_2_0_4_1: int;
  var ##n#1_2_0_0: int;
  var ##a#1_2_0_0: int;
  var ##b#1_2_0_0: int;
  var ##S#1_3_0_0_0: Set;
  var ##n#1_3_0_0_0: int;
  var ##S#1_3_0_0_1: Set;
  var ##n#1_3_0_0_1: int;
  var n##1_3_0_0_0: int;
  var n##1_3_0_0_1: int;
  var ##n#1_3_0_0_2: int;
  var ##n#1_3_0_0_3: int;
  var ##n#1_3_0_1_0: int;
  var ##n#1_3_0_1_1: int;
  var S##1_3_0_1_0: Set;
  var ##n#1_3_0_1_2: int;
  var S##1_3_0_1_1: Set;
  var ##n#1_3_0_1_3: int;
  var ##S#1_3_0_1_0: Set;
  var ##n#1_3_0_1_4: int;
  var ##S#1_3_0_1_1: Set;
  var ##n#1_3_0_1_5: int;
  var ##n#1_3_0_2_0: int;
  var ##a#1_3_0_2_0: int;
  var ##b#1_3_0_2_0: int;
  var m##1_3_0_2_0: int;
  var n##1_3_0_2_0: int;
  var ##n#1_3_0_2_1: int;
  var ##n#1_3_0_2_2: int;
  var ##n#1_3_0_3_0: int;
  var ##a#1_3_0_3_0: int;
  var ##b#1_3_0_3_0: int;
  var a##1_3_0_3_0: int;
  var b##1_3_0_3_0: int;
  var ##n#1_3_0_3_1: int;
  var ##a#1_3_0_3_1: int;
  var ##b#1_3_0_3_1: int;
  var ##n#1_3_0_0: int;
  var ##a#1_3_0_0: int;
  var ##b#1_3_0_0: int;

    // AddMethodImpl: Lucas_Theorem, Impl$$_module.__default.Lucas__Theorem
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#m0#0: int, $ih#n0#0: int :: 
      { _module.__default.binom($LS($LZ), reveal__module._default.binom, $ih#n0#0, $ih#m0#0) } 
        { _module.__default.BitSet($ih#n0#0), _module.__default.BitSet($ih#m0#0) } 
      LitInt(0) <= $ih#m0#0
           && LitInt(0) <= $ih#n0#0
           && Lit(true)
           && ((0 <= $ih#m0#0 && $ih#m0#0 < m#0)
             || ($ih#m0#0 == m#0 && 0 <= $ih#n0#0 && $ih#n0#0 < n#0))
         ==> (Set#Subset(_module.__default.BitSet($ih#m0#0), _module.__default.BitSet($ih#n0#0))
           <==> !_module.__default.EVEN(reveal__module._default.EVEN, 
            _module.__default.binom($LS($LZ), reveal__module._default.binom, $ih#n0#0, $ih#m0#0))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(318,3)
    if (m#0 == LitInt(0))
    {
    }

    assume true;
    if (m#0 == LitInt(0) && n#0 == LitInt(0))
    {
        if (*)
        {
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(320,7)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(320,14)
            // TrCallStmt: Before ProcessCallStmt
            call {:id "id672"} Call$$_module.__default.reveal__binom();
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(320,23)
            // TrCallStmt: Before ProcessCallStmt
            call {:id "id673"} Call$$_module.__default.reveal__EVEN();
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(319,5)
            ##a#0_0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0_0, Tclass._System.nat(), $Heap);
            ##b#0_0 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0_0, Tclass._System.nat(), $Heap);
            assume _module.__default.binom#canCall(n#0, m#0);
            if (_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0)
               == LitInt(1))
            {
                assert {:id "id674"} $Is(LitInt(1), Tclass._System.nat());
                ##n#0_0 := LitInt(1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(LitInt(1));
            }

            assume _module.__default.binom#canCall(n#0, m#0)
               && (_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0)
                   == LitInt(1)
                 ==> _module.__default.EVEN#canCall(LitInt(1)));
            assert {:id "id675"} {:subsumption 0} _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, n#0, m#0)
               == LitInt(1);
            assert {:id "id676"} {:subsumption 0} !_module.__default.EVEN(reveal__module._default.EVEN, LitInt(1));
            assume {:id "id677"} _module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0)
                 == LitInt(1)
               && !_module.__default.EVEN(reveal__module._default.EVEN, LitInt(1));
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(319,5)
        ##a#0_1 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_1, Tclass._System.nat(), $Heap);
        ##b#0_1 := m#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_1, Tclass._System.nat(), $Heap);
        assume _module.__default.binom#canCall(n#0, m#0);
        if (_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0)
           == LitInt(1))
        {
            assume {:id "id678"} $Is(LitInt(1), Tclass._System.nat());
            ##n#0_1 := LitInt(1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_1, Tclass._System.nat(), $Heap);
            assume _module.__default.EVEN#canCall(LitInt(1));
        }

        assume _module.__default.binom#canCall(n#0, m#0)
           && (_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0)
               == LitInt(1)
             ==> _module.__default.EVEN#canCall(LitInt(1)));
        assume true;
        assume true;
        assume {:id "id679"} _module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0)
             == LitInt(1)
           && !_module.__default.EVEN(reveal__module._default.EVEN, LitInt(1));
    }
    else
    {
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(323,16)
        assume true;
        assume true;
        assert {:id "id680"} LitInt(2) != 0;
        assume true;
        $rhs#1_0 := Div(m#0, LitInt(2));
        assert {:id "id682"} LitInt(2) != 0;
        assume true;
        $rhs#1_1 := Div(n#0, LitInt(2));
        m'#1_0 := $rhs#1_0;
        n'#1_0 := $rhs#1_1;
        // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(324,5)
        if (*)
        {
            if (m#0 == Mul(LitInt(2), m'#1_0))
            {
            }

            assume true;
            assume {:id "id793"} m#0 == Mul(LitInt(2), m'#1_0) && n#0 == Mul(LitInt(2), n'#1_0);
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                ##a#1_3_0_0 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_3_0_0, Tclass._System.nat(), $Heap);
                ##b#1_3_0_0 := m#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_3_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(n#0, m#0);
                ##n#1_3_0_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                assume _module.__default.binom#canCall(n#0, m#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                ##a#1_3_0_3_0 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_3_0_3_0, Tclass._System.nat(), $Heap);
                ##b#1_3_0_3_0 := m#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_3_0_3_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(n#0, m#0);
                ##n#1_3_0_3_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_3_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                assume _module.__default.binom#canCall(n#0, m#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(328,27)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id823"} $Is(n'#1_0, Tclass._System.nat());
                a##1_3_0_3_0 := n'#1_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id824"} $Is(m'#1_0, Tclass._System.nat());
                b##1_3_0_3_0 := m'#1_0;
                call {:id "id825"} Call$$_module.__default.Lucas__Binary(a##1_3_0_3_0, b##1_3_0_3_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                assert {:id "id826"} $Is(n'#1_0, Tclass._System.nat());
                ##a#1_3_0_3_1 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_3_0_3_1, Tclass._System.nat(), $Heap);
                assert {:id "id827"} $Is(m'#1_0, Tclass._System.nat());
                ##b#1_3_0_3_1 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_3_0_3_1, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(n'#1_0, m'#1_0);
                ##n#1_3_0_3_1 := _module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_3_1, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0));
                assume _module.__default.binom#canCall(n'#1_0, m'#1_0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0));
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                assert {:id "id828"} {:subsumption 0} !_module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, n#0, m#0))
                   == !_module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, n'#1_0, m'#1_0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                assume {:id "id812"} $Is(n'#1_0, Tclass._System.nat());
                ##a#1_3_0_2_0 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_3_0_2_0, Tclass._System.nat(), $Heap);
                assume {:id "id813"} $Is(m'#1_0, Tclass._System.nat());
                ##b#1_3_0_2_0 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_3_0_2_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(n'#1_0, m'#1_0);
                ##n#1_3_0_2_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_2_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0));
                assume _module.__default.binom#canCall(n'#1_0, m'#1_0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(330,28)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id814"} $Is(m'#1_0, Tclass._System.nat());
                m##1_3_0_2_0 := m'#1_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id815"} $Is(n'#1_0, Tclass._System.nat());
                n##1_3_0_2_0 := n'#1_0;
                assert {:id "id816"} 0 <= m#0 || m##1_3_0_2_0 == m#0;
                assert {:id "id817"} 0 <= n#0 || m##1_3_0_2_0 < m#0 || n##1_3_0_2_0 == n#0;
                assert {:id "id818"} m##1_3_0_2_0 < m#0 || (m##1_3_0_2_0 == m#0 && n##1_3_0_2_0 < n#0);
                call {:id "id819"} Call$$_module.__default.Lucas__Theorem(m##1_3_0_2_0, n##1_3_0_2_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                assert {:id "id820"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_3_0_2_1 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_2_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                assert {:id "id821"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_3_0_2_2 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_2_2, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.BitSet#canCall(n'#1_0);
                // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                assert {:id "id822"} {:subsumption 0} !_module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, n'#1_0, m'#1_0))
                   == Set#Subset(_module.__default.BitSet(m'#1_0), _module.__default.BitSet(n'#1_0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                assume {:id "id803"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_3_0_1_0 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_1_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                assume {:id "id804"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_3_0_1_1 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_1_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.BitSet#canCall(n'#1_0);
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(332,26)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id805"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_3_0_1_2 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_1_2, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                assume _module.__default.BitSet#canCall(m'#1_0);
                // ProcessCallStmt: CheckSubrange
                S##1_3_0_1_0 := _module.__default.BitSet(m'#1_0);
                call {:id "id806"} Call$$_module.__default.SucElements(S##1_3_0_1_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(332,51)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id807"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_3_0_1_3 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_1_3, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                assume _module.__default.BitSet#canCall(n'#1_0);
                // ProcessCallStmt: CheckSubrange
                S##1_3_0_1_1 := _module.__default.BitSet(n'#1_0);
                call {:id "id808"} Call$$_module.__default.SucElements(S##1_3_0_1_1);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                assert {:id "id809"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_3_0_1_4 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_1_4, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                ##S#1_3_0_1_0 := _module.__default.BitSet(m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_3_0_1_0, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0));
                assert {:id "id810"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_3_0_1_5 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_1_5, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                ##S#1_3_0_1_1 := _module.__default.BitSet(n'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_3_0_1_1, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0))
                   && 
                  _module.__default.BitSet#canCall(n'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                assert {:id "id811"} {:subsumption 0} Set#Subset(_module.__default.BitSet(m'#1_0), _module.__default.BitSet(n'#1_0))
                   == Set#Subset(_module.__default.Suc(_module.__default.BitSet(m'#1_0)), 
                    _module.__default.Suc(_module.__default.BitSet(n'#1_0)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                assume {:id "id794"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_3_0_0_0 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                ##S#1_3_0_0_0 := _module.__default.BitSet(m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_3_0_0_0, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0));
                assume {:id "id795"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_3_0_0_1 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_0_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                ##S#1_3_0_0_1 := _module.__default.BitSet(n'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_3_0_0_1, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0))
                   && 
                  _module.__default.BitSet#canCall(n'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(334,29)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id796"} $Is(m'#1_0, Tclass._System.nat());
                n##1_3_0_0_0 := m'#1_0;
                call {:id "id797"} Call$$_module.__default.BitSet__Clauses(n##1_3_0_0_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(334,49)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id798"} $Is(n'#1_0, Tclass._System.nat());
                n##1_3_0_0_1 := n'#1_0;
                call {:id "id799"} Call$$_module.__default.BitSet__Clauses(n##1_3_0_0_1);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                assert {:id "id800"} $Is(Mul(LitInt(2), m'#1_0), Tclass._System.nat());
                ##n#1_3_0_0_2 := Mul(LitInt(2), m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_0_2, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), m'#1_0));
                assert {:id "id801"} $Is(Mul(LitInt(2), n'#1_0), Tclass._System.nat());
                ##n#1_3_0_0_3 := Mul(LitInt(2), n'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_3_0_0_3, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), n'#1_0));
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), m'#1_0))
                   && _module.__default.BitSet#canCall(Mul(LitInt(2), n'#1_0));
                // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(326,9)
                assert {:id "id802"} {:subsumption 0} Set#Subset(_module.__default.Suc(_module.__default.BitSet(m'#1_0)), 
                    _module.__default.Suc(_module.__default.BitSet(n'#1_0)))
                   == Set#Subset(_module.__default.BitSet(Mul(LitInt(2), m'#1_0)), 
                    _module.__default.BitSet(Mul(LitInt(2), n'#1_0)));
                assume false;
            }

            assume {:id "id829"} !_module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0))
               == Set#Subset(_module.__default.BitSet(Mul(LitInt(2), m'#1_0)), 
                _module.__default.BitSet(Mul(LitInt(2), n'#1_0)));
        }
        else if (*)
        {
            if (m#0 == Mul(LitInt(2), m'#1_0))
            {
            }

            assume true;
            assume {:id "id747"} m#0 == Mul(LitInt(2), m'#1_0) && n#0 == Mul(LitInt(2), n'#1_0) + 1;
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                ##a#1_2_0_0 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_2_0_0, Tclass._System.nat(), $Heap);
                ##b#1_2_0_0 := m#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_2_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(n#0, m#0);
                ##n#1_2_0_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                assume _module.__default.binom#canCall(n#0, m#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                ##a#1_2_0_4_0 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_2_0_4_0, Tclass._System.nat(), $Heap);
                ##b#1_2_0_4_0 := m#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_2_0_4_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(n#0, m#0);
                ##n#1_2_0_4_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_4_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                assume _module.__default.binom#canCall(n#0, m#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(340,27)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id786"} $Is(n'#1_0, Tclass._System.nat());
                a##1_2_0_4_0 := n'#1_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id787"} $Is(m'#1_0, Tclass._System.nat());
                b##1_2_0_4_0 := m'#1_0;
                call {:id "id788"} Call$$_module.__default.Lucas__Binary(a##1_2_0_4_0, b##1_2_0_4_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                assert {:id "id789"} $Is(n'#1_0, Tclass._System.nat());
                ##a#1_2_0_4_1 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_2_0_4_1, Tclass._System.nat(), $Heap);
                assert {:id "id790"} $Is(m'#1_0, Tclass._System.nat());
                ##b#1_2_0_4_1 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_2_0_4_1, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(n'#1_0, m'#1_0);
                ##n#1_2_0_4_1 := _module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_4_1, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0));
                assume _module.__default.binom#canCall(n'#1_0, m'#1_0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0));
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                assert {:id "id791"} {:subsumption 0} !_module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, n#0, m#0))
                   == !_module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, n'#1_0, m'#1_0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                assume {:id "id775"} $Is(n'#1_0, Tclass._System.nat());
                ##a#1_2_0_3_0 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_2_0_3_0, Tclass._System.nat(), $Heap);
                assume {:id "id776"} $Is(m'#1_0, Tclass._System.nat());
                ##b#1_2_0_3_0 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_2_0_3_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(n'#1_0, m'#1_0);
                ##n#1_2_0_3_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_3_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0));
                assume _module.__default.binom#canCall(n'#1_0, m'#1_0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(342,28)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id777"} $Is(m'#1_0, Tclass._System.nat());
                m##1_2_0_3_0 := m'#1_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id778"} $Is(n'#1_0, Tclass._System.nat());
                n##1_2_0_3_0 := n'#1_0;
                assert {:id "id779"} 0 <= m#0 || m##1_2_0_3_0 == m#0;
                assert {:id "id780"} 0 <= n#0 || m##1_2_0_3_0 < m#0 || n##1_2_0_3_0 == n#0;
                assert {:id "id781"} m##1_2_0_3_0 < m#0 || (m##1_2_0_3_0 == m#0 && n##1_2_0_3_0 < n#0);
                call {:id "id782"} Call$$_module.__default.Lucas__Theorem(m##1_2_0_3_0, n##1_2_0_3_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                assert {:id "id783"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_2_0_3_1 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_3_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                assert {:id "id784"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_2_0_3_2 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_3_2, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.BitSet#canCall(n'#1_0);
                // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                assert {:id "id785"} {:subsumption 0} !_module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, n'#1_0, m'#1_0))
                   == Set#Subset(_module.__default.BitSet(m'#1_0), _module.__default.BitSet(n'#1_0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                assume {:id "id766"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_2_0_2_0 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_2_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                assume {:id "id767"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_2_0_2_1 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_2_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.BitSet#canCall(n'#1_0);
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(344,26)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id768"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_2_0_2_2 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_2_2, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                assume _module.__default.BitSet#canCall(m'#1_0);
                // ProcessCallStmt: CheckSubrange
                S##1_2_0_2_0 := _module.__default.BitSet(m'#1_0);
                call {:id "id769"} Call$$_module.__default.SucElements(S##1_2_0_2_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(344,51)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id770"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_2_0_2_3 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_2_3, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                assume _module.__default.BitSet#canCall(n'#1_0);
                // ProcessCallStmt: CheckSubrange
                S##1_2_0_2_1 := _module.__default.BitSet(n'#1_0);
                call {:id "id771"} Call$$_module.__default.SucElements(S##1_2_0_2_1);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                assert {:id "id772"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_2_0_2_4 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_2_4, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                ##S#1_2_0_2_0 := _module.__default.BitSet(m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_2_0_2_0, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0));
                assert {:id "id773"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_2_0_2_5 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_2_5, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                ##S#1_2_0_2_1 := _module.__default.BitSet(n'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_2_0_2_1, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0))
                   && 
                  _module.__default.BitSet#canCall(n'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                assert {:id "id774"} {:subsumption 0} Set#Subset(_module.__default.BitSet(m'#1_0), _module.__default.BitSet(n'#1_0))
                   == Set#Subset(_module.__default.Suc(_module.__default.BitSet(m'#1_0)), 
                    _module.__default.Suc(_module.__default.BitSet(n'#1_0)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                assume {:id "id758"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_2_0_1_0 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_1_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                ##S#1_2_0_1_0 := _module.__default.BitSet(m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_2_0_1_0, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0));
                assume {:id "id759"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_2_0_1_1 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_1_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                ##S#1_2_0_1_1 := _module.__default.BitSet(n'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_2_0_1_1, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0))
                   && 
                  _module.__default.BitSet#canCall(n'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(346,32)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id760"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_2_0_1_2 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_1_2, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                assume _module.__default.BitSet#canCall(m'#1_0);
                // ProcessCallStmt: CheckSubrange
                S##1_2_0_1_0 := _module.__default.BitSet(m'#1_0);
                call {:id "id761"} Call$$_module.__default.ZeroNotInImageSuc(S##1_2_0_1_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                assert {:id "id762"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_2_0_1_3 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_1_3, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                ##S#1_2_0_1_2 := _module.__default.BitSet(m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_2_0_1_2, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0));
                assert {:id "id763"} $Is(LitInt(0), Tclass._System.nat());
                assert {:id "id764"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_2_0_1_4 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_1_4, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                ##S#1_2_0_1_3 := _module.__default.BitSet(n'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_2_0_1_3, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0))
                   && 
                  _module.__default.BitSet#canCall(n'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                assert {:id "id765"} {:subsumption 0} Set#Subset(_module.__default.Suc(_module.__default.BitSet(m'#1_0)), 
                    _module.__default.Suc(_module.__default.BitSet(n'#1_0)))
                   == Set#Subset(_module.__default.Suc(_module.__default.BitSet(m'#1_0)), 
                    Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), 
                      _module.__default.Suc(_module.__default.BitSet(n'#1_0))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                assume {:id "id748"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_2_0_0_0 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                ##S#1_2_0_0_0 := _module.__default.BitSet(m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_2_0_0_0, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0));
                assume {:id "id749"} $Is(LitInt(0), Tclass._System.nat());
                assume {:id "id750"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_2_0_0_1 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_0_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                ##S#1_2_0_0_1 := _module.__default.BitSet(n'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_2_0_0_1, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0))
                   && 
                  _module.__default.BitSet#canCall(n'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(348,29)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id751"} $Is(m'#1_0, Tclass._System.nat());
                n##1_2_0_0_0 := m'#1_0;
                call {:id "id752"} Call$$_module.__default.BitSet__Clauses(n##1_2_0_0_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(348,49)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id753"} $Is(n'#1_0, Tclass._System.nat());
                n##1_2_0_0_1 := n'#1_0;
                call {:id "id754"} Call$$_module.__default.BitSet__Clauses(n##1_2_0_0_1);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                assert {:id "id755"} $Is(Mul(LitInt(2), m'#1_0), Tclass._System.nat());
                ##n#1_2_0_0_2 := Mul(LitInt(2), m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_0_2, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), m'#1_0));
                assert {:id "id756"} $Is(Mul(LitInt(2), n'#1_0) + 1, Tclass._System.nat());
                ##n#1_2_0_0_3 := Mul(LitInt(2), n'#1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_2_0_0_3, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), n'#1_0) + 1);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), m'#1_0))
                   && _module.__default.BitSet#canCall(Mul(LitInt(2), n'#1_0) + 1);
                // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(338,9)
                assert {:id "id757"} {:subsumption 0} Set#Subset(_module.__default.Suc(_module.__default.BitSet(m'#1_0)), 
                    Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), 
                      _module.__default.Suc(_module.__default.BitSet(n'#1_0))))
                   == Set#Subset(_module.__default.BitSet(Mul(LitInt(2), m'#1_0)), 
                    _module.__default.BitSet(Mul(LitInt(2), n'#1_0) + 1));
                assume false;
            }

            assume {:id "id792"} !_module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0))
               == Set#Subset(_module.__default.BitSet(Mul(LitInt(2), m'#1_0)), 
                _module.__default.BitSet(Mul(LitInt(2), n'#1_0) + 1));
        }
        else if (*)
        {
            if (m#0 == Mul(LitInt(2), m'#1_0) + 1)
            {
            }

            assume true;
            assume {:id "id737"} m#0 == Mul(LitInt(2), m'#1_0) + 1 && n#0 == Mul(LitInt(2), n'#1_0);
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(352,9)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(352,9)
                ##a#1_1_0_0 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_0, Tclass._System.nat(), $Heap);
                ##b#1_1_0_0 := m#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(n#0, m#0);
                ##n#1_1_0_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                assume _module.__default.binom#canCall(n#0, m#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(352,9)
                ##a#1_1_0_1_0 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_1_0_1_0, Tclass._System.nat(), $Heap);
                ##b#1_1_0_1_0 := m#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_1_0_1_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(n#0, m#0);
                ##n#1_1_0_1_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_1_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                assume _module.__default.binom#canCall(n#0, m#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(352,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(354,27)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id742"} $Is(n'#1_0, Tclass._System.nat());
                a##1_1_0_1_0 := n'#1_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id743"} $Is(m'#1_0, Tclass._System.nat());
                b##1_1_0_1_0 := m'#1_0;
                call {:id "id744"} Call$$_module.__default.Lucas__Binary(a##1_1_0_1_0, b##1_1_0_1_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(352,9)
                assume true;
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(352,9)
                assert {:id "id745"} {:subsumption 0} !_module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, n#0, m#0))
                   == Lit(false);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(352,9)
                assume true;
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(352,9)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(356,15)
                ##n#1_1_0_0_0 := m#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m#0);
                if (Set#IsMember(_module.__default.BitSet(m#0), $Box(LitInt(0))))
                {
                    ##n#1_1_0_0_1 := n#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#1_1_0_0_1, Tclass._System.nat(), $Heap);
                    assume _module.__default.BitSet#canCall(n#0);
                }

                assume _module.__default.BitSet#canCall(m#0)
                   && (Set#IsMember(_module.__default.BitSet(m#0), $Box(LitInt(0)))
                     ==> _module.__default.BitSet#canCall(n#0));
                assert {:id "id738"} {:subsumption 0} Set#IsMember(_module.__default.BitSet(m#0), $Box(LitInt(0)));
                assert {:id "id739"} {:subsumption 0} !Set#IsMember(_module.__default.BitSet(n#0), $Box(LitInt(0)));
                assume {:id "id740"} Set#IsMember(_module.__default.BitSet(m#0), $Box(LitInt(0)))
                   && !Set#IsMember(_module.__default.BitSet(n#0), $Box(LitInt(0)));
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(352,9)
                ##n#1_1_0_0_2 := m#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_0_2, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m#0);
                ##n#1_1_0_0_3 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_1_0_0_3, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n#0);
                assume _module.__default.BitSet#canCall(m#0) && _module.__default.BitSet#canCall(n#0);
                // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(352,9)
                assert {:id "id741"} {:subsumption 0} Lit(false)
                   == Set#Subset(_module.__default.BitSet(m#0), _module.__default.BitSet(n#0));
                assume false;
            }

            assume {:id "id746"} !_module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0))
               == Set#Subset(_module.__default.BitSet(m#0), _module.__default.BitSet(n#0));
        }
        else if (*)
        {
            if (m#0 == Mul(LitInt(2), m'#1_0) + 1)
            {
            }

            assume true;
            assume {:id "id687"} m#0 == Mul(LitInt(2), m'#1_0) + 1 && n#0 == Mul(LitInt(2), n'#1_0) + 1;
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                ##a#1_0_0_0 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_0_0_0, Tclass._System.nat(), $Heap);
                ##b#1_0_0_0 := m#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_0_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(n#0, m#0);
                ##n#1_0_0_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                assume _module.__default.binom#canCall(n#0, m#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                ##a#1_0_0_4_0 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_0_0_4_0, Tclass._System.nat(), $Heap);
                ##b#1_0_0_4_0 := m#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_0_0_4_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(n#0, m#0);
                ##n#1_0_0_4_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_4_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                assume _module.__default.binom#canCall(n#0, m#0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0));
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(362,27)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id730"} $Is(n'#1_0, Tclass._System.nat());
                a##1_0_0_4_0 := n'#1_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id731"} $Is(m'#1_0, Tclass._System.nat());
                b##1_0_0_4_0 := m'#1_0;
                call {:id "id732"} Call$$_module.__default.Lucas__Binary(a##1_0_0_4_0, b##1_0_0_4_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                assert {:id "id733"} $Is(n'#1_0, Tclass._System.nat());
                ##a#1_0_0_4_1 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_0_0_4_1, Tclass._System.nat(), $Heap);
                assert {:id "id734"} $Is(m'#1_0, Tclass._System.nat());
                ##b#1_0_0_4_1 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_0_0_4_1, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(n'#1_0, m'#1_0);
                ##n#1_0_0_4_1 := _module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_4_1, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0));
                assume _module.__default.binom#canCall(n'#1_0, m'#1_0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0));
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                assert {:id "id735"} {:subsumption 0} !_module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, n#0, m#0))
                   == !_module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, n'#1_0, m'#1_0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                assume {:id "id719"} $Is(n'#1_0, Tclass._System.nat());
                ##a#1_0_0_3_0 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_0_0_3_0, Tclass._System.nat(), $Heap);
                assume {:id "id720"} $Is(m'#1_0, Tclass._System.nat());
                ##b#1_0_0_3_0 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_0_0_3_0, Tclass._System.nat(), $Heap);
                assume _module.__default.binom#canCall(n'#1_0, m'#1_0);
                ##n#1_0_0_3_0 := _module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_3_0, Tclass._System.nat(), $Heap);
                assume _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0));
                assume _module.__default.binom#canCall(n'#1_0, m'#1_0)
                   && _module.__default.EVEN#canCall(_module.__default.binom($LS($LZ), reveal__module._default.binom, n'#1_0, m'#1_0));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(364,28)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id721"} $Is(m'#1_0, Tclass._System.nat());
                m##1_0_0_3_0 := m'#1_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id722"} $Is(n'#1_0, Tclass._System.nat());
                n##1_0_0_3_0 := n'#1_0;
                assert {:id "id723"} 0 <= m#0 || m##1_0_0_3_0 == m#0;
                assert {:id "id724"} 0 <= n#0 || m##1_0_0_3_0 < m#0 || n##1_0_0_3_0 == n#0;
                assert {:id "id725"} m##1_0_0_3_0 < m#0 || (m##1_0_0_3_0 == m#0 && n##1_0_0_3_0 < n#0);
                call {:id "id726"} Call$$_module.__default.Lucas__Theorem(m##1_0_0_3_0, n##1_0_0_3_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                assert {:id "id727"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_0_0_3_1 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_3_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                assert {:id "id728"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_0_0_3_2 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_3_2, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.BitSet#canCall(n'#1_0);
                // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                assert {:id "id729"} {:subsumption 0} !_module.__default.EVEN(reveal__module._default.EVEN, 
                    _module.__default.binom($LS($LS($LZ)), reveal__module._default.binom, n'#1_0, m'#1_0))
                   == Set#Subset(_module.__default.BitSet(m'#1_0), _module.__default.BitSet(n'#1_0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                assume {:id "id710"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_0_0_2_0 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_2_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                assume {:id "id711"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_0_0_2_1 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_2_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.BitSet#canCall(n'#1_0);
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(366,26)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id712"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_0_0_2_2 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_2_2, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                assume _module.__default.BitSet#canCall(m'#1_0);
                // ProcessCallStmt: CheckSubrange
                S##1_0_0_2_0 := _module.__default.BitSet(m'#1_0);
                call {:id "id713"} Call$$_module.__default.SucElements(S##1_0_0_2_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(366,51)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id714"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_0_0_2_3 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_2_3, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                assume _module.__default.BitSet#canCall(n'#1_0);
                // ProcessCallStmt: CheckSubrange
                S##1_0_0_2_1 := _module.__default.BitSet(n'#1_0);
                call {:id "id715"} Call$$_module.__default.SucElements(S##1_0_0_2_1);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                assert {:id "id716"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_0_0_2_4 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_2_4, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                ##S#1_0_0_2_0 := _module.__default.BitSet(m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_0_0_2_0, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0));
                assert {:id "id717"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_0_0_2_5 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_2_5, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                ##S#1_0_0_2_1 := _module.__default.BitSet(n'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_0_0_2_1, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0))
                   && 
                  _module.__default.BitSet#canCall(n'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                assert {:id "id718"} {:subsumption 0} Set#Subset(_module.__default.BitSet(m'#1_0), _module.__default.BitSet(n'#1_0))
                   == Set#Subset(_module.__default.Suc(_module.__default.BitSet(m'#1_0)), 
                    _module.__default.Suc(_module.__default.BitSet(n'#1_0)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                assume {:id "id699"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_0_0_1_0 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_1_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                ##S#1_0_0_1_0 := _module.__default.BitSet(m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_0_0_1_0, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0));
                assume {:id "id700"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_0_0_1_1 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_1_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                ##S#1_0_0_1_1 := _module.__default.BitSet(n'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_0_0_1_1, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0))
                   && 
                  _module.__default.BitSet#canCall(n'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(368,32)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id701"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_0_0_1_2 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_1_2, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                assume _module.__default.BitSet#canCall(m'#1_0);
                // ProcessCallStmt: CheckSubrange
                S##1_0_0_1_0 := _module.__default.BitSet(m'#1_0);
                call {:id "id702"} Call$$_module.__default.ZeroNotInImageSuc(S##1_0_0_1_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(368,63)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id703"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_0_0_1_3 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_1_3, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                assume _module.__default.BitSet#canCall(n'#1_0);
                // ProcessCallStmt: CheckSubrange
                S##1_0_0_1_1 := _module.__default.BitSet(n'#1_0);
                call {:id "id704"} Call$$_module.__default.ZeroNotInImageSuc(S##1_0_0_1_1);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                assert {:id "id705"} $Is(LitInt(0), Tclass._System.nat());
                assert {:id "id706"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_0_0_1_4 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_1_4, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                ##S#1_0_0_1_2 := _module.__default.BitSet(m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_0_0_1_2, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0));
                assert {:id "id707"} $Is(LitInt(0), Tclass._System.nat());
                assert {:id "id708"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_0_0_1_5 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_1_5, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                ##S#1_0_0_1_3 := _module.__default.BitSet(n'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_0_0_1_3, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0))
                   && 
                  _module.__default.BitSet#canCall(n'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                assert {:id "id709"} {:subsumption 0} Set#Subset(_module.__default.Suc(_module.__default.BitSet(m'#1_0)), 
                    _module.__default.Suc(_module.__default.BitSet(n'#1_0)))
                   == Set#Subset(Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), 
                      _module.__default.Suc(_module.__default.BitSet(m'#1_0))), 
                    Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), 
                      _module.__default.Suc(_module.__default.BitSet(n'#1_0))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                assume {:id "id688"} $Is(LitInt(0), Tclass._System.nat());
                assume {:id "id689"} $Is(m'#1_0, Tclass._System.nat());
                ##n#1_0_0_0_0 := m'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_0_0, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(m'#1_0);
                ##S#1_0_0_0_0 := _module.__default.BitSet(m'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_0_0_0_0, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0));
                assume {:id "id690"} $Is(LitInt(0), Tclass._System.nat());
                assume {:id "id691"} $Is(n'#1_0, Tclass._System.nat());
                ##n#1_0_0_0_1 := n'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_0_1, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(n'#1_0);
                ##S#1_0_0_0_1 := _module.__default.BitSet(n'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_0_0_0_1, TSet(Tclass._System.nat()), $Heap);
                assume _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                assume _module.__default.BitSet#canCall(m'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(m'#1_0))
                   && 
                  _module.__default.BitSet#canCall(n'#1_0)
                   && _module.__default.Suc#canCall(_module.__default.BitSet(n'#1_0));
                // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(370,29)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id692"} $Is(m'#1_0, Tclass._System.nat());
                n##1_0_0_0_0 := m'#1_0;
                call {:id "id693"} Call$$_module.__default.BitSet__Clauses(n##1_0_0_0_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(370,49)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id694"} $Is(n'#1_0, Tclass._System.nat());
                n##1_0_0_0_1 := n'#1_0;
                call {:id "id695"} Call$$_module.__default.BitSet__Clauses(n##1_0_0_0_1);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                assert {:id "id696"} $Is(Mul(LitInt(2), m'#1_0) + 1, Tclass._System.nat());
                ##n#1_0_0_0_2 := Mul(LitInt(2), m'#1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_0_2, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), m'#1_0) + 1);
                assert {:id "id697"} $Is(Mul(LitInt(2), n'#1_0) + 1, Tclass._System.nat());
                ##n#1_0_0_0_3 := Mul(LitInt(2), n'#1_0) + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1_0_0_0_3, Tclass._System.nat(), $Heap);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), n'#1_0) + 1);
                assume _module.__default.BitSet#canCall(Mul(LitInt(2), m'#1_0) + 1)
                   && _module.__default.BitSet#canCall(Mul(LitInt(2), n'#1_0) + 1);
                // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/Lucas-up.dfy(360,9)
                assert {:id "id698"} {:subsumption 0} Set#Subset(Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), 
                      _module.__default.Suc(_module.__default.BitSet(m'#1_0))), 
                    Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), 
                      _module.__default.Suc(_module.__default.BitSet(n'#1_0))))
                   == Set#Subset(_module.__default.BitSet(Mul(LitInt(2), m'#1_0) + 1), 
                    _module.__default.BitSet(Mul(LitInt(2), n'#1_0) + 1));
                assume false;
            }

            assume {:id "id736"} !_module.__default.EVEN(reveal__module._default.EVEN, 
                _module.__default.binom($LS($LZ), reveal__module._default.binom, n#0, m#0))
               == Set#Subset(_module.__default.BitSet(Mul(LitInt(2), m'#1_0) + 1), 
                _module.__default.BitSet(Mul(LitInt(2), n'#1_0) + 1));
        }
        else
        {
            assume true;
            assume true;
            assume true;
            assume true;
            assume !
              (m#0 == Mul(LitInt(2), m'#1_0)
               && n#0 == Mul(LitInt(2), n'#1_0))
               && !
              (m#0 == Mul(LitInt(2), m'#1_0)
               && n#0 == Mul(LitInt(2), n'#1_0) + 1)
               && !
              (m#0 == Mul(LitInt(2), m'#1_0) + 1
               && n#0 == Mul(LitInt(2), n'#1_0))
               && !
              (m#0 == Mul(LitInt(2), m'#1_0) + 1
               && n#0 == Mul(LitInt(2), n'#1_0) + 1);
            assert {:id "id686"} false;
        }
    }
}



procedure {:verboseName "reveal_EVEN (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.reveal__EVEN();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_EVEN (call)"} {:verify false} Call$$_module.__default.reveal__EVEN();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module._default.EVEN;



procedure {:verboseName "reveal_binom (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.reveal__binom();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_binom (call)"} {:verify false} Call$$_module.__default.reveal__binom();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module._default.binom;



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
