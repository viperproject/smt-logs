// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy

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

const unique class._module.__default: ClassName;

function Tclass._module.DoublyLinkedList() : Ty
uses {
// Tclass._module.DoublyLinkedList Tag
axiom Tag(Tclass._module.DoublyLinkedList()) == Tagclass._module.DoublyLinkedList
   && TagFamily(Tclass._module.DoublyLinkedList()) == tytagFamily$DoublyLinkedList;
}

const unique Tagclass._module.DoublyLinkedList: TyTag;

// Box/unbox axiom for Tclass._module.DoublyLinkedList
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.DoublyLinkedList()) } 
  $IsBox(bx, Tclass._module.DoublyLinkedList())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.DoublyLinkedList()));

function Tclass._module.Node() : Ty
uses {
// Tclass._module.Node Tag
axiom Tag(Tclass._module.Node()) == Tagclass._module.Node
   && TagFamily(Tclass._module.Node()) == tytagFamily$Node;
}

const unique Tagclass._module.Node: TyTag;

// Box/unbox axiom for Tclass._module.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node()) } 
  $IsBox(bx, Tclass._module.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node()));

procedure {:verboseName "Test (well-formedness)"} CheckWellFormed$$_module.__default.Test(dd#0: ref
       where $Is(dd#0, Tclass._module.DoublyLinkedList())
         && $IsAlloc(dd#0, Tclass._module.DoublyLinkedList(), $Heap), 
    x#0: ref
       where $Is(x#0, Tclass._module.Node()) && $IsAlloc(x#0, Tclass._module.Node(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.DoublyLinkedList?() : Ty
uses {
// Tclass._module.DoublyLinkedList? Tag
axiom Tag(Tclass._module.DoublyLinkedList?()) == Tagclass._module.DoublyLinkedList?
   && TagFamily(Tclass._module.DoublyLinkedList?()) == tytagFamily$DoublyLinkedList;
}

const unique Tagclass._module.DoublyLinkedList?: TyTag;

// Box/unbox axiom for Tclass._module.DoublyLinkedList?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.DoublyLinkedList?()) } 
  $IsBox(bx, Tclass._module.DoublyLinkedList?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.DoublyLinkedList?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Test (well-formedness)"} CheckWellFormed$$_module.__default.Test(dd#0: ref, x#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Test, CheckWellFormed$$_module.__default.Test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == dd#0
           || (exists $i: int :: 
            0 <= $i
               && $i < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
               && Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $i)
                 == $Box($o)));
    assert {:id "id0"} dd#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(dd#0), Tclass._module.DoublyLinkedList?(), $Heap);
    assume _module.DoublyLinkedList.Valid#canCall($Heap, dd#0);
    assume {:id "id1"} _module.DoublyLinkedList.Valid($Heap, dd#0);
    assert {:id "id2"} dd#0 != null;
    assume {:id "id3"} Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(x#0));
    assert {:id "id4"} dd#0 != null;
    assert {:id "id5"} 0 <= LitInt(0)
       && LitInt(0)
         < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq);
    assume {:id "id6"} x#0
       != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref;
    assert {:id "id7"} dd#0 != null;
    assert {:id "id8"} dd#0 != null;
    assert {:id "id9"} 0
         <= Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1
       && Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1
         < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq);
    assume {:id "id10"} x#0
       != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
          Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref;
    assert {:id "id11"} dd#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || 
          $o == dd#0
           || (exists $i: int :: 
            0 <= $i
               && $i
                 < Seq#Length($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq)
               && Seq#Index($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq, $i)
                 == $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id12"} dd#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(dd#0), Tclass._module.DoublyLinkedList?(), $Heap);
    assume _module.DoublyLinkedList.Valid#canCall($Heap, dd#0);
    assume {:id "id13"} _module.DoublyLinkedList.Valid($Heap, dd#0);
    assert {:id "id14"} dd#0 != null;
    assert {:id "id15"} dd#0 != null;
    assert {:id "id16"} $IsAlloc(dd#0, Tclass._module.DoublyLinkedList(), old($Heap));
    assume {:id "id17"} Seq#Equal($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
      $Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq);
}



procedure {:verboseName "Test (call)"} Call$$_module.__default.Test(dd#0: ref
       where $Is(dd#0, Tclass._module.DoublyLinkedList())
         && $IsAlloc(dd#0, Tclass._module.DoublyLinkedList(), $Heap), 
    x#0: ref
       where $Is(x#0, Tclass._module.Node()) && $IsAlloc(x#0, Tclass._module.Node(), $Heap));
  // user-defined preconditions
  requires {:id "id18"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null);
  requires {:id "id19"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#0: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#0)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#0
               && i#0 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#0)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#0 - 1)): ref));
  requires {:id "id20"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#1: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#1)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#1
               && i#1
                 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#1)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#1 + 1)): ref));
  requires {:id "id21"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null);
  requires {:id "id22"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (forall i#2: int, j#0: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#0)): ref, $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#2)): ref } 
        LitInt(0) <= i#2
             && i#2 < j#0
             && j#0 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#2)): ref
             != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#0)): ref);
  requires {:id "id23"} Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(x#0));
  requires {:id "id24"} x#0
     != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref;
  requires {:id "id25"} x#0
     != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
        Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.DoublyLinkedList.Valid#canCall($Heap, dd#0);
  free ensures {:id "id26"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     && 
    _module.DoublyLinkedList.Valid($Heap, dd#0)
     && 
    (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
       ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null
         && (forall i#3: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#3)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#3
               && i#3 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#3)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#3 - 1)): ref)
         && (forall i#4: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#4)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#4
               && i#4
                 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#4)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#4 + 1)): ref)
         && $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null)
     && (forall i#5: int, j#1: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#1)): ref, $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref } 
      LitInt(0) <= i#5
           && i#5 < j#1
           && j#1 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
         ==> $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref
           != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#1)): ref);
  ensures {:id "id27"} Seq#Equal($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
    $Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == dd#0
         || (exists $i: int :: 
          0 <= $i
             && $i
               < Seq#Length($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq)
             && Seq#Index($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq, $i)
               == $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Test (correctness)"} Impl$$_module.__default.Test(dd#0: ref
       where $Is(dd#0, Tclass._module.DoublyLinkedList())
         && $IsAlloc(dd#0, Tclass._module.DoublyLinkedList(), $Heap), 
    x#0: ref
       where $Is(x#0, Tclass._module.Node()) && $IsAlloc(x#0, Tclass._module.Node(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id28"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     && 
    _module.DoublyLinkedList.Valid($Heap, dd#0)
     && 
    (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
       ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null
         && (forall i#6: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#6
               && i#6 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#6 - 1)): ref)
         && (forall i#7: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#7)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#7
               && i#7
                 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#7)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#7 + 1)): ref)
         && $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null)
     && (forall i#8: int, j#2: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#2)): ref, $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#8)): ref } 
      LitInt(0) <= i#8
           && i#8 < j#2
           && j#2 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
         ==> $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#8)): ref
           != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#2)): ref);
  requires {:id "id29"} Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(x#0));
  requires {:id "id30"} x#0
     != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref;
  requires {:id "id31"} x#0
     != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
        Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.DoublyLinkedList.Valid#canCall($Heap, dd#0);
  ensures {:id "id32"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null);
  ensures {:id "id33"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#9: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#9)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#9
               && i#9 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#9)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#9 - 1)): ref));
  ensures {:id "id34"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#10: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#10)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#10
               && i#10
                 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#10)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#10 + 1)): ref));
  ensures {:id "id35"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null);
  ensures {:id "id36"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (forall i#11: int, j#3: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#3)): ref, $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#11)): ref } 
        LitInt(0) <= i#11
             && i#11 < j#3
             && j#3 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#11)): ref
             != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#3)): ref);
  ensures {:id "id37"} Seq#Equal($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
    $Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == dd#0
         || (exists $i: int :: 
          0 <= $i
             && $i
               < Seq#Length($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq)
             && Seq#Index($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq, $i)
               == $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Test (correctness)"} Impl$$_module.__default.Test(dd#0: ref, x#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var $rhs##0: int;
  var x##0: ref;
  var x##1: ref;
  var k##0: int;

    // AddMethodImpl: Test, Impl$$_module.__default.Test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == dd#0
           || (exists $i: int :: 
            0 <= $i
               && $i < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
               && Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $i)
                 == $Box($o)));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(15,27)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id38"} dd#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := x#0;
    assert {:id "id39"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == dd#0
             || (exists $i: int :: 
              0 <= $i
                 && $i < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
                 && Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $i)
                   == $Box($o)))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id40"} $rhs##0 := Call$$_module.DoublyLinkedList.Remove(dd#0, x##0);
    // TrCallStmt: After ProcessCallStmt
    k#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(16,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id42"} dd#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := x#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    k##0 := k#0;
    assert {:id "id43"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == dd#0
             || (exists $i: int :: 
              0 <= $i
                 && $i < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
                 && Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $i)
                   == $Box($o))
             || $o == x##1)
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id44"} Call$$_module.DoublyLinkedList.PutBack(dd#0, x##1, k##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "TestMany (well-formedness)"} CheckWellFormed$$_module.__default.TestMany(dd#0: ref
       where $Is(dd#0, Tclass._module.DoublyLinkedList())
         && $IsAlloc(dd#0, Tclass._module.DoublyLinkedList(), $Heap), 
    xs#0: Seq
       where $Is(xs#0, TSeq(Tclass._module.Node()))
         && $IsAlloc(xs#0, TSeq(Tclass._module.Node()), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMany (well-formedness)"} CheckWellFormed$$_module.__default.TestMany(dd#0: ref, xs#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: ref;
  var i#0: int;
  var j#0: int;


    // AddMethodImpl: TestMany, CheckWellFormed$$_module.__default.TestMany
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == dd#0
           || (exists $i: int :: 
            0 <= $i
               && $i < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
               && Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $i)
                 == $Box($o)));
    assert {:id "id45"} dd#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(dd#0), Tclass._module.DoublyLinkedList?(), $Heap);
    assume _module.DoublyLinkedList.Valid#canCall($Heap, dd#0);
    assume {:id "id46"} _module.DoublyLinkedList.Valid($Heap, dd#0);
    havoc x#0;
    assume $Is(x#0, Tclass._module.Node()) && $IsAlloc(x#0, Tclass._module.Node(), $Heap);
    if (*)
    {
        assume {:id "id47"} Seq#Contains(xs#0, $Box(x#0));
        assert {:id "id48"} dd#0 != null;
        assume {:id "id49"} Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(x#0));
        assert {:id "id50"} dd#0 != null;
        assert {:id "id51"} 0 <= LitInt(0)
           && LitInt(0)
             < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq);
        assume {:id "id52"} x#0
           != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref;
        assert {:id "id53"} dd#0 != null;
        assert {:id "id54"} dd#0 != null;
        assert {:id "id55"} 0
             <= Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1
           && Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1
             < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq);
        assume {:id "id56"} x#0
           != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
              Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref;
    }
    else
    {
        assume {:id "id57"} Seq#Contains(xs#0, $Box(x#0))
           ==> Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(x#0))
             && x#0
               != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref
             && x#0
               != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref;
    }

    assume {:id "id58"} (forall x#1: ref :: 
      { Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(x#1)) } 
        { Seq#Contains(xs#0, $Box(x#1)) } 
      $Is(x#1, Tclass._module.Node())
         ==> (Seq#Contains(xs#0, $Box(x#1))
             ==> Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(x#1)))
           && (Seq#Contains(xs#0, $Box(x#1))
             ==> x#1
               != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref)
           && (Seq#Contains(xs#0, $Box(x#1))
             ==> x#1
               != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref));
    havoc i#0;
    havoc j#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < j#0)
        {
        }

        assume {:id "id59"} LitInt(0) <= i#0 && i#0 < j#0 && j#0 < Seq#Length(xs#0);
        assert {:id "id60"} 0 <= i#0 && i#0 < Seq#Length(xs#0);
        assert {:id "id61"} 0 <= j#0 && j#0 < Seq#Length(xs#0);
        assume {:id "id62"} $Unbox(Seq#Index(xs#0, i#0)): ref != $Unbox(Seq#Index(xs#0, j#0)): ref;
    }
    else
    {
        assume {:id "id63"} LitInt(0) <= i#0 && i#0 < j#0 && j#0 < Seq#Length(xs#0)
           ==> $Unbox(Seq#Index(xs#0, i#0)): ref != $Unbox(Seq#Index(xs#0, j#0)): ref;
    }

    assume {:id "id64"} (forall i#1: int, j#1: int :: 
      { $Unbox(Seq#Index(xs#0, j#1)): ref, $Unbox(Seq#Index(xs#0, i#1)): ref } 
      LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(xs#0)
         ==> $Unbox(Seq#Index(xs#0, i#1)): ref != $Unbox(Seq#Index(xs#0, j#1)): ref);
    assert {:id "id65"} dd#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || 
          $o == dd#0
           || (exists $i: int :: 
            0 <= $i
               && $i
                 < Seq#Length($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq)
               && Seq#Index($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq, $i)
                 == $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id66"} dd#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(dd#0), Tclass._module.DoublyLinkedList?(), $Heap);
    assume _module.DoublyLinkedList.Valid#canCall($Heap, dd#0);
    assume {:id "id67"} _module.DoublyLinkedList.Valid($Heap, dd#0);
    assert {:id "id68"} dd#0 != null;
    assert {:id "id69"} dd#0 != null;
    assert {:id "id70"} $IsAlloc(dd#0, Tclass._module.DoublyLinkedList(), old($Heap));
    assume {:id "id71"} Seq#Equal($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
      $Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq);
}



procedure {:verboseName "TestMany (call)"} Call$$_module.__default.TestMany(dd#0: ref
       where $Is(dd#0, Tclass._module.DoublyLinkedList())
         && $IsAlloc(dd#0, Tclass._module.DoublyLinkedList(), $Heap), 
    xs#0: Seq
       where $Is(xs#0, TSeq(Tclass._module.Node()))
         && $IsAlloc(xs#0, TSeq(Tclass._module.Node()), $Heap));
  // user-defined preconditions
  requires {:id "id72"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null);
  requires {:id "id73"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#2: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#2)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#2
               && i#2 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#2)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#2 - 1)): ref));
  requires {:id "id74"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#3: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#3)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#3
               && i#3
                 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#3)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#3 + 1)): ref));
  requires {:id "id75"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null);
  requires {:id "id76"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (forall i#4: int, j#2: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#2)): ref, $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#4)): ref } 
        LitInt(0) <= i#4
             && i#4 < j#2
             && j#2 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#4)): ref
             != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#2)): ref);
  requires {:id "id77"} (forall x#1: ref :: 
    { Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(x#1)) } 
      { Seq#Contains(xs#0, $Box(x#1)) } 
    $Is(x#1, Tclass._module.Node())
       ==> (Seq#Contains(xs#0, $Box(x#1))
           ==> Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(x#1)))
         && (Seq#Contains(xs#0, $Box(x#1))
           ==> x#1
             != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref)
         && (Seq#Contains(xs#0, $Box(x#1))
           ==> x#1
             != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref));
  requires {:id "id78"} (forall i#1: int, j#1: int :: 
    { $Unbox(Seq#Index(xs#0, j#1)): ref, $Unbox(Seq#Index(xs#0, i#1)): ref } 
    LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(xs#0)
       ==> $Unbox(Seq#Index(xs#0, i#1)): ref != $Unbox(Seq#Index(xs#0, j#1)): ref);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.DoublyLinkedList.Valid#canCall($Heap, dd#0);
  free ensures {:id "id79"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     && 
    _module.DoublyLinkedList.Valid($Heap, dd#0)
     && 
    (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
       ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null
         && (forall i#5: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#5
               && i#5 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#5 - 1)): ref)
         && (forall i#6: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#6
               && i#6
                 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#6 + 1)): ref)
         && $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null)
     && (forall i#7: int, j#3: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#3)): ref, $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#7)): ref } 
      LitInt(0) <= i#7
           && i#7 < j#3
           && j#3 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
         ==> $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#7)): ref
           != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#3)): ref);
  ensures {:id "id80"} Seq#Equal($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
    $Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == dd#0
         || (exists $i: int :: 
          0 <= $i
             && $i
               < Seq#Length($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq)
             && Seq#Index($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq, $i)
               == $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMany (correctness)"} Impl$$_module.__default.TestMany(dd#0: ref
       where $Is(dd#0, Tclass._module.DoublyLinkedList())
         && $IsAlloc(dd#0, Tclass._module.DoublyLinkedList(), $Heap), 
    xs#0: Seq
       where $Is(xs#0, TSeq(Tclass._module.Node()))
         && $IsAlloc(xs#0, TSeq(Tclass._module.Node()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id81"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     && 
    _module.DoublyLinkedList.Valid($Heap, dd#0)
     && 
    (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
       ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null
         && (forall i#8: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#8)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#8
               && i#8 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#8)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#8 - 1)): ref)
         && (forall i#9: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#9)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#9
               && i#9
                 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#9)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#9 + 1)): ref)
         && $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null)
     && (forall i#10: int, j#4: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#4)): ref, $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#10)): ref } 
      LitInt(0) <= i#10
           && i#10 < j#4
           && j#4 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
         ==> $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#10)): ref
           != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#4)): ref);
  requires {:id "id82"} (forall x#1: ref :: 
    { Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(x#1)) } 
      { Seq#Contains(xs#0, $Box(x#1)) } 
    $Is(x#1, Tclass._module.Node())
       ==> (Seq#Contains(xs#0, $Box(x#1))
           ==> Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(x#1)))
         && (Seq#Contains(xs#0, $Box(x#1))
           ==> x#1
             != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref)
         && (Seq#Contains(xs#0, $Box(x#1))
           ==> x#1
             != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref));
  requires {:id "id83"} (forall i#1: int, j#1: int :: 
    { $Unbox(Seq#Index(xs#0, j#1)): ref, $Unbox(Seq#Index(xs#0, i#1)): ref } 
    LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(xs#0)
       ==> $Unbox(Seq#Index(xs#0, i#1)): ref != $Unbox(Seq#Index(xs#0, j#1)): ref);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.DoublyLinkedList.Valid#canCall($Heap, dd#0);
  ensures {:id "id84"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null);
  ensures {:id "id85"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#11: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#11)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#11
               && i#11
                 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#11)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#11 - 1)): ref));
  ensures {:id "id86"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#12: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#12)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#12
               && i#12
                 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#12)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#12 + 1)): ref));
  ensures {:id "id87"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null);
  ensures {:id "id88"} _module.DoublyLinkedList.Valid#canCall($Heap, dd#0)
     ==> _module.DoublyLinkedList.Valid($Heap, dd#0)
       || (forall i#13: int, j#5: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#5)): ref, $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#13)): ref } 
        LitInt(0) <= i#13
             && i#13 < j#5
             && j#5 < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, i#13)): ref
             != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, j#5)): ref);
  ensures {:id "id89"} Seq#Equal($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
    $Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == dd#0
         || (exists $i: int :: 
          0 <= $i
             && $i
               < Seq#Length($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq)
             && Seq#Index($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq, $i)
               == $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMany (correctness)"} Impl$$_module.__default.TestMany(dd#0: ref, xs#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#x#0_0: bool;
  var x#0_0: ref
     where defass#x#0_0
       ==> $Is(x#0_0, Tclass._module.Node())
         && $IsAlloc(x#0_0, Tclass._module.Node(), $Heap);
  var k#0_0: int;
  var $rhs##0_0: int;
  var x##0_0: ref;
  var y#0_0_0: ref;
  var z#0_0_0: ref;
  var dd##0_0: ref;
  var xs##0_0: Seq;
  var x##0_1: ref;
  var k##0_0: int;

    // AddMethodImpl: TestMany, Impl$$_module.__default.TestMany
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == dd#0
           || (exists $i: int :: 
            0 <= $i
               && $i < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
               && Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $i)
                 == $Box($o)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(27,3)
    assume true;
    if (!Seq#Equal(xs#0, Seq#Empty(): Seq))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(28,11)
        assume true;
        assert {:id "id90"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(xs#0);
        assume true;
        x#0_0 := $Unbox(Seq#Index(xs#0, LitInt(0))): ref;
        defass#x#0_0 := true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(29,29)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id92"} dd#0 != null;
        assert {:id "id93"} defass#x#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := x#0_0;
        assert {:id "id94"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && ($o == dd#0
                 || (exists $i: int :: 
                  0 <= $i
                     && $i < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
                     && Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $i)
                       == $Box($o)))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id95"} $rhs##0_0 := Call$$_module.DoublyLinkedList.Remove(dd#0, x##0_0);
        // TrCallStmt: After ProcessCallStmt
        k#0_0 := $rhs##0_0;
        // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(30,5)
        if (*)
        {
            // Assume Fuel Constant
            havoc y#0_0_0;
            assume $Is(y#0_0_0, Tclass._module.Node());
            assert {:id "id97"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(xs#0);
            assume true;
            assume {:id "id98"} Seq#Contains(Seq#Drop(xs#0, LitInt(1)), $Box(y#0_0_0));
            if (*)
            {
                assert {:id "id99"} {:subsumption 0} dd#0 != null;
                if (Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(y#0_0_0)))
                {
                    assert {:id "id100"} {:subsumption 0} dd#0 != null;
                    assert {:id "id101"} {:subsumption 0} 0 <= LitInt(0)
                       && LitInt(0)
                         < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq);
                }

                if (Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(y#0_0_0))
                   && y#0_0_0
                     != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref)
                {
                    assert {:id "id102"} {:subsumption 0} dd#0 != null;
                    assert {:id "id103"} {:subsumption 0} dd#0 != null;
                    assert {:id "id104"} {:subsumption 0} 0
                         <= Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1
                       && Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1
                         < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq);
                }

                assume true;
                assume {:id "id105"} Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(y#0_0_0))
                   && y#0_0_0
                     != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref
                   && y#0_0_0
                     != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                        Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref;
                assume false;
            }

            push;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(33,7)
            // Begin Comprehension WF check
            havoc z#0_0_0;
            if ($Is(z#0_0_0, Tclass._module.Node())
               && $IsAlloc(z#0_0_0, Tclass._module.Node(), $Heap))
            {
                assert {:id "id106"} {:subsumption 0} dd#0 != null;
                assert {:id "id107"} $IsAlloc(dd#0, Tclass._module.DoublyLinkedList(), old($Heap));
                if (Seq#Contains($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                  $Box(z#0_0_0)))
                {
                    assert {:id "id108"} {:subsumption 0} dd#0 != null;
                    if (!Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(z#0_0_0)))
                    {
                        assert {:id "id109"} defass#x#0_0;
                    }
                }
            }

            // End Comprehension WF check
            assume true;
            assert {:id "id110"} (forall z#0_0_1: ref :: 
              { Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(z#0_0_1)) } 
                { Seq#Contains($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                  $Box(z#0_0_1)) } 
              $Is(z#0_0_1, Tclass._module.Node())
                 ==> 
                Seq#Contains($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                  $Box(z#0_0_1))
                 ==> Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(z#0_0_1))
                   || z#0_0_1 == x#0_0);
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(34,7)
            assert {:id "id111"} defass#x#0_0;
            assert {:id "id112"} {:subsumption 0} dd#0 != null;
            assert {:id "id113"} $IsAlloc(dd#0, Tclass._module.DoublyLinkedList(), old($Heap));
            assert {:id "id114"} {:subsumption 0} 0 <= k#0_0
               && k#0_0
                 < Seq#Length($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq);
            assume true;
            assert {:id "id115"} x#0_0
               == $Unbox(Seq#Index($Unbox(read(old($Heap), dd#0, _module.DoublyLinkedList.Nodes)): Seq, k#0_0)): ref;
            pop;
            assert {:id "id116"} Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(y#0_0_0));
            assert {:id "id117"} y#0_0_0
               != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref;
            assert {:id "id118"} y#0_0_0
               != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref;
            assume false;
        }
        else
        {
            assume (forall y#0_0_1: ref :: 
              { Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(y#0_0_1)) } 
                { Seq#Contains(Seq#Drop(xs#0, 1), $Box(y#0_0_1)) } 
              $Is(y#0_0_1, Tclass._module.Node())
                   && Seq#Contains(Seq#Drop(xs#0, LitInt(1)), $Box(y#0_0_1))
                 ==> Seq#Contains($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $Box(y#0_0_1))
                   && y#0_0_1
                     != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref
                   && y#0_0_1
                     != $Unbox(Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, 
                        Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref);
        }

        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(36,13)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        dd##0_0 := dd#0;
        assert {:id "id119"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(xs#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        xs##0_0 := Seq#Drop(xs#0, LitInt(1));
        assert {:id "id120"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && ($o == dd##0_0
                 || (exists $i: int :: 
                  0 <= $i
                     && $i
                       < Seq#Length($Unbox(read($Heap, dd##0_0, _module.DoublyLinkedList.Nodes)): Seq)
                     && Seq#Index($Unbox(read($Heap, dd##0_0, _module.DoublyLinkedList.Nodes)): Seq, $i)
                       == $Box($o)))
             ==> $_ModifiesFrame[$o, $f]);
        assert {:id "id121"} (dd##0_0 == null && dd#0 != null)
           || ((dd##0_0 != null <==> dd#0 != null) && Seq#Rank(xs##0_0) < Seq#Rank(xs#0));
        call {:id "id122"} Call$$_module.__default.TestMany(dd##0_0, xs##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(37,15)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id123"} dd#0 != null;
        assert {:id "id124"} defass#x#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_1 := x#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        k##0_0 := k#0_0;
        assert {:id "id125"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && (
                $o == dd#0
                 || (exists $i: int :: 
                  0 <= $i
                     && $i < Seq#Length($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq)
                     && Seq#Index($Unbox(read($Heap, dd#0, _module.DoublyLinkedList.Nodes)): Seq, $i)
                       == $Box($o))
                 || $o == x##0_1)
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id126"} Call$$_module.DoublyLinkedList.PutBack(dd#0, x##0_1, k##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Main (call)"} Call$$_module.__default.Main();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Node?() : Ty
uses {
// Tclass._module.Node? Tag
axiom Tag(Tclass._module.Node?()) == Tagclass._module.Node?
   && TagFamily(Tclass._module.Node?()) == tytagFamily$Node;
}

const unique Tagclass._module.Node?: TyTag;

// Box/unbox axiom for Tclass._module.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node?()) } 
  $IsBox(bx, Tclass._module.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#a0#0: bool;
  var a0#0: ref
     where defass#a0#0
       ==> $Is(a0#0, Tclass._module.Node()) && $IsAlloc(a0#0, Tclass._module.Node(), $Heap);
  var $nw: ref;
  var defass#a1#0: bool;
  var a1#0: ref
     where defass#a1#0
       ==> $Is(a1#0, Tclass._module.Node()) && $IsAlloc(a1#0, Tclass._module.Node(), $Heap);
  var defass#a2#0: bool;
  var a2#0: ref
     where defass#a2#0
       ==> $Is(a2#0, Tclass._module.Node()) && $IsAlloc(a2#0, Tclass._module.Node(), $Heap);
  var defass#a3#0: bool;
  var a3#0: ref
     where defass#a3#0
       ==> $Is(a3#0, Tclass._module.Node()) && $IsAlloc(a3#0, Tclass._module.Node(), $Heap);
  var defass#a4#0: bool;
  var a4#0: ref
     where defass#a4#0
       ==> $Is(a4#0, Tclass._module.Node()) && $IsAlloc(a4#0, Tclass._module.Node(), $Heap);
  var defass#a5#0: bool;
  var a5#0: ref
     where defass#a5#0
       ==> $Is(a5#0, Tclass._module.Node()) && $IsAlloc(a5#0, Tclass._module.Node(), $Heap);
  var defass#dd#0: bool;
  var dd#0: ref
     where defass#dd#0
       ==> $Is(dd#0, Tclass._module.DoublyLinkedList())
         && $IsAlloc(dd#0, Tclass._module.DoublyLinkedList(), $Heap);
  var $rhs#0: ref;
  var nodes##0: Seq;
  var dd##0: ref;
  var x##0: ref;
  var dd##1: ref;
  var xs##0: Seq;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(44,10)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a0#0 := $nw;
    defass#a0#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(45,10)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a1#0 := $nw;
    defass#a1#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(46,10)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a2#0 := $nw;
    defass#a2#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(47,10)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a3#0 := $nw;
    defass#a3#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(48,10)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a4#0 := $nw;
    defass#a4#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(49,10)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a5#0 := $nw;
    defass#a5#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(50,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(50,13)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id133"} defass#a0#0;
    assert {:id "id134"} defass#a1#0;
    assert {:id "id135"} defass#a2#0;
    assert {:id "id136"} defass#a3#0;
    assert {:id "id137"} defass#a4#0;
    assert {:id "id138"} defass#a5#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    nodes##0 := Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(a0#0)), $Box(a1#0)), $Box(a2#0)), 
          $Box(a3#0)), 
        $Box(a4#0)), 
      $Box(a5#0));
    assert {:id "id139"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (exists $i: int :: 
            0 <= $i && $i < Seq#Length(nodes##0) && Seq#Index(nodes##0, $i) == $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id140"} $nw := Call$$_module.DoublyLinkedList.__ctor(nodes##0);
    // TrCallStmt: After ProcessCallStmt
    $rhs#0 := $nw;
    dd#0 := $rhs#0;
    defass#dd#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(51,7)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id143"} defass#dd#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    dd##0 := dd#0;
    assert {:id "id144"} defass#a3#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := a3#0;
    assert {:id "id145"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == dd##0
             || (exists $i: int :: 
              0 <= $i
                 && $i < Seq#Length($Unbox(read($Heap, dd##0, _module.DoublyLinkedList.Nodes)): Seq)
                 && Seq#Index($Unbox(read($Heap, dd##0, _module.DoublyLinkedList.Nodes)): Seq, $i)
                   == $Box($o)))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id146"} Call$$_module.__default.Test(dd##0, x##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(52,11)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id147"} defass#dd#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    dd##1 := dd#0;
    assert {:id "id148"} defass#a2#0;
    assert {:id "id149"} defass#a4#0;
    assert {:id "id150"} defass#a3#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    xs##0 := Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(a2#0)), $Box(a4#0)), $Box(a3#0));
    assert {:id "id151"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == dd##1
             || (exists $i: int :: 
              0 <= $i
                 && $i < Seq#Length($Unbox(read($Heap, dd##1, _module.DoublyLinkedList.Nodes)): Seq)
                 && Seq#Index($Unbox(read($Heap, dd##1, _module.DoublyLinkedList.Nodes)): Seq, $i)
                   == $Box($o)))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id152"} Call$$_module.__default.TestMany(dd##1, xs##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Alt (well-formedness)"} CheckWellFormed$$_module.__default.Alt(x#0: ref
       where $Is(x#0, Tclass._module.Node()) && $IsAlloc(x#0, Tclass._module.Node(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Alt (well-formedness)"} CheckWellFormed$$_module.__default.Alt(x#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var y#0: ref;


    // AddMethodImpl: Alt, CheckWellFormed$$_module.__default.Alt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == x#0
           || $o == $Unbox(read($Heap, x#0, _module.Node.L)): ref
           || $o == $Unbox(read($Heap, x#0, _module.Node.R)): ref);
    assert {:id "id153"} x#0 != null;
    newtype$check#0 := null;
    assume {:id "id154"} $Unbox(read($Heap, x#0, _module.Node.L)): ref != null;
    assert {:id "id155"} x#0 != null;
    newtype$check#1 := null;
    assume {:id "id156"} $Unbox(read($Heap, x#0, _module.Node.R)): ref != null;
    assert {:id "id157"} x#0 != null;
    assert {:id "id158"} $Unbox(read($Heap, x#0, _module.Node.L)): ref != null;
    assume {:id "id159"} $Unbox(read($Heap, $Unbox(read($Heap, x#0, _module.Node.L)): ref, _module.Node.R)): ref
       == x#0;
    assert {:id "id160"} x#0 != null;
    assert {:id "id161"} $Unbox(read($Heap, x#0, _module.Node.R)): ref != null;
    assume {:id "id162"} $Unbox(read($Heap, $Unbox(read($Heap, x#0, _module.Node.R)): ref, _module.Node.L)): ref
       == x#0;
    assert {:id "id163"} x#0 != null;
    assert {:id "id164"} x#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || 
          $o == x#0
           || $o == $Unbox(read(old($Heap), x#0, _module.Node.L)): ref
           || $o == $Unbox(read(old($Heap), x#0, _module.Node.R)): ref);
    assume $HeapSucc(old($Heap), $Heap);
    havoc y#0;
    assume $Is(y#0, Tclass._module.Node()) && $IsAlloc(y#0, Tclass._module.Node(), $Heap);
    if (*)
    {
        assume {:id "id165"} $IsAllocBox($Box(y#0), Tclass._module.Node(), old($Heap));
        assert {:id "id166"} y#0 != null;
        assert {:id "id167"} y#0 != null;
        assert {:id "id168"} $IsAlloc(y#0, Tclass._module.Node(), old($Heap));
        assume {:id "id169"} $Unbox(read($Heap, y#0, _module.Node.L)): ref
           == $Unbox(read(old($Heap), y#0, _module.Node.L)): ref;
        assert {:id "id170"} y#0 != null;
        assert {:id "id171"} y#0 != null;
        assert {:id "id172"} $IsAlloc(y#0, Tclass._module.Node(), old($Heap));
        assume {:id "id173"} $Unbox(read($Heap, y#0, _module.Node.R)): ref
           == $Unbox(read(old($Heap), y#0, _module.Node.R)): ref;
    }
    else
    {
        assume {:id "id174"} $IsAllocBox($Box(y#0), Tclass._module.Node(), old($Heap))
           ==> $Unbox(read($Heap, y#0, _module.Node.L)): ref
               == $Unbox(read(old($Heap), y#0, _module.Node.L)): ref
             && $Unbox(read($Heap, y#0, _module.Node.R)): ref
               == $Unbox(read(old($Heap), y#0, _module.Node.R)): ref;
    }

    assume {:id "id175"} (forall y#1: ref :: 
      { $Unbox(read(old($Heap), y#1, _module.Node.R)): ref } 
        { $Unbox(read($Heap, y#1, _module.Node.R)): ref } 
        { $Unbox(read(old($Heap), y#1, _module.Node.L)): ref } 
        { $Unbox(read($Heap, y#1, _module.Node.L)): ref } 
      $Is(y#1, Tclass._module.Node())
         ==> ($IsAllocBox($Box(y#1), Tclass._module.Node(), old($Heap))
             ==> $Unbox(read($Heap, y#1, _module.Node.L)): ref
               == $Unbox(read(old($Heap), y#1, _module.Node.L)): ref)
           && ($IsAllocBox($Box(y#1), Tclass._module.Node(), old($Heap))
             ==> $Unbox(read($Heap, y#1, _module.Node.R)): ref
               == $Unbox(read(old($Heap), y#1, _module.Node.R)): ref));
}



procedure {:verboseName "Alt (call)"} Call$$_module.__default.Alt(x#0: ref
       where $Is(x#0, Tclass._module.Node()) && $IsAlloc(x#0, Tclass._module.Node(), $Heap));
  // user-defined preconditions
  requires {:id "id176"} $Unbox(read($Heap, x#0, _module.Node.L)): ref != null;
  requires {:id "id177"} $Unbox(read($Heap, x#0, _module.Node.R)): ref != null;
  requires {:id "id178"} $Unbox(read($Heap, $Unbox(read($Heap, x#0, _module.Node.L)): ref, _module.Node.R)): ref
     == x#0;
  requires {:id "id179"} $Unbox(read($Heap, $Unbox(read($Heap, x#0, _module.Node.R)): ref, _module.Node.L)): ref
     == x#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id180"} (forall y#1: ref :: 
    { $Unbox(read(old($Heap), y#1, _module.Node.R)): ref } 
      { $Unbox(read($Heap, y#1, _module.Node.R)): ref } 
      { $Unbox(read(old($Heap), y#1, _module.Node.L)): ref } 
      { $Unbox(read($Heap, y#1, _module.Node.L)): ref } 
    $Is(y#1, Tclass._module.Node())
       ==> ($IsAllocBox($Box(y#1), Tclass._module.Node(), old($Heap))
           ==> $Unbox(read($Heap, y#1, _module.Node.L)): ref
             == $Unbox(read(old($Heap), y#1, _module.Node.L)): ref)
         && ($IsAllocBox($Box(y#1), Tclass._module.Node(), old($Heap))
           ==> $Unbox(read($Heap, y#1, _module.Node.R)): ref
             == $Unbox(read(old($Heap), y#1, _module.Node.R)): ref));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == x#0
         || $o == $Unbox(read(old($Heap), x#0, _module.Node.L)): ref
         || $o == $Unbox(read(old($Heap), x#0, _module.Node.R)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Alt (correctness)"} Impl$$_module.__default.Alt(x#0: ref
       where $Is(x#0, Tclass._module.Node()) && $IsAlloc(x#0, Tclass._module.Node(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id181"} $Unbox(read($Heap, x#0, _module.Node.L)): ref != null;
  requires {:id "id182"} $Unbox(read($Heap, x#0, _module.Node.R)): ref != null;
  requires {:id "id183"} $Unbox(read($Heap, $Unbox(read($Heap, x#0, _module.Node.L)): ref, _module.Node.R)): ref
     == x#0;
  requires {:id "id184"} $Unbox(read($Heap, $Unbox(read($Heap, x#0, _module.Node.R)): ref, _module.Node.L)): ref
     == x#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id185"} (forall y#1: ref :: 
    { $Unbox(read(old($Heap), y#1, _module.Node.R)): ref } 
      { $Unbox(read($Heap, y#1, _module.Node.R)): ref } 
      { $Unbox(read(old($Heap), y#1, _module.Node.L)): ref } 
      { $Unbox(read($Heap, y#1, _module.Node.L)): ref } 
    $Is(y#1, Tclass._module.Node())
       ==> ($IsAllocBox($Box(y#1), Tclass._module.Node(), old($Heap))
           ==> $Unbox(read($Heap, y#1, _module.Node.L)): ref
             == $Unbox(read(old($Heap), y#1, _module.Node.L)): ref)
         && ($IsAllocBox($Box(y#1), Tclass._module.Node(), old($Heap))
           ==> $Unbox(read($Heap, y#1, _module.Node.R)): ref
             == $Unbox(read(old($Heap), y#1, _module.Node.R)): ref));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == x#0
         || $o == $Unbox(read(old($Heap), x#0, _module.Node.L)): ref
         || $o == $Unbox(read(old($Heap), x#0, _module.Node.R)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Alt (correctness)"} Impl$$_module.__default.Alt(x#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: ref;
  var $rhs#1: ref;
  var $rhs#2: ref;
  var $rhs#3: ref;

    // AddMethodImpl: Alt, Impl$$_module.__default.Alt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == x#0
           || $o == $Unbox(read($Heap, x#0, _module.Node.L)): ref
           || $o == $Unbox(read($Heap, x#0, _module.Node.R)): ref);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(163,9)
    assert {:id "id186"} x#0 != null;
    assert {:id "id187"} $Unbox(read($Heap, x#0, _module.Node.R)): ref != null;
    assume true;
    assert {:id "id188"} $_ModifiesFrame[$Unbox(read($Heap, x#0, _module.Node.R)): ref, _module.Node.L];
    assert {:id "id189"} x#0 != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, x#0, _module.Node.L)): ref;
    $Heap := update($Heap, 
      $Unbox(read($Heap, x#0, _module.Node.R)): ref, 
      _module.Node.L, 
      $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(164,9)
    assert {:id "id192"} x#0 != null;
    assert {:id "id193"} $Unbox(read($Heap, x#0, _module.Node.L)): ref != null;
    assume true;
    assert {:id "id194"} $_ModifiesFrame[$Unbox(read($Heap, x#0, _module.Node.L)): ref, _module.Node.R];
    assert {:id "id195"} x#0 != null;
    assume true;
    $rhs#1 := $Unbox(read($Heap, x#0, _module.Node.R)): ref;
    $Heap := update($Heap, 
      $Unbox(read($Heap, x#0, _module.Node.L)): ref, 
      _module.Node.R, 
      $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(166,9)
    assert {:id "id198"} x#0 != null;
    assert {:id "id199"} $Unbox(read($Heap, x#0, _module.Node.R)): ref != null;
    assume true;
    assert {:id "id200"} $_ModifiesFrame[$Unbox(read($Heap, x#0, _module.Node.R)): ref, _module.Node.L];
    assume true;
    $rhs#2 := x#0;
    $Heap := update($Heap, 
      $Unbox(read($Heap, x#0, _module.Node.R)): ref, 
      _module.Node.L, 
      $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(167,9)
    assert {:id "id203"} x#0 != null;
    assert {:id "id204"} $Unbox(read($Heap, x#0, _module.Node.L)): ref != null;
    assume true;
    assert {:id "id205"} $_ModifiesFrame[$Unbox(read($Heap, x#0, _module.Node.L)): ref, _module.Node.R];
    assume true;
    $rhs#3 := x#0;
    $Heap := update($Heap, 
      $Unbox(read($Heap, x#0, _module.Node.L)): ref, 
      _module.Node.R, 
      $Box($rhs#3));
    assume $IsGoodHeap($Heap);
}



const unique class._module.Node?: ClassName;

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Node?()) } 
  $Is($o, Tclass._module.Node?())
     <==> $o == null || dtype($o) == Tclass._module.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Node?(), $h) } 
  $IsAlloc($o, Tclass._module.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Node.L: Field
uses {
axiom FDim(_module.Node.L) == 0
   && FieldOfDecl(class._module.Node?, field$L) == _module.Node.L
   && !$IsGhostField(_module.Node.L);
}

// Node.L: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.L)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.L)): ref, Tclass._module.Node?()));

// Node.L: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.L)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.L)): ref, Tclass._module.Node?(), $h));

const _module.Node.R: Field
uses {
axiom FDim(_module.Node.R) == 0
   && FieldOfDecl(class._module.Node?, field$R) == _module.Node.R
   && !$IsGhostField(_module.Node.R);
}

// Node.R: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.R)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.R)): ref, Tclass._module.Node?()));

// Node.R: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.R)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.R)): ref, Tclass._module.Node?(), $h));

// $Is axiom for non-null type _module.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Node()) } { $Is(c#0, Tclass._module.Node?()) } 
  $Is(c#0, Tclass._module.Node())
     <==> $Is(c#0, Tclass._module.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Node(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Node?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Node(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Node?(), $h));

const unique class._module.DoublyLinkedList?: ClassName;

// $Is axiom for class DoublyLinkedList
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.DoublyLinkedList?()) } 
  $Is($o, Tclass._module.DoublyLinkedList?())
     <==> $o == null || dtype($o) == Tclass._module.DoublyLinkedList?());

// $IsAlloc axiom for class DoublyLinkedList
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.DoublyLinkedList?(), $h) } 
  $IsAlloc($o, Tclass._module.DoublyLinkedList?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.DoublyLinkedList.Nodes: Field
uses {
axiom FDim(_module.DoublyLinkedList.Nodes) == 0
   && FieldOfDecl(class._module.DoublyLinkedList?, field$Nodes)
     == _module.DoublyLinkedList.Nodes
   && $IsGhostField(_module.DoublyLinkedList.Nodes);
}

// DoublyLinkedList.Nodes: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DoublyLinkedList.Nodes)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.DoublyLinkedList?()
     ==> $Is($Unbox(read($h, $o, _module.DoublyLinkedList.Nodes)): Seq, 
      TSeq(Tclass._module.Node())));

// DoublyLinkedList.Nodes: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DoublyLinkedList.Nodes)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DoublyLinkedList?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.DoublyLinkedList.Nodes)): Seq, 
      TSeq(Tclass._module.Node()), 
      $h));

// function declaration for _module.DoublyLinkedList.Valid
function _module.DoublyLinkedList.Valid($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.DoublyLinkedList.Valid (revealed)
axiom {:id "id208"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.DoublyLinkedList.Valid($Heap, this), $IsGoodHeap($Heap) } 
    _module.DoublyLinkedList.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.DoublyLinkedList())
           && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap))
       ==> _module.DoublyLinkedList.Valid($Heap, this)
         == ((Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
             ==> $Unbox(read($Heap, 
                    $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
                    _module.Node.L)): ref
                 == null
               && (forall i#0: int :: 
                { $Unbox(read($Heap, 
                      $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#0)): ref, 
                      _module.Node.L)): ref } 
                LitInt(1) <= i#0
                     && i#0 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
                   ==> $Unbox(read($Heap, 
                        $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#0)): ref, 
                        _module.Node.L)): ref
                     == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#0 - 1)): ref)
               && (forall i#1: int :: 
                { $Unbox(read($Heap, 
                      $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#1)): ref, 
                      _module.Node.R)): ref } 
                LitInt(0) <= i#1
                     && i#1
                       < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
                   ==> $Unbox(read($Heap, 
                        $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#1)): ref, 
                        _module.Node.R)): ref
                     == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#1 + 1)): ref)
               && $Unbox(read($Heap, 
                    $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
                        Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
                    _module.Node.R)): ref
                 == null)
           && (forall i#2: int, j#0: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#0)): ref, $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#2)): ref } 
            LitInt(0) <= i#2
                 && i#2 < j#0
                 && j#0 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
               ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#2)): ref
                 != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#0)): ref)));
}

function _module.DoublyLinkedList.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.DoublyLinkedList.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.DoublyLinkedList.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.DoublyLinkedList())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || (exists $i: int :: 
              0 <= $i
                 && $i < Seq#Length($Unbox(read($h0, this, _module.DoublyLinkedList.Nodes)): Seq)
                 && Seq#Index($Unbox(read($h0, this, _module.DoublyLinkedList.Nodes)): Seq, $i)
                   == $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.DoublyLinkedList.Valid($h0, this)
       == _module.DoublyLinkedList.Valid($h1, this));

function _module.DoublyLinkedList.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.DoublyLinkedList.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.DoublyLinkedList.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.DoublyLinkedList())
       && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap)
     ==> _module.DoublyLinkedList.Valid#requires($Heap, this) == true);

procedure {:verboseName "DoublyLinkedList.Valid (well-formedness)"} CheckWellformed$$_module.DoublyLinkedList.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoublyLinkedList())
         && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DoublyLinkedList.Valid (well-formedness)"} CheckWellformed$$_module.DoublyLinkedList.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var _s2s_0#0: ref;
  var newtype$check#0: ref;
  var i#3: int;
  var i#4: int;
  var newtype$check#1: ref;
  var i#7: int;
  var j#1: int;
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

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || (exists $i: int :: 
            0 <= $i
               && $i < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
               && Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, $i)
                 == $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.DoublyLinkedList.Nodes];
    assert {:id "id209"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Begin Comprehension WF check
    havoc _s2s_0#0;
    if ($Is(_s2s_0#0, Tclass._module.Node?())
       && $IsAlloc(_s2s_0#0, Tclass._module.Node?(), $Heap))
    {
        if (Seq#Contains($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, $Box(_s2s_0#0)))
        {
        }
    }

    // End Comprehension WF check
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.DoublyLinkedList.Nodes];
        if (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0)
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.DoublyLinkedList.Nodes];
            assert {:id "id210"} 0 <= LitInt(0)
               && LitInt(0)
                 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
            assert {:id "id211"} $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref
               != null;
            b$reqreads#3 := $_ReadsFrame[$Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, _module.Node.L];
            newtype$check#0 := null;
            if ($Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
                  _module.Node.L)): ref
               == null)
            {
                // Begin Comprehension WF check
                havoc i#3;
                if (true)
                {
                    if (LitInt(1) <= i#3)
                    {
                        b$reqreads#4 := $_ReadsFrame[this, _module.DoublyLinkedList.Nodes];
                    }

                    if (LitInt(1) <= i#3
                       && i#3 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq))
                    {
                        b$reqreads#5 := $_ReadsFrame[this, _module.DoublyLinkedList.Nodes];
                        assert {:id "id212"} 0 <= i#3
                           && i#3 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
                        assert {:id "id213"} $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#3)): ref
                           != null;
                        b$reqreads#6 := $_ReadsFrame[$Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#3)): ref, _module.Node.L];
                        b$reqreads#7 := $_ReadsFrame[this, _module.DoublyLinkedList.Nodes];
                        assert {:id "id214"} 0 <= i#3 - 1
                           && i#3 - 1
                             < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
                    }
                }

                // End Comprehension WF check
            }

            if ($Unbox(read($Heap, 
                    $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
                    _module.Node.L)): ref
                 == null
               && (forall i#5: int :: 
                { $Unbox(read($Heap, 
                      $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref, 
                      _module.Node.L)): ref } 
                LitInt(1) <= i#5
                     && i#5 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
                   ==> $Unbox(read($Heap, 
                        $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref, 
                        _module.Node.L)): ref
                     == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5 - 1)): ref))
            {
                // Begin Comprehension WF check
                havoc i#4;
                if (true)
                {
                    if (LitInt(0) <= i#4)
                    {
                        b$reqreads#8 := $_ReadsFrame[this, _module.DoublyLinkedList.Nodes];
                    }

                    if (LitInt(0) <= i#4
                       && i#4
                         < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)
                    {
                        b$reqreads#9 := $_ReadsFrame[this, _module.DoublyLinkedList.Nodes];
                        assert {:id "id215"} 0 <= i#4
                           && i#4 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
                        assert {:id "id216"} $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#4)): ref
                           != null;
                        b$reqreads#10 := $_ReadsFrame[$Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#4)): ref, _module.Node.R];
                        b$reqreads#11 := $_ReadsFrame[this, _module.DoublyLinkedList.Nodes];
                        assert {:id "id217"} 0 <= i#4 + 1
                           && i#4 + 1
                             < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
                    }
                }

                // End Comprehension WF check
            }

            if ($Unbox(read($Heap, 
                    $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
                    _module.Node.L)): ref
                 == null
               && (forall i#5: int :: 
                { $Unbox(read($Heap, 
                      $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref, 
                      _module.Node.L)): ref } 
                LitInt(1) <= i#5
                     && i#5 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
                   ==> $Unbox(read($Heap, 
                        $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref, 
                        _module.Node.L)): ref
                     == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5 - 1)): ref)
               && (forall i#6: int :: 
                { $Unbox(read($Heap, 
                      $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                      _module.Node.R)): ref } 
                LitInt(0) <= i#6
                     && i#6
                       < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
                   ==> $Unbox(read($Heap, 
                        $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                        _module.Node.R)): ref
                     == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6 + 1)): ref))
            {
                b$reqreads#12 := $_ReadsFrame[this, _module.DoublyLinkedList.Nodes];
                b$reqreads#13 := $_ReadsFrame[this, _module.DoublyLinkedList.Nodes];
                assert {:id "id218"} 0
                     <= Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
                   && Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
                     < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
                assert {:id "id219"} $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
                      Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref
                   != null;
                b$reqreads#14 := $_ReadsFrame[$Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
                    Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, _module.Node.R];
                newtype$check#1 := null;
            }
        }

        if (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
           ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
                  _module.Node.L)): ref
               == null
             && (forall i#5: int :: 
              { $Unbox(read($Heap, 
                    $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref, 
                    _module.Node.L)): ref } 
              LitInt(1) <= i#5
                   && i#5 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
                 ==> $Unbox(read($Heap, 
                      $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref, 
                      _module.Node.L)): ref
                   == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5 - 1)): ref)
             && (forall i#6: int :: 
              { $Unbox(read($Heap, 
                    $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                    _module.Node.R)): ref } 
              LitInt(0) <= i#6
                   && i#6
                     < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
                 ==> $Unbox(read($Heap, 
                      $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                      _module.Node.R)): ref
                   == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6 + 1)): ref)
             && $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
                      Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
                  _module.Node.R)): ref
               == null)
        {
            // Begin Comprehension WF check
            havoc i#7;
            havoc j#1;
            if (true)
            {
                if (LitInt(0) <= i#7)
                {
                }

                if (LitInt(0) <= i#7 && i#7 < j#1)
                {
                    b$reqreads#15 := $_ReadsFrame[this, _module.DoublyLinkedList.Nodes];
                }

                if (LitInt(0) <= i#7
                   && i#7 < j#1
                   && j#1 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq))
                {
                    b$reqreads#16 := $_ReadsFrame[this, _module.DoublyLinkedList.Nodes];
                    assert {:id "id220"} 0 <= i#7
                       && i#7 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
                    b$reqreads#17 := $_ReadsFrame[this, _module.DoublyLinkedList.Nodes];
                    assert {:id "id221"} 0 <= j#1
                       && j#1 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
                }
            }

            // End Comprehension WF check
        }

        assume {:id "id222"} _module.DoublyLinkedList.Valid($Heap, this)
           == ((Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
               ==> $Unbox(read($Heap, 
                      $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
                      _module.Node.L)): ref
                   == null
                 && (forall i#5: int :: 
                  { $Unbox(read($Heap, 
                        $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref, 
                        _module.Node.L)): ref } 
                  LitInt(1) <= i#5
                       && i#5 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
                     ==> $Unbox(read($Heap, 
                          $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref, 
                          _module.Node.L)): ref
                       == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5 - 1)): ref)
                 && (forall i#6: int :: 
                  { $Unbox(read($Heap, 
                        $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                        _module.Node.R)): ref } 
                  LitInt(0) <= i#6
                       && i#6
                         < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
                     ==> $Unbox(read($Heap, 
                          $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                          _module.Node.R)): ref
                       == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6 + 1)): ref)
                 && $Unbox(read($Heap, 
                      $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
                          Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
                      _module.Node.R)): ref
                   == null)
             && (forall i#8: int, j#2: int :: 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#2)): ref, $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#8)): ref } 
              LitInt(0) <= i#8
                   && i#8 < j#2
                   && j#2 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
                 ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#8)): ref
                   != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#2)): ref));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.DoublyLinkedList.Valid($Heap, this), TBool);
        assert {:id "id223"} b$reqreads#1;
        assert {:id "id224"} b$reqreads#2;
        assert {:id "id225"} b$reqreads#3;
        assert {:id "id226"} b$reqreads#4;
        assert {:id "id227"} b$reqreads#5;
        assert {:id "id228"} b$reqreads#6;
        assert {:id "id229"} b$reqreads#7;
        assert {:id "id230"} b$reqreads#8;
        assert {:id "id231"} b$reqreads#9;
        assert {:id "id232"} b$reqreads#10;
        assert {:id "id233"} b$reqreads#11;
        assert {:id "id234"} b$reqreads#12;
        assert {:id "id235"} b$reqreads#13;
        assert {:id "id236"} b$reqreads#14;
        assert {:id "id237"} b$reqreads#15;
        assert {:id "id238"} b$reqreads#16;
        assert {:id "id239"} b$reqreads#17;
        return;

        assume false;
    }
}



procedure {:verboseName "DoublyLinkedList._ctor (well-formedness)"} CheckWellFormed$$_module.DoublyLinkedList.__ctor(nodes#0: Seq
       where $Is(nodes#0, TSeq(Tclass._module.Node()))
         && $IsAlloc(nodes#0, TSeq(Tclass._module.Node()), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DoublyLinkedList._ctor (well-formedness)"} CheckWellFormed$$_module.DoublyLinkedList.__ctor(nodes#0: Seq) returns (this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var j#0: int;


    // AddMethodImpl: _ctor, CheckWellFormed$$_module.DoublyLinkedList.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> (exists $i: int :: 
          0 <= $i && $i < Seq#Length(nodes#0) && Seq#Index(nodes#0, $i) == $Box($o)));
    havoc i#0;
    havoc j#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < j#0)
        {
        }

        assume {:id "id240"} LitInt(0) <= i#0 && i#0 < j#0 && j#0 < Seq#Length(nodes#0);
        assert {:id "id241"} 0 <= i#0 && i#0 < Seq#Length(nodes#0);
        assert {:id "id242"} 0 <= j#0 && j#0 < Seq#Length(nodes#0);
        assume {:id "id243"} $Unbox(Seq#Index(nodes#0, i#0)): ref != $Unbox(Seq#Index(nodes#0, j#0)): ref;
    }
    else
    {
        assume {:id "id244"} LitInt(0) <= i#0 && i#0 < j#0 && j#0 < Seq#Length(nodes#0)
           ==> $Unbox(Seq#Index(nodes#0, i#0)): ref != $Unbox(Seq#Index(nodes#0, j#0)): ref;
    }

    assume {:id "id245"} (forall i#1: int, j#1: int :: 
      { $Unbox(Seq#Index(nodes#0, j#1)): ref, $Unbox(Seq#Index(nodes#0, i#1)): ref } 
      LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(nodes#0)
         ==> $Unbox(Seq#Index(nodes#0, i#1)): ref != $Unbox(Seq#Index(nodes#0, j#1)): ref);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || (exists $i: int :: 
            0 <= $i && $i < Seq#Length(nodes#0) && Seq#Index(nodes#0, $i) == $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc this;
    assume this != null
       && 
      $Is(this, Tclass._module.DoublyLinkedList())
       && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.DoublyLinkedList?(), $Heap);
    assume _module.DoublyLinkedList.Valid#canCall($Heap, this);
    assume {:id "id246"} _module.DoublyLinkedList.Valid($Heap, this);
    assume {:id "id247"} Seq#Equal($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, nodes#0);
}



procedure {:verboseName "DoublyLinkedList._ctor (call)"} Call$$_module.DoublyLinkedList.__ctor(nodes#0: Seq
       where $Is(nodes#0, TSeq(Tclass._module.Node()))
         && $IsAlloc(nodes#0, TSeq(Tclass._module.Node()), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoublyLinkedList())
         && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap));
  // user-defined preconditions
  requires {:id "id248"} (forall i#1: int, j#1: int :: 
    { $Unbox(Seq#Index(nodes#0, j#1)): ref, $Unbox(Seq#Index(nodes#0, i#1)): ref } 
    LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(nodes#0)
       ==> $Unbox(Seq#Index(nodes#0, i#1)): ref != $Unbox(Seq#Index(nodes#0, j#1)): ref);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.DoublyLinkedList.Valid#canCall($Heap, this);
  free ensures {:id "id249"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     && 
    _module.DoublyLinkedList.Valid($Heap, this)
     && 
    (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
       ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null
         && (forall i#2: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#2)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#2
               && i#2 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#2)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#2 - 1)): ref)
         && (forall i#3: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#3)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#3
               && i#3
                 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#3)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#3 + 1)): ref)
         && $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null)
     && (forall i#4: int, j#2: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#2)): ref, $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#4)): ref } 
      LitInt(0) <= i#4
           && i#4 < j#2
           && j#2 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
         ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#4)): ref
           != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#2)): ref);
  ensures {:id "id250"} Seq#Equal($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, nodes#0);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || (exists $i: int :: 
          0 <= $i && $i < Seq#Length(nodes#0) && Seq#Index(nodes#0, $i) == $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DoublyLinkedList._ctor (correctness)"} Impl$$_module.DoublyLinkedList.__ctor(nodes#0: Seq
       where $Is(nodes#0, TSeq(Tclass._module.Node()))
         && $IsAlloc(nodes#0, TSeq(Tclass._module.Node()), $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id251"} (forall i#1: int, j#1: int :: 
    { $Unbox(Seq#Index(nodes#0, j#1)): ref, $Unbox(Seq#Index(nodes#0, i#1)): ref } 
    LitInt(0) <= i#1 && i#1 < j#1 && j#1 < Seq#Length(nodes#0)
       ==> $Unbox(Seq#Index(nodes#0, i#1)): ref != $Unbox(Seq#Index(nodes#0, j#1)): ref);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.DoublyLinkedList.Valid#canCall($Heap, this);
  ensures {:id "id252"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null);
  ensures {:id "id253"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#5: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#5
               && i#5 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5 - 1)): ref));
  ensures {:id "id254"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#6: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#6
               && i#6
                 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6 + 1)): ref));
  ensures {:id "id255"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null);
  ensures {:id "id256"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (forall i#7: int, j#3: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#3)): ref, $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#7)): ref } 
        LitInt(0) <= i#7
             && i#7 < j#3
             && j#3 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#7)): ref
             != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#3)): ref);
  ensures {:id "id257"} Seq#Equal($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, nodes#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || (exists $i: int :: 
          0 <= $i && $i < Seq#Length(nodes#0) && Seq#Index(nodes#0, $i) == $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DoublyLinkedList._ctor (correctness)"} Impl$$_module.DoublyLinkedList.__ctor(nodes#0: Seq) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.Nodes: Seq;
  var defass#prev#0_0: bool;
  var prev#0_0: ref
     where defass#prev#0_0
       ==> $Is(prev#0_0, Tclass._module.Node())
         && $IsAlloc(prev#0_0, Tclass._module.Node(), $Heap);
  var n#0_0: int;
  var $rhs#0_0: ref;
  var $rhs#0_1: int;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0_2: ref;
  var newtype$check#0_0: ref;
  var $rhs#0_3: ref;
  var newtype$check#0_1: ref;
  var $PreLoopHeap$loop#0_0: Heap;
  var preLoop$loop#0_0$defass#prev#0_0: bool;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;
  var newtype$check#0_2: ref;
  var newtype$check#0_3: ref;
  var i#0_0: int;
  var i#0_2: int;
  var $decr$loop#0_00: int;
  var $rhs#0_0_0: ref;
  var $rhs#0_0_1: ref;
  var $rhs#0_0_2: ref;
  var $rhs#0_0_3: ref;
  var newtype$check#0_0_0: ref;

    // AddMethodImpl: _ctor, Impl$$_module.DoublyLinkedList.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> (exists $i: int :: 
          0 <= $i && $i < Seq#Length(nodes#0) && Seq#Index(nodes#0, $i) == $Box($o)));
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(80,3)
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(81,5)
    assume true;
    if (!Seq#Equal(nodes#0, Seq#Empty(): Seq))
    {
        push;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(82,19)
        assume true;
        assume true;
        assert {:id "id258"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(nodes#0);
        assume true;
        $rhs#0_0 := $Unbox(Seq#Index(nodes#0, LitInt(0))): ref;
        assume true;
        $rhs#0_1 := LitInt(1);
        prev#0_0 := $rhs#0_0;
        defass#prev#0_0 := true;
        n#0_0 := $rhs#0_1;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(83,22)
        assert {:id "id263"} defass#prev#0_0;
        assert {:id "id264"} prev#0_0 != null;
        assume true;
        $obj0 := prev#0_0;
        assert {:id "id265"} $_ModifiesFrame[$obj0, _module.Node.L];
        assert {:id "id266"} defass#prev#0_0;
        assert {:id "id267"} prev#0_0 != null;
        assume true;
        $obj1 := prev#0_0;
        assert {:id "id268"} $_ModifiesFrame[$obj1, _module.Node.R];
        newtype$check#0_0 := null;
        assume true;
        $rhs#0_2 := null;
        newtype$check#0_1 := null;
        assume true;
        $rhs#0_3 := null;
        $Heap := update($Heap, $obj0, _module.Node.L, $Box($rhs#0_2));
        assume $IsGoodHeap($Heap);
        $Heap := update($Heap, $obj1, _module.Node.R, $Box($rhs#0_3));
        assume $IsGoodHeap($Heap);
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(84,7)
        // Assume Fuel Constant
        $PreLoopHeap$loop#0_0 := $Heap;
        preLoop$loop#0_0$defass#prev#0_0 := defass#prev#0_0;
        $decr_init$loop#0_00 := Seq#Length(nodes#0) - n#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant true;
          invariant {:id "id274"} $w$loop#0_0 ==> LitInt(1) <= n#0_0;
          invariant {:id "id275"} $w$loop#0_0 ==> n#0_0 <= Seq#Length(nodes#0);
          free invariant true;
          invariant {:id "id279"} $w$loop#0_0
             ==> $Unbox(read($Heap, $Unbox(Seq#Index(nodes#0, LitInt(0))): ref, _module.Node.L)): ref
               == null;
          free invariant true;
          invariant {:id "id285"} $w$loop#0_0 ==> prev#0_0 == $Unbox(Seq#Index(nodes#0, n#0_0 - 1)): ref;
          invariant {:id "id286"} $w$loop#0_0 ==> $Unbox(read($Heap, prev#0_0, _module.Node.R)): ref == null;
          free invariant true;
          invariant {:id "id291"} $w$loop#0_0
             ==> (forall i#0_1: int, _t#0#0_0: int :: 
              { $Unbox(Seq#Index(nodes#0, _t#0#0_0)): ref, $Unbox(Seq#Index(nodes#0, i#0_1)): ref } 
              _t#0#0_0 == i#0_1 - 1
                 ==> 
                LitInt(1) <= i#0_1 && i#0_1 < n#0_0
                 ==> $Unbox(read($Heap, $Unbox(Seq#Index(nodes#0, i#0_1)): ref, _module.Node.L)): ref
                   == $Unbox(Seq#Index(nodes#0, _t#0#0_0)): ref);
          free invariant true;
          invariant {:id "id296"} $w$loop#0_0
             ==> (forall i#0_3: int, _t#0#0_1: int :: 
              { $Unbox(Seq#Index(nodes#0, _t#0#0_1)): ref, $Unbox(Seq#Index(nodes#0, i#0_3)): ref } 
              _t#0#0_1 == i#0_3 + 1
                 ==> 
                LitInt(0) <= i#0_3 && i#0_3 < n#0_0 - 1
                 ==> $Unbox(read($Heap, $Unbox(Seq#Index(nodes#0, i#0_3)): ref, _module.Node.R)): ref
                   == $Unbox(Seq#Index(nodes#0, _t#0#0_1)): ref);
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o]
                 || (exists $i: int :: 
                  0 <= $i && $i < Seq#Length(nodes#0) && Seq#Index(nodes#0, $i) == $Box($o)));
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant preLoop$loop#0_0$defass#prev#0_0 ==> defass#prev#0_0;
          free invariant Seq#Length(nodes#0) - n#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                if (LitInt(1) <= n#0_0)
                {
                }

                assume true;
                assume {:id "id273"} LitInt(1) <= n#0_0 && n#0_0 <= Seq#Length(nodes#0);
                assert {:id "id276"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(nodes#0);
                assert {:id "id277"} {:subsumption 0} $Unbox(Seq#Index(nodes#0, LitInt(0))): ref != null;
                newtype$check#0_2 := null;
                assume true;
                assume {:id "id278"} $Unbox(read($Heap, $Unbox(Seq#Index(nodes#0, LitInt(0))): ref, _module.Node.L)): ref
                   == null;
                assert {:id "id280"} defass#prev#0_0;
                assert {:id "id281"} {:subsumption 0} 0 <= n#0_0 - 1 && n#0_0 - 1 < Seq#Length(nodes#0);
                if (prev#0_0 == $Unbox(Seq#Index(nodes#0, n#0_0 - 1)): ref)
                {
                    assert {:id "id282"} defass#prev#0_0;
                    assert {:id "id283"} {:subsumption 0} prev#0_0 != null;
                    newtype$check#0_3 := null;
                }

                assume true;
                assume {:id "id284"} prev#0_0 == $Unbox(Seq#Index(nodes#0, n#0_0 - 1)): ref
                   && $Unbox(read($Heap, prev#0_0, _module.Node.R)): ref == null;
                // Begin Comprehension WF check
                havoc i#0_0;
                if (true)
                {
                    if (LitInt(1) <= i#0_0)
                    {
                    }

                    if (LitInt(1) <= i#0_0 && i#0_0 < n#0_0)
                    {
                        assert {:id "id287"} {:subsumption 0} 0 <= i#0_0 && i#0_0 < Seq#Length(nodes#0);
                        assert {:id "id288"} {:subsumption 0} $Unbox(Seq#Index(nodes#0, i#0_0)): ref != null;
                        assert {:id "id289"} {:subsumption 0} 0 <= i#0_0 - 1 && i#0_0 - 1 < Seq#Length(nodes#0);
                    }
                }

                // End Comprehension WF check
                assume true;
                assume {:id "id290"} (forall i#0_1: int, _t#0#0_0: int :: 
                  { $Unbox(Seq#Index(nodes#0, _t#0#0_0)): ref, $Unbox(Seq#Index(nodes#0, i#0_1)): ref } 
                  _t#0#0_0 == i#0_1 - 1
                     ==> 
                    LitInt(1) <= i#0_1 && i#0_1 < n#0_0
                     ==> $Unbox(read($Heap, $Unbox(Seq#Index(nodes#0, i#0_1)): ref, _module.Node.L)): ref
                       == $Unbox(Seq#Index(nodes#0, _t#0#0_0)): ref);
                // Begin Comprehension WF check
                havoc i#0_2;
                if (true)
                {
                    if (LitInt(0) <= i#0_2)
                    {
                    }

                    if (LitInt(0) <= i#0_2 && i#0_2 < n#0_0 - 1)
                    {
                        assert {:id "id292"} {:subsumption 0} 0 <= i#0_2 && i#0_2 < Seq#Length(nodes#0);
                        assert {:id "id293"} {:subsumption 0} $Unbox(Seq#Index(nodes#0, i#0_2)): ref != null;
                        assert {:id "id294"} {:subsumption 0} 0 <= i#0_2 + 1 && i#0_2 + 1 < Seq#Length(nodes#0);
                    }
                }

                // End Comprehension WF check
                assume true;
                assume {:id "id295"} (forall i#0_3: int, _t#0#0_1: int :: 
                  { $Unbox(Seq#Index(nodes#0, _t#0#0_1)): ref, $Unbox(Seq#Index(nodes#0, i#0_3)): ref } 
                  _t#0#0_1 == i#0_3 + 1
                     ==> 
                    LitInt(0) <= i#0_3 && i#0_3 < n#0_0 - 1
                     ==> $Unbox(read($Heap, $Unbox(Seq#Index(nodes#0, i#0_3)): ref, _module.Node.R)): ref
                       == $Unbox(Seq#Index(nodes#0, _t#0#0_1)): ref);
                assume true;
                assume false;
            }

            assume true;
            if (Seq#Length(nodes#0) <= n#0_0)
            {
                break;
            }

            $decr$loop#0_00 := Seq#Length(nodes#0) - n#0_0;
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(91,34)
            assert {:id "id297"} 0 <= n#0_0 && n#0_0 < Seq#Length(nodes#0);
            assert {:id "id298"} $Unbox(Seq#Index(nodes#0, n#0_0)): ref != null;
            assume true;
            $obj0 := $Unbox(Seq#Index(nodes#0, n#0_0)): ref;
            assert {:id "id299"} $_ModifiesFrame[$obj0, _module.Node.L];
            assert {:id "id300"} defass#prev#0_0;
            assert {:id "id301"} prev#0_0 != null;
            assume true;
            $obj1 := prev#0_0;
            assert {:id "id302"} $_ModifiesFrame[$obj1, _module.Node.R];
            assume true;
            assert {:id "id303"} defass#prev#0_0;
            assume true;
            $rhs#0_0_0 := prev#0_0;
            assert {:id "id305"} 0 <= n#0_0 && n#0_0 < Seq#Length(nodes#0);
            assume true;
            $rhs#0_0_1 := $Unbox(Seq#Index(nodes#0, n#0_0)): ref;
            assert {:id "id307"} 0 <= n#0_0 && n#0_0 < Seq#Length(nodes#0);
            assume true;
            $rhs#0_0_2 := $Unbox(Seq#Index(nodes#0, n#0_0)): ref;
            $Heap := update($Heap, $obj0, _module.Node.L, $Box($rhs#0_0_0));
            assume $IsGoodHeap($Heap);
            $Heap := update($Heap, $obj1, _module.Node.R, $Box($rhs#0_0_1));
            assume $IsGoodHeap($Heap);
            prev#0_0 := $rhs#0_0_2;
            defass#prev#0_0 := true;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(92,16)
            assert {:id "id312"} defass#prev#0_0;
            assert {:id "id313"} prev#0_0 != null;
            assume true;
            assert {:id "id314"} $_ModifiesFrame[prev#0_0, _module.Node.R];
            newtype$check#0_0_0 := null;
            assume true;
            $rhs#0_0_3 := null;
            $Heap := update($Heap, prev#0_0, _module.Node.R, $Box($rhs#0_0_3));
            assume $IsGoodHeap($Heap);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(93,11)
            assume true;
            assume true;
            n#0_0 := n#0_0 + 1;
            pop;
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(84,7)
            assert {:id "id318"} 0 <= $decr$loop#0_00 || Seq#Length(nodes#0) - n#0_0 == $decr$loop#0_00;
            assert {:id "id319"} Seq#Length(nodes#0) - n#0_0 < $decr$loop#0_00;
            assume true;
        }

        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(96,11)
    assume true;
    assume true;
    this.Nodes := nodes#0;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(80,3)
    assume this != null && $Is(this, Tclass._module.DoublyLinkedList?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq == this.Nodes;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(80,3)
}



// function declaration for _module.DoublyLinkedList.PopMiddle
function _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T: Ty, this: ref, s#0: Seq, k#0: int) : Seq
uses {
// consequence axiom for _module.DoublyLinkedList.PopMiddle
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.DoublyLinkedList.PopMiddle$T: Ty, this: ref, s#0: Seq, k#0: int :: 
    { _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T, this, s#0, k#0) } 
    _module.DoublyLinkedList.PopMiddle#canCall(_module.DoublyLinkedList.PopMiddle$T, this, s#0, k#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DoublyLinkedList())
           && $Is(s#0, TSeq(_module.DoublyLinkedList.PopMiddle$T))
           && LitInt(0) <= k#0
           && k#0 < Seq#Length(s#0))
       ==> $Is(_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T, this, s#0, k#0), 
        TSeq(_module.DoublyLinkedList.PopMiddle$T)));
// alloc consequence axiom for _module.DoublyLinkedList.PopMiddle
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module.DoublyLinkedList.PopMiddle$T: Ty, 
      this: ref, 
      s#0: Seq, 
      k#0: int :: 
    { $IsAlloc(_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T, this, s#0, k#0), 
        TSeq(_module.DoublyLinkedList.PopMiddle$T), 
        $Heap) } 
    (_module.DoublyLinkedList.PopMiddle#canCall(_module.DoublyLinkedList.PopMiddle$T, this, s#0, k#0)
           || (0 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap)
             && 
            $Is(s#0, TSeq(_module.DoublyLinkedList.PopMiddle$T))
             && $IsAlloc(s#0, TSeq(_module.DoublyLinkedList.PopMiddle$T), $Heap)
             && LitInt(0) <= k#0
             && k#0 < Seq#Length(s#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T, this, s#0, k#0), 
        TSeq(_module.DoublyLinkedList.PopMiddle$T), 
        $Heap));
// definition axiom for _module.DoublyLinkedList.PopMiddle (revealed)
axiom {:id "id321"} 0 <= $FunctionContextHeight
   ==> (forall _module.DoublyLinkedList.PopMiddle$T: Ty, this: ref, s#0: Seq, k#0: int :: 
    { _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T, this, s#0, k#0) } 
    _module.DoublyLinkedList.PopMiddle#canCall(_module.DoublyLinkedList.PopMiddle$T, this, s#0, k#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DoublyLinkedList())
           && $Is(s#0, TSeq(_module.DoublyLinkedList.PopMiddle$T))
           && LitInt(0) <= k#0
           && k#0 < Seq#Length(s#0))
       ==> _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T, this, s#0, k#0)
         == Seq#Append(Seq#Take(s#0, k#0), Seq#Drop(s#0, k#0 + 1)));
// definition axiom for _module.DoublyLinkedList.PopMiddle for decreasing-related literals (revealed)
axiom {:id "id322"} 0 <= $FunctionContextHeight
   ==> (forall _module.DoublyLinkedList.PopMiddle$T: Ty, this: ref, s#0: Seq, k#0: int :: 
    {:weight 3} { _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T, this, Lit(s#0), LitInt(k#0)) } 
    _module.DoublyLinkedList.PopMiddle#canCall(_module.DoublyLinkedList.PopMiddle$T, this, Lit(s#0), LitInt(k#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DoublyLinkedList())
           && $Is(s#0, TSeq(_module.DoublyLinkedList.PopMiddle$T))
           && LitInt(0) <= k#0
           && k#0 < Seq#Length(Lit(s#0)))
       ==> _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T, this, Lit(s#0), LitInt(k#0))
         == Seq#Append(Seq#Take(Lit(s#0), LitInt(k#0)), Seq#Drop(Lit(s#0), LitInt(k#0 + 1))));
// definition axiom for _module.DoublyLinkedList.PopMiddle for all literals (revealed)
axiom {:id "id323"} 0 <= $FunctionContextHeight
   ==> (forall _module.DoublyLinkedList.PopMiddle$T: Ty, this: ref, s#0: Seq, k#0: int :: 
    {:weight 3} { _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T, Lit(this), Lit(s#0), LitInt(k#0)) } 
    _module.DoublyLinkedList.PopMiddle#canCall(_module.DoublyLinkedList.PopMiddle$T, Lit(this), Lit(s#0), LitInt(k#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DoublyLinkedList())
           && $Is(s#0, TSeq(_module.DoublyLinkedList.PopMiddle$T))
           && LitInt(0) <= k#0
           && k#0 < Seq#Length(Lit(s#0)))
       ==> _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T, Lit(this), Lit(s#0), LitInt(k#0))
         == Seq#Append(Seq#Take(Lit(s#0), LitInt(k#0)), Seq#Drop(Lit(s#0), LitInt(k#0 + 1))));
}

function _module.DoublyLinkedList.PopMiddle#canCall(_module.DoublyLinkedList.PopMiddle$T: Ty, this: ref, s#0: Seq, k#0: int) : bool;

function _module.DoublyLinkedList.PopMiddle#requires(Ty, ref, Seq, int) : bool;

// #requires axiom for _module.DoublyLinkedList.PopMiddle
axiom (forall _module.DoublyLinkedList.PopMiddle$T: Ty, this: ref, s#0: Seq, k#0: int :: 
  { _module.DoublyLinkedList.PopMiddle#requires(_module.DoublyLinkedList.PopMiddle$T, this, s#0, k#0) } 
  this != null
       && $Is(this, Tclass._module.DoublyLinkedList())
       && $Is(s#0, TSeq(_module.DoublyLinkedList.PopMiddle$T))
       && LitInt(0) <= k#0
     ==> _module.DoublyLinkedList.PopMiddle#requires(_module.DoublyLinkedList.PopMiddle$T, this, s#0, k#0)
       == (k#0 < Seq#Length(s#0)));

procedure {:verboseName "DoublyLinkedList.PopMiddle (well-formedness)"} CheckWellformed$$_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoublyLinkedList())
         && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap), 
    s#0: Seq where $Is(s#0, TSeq(_module.DoublyLinkedList.PopMiddle$T)), 
    k#0: int where LitInt(0) <= k#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DoublyLinkedList.PopMiddle (well-formedness)"} CheckWellformed$$_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T: Ty, this: ref, s#0: Seq, k#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id324"} k#0 < Seq#Length(s#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T, this, s#0, k#0), 
          TSeq(_module.DoublyLinkedList.PopMiddle$T));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id325"} 0 <= k#0 && k#0 <= Seq#Length(s#0);
        assert {:id "id326"} 0 <= k#0 + 1 && k#0 + 1 <= Seq#Length(s#0);
        assume {:id "id327"} _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T, this, s#0, k#0)
           == Seq#Append(Seq#Take(s#0, k#0), Seq#Drop(s#0, k#0 + 1));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.PopMiddle$T, this, s#0, k#0), 
          TSeq(_module.DoublyLinkedList.PopMiddle$T));
        return;

        assume false;
    }
}



// function declaration for _module.DoublyLinkedList.Injective
function _module.DoublyLinkedList.Injective(_module.DoublyLinkedList.Injective$T: Ty, this: ref, s#0: Seq) : bool
uses {
// definition axiom for _module.DoublyLinkedList.Injective (revealed)
axiom {:id "id328"} 0 <= $FunctionContextHeight
   ==> (forall _module.DoublyLinkedList.Injective$T: Ty, this: ref, s#0: Seq :: 
    { _module.DoublyLinkedList.Injective(_module.DoublyLinkedList.Injective$T, this, s#0) } 
    _module.DoublyLinkedList.Injective#canCall(_module.DoublyLinkedList.Injective$T, this, s#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DoublyLinkedList())
           && $Is(s#0, TSeq(_module.DoublyLinkedList.Injective$T)))
       ==> _module.DoublyLinkedList.Injective(_module.DoublyLinkedList.Injective$T, this, s#0)
         == (forall j#0: int, k#0: int :: 
          { Seq#Index(s#0, k#0), Seq#Index(s#0, j#0) } 
          LitInt(0) <= j#0 && j#0 < k#0 && k#0 < Seq#Length(s#0)
             ==> Seq#Index(s#0, j#0) != Seq#Index(s#0, k#0)));
// definition axiom for _module.DoublyLinkedList.Injective for decreasing-related literals (revealed)
axiom {:id "id329"} 0 <= $FunctionContextHeight
   ==> (forall _module.DoublyLinkedList.Injective$T: Ty, this: ref, s#0: Seq :: 
    {:weight 3} { _module.DoublyLinkedList.Injective(_module.DoublyLinkedList.Injective$T, this, Lit(s#0)) } 
    _module.DoublyLinkedList.Injective#canCall(_module.DoublyLinkedList.Injective$T, this, Lit(s#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DoublyLinkedList())
           && $Is(s#0, TSeq(_module.DoublyLinkedList.Injective$T)))
       ==> _module.DoublyLinkedList.Injective(_module.DoublyLinkedList.Injective$T, this, Lit(s#0))
         == (forall j#1: int, k#1: int :: 
          { Seq#Index(s#0, k#1), Seq#Index(s#0, j#1) } 
          LitInt(0) <= j#1 && j#1 < k#1 && k#1 < Seq#Length(Lit(s#0))
             ==> Seq#Index(Lit(s#0), j#1) != Seq#Index(Lit(s#0), k#1)));
// definition axiom for _module.DoublyLinkedList.Injective for all literals (revealed)
axiom {:id "id330"} 0 <= $FunctionContextHeight
   ==> (forall _module.DoublyLinkedList.Injective$T: Ty, this: ref, s#0: Seq :: 
    {:weight 3} { _module.DoublyLinkedList.Injective(_module.DoublyLinkedList.Injective$T, Lit(this), Lit(s#0)) } 
    _module.DoublyLinkedList.Injective#canCall(_module.DoublyLinkedList.Injective$T, Lit(this), Lit(s#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DoublyLinkedList())
           && $Is(s#0, TSeq(_module.DoublyLinkedList.Injective$T)))
       ==> _module.DoublyLinkedList.Injective(_module.DoublyLinkedList.Injective$T, Lit(this), Lit(s#0))
         == (forall j#2: int, k#2: int :: 
          { Seq#Index(s#0, k#2), Seq#Index(s#0, j#2) } 
          LitInt(0) <= j#2 && j#2 < k#2 && k#2 < Seq#Length(Lit(s#0))
             ==> Seq#Index(Lit(s#0), j#2) != Seq#Index(Lit(s#0), k#2)));
}

function _module.DoublyLinkedList.Injective#canCall(_module.DoublyLinkedList.Injective$T: Ty, this: ref, s#0: Seq) : bool;

function _module.DoublyLinkedList.Injective#requires(Ty, ref, Seq) : bool;

// #requires axiom for _module.DoublyLinkedList.Injective
axiom (forall _module.DoublyLinkedList.Injective$T: Ty, this: ref, s#0: Seq :: 
  { _module.DoublyLinkedList.Injective#requires(_module.DoublyLinkedList.Injective$T, this, s#0) } 
  this != null
       && $Is(this, Tclass._module.DoublyLinkedList())
       && $Is(s#0, TSeq(_module.DoublyLinkedList.Injective$T))
     ==> _module.DoublyLinkedList.Injective#requires(_module.DoublyLinkedList.Injective$T, this, s#0)
       == true);

procedure {:verboseName "DoublyLinkedList.Injective (well-formedness)"} CheckWellformed$$_module.DoublyLinkedList.Injective(_module.DoublyLinkedList.Injective$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoublyLinkedList())
         && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap), 
    s#0: Seq where $Is(s#0, TSeq(_module.DoublyLinkedList.Injective$T)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DoublyLinkedList.Injective (well-formedness)"} CheckWellformed$$_module.DoublyLinkedList.Injective(_module.DoublyLinkedList.Injective$T: Ty, this: ref, s#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var j#3: int;
  var k#3: int;


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
        // Begin Comprehension WF check
        havoc j#3;
        havoc k#3;
        if (true)
        {
            if (LitInt(0) <= j#3)
            {
            }

            if (LitInt(0) <= j#3 && j#3 < k#3)
            {
            }

            if (LitInt(0) <= j#3 && j#3 < k#3 && k#3 < Seq#Length(s#0))
            {
                assert {:id "id331"} 0 <= j#3 && j#3 < Seq#Length(s#0);
                assert {:id "id332"} 0 <= k#3 && k#3 < Seq#Length(s#0);
            }
        }

        // End Comprehension WF check
        assume {:id "id333"} _module.DoublyLinkedList.Injective(_module.DoublyLinkedList.Injective$T, this, s#0)
           == (forall j#4: int, k#4: int :: 
            { Seq#Index(s#0, k#4), Seq#Index(s#0, j#4) } 
            LitInt(0) <= j#4 && j#4 < k#4 && k#4 < Seq#Length(s#0)
               ==> Seq#Index(s#0, j#4) != Seq#Index(s#0, k#4));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.DoublyLinkedList.Injective(_module.DoublyLinkedList.Injective$T, this, s#0), 
          TBool);
        return;

        assume false;
    }
}



procedure {:verboseName "DoublyLinkedList.InjectiveAfterPop (well-formedness)"} CheckWellFormed$$_module.DoublyLinkedList.InjectiveAfterPop(_module.DoublyLinkedList.InjectiveAfterPop$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoublyLinkedList())
         && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap), 
    s#0: Seq
       where $Is(s#0, TSeq(_module.DoublyLinkedList.InjectiveAfterPop$T))
         && $IsAlloc(s#0, TSeq(_module.DoublyLinkedList.InjectiveAfterPop$T), $Heap), 
    k#0: int where LitInt(0) <= k#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DoublyLinkedList.InjectiveAfterPop (well-formedness)"} CheckWellFormed$$_module.DoublyLinkedList.InjectiveAfterPop(_module.DoublyLinkedList.InjectiveAfterPop$T: Ty, this: ref, s#0: Seq, k#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: Seq;
  var ##s#1: Seq;
  var ##s#2: Seq;
  var ##k#0: int;


    // AddMethodImpl: InjectiveAfterPop, CheckWellFormed$$_module.DoublyLinkedList.InjectiveAfterPop
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id334"} k#0 < Seq#Length(s#0);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.DoublyLinkedList?(), $Heap);
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, TSeq(_module.DoublyLinkedList.InjectiveAfterPop$T), $Heap);
    assume _module.DoublyLinkedList.Injective#canCall(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0);
    assume {:id "id335"} _module.DoublyLinkedList.Injective(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.DoublyLinkedList?(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.DoublyLinkedList?(), $Heap);
    ##s#2 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#2, TSeq(_module.DoublyLinkedList.InjectiveAfterPop$T), $Heap);
    ##k#0 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#0, Tclass._System.nat(), $Heap);
    assert {:id "id336"} {:subsumption 0} ##k#0 < Seq#Length(##s#2);
    assume ##k#0 < Seq#Length(##s#2);
    assume _module.DoublyLinkedList.PopMiddle#canCall(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0);
    ##s#1 := _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, TSeq(_module.DoublyLinkedList.InjectiveAfterPop$T), $Heap);
    assume _module.DoublyLinkedList.Injective#canCall(_module.DoublyLinkedList.InjectiveAfterPop$T, 
      this, 
      _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0));
    assume {:id "id337"} _module.DoublyLinkedList.Injective(_module.DoublyLinkedList.InjectiveAfterPop$T, 
      this, 
      _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0));
}



procedure {:verboseName "DoublyLinkedList.InjectiveAfterPop (call)"} Call$$_module.DoublyLinkedList.InjectiveAfterPop(_module.DoublyLinkedList.InjectiveAfterPop$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoublyLinkedList())
         && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap), 
    s#0: Seq
       where $Is(s#0, TSeq(_module.DoublyLinkedList.InjectiveAfterPop$T))
         && $IsAlloc(s#0, TSeq(_module.DoublyLinkedList.InjectiveAfterPop$T), $Heap), 
    k#0: int where LitInt(0) <= k#0);
  // user-defined preconditions
  requires {:id "id338"} k#0 < Seq#Length(s#0);
  requires {:id "id339"} _module.DoublyLinkedList.Injective#canCall(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0)
     ==> _module.DoublyLinkedList.Injective(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0)
       || (forall j#0: int, k#1: int :: 
        { Seq#Index(s#0, k#1), Seq#Index(s#0, j#0) } 
        LitInt(0) <= j#0 && j#0 < k#1 && k#1 < Seq#Length(s#0)
           ==> Seq#Index(s#0, j#0) != Seq#Index(s#0, k#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.DoublyLinkedList.PopMiddle#canCall(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0)
     && _module.DoublyLinkedList.Injective#canCall(_module.DoublyLinkedList.InjectiveAfterPop$T, 
      this, 
      _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0));
  free ensures {:id "id340"} _module.DoublyLinkedList.Injective#canCall(_module.DoublyLinkedList.InjectiveAfterPop$T, 
      this, 
      _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0))
     && 
    _module.DoublyLinkedList.Injective(_module.DoublyLinkedList.InjectiveAfterPop$T, 
      this, 
      _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0))
     && (forall j#1: int, k#2: int :: 
      { Seq#Index(_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0), 
          k#2), Seq#Index(_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0), 
          j#1) } 
      LitInt(0) <= j#1
           && j#1 < k#2
           && k#2
             < Seq#Length(_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0))
         ==> Seq#Index(_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0), 
            j#1)
           != Seq#Index(_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0), 
            k#2));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "DoublyLinkedList.InjectiveAfterPop (correctness)"} Impl$$_module.DoublyLinkedList.InjectiveAfterPop(_module.DoublyLinkedList.InjectiveAfterPop$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoublyLinkedList())
         && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap), 
    s#0: Seq
       where $Is(s#0, TSeq(_module.DoublyLinkedList.InjectiveAfterPop$T))
         && $IsAlloc(s#0, TSeq(_module.DoublyLinkedList.InjectiveAfterPop$T), $Heap), 
    k#0: int where LitInt(0) <= k#0)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id341"} k#0 < Seq#Length(s#0);
  free requires {:id "id342"} _module.DoublyLinkedList.Injective#canCall(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0)
     && 
    _module.DoublyLinkedList.Injective(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0)
     && (forall j#2: int, k#3: int :: 
      { Seq#Index(s#0, k#3), Seq#Index(s#0, j#2) } 
      LitInt(0) <= j#2 && j#2 < k#3 && k#3 < Seq#Length(s#0)
         ==> Seq#Index(s#0, j#2) != Seq#Index(s#0, k#3));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.DoublyLinkedList.PopMiddle#canCall(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0)
     && _module.DoublyLinkedList.Injective#canCall(_module.DoublyLinkedList.InjectiveAfterPop$T, 
      this, 
      _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0));
  ensures {:id "id343"} _module.DoublyLinkedList.Injective#canCall(_module.DoublyLinkedList.InjectiveAfterPop$T, 
      this, 
      _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0))
     ==> _module.DoublyLinkedList.Injective(_module.DoublyLinkedList.InjectiveAfterPop$T, 
        this, 
        _module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0))
       || (forall j#3: int, k#4: int :: 
        { Seq#Index(_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0), 
            k#4), Seq#Index(_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0), 
            j#3) } 
        LitInt(0) <= j#3
             && j#3 < k#4
             && k#4
               < Seq#Length(_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0))
           ==> Seq#Index(_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0), 
              j#3)
             != Seq#Index(_module.DoublyLinkedList.PopMiddle(_module.DoublyLinkedList.InjectiveAfterPop$T, this, s#0, k#0), 
              k#4));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DoublyLinkedList.InjectiveAfterPop (correctness)"} Impl$$_module.DoublyLinkedList.InjectiveAfterPop(_module.DoublyLinkedList.InjectiveAfterPop$T: Ty, this: ref, s#0: Seq, k#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InjectiveAfterPop, Impl$$_module.DoublyLinkedList.InjectiveAfterPop
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "DoublyLinkedList.Remove (well-formedness)"} CheckWellFormed$$_module.DoublyLinkedList.Remove(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoublyLinkedList())
         && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap), 
    x#0: ref
       where $Is(x#0, Tclass._module.Node()) && $IsAlloc(x#0, Tclass._module.Node(), $Heap))
   returns (k#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DoublyLinkedList.Remove (well-formedness)"} CheckWellFormed$$_module.DoublyLinkedList.Remove(this: ref, x#0: ref) returns (k#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Remove, CheckWellFormed$$_module.DoublyLinkedList.Remove
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || (exists $i: int :: 
            0 <= $i
               && $i < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
               && Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, $i)
                 == $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.DoublyLinkedList?(), $Heap);
    assume _module.DoublyLinkedList.Valid#canCall($Heap, this);
    assume {:id "id344"} _module.DoublyLinkedList.Valid($Heap, this);
    assume {:id "id345"} Seq#Contains($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, $Box(x#0));
    assert {:id "id346"} 0 <= LitInt(0)
       && LitInt(0)
         < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
    assume {:id "id347"} x#0
       != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref;
    assert {:id "id348"} 0
         <= Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
       && Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
         < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
    assume {:id "id349"} x#0
       != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
          Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || 
          $o == this
           || (exists $i: int :: 
            0 <= $i
               && $i
                 < Seq#Length($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq)
               && Seq#Index($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, $i)
                 == $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc k#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.DoublyLinkedList?(), $Heap);
    assume _module.DoublyLinkedList.Valid#canCall($Heap, this);
    assume {:id "id350"} _module.DoublyLinkedList.Valid($Heap, this);
    if (LitInt(0) <= k#0)
    {
        assert {:id "id351"} $IsAlloc(this, Tclass._module.DoublyLinkedList(), old($Heap));
    }

    assume {:id "id352"} LitInt(0) <= k#0
       && k#0
         < Seq#Length($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq);
    assert {:id "id353"} $IsAlloc(this, Tclass._module.DoublyLinkedList(), old($Heap));
    assert {:id "id354"} 0 <= k#0
       && k#0
         < Seq#Length($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq);
    assume {:id "id355"} x#0
       == $Unbox(Seq#Index($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, k#0)): ref;
    assert {:id "id356"} $IsAlloc(this, Tclass._module.DoublyLinkedList(), old($Heap));
    assert {:id "id357"} 0 <= k#0
       && k#0
         <= Seq#Length($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq);
    assert {:id "id358"} $IsAlloc(this, Tclass._module.DoublyLinkedList(), old($Heap));
    assert {:id "id359"} 0 <= k#0 + 1
       && k#0 + 1
         <= Seq#Length($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq);
    assume {:id "id360"} Seq#Equal($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
      Seq#Append(Seq#Take($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, k#0), 
        Seq#Drop($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, k#0 + 1)));
    assert {:id "id361"} x#0 != null;
    assert {:id "id362"} x#0 != null;
    assert {:id "id363"} $IsAlloc(x#0, Tclass._module.Node(), old($Heap));
    assume {:id "id364"} $Unbox(read($Heap, x#0, _module.Node.L)): ref
       == $Unbox(read(old($Heap), x#0, _module.Node.L)): ref;
    assert {:id "id365"} x#0 != null;
    assert {:id "id366"} x#0 != null;
    assert {:id "id367"} $IsAlloc(x#0, Tclass._module.Node(), old($Heap));
    assume {:id "id368"} $Unbox(read($Heap, x#0, _module.Node.R)): ref
       == $Unbox(read(old($Heap), x#0, _module.Node.R)): ref;
}



procedure {:verboseName "DoublyLinkedList.Remove (call)"} Call$$_module.DoublyLinkedList.Remove(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoublyLinkedList())
         && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap), 
    x#0: ref
       where $Is(x#0, Tclass._module.Node()) && $IsAlloc(x#0, Tclass._module.Node(), $Heap))
   returns (k#0: int);
  // user-defined preconditions
  requires {:id "id369"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null);
  requires {:id "id370"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#0: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#0)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#0
               && i#0 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#0)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#0 - 1)): ref));
  requires {:id "id371"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#1: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#1)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#1
               && i#1
                 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#1)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#1 + 1)): ref));
  requires {:id "id372"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null);
  requires {:id "id373"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (forall i#2: int, j#0: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#0)): ref, $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#2)): ref } 
        LitInt(0) <= i#2
             && i#2 < j#0
             && j#0 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#2)): ref
             != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#0)): ref);
  requires {:id "id374"} Seq#Contains($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, $Box(x#0));
  requires {:id "id375"} x#0
     != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref;
  requires {:id "id376"} x#0
     != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
        Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.DoublyLinkedList.Valid#canCall($Heap, this);
  free ensures {:id "id377"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     && 
    _module.DoublyLinkedList.Valid($Heap, this)
     && 
    (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
       ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null
         && (forall i#3: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#3)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#3
               && i#3 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#3)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#3 - 1)): ref)
         && (forall i#4: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#4)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#4
               && i#4
                 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#4)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#4 + 1)): ref)
         && $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null)
     && (forall i#5: int, j#1: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#1)): ref, $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref } 
      LitInt(0) <= i#5
           && i#5 < j#1
           && j#1 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
         ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref
           != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#1)): ref);
  free ensures true;
  ensures {:id "id378"} LitInt(0) <= k#0;
  ensures {:id "id379"} k#0
     < Seq#Length($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq);
  ensures {:id "id380"} x#0
     == $Unbox(Seq#Index($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, k#0)): ref;
  free ensures true;
  ensures {:id "id381"} Seq#Equal($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
    Seq#Append(Seq#Take($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, k#0), 
      Seq#Drop($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, k#0 + 1)));
  ensures {:id "id382"} $Unbox(read($Heap, x#0, _module.Node.L)): ref
     == $Unbox(read(old($Heap), x#0, _module.Node.L)): ref;
  ensures {:id "id383"} $Unbox(read($Heap, x#0, _module.Node.R)): ref
     == $Unbox(read(old($Heap), x#0, _module.Node.R)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || (exists $i: int :: 
          0 <= $i
             && $i
               < Seq#Length($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq)
             && Seq#Index($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, $i)
               == $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DoublyLinkedList.Remove (correctness)"} Impl$$_module.DoublyLinkedList.Remove(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoublyLinkedList())
         && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap), 
    x#0: ref
       where $Is(x#0, Tclass._module.Node()) && $IsAlloc(x#0, Tclass._module.Node(), $Heap))
   returns (k#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id384"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     && 
    _module.DoublyLinkedList.Valid($Heap, this)
     && 
    (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
       ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null
         && (forall i#6: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#6
               && i#6 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6 - 1)): ref)
         && (forall i#7: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#7)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#7
               && i#7
                 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#7)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#7 + 1)): ref)
         && $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null)
     && (forall i#8: int, j#2: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#2)): ref, $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#8)): ref } 
      LitInt(0) <= i#8
           && i#8 < j#2
           && j#2 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
         ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#8)): ref
           != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#2)): ref);
  requires {:id "id385"} Seq#Contains($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, $Box(x#0));
  requires {:id "id386"} x#0
     != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref;
  requires {:id "id387"} x#0
     != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
        Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.DoublyLinkedList.Valid#canCall($Heap, this);
  ensures {:id "id388"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null);
  ensures {:id "id389"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#9: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#9)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#9
               && i#9 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#9)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#9 - 1)): ref));
  ensures {:id "id390"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#10: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#10)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#10
               && i#10
                 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#10)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#10 + 1)): ref));
  ensures {:id "id391"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null);
  ensures {:id "id392"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (forall i#11: int, j#3: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#3)): ref, $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#11)): ref } 
        LitInt(0) <= i#11
             && i#11 < j#3
             && j#3 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#11)): ref
             != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#3)): ref);
  free ensures true;
  ensures {:id "id393"} LitInt(0) <= k#0;
  ensures {:id "id394"} k#0
     < Seq#Length($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq);
  ensures {:id "id395"} x#0
     == $Unbox(Seq#Index($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, k#0)): ref;
  free ensures true;
  ensures {:id "id396"} Seq#Equal($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
    Seq#Append(Seq#Take($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, k#0), 
      Seq#Drop($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, k#0 + 1)));
  ensures {:id "id397"} $Unbox(read($Heap, x#0, _module.Node.L)): ref
     == $Unbox(read(old($Heap), x#0, _module.Node.L)): ref;
  ensures {:id "id398"} $Unbox(read($Heap, x#0, _module.Node.R)): ref
     == $Unbox(read(old($Heap), x#0, _module.Node.R)): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || (exists $i: int :: 
          0 <= $i
             && $i
               < Seq#Length($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq)
             && Seq#Index($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, $i)
               == $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DoublyLinkedList.Remove (correctness)"} Impl$$_module.DoublyLinkedList.Remove(this: ref, x#0: ref) returns (k#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#1: int;
  var $rhs#0: ref;
  var $rhs#1: ref;
  var $rhs#2: Seq;

    // AddMethodImpl: Remove, Impl$$_module.DoublyLinkedList.Remove
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || (exists $i: int :: 
            0 <= $i
               && $i < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
               && Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, $i)
                 == $Box($o)));
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(123,7)
    havoc k#1;
    if (true)
    {
        if (LitInt(1) <= k#1)
        {
        }

        if (LitInt(1) <= k#1
           && k#1
             < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)
        {
            assert {:id "id399"} {:subsumption 0} 0 <= k#1
               && k#1 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
        }

        assume true;
    }

    assert {:id "id400"} ($Is(Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
             - 1
             - 1, 
          TInt)
         && 
        LitInt(1)
           <= Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
             - 1
             - 1
         && Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
             - 1
             - 1
           < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
         && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
              Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
                 - 1
                 - 1)): ref
           == x#0)
       || 
      ($Is(LitInt(1), TInt)
         && 
        LitInt(1) <= LitInt(1)
         && 1
           < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
         && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(1))): ref
           == x#0)
       || 
      ($Is(LitInt(0), TInt)
         && 
        LitInt(1) <= LitInt(0)
         && 0
           < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
         && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref
           == x#0)
       || (exists $as#k0#0: int :: 
        LitInt(1) <= $as#k0#0
           && $as#k0#0
             < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
           && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, $as#k0#0)): ref
             == x#0);
    havoc k#0;
    assume {:id "id401"} LitInt(1) <= k#0
       && k#0
         < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
       && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, k#0)): ref
         == x#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(124,11)
    assert {:id "id402"} x#0 != null;
    assert {:id "id403"} $Unbox(read($Heap, x#0, _module.Node.R)): ref != null;
    assume true;
    assert {:id "id404"} $_ModifiesFrame[$Unbox(read($Heap, x#0, _module.Node.R)): ref, _module.Node.L];
    assert {:id "id405"} x#0 != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, x#0, _module.Node.L)): ref;
    $Heap := update($Heap, 
      $Unbox(read($Heap, x#0, _module.Node.R)): ref, 
      _module.Node.L, 
      $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(125,11)
    assert {:id "id408"} x#0 != null;
    assert {:id "id409"} $Unbox(read($Heap, x#0, _module.Node.L)): ref != null;
    assume true;
    assert {:id "id410"} $_ModifiesFrame[$Unbox(read($Heap, x#0, _module.Node.L)): ref, _module.Node.R];
    assert {:id "id411"} x#0 != null;
    assume true;
    $rhs#1 := $Unbox(read($Heap, x#0, _module.Node.R)): ref;
    $Heap := update($Heap, 
      $Unbox(read($Heap, x#0, _module.Node.L)): ref, 
      _module.Node.R, 
      $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(127,11)
    assume true;
    assert {:id "id414"} $_ModifiesFrame[this, _module.DoublyLinkedList.Nodes];
    assert {:id "id415"} 0 <= k#0
       && k#0
         <= Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
    assert {:id "id416"} 0 <= k#0 + 1
       && k#0 + 1
         <= Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
    assume true;
    $rhs#2 := Seq#Append(Seq#Take($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, k#0), 
      Seq#Drop($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, k#0 + 1));
    $Heap := update($Heap, this, _module.DoublyLinkedList.Nodes, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(128,5)
    assume true;
    assert {:id "id419"} Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0;
}



procedure {:verboseName "DoublyLinkedList.PutBack (well-formedness)"} CheckWellFormed$$_module.DoublyLinkedList.PutBack(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoublyLinkedList())
         && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap), 
    x#0: ref
       where $Is(x#0, Tclass._module.Node()) && $IsAlloc(x#0, Tclass._module.Node(), $Heap), 
    k#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DoublyLinkedList.PutBack (well-formedness)"} CheckWellFormed$$_module.DoublyLinkedList.PutBack(this: ref, x#0: ref, k#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: PutBack, CheckWellFormed$$_module.DoublyLinkedList.PutBack
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || (exists $i: int :: 
            0 <= $i
               && $i < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
               && Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, $i)
                 == $Box($o))
           || $o == x#0);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.DoublyLinkedList?(), $Heap);
    assume _module.DoublyLinkedList.Valid#canCall($Heap, this);
    assume {:id "id420"} _module.DoublyLinkedList.Valid($Heap, this);
    if (LitInt(1) <= k#0)
    {
    }

    assume {:id "id421"} LitInt(1) <= k#0
       && k#0 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
    assert {:id "id422"} x#0 != null;
    assert {:id "id423"} 0 <= k#0 - 1
       && k#0 - 1
         < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
    assume {:id "id424"} $Unbox(read($Heap, x#0, _module.Node.L)): ref
       == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, k#0 - 1)): ref;
    assert {:id "id425"} x#0 != null;
    assert {:id "id426"} 0 <= k#0
       && k#0 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
    assume {:id "id427"} $Unbox(read($Heap, x#0, _module.Node.R)): ref
       == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, k#0)): ref;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || 
          $o == this
           || (exists $i: int :: 
            0 <= $i
               && $i
                 < Seq#Length($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq)
               && Seq#Index($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, $i)
                 == $Box($o))
           || $o == x#0);
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.DoublyLinkedList?(), $Heap);
    assume _module.DoublyLinkedList.Valid#canCall($Heap, this);
    assume {:id "id428"} _module.DoublyLinkedList.Valid($Heap, this);
    assert {:id "id429"} $IsAlloc(this, Tclass._module.DoublyLinkedList(), old($Heap));
    assert {:id "id430"} 0 <= k#0
       && k#0
         <= Seq#Length($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq);
    assert {:id "id431"} $IsAlloc(this, Tclass._module.DoublyLinkedList(), old($Heap));
    assert {:id "id432"} 0 <= k#0
       && k#0
         <= Seq#Length($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq);
    assume {:id "id433"} Seq#Equal($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
      Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, k#0), 
          Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
        Seq#Drop($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, k#0)));
}



procedure {:verboseName "DoublyLinkedList.PutBack (call)"} Call$$_module.DoublyLinkedList.PutBack(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoublyLinkedList())
         && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap), 
    x#0: ref
       where $Is(x#0, Tclass._module.Node()) && $IsAlloc(x#0, Tclass._module.Node(), $Heap), 
    k#0: int);
  // user-defined preconditions
  requires {:id "id434"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null);
  requires {:id "id435"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#0: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#0)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#0
               && i#0 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#0)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#0 - 1)): ref));
  requires {:id "id436"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#1: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#1)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#1
               && i#1
                 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#1)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#1 + 1)): ref));
  requires {:id "id437"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null);
  requires {:id "id438"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (forall i#2: int, j#0: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#0)): ref, $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#2)): ref } 
        LitInt(0) <= i#2
             && i#2 < j#0
             && j#0 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#2)): ref
             != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#0)): ref);
  requires {:id "id439"} LitInt(1) <= k#0;
  requires {:id "id440"} k#0 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
  requires {:id "id441"} $Unbox(read($Heap, x#0, _module.Node.L)): ref
     == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, k#0 - 1)): ref;
  requires {:id "id442"} $Unbox(read($Heap, x#0, _module.Node.R)): ref
     == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, k#0)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.DoublyLinkedList.Valid#canCall($Heap, this);
  free ensures {:id "id443"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     && 
    _module.DoublyLinkedList.Valid($Heap, this)
     && 
    (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
       ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null
         && (forall i#3: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#3)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#3
               && i#3 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#3)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#3 - 1)): ref)
         && (forall i#4: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#4)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#4
               && i#4
                 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#4)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#4 + 1)): ref)
         && $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null)
     && (forall i#5: int, j#1: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#1)): ref, $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref } 
      LitInt(0) <= i#5
           && i#5 < j#1
           && j#1 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
         ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#5)): ref
           != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#1)): ref);
  free ensures true;
  ensures {:id "id444"} Seq#Equal($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
    Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, k#0), 
        Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
      Seq#Drop($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, k#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || (exists $i: int :: 
          0 <= $i
             && $i
               < Seq#Length($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq)
             && Seq#Index($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, $i)
               == $Box($o))
         || $o == x#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DoublyLinkedList.PutBack (correctness)"} Impl$$_module.DoublyLinkedList.PutBack(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoublyLinkedList())
         && $IsAlloc(this, Tclass._module.DoublyLinkedList(), $Heap), 
    x#0: ref
       where $Is(x#0, Tclass._module.Node()) && $IsAlloc(x#0, Tclass._module.Node(), $Heap), 
    k#0: int)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id445"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     && 
    _module.DoublyLinkedList.Valid($Heap, this)
     && 
    (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
       ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null
         && (forall i#6: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#6
               && i#6 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#6 - 1)): ref)
         && (forall i#7: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#7)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#7
               && i#7
                 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#7)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#7 + 1)): ref)
         && $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null)
     && (forall i#8: int, j#2: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#2)): ref, $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#8)): ref } 
      LitInt(0) <= i#8
           && i#8 < j#2
           && j#2 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
         ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#8)): ref
           != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#2)): ref);
  requires {:id "id446"} LitInt(1) <= k#0;
  requires {:id "id447"} k#0 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
  requires {:id "id448"} $Unbox(read($Heap, x#0, _module.Node.L)): ref
     == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, k#0 - 1)): ref;
  requires {:id "id449"} $Unbox(read($Heap, x#0, _module.Node.R)): ref
     == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, k#0)): ref;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.DoublyLinkedList.Valid#canCall($Heap, this);
  ensures {:id "id450"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, LitInt(0))): ref, 
              _module.Node.L)): ref
           == null);
  ensures {:id "id451"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#9: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#9)): ref, 
                _module.Node.L)): ref } 
          LitInt(1) <= i#9
               && i#9 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#9)): ref, 
                  _module.Node.L)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#9 - 1)): ref));
  ensures {:id "id452"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> (forall i#10: int :: 
          { $Unbox(read($Heap, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#10)): ref, 
                _module.Node.R)): ref } 
          LitInt(0) <= i#10
               && i#10
                 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1
             ==> $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#10)): ref, 
                  _module.Node.R)): ref
               == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#10 + 1)): ref));
  ensures {:id "id453"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) > 0
         ==> $Unbox(read($Heap, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
                  Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq) - 1)): ref, 
              _module.Node.R)): ref
           == null);
  ensures {:id "id454"} _module.DoublyLinkedList.Valid#canCall($Heap, this)
     ==> _module.DoublyLinkedList.Valid($Heap, this)
       || (forall i#11: int, j#3: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#3)): ref, $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#11)): ref } 
        LitInt(0) <= i#11
             && i#11 < j#3
             && j#3 < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, i#11)): ref
             != $Unbox(Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, j#3)): ref);
  free ensures true;
  ensures {:id "id455"} Seq#Equal($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, 
    Seq#Append(Seq#Append(Seq#Take($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, k#0), 
        Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
      Seq#Drop($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, k#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || (exists $i: int :: 
          0 <= $i
             && $i
               < Seq#Length($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq)
             && Seq#Index($Unbox(read(old($Heap), this, _module.DoublyLinkedList.Nodes)): Seq, $i)
               == $Box($o))
         || $o == x#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DoublyLinkedList.PutBack (correctness)"} Impl$$_module.DoublyLinkedList.PutBack(this: ref, x#0: ref, k#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: ref;
  var $rhs#1: ref;
  var $rhs#2: Seq;

    // AddMethodImpl: PutBack, Impl$$_module.DoublyLinkedList.PutBack
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || (exists $i: int :: 
            0 <= $i
               && $i < Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq)
               && Seq#Index($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, $i)
                 == $Box($o))
           || $o == x#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(144,11)
    assert {:id "id456"} x#0 != null;
    assert {:id "id457"} $Unbox(read($Heap, x#0, _module.Node.R)): ref != null;
    assume true;
    assert {:id "id458"} $_ModifiesFrame[$Unbox(read($Heap, x#0, _module.Node.R)): ref, _module.Node.L];
    assume true;
    $rhs#0 := x#0;
    $Heap := update($Heap, 
      $Unbox(read($Heap, x#0, _module.Node.R)): ref, 
      _module.Node.L, 
      $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(145,11)
    assert {:id "id461"} x#0 != null;
    assert {:id "id462"} $Unbox(read($Heap, x#0, _module.Node.L)): ref != null;
    assume true;
    assert {:id "id463"} $_ModifiesFrame[$Unbox(read($Heap, x#0, _module.Node.L)): ref, _module.Node.R];
    assume true;
    $rhs#1 := x#0;
    $Heap := update($Heap, 
      $Unbox(read($Heap, x#0, _module.Node.L)): ref, 
      _module.Node.R, 
      $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem3.dfy(146,11)
    assume true;
    assert {:id "id466"} $_ModifiesFrame[this, _module.DoublyLinkedList.Nodes];
    assert {:id "id467"} 0 <= k#0
       && k#0
         <= Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
    assert {:id "id468"} 0 <= k#0
       && k#0
         <= Seq#Length($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq);
    assume true;
    $rhs#2 := Seq#Append(Seq#Append(Seq#Take($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, k#0), 
        Seq#Build(Seq#Empty(): Seq, $Box(x#0))), 
      Seq#Drop($Unbox(read($Heap, this, _module.DoublyLinkedList.Nodes)): Seq, k#0));
    $Heap := update($Heap, this, _module.DoublyLinkedList.Nodes, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
}



// $Is axiom for non-null type _module.DoublyLinkedList
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.DoublyLinkedList()) } 
    { $Is(c#0, Tclass._module.DoublyLinkedList?()) } 
  $Is(c#0, Tclass._module.DoublyLinkedList())
     <==> $Is(c#0, Tclass._module.DoublyLinkedList?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.DoublyLinkedList
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.DoublyLinkedList(), $h) } 
    { $IsAlloc(c#0, Tclass._module.DoublyLinkedList?(), $h) } 
  $IsAlloc(c#0, Tclass._module.DoublyLinkedList(), $h)
     <==> $IsAlloc(c#0, Tclass._module.DoublyLinkedList?(), $h));

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

const unique tytagFamily$DoublyLinkedList: TyTagFamily;

const unique tytagFamily$Node: TyTagFamily;

const unique field$Nodes: NameFamily;

const unique field$L: NameFamily;

const unique field$R: NameFamily;
