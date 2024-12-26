// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy

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

const unique class._module.__default: ClassName;

// function declaration for _module._default.Apply
function _module.__default.Apply(_module._default.Apply$T: Ty, f#0: DatatypeType, argument#0: Box) : Box
uses {
// consequence axiom for _module.__default.Apply
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.Apply$T: Ty, f#0: DatatypeType, argument#0: Box :: 
    { _module.__default.Apply(_module._default.Apply$T, f#0, argument#0) } 
    _module.__default.Apply#canCall(_module._default.Apply$T, f#0, argument#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(f#0, Tclass._module.FunctionHandle(_module._default.Apply$T))
           && $IsBox(argument#0, _module._default.Apply$T))
       ==> $IsBox(_module.__default.Apply(_module._default.Apply$T, f#0, argument#0), 
        _module._default.Apply$T));
// alloc consequence axiom for _module.__default.Apply
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.Apply$T: Ty, f#0: DatatypeType, argument#0: Box :: 
    { $IsAllocBox(_module.__default.Apply(_module._default.Apply$T, f#0, argument#0), 
        _module._default.Apply$T, 
        $Heap) } 
    (_module.__default.Apply#canCall(_module._default.Apply$T, f#0, argument#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(f#0, Tclass._module.FunctionHandle(_module._default.Apply$T))
             && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.Apply$T), $Heap)
             && 
            $IsBox(argument#0, _module._default.Apply$T)
             && $IsAllocBox(argument#0, _module._default.Apply$T, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.__default.Apply(_module._default.Apply$T, f#0, argument#0), 
        _module._default.Apply$T, 
        $Heap));
}

function _module.__default.Apply#canCall(_module._default.Apply$T: Ty, f#0: DatatypeType, argument#0: Box) : bool;

function Tclass._module.FunctionHandle(Ty) : Ty;

const unique Tagclass._module.FunctionHandle: TyTag;

// Tclass._module.FunctionHandle Tag
axiom (forall _module.FunctionHandle$T: Ty :: 
  { Tclass._module.FunctionHandle(_module.FunctionHandle$T) } 
  Tag(Tclass._module.FunctionHandle(_module.FunctionHandle$T))
       == Tagclass._module.FunctionHandle
     && TagFamily(Tclass._module.FunctionHandle(_module.FunctionHandle$T))
       == tytagFamily$FunctionHandle);

function Tclass._module.FunctionHandle_0(Ty) : Ty;

// Tclass._module.FunctionHandle injectivity 0
axiom (forall _module.FunctionHandle$T: Ty :: 
  { Tclass._module.FunctionHandle(_module.FunctionHandle$T) } 
  Tclass._module.FunctionHandle_0(Tclass._module.FunctionHandle(_module.FunctionHandle$T))
     == _module.FunctionHandle$T);

// Box/unbox axiom for Tclass._module.FunctionHandle
axiom (forall _module.FunctionHandle$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.FunctionHandle(_module.FunctionHandle$T)) } 
  $IsBox(bx, Tclass._module.FunctionHandle(_module.FunctionHandle$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._module.FunctionHandle(_module.FunctionHandle$T)));

function _module.__default.Apply#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.__default.Apply
axiom (forall _module._default.Apply$T: Ty, f#0: DatatypeType, argument#0: Box :: 
  { _module.__default.Apply#requires(_module._default.Apply$T, f#0, argument#0) } 
  $Is(f#0, Tclass._module.FunctionHandle(_module._default.Apply$T))
       && $IsBox(argument#0, _module._default.Apply$T)
     ==> _module.__default.Apply#requires(_module._default.Apply$T, f#0, argument#0)
       == true);

procedure {:verboseName "Apply (well-formedness)"} CheckWellformed$$_module.__default.Apply(_module._default.Apply$T: Ty, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.Apply$T)), 
    argument#0: Box where $IsBox(argument#0, _module._default.Apply$T));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.After
function _module.__default.After(_module._default.After$_T0: Ty, f#0: DatatypeType, g#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.After
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.After$_T0: Ty, f#0: DatatypeType, g#0: DatatypeType :: 
    { _module.__default.After(_module._default.After$_T0, f#0, g#0) } 
    _module.__default.After#canCall(_module._default.After$_T0, f#0, g#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(f#0, Tclass._module.FunctionHandle(_module._default.After$_T0))
           && $Is(g#0, Tclass._module.FunctionHandle(_module._default.After$_T0)))
       ==> $Is(_module.__default.After(_module._default.After$_T0, f#0, g#0), 
        Tclass._module.FunctionHandle(_module._default.After$_T0)));
// alloc consequence axiom for _module.__default.After
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.After$_T0: Ty, 
      f#0: DatatypeType, 
      g#0: DatatypeType :: 
    { $IsAlloc(_module.__default.After(_module._default.After$_T0, f#0, g#0), 
        Tclass._module.FunctionHandle(_module._default.After$_T0), 
        $Heap) } 
    (_module.__default.After#canCall(_module._default.After$_T0, f#0, g#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(f#0, Tclass._module.FunctionHandle(_module._default.After$_T0))
             && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.After$_T0), $Heap)
             && 
            $Is(g#0, Tclass._module.FunctionHandle(_module._default.After$_T0))
             && $IsAlloc(g#0, Tclass._module.FunctionHandle(_module._default.After$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.After(_module._default.After$_T0, f#0, g#0), 
        Tclass._module.FunctionHandle(_module._default.After$_T0), 
        $Heap));
}

function _module.__default.After#canCall(_module._default.After$_T0: Ty, f#0: DatatypeType, g#0: DatatypeType) : bool;

function _module.__default.After#requires(Ty, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.After
axiom (forall _module._default.After$_T0: Ty, f#0: DatatypeType, g#0: DatatypeType :: 
  { _module.__default.After#requires(_module._default.After$_T0, f#0, g#0) } 
  $Is(f#0, Tclass._module.FunctionHandle(_module._default.After$_T0))
       && $Is(g#0, Tclass._module.FunctionHandle(_module._default.After$_T0))
     ==> _module.__default.After#requires(_module._default.After$_T0, f#0, g#0) == true);

procedure {:verboseName "After (well-formedness)"} CheckWellformed$$_module.__default.After(_module._default.After$_T0: Ty, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.After$_T0)), 
    g#0: DatatypeType
       where $Is(g#0, Tclass._module.FunctionHandle(_module._default.After$_T0)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Definition_After (well-formedness)"} CheckWellFormed$$_module.__default.Definition__After(_module._default.Definition_After$T: Ty, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.Definition_After$T))
         && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.Definition_After$T), $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    g#0: DatatypeType
       where $Is(g#0, Tclass._module.FunctionHandle(_module._default.Definition_After$T))
         && $IsAlloc(g#0, Tclass._module.FunctionHandle(_module._default.Definition_After$T), $Heap)
         && $IsA#_module.FunctionHandle(g#0), 
    arg#0: Box
       where $IsBox(arg#0, _module._default.Definition_After$T)
         && $IsAllocBox(arg#0, _module._default.Definition_After$T, $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Definition_After (call)"} Call$$_module.__default.Definition__After(_module._default.Definition_After$T: Ty, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.Definition_After$T))
         && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.Definition_After$T), $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    g#0: DatatypeType
       where $Is(g#0, Tclass._module.FunctionHandle(_module._default.Definition_After$T))
         && $IsAlloc(g#0, Tclass._module.FunctionHandle(_module._default.Definition_After$T), $Heap)
         && $IsA#_module.FunctionHandle(g#0), 
    arg#0: Box
       where $IsBox(arg#0, _module._default.Definition_After$T)
         && $IsAllocBox(arg#0, _module._default.Definition_After$T, $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.After#canCall(_module._default.Definition_After$T, f#0, g#0)
     && _module.__default.Apply#canCall(_module._default.Definition_After$T, 
      _module.__default.After(_module._default.Definition_After$T, f#0, g#0), 
      arg#0)
     && 
    _module.__default.Apply#canCall(_module._default.Definition_After$T, g#0, arg#0)
     && _module.__default.Apply#canCall(_module._default.Definition_After$T, 
      f#0, 
      _module.__default.Apply(_module._default.Definition_After$T, g#0, arg#0));
  ensures {:id "id1"} _module.__default.Apply(_module._default.Definition_After$T, 
      _module.__default.After(_module._default.Definition_After$T, f#0, g#0), 
      arg#0)
     == _module.__default.Apply(_module._default.Definition_After$T, 
      f#0, 
      _module.__default.Apply(_module._default.Definition_After$T, g#0, arg#0));
  // frame condition
  free ensures old($Heap) == $Heap;



// function declaration for _module._default.Lmap
function _module.__default.Lmap(_module._default.Lmap$_T0: Ty, 
    $ly: LayerType, 
    f#0: DatatypeType, 
    a#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.Lmap
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.Lmap$_T0: Ty, 
      $ly: LayerType, 
      f#0: DatatypeType, 
      a#0: DatatypeType :: 
    { _module.__default.Lmap(_module._default.Lmap$_T0, $ly, f#0, a#0) } 
    _module.__default.Lmap#canCall(_module._default.Lmap$_T0, f#0, a#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(f#0, Tclass._module.FunctionHandle(_module._default.Lmap$_T0))
           && $Is(a#0, Tclass._module.LList(_module._default.Lmap$_T0)))
       ==> $Is(_module.__default.Lmap(_module._default.Lmap$_T0, $ly, f#0, a#0), 
        Tclass._module.LList(_module._default.Lmap$_T0)));
// alloc consequence axiom for _module.__default.Lmap
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.Lmap$_T0: Ty, 
      $ly: LayerType, 
      f#0: DatatypeType, 
      a#0: DatatypeType :: 
    { $IsAlloc(_module.__default.Lmap(_module._default.Lmap$_T0, $ly, f#0, a#0), 
        Tclass._module.LList(_module._default.Lmap$_T0), 
        $Heap) } 
    (_module.__default.Lmap#canCall(_module._default.Lmap$_T0, f#0, a#0)
           || (2 < $FunctionContextHeight
             && 
            $Is(f#0, Tclass._module.FunctionHandle(_module._default.Lmap$_T0))
             && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.Lmap$_T0), $Heap)
             && 
            $Is(a#0, Tclass._module.LList(_module._default.Lmap$_T0))
             && $IsAlloc(a#0, Tclass._module.LList(_module._default.Lmap$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Lmap(_module._default.Lmap$_T0, $ly, f#0, a#0), 
        Tclass._module.LList(_module._default.Lmap$_T0), 
        $Heap));
// definition axiom for _module.__default.Lmap (revealed)
axiom {:id "id2"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.Lmap$_T0: Ty, 
      $ly: LayerType, 
      f#0: DatatypeType, 
      a#0: DatatypeType :: 
    { _module.__default.Lmap(_module._default.Lmap$_T0, $LS($ly), f#0, a#0) } 
    _module.__default.Lmap#canCall(_module._default.Lmap$_T0, f#0, a#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(f#0, Tclass._module.FunctionHandle(_module._default.Lmap$_T0))
           && $Is(a#0, Tclass._module.LList(_module._default.Lmap$_T0)))
       ==> (!_module.LList.Nil_q(a#0)
           ==> (var xs#1 := _module.LList.tail(a#0); 
            (var x#1 := _module.LList.head(a#0); 
              _module.__default.Apply#canCall(_module._default.Lmap$_T0, f#0, x#1)
                 && _module.__default.Lmap#canCall(_module._default.Lmap$_T0, f#0, xs#1))))
         && _module.__default.Lmap(_module._default.Lmap$_T0, $LS($ly), f#0, a#0)
           == (if _module.LList.Nil_q(a#0)
             then #_module.LList.Nil()
             else (var xs#0 := _module.LList.tail(a#0); 
              (var x#0 := _module.LList.head(a#0); 
                #_module.LList.Cons(_module.__default.Apply(_module._default.Lmap$_T0, f#0, x#0), 
                  _module.__default.Lmap(_module._default.Lmap$_T0, $ly, f#0, xs#0))))));
}

function _module.__default.Lmap#canCall(_module._default.Lmap$_T0: Ty, f#0: DatatypeType, a#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.Lmap$_T0: Ty, 
    $ly: LayerType, 
    f#0: DatatypeType, 
    a#0: DatatypeType :: 
  { _module.__default.Lmap(_module._default.Lmap$_T0, $LS($ly), f#0, a#0) } 
  _module.__default.Lmap(_module._default.Lmap$_T0, $LS($ly), f#0, a#0)
     == _module.__default.Lmap(_module._default.Lmap$_T0, $ly, f#0, a#0));

// fuel synonym axiom
axiom (forall _module._default.Lmap$_T0: Ty, 
    $ly: LayerType, 
    f#0: DatatypeType, 
    a#0: DatatypeType :: 
  { _module.__default.Lmap(_module._default.Lmap$_T0, AsFuelBottom($ly), f#0, a#0) } 
  _module.__default.Lmap(_module._default.Lmap$_T0, $ly, f#0, a#0)
     == _module.__default.Lmap(_module._default.Lmap$_T0, $LZ, f#0, a#0));

function Tclass._module.LList(Ty) : Ty;

const unique Tagclass._module.LList: TyTag;

// Tclass._module.LList Tag
axiom (forall _module.LList$T: Ty :: 
  { Tclass._module.LList(_module.LList$T) } 
  Tag(Tclass._module.LList(_module.LList$T)) == Tagclass._module.LList
     && TagFamily(Tclass._module.LList(_module.LList$T)) == tytagFamily$LList);

function Tclass._module.LList_0(Ty) : Ty;

// Tclass._module.LList injectivity 0
axiom (forall _module.LList$T: Ty :: 
  { Tclass._module.LList(_module.LList$T) } 
  Tclass._module.LList_0(Tclass._module.LList(_module.LList$T)) == _module.LList$T);

// Box/unbox axiom for Tclass._module.LList
axiom (forall _module.LList$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.LList(_module.LList$T)) } 
  $IsBox(bx, Tclass._module.LList(_module.LList$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.LList(_module.LList$T)));

function _module.__default.Lmap#requires(Ty, LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.Lmap
axiom (forall _module._default.Lmap$_T0: Ty, 
    $ly: LayerType, 
    f#0: DatatypeType, 
    a#0: DatatypeType :: 
  { _module.__default.Lmap#requires(_module._default.Lmap$_T0, $ly, f#0, a#0) } 
  $Is(f#0, Tclass._module.FunctionHandle(_module._default.Lmap$_T0))
       && $Is(a#0, Tclass._module.LList(_module._default.Lmap$_T0))
     ==> _module.__default.Lmap#requires(_module._default.Lmap$_T0, $ly, f#0, a#0)
       == true);

procedure {:verboseName "Lmap (well-formedness)"} CheckWellformed$$_module.__default.Lmap(_module._default.Lmap$_T0: Ty, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.Lmap$_T0)), 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.LList(_module._default.Lmap$_T0)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Lappend
function _module.__default.Lappend(_module._default.Lappend$_T0: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.Lappend
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.Lappend$_T0: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    { _module.__default.Lappend(_module._default.Lappend$_T0, $ly, a#0, b#0) } 
    _module.__default.Lappend#canCall(_module._default.Lappend$_T0, a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.LList(_module._default.Lappend$_T0))
           && $Is(b#0, Tclass._module.LList(_module._default.Lappend$_T0)))
       ==> $Is(_module.__default.Lappend(_module._default.Lappend$_T0, $ly, a#0, b#0), 
        Tclass._module.LList(_module._default.Lappend$_T0)));
// alloc consequence axiom for _module.__default.Lappend
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.Lappend$_T0: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    { $IsAlloc(_module.__default.Lappend(_module._default.Lappend$_T0, $ly, a#0, b#0), 
        Tclass._module.LList(_module._default.Lappend$_T0), 
        $Heap) } 
    (_module.__default.Lappend#canCall(_module._default.Lappend$_T0, a#0, b#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(a#0, Tclass._module.LList(_module._default.Lappend$_T0))
             && $IsAlloc(a#0, Tclass._module.LList(_module._default.Lappend$_T0), $Heap)
             && 
            $Is(b#0, Tclass._module.LList(_module._default.Lappend$_T0))
             && $IsAlloc(b#0, Tclass._module.LList(_module._default.Lappend$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Lappend(_module._default.Lappend$_T0, $ly, a#0, b#0), 
        Tclass._module.LList(_module._default.Lappend$_T0), 
        $Heap));
// definition axiom for _module.__default.Lappend (revealed)
axiom {:id "id9"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Lappend$_T0: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    { _module.__default.Lappend(_module._default.Lappend$_T0, $LS($ly), a#0, b#0) } 
    _module.__default.Lappend#canCall(_module._default.Lappend$_T0, a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.LList(_module._default.Lappend$_T0))
           && $Is(b#0, Tclass._module.LList(_module._default.Lappend$_T0)))
       ==> (!_module.LList.Nil_q(a#0)
           ==> (var xs#1 := _module.LList.tail(a#0); 
            _module.__default.Lappend#canCall(_module._default.Lappend$_T0, xs#1, b#0)))
         && _module.__default.Lappend(_module._default.Lappend$_T0, $LS($ly), a#0, b#0)
           == (if _module.LList.Nil_q(a#0)
             then b#0
             else (var xs#0 := _module.LList.tail(a#0); 
              (var x#0 := _module.LList.head(a#0); 
                #_module.LList.Cons(x#0, _module.__default.Lappend(_module._default.Lappend$_T0, $ly, xs#0, b#0))))));
}

function _module.__default.Lappend#canCall(_module._default.Lappend$_T0: Ty, a#0: DatatypeType, b#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.Lappend$_T0: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType :: 
  { _module.__default.Lappend(_module._default.Lappend$_T0, $LS($ly), a#0, b#0) } 
  _module.__default.Lappend(_module._default.Lappend$_T0, $LS($ly), a#0, b#0)
     == _module.__default.Lappend(_module._default.Lappend$_T0, $ly, a#0, b#0));

// fuel synonym axiom
axiom (forall _module._default.Lappend$_T0: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType :: 
  { _module.__default.Lappend(_module._default.Lappend$_T0, AsFuelBottom($ly), a#0, b#0) } 
  _module.__default.Lappend(_module._default.Lappend$_T0, $ly, a#0, b#0)
     == _module.__default.Lappend(_module._default.Lappend$_T0, $LZ, a#0, b#0));

function _module.__default.Lappend#requires(Ty, LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.Lappend
axiom (forall _module._default.Lappend$_T0: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType :: 
  { _module.__default.Lappend#requires(_module._default.Lappend$_T0, $ly, a#0, b#0) } 
  $Is(a#0, Tclass._module.LList(_module._default.Lappend$_T0))
       && $Is(b#0, Tclass._module.LList(_module._default.Lappend$_T0))
     ==> _module.__default.Lappend#requires(_module._default.Lappend$_T0, $ly, a#0, b#0)
       == true);

procedure {:verboseName "Lappend (well-formedness)"} CheckWellformed$$_module.__default.Lappend(_module._default.Lappend$_T0: Ty, 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.LList(_module._default.Lappend$_T0)), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.LList(_module._default.Lappend$_T0)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Example6 (well-formedness)"} CheckWellFormed$$_module.__default.Example6(_module._default.Example6$_T0: Ty, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.Example6$_T0))
         && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.Example6$_T0), $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    g#0: DatatypeType
       where $Is(g#0, Tclass._module.FunctionHandle(_module._default.Example6$_T0))
         && $IsAlloc(g#0, Tclass._module.FunctionHandle(_module._default.Example6$_T0), $Heap)
         && $IsA#_module.FunctionHandle(g#0), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.LList(_module._default.Example6$_T0))
         && $IsAlloc(M#0, Tclass._module.LList(_module._default.Example6$_T0), $Heap)
         && $IsA#_module.LList(M#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Example6 (call)"} Call$$_module.__default.Example6(_module._default.Example6$_T0: Ty, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.Example6$_T0))
         && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.Example6$_T0), $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    g#0: DatatypeType
       where $Is(g#0, Tclass._module.FunctionHandle(_module._default.Example6$_T0))
         && $IsAlloc(g#0, Tclass._module.FunctionHandle(_module._default.Example6$_T0), $Heap)
         && $IsA#_module.FunctionHandle(g#0), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.LList(_module._default.Example6$_T0))
         && $IsAlloc(M#0, Tclass._module.LList(_module._default.Example6$_T0), $Heap)
         && $IsA#_module.LList(M#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.LList(_module.__default.Lmap(_module._default.Example6$_T0, 
        $LS($LZ), 
        _module.__default.After(_module._default.Example6$_T0, f#0, g#0), 
        M#0))
     && $IsA#_module.LList(_module.__default.Lmap(_module._default.Example6$_T0, 
        $LS($LZ), 
        f#0, 
        _module.__default.Lmap(_module._default.Example6$_T0, $LS($LZ), g#0, M#0)))
     && 
    _module.__default.After#canCall(_module._default.Example6$_T0, f#0, g#0)
     && _module.__default.Lmap#canCall(_module._default.Example6$_T0, 
      _module.__default.After(_module._default.Example6$_T0, f#0, g#0), 
      M#0)
     && 
    _module.__default.Lmap#canCall(_module._default.Example6$_T0, g#0, M#0)
     && _module.__default.Lmap#canCall(_module._default.Example6$_T0, 
      f#0, 
      _module.__default.Lmap(_module._default.Example6$_T0, $LS($LZ), g#0, M#0));
  ensures {:id "id17"} $Eq#_module.LList(_module._default.Example6$_T0, 
    _module._default.Example6$_T0, 
    $LS($LS($LZ)), 
    _module.__default.Lmap(_module._default.Example6$_T0, 
      $LS($LS($LZ)), 
      _module.__default.After(_module._default.Example6$_T0, f#0, g#0), 
      M#0), 
    _module.__default.Lmap(_module._default.Example6$_T0, 
      $LS($LS($LZ)), 
      f#0, 
      _module.__default.Lmap(_module._default.Example6$_T0, $LS($LS($LZ)), g#0, M#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Example6# (co-call)"} CoCall$$_module.__default.Example6_h(_module._default.Example6#$_T0: Ty, 
    _k#0: Box, 
    f#1: DatatypeType
       where $Is(f#1, Tclass._module.FunctionHandle(_module._default.Example6#$_T0))
         && $IsAlloc(f#1, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap)
         && $IsA#_module.FunctionHandle(f#1), 
    g#1: DatatypeType
       where $Is(g#1, Tclass._module.FunctionHandle(_module._default.Example6#$_T0))
         && $IsAlloc(g#1, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap)
         && $IsA#_module.FunctionHandle(g#1), 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.LList(_module._default.Example6#$_T0))
         && $IsAlloc(M#1, Tclass._module.LList(_module._default.Example6#$_T0), $Heap)
         && $IsA#_module.LList(M#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1)
     && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
      _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
      M#1)
     && 
    _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, M#1)
     && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
      f#1, 
      _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, M#1));
  free ensures {:id "id18"} $PrefixEq#_module.LList(_module._default.Example6#$_T0, 
    _module._default.Example6#$_T0, 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.Lmap(_module._default.Example6#$_T0, 
      $LS($LZ), 
      _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
      M#1), 
    _module.__default.Lmap(_module._default.Example6#$_T0, 
      $LS($LZ), 
      f#1, 
      _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, M#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Example6# (correctness)"} Impl$$_module.__default.Example6_h(_module._default.Example6#$_T0: Ty, 
    _k#0: Box, 
    f#1: DatatypeType
       where $Is(f#1, Tclass._module.FunctionHandle(_module._default.Example6#$_T0))
         && $IsAlloc(f#1, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap)
         && $IsA#_module.FunctionHandle(f#1), 
    g#1: DatatypeType
       where $Is(g#1, Tclass._module.FunctionHandle(_module._default.Example6#$_T0))
         && $IsAlloc(g#1, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap)
         && $IsA#_module.FunctionHandle(g#1), 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.LList(_module._default.Example6#$_T0))
         && $IsAlloc(M#1, Tclass._module.LList(_module._default.Example6#$_T0), $Heap)
         && $IsA#_module.LList(M#1))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1)
     && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
      _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
      M#1)
     && 
    _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, M#1)
     && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
      f#1, 
      _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, M#1));
  ensures {:id "id19"} $PrefixEq#_module.LList(_module._default.Example6#$_T0, 
      _module._default.Example6#$_T0, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Lmap(_module._default.Example6#$_T0, 
        $LS($LZ), 
        _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
        M#1), 
      _module.__default.Lmap(_module._default.Example6#$_T0, 
        $LS($LZ), 
        f#1, 
        _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, M#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.LList.Nil_q(_module.__default.Lmap(_module._default.Example6#$_T0, 
          $LS($LS($LZ)), 
          _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
          M#1))
       ==> _module.LList.Nil_q(_module.__default.Lmap(_module._default.Example6#$_T0, 
          $LS($LS($LZ)), 
          f#1, 
          _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, M#1))));
  ensures {:id "id20"} $PrefixEq#_module.LList(_module._default.Example6#$_T0, 
      _module._default.Example6#$_T0, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Lmap(_module._default.Example6#$_T0, 
        $LS($LZ), 
        _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
        M#1), 
      _module.__default.Lmap(_module._default.Example6#$_T0, 
        $LS($LZ), 
        f#1, 
        _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, M#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.LList.Cons_q(_module.__default.Lmap(_module._default.Example6#$_T0, 
          $LS($LS($LZ)), 
          _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
          M#1))
       ==> _module.LList.Cons_q(_module.__default.Lmap(_module._default.Example6#$_T0, 
            $LS($LS($LZ)), 
            f#1, 
            _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, M#1)))
         && 
        _module.LList.head(_module.__default.Lmap(_module._default.Example6#$_T0, 
              $LS($LS($LZ)), 
              _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
              M#1))
           == _module.LList.head(_module.__default.Lmap(_module._default.Example6#$_T0, 
              $LS($LS($LZ)), 
              f#1, 
              _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, M#1)))
         && $PrefixEq#_module.LList(_module._default.Example6#$_T0, 
          _module._default.Example6#$_T0, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.LList.tail(_module.__default.Lmap(_module._default.Example6#$_T0, 
              $LS($LS($LZ)), 
              _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
              M#1)), 
          _module.LList.tail(_module.__default.Lmap(_module._default.Example6#$_T0, 
              $LS($LS($LZ)), 
              f#1, 
              _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, M#1)))));
  ensures {:id "id21"} $PrefixEq#_module.LList(_module._default.Example6#$_T0, 
      _module._default.Example6#$_T0, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Lmap(_module._default.Example6#$_T0, 
        $LS($LZ), 
        _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
        M#1), 
      _module.__default.Lmap(_module._default.Example6#$_T0, 
        $LS($LZ), 
        f#1, 
        _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, M#1)))
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.LList.Nil_q(_module.__default.Lmap(_module._default.Example6#$_T0, 
              $LS($LS($LZ)), 
              _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
              M#1))
           ==> _module.LList.Nil_q(_module.__default.Lmap(_module._default.Example6#$_T0, 
              $LS($LS($LZ)), 
              f#1, 
              _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, M#1))))
         && (_module.LList.Cons_q(_module.__default.Lmap(_module._default.Example6#$_T0, 
              $LS($LS($LZ)), 
              _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
              M#1))
           ==> _module.LList.Cons_q(_module.__default.Lmap(_module._default.Example6#$_T0, 
                $LS($LS($LZ)), 
                f#1, 
                _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, M#1)))
             && 
            _module.LList.head(_module.__default.Lmap(_module._default.Example6#$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                  M#1))
               == _module.LList.head(_module.__default.Lmap(_module._default.Example6#$_T0, 
                  $LS($LS($LZ)), 
                  f#1, 
                  _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, M#1)))
             && $PrefixEq#_module.LList(_module._default.Example6#$_T0, 
              _module._default.Example6#$_T0, 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.LList.tail(_module.__default.Lmap(_module._default.Example6#$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                  M#1)), 
              _module.LList.tail(_module.__default.Lmap(_module._default.Example6#$_T0, 
                  $LS($LS($LZ)), 
                  f#1, 
                  _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, M#1))))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.LList(_module._default.Example6#$_T0, 
        _module._default.Example6#$_T0, 
        $LS($LS($LZ)), 
        _module.__default.Lmap(_module._default.Example6#$_T0, 
          $LS($LZ), 
          _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
          M#1), 
        _module.__default.Lmap(_module._default.Example6#$_T0, 
          $LS($LZ), 
          f#1, 
          _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, M#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Example6# (correctness)"} Impl$$_module.__default.Example6_h(_module._default.Example6#$_T0: Ty, 
    _k#0: Box, 
    f#1: DatatypeType, 
    g#1: DatatypeType, 
    M#1: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var xs#0: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var x#0: Box;
  var let#0_0_1#0#0: Box;
  var ##f#4: DatatypeType;
  var ##a#3: DatatypeType;
  var ##f#5: DatatypeType;
  var ##a#4: DatatypeType;
  var ##f#6: DatatypeType;
  var ##a#5: DatatypeType;
  var ##f#7: DatatypeType;
  var ##a#6: DatatypeType;
  var ##f#8: DatatypeType;
  var ##a#7: DatatypeType;
  var ##f#9: DatatypeType;
  var ##argument#0: Box;
  var ##f#10: DatatypeType;
  var ##a#8: DatatypeType;
  var ##f#11: DatatypeType;
  var ##a#9: DatatypeType;
  var ##f#12: DatatypeType;
  var ##a#10: DatatypeType;
  var ##f#13: DatatypeType;
  var ##argument#1: Box;
  var ##f#14: DatatypeType;
  var ##argument#2: Box;
  var ##f#15: DatatypeType;
  var ##a#11: DatatypeType;
  var ##f#16: DatatypeType;
  var ##a#12: DatatypeType;
  var ##f#17: DatatypeType;
  var ##a#13: DatatypeType;
  var ##f#18: DatatypeType;
  var ##argument#3: Box;
  var ##f#19: DatatypeType;
  var ##a#14: DatatypeType;
  var ##f#20: DatatypeType;
  var ##argument#4: Box;
  var ##f#21: DatatypeType;
  var ##argument#5: Box;
  var ##f#22: DatatypeType;
  var ##f#23: DatatypeType;
  var ##g#1: DatatypeType;
  var ##a#15: DatatypeType;
  var ##f#24: DatatypeType;
  var ##argument#6: Box;
  var ##f#25: DatatypeType;
  var ##argument#7: Box;
  var ##f#26: DatatypeType;
  var ##a#16: DatatypeType;
  var ##f#27: DatatypeType;
  var ##a#17: DatatypeType;
  var ##f#28: DatatypeType;
  var ##f#29: DatatypeType;
  var ##g#2: DatatypeType;
  var ##argument#8: Box;
  var ##f#30: DatatypeType;
  var ##f#31: DatatypeType;
  var ##g#3: DatatypeType;
  var ##a#18: DatatypeType;
  var f##0: DatatypeType;
  var g##0: DatatypeType;
  var arg##0: Box;
  var ##f#32: DatatypeType;
  var ##argument#9: Box;
  var ##f#33: DatatypeType;
  var ##argument#10: Box;
  var ##f#34: DatatypeType;
  var ##f#35: DatatypeType;
  var ##g#4: DatatypeType;
  var ##a#19: DatatypeType;
  var ##f#36: DatatypeType;
  var ##f#37: DatatypeType;
  var ##g#5: DatatypeType;
  var ##a#20: DatatypeType;
  var ##f#38: DatatypeType;
  var ##f#39: DatatypeType;
  var ##g#6: DatatypeType;
  var ##argument#11: Box;
  var ##f#40: DatatypeType;
  var ##f#41: DatatypeType;
  var ##g#7: DatatypeType;
  var ##a#21: DatatypeType;
  var ##f#42: DatatypeType;
  var ##f#43: DatatypeType;
  var ##g#8: DatatypeType;
  var ##a#22: DatatypeType;
  var ##f#44: DatatypeType;
  var ##f#45: DatatypeType;
  var ##g#9: DatatypeType;
  var ##a#23: DatatypeType;
  var ##f#46: DatatypeType;
  var ##f#47: DatatypeType;
  var ##g#10: DatatypeType;
  var ##a#24: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Example6#, Impl$$_module.__default.Example6_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.FunctionHandle(f#1);
    assume $IsA#_module.FunctionHandle(g#1);
    assume $IsA#_module.LList(M#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, 
        $ih#f0#0: DatatypeType, 
        $ih#g0#0: DatatypeType, 
        $ih#M0#0: DatatypeType :: 
      { $PrefixEq#_module.LList(_module._default.Example6#$_T0, 
          _module._default.Example6#$_T0, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.Lmap(_module._default.Example6#$_T0, 
            $LS($LZ), 
            _module.__default.After(_module._default.Example6#$_T0, $ih#f0#0, $ih#g0#0), 
            $ih#M0#0), 
          _module.__default.Lmap(_module._default.Example6#$_T0, 
            $LS($LZ), 
            $ih#f0#0, 
            _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), $ih#g0#0, $ih#M0#0))) } 
      $Is($ih#f0#0, Tclass._module.FunctionHandle(_module._default.Example6#$_T0))
           && $Is($ih#g0#0, Tclass._module.FunctionHandle(_module._default.Example6#$_T0))
           && $Is($ih#M0#0, Tclass._module.LList(_module._default.Example6#$_T0))
           && Lit(true)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0
               && (DtRank($ih#f0#0) < DtRank(f#1)
                 || (DtRank($ih#f0#0) == DtRank(f#1) && DtRank($ih#g0#0) < DtRank(g#1)))))
         ==> $PrefixEq#_module.LList(_module._default.Example6#$_T0, 
          _module._default.Example6#$_T0, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.Lmap(_module._default.Example6#$_T0, 
            $LS($LZ), 
            _module.__default.After(_module._default.Example6#$_T0, $ih#f0#0, $ih#g0#0), 
            $ih#M0#0), 
          _module.__default.Lmap(_module._default.Example6#$_T0, 
            $LS($LZ), 
            $ih#f0#0, 
            _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), $ih#g0#0, $ih#M0#0))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(37,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#0#0, _mcc#1#0;
        if (M#1 == #_module.LList.Nil())
        {
        }
        else if (M#1 == #_module.LList.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.Example6#$_T0)
               && $IsAllocBox(_mcc#0#0, _module._default.Example6#$_T0, $Heap);
            assume $Is(_mcc#1#0, Tclass._module.LList(_module._default.Example6#$_T0))
               && $IsAlloc(_mcc#1#0, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
            havoc xs#0;
            assume $Is(xs#0, Tclass._module.LList(_module._default.Example6#$_T0))
               && $IsAlloc(xs#0, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
            assume {:id "id22"} let#0_0_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.LList(_module._default.Example6#$_T0));
            assume {:id "id23"} xs#0 == let#0_0_0#0#0;
            havoc x#0;
            assume $IsBox(x#0, _module._default.Example6#$_T0)
               && $IsAllocBox(x#0, _module._default.Example6#$_T0, $Heap);
            assume {:id "id24"} let#0_0_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#0_0_1#0#0, _module._default.Example6#$_T0);
            assume {:id "id25"} x#0 == let#0_0_1#0#0;
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                ##f#47 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#47, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##g#10 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##g#10, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1);
                assume _module.FunctionHandle.FH_q(_module.__default.After(_module._default.Example6#$_T0, f#1, g#1));
                ##f#46 := _module.__default.After(_module._default.Example6#$_T0, f#1, g#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#46, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##a#24 := M#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#24, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                  _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                  M#1);
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1)
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                    _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                    M#1);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                ##f#43 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#43, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##g#8 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##g#8, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1);
                assume _module.FunctionHandle.FH_q(_module.__default.After(_module._default.Example6#$_T0, f#1, g#1));
                ##f#42 := _module.__default.After(_module._default.Example6#$_T0, f#1, g#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#42, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##a#22 := M#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#22, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                  _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                  M#1);
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1)
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                    _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                    M#1);
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                ##f#45 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#45, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##g#9 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##g#9, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1);
                assume _module.FunctionHandle.FH_q(_module.__default.After(_module._default.Example6#$_T0, f#1, g#1));
                ##f#44 := _module.__default.After(_module._default.Example6#$_T0, f#1, g#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#44, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##a#23 := #_module.LList.Cons(x#0, xs#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#23, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                  _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                  #_module.LList.Cons(x#0, xs#0));
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1)
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                    _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                    #_module.LList.Cons(x#0, xs#0));
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                assert {:id "id35"} {:subsumption 0} $Eq#_module.LList(_module._default.Example6#$_T0, 
                  _module._default.Example6#$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.Lmap(_module._default.Example6#$_T0, 
                    $LS($LS($LZ)), 
                    _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                    M#1), 
                  _module.__default.Lmap(_module._default.Example6#$_T0, 
                    $LS($LS($LZ)), 
                    _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                    #_module.LList.Cons(x#0, xs#0)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                ##f#37 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#37, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##g#5 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##g#5, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1);
                assume _module.FunctionHandle.FH_q(_module.__default.After(_module._default.Example6#$_T0, f#1, g#1));
                ##f#36 := _module.__default.After(_module._default.Example6#$_T0, f#1, g#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#36, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##a#20 := #_module.LList.Cons(x#0, xs#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#20, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                  _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                  #_module.LList.Cons(x#0, xs#0));
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1)
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                    _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                    #_module.LList.Cons(x#0, xs#0));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                ##f#39 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#39, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##g#6 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##g#6, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1);
                assume _module.FunctionHandle.FH_q(_module.__default.After(_module._default.Example6#$_T0, f#1, g#1));
                ##f#38 := _module.__default.After(_module._default.Example6#$_T0, f#1, g#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#38, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##argument#11 := x#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##argument#11, _module._default.Example6#$_T0, $Heap);
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, 
                  _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                  x#0);
                ##f#41 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#41, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##g#7 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##g#7, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1);
                assume _module.FunctionHandle.FH_q(_module.__default.After(_module._default.Example6#$_T0, f#1, g#1));
                ##f#40 := _module.__default.After(_module._default.Example6#$_T0, f#1, g#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#40, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##a#21 := xs#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#21, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                  _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                  xs#0);
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1)
                   && _module.__default.Apply#canCall(_module._default.Example6#$_T0, 
                    _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                    x#0)
                   && 
                  _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1)
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                    _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                    xs#0);
                // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                assert {:id "id34"} {:subsumption 0} $Eq#_module.LList(_module._default.Example6#$_T0, 
                  _module._default.Example6#$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.Lmap(_module._default.Example6#$_T0, 
                    $LS($LS($LZ)), 
                    _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                    #_module.LList.Cons(x#0, xs#0)), 
                  #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                      _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                      x#0), 
                    _module.__default.Lmap(_module._default.Example6#$_T0, 
                      $LS($LS($LZ)), 
                      _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                      xs#0)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                ##f#29 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#29, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##g#2 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##g#2, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1);
                assume _module.FunctionHandle.FH_q(_module.__default.After(_module._default.Example6#$_T0, f#1, g#1));
                ##f#28 := _module.__default.After(_module._default.Example6#$_T0, f#1, g#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#28, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##argument#8 := x#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##argument#8, _module._default.Example6#$_T0, $Heap);
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, 
                  _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                  x#0);
                ##f#31 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#31, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##g#3 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##g#3, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1);
                assume _module.FunctionHandle.FH_q(_module.__default.After(_module._default.Example6#$_T0, f#1, g#1));
                ##f#30 := _module.__default.After(_module._default.Example6#$_T0, f#1, g#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#30, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##a#18 := xs#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#18, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                  _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                  xs#0);
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1)
                   && _module.__default.Apply#canCall(_module._default.Example6#$_T0, 
                    _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                    x#0)
                   && 
                  _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1)
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                    _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                    xs#0);
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(46,25)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                f##0 := f#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                g##0 := g#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                arg##0 := x#0;
                call {:id "id32"} Call$$_module.__default.Definition__After(_module._default.Example6#$_T0, f##0, g##0, arg##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                ##f#32 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#32, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##f#33 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#33, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##argument#10 := x#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##argument#10, _module._default.Example6#$_T0, $Heap);
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, g#1, x#0);
                ##argument#9 := _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0);
                // assume allocatedness for argument to function
                assume $IsAllocBox(##argument#9, _module._default.Example6#$_T0, $Heap);
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, 
                  f#1, 
                  _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0));
                ##f#35 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#35, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##g#4 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##g#4, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1);
                assume _module.FunctionHandle.FH_q(_module.__default.After(_module._default.Example6#$_T0, f#1, g#1));
                ##f#34 := _module.__default.After(_module._default.Example6#$_T0, f#1, g#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#34, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##a#19 := xs#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#19, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                  _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                  xs#0);
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, g#1, x#0)
                   && _module.__default.Apply#canCall(_module._default.Example6#$_T0, 
                    f#1, 
                    _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0))
                   && 
                  _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1)
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                    _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                    xs#0);
                // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                assert {:id "id33"} {:subsumption 0} $Eq#_module.LList(_module._default.Example6#$_T0, 
                  _module._default.Example6#$_T0, 
                  $LS($LS($LZ)), 
                  #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                      _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                      x#0), 
                    _module.__default.Lmap(_module._default.Example6#$_T0, 
                      $LS($LS($LZ)), 
                      _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                      xs#0)), 
                  #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                      f#1, 
                      _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                    _module.__default.Lmap(_module._default.Example6#$_T0, 
                      $LS($LS($LZ)), 
                      _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                      xs#0)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                ##f#20 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#20, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##f#21 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#21, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##argument#5 := x#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##argument#5, _module._default.Example6#$_T0, $Heap);
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, g#1, x#0);
                ##argument#4 := _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0);
                // assume allocatedness for argument to function
                assume $IsAllocBox(##argument#4, _module._default.Example6#$_T0, $Heap);
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, 
                  f#1, 
                  _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0));
                ##f#23 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#23, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##g#1 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##g#1, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1);
                assume _module.FunctionHandle.FH_q(_module.__default.After(_module._default.Example6#$_T0, f#1, g#1));
                ##f#22 := _module.__default.After(_module._default.Example6#$_T0, f#1, g#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#22, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##a#15 := xs#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#15, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                  _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                  xs#0);
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, g#1, x#0)
                   && _module.__default.Apply#canCall(_module._default.Example6#$_T0, 
                    f#1, 
                    _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0))
                   && 
                  _module.__default.After#canCall(_module._default.Example6#$_T0, f#1, g#1)
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                    _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                    xs#0);
                // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                assume true;
                ##f#24 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#24, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##f#25 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#25, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##argument#7 := x#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##argument#7, _module._default.Example6#$_T0, $Heap);
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, g#1, x#0);
                ##argument#6 := _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0);
                // assume allocatedness for argument to function
                assume $IsAllocBox(##argument#6, _module._default.Example6#$_T0, $Heap);
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, 
                  f#1, 
                  _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0));
                ##f#26 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#26, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##f#27 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#27, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##a#17 := xs#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#17, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, xs#0);
                ##a#16 := _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#16, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                  f#1, 
                  _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0));
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, g#1, x#0)
                   && _module.__default.Apply#canCall(_module._default.Example6#$_T0, 
                    f#1, 
                    _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0))
                   && 
                  _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, xs#0)
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                    f#1, 
                    _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0));
                // ----- assert line3 ==# line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                assert {:id "id29"} {:subsumption 0} $PrefixEq#_module.LList(_module._default.Example6#$_T0, 
                    _module._default.Example6#$_T0, 
                    _k#0, 
                    $LS($LS($LZ)), 
                    #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                        f#1, 
                        _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                      _module.__default.Lmap(_module._default.Example6#$_T0, 
                        $LS($LZ), 
                        _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                        xs#0)), 
                    #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                        f#1, 
                        _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                      _module.__default.Lmap(_module._default.Example6#$_T0, 
                        $LS($LZ), 
                        f#1, 
                        _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0))))
                   || (0 < ORD#Offset(_k#0)
                     ==> 
                    _module.LList.Nil_q(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                          f#1, 
                          _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                        _module.__default.Lmap(_module._default.Example6#$_T0, 
                          $LS($LS($LZ)), 
                          _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                          xs#0)))
                     ==> _module.LList.Nil_q(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                          f#1, 
                          _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                        _module.__default.Lmap(_module._default.Example6#$_T0, 
                          $LS($LS($LZ)), 
                          f#1, 
                          _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, xs#0)))));
                assert {:id "id30"} {:subsumption 0} $PrefixEq#_module.LList(_module._default.Example6#$_T0, 
                    _module._default.Example6#$_T0, 
                    _k#0, 
                    $LS($LS($LZ)), 
                    #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                        f#1, 
                        _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                      _module.__default.Lmap(_module._default.Example6#$_T0, 
                        $LS($LZ), 
                        _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                        xs#0)), 
                    #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                        f#1, 
                        _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                      _module.__default.Lmap(_module._default.Example6#$_T0, 
                        $LS($LZ), 
                        f#1, 
                        _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0))))
                   || (0 < ORD#Offset(_k#0)
                     ==> 
                    _module.LList.Cons_q(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                          f#1, 
                          _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                        _module.__default.Lmap(_module._default.Example6#$_T0, 
                          $LS($LS($LZ)), 
                          _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                          xs#0)))
                     ==> _module.LList.Cons_q(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                            f#1, 
                            _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                          _module.__default.Lmap(_module._default.Example6#$_T0, 
                            $LS($LS($LZ)), 
                            f#1, 
                            _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, xs#0))))
                       && 
                      _module.LList.head(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                              f#1, 
                              _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                            _module.__default.Lmap(_module._default.Example6#$_T0, 
                              $LS($LS($LZ)), 
                              _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                              xs#0)))
                         == _module.LList.head(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                              f#1, 
                              _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                            _module.__default.Lmap(_module._default.Example6#$_T0, 
                              $LS($LS($LZ)), 
                              f#1, 
                              _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, xs#0))))
                       && $PrefixEq#_module.LList(_module._default.Example6#$_T0, 
                        _module._default.Example6#$_T0, 
                        ORD#Minus(_k#0, ORD#FromNat(1)), 
                        $LS($LS($LZ)), 
                        _module.LList.tail(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                              f#1, 
                              _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                            _module.__default.Lmap(_module._default.Example6#$_T0, 
                              $LS($LS($LZ)), 
                              _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                              xs#0))), 
                        _module.LList.tail(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                              f#1, 
                              _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                            _module.__default.Lmap(_module._default.Example6#$_T0, 
                              $LS($LS($LZ)), 
                              f#1, 
                              _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, xs#0))))));
                assert {:id "id31"} {:subsumption 0} $PrefixEq#_module.LList(_module._default.Example6#$_T0, 
                    _module._default.Example6#$_T0, 
                    _k#0, 
                    $LS($LS($LZ)), 
                    #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                        f#1, 
                        _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                      _module.__default.Lmap(_module._default.Example6#$_T0, 
                        $LS($LZ), 
                        _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                        xs#0)), 
                    #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                        f#1, 
                        _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                      _module.__default.Lmap(_module._default.Example6#$_T0, 
                        $LS($LZ), 
                        f#1, 
                        _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0))))
                   || 
                  (0 < ORD#Offset(_k#0)
                     ==> (_module.LList.Nil_q(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                              f#1, 
                              _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                            _module.__default.Lmap(_module._default.Example6#$_T0, 
                              $LS($LS($LZ)), 
                              _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                              xs#0)))
                         ==> _module.LList.Nil_q(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                              f#1, 
                              _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                            _module.__default.Lmap(_module._default.Example6#$_T0, 
                              $LS($LS($LZ)), 
                              f#1, 
                              _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, xs#0)))))
                       && (_module.LList.Cons_q(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                              f#1, 
                              _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                            _module.__default.Lmap(_module._default.Example6#$_T0, 
                              $LS($LS($LZ)), 
                              _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                              xs#0)))
                         ==> _module.LList.Cons_q(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                                f#1, 
                                _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                              _module.__default.Lmap(_module._default.Example6#$_T0, 
                                $LS($LS($LZ)), 
                                f#1, 
                                _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, xs#0))))
                           && 
                          _module.LList.head(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                                  f#1, 
                                  _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                                _module.__default.Lmap(_module._default.Example6#$_T0, 
                                  $LS($LS($LZ)), 
                                  _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                                  xs#0)))
                             == _module.LList.head(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                                  f#1, 
                                  _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                                _module.__default.Lmap(_module._default.Example6#$_T0, 
                                  $LS($LS($LZ)), 
                                  f#1, 
                                  _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, xs#0))))
                           && $PrefixEq#_module.LList(_module._default.Example6#$_T0, 
                            _module._default.Example6#$_T0, 
                            ORD#Minus(_k#0, ORD#FromNat(1)), 
                            $LS($LS($LZ)), 
                            _module.LList.tail(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                                  f#1, 
                                  _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                                _module.__default.Lmap(_module._default.Example6#$_T0, 
                                  $LS($LS($LZ)), 
                                  _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                                  xs#0))), 
                            _module.LList.tail(#_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                                  f#1, 
                                  _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                                _module.__default.Lmap(_module._default.Example6#$_T0, 
                                  $LS($LS($LZ)), 
                                  f#1, 
                                  _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, xs#0)))))))
                   || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
                     ==> $Eq#_module.LList(_module._default.Example6#$_T0, 
                      _module._default.Example6#$_T0, 
                      $LS($LS($LZ)), 
                      #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                          f#1, 
                          _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                        _module.__default.Lmap(_module._default.Example6#$_T0, 
                          $LS($LZ), 
                          _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                          xs#0)), 
                      #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                          f#1, 
                          _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                        _module.__default.Lmap(_module._default.Example6#$_T0, 
                          $LS($LZ), 
                          f#1, 
                          _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0)))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                ##f#13 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#13, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##f#14 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#14, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##argument#2 := x#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##argument#2, _module._default.Example6#$_T0, $Heap);
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, g#1, x#0);
                ##argument#1 := _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0);
                // assume allocatedness for argument to function
                assume $IsAllocBox(##argument#1, _module._default.Example6#$_T0, $Heap);
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, 
                  f#1, 
                  _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0));
                ##f#15 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#15, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##f#16 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#16, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##a#12 := xs#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#12, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, xs#0);
                ##a#11 := _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#11, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                  f#1, 
                  _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0));
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, g#1, x#0)
                   && _module.__default.Apply#canCall(_module._default.Example6#$_T0, 
                    f#1, 
                    _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0))
                   && 
                  _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, xs#0)
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                    f#1, 
                    _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0));
                // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                ##f#17 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#17, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##f#18 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#18, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##argument#3 := x#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##argument#3, _module._default.Example6#$_T0, $Heap);
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, g#1, x#0);
                ##f#19 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#19, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##a#14 := xs#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#14, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, xs#0);
                ##a#13 := #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0), 
                  _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#13, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                  f#1, 
                  #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0), 
                    _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0)));
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, g#1, x#0)
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, xs#0)
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                    f#1, 
                    #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0), 
                      _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0)));
                // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                assert {:id "id28"} {:subsumption 0} $Eq#_module.LList(_module._default.Example6#$_T0, 
                  _module._default.Example6#$_T0, 
                  $LS($LS($LZ)), 
                  #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, 
                      f#1, 
                      _module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0)), 
                    _module.__default.Lmap(_module._default.Example6#$_T0, 
                      $LS($LS($LZ)), 
                      f#1, 
                      _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, xs#0))), 
                  _module.__default.Lmap(_module._default.Example6#$_T0, 
                    $LS($LS($LZ)), 
                    f#1, 
                    #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0), 
                      _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, xs#0))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                ##f#8 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#8, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##f#9 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#9, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##argument#0 := x#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##argument#0, _module._default.Example6#$_T0, $Heap);
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, g#1, x#0);
                ##f#10 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#10, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##a#8 := xs#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#8, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, xs#0);
                ##a#7 := #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0), 
                  _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#7, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                  f#1, 
                  #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0), 
                    _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0)));
                assume _module.__default.Apply#canCall(_module._default.Example6#$_T0, g#1, x#0)
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, xs#0)
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                    f#1, 
                    #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0), 
                      _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, xs#0)));
                // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                ##f#11 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#11, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##f#12 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#12, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##a#10 := #_module.LList.Cons(x#0, xs#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#10, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, #_module.LList.Cons(x#0, xs#0));
                ##a#9 := _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, #_module.LList.Cons(x#0, xs#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#9, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                  f#1, 
                  _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, #_module.LList.Cons(x#0, xs#0)));
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, #_module.LList.Cons(x#0, xs#0))
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                    f#1, 
                    _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, #_module.LList.Cons(x#0, xs#0)));
                // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                assert {:id "id27"} {:subsumption 0} $Eq#_module.LList(_module._default.Example6#$_T0, 
                  _module._default.Example6#$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.Lmap(_module._default.Example6#$_T0, 
                    $LS($LS($LZ)), 
                    f#1, 
                    #_module.LList.Cons(_module.__default.Apply(_module._default.Example6#$_T0, g#1, x#0), 
                      _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, xs#0))), 
                  _module.__default.Lmap(_module._default.Example6#$_T0, 
                    $LS($LS($LZ)), 
                    f#1, 
                    _module.__default.Lmap(_module._default.Example6#$_T0, 
                      $LS($LS($LZ)), 
                      g#1, 
                      #_module.LList.Cons(x#0, xs#0))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                ##f#4 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#4, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##f#5 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#5, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##a#4 := #_module.LList.Cons(x#0, xs#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#4, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, #_module.LList.Cons(x#0, xs#0));
                ##a#3 := _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, #_module.LList.Cons(x#0, xs#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#3, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                  f#1, 
                  _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, #_module.LList.Cons(x#0, xs#0)));
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, #_module.LList.Cons(x#0, xs#0))
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                    f#1, 
                    _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, #_module.LList.Cons(x#0, xs#0)));
                // ----- Hint6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                ##f#6 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#6, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##f#7 := g#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#7, Tclass._module.FunctionHandle(_module._default.Example6#$_T0), $Heap);
                ##a#6 := M#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#6, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, M#1);
                ##a#5 := _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, M#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#5, Tclass._module.LList(_module._default.Example6#$_T0), $Heap);
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                  f#1, 
                  _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, M#1));
                assume _module.__default.Lmap#canCall(_module._default.Example6#$_T0, g#1, M#1)
                   && _module.__default.Lmap#canCall(_module._default.Example6#$_T0, 
                    f#1, 
                    _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, M#1));
                // ----- assert line6 == line7 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(41,5)
                assert {:id "id26"} {:subsumption 0} $Eq#_module.LList(_module._default.Example6#$_T0, 
                  _module._default.Example6#$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.Lmap(_module._default.Example6#$_T0, 
                    $LS($LS($LZ)), 
                    f#1, 
                    _module.__default.Lmap(_module._default.Example6#$_T0, 
                      $LS($LS($LZ)), 
                      g#1, 
                      #_module.LList.Cons(x#0, xs#0))), 
                  _module.__default.Lmap(_module._default.Example6#$_T0, 
                    $LS($LS($LZ)), 
                    f#1, 
                    _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LS($LZ)), g#1, M#1)));
                assume false;
            }

            assume {:id "id36"} $PrefixEq#_module.LList(_module._default.Example6#$_T0, 
              _module._default.Example6#$_T0, 
              _k#0, 
              $LS($LS($LZ)), 
              _module.__default.Lmap(_module._default.Example6#$_T0, 
                $LS($LZ), 
                _module.__default.After(_module._default.Example6#$_T0, f#1, g#1), 
                M#1), 
              _module.__default.Lmap(_module._default.Example6#$_T0, 
                $LS($LZ), 
                f#1, 
                _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#1, M#1)));
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(37,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, f#2: DatatypeType, g#2: DatatypeType, M#2: DatatypeType :: 
          { _module.__default.Lmap(_module._default.Example6#$_T0, 
              $LS($LZ), 
              f#2, 
              _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#2, M#2)), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.Lmap(_module._default.Example6#$_T0, 
              $LS($LZ), 
              _module.__default.After(_module._default.Example6#$_T0, f#2, g#2), 
              M#2), ORD#Less(_k'#0, _k#0) } 
          $Is(f#2, Tclass._module.FunctionHandle(_module._default.Example6#$_T0))
               && $Is(g#2, Tclass._module.FunctionHandle(_module._default.Example6#$_T0))
               && $Is(M#2, Tclass._module.LList(_module._default.Example6#$_T0))
               && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.LList(_module._default.Example6#$_T0, 
              _module._default.Example6#$_T0, 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.Lmap(_module._default.Example6#$_T0, 
                $LS($LZ), 
                _module.__default.After(_module._default.Example6#$_T0, f#2, g#2), 
                M#2), 
              _module.__default.Lmap(_module._default.Example6#$_T0, 
                $LS($LZ), 
                f#2, 
                _module.__default.Lmap(_module._default.Example6#$_T0, $LS($LZ), g#2, M#2))));
    }
}



// function declaration for _module._default.Iterates
function _module.__default.Iterates(_module._default.Iterates$A: Ty, 
    $ly: LayerType, 
    f#0: DatatypeType, 
    M#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.Iterates
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.Iterates$A: Ty, 
      $ly: LayerType, 
      f#0: DatatypeType, 
      M#0: DatatypeType :: 
    { _module.__default.Iterates(_module._default.Iterates$A, $ly, f#0, M#0) } 
    _module.__default.Iterates#canCall(_module._default.Iterates$A, f#0, M#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(f#0, 
            Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Iterates$A)))
           && $Is(M#0, Tclass._module.LList(_module._default.Iterates$A)))
       ==> $Is(_module.__default.Iterates(_module._default.Iterates$A, $ly, f#0, M#0), 
        Tclass._module.LList(Tclass._module.LList(_module._default.Iterates$A))));
// alloc consequence axiom for _module.__default.Iterates
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.Iterates$A: Ty, 
      $ly: LayerType, 
      f#0: DatatypeType, 
      M#0: DatatypeType :: 
    { $IsAlloc(_module.__default.Iterates(_module._default.Iterates$A, $ly, f#0, M#0), 
        Tclass._module.LList(Tclass._module.LList(_module._default.Iterates$A)), 
        $Heap) } 
    (_module.__default.Iterates#canCall(_module._default.Iterates$A, f#0, M#0)
           || (2 < $FunctionContextHeight
             && 
            $Is(f#0, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Iterates$A)))
             && $IsAlloc(f#0, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Iterates$A)), 
              $Heap)
             && 
            $Is(M#0, Tclass._module.LList(_module._default.Iterates$A))
             && $IsAlloc(M#0, Tclass._module.LList(_module._default.Iterates$A), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Iterates(_module._default.Iterates$A, $ly, f#0, M#0), 
        Tclass._module.LList(Tclass._module.LList(_module._default.Iterates$A)), 
        $Heap));
// definition axiom for _module.__default.Iterates (revealed)
axiom {:id "id37"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.Iterates$A: Ty, 
      $ly: LayerType, 
      f#0: DatatypeType, 
      M#0: DatatypeType :: 
    { _module.__default.Iterates(_module._default.Iterates$A, $LS($ly), f#0, M#0) } 
    _module.__default.Iterates#canCall(_module._default.Iterates$A, f#0, M#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(f#0, 
            Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Iterates$A)))
           && $Is(M#0, Tclass._module.LList(_module._default.Iterates$A)))
       ==> _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Iterates$A), f#0, $Box(M#0))
         && _module.__default.Iterates#canCall(_module._default.Iterates$A, 
          f#0, 
          $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Iterates$A), f#0, $Box(M#0))): DatatypeType)
         && _module.__default.Iterates(_module._default.Iterates$A, $LS($ly), f#0, M#0)
           == #_module.LList.Cons($Box(M#0), 
            _module.__default.Iterates(_module._default.Iterates$A, 
              $ly, 
              f#0, 
              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Iterates$A), f#0, $Box(M#0))): DatatypeType)));
}

function _module.__default.Iterates#canCall(_module._default.Iterates$A: Ty, f#0: DatatypeType, M#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.Iterates$A: Ty, 
    $ly: LayerType, 
    f#0: DatatypeType, 
    M#0: DatatypeType :: 
  { _module.__default.Iterates(_module._default.Iterates$A, $LS($ly), f#0, M#0) } 
  _module.__default.Iterates(_module._default.Iterates$A, $LS($ly), f#0, M#0)
     == _module.__default.Iterates(_module._default.Iterates$A, $ly, f#0, M#0));

// fuel synonym axiom
axiom (forall _module._default.Iterates$A: Ty, 
    $ly: LayerType, 
    f#0: DatatypeType, 
    M#0: DatatypeType :: 
  { _module.__default.Iterates(_module._default.Iterates$A, AsFuelBottom($ly), f#0, M#0) } 
  _module.__default.Iterates(_module._default.Iterates$A, $ly, f#0, M#0)
     == _module.__default.Iterates(_module._default.Iterates$A, $LZ, f#0, M#0));

function _module.__default.Iterates#requires(Ty, LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.Iterates
axiom (forall _module._default.Iterates$A: Ty, 
    $ly: LayerType, 
    f#0: DatatypeType, 
    M#0: DatatypeType :: 
  { _module.__default.Iterates#requires(_module._default.Iterates$A, $ly, f#0, M#0) } 
  $Is(f#0, 
        Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Iterates$A)))
       && $Is(M#0, Tclass._module.LList(_module._default.Iterates$A))
     ==> _module.__default.Iterates#requires(_module._default.Iterates$A, $ly, f#0, M#0)
       == true);

procedure {:verboseName "Iterates (well-formedness)"} CheckWellformed$$_module.__default.Iterates(_module._default.Iterates$A: Ty, 
    f#0: DatatypeType
       where $Is(f#0, 
        Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Iterates$A))), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.LList(_module._default.Iterates$A)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Eq24 (well-formedness)"} CheckWellFormed$$_module.__default.Eq24(_module._default.Eq24$A: Ty, 
    f#0: DatatypeType
       where $Is(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24$A)))
         && $IsAlloc(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.LList(_module._default.Eq24$A))
         && $IsAlloc(M#0, Tclass._module.LList(_module._default.Eq24$A), $Heap)
         && $IsA#_module.LList(M#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Eq24 (call)"} Call$$_module.__default.Eq24(_module._default.Eq24$A: Ty, 
    f#0: DatatypeType
       where $Is(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24$A)))
         && $IsAlloc(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.LList(_module._default.Eq24$A))
         && $IsAlloc(M#0, Tclass._module.LList(_module._default.Eq24$A), $Heap)
         && $IsA#_module.LList(M#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.LList(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24$A), 
        $LS($LZ), 
        f#0, 
        _module.__default.Iterates(_module._default.Eq24$A, $LS($LZ), f#0, M#0)))
     && $IsA#_module.LList(_module.__default.Iterates(_module._default.Eq24$A, 
        $LS($LZ), 
        f#0, 
        $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24$A), f#0, $Box(M#0))): DatatypeType))
     && 
    _module.__default.Iterates#canCall(_module._default.Eq24$A, f#0, M#0)
     && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24$A), 
      f#0, 
      _module.__default.Iterates(_module._default.Eq24$A, $LS($LZ), f#0, M#0))
     && 
    _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24$A), f#0, $Box(M#0))
     && _module.__default.Iterates#canCall(_module._default.Eq24$A, 
      f#0, 
      $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24$A), f#0, $Box(M#0))): DatatypeType);
  ensures {:id "id40"} $Eq#_module.LList(Tclass._module.LList(_module._default.Eq24$A), 
    Tclass._module.LList(_module._default.Eq24$A), 
    $LS($LS($LZ)), 
    _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24$A), 
      $LS($LS($LZ)), 
      f#0, 
      _module.__default.Iterates(_module._default.Eq24$A, $LS($LS($LZ)), f#0, M#0)), 
    _module.__default.Iterates(_module._default.Eq24$A, 
      $LS($LS($LZ)), 
      f#0, 
      $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24$A), f#0, $Box(M#0))): DatatypeType));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Eq24# (co-call)"} CoCall$$_module.__default.Eq24_h(_module._default.Eq24#$A: Ty, 
    _k#0: Box, 
    f#1: DatatypeType
       where $Is(f#1, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)))
         && $IsAlloc(f#1, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#1), 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.LList(_module._default.Eq24#$A))
         && $IsAlloc(M#1, Tclass._module.LList(_module._default.Eq24#$A), $Heap)
         && $IsA#_module.LList(M#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Iterates#canCall(_module._default.Eq24#$A, f#1, M#1)
     && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
      f#1, 
      _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#1, M#1))
     && 
    _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
     && _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
      f#1, 
      $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType);
  free ensures {:id "id41"} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
    Tclass._module.LList(_module._default.Eq24#$A), 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
      $LS($LZ), 
      f#1, 
      _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#1, M#1)), 
    _module.__default.Iterates(_module._default.Eq24#$A, 
      $LS($LZ), 
      f#1, 
      $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Eq24# (correctness)"} Impl$$_module.__default.Eq24_h(_module._default.Eq24#$A: Ty, 
    _k#0: Box, 
    f#1: DatatypeType
       where $Is(f#1, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)))
         && $IsAlloc(f#1, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#1), 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.LList(_module._default.Eq24#$A))
         && $IsAlloc(M#1, Tclass._module.LList(_module._default.Eq24#$A), $Heap)
         && $IsA#_module.LList(M#1))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Iterates#canCall(_module._default.Eq24#$A, f#1, M#1)
     && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
      f#1, 
      _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#1, M#1))
     && 
    _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
     && _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
      f#1, 
      $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType);
  ensures {:id "id42"} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
      Tclass._module.LList(_module._default.Eq24#$A), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
        $LS($LZ), 
        f#1, 
        _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#1, M#1)), 
      _module.__default.Iterates(_module._default.Eq24#$A, 
        $LS($LZ), 
        f#1, 
        $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.LList.Nil_q(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
          $LS($LS($LZ)), 
          f#1, 
          _module.__default.Iterates(_module._default.Eq24#$A, $LS($LS($LZ)), f#1, M#1)))
       ==> _module.LList.Nil_q(_module.__default.Iterates(_module._default.Eq24#$A, 
          $LS($LS($LZ)), 
          f#1, 
          $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)));
  ensures {:id "id43"} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
      Tclass._module.LList(_module._default.Eq24#$A), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
        $LS($LZ), 
        f#1, 
        _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#1, M#1)), 
      _module.__default.Iterates(_module._default.Eq24#$A, 
        $LS($LZ), 
        f#1, 
        $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.LList.Cons_q(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
          $LS($LS($LZ)), 
          f#1, 
          _module.__default.Iterates(_module._default.Eq24#$A, $LS($LS($LZ)), f#1, M#1)))
       ==> _module.LList.Cons_q(_module.__default.Iterates(_module._default.Eq24#$A, 
            $LS($LS($LZ)), 
            f#1, 
            $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))
         && 
        $Eq#_module.LList(_module._default.Eq24#$A, 
          _module._default.Eq24#$A, 
          $LS($LS($LZ)), 
          $Unbox(_module.LList.head(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                $LS($LS($LZ)), 
                f#1, 
                _module.__default.Iterates(_module._default.Eq24#$A, $LS($LS($LZ)), f#1, M#1)))): DatatypeType, 
          $Unbox(_module.LList.head(_module.__default.Iterates(_module._default.Eq24#$A, 
                $LS($LS($LZ)), 
                f#1, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))): DatatypeType)
         && $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
          Tclass._module.LList(_module._default.Eq24#$A), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.LList.tail(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
              $LS($LS($LZ)), 
              f#1, 
              _module.__default.Iterates(_module._default.Eq24#$A, $LS($LS($LZ)), f#1, M#1))), 
          _module.LList.tail(_module.__default.Iterates(_module._default.Eq24#$A, 
              $LS($LS($LZ)), 
              f#1, 
              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))));
  ensures {:id "id44"} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
      Tclass._module.LList(_module._default.Eq24#$A), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
        $LS($LZ), 
        f#1, 
        _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#1, M#1)), 
      _module.__default.Iterates(_module._default.Eq24#$A, 
        $LS($LZ), 
        f#1, 
        $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.LList.Nil_q(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
              $LS($LS($LZ)), 
              f#1, 
              _module.__default.Iterates(_module._default.Eq24#$A, $LS($LS($LZ)), f#1, M#1)))
           ==> _module.LList.Nil_q(_module.__default.Iterates(_module._default.Eq24#$A, 
              $LS($LS($LZ)), 
              f#1, 
              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)))
         && (_module.LList.Cons_q(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
              $LS($LS($LZ)), 
              f#1, 
              _module.__default.Iterates(_module._default.Eq24#$A, $LS($LS($LZ)), f#1, M#1)))
           ==> _module.LList.Cons_q(_module.__default.Iterates(_module._default.Eq24#$A, 
                $LS($LS($LZ)), 
                f#1, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))
             && 
            $Eq#_module.LList(_module._default.Eq24#$A, 
              _module._default.Eq24#$A, 
              $LS($LS($LZ)), 
              $Unbox(_module.LList.head(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                    $LS($LS($LZ)), 
                    f#1, 
                    _module.__default.Iterates(_module._default.Eq24#$A, $LS($LS($LZ)), f#1, M#1)))): DatatypeType, 
              $Unbox(_module.LList.head(_module.__default.Iterates(_module._default.Eq24#$A, 
                    $LS($LS($LZ)), 
                    f#1, 
                    $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))): DatatypeType)
             && $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
              Tclass._module.LList(_module._default.Eq24#$A), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.LList.tail(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                  $LS($LS($LZ)), 
                  f#1, 
                  _module.__default.Iterates(_module._default.Eq24#$A, $LS($LS($LZ)), f#1, M#1))), 
              _module.LList.tail(_module.__default.Iterates(_module._default.Eq24#$A, 
                  $LS($LS($LZ)), 
                  f#1, 
                  $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
        Tclass._module.LList(_module._default.Eq24#$A), 
        $LS($LS($LZ)), 
        _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
          $LS($LZ), 
          f#1, 
          _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#1, M#1)), 
        _module.__default.Iterates(_module._default.Eq24#$A, 
          $LS($LZ), 
          f#1, 
          $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Eq24# (correctness)"} Impl$$_module.__default.Eq24_h(_module._default.Eq24#$A: Ty, _k#0: Box, f#1: DatatypeType, M#1: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##f#4: DatatypeType;
  var ##argument#1: DatatypeType;
  var ##f#5: DatatypeType;
  var ##M#2: DatatypeType;
  var ##f#6: DatatypeType;
  var ##argument#2: DatatypeType;
  var ##f#7: DatatypeType;
  var ##argument#3: DatatypeType;
  var ##f#8: DatatypeType;
  var ##M#3: DatatypeType;
  var ##f#9: DatatypeType;
  var ##argument#4: DatatypeType;
  var ##f#10: DatatypeType;
  var ##argument#5: DatatypeType;
  var ##f#11: DatatypeType;
  var ##a#1: DatatypeType;
  var ##f#12: DatatypeType;
  var ##M#4: DatatypeType;
  var ##f#13: DatatypeType;
  var ##argument#6: DatatypeType;
  var ##f#14: DatatypeType;
  var ##a#2: DatatypeType;
  var ##f#15: DatatypeType;
  var ##M#5: DatatypeType;
  var ##f#16: DatatypeType;
  var ##argument#7: DatatypeType;
  var _k##0: Box;
  var f##0: DatatypeType;
  var M##0: DatatypeType;
  var ##f#17: DatatypeType;
  var ##argument#8: DatatypeType;
  var ##f#18: DatatypeType;
  var ##M#6: DatatypeType;
  var ##f#19: DatatypeType;
  var ##argument#9: DatatypeType;
  var ##f#20: DatatypeType;
  var ##argument#10: DatatypeType;
  var ##f#21: DatatypeType;
  var ##a#3: DatatypeType;
  var ##f#22: DatatypeType;
  var ##M#7: DatatypeType;
  var ##f#23: DatatypeType;
  var ##argument#11: DatatypeType;
  var ##f#24: DatatypeType;
  var ##argument#12: DatatypeType;
  var ##f#25: DatatypeType;
  var ##M#8: DatatypeType;
  var ##f#26: DatatypeType;
  var ##argument#13: DatatypeType;
  var ##f#27: DatatypeType;
  var ##argument#14: DatatypeType;
  var ##f#28: DatatypeType;
  var ##a#4: DatatypeType;
  var ##f#29: DatatypeType;
  var ##M#9: DatatypeType;
  var ##f#30: DatatypeType;
  var ##argument#15: DatatypeType;
  var ##f#31: DatatypeType;
  var ##argument#16: DatatypeType;
  var ##f#32: DatatypeType;
  var ##a#5: DatatypeType;
  var ##f#33: DatatypeType;
  var ##M#10: DatatypeType;
  var ##f#34: DatatypeType;
  var ##argument#17: DatatypeType;
  var ##f#35: DatatypeType;
  var ##a#6: DatatypeType;
  var ##f#36: DatatypeType;
  var ##M#11: DatatypeType;
  var ##f#37: DatatypeType;
  var ##a#7: DatatypeType;
  var ##f#38: DatatypeType;
  var ##M#12: DatatypeType;
  var ##f#39: DatatypeType;
  var ##argument#18: DatatypeType;
  var ##f#40: DatatypeType;
  var ##a#8: DatatypeType;
  var ##f#41: DatatypeType;
  var ##M#13: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Eq24#, Impl$$_module.__default.Eq24_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.FunctionHandle(f#1);
    assume $IsA#_module.LList(M#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#f0#0: DatatypeType, $ih#M0#0: DatatypeType :: 
      { $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
          Tclass._module.LList(_module._default.Eq24#$A), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
            $LS($LZ), 
            $ih#f0#0, 
            _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), $ih#f0#0, $ih#M0#0)), 
          _module.__default.Iterates(_module._default.Eq24#$A, 
            $LS($LZ), 
            $ih#f0#0, 
            $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), $ih#f0#0, $Box($ih#M0#0))): DatatypeType)) } 
      $Is($ih#f0#0, 
            Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)))
           && $Is($ih#M0#0, Tclass._module.LList(_module._default.Eq24#$A))
           && Lit(true)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0 && DtRank($ih#f0#0) < DtRank(f#1)))
         ==> $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
          Tclass._module.LList(_module._default.Eq24#$A), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
            $LS($LZ), 
            $ih#f0#0, 
            _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), $ih#f0#0, $ih#M0#0)), 
          _module.__default.Iterates(_module._default.Eq24#$A, 
            $LS($LZ), 
            $ih#f0#0, 
            $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), $ih#f0#0, $Box($ih#M0#0))): DatatypeType)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(69,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            ##f#40 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#40, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##f#41 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#41, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##M#13 := M#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#13, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.Eq24#$A, f#1, M#1);
            ##a#8 := _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#1, M#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#8, 
              Tclass._module.LList(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
              f#1, 
              _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#1, M#1));
            assume _module.__default.Iterates#canCall(_module._default.Eq24#$A, f#1, M#1)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
                f#1, 
                _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#1, M#1));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            ##f#35 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#35, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##f#36 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#36, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##M#11 := M#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#11, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.Eq24#$A, f#1, M#1);
            ##a#6 := _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#1, M#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#6, 
              Tclass._module.LList(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
              f#1, 
              _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#1, M#1));
            assume _module.__default.Iterates#canCall(_module._default.Eq24#$A, f#1, M#1)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
                f#1, 
                _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#1, M#1));
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            ##f#37 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#37, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##f#38 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#38, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##f#39 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#39, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##argument#18 := M#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##argument#18, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
            ##M#12 := $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#12, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
              f#1, 
              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType);
            ##a#7 := #_module.LList.Cons($Box(M#1), 
              _module.__default.Iterates(_module._default.Eq24#$A, 
                $LS($LZ), 
                f#1, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType));
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#7, 
              Tclass._module.LList(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
              f#1, 
              #_module.LList.Cons($Box(M#1), 
                _module.__default.Iterates(_module._default.Eq24#$A, 
                  $LS($LZ), 
                  f#1, 
                  $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)));
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
               && _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
                f#1, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
                f#1, 
                #_module.LList.Cons($Box(M#1), 
                  _module.__default.Iterates(_module._default.Eq24#$A, 
                    $LS($LZ), 
                    f#1, 
                    $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)));
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            assert {:id "id59"} {:subsumption 0} $Eq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
              Tclass._module.LList(_module._default.Eq24#$A), 
              $LS($LS($LZ)), 
              _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                $LS($LS($LZ)), 
                f#1, 
                _module.__default.Iterates(_module._default.Eq24#$A, $LS($LS($LZ)), f#1, M#1)), 
              _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                $LS($LS($LZ)), 
                f#1, 
                #_module.LList.Cons($Box(M#1), 
                  _module.__default.Iterates(_module._default.Eq24#$A, 
                    $LS($LS($LZ)), 
                    f#1, 
                    $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            ##f#28 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#28, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##f#29 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#29, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##f#30 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#30, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##argument#15 := M#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##argument#15, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
            ##M#9 := $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#9, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
              f#1, 
              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType);
            ##a#4 := #_module.LList.Cons($Box(M#1), 
              _module.__default.Iterates(_module._default.Eq24#$A, 
                $LS($LZ), 
                f#1, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType));
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#4, 
              Tclass._module.LList(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
              f#1, 
              #_module.LList.Cons($Box(M#1), 
                _module.__default.Iterates(_module._default.Eq24#$A, 
                  $LS($LZ), 
                  f#1, 
                  $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)));
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
               && _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
                f#1, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
                f#1, 
                #_module.LList.Cons($Box(M#1), 
                  _module.__default.Iterates(_module._default.Eq24#$A, 
                    $LS($LZ), 
                    f#1, 
                    $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            ##f#31 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#31, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##argument#16 := M#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##argument#16, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
            ##f#32 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#32, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##f#33 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#33, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##f#34 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#34, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##argument#17 := M#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##argument#17, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
            ##M#10 := $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#10, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
              f#1, 
              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType);
            ##a#5 := _module.__default.Iterates(_module._default.Eq24#$A, 
              $LS($LZ), 
              f#1, 
              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#5, 
              Tclass._module.LList(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
              f#1, 
              _module.__default.Iterates(_module._default.Eq24#$A, 
                $LS($LZ), 
                f#1, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType));
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
               && 
              _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
               && _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
                f#1, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
                f#1, 
                _module.__default.Iterates(_module._default.Eq24#$A, 
                  $LS($LZ), 
                  f#1, 
                  $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType));
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            assert {:id "id58"} {:subsumption 0} $Eq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
              Tclass._module.LList(_module._default.Eq24#$A), 
              $LS($LS($LZ)), 
              _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                $LS($LS($LZ)), 
                f#1, 
                #_module.LList.Cons($Box(M#1), 
                  _module.__default.Iterates(_module._default.Eq24#$A, 
                    $LS($LS($LZ)), 
                    f#1, 
                    $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))), 
              #_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                  $LS($LS($LZ)), 
                  f#1, 
                  _module.__default.Iterates(_module._default.Eq24#$A, 
                    $LS($LS($LZ)), 
                    f#1, 
                    $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            ##f#10 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#10, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##argument#5 := M#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##argument#5, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
            ##f#11 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#11, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##f#12 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#12, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##f#13 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#13, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##argument#6 := M#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##argument#6, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
            ##M#4 := $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#4, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
              f#1, 
              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType);
            ##a#1 := _module.__default.Iterates(_module._default.Eq24#$A, 
              $LS($LZ), 
              f#1, 
              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, 
              Tclass._module.LList(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
              f#1, 
              _module.__default.Iterates(_module._default.Eq24#$A, 
                $LS($LZ), 
                f#1, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType));
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
               && 
              _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
               && _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
                f#1, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
                f#1, 
                _module.__default.Iterates(_module._default.Eq24#$A, 
                  $LS($LZ), 
                  f#1, 
                  $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType));
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(75,7)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(75,7)
                ##f#21 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#21, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
                  $Heap);
                ##f#22 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#22, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
                  $Heap);
                ##f#23 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#23, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
                  $Heap);
                ##argument#11 := M#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##argument#11, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
                assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
                ##M#7 := $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType;
                // assume allocatedness for argument to function
                assume $IsAlloc(##M#7, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
                assume _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
                  f#1, 
                  $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType);
                ##a#3 := _module.__default.Iterates(_module._default.Eq24#$A, 
                  $LS($LZ), 
                  f#1, 
                  $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#3, 
                  Tclass._module.LList(Tclass._module.LList(_module._default.Eq24#$A)), 
                  $Heap);
                assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
                  f#1, 
                  _module.__default.Iterates(_module._default.Eq24#$A, 
                    $LS($LZ), 
                    f#1, 
                    $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType));
                assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
                   && _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
                    f#1, 
                    $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)
                   && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
                    f#1, 
                    _module.__default.Iterates(_module._default.Eq24#$A, 
                      $LS($LZ), 
                      f#1, 
                      $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(75,7)
                ##f#14 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#14, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
                  $Heap);
                ##f#15 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#15, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
                  $Heap);
                ##f#16 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#16, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
                  $Heap);
                ##argument#7 := M#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##argument#7, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
                assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
                ##M#5 := $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType;
                // assume allocatedness for argument to function
                assume $IsAlloc(##M#5, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
                assume _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
                  f#1, 
                  $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType);
                ##a#2 := _module.__default.Iterates(_module._default.Eq24#$A, 
                  $LS($LZ), 
                  f#1, 
                  $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType);
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#2, 
                  Tclass._module.LList(Tclass._module.LList(_module._default.Eq24#$A)), 
                  $Heap);
                assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
                  f#1, 
                  _module.__default.Iterates(_module._default.Eq24#$A, 
                    $LS($LZ), 
                    f#1, 
                    $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType));
                assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
                   && _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
                    f#1, 
                    $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)
                   && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
                    f#1, 
                    _module.__default.Iterates(_module._default.Eq24#$A, 
                      $LS($LZ), 
                      f#1, 
                      $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType));
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(75,7)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(77,23)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id46"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id47"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                f##0 := f#1;
                ##f#17 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#17, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
                  $Heap);
                ##argument#8 := M#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##argument#8, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
                assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
                assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
                // ProcessCallStmt: CheckSubrange
                M##0 := $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType;
                call {:id "id48"} CoCall$$_module.__default.Eq24_h(_module._default.Eq24#$A, _k##0, f##0, M##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(75,7)
                assert {:id "id49"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id50"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                ##f#18 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#18, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
                  $Heap);
                ##f#19 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#19, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
                  $Heap);
                ##f#20 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#20, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
                  $Heap);
                ##argument#10 := M#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##argument#10, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
                assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
                ##argument#9 := $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType;
                // assume allocatedness for argument to function
                assume $IsAlloc(##argument#9, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
                assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
                  f#1, 
                  _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)));
                ##M#6 := $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                    f#1, 
                    _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType;
                // assume allocatedness for argument to function
                assume $IsAlloc(##M#6, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
                assume _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
                  f#1, 
                  $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                      f#1, 
                      _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType);
                assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
                   && _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
                    f#1, 
                    _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))
                   && _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
                    f#1, 
                    $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                        f#1, 
                        _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType);
                // ----- assert line0 ==# line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(75,7)
                assert {:id "id51"} {:subsumption 0} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
                    Tclass._module.LList(_module._default.Eq24#$A), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $LS($LS($LZ)), 
                    _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                      $LS($LZ), 
                      f#1, 
                      _module.__default.Iterates(_module._default.Eq24#$A, 
                        $LS($LZ), 
                        f#1, 
                        $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)), 
                    _module.__default.Iterates(_module._default.Eq24#$A, 
                      $LS($LZ), 
                      f#1, 
                      $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                          f#1, 
                          _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType))
                   || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                     ==> 
                    _module.LList.Nil_q(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                        $LS($LS($LZ)), 
                        f#1, 
                        _module.__default.Iterates(_module._default.Eq24#$A, 
                          $LS($LS($LZ)), 
                          f#1, 
                          $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)))
                     ==> _module.LList.Nil_q(_module.__default.Iterates(_module._default.Eq24#$A, 
                        $LS($LS($LZ)), 
                        f#1, 
                        $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                            f#1, 
                            _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType)));
                assert {:id "id52"} {:subsumption 0} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
                    Tclass._module.LList(_module._default.Eq24#$A), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $LS($LS($LZ)), 
                    _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                      $LS($LZ), 
                      f#1, 
                      _module.__default.Iterates(_module._default.Eq24#$A, 
                        $LS($LZ), 
                        f#1, 
                        $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)), 
                    _module.__default.Iterates(_module._default.Eq24#$A, 
                      $LS($LZ), 
                      f#1, 
                      $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                          f#1, 
                          _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType))
                   || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                     ==> 
                    _module.LList.Cons_q(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                        $LS($LS($LZ)), 
                        f#1, 
                        _module.__default.Iterates(_module._default.Eq24#$A, 
                          $LS($LS($LZ)), 
                          f#1, 
                          $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)))
                     ==> _module.LList.Cons_q(_module.__default.Iterates(_module._default.Eq24#$A, 
                          $LS($LS($LZ)), 
                          f#1, 
                          $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                              f#1, 
                              _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType))
                       && 
                      $Eq#_module.LList(_module._default.Eq24#$A, 
                        _module._default.Eq24#$A, 
                        $LS($LS($LZ)), 
                        $Unbox(_module.LList.head(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                              $LS($LS($LZ)), 
                              f#1, 
                              _module.__default.Iterates(_module._default.Eq24#$A, 
                                $LS($LS($LZ)), 
                                f#1, 
                                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)))): DatatypeType, 
                        $Unbox(_module.LList.head(_module.__default.Iterates(_module._default.Eq24#$A, 
                              $LS($LS($LZ)), 
                              f#1, 
                              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                                  f#1, 
                                  _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType))): DatatypeType)
                       && $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
                        Tclass._module.LList(_module._default.Eq24#$A), 
                        ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                        $LS($LS($LZ)), 
                        _module.LList.tail(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                            $LS($LS($LZ)), 
                            f#1, 
                            _module.__default.Iterates(_module._default.Eq24#$A, 
                              $LS($LS($LZ)), 
                              f#1, 
                              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))), 
                        _module.LList.tail(_module.__default.Iterates(_module._default.Eq24#$A, 
                            $LS($LS($LZ)), 
                            f#1, 
                            $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                                f#1, 
                                _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType))));
                assert {:id "id53"} {:subsumption 0} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
                    Tclass._module.LList(_module._default.Eq24#$A), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $LS($LS($LZ)), 
                    _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                      $LS($LZ), 
                      f#1, 
                      _module.__default.Iterates(_module._default.Eq24#$A, 
                        $LS($LZ), 
                        f#1, 
                        $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)), 
                    _module.__default.Iterates(_module._default.Eq24#$A, 
                      $LS($LZ), 
                      f#1, 
                      $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                          f#1, 
                          _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType))
                   || 
                  (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                     ==> (_module.LList.Nil_q(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                            $LS($LS($LZ)), 
                            f#1, 
                            _module.__default.Iterates(_module._default.Eq24#$A, 
                              $LS($LS($LZ)), 
                              f#1, 
                              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)))
                         ==> _module.LList.Nil_q(_module.__default.Iterates(_module._default.Eq24#$A, 
                            $LS($LS($LZ)), 
                            f#1, 
                            $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                                f#1, 
                                _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType)))
                       && (_module.LList.Cons_q(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                            $LS($LS($LZ)), 
                            f#1, 
                            _module.__default.Iterates(_module._default.Eq24#$A, 
                              $LS($LS($LZ)), 
                              f#1, 
                              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)))
                         ==> _module.LList.Cons_q(_module.__default.Iterates(_module._default.Eq24#$A, 
                              $LS($LS($LZ)), 
                              f#1, 
                              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                                  f#1, 
                                  _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType))
                           && 
                          $Eq#_module.LList(_module._default.Eq24#$A, 
                            _module._default.Eq24#$A, 
                            $LS($LS($LZ)), 
                            $Unbox(_module.LList.head(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                                  $LS($LS($LZ)), 
                                  f#1, 
                                  _module.__default.Iterates(_module._default.Eq24#$A, 
                                    $LS($LS($LZ)), 
                                    f#1, 
                                    $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)))): DatatypeType, 
                            $Unbox(_module.LList.head(_module.__default.Iterates(_module._default.Eq24#$A, 
                                  $LS($LS($LZ)), 
                                  f#1, 
                                  $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                                      f#1, 
                                      _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType))): DatatypeType)
                           && $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
                            Tclass._module.LList(_module._default.Eq24#$A), 
                            ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                            $LS($LS($LZ)), 
                            _module.LList.tail(_module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                                $LS($LS($LZ)), 
                                f#1, 
                                _module.__default.Iterates(_module._default.Eq24#$A, 
                                  $LS($LS($LZ)), 
                                  f#1, 
                                  $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))), 
                            _module.LList.tail(_module.__default.Iterates(_module._default.Eq24#$A, 
                                $LS($LS($LZ)), 
                                f#1, 
                                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                                    f#1, 
                                    _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType)))))
                   || (ORD#Minus(_k#0, ORD#FromNat(1)) != ORD#FromNat(0)
                       && ORD#IsLimit(ORD#Minus(_k#0, ORD#FromNat(1)))
                     ==> $Eq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
                      Tclass._module.LList(_module._default.Eq24#$A), 
                      $LS($LS($LZ)), 
                      _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                        $LS($LZ), 
                        f#1, 
                        _module.__default.Iterates(_module._default.Eq24#$A, 
                          $LS($LZ), 
                          f#1, 
                          $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)), 
                      _module.__default.Iterates(_module._default.Eq24#$A, 
                        $LS($LZ), 
                        f#1, 
                        $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                            f#1, 
                            _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType)));
                assume false;
            }

            assume {:id "id54"} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
              Tclass._module.LList(_module._default.Eq24#$A), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                $LS($LZ), 
                f#1, 
                _module.__default.Iterates(_module._default.Eq24#$A, 
                  $LS($LZ), 
                  f#1, 
                  $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)), 
              _module.__default.Iterates(_module._default.Eq24#$A, 
                $LS($LZ), 
                f#1, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                    f#1, 
                    _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType));
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            assume true;
            ##f#24 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#24, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##argument#12 := M#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##argument#12, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
            ##f#25 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#25, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##f#26 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#26, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##f#27 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#27, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##argument#14 := M#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##argument#14, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
            ##argument#13 := $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##argument#13, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
              f#1, 
              _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)));
            ##M#8 := $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                f#1, 
                _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#8, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
              f#1, 
              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                  f#1, 
                  _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
               && 
              _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
               && _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
                f#1, 
                _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))
               && _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
                f#1, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                    f#1, 
                    _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType);
            // ----- assert line2 ==# line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            assert {:id "id55"} {:subsumption 0} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
                Tclass._module.LList(_module._default.Eq24#$A), 
                _k#0, 
                $LS($LS($LZ)), 
                #_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                  _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                    $LS($LZ), 
                    f#1, 
                    _module.__default.Iterates(_module._default.Eq24#$A, 
                      $LS($LZ), 
                      f#1, 
                      $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))), 
                #_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                  _module.__default.Iterates(_module._default.Eq24#$A, 
                    $LS($LZ), 
                    f#1, 
                    $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                        f#1, 
                        _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType)))
               || (0 < ORD#Offset(_k#0)
                 ==> 
                _module.LList.Nil_q(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                    _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                      $LS($LS($LZ)), 
                      f#1, 
                      _module.__default.Iterates(_module._default.Eq24#$A, 
                        $LS($LS($LZ)), 
                        f#1, 
                        $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))))
                 ==> _module.LList.Nil_q(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                    _module.__default.Iterates(_module._default.Eq24#$A, 
                      $LS($LS($LZ)), 
                      f#1, 
                      $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                          f#1, 
                          _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType))));
            assert {:id "id56"} {:subsumption 0} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
                Tclass._module.LList(_module._default.Eq24#$A), 
                _k#0, 
                $LS($LS($LZ)), 
                #_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                  _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                    $LS($LZ), 
                    f#1, 
                    _module.__default.Iterates(_module._default.Eq24#$A, 
                      $LS($LZ), 
                      f#1, 
                      $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))), 
                #_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                  _module.__default.Iterates(_module._default.Eq24#$A, 
                    $LS($LZ), 
                    f#1, 
                    $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                        f#1, 
                        _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType)))
               || (0 < ORD#Offset(_k#0)
                 ==> 
                _module.LList.Cons_q(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                    _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                      $LS($LS($LZ)), 
                      f#1, 
                      _module.__default.Iterates(_module._default.Eq24#$A, 
                        $LS($LS($LZ)), 
                        f#1, 
                        $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))))
                 ==> _module.LList.Cons_q(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                      _module.__default.Iterates(_module._default.Eq24#$A, 
                        $LS($LS($LZ)), 
                        f#1, 
                        $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                            f#1, 
                            _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType)))
                   && 
                  $Eq#_module.LList(_module._default.Eq24#$A, 
                    _module._default.Eq24#$A, 
                    $LS($LS($LZ)), 
                    $Unbox(_module.LList.head(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                          _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                            $LS($LS($LZ)), 
                            f#1, 
                            _module.__default.Iterates(_module._default.Eq24#$A, 
                              $LS($LS($LZ)), 
                              f#1, 
                              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))))): DatatypeType, 
                    $Unbox(_module.LList.head(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                          _module.__default.Iterates(_module._default.Eq24#$A, 
                            $LS($LS($LZ)), 
                            f#1, 
                            $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                                f#1, 
                                _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType)))): DatatypeType)
                   && $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
                    Tclass._module.LList(_module._default.Eq24#$A), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $LS($LS($LZ)), 
                    _module.LList.tail(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                        _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                          $LS($LS($LZ)), 
                          f#1, 
                          _module.__default.Iterates(_module._default.Eq24#$A, 
                            $LS($LS($LZ)), 
                            f#1, 
                            $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)))), 
                    _module.LList.tail(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                        _module.__default.Iterates(_module._default.Eq24#$A, 
                          $LS($LS($LZ)), 
                          f#1, 
                          $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                              f#1, 
                              _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType)))));
            assert {:id "id57"} {:subsumption 0} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
                Tclass._module.LList(_module._default.Eq24#$A), 
                _k#0, 
                $LS($LS($LZ)), 
                #_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                  _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                    $LS($LZ), 
                    f#1, 
                    _module.__default.Iterates(_module._default.Eq24#$A, 
                      $LS($LZ), 
                      f#1, 
                      $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))), 
                #_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                  _module.__default.Iterates(_module._default.Eq24#$A, 
                    $LS($LZ), 
                    f#1, 
                    $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                        f#1, 
                        _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType)))
               || 
              (0 < ORD#Offset(_k#0)
                 ==> (_module.LList.Nil_q(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                        _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                          $LS($LS($LZ)), 
                          f#1, 
                          _module.__default.Iterates(_module._default.Eq24#$A, 
                            $LS($LS($LZ)), 
                            f#1, 
                            $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))))
                     ==> _module.LList.Nil_q(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                        _module.__default.Iterates(_module._default.Eq24#$A, 
                          $LS($LS($LZ)), 
                          f#1, 
                          $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                              f#1, 
                              _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType))))
                   && (_module.LList.Cons_q(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                        _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                          $LS($LS($LZ)), 
                          f#1, 
                          _module.__default.Iterates(_module._default.Eq24#$A, 
                            $LS($LS($LZ)), 
                            f#1, 
                            $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))))
                     ==> _module.LList.Cons_q(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                          _module.__default.Iterates(_module._default.Eq24#$A, 
                            $LS($LS($LZ)), 
                            f#1, 
                            $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                                f#1, 
                                _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType)))
                       && 
                      $Eq#_module.LList(_module._default.Eq24#$A, 
                        _module._default.Eq24#$A, 
                        $LS($LS($LZ)), 
                        $Unbox(_module.LList.head(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                              _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                                $LS($LS($LZ)), 
                                f#1, 
                                _module.__default.Iterates(_module._default.Eq24#$A, 
                                  $LS($LS($LZ)), 
                                  f#1, 
                                  $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))))): DatatypeType, 
                        $Unbox(_module.LList.head(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                              _module.__default.Iterates(_module._default.Eq24#$A, 
                                $LS($LS($LZ)), 
                                f#1, 
                                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                                    f#1, 
                                    _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType)))): DatatypeType)
                       && $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
                        Tclass._module.LList(_module._default.Eq24#$A), 
                        ORD#Minus(_k#0, ORD#FromNat(1)), 
                        $LS($LS($LZ)), 
                        _module.LList.tail(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                            _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                              $LS($LS($LZ)), 
                              f#1, 
                              _module.__default.Iterates(_module._default.Eq24#$A, 
                                $LS($LS($LZ)), 
                                f#1, 
                                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType)))), 
                        _module.LList.tail(#_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                            _module.__default.Iterates(_module._default.Eq24#$A, 
                              $LS($LS($LZ)), 
                              f#1, 
                              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                                  f#1, 
                                  _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType))))))
               || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
                 ==> $Eq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
                  Tclass._module.LList(_module._default.Eq24#$A), 
                  $LS($LS($LZ)), 
                  #_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                    _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                      $LS($LZ), 
                      f#1, 
                      _module.__default.Iterates(_module._default.Eq24#$A, 
                        $LS($LZ), 
                        f#1, 
                        $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType))), 
                  #_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                    _module.__default.Iterates(_module._default.Eq24#$A, 
                      $LS($LZ), 
                      f#1, 
                      $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                          f#1, 
                          _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            ##f#4 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#4, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##argument#1 := M#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##argument#1, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
            ##f#5 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#5, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##f#6 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#6, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##f#7 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#7, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##argument#3 := M#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##argument#3, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
            ##argument#2 := $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##argument#2, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
              f#1, 
              _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)));
            ##M#2 := $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                f#1, 
                _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#2, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
              f#1, 
              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                  f#1, 
                  _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
               && 
              _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
               && _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), 
                f#1, 
                _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))
               && _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
                f#1, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                    f#1, 
                    _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType);
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            ##f#8 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#8, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##f#9 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#9, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)), 
              $Heap);
            ##argument#4 := M#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##argument#4, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1));
            ##M#3 := $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#3, Tclass._module.LList(_module._default.Eq24#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
              f#1, 
              $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType);
            assume _module.__default.Apply#canCall(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))
               && _module.__default.Iterates#canCall(_module._default.Eq24#$A, 
                f#1, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType);
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(70,3)
            assert {:id "id45"} {:subsumption 0} $Eq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
              Tclass._module.LList(_module._default.Eq24#$A), 
              $LS($LS($LZ)), 
              #_module.LList.Cons(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)), 
                _module.__default.Iterates(_module._default.Eq24#$A, 
                  $LS($LS($LZ)), 
                  f#1, 
                  $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), 
                      f#1, 
                      _module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1)))): DatatypeType)), 
              _module.__default.Iterates(_module._default.Eq24#$A, 
                $LS($LS($LZ)), 
                f#1, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType));
            assume false;
        }

        assume {:id "id60"} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
          Tclass._module.LList(_module._default.Eq24#$A), 
          _k#0, 
          $LS($LS($LZ)), 
          _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
            $LS($LZ), 
            f#1, 
            _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#1, M#1)), 
          _module.__default.Iterates(_module._default.Eq24#$A, 
            $LS($LZ), 
            f#1, 
            $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#1, $Box(M#1))): DatatypeType));
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(69,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, f#2: DatatypeType, M#2: DatatypeType :: 
          { $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#2, $Box(M#2))): DatatypeType, ORD#Less(_k'#0, _k#0) } 
            { _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
              $LS($LZ), 
              f#2, 
              _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#2, M#2)), ORD#Less(_k'#0, _k#0) } 
          $Is(f#2, 
                Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Eq24#$A)))
               && $Is(M#2, Tclass._module.LList(_module._default.Eq24#$A))
               && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.LList(Tclass._module.LList(_module._default.Eq24#$A), 
              Tclass._module.LList(_module._default.Eq24#$A), 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.Lmap(Tclass._module.LList(_module._default.Eq24#$A), 
                $LS($LZ), 
                f#2, 
                _module.__default.Iterates(_module._default.Eq24#$A, $LS($LZ), f#2, M#2)), 
              _module.__default.Iterates(_module._default.Eq24#$A, 
                $LS($LZ), 
                f#2, 
                $Unbox(_module.__default.Apply(Tclass._module.LList(_module._default.Eq24#$A), f#2, $Box(M#2))): DatatypeType)));
    }
}



procedure {:verboseName "CorollaryEq24 (well-formedness)"} CheckWellFormed$$_module.__default.CorollaryEq24(_module._default.CorollaryEq24$A: Ty, 
    f#0: DatatypeType
       where $Is(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.CorollaryEq24$A)))
         && $IsAlloc(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.CorollaryEq24$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.LList(_module._default.CorollaryEq24$A))
         && $IsAlloc(M#0, Tclass._module.LList(_module._default.CorollaryEq24$A), $Heap)
         && $IsA#_module.LList(M#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CorollaryEq24 (call)"} Call$$_module.__default.CorollaryEq24(_module._default.CorollaryEq24$A: Ty, 
    f#0: DatatypeType
       where $Is(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.CorollaryEq24$A)))
         && $IsAlloc(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.CorollaryEq24$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.LList(_module._default.CorollaryEq24$A))
         && $IsAlloc(M#0, Tclass._module.LList(_module._default.CorollaryEq24$A), $Heap)
         && $IsA#_module.LList(M#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.LList(_module.__default.Iterates(_module._default.CorollaryEq24$A, $LS($LZ), f#0, M#0))
     && 
    _module.__default.Iterates#canCall(_module._default.CorollaryEq24$A, f#0, M#0)
     && 
    _module.__default.Iterates#canCall(_module._default.CorollaryEq24$A, f#0, M#0)
     && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.CorollaryEq24$A), 
      f#0, 
      _module.__default.Iterates(_module._default.CorollaryEq24$A, $LS($LZ), f#0, M#0));
  ensures {:id "id62"} $Eq#_module.LList(Tclass._module.LList(_module._default.CorollaryEq24$A), 
    Tclass._module.LList(_module._default.CorollaryEq24$A), 
    $LS($LS($LZ)), 
    _module.__default.Iterates(_module._default.CorollaryEq24$A, $LS($LS($LZ)), f#0, M#0), 
    #_module.LList.Cons($Box(M#0), 
      _module.__default.Lmap(Tclass._module.LList(_module._default.CorollaryEq24$A), 
        $LS($LS($LZ)), 
        f#0, 
        _module.__default.Iterates(_module._default.CorollaryEq24$A, $LS($LS($LZ)), f#0, M#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "CorollaryEq24 (correctness)"} Impl$$_module.__default.CorollaryEq24(_module._default.CorollaryEq24$A: Ty, 
    f#0: DatatypeType
       where $Is(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.CorollaryEq24$A)))
         && $IsAlloc(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.CorollaryEq24$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.LList(_module._default.CorollaryEq24$A))
         && $IsAlloc(M#0, Tclass._module.LList(_module._default.CorollaryEq24$A), $Heap)
         && $IsA#_module.LList(M#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.LList(_module.__default.Iterates(_module._default.CorollaryEq24$A, $LS($LZ), f#0, M#0))
     && 
    _module.__default.Iterates#canCall(_module._default.CorollaryEq24$A, f#0, M#0)
     && 
    _module.__default.Iterates#canCall(_module._default.CorollaryEq24$A, f#0, M#0)
     && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.CorollaryEq24$A), 
      f#0, 
      _module.__default.Iterates(_module._default.CorollaryEq24$A, $LS($LZ), f#0, M#0));
  ensures {:id "id63"} $Eq#_module.LList(Tclass._module.LList(_module._default.CorollaryEq24$A), 
    Tclass._module.LList(_module._default.CorollaryEq24$A), 
    $LS($LS($LZ)), 
    _module.__default.Iterates(_module._default.CorollaryEq24$A, $LS($LS($LZ)), f#0, M#0), 
    #_module.LList.Cons($Box(M#0), 
      _module.__default.Lmap(Tclass._module.LList(_module._default.CorollaryEq24$A), 
        $LS($LS($LZ)), 
        f#0, 
        _module.__default.Iterates(_module._default.CorollaryEq24$A, $LS($LS($LZ)), f#0, M#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CorollaryEq24 (correctness)"} Impl$$_module.__default.CorollaryEq24(_module._default.CorollaryEq24$A: Ty, f#0: DatatypeType, M#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var f##0: DatatypeType;
  var M##0: DatatypeType;

    // AddMethodImpl: CorollaryEq24, Impl$$_module.__default.CorollaryEq24
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.FunctionHandle(f#0);
    assume $IsA#_module.LList(M#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#f0#0: DatatypeType, $ih#M0#0: DatatypeType :: 
      { _module.__default.Iterates(_module._default.CorollaryEq24$A, $LS($LZ), $ih#f0#0, $ih#M0#0) } 
      $Is($ih#f0#0, 
            Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.CorollaryEq24$A)))
           && $Is($ih#M0#0, Tclass._module.LList(_module._default.CorollaryEq24$A))
           && Lit(true)
           && DtRank($ih#f0#0) < DtRank(f#0)
         ==> $Eq#_module.LList(Tclass._module.LList(_module._default.CorollaryEq24$A), 
          Tclass._module.LList(_module._default.CorollaryEq24$A), 
          $LS($LS($LZ)), 
          _module.__default.Iterates(_module._default.CorollaryEq24$A, $LS($LZ), $ih#f0#0, $ih#M0#0), 
          #_module.LList.Cons($Box($ih#M0#0), 
            _module.__default.Lmap(Tclass._module.LList(_module._default.CorollaryEq24$A), 
              $LS($LZ), 
              $ih#f0#0, 
              _module.__default.Iterates(_module._default.CorollaryEq24$A, $LS($LZ), $ih#f0#0, $ih#M0#0)))));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(89,7)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    f##0 := f#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    M##0 := M#0;
    call {:id "id64"} Call$$_module.__default.Eq24(_module._default.CorollaryEq24$A, f##0, M##0);
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for _module._default.h
function _module.__default.h(_module._default.h$A: Ty, f#0: DatatypeType, M#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.h
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.h$A: Ty, f#0: DatatypeType, M#0: DatatypeType :: 
    { _module.__default.h(_module._default.h$A, f#0, M#0) } 
    _module.__default.h#canCall(_module._default.h$A, f#0, M#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(f#0, Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.h$A)))
           && $Is(M#0, Tclass._module.LList(_module._default.h$A)))
       ==> $Is(_module.__default.h(_module._default.h$A, f#0, M#0), 
        Tclass._module.LList(Tclass._module.LList(_module._default.h$A))));
// alloc consequence axiom for _module.__default.h
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.h$A: Ty, f#0: DatatypeType, M#0: DatatypeType :: 
    { $IsAlloc(_module.__default.h(_module._default.h$A, f#0, M#0), 
        Tclass._module.LList(Tclass._module.LList(_module._default.h$A)), 
        $Heap) } 
    (_module.__default.h#canCall(_module._default.h$A, f#0, M#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(f#0, Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.h$A)))
             && $IsAlloc(f#0, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.h$A)), 
              $Heap)
             && 
            $Is(M#0, Tclass._module.LList(_module._default.h$A))
             && $IsAlloc(M#0, Tclass._module.LList(_module._default.h$A), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.h(_module._default.h$A, f#0, M#0), 
        Tclass._module.LList(Tclass._module.LList(_module._default.h$A)), 
        $Heap));
}

function _module.__default.h#canCall(_module._default.h$A: Ty, f#0: DatatypeType, M#0: DatatypeType) : bool;

function _module.__default.h#requires(Ty, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.h
axiom (forall _module._default.h$A: Ty, f#0: DatatypeType, M#0: DatatypeType :: 
  { _module.__default.h#requires(_module._default.h$A, f#0, M#0) } 
  $Is(f#0, Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.h$A)))
       && $Is(M#0, Tclass._module.LList(_module._default.h$A))
     ==> _module.__default.h#requires(_module._default.h$A, f#0, M#0) == true);

procedure {:verboseName "h (well-formedness)"} CheckWellformed$$_module.__default.h(_module._default.h$A: Ty, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.h$A))), 
    M#0: DatatypeType where $Is(M#0, Tclass._module.LList(_module._default.h$A)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Definition_h (well-formedness)"} CheckWellFormed$$_module.__default.Definition__h(_module._default.Definition_h$A: Ty, 
    f#0: DatatypeType
       where $Is(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Definition_h$A)))
         && $IsAlloc(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Definition_h$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.LList(_module._default.Definition_h$A))
         && $IsAlloc(M#0, Tclass._module.LList(_module._default.Definition_h$A), $Heap)
         && $IsA#_module.LList(M#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Definition_h (call)"} Call$$_module.__default.Definition__h(_module._default.Definition_h$A: Ty, 
    f#0: DatatypeType
       where $Is(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Definition_h$A)))
         && $IsAlloc(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Definition_h$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.LList(_module._default.Definition_h$A))
         && $IsAlloc(M#0, Tclass._module.LList(_module._default.Definition_h$A), $Heap)
         && $IsA#_module.LList(M#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.LList(_module.__default.h(_module._default.Definition_h$A, f#0, M#0))
     && 
    _module.__default.h#canCall(_module._default.Definition_h$A, f#0, M#0)
     && 
    _module.__default.h#canCall(_module._default.Definition_h$A, f#0, M#0)
     && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.Definition_h$A), 
      f#0, 
      _module.__default.h(_module._default.Definition_h$A, f#0, M#0));
  ensures {:id "id66"} $Eq#_module.LList(Tclass._module.LList(_module._default.Definition_h$A), 
    Tclass._module.LList(_module._default.Definition_h$A), 
    $LS($LS($LZ)), 
    _module.__default.h(_module._default.Definition_h$A, f#0, M#0), 
    #_module.LList.Cons($Box(M#0), 
      _module.__default.Lmap(Tclass._module.LList(_module._default.Definition_h$A), 
        $LS($LS($LZ)), 
        f#0, 
        _module.__default.h(_module._default.Definition_h$A, f#0, M#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



// function declaration for _module._default.Iter
function _module.__default.Iter(_module._default.Iter$A: Ty, 
    $ly: LayerType, 
    n#0: int, 
    f#0: DatatypeType, 
    arg#0: Box)
   : Box
uses {
// consequence axiom for _module.__default.Iter
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.Iter$A: Ty, 
      $ly: LayerType, 
      n#0: int, 
      f#0: DatatypeType, 
      arg#0: Box :: 
    { _module.__default.Iter(_module._default.Iter$A, $ly, n#0, f#0, arg#0) } 
    _module.__default.Iter#canCall(_module._default.Iter$A, n#0, f#0, arg#0)
         || (2 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(f#0, Tclass._module.FunctionHandle(_module._default.Iter$A))
           && $IsBox(arg#0, _module._default.Iter$A))
       ==> $IsBox(_module.__default.Iter(_module._default.Iter$A, $ly, n#0, f#0, arg#0), 
        _module._default.Iter$A));
// alloc consequence axiom for _module.__default.Iter
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.Iter$A: Ty, 
      $ly: LayerType, 
      n#0: int, 
      f#0: DatatypeType, 
      arg#0: Box :: 
    { $IsAllocBox(_module.__default.Iter(_module._default.Iter$A, $ly, n#0, f#0, arg#0), 
        _module._default.Iter$A, 
        $Heap) } 
    (_module.__default.Iter#canCall(_module._default.Iter$A, n#0, f#0, arg#0)
           || (2 < $FunctionContextHeight
             && 
            LitInt(0) <= n#0
             && 
            $Is(f#0, Tclass._module.FunctionHandle(_module._default.Iter$A))
             && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.Iter$A), $Heap)
             && 
            $IsBox(arg#0, _module._default.Iter$A)
             && $IsAllocBox(arg#0, _module._default.Iter$A, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.__default.Iter(_module._default.Iter$A, $ly, n#0, f#0, arg#0), 
        _module._default.Iter$A, 
        $Heap));
// definition axiom for _module.__default.Iter (revealed)
axiom {:id "id67"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.Iter$A: Ty, 
      $ly: LayerType, 
      n#0: int, 
      f#0: DatatypeType, 
      arg#0: Box :: 
    { _module.__default.Iter(_module._default.Iter$A, $LS($ly), n#0, f#0, arg#0) } 
    _module.__default.Iter#canCall(_module._default.Iter$A, n#0, f#0, arg#0)
         || (2 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(f#0, Tclass._module.FunctionHandle(_module._default.Iter$A))
           && $IsBox(arg#0, _module._default.Iter$A))
       ==> (n#0 != LitInt(0)
           ==> _module.__default.Iter#canCall(_module._default.Iter$A, n#0 - 1, f#0, arg#0)
             && _module.__default.Apply#canCall(_module._default.Iter$A, 
              f#0, 
              _module.__default.Iter(_module._default.Iter$A, $ly, n#0 - 1, f#0, arg#0)))
         && _module.__default.Iter(_module._default.Iter$A, $LS($ly), n#0, f#0, arg#0)
           == (if n#0 == LitInt(0)
             then arg#0
             else _module.__default.Apply(_module._default.Iter$A, 
              f#0, 
              _module.__default.Iter(_module._default.Iter$A, $ly, n#0 - 1, f#0, arg#0))));
// definition axiom for _module.__default.Iter for decreasing-related literals (revealed)
axiom {:id "id68"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.Iter$A: Ty, 
      $ly: LayerType, 
      n#0: int, 
      f#0: DatatypeType, 
      arg#0: Box :: 
    {:weight 3} { _module.__default.Iter(_module._default.Iter$A, $LS($ly), LitInt(n#0), Lit(f#0), arg#0) } 
    _module.__default.Iter#canCall(_module._default.Iter$A, LitInt(n#0), Lit(f#0), arg#0)
         || (2 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(f#0, Tclass._module.FunctionHandle(_module._default.Iter$A))
           && $IsBox(arg#0, _module._default.Iter$A))
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.__default.Iter#canCall(_module._default.Iter$A, LitInt(n#0 - 1), Lit(f#0), arg#0)
             && _module.__default.Apply#canCall(_module._default.Iter$A, 
              Lit(f#0), 
              _module.__default.Iter(_module._default.Iter$A, $LS($ly), LitInt(n#0 - 1), Lit(f#0), arg#0)))
         && _module.__default.Iter(_module._default.Iter$A, $LS($ly), LitInt(n#0), Lit(f#0), arg#0)
           == (if LitInt(n#0) == LitInt(0)
             then arg#0
             else _module.__default.Apply(_module._default.Iter$A, 
              Lit(f#0), 
              _module.__default.Iter(_module._default.Iter$A, $LS($ly), LitInt(n#0 - 1), Lit(f#0), arg#0))));
// definition axiom for _module.__default.Iter for all literals (revealed)
axiom {:id "id69"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.Iter$A: Ty, 
      $ly: LayerType, 
      n#0: int, 
      f#0: DatatypeType, 
      arg#0: Box :: 
    {:weight 3} { _module.__default.Iter(_module._default.Iter$A, $LS($ly), LitInt(n#0), Lit(f#0), Lit(arg#0)) } 
    _module.__default.Iter#canCall(_module._default.Iter$A, LitInt(n#0), Lit(f#0), Lit(arg#0))
         || (2 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(f#0, Tclass._module.FunctionHandle(_module._default.Iter$A))
           && $IsBox(arg#0, _module._default.Iter$A))
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.__default.Iter#canCall(_module._default.Iter$A, LitInt(n#0 - 1), Lit(f#0), Lit(arg#0))
             && _module.__default.Apply#canCall(_module._default.Iter$A, 
              Lit(f#0), 
              Lit(_module.__default.Iter(_module._default.Iter$A, $LS($ly), LitInt(n#0 - 1), Lit(f#0), Lit(arg#0)))))
         && _module.__default.Iter(_module._default.Iter$A, $LS($ly), LitInt(n#0), Lit(f#0), Lit(arg#0))
           == (if LitInt(n#0) == LitInt(0)
             then arg#0
             else _module.__default.Apply(_module._default.Iter$A, 
              Lit(f#0), 
              Lit(_module.__default.Iter(_module._default.Iter$A, $LS($ly), LitInt(n#0 - 1), Lit(f#0), Lit(arg#0))))));
}

function _module.__default.Iter#canCall(_module._default.Iter$A: Ty, n#0: int, f#0: DatatypeType, arg#0: Box) : bool;

// layer synonym axiom
axiom (forall _module._default.Iter$A: Ty, 
    $ly: LayerType, 
    n#0: int, 
    f#0: DatatypeType, 
    arg#0: Box :: 
  { _module.__default.Iter(_module._default.Iter$A, $LS($ly), n#0, f#0, arg#0) } 
  _module.__default.Iter(_module._default.Iter$A, $LS($ly), n#0, f#0, arg#0)
     == _module.__default.Iter(_module._default.Iter$A, $ly, n#0, f#0, arg#0));

// fuel synonym axiom
axiom (forall _module._default.Iter$A: Ty, 
    $ly: LayerType, 
    n#0: int, 
    f#0: DatatypeType, 
    arg#0: Box :: 
  { _module.__default.Iter(_module._default.Iter$A, AsFuelBottom($ly), n#0, f#0, arg#0) } 
  _module.__default.Iter(_module._default.Iter$A, $ly, n#0, f#0, arg#0)
     == _module.__default.Iter(_module._default.Iter$A, $LZ, n#0, f#0, arg#0));

function _module.__default.Iter#requires(Ty, LayerType, int, DatatypeType, Box) : bool;

// #requires axiom for _module.__default.Iter
axiom (forall _module._default.Iter$A: Ty, 
    $ly: LayerType, 
    n#0: int, 
    f#0: DatatypeType, 
    arg#0: Box :: 
  { _module.__default.Iter#requires(_module._default.Iter$A, $ly, n#0, f#0, arg#0) } 
  LitInt(0) <= n#0
       && $Is(f#0, Tclass._module.FunctionHandle(_module._default.Iter$A))
       && $IsBox(arg#0, _module._default.Iter$A)
     ==> _module.__default.Iter#requires(_module._default.Iter$A, $ly, n#0, f#0, arg#0)
       == true);

procedure {:verboseName "Iter (well-formedness)"} CheckWellformed$$_module.__default.Iter(_module._default.Iter$A: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.Iter$A)), 
    arg#0: Box where $IsBox(arg#0, _module._default.Iter$A));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Iter (well-formedness)"} CheckWellformed$$_module.__default.Iter(_module._default.Iter$A: Ty, n#0: int, f#0: DatatypeType, arg#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##f#0: DatatypeType;
  var ##argument#0: Box;
  var ##n#0: int;
  var ##f#1: DatatypeType;
  var ##arg#0: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(_module.__default.Iter(_module._default.Iter$A, $LS($LZ), n#0, f#0, arg#0), 
          _module._default.Iter$A);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume {:id "id70"} _module.__default.Iter(_module._default.Iter$A, $LS($LZ), n#0, f#0, arg#0)
               == arg#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(_module.__default.Iter(_module._default.Iter$A, $LS($LZ), n#0, f#0, arg#0), 
              _module._default.Iter$A);
            return;
        }
        else
        {
            ##f#0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0, Tclass._module.FunctionHandle(_module._default.Iter$A), $Heap);
            assert {:id "id71"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            ##f#1 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1, Tclass._module.FunctionHandle(_module._default.Iter$A), $Heap);
            ##arg#0 := arg#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##arg#0, _module._default.Iter$A, $Heap);
            assert {:id "id72"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id73"} ##n#0 < n#0 || (##n#0 == n#0 && DtRank(##f#1) < DtRank(f#0));
            assume _module.__default.Iter#canCall(_module._default.Iter$A, n#0 - 1, f#0, arg#0);
            ##argument#0 := _module.__default.Iter(_module._default.Iter$A, $LS($LZ), n#0 - 1, f#0, arg#0);
            // assume allocatedness for argument to function
            assume $IsAllocBox(##argument#0, _module._default.Iter$A, $Heap);
            assume _module.__default.Apply#canCall(_module._default.Iter$A, 
              f#0, 
              _module.__default.Iter(_module._default.Iter$A, $LS($LZ), n#0 - 1, f#0, arg#0));
            assume {:id "id74"} _module.__default.Iter(_module._default.Iter$A, $LS($LZ), n#0, f#0, arg#0)
               == _module.__default.Apply(_module._default.Iter$A, 
                f#0, 
                _module.__default.Iter(_module._default.Iter$A, $LS($LZ), n#0 - 1, f#0, arg#0));
            assume _module.__default.Iter#canCall(_module._default.Iter$A, n#0 - 1, f#0, arg#0)
               && _module.__default.Apply#canCall(_module._default.Iter$A, 
                f#0, 
                _module.__default.Iter(_module._default.Iter$A, $LS($LZ), n#0 - 1, f#0, arg#0));
            // CheckWellformedWithResult: any expression
            assume $IsBox(_module.__default.Iter(_module._default.Iter$A, $LS($LZ), n#0, f#0, arg#0), 
              _module._default.Iter$A);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.LmapIter
function _module.__default.LmapIter(_module._default.LmapIter$_T0: Ty, 
    $ly: LayerType, 
    n#0: int, 
    f#0: DatatypeType, 
    arg#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.LmapIter
axiom 3 <= $FunctionContextHeight
   ==> (forall _module._default.LmapIter$_T0: Ty, 
      $ly: LayerType, 
      n#0: int, 
      f#0: DatatypeType, 
      arg#0: DatatypeType :: 
    { _module.__default.LmapIter(_module._default.LmapIter$_T0, $ly, n#0, f#0, arg#0) } 
    _module.__default.LmapIter#canCall(_module._default.LmapIter$_T0, n#0, f#0, arg#0)
         || (3 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(f#0, Tclass._module.FunctionHandle(_module._default.LmapIter$_T0))
           && $Is(arg#0, Tclass._module.LList(_module._default.LmapIter$_T0)))
       ==> $Is(_module.__default.LmapIter(_module._default.LmapIter$_T0, $ly, n#0, f#0, arg#0), 
        Tclass._module.LList(_module._default.LmapIter$_T0)));
// alloc consequence axiom for _module.__default.LmapIter
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.LmapIter$_T0: Ty, 
      $ly: LayerType, 
      n#0: int, 
      f#0: DatatypeType, 
      arg#0: DatatypeType :: 
    { $IsAlloc(_module.__default.LmapIter(_module._default.LmapIter$_T0, $ly, n#0, f#0, arg#0), 
        Tclass._module.LList(_module._default.LmapIter$_T0), 
        $Heap) } 
    (_module.__default.LmapIter#canCall(_module._default.LmapIter$_T0, n#0, f#0, arg#0)
           || (3 < $FunctionContextHeight
             && 
            LitInt(0) <= n#0
             && 
            $Is(f#0, Tclass._module.FunctionHandle(_module._default.LmapIter$_T0))
             && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.LmapIter$_T0), $Heap)
             && 
            $Is(arg#0, Tclass._module.LList(_module._default.LmapIter$_T0))
             && $IsAlloc(arg#0, Tclass._module.LList(_module._default.LmapIter$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.LmapIter(_module._default.LmapIter$_T0, $ly, n#0, f#0, arg#0), 
        Tclass._module.LList(_module._default.LmapIter$_T0), 
        $Heap));
// definition axiom for _module.__default.LmapIter (revealed)
axiom {:id "id75"} 3 <= $FunctionContextHeight
   ==> (forall _module._default.LmapIter$_T0: Ty, 
      $ly: LayerType, 
      n#0: int, 
      f#0: DatatypeType, 
      arg#0: DatatypeType :: 
    { _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($ly), n#0, f#0, arg#0) } 
    _module.__default.LmapIter#canCall(_module._default.LmapIter$_T0, n#0, f#0, arg#0)
         || (3 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(f#0, Tclass._module.FunctionHandle(_module._default.LmapIter$_T0))
           && $Is(arg#0, Tclass._module.LList(_module._default.LmapIter$_T0)))
       ==> (n#0 != LitInt(0)
           ==> _module.__default.LmapIter#canCall(_module._default.LmapIter$_T0, n#0 - 1, f#0, arg#0)
             && _module.__default.Lmap#canCall(_module._default.LmapIter$_T0, 
              f#0, 
              _module.__default.LmapIter(_module._default.LmapIter$_T0, $ly, n#0 - 1, f#0, arg#0)))
         && _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($ly), n#0, f#0, arg#0)
           == (if n#0 == LitInt(0)
             then arg#0
             else _module.__default.Lmap(_module._default.LmapIter$_T0, 
              $LS($LZ), 
              f#0, 
              _module.__default.LmapIter(_module._default.LmapIter$_T0, $ly, n#0 - 1, f#0, arg#0))));
// definition axiom for _module.__default.LmapIter for decreasing-related literals (revealed)
axiom {:id "id76"} 3 <= $FunctionContextHeight
   ==> (forall _module._default.LmapIter$_T0: Ty, 
      $ly: LayerType, 
      n#0: int, 
      f#0: DatatypeType, 
      arg#0: DatatypeType :: 
    {:weight 3} { _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($ly), LitInt(n#0), Lit(f#0), arg#0) } 
    _module.__default.LmapIter#canCall(_module._default.LmapIter$_T0, LitInt(n#0), Lit(f#0), arg#0)
         || (3 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(f#0, Tclass._module.FunctionHandle(_module._default.LmapIter$_T0))
           && $Is(arg#0, Tclass._module.LList(_module._default.LmapIter$_T0)))
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.__default.LmapIter#canCall(_module._default.LmapIter$_T0, LitInt(n#0 - 1), Lit(f#0), arg#0)
             && _module.__default.Lmap#canCall(_module._default.LmapIter$_T0, 
              Lit(f#0), 
              _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($ly), LitInt(n#0 - 1), Lit(f#0), arg#0)))
         && _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($ly), LitInt(n#0), Lit(f#0), arg#0)
           == (if LitInt(n#0) == LitInt(0)
             then arg#0
             else _module.__default.Lmap(_module._default.LmapIter$_T0, 
              $LS($LZ), 
              Lit(f#0), 
              _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($ly), LitInt(n#0 - 1), Lit(f#0), arg#0))));
// definition axiom for _module.__default.LmapIter for all literals (revealed)
axiom {:id "id77"} 3 <= $FunctionContextHeight
   ==> (forall _module._default.LmapIter$_T0: Ty, 
      $ly: LayerType, 
      n#0: int, 
      f#0: DatatypeType, 
      arg#0: DatatypeType :: 
    {:weight 3} { _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($ly), LitInt(n#0), Lit(f#0), Lit(arg#0)) } 
    _module.__default.LmapIter#canCall(_module._default.LmapIter$_T0, LitInt(n#0), Lit(f#0), Lit(arg#0))
         || (3 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(f#0, Tclass._module.FunctionHandle(_module._default.LmapIter$_T0))
           && $Is(arg#0, Tclass._module.LList(_module._default.LmapIter$_T0)))
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.__default.LmapIter#canCall(_module._default.LmapIter$_T0, LitInt(n#0 - 1), Lit(f#0), Lit(arg#0))
             && _module.__default.Lmap#canCall(_module._default.LmapIter$_T0, 
              Lit(f#0), 
              Lit(_module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($ly), LitInt(n#0 - 1), Lit(f#0), Lit(arg#0)))))
         && _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($ly), LitInt(n#0), Lit(f#0), Lit(arg#0))
           == (if LitInt(n#0) == LitInt(0)
             then arg#0
             else _module.__default.Lmap(_module._default.LmapIter$_T0, 
              $LS($LZ), 
              Lit(f#0), 
              Lit(_module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($ly), LitInt(n#0 - 1), Lit(f#0), Lit(arg#0))))));
}

function _module.__default.LmapIter#canCall(_module._default.LmapIter$_T0: Ty, 
    n#0: int, 
    f#0: DatatypeType, 
    arg#0: DatatypeType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.LmapIter$_T0: Ty, 
    $ly: LayerType, 
    n#0: int, 
    f#0: DatatypeType, 
    arg#0: DatatypeType :: 
  { _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($ly), n#0, f#0, arg#0) } 
  _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($ly), n#0, f#0, arg#0)
     == _module.__default.LmapIter(_module._default.LmapIter$_T0, $ly, n#0, f#0, arg#0));

// fuel synonym axiom
axiom (forall _module._default.LmapIter$_T0: Ty, 
    $ly: LayerType, 
    n#0: int, 
    f#0: DatatypeType, 
    arg#0: DatatypeType :: 
  { _module.__default.LmapIter(_module._default.LmapIter$_T0, AsFuelBottom($ly), n#0, f#0, arg#0) } 
  _module.__default.LmapIter(_module._default.LmapIter$_T0, $ly, n#0, f#0, arg#0)
     == _module.__default.LmapIter(_module._default.LmapIter$_T0, $LZ, n#0, f#0, arg#0));

function _module.__default.LmapIter#requires(Ty, LayerType, int, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.LmapIter
axiom (forall _module._default.LmapIter$_T0: Ty, 
    $ly: LayerType, 
    n#0: int, 
    f#0: DatatypeType, 
    arg#0: DatatypeType :: 
  { _module.__default.LmapIter#requires(_module._default.LmapIter$_T0, $ly, n#0, f#0, arg#0) } 
  LitInt(0) <= n#0
       && $Is(f#0, Tclass._module.FunctionHandle(_module._default.LmapIter$_T0))
       && $Is(arg#0, Tclass._module.LList(_module._default.LmapIter$_T0))
     ==> _module.__default.LmapIter#requires(_module._default.LmapIter$_T0, $ly, n#0, f#0, arg#0)
       == true);

procedure {:verboseName "LmapIter (well-formedness)"} CheckWellformed$$_module.__default.LmapIter(_module._default.LmapIter$_T0: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.LmapIter$_T0)), 
    arg#0: DatatypeType
       where $Is(arg#0, Tclass._module.LList(_module._default.LmapIter$_T0)));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LmapIter (well-formedness)"} CheckWellformed$$_module.__default.LmapIter(_module._default.LmapIter$_T0: Ty, 
    n#0: int, 
    f#0: DatatypeType, 
    arg#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##f#0: DatatypeType;
  var ##a#0: DatatypeType;
  var ##n#0: int;
  var ##f#1: DatatypeType;
  var ##arg#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($LZ), n#0, f#0, arg#0), 
          Tclass._module.LList(_module._default.LmapIter$_T0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume {:id "id78"} _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($LZ), n#0, f#0, arg#0)
               == arg#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($LZ), n#0, f#0, arg#0), 
              Tclass._module.LList(_module._default.LmapIter$_T0));
            return;
        }
        else
        {
            ##f#0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0, Tclass._module.FunctionHandle(_module._default.LmapIter$_T0), $Heap);
            assert {:id "id79"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            ##f#1 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1, Tclass._module.FunctionHandle(_module._default.LmapIter$_T0), $Heap);
            ##arg#0 := arg#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#0, Tclass._module.LList(_module._default.LmapIter$_T0), $Heap);
            assert {:id "id80"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id81"} ##n#0 < n#0 || (##n#0 == n#0 && DtRank(##f#1) < DtRank(f#0));
            assume _module.__default.LmapIter#canCall(_module._default.LmapIter$_T0, n#0 - 1, f#0, arg#0);
            ##a#0 := _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($LZ), n#0 - 1, f#0, arg#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, Tclass._module.LList(_module._default.LmapIter$_T0), $Heap);
            assume _module.__default.Lmap#canCall(_module._default.LmapIter$_T0, 
              f#0, 
              _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($LZ), n#0 - 1, f#0, arg#0));
            assume {:id "id82"} _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($LZ), n#0, f#0, arg#0)
               == _module.__default.Lmap(_module._default.LmapIter$_T0, 
                $LS($LZ), 
                f#0, 
                _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($LZ), n#0 - 1, f#0, arg#0));
            assume _module.__default.LmapIter#canCall(_module._default.LmapIter$_T0, n#0 - 1, f#0, arg#0)
               && _module.__default.Lmap#canCall(_module._default.LmapIter$_T0, 
                f#0, 
                _module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($LZ), n#0 - 1, f#0, arg#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.LmapIter(_module._default.LmapIter$_T0, $LS($LZ), n#0, f#0, arg#0), 
              Tclass._module.LList(_module._default.LmapIter$_T0));
            return;
        }

        assume false;
    }
}



procedure {:verboseName "Lemma25 (well-formedness)"} CheckWellFormed$$_module.__default.Lemma25(_module._default.Lemma25$A: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.Lemma25$A))
         && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.Lemma25$A), $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    b#0: Box
       where $IsBox(b#0, _module._default.Lemma25$A)
         && $IsAllocBox(b#0, _module._default.Lemma25$A, $Heap), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.LList(_module._default.Lemma25$A))
         && $IsAlloc(M#0, Tclass._module.LList(_module._default.Lemma25$A), $Heap)
         && $IsA#_module.LList(M#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Lemma25 (call)"} Call$$_module.__default.Lemma25(_module._default.Lemma25$A: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.Lemma25$A))
         && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.Lemma25$A), $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    b#0: Box
       where $IsBox(b#0, _module._default.Lemma25$A)
         && $IsAllocBox(b#0, _module._default.Lemma25$A, $Heap), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.LList(_module._default.Lemma25$A))
         && $IsAlloc(M#0, Tclass._module.LList(_module._default.Lemma25$A), $Heap)
         && $IsA#_module.LList(M#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.LList(_module.__default.LmapIter(_module._default.Lemma25$A, $LS($LZ), n#0, f#0, #_module.LList.Cons(b#0, M#0)))
     && 
    _module.__default.LmapIter#canCall(_module._default.Lemma25$A, n#0, f#0, #_module.LList.Cons(b#0, M#0))
     && 
    _module.__default.Iter#canCall(_module._default.Lemma25$A, n#0, f#0, b#0)
     && _module.__default.LmapIter#canCall(_module._default.Lemma25$A, n#0, f#0, M#0);
  ensures {:id "id84"} $Eq#_module.LList(_module._default.Lemma25$A, 
    _module._default.Lemma25$A, 
    $LS($LS($LZ)), 
    _module.__default.LmapIter(_module._default.Lemma25$A, 
      $LS($LS($LZ)), 
      n#0, 
      f#0, 
      #_module.LList.Cons(b#0, M#0)), 
    #_module.LList.Cons(_module.__default.Iter(_module._default.Lemma25$A, $LS($LS($LZ)), n#0, f#0, b#0), 
      _module.__default.LmapIter(_module._default.Lemma25$A, $LS($LS($LZ)), n#0, f#0, M#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma25 (correctness)"} Impl$$_module.__default.Lemma25(_module._default.Lemma25$A: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.Lemma25$A))
         && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.Lemma25$A), $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    b#0: Box
       where $IsBox(b#0, _module._default.Lemma25$A)
         && $IsAllocBox(b#0, _module._default.Lemma25$A, $Heap), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.LList(_module._default.Lemma25$A))
         && $IsAlloc(M#0, Tclass._module.LList(_module._default.Lemma25$A), $Heap)
         && $IsA#_module.LList(M#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.LList(_module.__default.LmapIter(_module._default.Lemma25$A, $LS($LZ), n#0, f#0, #_module.LList.Cons(b#0, M#0)))
     && 
    _module.__default.LmapIter#canCall(_module._default.Lemma25$A, n#0, f#0, #_module.LList.Cons(b#0, M#0))
     && 
    _module.__default.Iter#canCall(_module._default.Lemma25$A, n#0, f#0, b#0)
     && _module.__default.LmapIter#canCall(_module._default.Lemma25$A, n#0, f#0, M#0);
  ensures {:id "id85"} $Eq#_module.LList(_module._default.Lemma25$A, 
    _module._default.Lemma25$A, 
    $LS($LS($LZ)), 
    _module.__default.LmapIter(_module._default.Lemma25$A, 
      $LS($LS($LZ)), 
      n#0, 
      f#0, 
      #_module.LList.Cons(b#0, M#0)), 
    #_module.LList.Cons(_module.__default.Iter(_module._default.Lemma25$A, $LS($LS($LZ)), n#0, f#0, b#0), 
      _module.__default.LmapIter(_module._default.Lemma25$A, $LS($LS($LZ)), n#0, f#0, M#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma25 (correctness)"} Impl$$_module.__default.Lemma25(_module._default.Lemma25$A: Ty, 
    n#0: int, 
    f#0: DatatypeType, 
    b#0: Box, 
    M#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: Lemma25, Impl$$_module.__default.Lemma25
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.FunctionHandle(f#0);
    assume $IsA#_module.LList(M#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int, $ih#f0#0: DatatypeType, $ih#M0#0: DatatypeType :: 
      { _module.__default.Iter(_module._default.Lemma25$A, $LS($LZ), $ih#n0#0, $ih#f0#0, b#0), #_module.LList.Cons(b#0, $ih#M0#0) } 
      LitInt(0) <= $ih#n0#0
           && $Is($ih#f0#0, Tclass._module.FunctionHandle(_module._default.Lemma25$A))
           && $Is($ih#M0#0, Tclass._module.LList(_module._default.Lemma25$A))
           && Lit(true)
           && ((0 <= $ih#n0#0 && $ih#n0#0 < n#0)
             || ($ih#n0#0 == n#0 && DtRank($ih#f0#0) < DtRank(f#0)))
         ==> $Eq#_module.LList(_module._default.Lemma25$A, 
          _module._default.Lemma25$A, 
          $LS($LS($LZ)), 
          _module.__default.LmapIter(_module._default.Lemma25$A, 
            $LS($LZ), 
            $ih#n0#0, 
            $ih#f0#0, 
            #_module.LList.Cons(b#0, $ih#M0#0)), 
          #_module.LList.Cons(_module.__default.Iter(_module._default.Lemma25$A, $LS($LZ), $ih#n0#0, $ih#f0#0, b#0), 
            _module.__default.LmapIter(_module._default.Lemma25$A, $LS($LZ), $ih#n0#0, $ih#f0#0, $ih#M0#0))));
    $_reverifyPost := false;
}



procedure {:verboseName "Lemma26 (well-formedness)"} CheckWellFormed$$_module.__default.Lemma26(_module._default.Lemma26$A: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.Lemma26$A))
         && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.Lemma26$A), $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    x#0: DatatypeType
       where $Is(x#0, Tclass._module.LList(_module._default.Lemma26$A))
         && $IsAlloc(x#0, Tclass._module.LList(_module._default.Lemma26$A), $Heap)
         && $IsA#_module.LList(x#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma26 (well-formedness)"} CheckWellFormed$$_module.__default.Lemma26(_module._default.Lemma26$A: Ty, n#0: int, f#0: DatatypeType, x#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##f#0: DatatypeType;
  var ##arg#0: DatatypeType;
  var ##f#1: DatatypeType;
  var ##a#0: DatatypeType;
  var ##n#1: int;
  var ##f#2: DatatypeType;
  var ##arg#1: DatatypeType;


    // AddMethodImpl: Lemma26, CheckWellFormed$$_module.__default.Lemma26
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    ##f#0 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#0, Tclass._module.FunctionHandle(_module._default.Lemma26$A), $Heap);
    ##f#1 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#1, Tclass._module.FunctionHandle(_module._default.Lemma26$A), $Heap);
    ##a#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._module.LList(_module._default.Lemma26$A), $Heap);
    assume _module.__default.Lmap#canCall(_module._default.Lemma26$A, f#0, x#0);
    ##arg#0 := _module.__default.Lmap(_module._default.Lemma26$A, $LS($LZ), f#0, x#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##arg#0, Tclass._module.LList(_module._default.Lemma26$A), $Heap);
    assume _module.__default.LmapIter#canCall(_module._default.Lemma26$A, 
      n#0, 
      f#0, 
      _module.__default.Lmap(_module._default.Lemma26$A, $LS($LZ), f#0, x#0));
    assert {:id "id86"} $Is(n#0 + 1, Tclass._System.nat());
    ##n#1 := n#0 + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    ##f#2 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#2, Tclass._module.FunctionHandle(_module._default.Lemma26$A), $Heap);
    ##arg#1 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##arg#1, Tclass._module.LList(_module._default.Lemma26$A), $Heap);
    assume _module.__default.LmapIter#canCall(_module._default.Lemma26$A, n#0 + 1, f#0, x#0);
    assume {:id "id87"} $Eq#_module.LList(_module._default.Lemma26$A, 
      _module._default.Lemma26$A, 
      $LS($LS($LZ)), 
      _module.__default.LmapIter(_module._default.Lemma26$A, 
        $LS($LZ), 
        n#0, 
        f#0, 
        _module.__default.Lmap(_module._default.Lemma26$A, $LS($LZ), f#0, x#0)), 
      _module.__default.LmapIter(_module._default.Lemma26$A, $LS($LZ), n#0 + 1, f#0, x#0));
}



procedure {:verboseName "Lemma26 (call)"} Call$$_module.__default.Lemma26(_module._default.Lemma26$A: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.Lemma26$A))
         && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.Lemma26$A), $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    x#0: DatatypeType
       where $Is(x#0, Tclass._module.LList(_module._default.Lemma26$A))
         && $IsAlloc(x#0, Tclass._module.LList(_module._default.Lemma26$A), $Heap)
         && $IsA#_module.LList(x#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.LList(_module.__default.LmapIter(_module._default.Lemma26$A, 
        $LS($LZ), 
        n#0, 
        f#0, 
        _module.__default.Lmap(_module._default.Lemma26$A, $LS($LZ), f#0, x#0)))
     && $IsA#_module.LList(_module.__default.LmapIter(_module._default.Lemma26$A, $LS($LZ), n#0 + 1, f#0, x#0))
     && 
    _module.__default.Lmap#canCall(_module._default.Lemma26$A, f#0, x#0)
     && _module.__default.LmapIter#canCall(_module._default.Lemma26$A, 
      n#0, 
      f#0, 
      _module.__default.Lmap(_module._default.Lemma26$A, $LS($LZ), f#0, x#0))
     && _module.__default.LmapIter#canCall(_module._default.Lemma26$A, n#0 + 1, f#0, x#0);
  ensures {:id "id88"} $Eq#_module.LList(_module._default.Lemma26$A, 
    _module._default.Lemma26$A, 
    $LS($LS($LZ)), 
    _module.__default.LmapIter(_module._default.Lemma26$A, 
      $LS($LS($LZ)), 
      n#0, 
      f#0, 
      _module.__default.Lmap(_module._default.Lemma26$A, $LS($LS($LZ)), f#0, x#0)), 
    _module.__default.LmapIter(_module._default.Lemma26$A, $LS($LS($LZ)), n#0 + 1, f#0, x#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma26 (correctness)"} Impl$$_module.__default.Lemma26(_module._default.Lemma26$A: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.Lemma26$A))
         && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.Lemma26$A), $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    x#0: DatatypeType
       where $Is(x#0, Tclass._module.LList(_module._default.Lemma26$A))
         && $IsAlloc(x#0, Tclass._module.LList(_module._default.Lemma26$A), $Heap)
         && $IsA#_module.LList(x#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.LList(_module.__default.LmapIter(_module._default.Lemma26$A, 
        $LS($LZ), 
        n#0, 
        f#0, 
        _module.__default.Lmap(_module._default.Lemma26$A, $LS($LZ), f#0, x#0)))
     && $IsA#_module.LList(_module.__default.LmapIter(_module._default.Lemma26$A, $LS($LZ), n#0 + 1, f#0, x#0))
     && 
    _module.__default.Lmap#canCall(_module._default.Lemma26$A, f#0, x#0)
     && _module.__default.LmapIter#canCall(_module._default.Lemma26$A, 
      n#0, 
      f#0, 
      _module.__default.Lmap(_module._default.Lemma26$A, $LS($LZ), f#0, x#0))
     && _module.__default.LmapIter#canCall(_module._default.Lemma26$A, n#0 + 1, f#0, x#0);
  ensures {:id "id89"} $Eq#_module.LList(_module._default.Lemma26$A, 
    _module._default.Lemma26$A, 
    $LS($LS($LZ)), 
    _module.__default.LmapIter(_module._default.Lemma26$A, 
      $LS($LS($LZ)), 
      n#0, 
      f#0, 
      _module.__default.Lmap(_module._default.Lemma26$A, $LS($LS($LZ)), f#0, x#0)), 
    _module.__default.LmapIter(_module._default.Lemma26$A, $LS($LS($LZ)), n#0 + 1, f#0, x#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma26 (correctness)"} Impl$$_module.__default.Lemma26(_module._default.Lemma26$A: Ty, n#0: int, f#0: DatatypeType, x#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: Lemma26, Impl$$_module.__default.Lemma26
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.FunctionHandle(f#0);
    assume $IsA#_module.LList(x#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int, $ih#f0#0: DatatypeType, $ih#x0#0: DatatypeType :: 
      { _module.__default.LmapIter(_module._default.Lemma26$A, 
          $LS($LZ), 
          $ih#n0#0, 
          $ih#f0#0, 
          _module.__default.Lmap(_module._default.Lemma26$A, $LS($LZ), $ih#f0#0, $ih#x0#0)) } 
      LitInt(0) <= $ih#n0#0
           && $Is($ih#f0#0, Tclass._module.FunctionHandle(_module._default.Lemma26$A))
           && $Is($ih#x0#0, Tclass._module.LList(_module._default.Lemma26$A))
           && Lit(true)
           && ((0 <= $ih#n0#0 && $ih#n0#0 < n#0)
             || ($ih#n0#0 == n#0 && DtRank($ih#f0#0) < DtRank(f#0)))
         ==> $Eq#_module.LList(_module._default.Lemma26$A, 
          _module._default.Lemma26$A, 
          $LS($LS($LZ)), 
          _module.__default.LmapIter(_module._default.Lemma26$A, 
            $LS($LZ), 
            $ih#n0#0, 
            $ih#f0#0, 
            _module.__default.Lmap(_module._default.Lemma26$A, $LS($LZ), $ih#f0#0, $ih#x0#0)), 
          _module.__default.LmapIter(_module._default.Lemma26$A, $LS($LZ), $ih#n0#0 + 1, $ih#f0#0, $ih#x0#0)));
    $_reverifyPost := false;
}



procedure {:verboseName "BisimulationLemma (well-formedness)"} CheckWellFormed$$_module.__default.BisimulationLemma(_module._default.BisimulationLemma$A: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    f#0: DatatypeType
       where $Is(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma$A)))
         && $IsAlloc(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._module.LList(_module._default.BisimulationLemma$A))
         && $IsAlloc(u#0, Tclass._module.LList(_module._default.BisimulationLemma$A), $Heap)
         && $IsA#_module.LList(u#0));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BisimulationLemma (call)"} Call$$_module.__default.BisimulationLemma(_module._default.BisimulationLemma$A: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    f#0: DatatypeType
       where $Is(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma$A)))
         && $IsAlloc(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._module.LList(_module._default.BisimulationLemma$A))
         && $IsAlloc(u#0, Tclass._module.LList(_module._default.BisimulationLemma$A), $Heap)
         && $IsA#_module.LList(u#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.LList(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma$A), 
        $LS($LZ), 
        n#0, 
        f#0, 
        _module.__default.h(_module._default.BisimulationLemma$A, f#0, u#0)))
     && $IsA#_module.LList(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma$A), 
        $LS($LZ), 
        n#0, 
        f#0, 
        _module.__default.Iterates(_module._default.BisimulationLemma$A, $LS($LZ), f#0, u#0)))
     && 
    _module.__default.h#canCall(_module._default.BisimulationLemma$A, f#0, u#0)
     && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma$A), 
      n#0, 
      f#0, 
      _module.__default.h(_module._default.BisimulationLemma$A, f#0, u#0))
     && 
    _module.__default.Iterates#canCall(_module._default.BisimulationLemma$A, f#0, u#0)
     && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma$A), 
      n#0, 
      f#0, 
      _module.__default.Iterates(_module._default.BisimulationLemma$A, $LS($LZ), f#0, u#0));
  ensures {:id "id91"} $Eq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma$A), 
    Tclass._module.LList(_module._default.BisimulationLemma$A), 
    $LS($LS($LZ)), 
    _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma$A), 
      $LS($LS($LZ)), 
      n#0, 
      f#0, 
      _module.__default.h(_module._default.BisimulationLemma$A, f#0, u#0)), 
    _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma$A), 
      $LS($LS($LZ)), 
      n#0, 
      f#0, 
      _module.__default.Iterates(_module._default.BisimulationLemma$A, $LS($LS($LZ)), f#0, u#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BisimulationLemma# (co-call)"} CoCall$$_module.__default.BisimulationLemma_h(_module._default.BisimulationLemma#$A: Ty, 
    _k#0: Box, 
    n#1: int where LitInt(0) <= n#1, 
    f#1: DatatypeType
       where $Is(f#1, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)))
         && $IsAlloc(f#1, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#1), 
    u#1: DatatypeType
       where $Is(u#1, Tclass._module.LList(_module._default.BisimulationLemma#$A))
         && $IsAlloc(u#1, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap)
         && $IsA#_module.LList(u#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
     && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
      n#1, 
      f#1, 
      _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))
     && 
    _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
     && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
      n#1, 
      f#1, 
      _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
  free ensures {:id "id92"} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
    Tclass._module.LList(_module._default.BisimulationLemma#$A), 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
      $LS($LZ), 
      n#1, 
      f#1, 
      _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)), 
    _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
      $LS($LZ), 
      n#1, 
      f#1, 
      _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BisimulationLemma# (correctness)"} Impl$$_module.__default.BisimulationLemma_h(_module._default.BisimulationLemma#$A: Ty, 
    _k#0: Box, 
    n#1: int where LitInt(0) <= n#1, 
    f#1: DatatypeType
       where $Is(f#1, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)))
         && $IsAlloc(f#1, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#1), 
    u#1: DatatypeType
       where $Is(u#1, Tclass._module.LList(_module._default.BisimulationLemma#$A))
         && $IsAlloc(u#1, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap)
         && $IsA#_module.LList(u#1))
   returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
     && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
      n#1, 
      f#1, 
      _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))
     && 
    _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
     && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
      n#1, 
      f#1, 
      _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
  ensures {:id "id93"} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
      Tclass._module.LList(_module._default.BisimulationLemma#$A), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
        $LS($LZ), 
        n#1, 
        f#1, 
        _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)), 
      _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
        $LS($LZ), 
        n#1, 
        f#1, 
        _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.LList.Nil_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
          $LS($LS($LZ)), 
          n#1, 
          f#1, 
          _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))
       ==> _module.LList.Nil_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
          $LS($LS($LZ)), 
          n#1, 
          f#1, 
          _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1))));
  ensures {:id "id94"} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
      Tclass._module.LList(_module._default.BisimulationLemma#$A), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
        $LS($LZ), 
        n#1, 
        f#1, 
        _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)), 
      _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
        $LS($LZ), 
        n#1, 
        f#1, 
        _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.LList.Cons_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
          $LS($LS($LZ)), 
          n#1, 
          f#1, 
          _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))
       ==> _module.LList.Cons_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
            $LS($LS($LZ)), 
            n#1, 
            f#1, 
            _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))
         && 
        $Eq#_module.LList(_module._default.BisimulationLemma#$A, 
          _module._default.BisimulationLemma#$A, 
          $LS($LS($LZ)), 
          $Unbox(_module.LList.head(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LS($LZ)), 
                n#1, 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))): DatatypeType, 
          $Unbox(_module.LList.head(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LS($LZ)), 
                n#1, 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))): DatatypeType)
         && $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
          Tclass._module.LList(_module._default.BisimulationLemma#$A), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.LList.tail(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LS($LZ)), 
              n#1, 
              f#1, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))), 
          _module.LList.tail(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LS($LZ)), 
              n#1, 
              f#1, 
              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))));
  ensures {:id "id95"} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
      Tclass._module.LList(_module._default.BisimulationLemma#$A), 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
        $LS($LZ), 
        n#1, 
        f#1, 
        _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)), 
      _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
        $LS($LZ), 
        n#1, 
        f#1, 
        _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)))
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.LList.Nil_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LS($LZ)), 
              n#1, 
              f#1, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))
           ==> _module.LList.Nil_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LS($LZ)), 
              n#1, 
              f#1, 
              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1))))
         && (_module.LList.Cons_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LS($LZ)), 
              n#1, 
              f#1, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))
           ==> _module.LList.Cons_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LS($LZ)), 
                n#1, 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))
             && 
            $Eq#_module.LList(_module._default.BisimulationLemma#$A, 
              _module._default.BisimulationLemma#$A, 
              $LS($LS($LZ)), 
              $Unbox(_module.LList.head(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LS($LZ)), 
                    n#1, 
                    f#1, 
                    _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))): DatatypeType, 
              $Unbox(_module.LList.head(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LS($LZ)), 
                    n#1, 
                    f#1, 
                    _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))): DatatypeType)
             && $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.LList.tail(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LS($LZ)), 
                  n#1, 
                  f#1, 
                  _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))), 
              _module.LList.tail(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LS($LZ)), 
                  n#1, 
                  f#1, 
                  _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1))))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
        Tclass._module.LList(_module._default.BisimulationLemma#$A), 
        $LS($LS($LZ)), 
        _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
          $LS($LZ), 
          n#1, 
          f#1, 
          _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)), 
        _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
          $LS($LZ), 
          n#1, 
          f#1, 
          _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BisimulationLemma# (correctness)"} Impl$$_module.__default.BisimulationLemma_h(_module._default.BisimulationLemma#$A: Ty, 
    _k#0: Box, 
    n#1: int, 
    f#1: DatatypeType, 
    u#1: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##n#2: int;
  var ##f#4: DatatypeType;
  var ##arg#2: DatatypeType;
  var ##f#5: DatatypeType;
  var ##a#0: DatatypeType;
  var ##f#6: DatatypeType;
  var ##M#2: DatatypeType;
  var f##0: DatatypeType;
  var M##0: DatatypeType;
  var ##n#3: int;
  var ##f#7: DatatypeType;
  var ##arg#3: DatatypeType;
  var ##f#8: DatatypeType;
  var ##M#3: DatatypeType;
  var ##n#4: int;
  var ##f#9: DatatypeType;
  var ##arg#4: DatatypeType;
  var ##n#5: int;
  var ##f#10: DatatypeType;
  var ##arg#5: DatatypeType;
  var ##f#11: DatatypeType;
  var ##a#1: DatatypeType;
  var ##f#12: DatatypeType;
  var ##M#4: DatatypeType;
  var n##0: int;
  var f##1: DatatypeType;
  var b##0: DatatypeType;
  var M##1: DatatypeType;
  var ##f#13: DatatypeType;
  var ##a#2: DatatypeType;
  var ##f#14: DatatypeType;
  var ##M#5: DatatypeType;
  var ##n#6: int;
  var ##f#15: DatatypeType;
  var ##arg#6: DatatypeType;
  var ##f#16: DatatypeType;
  var ##a#3: DatatypeType;
  var ##f#17: DatatypeType;
  var ##M#6: DatatypeType;
  var ##n#7: int;
  var ##f#18: DatatypeType;
  var ##arg#7: DatatypeType;
  var ##n#8: int;
  var ##f#19: DatatypeType;
  var ##arg#8: DatatypeType;
  var ##f#20: DatatypeType;
  var ##M#7: DatatypeType;
  var n##1: int;
  var f##2: DatatypeType;
  var x##0: DatatypeType;
  var ##f#21: DatatypeType;
  var ##M#8: DatatypeType;
  var ##n#9: int;
  var ##f#22: DatatypeType;
  var ##arg#9: DatatypeType;
  var ##n#10: int;
  var ##f#23: DatatypeType;
  var ##arg#10: DatatypeType;
  var ##f#24: DatatypeType;
  var ##a#4: DatatypeType;
  var ##f#25: DatatypeType;
  var ##M#9: DatatypeType;
  var ##n#11: int;
  var ##f#26: DatatypeType;
  var ##arg#11: DatatypeType;
  var ##n#12: int;
  var ##f#27: DatatypeType;
  var ##arg#12: DatatypeType;
  var ##f#28: DatatypeType;
  var ##M#10: DatatypeType;
  var ##n#13: int;
  var ##f#29: DatatypeType;
  var ##arg#13: DatatypeType;
  var ##f#30: DatatypeType;
  var ##M#11: DatatypeType;
  var ##n#14: int;
  var ##f#31: DatatypeType;
  var ##arg#14: DatatypeType;
  var ##f#32: DatatypeType;
  var ##M#12: DatatypeType;
  var ##n#15: int;
  var ##f#33: DatatypeType;
  var ##arg#15: DatatypeType;
  var ##f#34: DatatypeType;
  var ##M#13: DatatypeType;
  var ##n#16: int;
  var ##f#35: DatatypeType;
  var ##arg#16: DatatypeType;
  var ##n#17: int;
  var ##f#36: DatatypeType;
  var ##arg#17: DatatypeType;
  var ##f#37: DatatypeType;
  var ##M#14: DatatypeType;
  var ##n#18: int;
  var ##f#38: DatatypeType;
  var ##arg#18: DatatypeType;
  var ##n#19: int;
  var ##f#39: DatatypeType;
  var ##arg#19: DatatypeType;
  var ##f#40: DatatypeType;
  var ##a#5: DatatypeType;
  var ##f#41: DatatypeType;
  var ##M#15: DatatypeType;
  var n##2: int;
  var f##3: DatatypeType;
  var x##1: DatatypeType;
  var ##f#42: DatatypeType;
  var ##M#16: DatatypeType;
  var ##n#20: int;
  var ##f#43: DatatypeType;
  var ##arg#20: DatatypeType;
  var ##n#21: int;
  var ##f#44: DatatypeType;
  var ##arg#21: DatatypeType;
  var ##f#45: DatatypeType;
  var ##M#17: DatatypeType;
  var ##n#22: int;
  var ##f#46: DatatypeType;
  var ##arg#22: DatatypeType;
  var ##f#47: DatatypeType;
  var ##a#6: DatatypeType;
  var ##f#48: DatatypeType;
  var ##M#18: DatatypeType;
  var n##3: int;
  var f##4: DatatypeType;
  var b##1: DatatypeType;
  var M##2: DatatypeType;
  var ##f#49: DatatypeType;
  var ##a#7: DatatypeType;
  var ##f#50: DatatypeType;
  var ##M#19: DatatypeType;
  var ##n#23: int;
  var ##f#51: DatatypeType;
  var ##arg#23: DatatypeType;
  var ##n#24: int;
  var ##f#52: DatatypeType;
  var ##arg#24: DatatypeType;
  var ##f#53: DatatypeType;
  var ##a#8: DatatypeType;
  var ##f#54: DatatypeType;
  var ##M#20: DatatypeType;
  var ##n#25: int;
  var ##f#55: DatatypeType;
  var ##arg#25: DatatypeType;
  var ##f#56: DatatypeType;
  var ##M#21: DatatypeType;
  var f##5: DatatypeType;
  var M##3: DatatypeType;
  var ##n#26: int;
  var ##f#57: DatatypeType;
  var ##arg#26: DatatypeType;
  var ##f#58: DatatypeType;
  var ##a#9: DatatypeType;
  var ##f#59: DatatypeType;
  var ##M#22: DatatypeType;
  var ##n#27: int;
  var ##f#60: DatatypeType;
  var ##arg#27: DatatypeType;
  var ##f#61: DatatypeType;
  var ##M#23: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: BisimulationLemma#, Impl$$_module.__default.BisimulationLemma_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.FunctionHandle(f#1);
    assume $IsA#_module.LList(u#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#n0#0: int, $ih#f0#0: DatatypeType, $ih#u0#0: DatatypeType :: 
      { $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
          Tclass._module.LList(_module._default.BisimulationLemma#$A), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
            $LS($LZ), 
            $ih#n0#0, 
            $ih#f0#0, 
            _module.__default.h(_module._default.BisimulationLemma#$A, $ih#f0#0, $ih#u0#0)), 
          _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
            $LS($LZ), 
            $ih#n0#0, 
            $ih#f0#0, 
            _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), $ih#f0#0, $ih#u0#0))) } 
      LitInt(0) <= $ih#n0#0
           && $Is($ih#f0#0, 
            Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)))
           && $Is($ih#u0#0, Tclass._module.LList(_module._default.BisimulationLemma#$A))
           && Lit(true)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0
               && ((0 <= $ih#n0#0 && $ih#n0#0 < n#1)
                 || ($ih#n0#0 == n#1 && DtRank($ih#f0#0) < DtRank(f#1)))))
         ==> $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
          Tclass._module.LList(_module._default.BisimulationLemma#$A), 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
            $LS($LZ), 
            $ih#n0#0, 
            $ih#f0#0, 
            _module.__default.h(_module._default.BisimulationLemma#$A, $ih#f0#0, $ih#u0#0)), 
          _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
            $LS($LZ), 
            $ih#n0#0, 
            $ih#f0#0, 
            _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), $ih#f0#0, $ih#u0#0))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(127,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            ##n#27 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#27, Tclass._System.nat(), $Heap);
            ##f#60 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#60, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#61 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#61, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#23 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#23, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##arg#27 := _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#27, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              n#1, 
              f#1, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                n#1, 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            ##n#25 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#25, Tclass._System.nat(), $Heap);
            ##f#55 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#55, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#56 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#56, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#21 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#21, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##arg#25 := _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#25, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              n#1, 
              f#1, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                n#1, 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(130,19)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            f##5 := f#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##3 := u#1;
            call {:id "id122"} Call$$_module.__default.Definition__h(_module._default.BisimulationLemma#$A, f##5, M##3);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            ##n#26 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#26, Tclass._System.nat(), $Heap);
            ##f#57 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#57, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#58 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#58, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#59 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#59, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#22 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#22, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##a#9 := _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#9, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              f#1, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            ##arg#26 := #_module.LList.Cons($Box(u#1), 
              _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LZ), 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#26, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              n#1, 
              f#1, 
              #_module.LList.Cons($Box(u#1), 
                _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LZ), 
                  f#1, 
                  _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))));
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))
               && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                n#1, 
                f#1, 
                #_module.LList.Cons($Box(u#1), 
                  _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    f#1, 
                    _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))));
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            assert {:id "id123"} {:subsumption 0} $Eq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LS($LZ)), 
              _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LS($LZ)), 
                n#1, 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)), 
              _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LS($LZ)), 
                n#1, 
                f#1, 
                #_module.LList.Cons($Box(u#1), 
                  _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LS($LZ)), 
                    f#1, 
                    _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            ##n#22 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#22, Tclass._System.nat(), $Heap);
            ##f#46 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#46, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#47 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#47, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#48 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#48, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#18 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#18, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##a#6 := _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#6, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              f#1, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            ##arg#22 := #_module.LList.Cons($Box(u#1), 
              _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LZ), 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#22, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              n#1, 
              f#1, 
              #_module.LList.Cons($Box(u#1), 
                _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LZ), 
                  f#1, 
                  _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))));
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))
               && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                n#1, 
                f#1, 
                #_module.LList.Cons($Box(u#1), 
                  _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    f#1, 
                    _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(132,14)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            n##3 := n#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            f##4 := f#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##1 := u#1;
            ##f#49 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#49, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#50 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#50, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#19 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#19, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##a#7 := _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#7, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              f#1, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            // ProcessCallStmt: CheckSubrange
            M##2 := _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LZ), 
              f#1, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            call {:id "id120"} Call$$_module.__default.Lemma25(Tclass._module.LList(_module._default.BisimulationLemma#$A), n##3, f##4, $Box(b##1), M##2);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            ##n#23 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#23, Tclass._System.nat(), $Heap);
            ##f#51 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#51, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##arg#23 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#23, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1));
            ##n#24 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#24, Tclass._System.nat(), $Heap);
            ##f#52 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#52, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#53 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#53, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#54 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#54, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#20 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#20, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##a#8 := _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#8, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              f#1, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            ##arg#24 := _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LZ), 
              f#1, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#24, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              n#1, 
              f#1, 
              _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LZ), 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)));
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1))
               && 
              _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))
               && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                n#1, 
                f#1, 
                _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LZ), 
                  f#1, 
                  _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)));
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            assert {:id "id121"} {:subsumption 0} $Eq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LS($LZ)), 
              _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LS($LZ)), 
                n#1, 
                f#1, 
                #_module.LList.Cons($Box(u#1), 
                  _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LS($LZ)), 
                    f#1, 
                    _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))), 
              #_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LS($LZ)), 
                  n#1, 
                  f#1, 
                  $Box(u#1)), 
                _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LS($LZ)), 
                  n#1, 
                  f#1, 
                  _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LS($LZ)), 
                    f#1, 
                    _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            ##n#18 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#18, Tclass._System.nat(), $Heap);
            ##f#38 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#38, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##arg#18 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#18, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1));
            ##n#19 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#19, Tclass._System.nat(), $Heap);
            ##f#39 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#39, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#40 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#40, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#41 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#41, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#15 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#15, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##a#5 := _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#5, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              f#1, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            ##arg#19 := _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LZ), 
              f#1, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#19, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              n#1, 
              f#1, 
              _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LZ), 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)));
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1))
               && 
              _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))
               && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                n#1, 
                f#1, 
                _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LZ), 
                  f#1, 
                  _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)));
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(134,14)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            n##2 := n#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            f##3 := f#1;
            ##f#42 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#42, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#16 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#16, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            // ProcessCallStmt: CheckSubrange
            x##1 := _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1);
            call {:id "id117"} Call$$_module.__default.Lemma26(Tclass._module.LList(_module._default.BisimulationLemma#$A), n##2, f##3, x##1);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            ##n#20 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#20, Tclass._System.nat(), $Heap);
            ##f#43 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#43, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##arg#20 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#20, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1));
            assert {:id "id118"} $Is(n#1 + 1, Tclass._System.nat());
            ##n#21 := n#1 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#21, Tclass._System.nat(), $Heap);
            ##f#44 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#44, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#45 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#45, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#17 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#17, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##arg#21 := _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#21, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              n#1 + 1, 
              f#1, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1))
               && 
              _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                n#1 + 1, 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            assert {:id "id119"} {:subsumption 0} $Eq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LS($LZ)), 
              #_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LS($LZ)), 
                  n#1, 
                  f#1, 
                  $Box(u#1)), 
                _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LS($LZ)), 
                  n#1, 
                  f#1, 
                  _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LS($LZ)), 
                    f#1, 
                    _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))), 
              #_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LS($LZ)), 
                  n#1, 
                  f#1, 
                  $Box(u#1)), 
                _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LS($LZ)), 
                  n#1 + 1, 
                  f#1, 
                  _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            ##n#11 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#11, Tclass._System.nat(), $Heap);
            ##f#26 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#26, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##arg#11 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#11, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1));
            assume {:id "id103"} $Is(n#1 + 1, Tclass._System.nat());
            ##n#12 := n#1 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#12, Tclass._System.nat(), $Heap);
            ##f#27 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#27, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#28 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#28, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#10 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#10, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##arg#12 := _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#12, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              n#1 + 1, 
              f#1, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1))
               && 
              _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                n#1 + 1, 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(137,5)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(137,5)
                assert {:id "id111"} $Is(n#1 + 1, Tclass._System.nat());
                ##n#15 := n#1 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#15, Tclass._System.nat(), $Heap);
                ##f#33 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#33, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
                  $Heap);
                ##f#34 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#34, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
                  $Heap);
                ##M#13 := u#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##M#13, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
                assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
                ##arg#15 := _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##arg#15, 
                  Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
                  $Heap);
                assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  n#1 + 1, 
                  f#1, 
                  _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
                assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
                   && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    n#1 + 1, 
                    f#1, 
                    _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(137,5)
                assume {:id "id104"} $Is(n#1 + 1, Tclass._System.nat());
                ##n#13 := n#1 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#13, Tclass._System.nat(), $Heap);
                ##f#29 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#29, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
                  $Heap);
                ##f#30 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#30, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
                  $Heap);
                ##M#11 := u#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##M#11, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
                assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
                ##arg#13 := _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##arg#13, 
                  Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
                  $Heap);
                assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  n#1 + 1, 
                  f#1, 
                  _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
                assume _module.__default.h#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
                   && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    n#1 + 1, 
                    f#1, 
                    _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1));
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(137,5)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(137,5)
                assert {:id "id105"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id106"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                assert {:id "id107"} $Is(n#1 + 1, Tclass._System.nat());
                ##n#14 := n#1 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#14, Tclass._System.nat(), $Heap);
                ##f#31 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#31, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
                  $Heap);
                ##f#32 := f#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#32, 
                  Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
                  $Heap);
                ##M#12 := u#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##M#12, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
                assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
                ##arg#14 := _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##arg#14, 
                  Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
                  $Heap);
                assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  n#1 + 1, 
                  f#1, 
                  _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
                assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
                   && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    n#1 + 1, 
                    f#1, 
                    _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
                // ----- assert line0 ==# line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(137,5)
                assert {:id "id108"} {:subsumption 0} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $LS($LS($LZ)), 
                    _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LZ), 
                      n#1 + 1, 
                      f#1, 
                      _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)), 
                    _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LZ), 
                      n#1 + 1, 
                      f#1, 
                      _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)))
                   || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                     ==> 
                    _module.LList.Nil_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                        $LS($LS($LZ)), 
                        n#1 + 1, 
                        f#1, 
                        _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))
                     ==> _module.LList.Nil_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                        $LS($LS($LZ)), 
                        n#1 + 1, 
                        f#1, 
                        _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1))));
                assert {:id "id109"} {:subsumption 0} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $LS($LS($LZ)), 
                    _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LZ), 
                      n#1 + 1, 
                      f#1, 
                      _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)), 
                    _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LZ), 
                      n#1 + 1, 
                      f#1, 
                      _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)))
                   || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                     ==> 
                    _module.LList.Cons_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                        $LS($LS($LZ)), 
                        n#1 + 1, 
                        f#1, 
                        _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))
                     ==> _module.LList.Cons_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                          $LS($LS($LZ)), 
                          n#1 + 1, 
                          f#1, 
                          _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))
                       && 
                      $Eq#_module.LList(_module._default.BisimulationLemma#$A, 
                        _module._default.BisimulationLemma#$A, 
                        $LS($LS($LZ)), 
                        $Unbox(_module.LList.head(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                              $LS($LS($LZ)), 
                              n#1 + 1, 
                              f#1, 
                              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))): DatatypeType, 
                        $Unbox(_module.LList.head(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                              $LS($LS($LZ)), 
                              n#1 + 1, 
                              f#1, 
                              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))): DatatypeType)
                       && $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                        Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                        ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                        $LS($LS($LZ)), 
                        _module.LList.tail(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                            $LS($LS($LZ)), 
                            n#1 + 1, 
                            f#1, 
                            _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))), 
                        _module.LList.tail(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                            $LS($LS($LZ)), 
                            n#1 + 1, 
                            f#1, 
                            _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))));
                assert {:id "id110"} {:subsumption 0} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $LS($LS($LZ)), 
                    _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LZ), 
                      n#1 + 1, 
                      f#1, 
                      _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)), 
                    _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LZ), 
                      n#1 + 1, 
                      f#1, 
                      _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)))
                   || 
                  (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                     ==> (_module.LList.Nil_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                            $LS($LS($LZ)), 
                            n#1 + 1, 
                            f#1, 
                            _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))
                         ==> _module.LList.Nil_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                            $LS($LS($LZ)), 
                            n#1 + 1, 
                            f#1, 
                            _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1))))
                       && (_module.LList.Cons_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                            $LS($LS($LZ)), 
                            n#1 + 1, 
                            f#1, 
                            _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))
                         ==> _module.LList.Cons_q(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                              $LS($LS($LZ)), 
                              n#1 + 1, 
                              f#1, 
                              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))
                           && 
                          $Eq#_module.LList(_module._default.BisimulationLemma#$A, 
                            _module._default.BisimulationLemma#$A, 
                            $LS($LS($LZ)), 
                            $Unbox(_module.LList.head(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                                  $LS($LS($LZ)), 
                                  n#1 + 1, 
                                  f#1, 
                                  _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))): DatatypeType, 
                            $Unbox(_module.LList.head(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                                  $LS($LS($LZ)), 
                                  n#1 + 1, 
                                  f#1, 
                                  _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))): DatatypeType)
                           && $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                            Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                            ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                            $LS($LS($LZ)), 
                            _module.LList.tail(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                                $LS($LS($LZ)), 
                                n#1 + 1, 
                                f#1, 
                                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))), 
                            _module.LList.tail(_module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                                $LS($LS($LZ)), 
                                n#1 + 1, 
                                f#1, 
                                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1))))))
                   || (ORD#Minus(_k#0, ORD#FromNat(1)) != ORD#FromNat(0)
                       && ORD#IsLimit(ORD#Minus(_k#0, ORD#FromNat(1)))
                     ==> $Eq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LS($LZ)), 
                      _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                        $LS($LZ), 
                        n#1 + 1, 
                        f#1, 
                        _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)), 
                      _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                        $LS($LZ), 
                        n#1 + 1, 
                        f#1, 
                        _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1))));
                assume false;
            }

            assume {:id "id112"} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LZ), 
                n#1 + 1, 
                f#1, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)), 
              _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LZ), 
                n#1 + 1, 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)));
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            assume true;
            ##n#16 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#16, Tclass._System.nat(), $Heap);
            ##f#35 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#35, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##arg#16 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#16, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1));
            assert {:id "id113"} $Is(n#1 + 1, Tclass._System.nat());
            ##n#17 := n#1 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#17, Tclass._System.nat(), $Heap);
            ##f#36 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#36, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#37 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#37, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#14 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#14, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##arg#17 := _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#17, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              n#1 + 1, 
              f#1, 
              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1))
               && 
              _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                n#1 + 1, 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
            // ----- assert line3 ==# line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            assert {:id "id114"} {:subsumption 0} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                _k#0, 
                $LS($LS($LZ)), 
                #_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    n#1, 
                    f#1, 
                    $Box(u#1)), 
                  _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    n#1 + 1, 
                    f#1, 
                    _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))), 
                #_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    n#1, 
                    f#1, 
                    $Box(u#1)), 
                  _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    n#1 + 1, 
                    f#1, 
                    _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1))))
               || (0 < ORD#Offset(_k#0)
                 ==> 
                _module.LList.Nil_q(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LS($LZ)), 
                      n#1, 
                      f#1, 
                      $Box(u#1)), 
                    _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LS($LZ)), 
                      n#1 + 1, 
                      f#1, 
                      _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))))
                 ==> _module.LList.Nil_q(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LS($LZ)), 
                      n#1, 
                      f#1, 
                      $Box(u#1)), 
                    _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LS($LZ)), 
                      n#1 + 1, 
                      f#1, 
                      _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))));
            assert {:id "id115"} {:subsumption 0} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                _k#0, 
                $LS($LS($LZ)), 
                #_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    n#1, 
                    f#1, 
                    $Box(u#1)), 
                  _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    n#1 + 1, 
                    f#1, 
                    _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))), 
                #_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    n#1, 
                    f#1, 
                    $Box(u#1)), 
                  _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    n#1 + 1, 
                    f#1, 
                    _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1))))
               || (0 < ORD#Offset(_k#0)
                 ==> 
                _module.LList.Cons_q(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LS($LZ)), 
                      n#1, 
                      f#1, 
                      $Box(u#1)), 
                    _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LS($LZ)), 
                      n#1 + 1, 
                      f#1, 
                      _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))))
                 ==> _module.LList.Cons_q(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                        $LS($LS($LZ)), 
                        n#1, 
                        f#1, 
                        $Box(u#1)), 
                      _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                        $LS($LS($LZ)), 
                        n#1 + 1, 
                        f#1, 
                        _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1))))
                   && 
                  $Eq#_module.LList(_module._default.BisimulationLemma#$A, 
                    _module._default.BisimulationLemma#$A, 
                    $LS($LS($LZ)), 
                    $Unbox(_module.LList.head(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                            $LS($LS($LZ)), 
                            n#1, 
                            f#1, 
                            $Box(u#1)), 
                          _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                            $LS($LS($LZ)), 
                            n#1 + 1, 
                            f#1, 
                            _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))))): DatatypeType, 
                    $Unbox(_module.LList.head(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                            $LS($LS($LZ)), 
                            n#1, 
                            f#1, 
                            $Box(u#1)), 
                          _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                            $LS($LS($LZ)), 
                            n#1 + 1, 
                            f#1, 
                            _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1))))): DatatypeType)
                   && $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $LS($LS($LZ)), 
                    _module.LList.tail(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                          $LS($LS($LZ)), 
                          n#1, 
                          f#1, 
                          $Box(u#1)), 
                        _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                          $LS($LS($LZ)), 
                          n#1 + 1, 
                          f#1, 
                          _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))), 
                    _module.LList.tail(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                          $LS($LS($LZ)), 
                          n#1, 
                          f#1, 
                          $Box(u#1)), 
                        _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                          $LS($LS($LZ)), 
                          n#1 + 1, 
                          f#1, 
                          _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1))))));
            assert {:id "id116"} {:subsumption 0} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                _k#0, 
                $LS($LS($LZ)), 
                #_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    n#1, 
                    f#1, 
                    $Box(u#1)), 
                  _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    n#1 + 1, 
                    f#1, 
                    _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))), 
                #_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    n#1, 
                    f#1, 
                    $Box(u#1)), 
                  _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    n#1 + 1, 
                    f#1, 
                    _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1))))
               || 
              (0 < ORD#Offset(_k#0)
                 ==> (_module.LList.Nil_q(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                          $LS($LS($LZ)), 
                          n#1, 
                          f#1, 
                          $Box(u#1)), 
                        _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                          $LS($LS($LZ)), 
                          n#1 + 1, 
                          f#1, 
                          _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))))
                     ==> _module.LList.Nil_q(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                          $LS($LS($LZ)), 
                          n#1, 
                          f#1, 
                          $Box(u#1)), 
                        _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                          $LS($LS($LZ)), 
                          n#1 + 1, 
                          f#1, 
                          _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))))
                   && (_module.LList.Cons_q(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                          $LS($LS($LZ)), 
                          n#1, 
                          f#1, 
                          $Box(u#1)), 
                        _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                          $LS($LS($LZ)), 
                          n#1 + 1, 
                          f#1, 
                          _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))))
                     ==> _module.LList.Cons_q(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                            $LS($LS($LZ)), 
                            n#1, 
                            f#1, 
                            $Box(u#1)), 
                          _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                            $LS($LS($LZ)), 
                            n#1 + 1, 
                            f#1, 
                            _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1))))
                       && 
                      $Eq#_module.LList(_module._default.BisimulationLemma#$A, 
                        _module._default.BisimulationLemma#$A, 
                        $LS($LS($LZ)), 
                        $Unbox(_module.LList.head(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                                $LS($LS($LZ)), 
                                n#1, 
                                f#1, 
                                $Box(u#1)), 
                              _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                                $LS($LS($LZ)), 
                                n#1 + 1, 
                                f#1, 
                                _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))))): DatatypeType, 
                        $Unbox(_module.LList.head(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                                $LS($LS($LZ)), 
                                n#1, 
                                f#1, 
                                $Box(u#1)), 
                              _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                                $LS($LS($LZ)), 
                                n#1 + 1, 
                                f#1, 
                                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1))))): DatatypeType)
                       && $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                        Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                        ORD#Minus(_k#0, ORD#FromNat(1)), 
                        $LS($LS($LZ)), 
                        _module.LList.tail(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                              $LS($LS($LZ)), 
                              n#1, 
                              f#1, 
                              $Box(u#1)), 
                            _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                              $LS($LS($LZ)), 
                              n#1 + 1, 
                              f#1, 
                              _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)))), 
                        _module.LList.tail(#_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                              $LS($LS($LZ)), 
                              n#1, 
                              f#1, 
                              $Box(u#1)), 
                            _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                              $LS($LS($LZ)), 
                              n#1 + 1, 
                              f#1, 
                              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))))))
               || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
                 ==> $Eq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LS($LZ)), 
                  #_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LZ), 
                      n#1, 
                      f#1, 
                      $Box(u#1)), 
                    _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LZ), 
                      n#1 + 1, 
                      f#1, 
                      _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1))), 
                  #_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LZ), 
                      n#1, 
                      f#1, 
                      $Box(u#1)), 
                    _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                      $LS($LZ), 
                      n#1 + 1, 
                      f#1, 
                      _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            ##n#7 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#7, Tclass._System.nat(), $Heap);
            ##f#18 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#18, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##arg#7 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#7, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1));
            assume {:id "id100"} $Is(n#1 + 1, Tclass._System.nat());
            ##n#8 := n#1 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#8, Tclass._System.nat(), $Heap);
            ##f#19 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#19, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#20 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#20, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#7 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#7, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##arg#8 := _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#8, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              n#1 + 1, 
              f#1, 
              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1))
               && 
              _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                n#1 + 1, 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
            // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(143,14)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            n##1 := n#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            f##2 := f#1;
            ##f#21 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#21, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#8 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#8, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            // ProcessCallStmt: CheckSubrange
            x##0 := _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1);
            call {:id "id101"} Call$$_module.__default.Lemma26(Tclass._module.LList(_module._default.BisimulationLemma#$A), n##1, f##2, x##0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            ##n#9 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#9, Tclass._System.nat(), $Heap);
            ##f#22 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#22, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##arg#9 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#9, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1));
            ##n#10 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#10, Tclass._System.nat(), $Heap);
            ##f#23 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#23, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#24 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#24, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#25 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#25, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#9 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#9, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##a#4 := _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#4, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              f#1, 
              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
            ##arg#10 := _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LZ), 
              f#1, 
              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#10, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              n#1, 
              f#1, 
              _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LZ), 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)));
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1))
               && 
              _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1))
               && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                n#1, 
                f#1, 
                _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LZ), 
                  f#1, 
                  _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)));
            // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            assert {:id "id102"} {:subsumption 0} $Eq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LS($LZ)), 
              #_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LS($LZ)), 
                  n#1, 
                  f#1, 
                  $Box(u#1)), 
                _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LS($LZ)), 
                  n#1 + 1, 
                  f#1, 
                  _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1))), 
              #_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LS($LZ)), 
                  n#1, 
                  f#1, 
                  $Box(u#1)), 
                _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LS($LZ)), 
                  n#1, 
                  f#1, 
                  _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LS($LZ)), 
                    f#1, 
                    _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            ##n#4 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#4, Tclass._System.nat(), $Heap);
            ##f#9 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#9, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##arg#4 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#4, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1));
            ##n#5 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#5, Tclass._System.nat(), $Heap);
            ##f#10 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#10, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#11 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#11, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#12 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#12, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#4 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#4, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##a#1 := _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              f#1, 
              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
            ##arg#5 := _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LZ), 
              f#1, 
              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#5, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              n#1, 
              f#1, 
              _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LZ), 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)));
            assume _module.__default.Iter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), n#1, f#1, $Box(u#1))
               && 
              _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1))
               && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                n#1, 
                f#1, 
                _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LZ), 
                  f#1, 
                  _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)));
            // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(145,14)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            n##0 := n#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            f##1 := f#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##0 := u#1;
            ##f#13 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#13, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#14 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#14, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#5 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#5, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##a#2 := _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#2, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              f#1, 
              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
            assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
            // ProcessCallStmt: CheckSubrange
            M##1 := _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LZ), 
              f#1, 
              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
            call {:id "id98"} Call$$_module.__default.Lemma25(Tclass._module.LList(_module._default.BisimulationLemma#$A), n##0, f##1, $Box(b##0), M##1);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            ##n#6 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#6, Tclass._System.nat(), $Heap);
            ##f#15 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#15, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#16 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#16, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#17 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#17, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#6 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#6, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##a#3 := _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#3, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              f#1, 
              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
            ##arg#6 := #_module.LList.Cons($Box(u#1), 
              _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LZ), 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#6, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              n#1, 
              f#1, 
              #_module.LList.Cons($Box(u#1), 
                _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LZ), 
                  f#1, 
                  _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1))));
            assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1))
               && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                n#1, 
                f#1, 
                #_module.LList.Cons($Box(u#1), 
                  _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    f#1, 
                    _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1))));
            // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            assert {:id "id99"} {:subsumption 0} $Eq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LS($LZ)), 
              #_module.LList.Cons(_module.__default.Iter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LS($LZ)), 
                  n#1, 
                  f#1, 
                  $Box(u#1)), 
                _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LS($LZ)), 
                  n#1, 
                  f#1, 
                  _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LS($LZ)), 
                    f#1, 
                    _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))), 
              _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LS($LZ)), 
                n#1, 
                f#1, 
                #_module.LList.Cons($Box(u#1), 
                  _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LS($LZ)), 
                    f#1, 
                    _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            ##n#2 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
            ##f#4 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#4, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#5 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#5, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#6 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#6, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#2 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#2, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##a#0 := _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              f#1, 
              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
            ##arg#2 := #_module.LList.Cons($Box(u#1), 
              _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LZ), 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#2, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              n#1, 
              f#1, 
              #_module.LList.Cons($Box(u#1), 
                _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                  $LS($LZ), 
                  f#1, 
                  _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1))));
            assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.Lmap#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1))
               && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                n#1, 
                f#1, 
                #_module.LList.Cons($Box(u#1), 
                  _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LZ), 
                    f#1, 
                    _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1))));
            // ----- Hint6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(147,20)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            f##0 := f#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            M##0 := u#1;
            call {:id "id96"} Call$$_module.__default.CorollaryEq24(_module._default.BisimulationLemma#$A, f##0, M##0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            ##n#3 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
            ##f#7 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#7, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##f#8 := f#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#8, 
              Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            ##M#3 := u#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##M#3, Tclass._module.LList(_module._default.BisimulationLemma#$A), $Heap);
            assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1);
            ##arg#3 := _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##arg#3, 
              Tclass._module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A)), 
              $Heap);
            assume _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              n#1, 
              f#1, 
              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
            assume _module.__default.Iterates#canCall(_module._default.BisimulationLemma#$A, f#1, u#1)
               && _module.__default.LmapIter#canCall(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                n#1, 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1));
            // ----- assert line6 == line7 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(128,3)
            assert {:id "id97"} {:subsumption 0} $Eq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LS($LZ)), 
              _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LS($LZ)), 
                n#1, 
                f#1, 
                #_module.LList.Cons($Box(u#1), 
                  _module.__default.Lmap(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                    $LS($LS($LZ)), 
                    f#1, 
                    _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)))), 
              _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LS($LZ)), 
                n#1, 
                f#1, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LS($LZ)), f#1, u#1)));
            assume false;
        }

        assume {:id "id124"} $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
          Tclass._module.LList(_module._default.BisimulationLemma#$A), 
          _k#0, 
          $LS($LS($LZ)), 
          _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
            $LS($LZ), 
            n#1, 
            f#1, 
            _module.__default.h(_module._default.BisimulationLemma#$A, f#1, u#1)), 
          _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
            $LS($LZ), 
            n#1, 
            f#1, 
            _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#1, u#1)));
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(127,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, n#2: int, f#2: DatatypeType, u#2: DatatypeType :: 
          { _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LZ), 
              n#2, 
              f#2, 
              _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#2, u#2)), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              $LS($LZ), 
              n#2, 
              f#2, 
              _module.__default.h(_module._default.BisimulationLemma#$A, f#2, u#2)), ORD#Less(_k'#0, _k#0) } 
          LitInt(0) <= n#2
               && $Is(f#2, 
                Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.BisimulationLemma#$A)))
               && $Is(u#2, Tclass._module.LList(_module._default.BisimulationLemma#$A))
               && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.LList(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              Tclass._module.LList(_module._default.BisimulationLemma#$A), 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LZ), 
                n#2, 
                f#2, 
                _module.__default.h(_module._default.BisimulationLemma#$A, f#2, u#2)), 
              _module.__default.LmapIter(Tclass._module.LList(_module._default.BisimulationLemma#$A), 
                $LS($LZ), 
                n#2, 
                f#2, 
                _module.__default.Iterates(_module._default.BisimulationLemma#$A, $LS($LZ), f#2, u#2))));
    }
}



procedure {:verboseName "Example7 (well-formedness)"} CheckWellFormed$$_module.__default.Example7(_module._default.Example7$A: Ty, 
    f#0: DatatypeType
       where $Is(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Example7$A)))
         && $IsAlloc(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Example7$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#0));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Example7 (call)"} Call$$_module.__default.Example7(_module._default.Example7$A: Ty, 
    f#0: DatatypeType
       where $Is(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Example7$A)))
         && $IsAlloc(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Example7$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall M#1: DatatypeType :: 
    { _module.__default.Iterates(_module._default.Example7$A, $LS($LZ), f#0, M#1) } 
      { _module.__default.h(_module._default.Example7$A, f#0, M#1) } 
    $Is(M#1, Tclass._module.LList(_module._default.Example7$A))
       ==> $IsA#_module.LList(_module.__default.h(_module._default.Example7$A, f#0, M#1))
         && $IsA#_module.LList(_module.__default.Iterates(_module._default.Example7$A, $LS($LZ), f#0, M#1))
         && 
        _module.__default.h#canCall(_module._default.Example7$A, f#0, M#1)
         && _module.__default.Iterates#canCall(_module._default.Example7$A, f#0, M#1));
  free ensures {:id "id127"} (forall M#1: DatatypeType :: 
    { _module.__default.Iterates(_module._default.Example7$A, $LS($LZ), f#0, M#1) } 
      { _module.__default.h(_module._default.Example7$A, f#0, M#1) } 
    $Is(M#1, Tclass._module.LList(_module._default.Example7$A))
         && $IsAlloc(M#1, Tclass._module.LList(_module._default.Example7$A), $Heap)
       ==> $Eq#_module.LList(Tclass._module.LList(_module._default.Example7$A), 
        Tclass._module.LList(_module._default.Example7$A), 
        $LS($LS($LZ)), 
        _module.__default.h(_module._default.Example7$A, f#0, M#1), 
        _module.__default.Iterates(_module._default.Example7$A, $LS($LZ), f#0, M#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Example7 (correctness)"} Impl$$_module.__default.Example7(_module._default.Example7$A: Ty, 
    f#0: DatatypeType
       where $Is(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Example7$A)))
         && $IsAlloc(f#0, 
          Tclass._module.FunctionHandle(Tclass._module.LList(_module._default.Example7$A)), 
          $Heap)
         && $IsA#_module.FunctionHandle(f#0))
   returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall M#1: DatatypeType :: 
    { _module.__default.Iterates(_module._default.Example7$A, $LS($LZ), f#0, M#1) } 
      { _module.__default.h(_module._default.Example7$A, f#0, M#1) } 
    $Is(M#1, Tclass._module.LList(_module._default.Example7$A))
       ==> $IsA#_module.LList(_module.__default.h(_module._default.Example7$A, f#0, M#1))
         && $IsA#_module.LList(_module.__default.Iterates(_module._default.Example7$A, $LS($LZ), f#0, M#1))
         && 
        _module.__default.h#canCall(_module._default.Example7$A, f#0, M#1)
         && _module.__default.Iterates#canCall(_module._default.Example7$A, f#0, M#1));
  ensures {:id "id128"} (forall M#1: DatatypeType :: 
    { _module.__default.Iterates(_module._default.Example7$A, $LS($LS($LZ)), f#0, M#1) } 
      { _module.__default.h(_module._default.Example7$A, f#0, M#1) } 
    $Is(M#1, Tclass._module.LList(_module._default.Example7$A))
         && $IsAlloc(M#1, Tclass._module.LList(_module._default.Example7$A), $Heap)
       ==> $Eq#_module.LList(Tclass._module.LList(_module._default.Example7$A), 
        Tclass._module.LList(_module._default.Example7$A), 
        $LS($LS($LZ)), 
        _module.__default.h(_module._default.Example7$A, f#0, M#1), 
        _module.__default.Iterates(_module._default.Example7$A, $LS($LS($LZ)), f#0, M#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Example7 (correctness)"} Impl$$_module.__default.Example7(_module._default.Example7$A: Ty, f#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var M#0_0: DatatypeType;
  var n##0_0: int;
  var f##0_0: DatatypeType;
  var u##0_0: DatatypeType;
  var $initHeapForallStmt#0_0: Heap;

    // AddMethodImpl: Example7, Impl$$_module.__default.Example7
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(156,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc M#0_0;
        assume $Is(M#0_0, Tclass._module.LList(_module._default.Example7$A))
           && $IsAlloc(M#0_0, Tclass._module.LList(_module._default.Example7$A), $Heap);
        assume true;
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(157,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id129"} $Is(LitInt(0), Tclass._System.nat());
        n##0_0 := LitInt(0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        f##0_0 := f#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        u##0_0 := M#0_0;
        call {:id "id130"} Call$$_module.__default.BisimulationLemma(_module._default.Example7$A, n##0_0, f##0_0, u##0_0);
        // TrCallStmt: After ProcessCallStmt
        assume false;
    }
    else
    {
        $initHeapForallStmt#0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#0_0 == $Heap;
        assume (forall M#0_1: DatatypeType :: 
          { _module.__default.Iterates(_module._default.Example7$A, $LS($LZ), f#0, M#0_1) } 
            { _module.__default.h(_module._default.Example7$A, f#0, M#0_1) } 
          $Is(M#0_1, Tclass._module.LList(_module._default.Example7$A)) && Lit(true)
             ==> $Eq#_module.LList(Tclass._module.LList(_module._default.Example7$A), 
              Tclass._module.LList(_module._default.Example7$A), 
              $LS($LS($LZ)), 
              _module.__default.LmapIter(Tclass._module.LList(_module._default.Example7$A), 
                $LS($LZ), 
                LitInt(0), 
                f#0, 
                _module.__default.h(_module._default.Example7$A, f#0, M#0_1)), 
              _module.__default.LmapIter(Tclass._module.LList(_module._default.Example7$A), 
                $LS($LZ), 
                LitInt(0), 
                f#0, 
                _module.__default.Iterates(_module._default.Example7$A, $LS($LZ), f#0, M#0_1))));
    }
}



procedure {:verboseName "Example8 (well-formedness)"} CheckWellFormed$$_module.__default.Example8(_module._default.Example8$A: Ty, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.Example8$A))
         && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.Example8$A), $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.LList(_module._default.Example8$A))
         && $IsAlloc(M#0, Tclass._module.LList(_module._default.Example8$A), $Heap)
         && $IsA#_module.LList(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.LList(_module._default.Example8$A))
         && $IsAlloc(N#0, Tclass._module.LList(_module._default.Example8$A), $Heap)
         && $IsA#_module.LList(N#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Example8 (call)"} Call$$_module.__default.Example8(_module._default.Example8$A: Ty, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.FunctionHandle(_module._default.Example8$A))
         && $IsAlloc(f#0, Tclass._module.FunctionHandle(_module._default.Example8$A), $Heap)
         && $IsA#_module.FunctionHandle(f#0), 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.LList(_module._default.Example8$A))
         && $IsAlloc(M#0, Tclass._module.LList(_module._default.Example8$A), $Heap)
         && $IsA#_module.LList(M#0), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.LList(_module._default.Example8$A))
         && $IsAlloc(N#0, Tclass._module.LList(_module._default.Example8$A), $Heap)
         && $IsA#_module.LList(N#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.LList(_module.__default.Lmap(_module._default.Example8$A, 
        $LS($LZ), 
        f#0, 
        _module.__default.Lappend(_module._default.Example8$A, $LS($LZ), M#0, N#0)))
     && $IsA#_module.LList(_module.__default.Lappend(_module._default.Example8$A, 
        $LS($LZ), 
        _module.__default.Lmap(_module._default.Example8$A, $LS($LZ), f#0, M#0), 
        _module.__default.Lmap(_module._default.Example8$A, $LS($LZ), f#0, N#0)))
     && 
    _module.__default.Lappend#canCall(_module._default.Example8$A, M#0, N#0)
     && _module.__default.Lmap#canCall(_module._default.Example8$A, 
      f#0, 
      _module.__default.Lappend(_module._default.Example8$A, $LS($LZ), M#0, N#0))
     && 
    _module.__default.Lmap#canCall(_module._default.Example8$A, f#0, M#0)
     && _module.__default.Lmap#canCall(_module._default.Example8$A, f#0, N#0)
     && _module.__default.Lappend#canCall(_module._default.Example8$A, 
      _module.__default.Lmap(_module._default.Example8$A, $LS($LZ), f#0, M#0), 
      _module.__default.Lmap(_module._default.Example8$A, $LS($LZ), f#0, N#0));
  ensures {:id "id132"} $Eq#_module.LList(_module._default.Example8$A, 
    _module._default.Example8$A, 
    $LS($LS($LZ)), 
    _module.__default.Lmap(_module._default.Example8$A, 
      $LS($LS($LZ)), 
      f#0, 
      _module.__default.Lappend(_module._default.Example8$A, $LS($LS($LZ)), M#0, N#0)), 
    _module.__default.Lappend(_module._default.Example8$A, 
      $LS($LS($LZ)), 
      _module.__default.Lmap(_module._default.Example8$A, $LS($LS($LZ)), f#0, M#0), 
      _module.__default.Lmap(_module._default.Example8$A, $LS($LS($LZ)), f#0, N#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Example8# (co-call)"} CoCall$$_module.__default.Example8_h(_module._default.Example8#$A: Ty, 
    _k#0: Box, 
    f#1: DatatypeType
       where $Is(f#1, Tclass._module.FunctionHandle(_module._default.Example8#$A))
         && $IsAlloc(f#1, Tclass._module.FunctionHandle(_module._default.Example8#$A), $Heap)
         && $IsA#_module.FunctionHandle(f#1), 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.LList(_module._default.Example8#$A))
         && $IsAlloc(M#1, Tclass._module.LList(_module._default.Example8#$A), $Heap)
         && $IsA#_module.LList(M#1), 
    N#1: DatatypeType
       where $Is(N#1, Tclass._module.LList(_module._default.Example8#$A))
         && $IsAlloc(N#1, Tclass._module.LList(_module._default.Example8#$A), $Heap)
         && $IsA#_module.LList(N#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Lappend#canCall(_module._default.Example8#$A, M#1, N#1)
     && _module.__default.Lmap#canCall(_module._default.Example8#$A, 
      f#1, 
      _module.__default.Lappend(_module._default.Example8#$A, $LS($LZ), M#1, N#1))
     && 
    _module.__default.Lmap#canCall(_module._default.Example8#$A, f#1, M#1)
     && _module.__default.Lmap#canCall(_module._default.Example8#$A, f#1, N#1)
     && _module.__default.Lappend#canCall(_module._default.Example8#$A, 
      _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#1, M#1), 
      _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#1, N#1));
  free ensures {:id "id133"} $PrefixEq#_module.LList(_module._default.Example8#$A, 
    _module._default.Example8#$A, 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.Lmap(_module._default.Example8#$A, 
      $LS($LZ), 
      f#1, 
      _module.__default.Lappend(_module._default.Example8#$A, $LS($LZ), M#1, N#1)), 
    _module.__default.Lappend(_module._default.Example8#$A, 
      $LS($LZ), 
      _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#1, M#1), 
      _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#1, N#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Example8# (correctness)"} Impl$$_module.__default.Example8_h(_module._default.Example8#$A: Ty, 
    _k#0: Box, 
    f#1: DatatypeType
       where $Is(f#1, Tclass._module.FunctionHandle(_module._default.Example8#$A))
         && $IsAlloc(f#1, Tclass._module.FunctionHandle(_module._default.Example8#$A), $Heap)
         && $IsA#_module.FunctionHandle(f#1), 
    M#1: DatatypeType
       where $Is(M#1, Tclass._module.LList(_module._default.Example8#$A))
         && $IsAlloc(M#1, Tclass._module.LList(_module._default.Example8#$A), $Heap)
         && $IsA#_module.LList(M#1), 
    N#1: DatatypeType
       where $Is(N#1, Tclass._module.LList(_module._default.Example8#$A))
         && $IsAlloc(N#1, Tclass._module.LList(_module._default.Example8#$A), $Heap)
         && $IsA#_module.LList(N#1))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Lappend#canCall(_module._default.Example8#$A, M#1, N#1)
     && _module.__default.Lmap#canCall(_module._default.Example8#$A, 
      f#1, 
      _module.__default.Lappend(_module._default.Example8#$A, $LS($LZ), M#1, N#1))
     && 
    _module.__default.Lmap#canCall(_module._default.Example8#$A, f#1, M#1)
     && _module.__default.Lmap#canCall(_module._default.Example8#$A, f#1, N#1)
     && _module.__default.Lappend#canCall(_module._default.Example8#$A, 
      _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#1, M#1), 
      _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#1, N#1));
  ensures {:id "id134"} $PrefixEq#_module.LList(_module._default.Example8#$A, 
      _module._default.Example8#$A, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Lmap(_module._default.Example8#$A, 
        $LS($LZ), 
        f#1, 
        _module.__default.Lappend(_module._default.Example8#$A, $LS($LZ), M#1, N#1)), 
      _module.__default.Lappend(_module._default.Example8#$A, 
        $LS($LZ), 
        _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#1, M#1), 
        _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#1, N#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.LList.Nil_q(_module.__default.Lmap(_module._default.Example8#$A, 
          $LS($LS($LZ)), 
          f#1, 
          _module.__default.Lappend(_module._default.Example8#$A, $LS($LS($LZ)), M#1, N#1)))
       ==> _module.LList.Nil_q(_module.__default.Lappend(_module._default.Example8#$A, 
          $LS($LS($LZ)), 
          _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, M#1), 
          _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, N#1))));
  ensures {:id "id135"} $PrefixEq#_module.LList(_module._default.Example8#$A, 
      _module._default.Example8#$A, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Lmap(_module._default.Example8#$A, 
        $LS($LZ), 
        f#1, 
        _module.__default.Lappend(_module._default.Example8#$A, $LS($LZ), M#1, N#1)), 
      _module.__default.Lappend(_module._default.Example8#$A, 
        $LS($LZ), 
        _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#1, M#1), 
        _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#1, N#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.LList.Cons_q(_module.__default.Lmap(_module._default.Example8#$A, 
          $LS($LS($LZ)), 
          f#1, 
          _module.__default.Lappend(_module._default.Example8#$A, $LS($LS($LZ)), M#1, N#1)))
       ==> _module.LList.Cons_q(_module.__default.Lappend(_module._default.Example8#$A, 
            $LS($LS($LZ)), 
            _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, M#1), 
            _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, N#1)))
         && 
        _module.LList.head(_module.__default.Lmap(_module._default.Example8#$A, 
              $LS($LS($LZ)), 
              f#1, 
              _module.__default.Lappend(_module._default.Example8#$A, $LS($LS($LZ)), M#1, N#1)))
           == _module.LList.head(_module.__default.Lappend(_module._default.Example8#$A, 
              $LS($LS($LZ)), 
              _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, M#1), 
              _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, N#1)))
         && $PrefixEq#_module.LList(_module._default.Example8#$A, 
          _module._default.Example8#$A, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.LList.tail(_module.__default.Lmap(_module._default.Example8#$A, 
              $LS($LS($LZ)), 
              f#1, 
              _module.__default.Lappend(_module._default.Example8#$A, $LS($LS($LZ)), M#1, N#1))), 
          _module.LList.tail(_module.__default.Lappend(_module._default.Example8#$A, 
              $LS($LS($LZ)), 
              _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, M#1), 
              _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, N#1)))));
  ensures {:id "id136"} $PrefixEq#_module.LList(_module._default.Example8#$A, 
      _module._default.Example8#$A, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Lmap(_module._default.Example8#$A, 
        $LS($LZ), 
        f#1, 
        _module.__default.Lappend(_module._default.Example8#$A, $LS($LZ), M#1, N#1)), 
      _module.__default.Lappend(_module._default.Example8#$A, 
        $LS($LZ), 
        _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#1, M#1), 
        _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#1, N#1)))
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.LList.Nil_q(_module.__default.Lmap(_module._default.Example8#$A, 
              $LS($LS($LZ)), 
              f#1, 
              _module.__default.Lappend(_module._default.Example8#$A, $LS($LS($LZ)), M#1, N#1)))
           ==> _module.LList.Nil_q(_module.__default.Lappend(_module._default.Example8#$A, 
              $LS($LS($LZ)), 
              _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, M#1), 
              _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, N#1))))
         && (_module.LList.Cons_q(_module.__default.Lmap(_module._default.Example8#$A, 
              $LS($LS($LZ)), 
              f#1, 
              _module.__default.Lappend(_module._default.Example8#$A, $LS($LS($LZ)), M#1, N#1)))
           ==> _module.LList.Cons_q(_module.__default.Lappend(_module._default.Example8#$A, 
                $LS($LS($LZ)), 
                _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, M#1), 
                _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, N#1)))
             && 
            _module.LList.head(_module.__default.Lmap(_module._default.Example8#$A, 
                  $LS($LS($LZ)), 
                  f#1, 
                  _module.__default.Lappend(_module._default.Example8#$A, $LS($LS($LZ)), M#1, N#1)))
               == _module.LList.head(_module.__default.Lappend(_module._default.Example8#$A, 
                  $LS($LS($LZ)), 
                  _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, M#1), 
                  _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, N#1)))
             && $PrefixEq#_module.LList(_module._default.Example8#$A, 
              _module._default.Example8#$A, 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.LList.tail(_module.__default.Lmap(_module._default.Example8#$A, 
                  $LS($LS($LZ)), 
                  f#1, 
                  _module.__default.Lappend(_module._default.Example8#$A, $LS($LS($LZ)), M#1, N#1))), 
              _module.LList.tail(_module.__default.Lappend(_module._default.Example8#$A, 
                  $LS($LS($LZ)), 
                  _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, M#1), 
                  _module.__default.Lmap(_module._default.Example8#$A, $LS($LS($LZ)), f#1, N#1))))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.LList(_module._default.Example8#$A, 
        _module._default.Example8#$A, 
        $LS($LS($LZ)), 
        _module.__default.Lmap(_module._default.Example8#$A, 
          $LS($LZ), 
          f#1, 
          _module.__default.Lappend(_module._default.Example8#$A, $LS($LZ), M#1, N#1)), 
        _module.__default.Lappend(_module._default.Example8#$A, 
          $LS($LZ), 
          _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#1, M#1), 
          _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#1, N#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Example8# (correctness)"} Impl$$_module.__default.Example8_h(_module._default.Example8#$A: Ty, 
    _k#0: Box, 
    f#1: DatatypeType, 
    M#1: DatatypeType, 
    N#1: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Example8#, Impl$$_module.__default.Example8_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.FunctionHandle(f#1);
    assume $IsA#_module.LList(M#1);
    assume $IsA#_module.LList(N#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, 
        $ih#f0#0: DatatypeType, 
        $ih#M0#0: DatatypeType, 
        $ih#N0#0: DatatypeType :: 
      { $PrefixEq#_module.LList(_module._default.Example8#$A, 
          _module._default.Example8#$A, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.Lmap(_module._default.Example8#$A, 
            $LS($LZ), 
            $ih#f0#0, 
            _module.__default.Lappend(_module._default.Example8#$A, $LS($LZ), $ih#M0#0, $ih#N0#0)), 
          _module.__default.Lappend(_module._default.Example8#$A, 
            $LS($LZ), 
            _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), $ih#f0#0, $ih#M0#0), 
            _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), $ih#f0#0, $ih#N0#0))) } 
      $Is($ih#f0#0, Tclass._module.FunctionHandle(_module._default.Example8#$A))
           && $Is($ih#M0#0, Tclass._module.LList(_module._default.Example8#$A))
           && $Is($ih#N0#0, Tclass._module.LList(_module._default.Example8#$A))
           && Lit(true)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0 && DtRank($ih#f0#0) < DtRank(f#1)))
         ==> $PrefixEq#_module.LList(_module._default.Example8#$A, 
          _module._default.Example8#$A, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.Lmap(_module._default.Example8#$A, 
            $LS($LZ), 
            $ih#f0#0, 
            _module.__default.Lappend(_module._default.Example8#$A, $LS($LZ), $ih#M0#0, $ih#N0#0)), 
          _module.__default.Lappend(_module._default.Example8#$A, 
            $LS($LZ), 
            _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), $ih#f0#0, $ih#M0#0), 
            _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), $ih#f0#0, $ih#N0#0))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(165,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(165,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, f#2: DatatypeType, M#2: DatatypeType, N#2: DatatypeType :: 
          { _module.__default.Lappend(_module._default.Example8#$A, 
              $LS($LZ), 
              _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#2, M#2), 
              _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#2, N#2)), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.Lmap(_module._default.Example8#$A, 
              $LS($LZ), 
              f#2, 
              _module.__default.Lappend(_module._default.Example8#$A, $LS($LZ), M#2, N#2)), ORD#Less(_k'#0, _k#0) } 
          $Is(f#2, Tclass._module.FunctionHandle(_module._default.Example8#$A))
               && $Is(M#2, Tclass._module.LList(_module._default.Example8#$A))
               && $Is(N#2, Tclass._module.LList(_module._default.Example8#$A))
               && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.LList(_module._default.Example8#$A, 
              _module._default.Example8#$A, 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.Lmap(_module._default.Example8#$A, 
                $LS($LZ), 
                f#2, 
                _module.__default.Lappend(_module._default.Example8#$A, $LS($LZ), M#2, N#2)), 
              _module.__default.Lappend(_module._default.Example8#$A, 
                $LS($LZ), 
                _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#2, M#2), 
                _module.__default.Lmap(_module._default.Example8#$A, $LS($LZ), f#2, N#2))));
    }
}



procedure {:verboseName "Associativity (well-formedness)"} CheckWellFormed$$_module.__default.Associativity(_module._default.Associativity$_T0: Ty, 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.LList(_module._default.Associativity$_T0))
         && $IsAlloc(a#0, Tclass._module.LList(_module._default.Associativity$_T0), $Heap)
         && $IsA#_module.LList(a#0), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.LList(_module._default.Associativity$_T0))
         && $IsAlloc(b#0, Tclass._module.LList(_module._default.Associativity$_T0), $Heap)
         && $IsA#_module.LList(b#0), 
    c#0: DatatypeType
       where $Is(c#0, Tclass._module.LList(_module._default.Associativity$_T0))
         && $IsAlloc(c#0, Tclass._module.LList(_module._default.Associativity$_T0), $Heap)
         && $IsA#_module.LList(c#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Associativity (call)"} Call$$_module.__default.Associativity(_module._default.Associativity$_T0: Ty, 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.LList(_module._default.Associativity$_T0))
         && $IsAlloc(a#0, Tclass._module.LList(_module._default.Associativity$_T0), $Heap)
         && $IsA#_module.LList(a#0), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.LList(_module._default.Associativity$_T0))
         && $IsAlloc(b#0, Tclass._module.LList(_module._default.Associativity$_T0), $Heap)
         && $IsA#_module.LList(b#0), 
    c#0: DatatypeType
       where $Is(c#0, Tclass._module.LList(_module._default.Associativity$_T0))
         && $IsAlloc(c#0, Tclass._module.LList(_module._default.Associativity$_T0), $Heap)
         && $IsA#_module.LList(c#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.LList(_module.__default.Lappend(_module._default.Associativity$_T0, 
        $LS($LZ), 
        _module.__default.Lappend(_module._default.Associativity$_T0, $LS($LZ), a#0, b#0), 
        c#0))
     && $IsA#_module.LList(_module.__default.Lappend(_module._default.Associativity$_T0, 
        $LS($LZ), 
        a#0, 
        _module.__default.Lappend(_module._default.Associativity$_T0, $LS($LZ), b#0, c#0)))
     && 
    _module.__default.Lappend#canCall(_module._default.Associativity$_T0, a#0, b#0)
     && _module.__default.Lappend#canCall(_module._default.Associativity$_T0, 
      _module.__default.Lappend(_module._default.Associativity$_T0, $LS($LZ), a#0, b#0), 
      c#0)
     && 
    _module.__default.Lappend#canCall(_module._default.Associativity$_T0, b#0, c#0)
     && _module.__default.Lappend#canCall(_module._default.Associativity$_T0, 
      a#0, 
      _module.__default.Lappend(_module._default.Associativity$_T0, $LS($LZ), b#0, c#0));
  ensures {:id "id138"} $Eq#_module.LList(_module._default.Associativity$_T0, 
    _module._default.Associativity$_T0, 
    $LS($LS($LZ)), 
    _module.__default.Lappend(_module._default.Associativity$_T0, 
      $LS($LS($LZ)), 
      _module.__default.Lappend(_module._default.Associativity$_T0, $LS($LS($LZ)), a#0, b#0), 
      c#0), 
    _module.__default.Lappend(_module._default.Associativity$_T0, 
      $LS($LS($LZ)), 
      a#0, 
      _module.__default.Lappend(_module._default.Associativity$_T0, $LS($LS($LZ)), b#0, c#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Associativity# (co-call)"} CoCall$$_module.__default.Associativity_h(_module._default.Associativity#$_T0: Ty, 
    _k#0: Box, 
    a#1: DatatypeType
       where $Is(a#1, Tclass._module.LList(_module._default.Associativity#$_T0))
         && $IsAlloc(a#1, Tclass._module.LList(_module._default.Associativity#$_T0), $Heap)
         && $IsA#_module.LList(a#1), 
    b#1: DatatypeType
       where $Is(b#1, Tclass._module.LList(_module._default.Associativity#$_T0))
         && $IsAlloc(b#1, Tclass._module.LList(_module._default.Associativity#$_T0), $Heap)
         && $IsA#_module.LList(b#1), 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.LList(_module._default.Associativity#$_T0))
         && $IsAlloc(c#1, Tclass._module.LList(_module._default.Associativity#$_T0), $Heap)
         && $IsA#_module.LList(c#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Lappend#canCall(_module._default.Associativity#$_T0, a#1, b#1)
     && _module.__default.Lappend#canCall(_module._default.Associativity#$_T0, 
      _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), a#1, b#1), 
      c#1)
     && 
    _module.__default.Lappend#canCall(_module._default.Associativity#$_T0, b#1, c#1)
     && _module.__default.Lappend#canCall(_module._default.Associativity#$_T0, 
      a#1, 
      _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), b#1, c#1));
  free ensures {:id "id139"} $PrefixEq#_module.LList(_module._default.Associativity#$_T0, 
    _module._default.Associativity#$_T0, 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.Lappend(_module._default.Associativity#$_T0, 
      $LS($LZ), 
      _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), a#1, b#1), 
      c#1), 
    _module.__default.Lappend(_module._default.Associativity#$_T0, 
      $LS($LZ), 
      a#1, 
      _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), b#1, c#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Associativity# (correctness)"} Impl$$_module.__default.Associativity_h(_module._default.Associativity#$_T0: Ty, 
    _k#0: Box, 
    a#1: DatatypeType
       where $Is(a#1, Tclass._module.LList(_module._default.Associativity#$_T0))
         && $IsAlloc(a#1, Tclass._module.LList(_module._default.Associativity#$_T0), $Heap)
         && $IsA#_module.LList(a#1), 
    b#1: DatatypeType
       where $Is(b#1, Tclass._module.LList(_module._default.Associativity#$_T0))
         && $IsAlloc(b#1, Tclass._module.LList(_module._default.Associativity#$_T0), $Heap)
         && $IsA#_module.LList(b#1), 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.LList(_module._default.Associativity#$_T0))
         && $IsAlloc(c#1, Tclass._module.LList(_module._default.Associativity#$_T0), $Heap)
         && $IsA#_module.LList(c#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Lappend#canCall(_module._default.Associativity#$_T0, a#1, b#1)
     && _module.__default.Lappend#canCall(_module._default.Associativity#$_T0, 
      _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), a#1, b#1), 
      c#1)
     && 
    _module.__default.Lappend#canCall(_module._default.Associativity#$_T0, b#1, c#1)
     && _module.__default.Lappend#canCall(_module._default.Associativity#$_T0, 
      a#1, 
      _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), b#1, c#1));
  ensures {:id "id140"} $PrefixEq#_module.LList(_module._default.Associativity#$_T0, 
      _module._default.Associativity#$_T0, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Lappend(_module._default.Associativity#$_T0, 
        $LS($LZ), 
        _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), a#1, b#1), 
        c#1), 
      _module.__default.Lappend(_module._default.Associativity#$_T0, 
        $LS($LZ), 
        a#1, 
        _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), b#1, c#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.LList.Nil_q(_module.__default.Lappend(_module._default.Associativity#$_T0, 
          $LS($LS($LZ)), 
          _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), a#1, b#1), 
          c#1))
       ==> _module.LList.Nil_q(_module.__default.Lappend(_module._default.Associativity#$_T0, 
          $LS($LS($LZ)), 
          a#1, 
          _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), b#1, c#1))));
  ensures {:id "id141"} $PrefixEq#_module.LList(_module._default.Associativity#$_T0, 
      _module._default.Associativity#$_T0, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Lappend(_module._default.Associativity#$_T0, 
        $LS($LZ), 
        _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), a#1, b#1), 
        c#1), 
      _module.__default.Lappend(_module._default.Associativity#$_T0, 
        $LS($LZ), 
        a#1, 
        _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), b#1, c#1)))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.LList.Cons_q(_module.__default.Lappend(_module._default.Associativity#$_T0, 
          $LS($LS($LZ)), 
          _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), a#1, b#1), 
          c#1))
       ==> _module.LList.Cons_q(_module.__default.Lappend(_module._default.Associativity#$_T0, 
            $LS($LS($LZ)), 
            a#1, 
            _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), b#1, c#1)))
         && 
        _module.LList.head(_module.__default.Lappend(_module._default.Associativity#$_T0, 
              $LS($LS($LZ)), 
              _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), a#1, b#1), 
              c#1))
           == _module.LList.head(_module.__default.Lappend(_module._default.Associativity#$_T0, 
              $LS($LS($LZ)), 
              a#1, 
              _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), b#1, c#1)))
         && $PrefixEq#_module.LList(_module._default.Associativity#$_T0, 
          _module._default.Associativity#$_T0, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.LList.tail(_module.__default.Lappend(_module._default.Associativity#$_T0, 
              $LS($LS($LZ)), 
              _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), a#1, b#1), 
              c#1)), 
          _module.LList.tail(_module.__default.Lappend(_module._default.Associativity#$_T0, 
              $LS($LS($LZ)), 
              a#1, 
              _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), b#1, c#1)))));
  ensures {:id "id142"} $PrefixEq#_module.LList(_module._default.Associativity#$_T0, 
      _module._default.Associativity#$_T0, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Lappend(_module._default.Associativity#$_T0, 
        $LS($LZ), 
        _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), a#1, b#1), 
        c#1), 
      _module.__default.Lappend(_module._default.Associativity#$_T0, 
        $LS($LZ), 
        a#1, 
        _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), b#1, c#1)))
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.LList.Nil_q(_module.__default.Lappend(_module._default.Associativity#$_T0, 
              $LS($LS($LZ)), 
              _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), a#1, b#1), 
              c#1))
           ==> _module.LList.Nil_q(_module.__default.Lappend(_module._default.Associativity#$_T0, 
              $LS($LS($LZ)), 
              a#1, 
              _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), b#1, c#1))))
         && (_module.LList.Cons_q(_module.__default.Lappend(_module._default.Associativity#$_T0, 
              $LS($LS($LZ)), 
              _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), a#1, b#1), 
              c#1))
           ==> _module.LList.Cons_q(_module.__default.Lappend(_module._default.Associativity#$_T0, 
                $LS($LS($LZ)), 
                a#1, 
                _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), b#1, c#1)))
             && 
            _module.LList.head(_module.__default.Lappend(_module._default.Associativity#$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), a#1, b#1), 
                  c#1))
               == _module.LList.head(_module.__default.Lappend(_module._default.Associativity#$_T0, 
                  $LS($LS($LZ)), 
                  a#1, 
                  _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), b#1, c#1)))
             && $PrefixEq#_module.LList(_module._default.Associativity#$_T0, 
              _module._default.Associativity#$_T0, 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.LList.tail(_module.__default.Lappend(_module._default.Associativity#$_T0, 
                  $LS($LS($LZ)), 
                  _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), a#1, b#1), 
                  c#1)), 
              _module.LList.tail(_module.__default.Lappend(_module._default.Associativity#$_T0, 
                  $LS($LS($LZ)), 
                  a#1, 
                  _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LS($LZ)), b#1, c#1))))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.LList(_module._default.Associativity#$_T0, 
        _module._default.Associativity#$_T0, 
        $LS($LS($LZ)), 
        _module.__default.Lappend(_module._default.Associativity#$_T0, 
          $LS($LZ), 
          _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), a#1, b#1), 
          c#1), 
        _module.__default.Lappend(_module._default.Associativity#$_T0, 
          $LS($LZ), 
          a#1, 
          _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), b#1, c#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Associativity# (correctness)"} Impl$$_module.__default.Associativity_h(_module._default.Associativity#$_T0: Ty, 
    _k#0: Box, 
    a#1: DatatypeType, 
    b#1: DatatypeType, 
    c#1: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Associativity#, Impl$$_module.__default.Associativity_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.LList(a#1);
    assume $IsA#_module.LList(b#1);
    assume $IsA#_module.LList(c#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, 
        $ih#a0#0: DatatypeType, 
        $ih#b0#0: DatatypeType, 
        $ih#c0#0: DatatypeType :: 
      { $PrefixEq#_module.LList(_module._default.Associativity#$_T0, 
          _module._default.Associativity#$_T0, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.Lappend(_module._default.Associativity#$_T0, 
            $LS($LZ), 
            _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), $ih#a0#0, $ih#b0#0), 
            $ih#c0#0), 
          _module.__default.Lappend(_module._default.Associativity#$_T0, 
            $LS($LZ), 
            $ih#a0#0, 
            _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), $ih#b0#0, $ih#c0#0))) } 
      $Is($ih#a0#0, Tclass._module.LList(_module._default.Associativity#$_T0))
           && $Is($ih#b0#0, Tclass._module.LList(_module._default.Associativity#$_T0))
           && $Is($ih#c0#0, Tclass._module.LList(_module._default.Associativity#$_T0))
           && Lit(true)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> $PrefixEq#_module.LList(_module._default.Associativity#$_T0, 
          _module._default.Associativity#$_T0, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.Lappend(_module._default.Associativity#$_T0, 
            $LS($LZ), 
            _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), $ih#a0#0, $ih#b0#0), 
            $ih#c0#0), 
          _module.__default.Lappend(_module._default.Associativity#$_T0, 
            $LS($LZ), 
            $ih#a0#0, 
            _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), $ih#b0#0, $ih#c0#0))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(171,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Paulson.dfy(171,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, a#2: DatatypeType, b#2: DatatypeType, c#2: DatatypeType :: 
          { _module.__default.Lappend(_module._default.Associativity#$_T0, 
              $LS($LZ), 
              a#2, 
              _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), b#2, c#2)), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.Lappend(_module._default.Associativity#$_T0, 
              $LS($LZ), 
              _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), a#2, b#2), 
              c#2), ORD#Less(_k'#0, _k#0) } 
          $Is(a#2, Tclass._module.LList(_module._default.Associativity#$_T0))
               && $Is(b#2, Tclass._module.LList(_module._default.Associativity#$_T0))
               && $Is(c#2, Tclass._module.LList(_module._default.Associativity#$_T0))
               && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.LList(_module._default.Associativity#$_T0, 
              _module._default.Associativity#$_T0, 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.Lappend(_module._default.Associativity#$_T0, 
                $LS($LZ), 
                _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), a#2, b#2), 
                c#2), 
              _module.__default.Lappend(_module._default.Associativity#$_T0, 
                $LS($LZ), 
                a#2, 
                _module.__default.Lappend(_module._default.Associativity#$_T0, $LS($LZ), b#2, c#2))));
    }
}



// Constructor function declaration
function #_module.LList.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.LList.Nil()) == ##_module.LList.Nil;
}

const unique ##_module.LList.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.LList.Nil()) == ##_module.LList.Nil;
}

function _module.LList.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.LList.Nil_q(d) } 
  _module.LList.Nil_q(d) <==> DatatypeCtorId(d) == ##_module.LList.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.LList.Nil_q(d) } 
  _module.LList.Nil_q(d) ==> d == #_module.LList.Nil());

// Constructor $Is
axiom (forall _module.LList$T: Ty :: 
  { $Is(#_module.LList.Nil(), Tclass._module.LList(_module.LList$T)) } 
  $Is(#_module.LList.Nil(), Tclass._module.LList(_module.LList$T)));

// Constructor $IsAlloc
axiom (forall _module.LList$T: Ty, $h: Heap :: 
  { $IsAlloc(#_module.LList.Nil(), Tclass._module.LList(_module.LList$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.LList.Nil(), Tclass._module.LList(_module.LList$T), $h));

// Constructor function declaration
function #_module.LList.Cons(Box, DatatypeType) : DatatypeType;

const unique ##_module.LList.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#3#0#0: Box, a#3#1#0: DatatypeType :: 
  { #_module.LList.Cons(a#3#0#0, a#3#1#0) } 
  DatatypeCtorId(#_module.LList.Cons(a#3#0#0, a#3#1#0)) == ##_module.LList.Cons);
}

function _module.LList.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.LList.Cons_q(d) } 
  _module.LList.Cons_q(d) <==> DatatypeCtorId(d) == ##_module.LList.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.LList.Cons_q(d) } 
  _module.LList.Cons_q(d)
     ==> (exists a#4#0#0: Box, a#4#1#0: DatatypeType :: 
      d == #_module.LList.Cons(a#4#0#0, a#4#1#0)));

// Constructor $Is
axiom (forall _module.LList$T: Ty, a#5#0#0: Box, a#5#1#0: DatatypeType :: 
  { $Is(#_module.LList.Cons(a#5#0#0, a#5#1#0), Tclass._module.LList(_module.LList$T)) } 
  $Is(#_module.LList.Cons(a#5#0#0, a#5#1#0), Tclass._module.LList(_module.LList$T))
     <==> $IsBox(a#5#0#0, _module.LList$T)
       && $Is(a#5#1#0, Tclass._module.LList(_module.LList$T)));

// Constructor $IsAlloc
axiom (forall _module.LList$T: Ty, a#5#0#0: Box, a#5#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.LList.Cons(a#5#0#0, a#5#1#0), Tclass._module.LList(_module.LList$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.LList.Cons(a#5#0#0, a#5#1#0), Tclass._module.LList(_module.LList$T), $h)
       <==> $IsAllocBox(a#5#0#0, _module.LList$T, $h)
         && $IsAlloc(a#5#1#0, Tclass._module.LList(_module.LList$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.LList$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.LList.head(d), _module.LList$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.LList.Cons_q(d)
       && $IsAlloc(d, Tclass._module.LList(_module.LList$T), $h)
     ==> $IsAllocBox(_module.LList.head(d), _module.LList$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.LList$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.LList.tail(d), Tclass._module.LList(_module.LList$T), $h) } 
  $IsGoodHeap($h)
       && 
      _module.LList.Cons_q(d)
       && $IsAlloc(d, Tclass._module.LList(_module.LList$T), $h)
     ==> $IsAlloc(_module.LList.tail(d), Tclass._module.LList(_module.LList$T), $h));

function _module.LList.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { #_module.LList.Cons(a#6#0#0, a#6#1#0) } 
  _module.LList.head(#_module.LList.Cons(a#6#0#0, a#6#1#0)) == a#6#0#0);

function _module.LList.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #_module.LList.Cons(a#7#0#0, a#7#1#0) } 
  _module.LList.tail(#_module.LList.Cons(a#7#0#0, a#7#1#0)) == a#7#1#0);

// Depth-one case-split function
function $IsA#_module.LList(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.LList(d) } 
  $IsA#_module.LList(d) ==> _module.LList.Nil_q(d) || _module.LList.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.LList$T: Ty, d: DatatypeType :: 
  { _module.LList.Cons_q(d), $Is(d, Tclass._module.LList(_module.LList$T)) } 
    { _module.LList.Nil_q(d), $Is(d, Tclass._module.LList(_module.LList$T)) } 
  $Is(d, Tclass._module.LList(_module.LList$T))
     ==> _module.LList.Nil_q(d) || _module.LList.Cons_q(d));

function $Eq#_module.LList(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.LList$T#l: Ty, 
    _module.LList$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.LList(_module.LList$T#l, _module.LList$T#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.LList(_module.LList$T#l))
       && $Is(d1, Tclass._module.LList(_module.LList$T#r))
     ==> ($Eq#_module.LList(_module.LList$T#l, _module.LList$T#r, $LS(ly), d0, d1)
       <==> (_module.LList.Nil_q(d0) && _module.LList.Nil_q(d1))
         || (
          _module.LList.Cons_q(d0)
           && _module.LList.Cons_q(d1)
           && (_module.LList.Cons_q(d0) && _module.LList.Cons_q(d1)
             ==> _module.LList.head(d0) == _module.LList.head(d1)
               && $Eq#_module.LList(_module.LList$T#l, 
                _module.LList$T#r, 
                ly, 
                _module.LList.tail(d0), 
                _module.LList.tail(d1))))));

// Unbump layer co-equality axiom
axiom (forall _module.LList$T#l: Ty, 
    _module.LList$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.LList(_module.LList$T#l, _module.LList$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.LList(_module.LList$T#l, _module.LList$T#r, $LS(ly), d0, d1)
     <==> $Eq#_module.LList(_module.LList$T#l, _module.LList$T#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.LList$T#l: Ty, 
    _module.LList$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.LList(_module.LList$T#l, _module.LList$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.LList(_module.LList$T#l, _module.LList$T#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.LList(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.LList$T#l: Ty, 
    _module.LList$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.LList(_module.LList$T#l, _module.LList$T#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.LList(_module.LList$T#l))
       && $Is(d1, Tclass._module.LList(_module.LList$T#r))
     ==> ($PrefixEq#_module.LList(_module.LList$T#l, _module.LList$T#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> (_module.LList.Nil_q(d0) && _module.LList.Nil_q(d1))
             || (
              _module.LList.Cons_q(d0)
               && _module.LList.Cons_q(d1)
               && (_module.LList.Cons_q(d0) && _module.LList.Cons_q(d1)
                 ==> _module.LList.head(d0) == _module.LList.head(d1)
                   && $PrefixEq#_module.LList(_module.LList$T#l, 
                    _module.LList$T#r, 
                    ORD#Minus(k, ORD#FromNat(1)), 
                    ly, 
                    _module.LList.tail(d0), 
                    _module.LList.tail(d1)))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.LList(_module.LList$T#l, _module.LList$T#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.LList$T#l: Ty, 
    _module.LList$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.LList(_module.LList$T#l, _module.LList$T#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.LList(_module.LList$T#l, _module.LList$T#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.LList(_module.LList$T#l, _module.LList$T#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.LList$T#l: Ty, 
    _module.LList$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.LList(_module.LList$T#l, _module.LList$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.LList(_module.LList$T#l, _module.LList$T#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.LList(_module.LList$T#l, _module.LList$T#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.LList(_module.LList$T#l, _module.LList$T#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.LList$T#l: Ty, 
    _module.LList$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.LList(_module.LList$T#l, _module.LList$T#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.LList(_module.LList$T#l, _module.LList$T#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.LList(_module.LList$T#l, _module.LList$T#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.LList(_module.LList$T#l, _module.LList$T#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.LList$T#l: Ty, 
    _module.LList$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.LList(_module.LList$T#l, _module.LList$T#r, k, $LS(ly), d0, d1), $PrefixEq#_module.LList(_module.LList$T#l, _module.LList$T#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.LList(_module.LList$T#l, _module.LList$T#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.LList(_module.LList$T#l, _module.LList$T#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.LList$T#l: Ty, 
    _module.LList$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.LList(_module.LList$T#l, _module.LList$T#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.LList(_module.LList$T#l, _module.LList$T#r, k, $LS(ly), d0, d1));

const unique class._module.LList: ClassName;

// Constructor function declaration
function #_module.FunctionHandle.FH(Box) : DatatypeType;

const unique ##_module.FunctionHandle.FH: DtCtorId
uses {
// Constructor identifier
axiom (forall a#8#0#0: Box :: 
  { #_module.FunctionHandle.FH(a#8#0#0) } 
  DatatypeCtorId(#_module.FunctionHandle.FH(a#8#0#0))
     == ##_module.FunctionHandle.FH);
}

function _module.FunctionHandle.FH_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.FunctionHandle.FH_q(d) } 
  _module.FunctionHandle.FH_q(d)
     <==> DatatypeCtorId(d) == ##_module.FunctionHandle.FH);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.FunctionHandle.FH_q(d) } 
  _module.FunctionHandle.FH_q(d)
     ==> (exists a#9#0#0: Box :: d == #_module.FunctionHandle.FH(a#9#0#0)));

// Constructor $Is
axiom (forall _module.FunctionHandle$T: Ty, a#10#0#0: Box :: 
  { $Is(#_module.FunctionHandle.FH(a#10#0#0), 
      Tclass._module.FunctionHandle(_module.FunctionHandle$T)) } 
  $Is(#_module.FunctionHandle.FH(a#10#0#0), 
      Tclass._module.FunctionHandle(_module.FunctionHandle$T))
     <==> $IsBox(a#10#0#0, _module.FunctionHandle$T));

// Constructor $IsAlloc
axiom (forall _module.FunctionHandle$T: Ty, a#10#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.FunctionHandle.FH(a#10#0#0), 
      Tclass._module.FunctionHandle(_module.FunctionHandle$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.FunctionHandle.FH(a#10#0#0), 
        Tclass._module.FunctionHandle(_module.FunctionHandle$T), 
        $h)
       <==> $IsAllocBox(a#10#0#0, _module.FunctionHandle$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.FunctionHandle$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.FunctionHandle._h0(d), _module.FunctionHandle$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.FunctionHandle.FH_q(d)
       && $IsAlloc(d, Tclass._module.FunctionHandle(_module.FunctionHandle$T), $h)
     ==> $IsAllocBox(_module.FunctionHandle._h0(d), _module.FunctionHandle$T, $h));

// Constructor literal
axiom (forall a#11#0#0: Box :: 
  { #_module.FunctionHandle.FH(Lit(a#11#0#0)) } 
  #_module.FunctionHandle.FH(Lit(a#11#0#0))
     == Lit(#_module.FunctionHandle.FH(a#11#0#0)));

function _module.FunctionHandle._h0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#12#0#0: Box :: 
  { #_module.FunctionHandle.FH(a#12#0#0) } 
  _module.FunctionHandle._h0(#_module.FunctionHandle.FH(a#12#0#0)) == a#12#0#0);

// Inductive rank
axiom (forall a#13#0#0: Box :: 
  { #_module.FunctionHandle.FH(a#13#0#0) } 
  BoxRank(a#13#0#0) < DtRank(#_module.FunctionHandle.FH(a#13#0#0)));

// Depth-one case-split function
function $IsA#_module.FunctionHandle(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.FunctionHandle(d) } 
  $IsA#_module.FunctionHandle(d) ==> _module.FunctionHandle.FH_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.FunctionHandle$T: Ty, d: DatatypeType :: 
  { _module.FunctionHandle.FH_q(d), $Is(d, Tclass._module.FunctionHandle(_module.FunctionHandle$T)) } 
  $Is(d, Tclass._module.FunctionHandle(_module.FunctionHandle$T))
     ==> _module.FunctionHandle.FH_q(d));

// Datatype extensional equality declaration
function _module.FunctionHandle#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.FunctionHandle.FH
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.FunctionHandle#Equal(a, b) } 
  _module.FunctionHandle#Equal(a, b)
     <==> _module.FunctionHandle._h0(a) == _module.FunctionHandle._h0(b));

// Datatype extensionality axiom: _module.FunctionHandle
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.FunctionHandle#Equal(a, b) } 
  _module.FunctionHandle#Equal(a, b) <==> a == b);

const unique class._module.FunctionHandle: ClassName;

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

const unique tytagFamily$FunctionHandle: TyTagFamily;

const unique tytagFamily$LList: TyTagFamily;
