// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy

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

function Tclass._System.___hFunc5(Ty, Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc5: TyTag;

// Tclass._System.___hFunc5 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tag(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == Tagclass._System.___hFunc5
     && TagFamily(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == tytagFamily$_#Func5);

function Tclass._System.___hFunc5_0(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_0(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T0);

function Tclass._System.___hFunc5_1(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_1(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T1);

function Tclass._System.___hFunc5_2(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_2(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T2);

function Tclass._System.___hFunc5_3(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_3(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T3);

function Tclass._System.___hFunc5_4(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_4(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T4);

function Tclass._System.___hFunc5_5(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_5(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)));

function Handle5([Heap,Box,Box,Box,Box,Box]Box, 
    [Heap,Box,Box,Box,Box,Box]bool, 
    [Heap,Box,Box,Box,Box,Box]Set)
   : HandleType;

function Apply5(Ty, Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box, Box) : Box;

function Requires5(Ty, Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box, Box) : bool;

function Reads5(Ty, Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { Apply5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4) } 
  Apply5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4)
     == h[heap, bx0, bx1, bx2, bx3, bx4]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { Requires5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4) } 
  r[heap, bx0, bx1, bx2, bx3, bx4]
     ==> Requires5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx: Box :: 
  { Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4), 
      bx) } 
  Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4), 
      bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2, bx3, bx4], bx));

function {:inline} Requires5#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box)
   : bool
{
  true
}

function {:inline} Reads5#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box)
   : bool
{
  true
}

// frame axiom for Reads5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// frame axiom for Reads5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// frame axiom for Requires5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Requires5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Requires5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// frame axiom for Requires5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Requires5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Requires5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// frame axiom for Apply5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Apply5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Apply5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// frame axiom for Apply5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Apply5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Apply5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// empty-reads property for Reads5 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { Reads5(t0, t1, t2, t3, t4, t5, $OneHeap, f, bx0, bx1, bx2, bx3, bx4), $IsGoodHeap(heap) } 
    { Reads5(t0, t1, t2, t3, t4, t5, heap, f, bx0, bx1, bx2, bx3, bx4) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
     ==> (Set#Equal(Reads5(t0, t1, t2, t3, t4, t5, $OneHeap, f, bx0, bx1, bx2, bx3, bx4), 
        Set#Empty(): Set)
       <==> Set#Equal(Reads5(t0, t1, t2, t3, t4, t5, heap, f, bx0, bx1, bx2, bx3, bx4), 
        Set#Empty(): Set)));

// empty-reads property for Requires5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { Requires5(t0, t1, t2, t3, t4, t5, $OneHeap, f, bx0, bx1, bx2, bx3, bx4), $IsGoodHeap(heap) } 
    { Requires5(t0, t1, t2, t3, t4, t5, heap, f, bx0, bx1, bx2, bx3, bx4) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && Set#Equal(Reads5(t0, t1, t2, t3, t4, t5, $OneHeap, f, bx0, bx1, bx2, bx3, bx4), 
        Set#Empty(): Set)
     ==> Requires5(t0, t1, t2, t3, t4, t5, $OneHeap, f, bx0, bx1, bx2, bx3, bx4)
       == Requires5(t0, t1, t2, t3, t4, t5, heap, f, bx0, bx1, bx2, bx3, bx4));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, t5: Ty :: 
  { $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5)) } 
  $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box, bx3: Box, bx4: Box :: 
      { Apply5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && $IsBox(bx3, t3)
           && $IsBox(bx4, t4)
           && Requires5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4)
         ==> $IsBox(Apply5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4), t5)));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    u0: Ty, 
    u1: Ty, 
    u2: Ty, 
    u3: Ty, 
    u4: Ty, 
    u5: Ty :: 
  { $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5)), $Is(f, Tclass._System.___hFunc5(u0, u1, u2, u3, u4, u5)) } 
  $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
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
        { $IsBox(bx, u4) } { $IsBox(bx, t4) } 
        $IsBox(bx, u4) ==> $IsBox(bx, t4))
       && (forall bx: Box :: 
        { $IsBox(bx, t5) } { $IsBox(bx, u5) } 
        $IsBox(bx, t5) ==> $IsBox(bx, u5))
     ==> $Is(f, Tclass._System.___hFunc5(u0, u1, u2, u3, u4, u5)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, t5: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box, bx4: Box :: 
        { Apply5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4) } 
          { Reads5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4) } 
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
             && 
            $IsBox(bx4, t4)
             && $IsAllocBox(bx4, t4, h)
             && Requires5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4), $Box(r)) } 
            r != null
                 && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, t5: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5), h) } 
  $IsGoodHeap(h)
       && $IsAlloc(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box, bx4: Box :: 
      { Apply5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && $IsAllocBox(bx3, t3, h)
           && $IsAllocBox(bx4, t4, h)
           && Requires5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4)
         ==> $IsAllocBox(Apply5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4), t5, h)));

function Tclass._System.___hPartialFunc5(Ty, Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc5: TyTag;

// Tclass._System.___hPartialFunc5 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tag(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == Tagclass._System.___hPartialFunc5
     && TagFamily(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == tytagFamily$_#PartialFunc5);

function Tclass._System.___hPartialFunc5_0(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_0(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc5_1(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_1(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc5_2(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_2(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc5_3(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_3(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T3);

function Tclass._System.___hPartialFunc5_4(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_4(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T4);

function Tclass._System.___hPartialFunc5_5(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_5(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)));

// $Is axiom for subset type _System._#PartialFunc5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box, x4#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
             && $IsBox(x4#0, #$T4)
           ==> Set#Equal(Reads5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0, x4#0), 
            Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc5
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$R: Ty, 
    f#0: HandleType, 
    $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h));

function Tclass._System.___hTotalFunc5(Ty, Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc5: TyTag;

// Tclass._System.___hTotalFunc5 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tag(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == Tagclass._System.___hTotalFunc5
     && TagFamily(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == tytagFamily$_#TotalFunc5);

function Tclass._System.___hTotalFunc5_0(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_0(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc5_1(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_1(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc5_2(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_2(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc5_3(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_3(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T3);

function Tclass._System.___hTotalFunc5_4(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_4(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T4);

function Tclass._System.___hTotalFunc5_5(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_5(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)));

// $Is axiom for subset type _System._#TotalFunc5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box, x4#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
             && $IsBox(x4#0, #$T4)
           ==> Requires5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0, x4#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc5
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$R: Ty, 
    f#0: HandleType, 
    $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h));

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

const reveal__module._default.Divides: bool;

const unique class._module.__default: ClassName;

procedure {:verboseName "SequentialGcd (well-formedness)"} CheckWellFormed$$_module.__default.SequentialGcd(A#0: int, B#0: int) returns (gcd#0: int);
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SequentialGcd (well-formedness)"} CheckWellFormed$$_module.__default.SequentialGcd(A#0: int, B#0: int) returns (gcd#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: int;
  var ##b#0: int;


    // AddMethodImpl: SequentialGcd, CheckWellFormed$$_module.__default.SequentialGcd
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id0"} A#0 > 0;
    assume {:id "id1"} B#0 > 0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc gcd#0;
    ##a#0 := A#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := B#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assert {:id "id2"} {:subsumption 0} ##a#0 > 0;
    assert {:id "id3"} {:subsumption 0} ##b#0 > 0;
    assume ##a#0 > 0 && ##b#0 > 0;
    assume _module.__default.Gcd#canCall(A#0, B#0);
    assume {:id "id4"} gcd#0 == _module.__default.Gcd(A#0, B#0);
}



procedure {:verboseName "SequentialGcd (call)"} Call$$_module.__default.SequentialGcd(A#0: int, B#0: int) returns (gcd#0: int);
  // user-defined preconditions
  requires {:id "id5"} A#0 > 0;
  requires {:id "id6"} B#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Gcd#canCall(A#0, B#0);
  ensures {:id "id7"} gcd#0 == _module.__default.Gcd(A#0, B#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SequentialGcd (correctness)"} Impl$$_module.__default.SequentialGcd(A#0: int, B#0: int) returns (gcd#0: int, $_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id8"} A#0 > 0;
  requires {:id "id9"} B#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Gcd#canCall(A#0, B#0);
  ensures {:id "id10"} gcd#0 == _module.__default.Gcd(A#0, B#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SequentialGcd (correctness)"} Impl$$_module.__default.SequentialGcd(A#0: int, B#0: int) returns (gcd#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var b#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var ##a#1: int;
  var ##b#1: int;
  var ##a#2: int;
  var ##b#2: int;
  var $decr$loop#00: int;
  var ##a#0_0_0_0: int;
  var ##b#0_0_0_0: int;
  var a##0_0_0_0: int;
  var b##0_0_0_0: int;
  var ##a#0_0_0_1: int;
  var ##b#0_0_0_1: int;
  var ##a#0_0_1_0: int;
  var ##b#0_0_1_0: int;
  var a##0_0_1_0: int;
  var b##0_0_1_0: int;
  var ##a#0_0_1_1: int;
  var ##b#0_0_1_1: int;
  var ##a#0_0_2_0: int;
  var ##b#0_0_2_0: int;
  var a##0_0_2_0: int;
  var b##0_0_2_0: int;
  var ##a#0_0_2_1: int;
  var ##b#0_0_2_1: int;
  var ##a#0_0_0: int;
  var ##b#0_0_0: int;
  var a##1_0: int;
  var b##1_0: int;
  var a##0: int;

    // AddMethodImpl: SequentialGcd, Impl$$_module.__default.SequentialGcd
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(12,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := A#0;
    assume true;
    $rhs#1 := B#0;
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- alternative loop statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(13,3)
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := a#0 + b#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id16"} $w$loop#0 ==> 0 < a#0;
      invariant {:id "id17"} $w$loop#0 ==> 0 < b#0;
      free invariant $w$loop#0
         ==> _module.__default.Gcd#canCall(A#0, B#0)
           && _module.__default.Gcd#canCall(a#0, b#0);
      invariant {:id "id23"} $w$loop#0 ==> _module.__default.Gcd(A#0, B#0) == _module.__default.Gcd(a#0, b#0);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant a#0 + b#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (0 < a#0)
            {
            }

            assume true;
            assume {:id "id15"} 0 < a#0 && 0 < b#0;
            ##a#1 := A#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, TInt, $Heap);
            ##b#1 := B#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1, TInt, $Heap);
            assert {:id "id18"} {:subsumption 0} ##a#1 > 0;
            assert {:id "id19"} {:subsumption 0} ##b#1 > 0;
            assume _module.__default.Gcd#canCall(A#0, B#0);
            ##a#2 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#2, TInt, $Heap);
            ##b#2 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#2, TInt, $Heap);
            assert {:id "id20"} {:subsumption 0} ##a#2 > 0;
            assert {:id "id21"} {:subsumption 0} ##b#2 > 0;
            assume _module.__default.Gcd#canCall(a#0, b#0);
            assume _module.__default.Gcd#canCall(A#0, B#0)
               && _module.__default.Gcd#canCall(a#0, b#0);
            assume {:id "id22"} _module.__default.Gcd(A#0, B#0) == _module.__default.Gcd(a#0, b#0);
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        $decr$loop#00 := a#0 + b#0;
        if (*)
        {
            assume true;
            assume {:id "id47"} a#0 > b#0;
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(19,18)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##1_0 := a#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##1_0 := b#0;
            call {:id "id48"} Call$$_module.__default.GcdDecrease(a##1_0, b##1_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(20,9)
            assume true;
            assume true;
            a#0 := a#0 - b#0;
            pop;
        }
        else if (*)
        {
            assume true;
            assume {:id "id24"} b#0 > a#0;
            push;
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(22,7)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(22,7)
                ##a#0_0_0 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0_0_0, TInt, $Heap);
                ##b#0_0_0 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#0_0_0, TInt, $Heap);
                assert {:id "id43"} {:subsumption 0} ##a#0_0_0 > 0;
                assert {:id "id44"} {:subsumption 0} ##b#0_0_0 > 0;
                assume _module.__default.Gcd#canCall(a#0, b#0);
                assume _module.__default.Gcd#canCall(a#0, b#0);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(22,7)
                ##a#0_0_2_0 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0_0_2_0, TInt, $Heap);
                ##b#0_0_2_0 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#0_0_2_0, TInt, $Heap);
                assume {:id "id37"} {:subsumption 0} ##a#0_0_2_0 > 0;
                assume {:id "id38"} {:subsumption 0} ##b#0_0_2_0 > 0;
                assume _module.__default.Gcd#canCall(a#0, b#0);
                assume _module.__default.Gcd#canCall(a#0, b#0);
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(22,7)
                push;
                push;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(24,19)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                a##0_0_2_0 := a#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                b##0_0_2_0 := b#0;
                call {:id "id39"} Call$$_module.__default.Symmetry(a##0_0_2_0, b##0_0_2_0);
                // TrCallStmt: After ProcessCallStmt
                pop;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(22,7)
                ##a#0_0_2_1 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0_0_2_1, TInt, $Heap);
                ##b#0_0_2_1 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#0_0_2_1, TInt, $Heap);
                assert {:id "id40"} {:subsumption 0} ##a#0_0_2_1 > 0;
                assert {:id "id41"} {:subsumption 0} ##b#0_0_2_1 > 0;
                assume _module.__default.Gcd#canCall(b#0, a#0);
                assume _module.__default.Gcd#canCall(b#0, a#0);
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(22,7)
                assert {:id "id42"} {:subsumption 0} _module.__default.Gcd(a#0, b#0) == _module.__default.Gcd(b#0, a#0);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(22,7)
                ##a#0_0_1_0 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0_0_1_0, TInt, $Heap);
                ##b#0_0_1_0 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#0_0_1_0, TInt, $Heap);
                assume {:id "id31"} {:subsumption 0} ##a#0_0_1_0 > 0;
                assume {:id "id32"} {:subsumption 0} ##b#0_0_1_0 > 0;
                assume _module.__default.Gcd#canCall(b#0, a#0);
                assume _module.__default.Gcd#canCall(b#0, a#0);
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(22,7)
                push;
                push;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(26,22)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                a##0_0_1_0 := b#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                b##0_0_1_0 := a#0;
                call {:id "id33"} Call$$_module.__default.GcdDecrease(a##0_0_1_0, b##0_0_1_0);
                // TrCallStmt: After ProcessCallStmt
                pop;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(22,7)
                ##a#0_0_1_1 := b#0 - a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0_0_1_1, TInt, $Heap);
                ##b#0_0_1_1 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#0_0_1_1, TInt, $Heap);
                assert {:id "id34"} {:subsumption 0} ##a#0_0_1_1 > 0;
                assert {:id "id35"} {:subsumption 0} ##b#0_0_1_1 > 0;
                assume _module.__default.Gcd#canCall(b#0 - a#0, a#0);
                assume _module.__default.Gcd#canCall(b#0 - a#0, a#0);
                // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(22,7)
                assert {:id "id36"} {:subsumption 0} _module.__default.Gcd(b#0, a#0) == _module.__default.Gcd(b#0 - a#0, a#0);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(22,7)
                ##a#0_0_0_0 := b#0 - a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0_0_0_0, TInt, $Heap);
                ##b#0_0_0_0 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#0_0_0_0, TInt, $Heap);
                assume {:id "id25"} {:subsumption 0} ##a#0_0_0_0 > 0;
                assume {:id "id26"} {:subsumption 0} ##b#0_0_0_0 > 0;
                assume _module.__default.Gcd#canCall(b#0 - a#0, a#0);
                assume _module.__default.Gcd#canCall(b#0 - a#0, a#0);
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(22,7)
                push;
                push;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(28,19)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                a##0_0_0_0 := b#0 - a#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                b##0_0_0_0 := a#0;
                call {:id "id27"} Call$$_module.__default.Symmetry(a##0_0_0_0, b##0_0_0_0);
                // TrCallStmt: After ProcessCallStmt
                pop;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(22,7)
                ##a#0_0_0_1 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0_0_0_1, TInt, $Heap);
                ##b#0_0_0_1 := b#0 - a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#0_0_0_1, TInt, $Heap);
                assert {:id "id28"} {:subsumption 0} ##a#0_0_0_1 > 0;
                assert {:id "id29"} {:subsumption 0} ##b#0_0_0_1 > 0;
                assume _module.__default.Gcd#canCall(a#0, b#0 - a#0);
                assume _module.__default.Gcd#canCall(a#0, b#0 - a#0);
                // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(22,7)
                assert {:id "id30"} {:subsumption 0} _module.__default.Gcd(b#0 - a#0, a#0) == _module.__default.Gcd(a#0, b#0 - a#0);
                assume false;
            }

            assume {:id "id45"} _module.__default.Gcd(a#0, b#0) == _module.__default.Gcd(a#0, b#0 - a#0);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(31,9)
            assume true;
            assume true;
            b#0 := b#0 - a#0;
            pop;
        }
        else
        {
            assume true;
            assume true;
            assume b#0 >= a#0 && a#0 >= b#0;
            break;
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(13,3)
        assert {:id "id50"} 0 <= $decr$loop#00 || a#0 + b#0 == $decr$loop#00;
        assert {:id "id51"} a#0 + b#0 < $decr$loop#00;
        assume 0 < a#0
           ==> 
          0 < b#0
           ==> _module.__default.Gcd#canCall(A#0, B#0)
             && _module.__default.Gcd#canCall(a#0, b#0);
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(33,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    call {:id "id52"} Call$$_module.__default.GcdEqual(a##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(34,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(34,3)
    assume true;
    assume true;
    gcd#0 := a#0;
    return;
}



procedure {:verboseName "ParallelGcd_ReadAB_WithoutTermination (well-formedness)"} CheckWellFormed$$_module.__default.ParallelGcd__ReadAB__WithoutTermination(A#0: int, B#0: int) returns (gcd#0: int);
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ParallelGcd_ReadAB_WithoutTermination (well-formedness)"} CheckWellFormed$$_module.__default.ParallelGcd__ReadAB__WithoutTermination(A#0: int, B#0: int) returns (gcd#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: int;
  var ##b#0: int;


    // AddMethodImpl: ParallelGcd_ReadAB_WithoutTermination, CheckWellFormed$$_module.__default.ParallelGcd__ReadAB__WithoutTermination
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id54"} A#0 > 0;
    assume {:id "id55"} B#0 > 0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc gcd#0;
    ##a#0 := A#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := B#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assert {:id "id56"} {:subsumption 0} ##a#0 > 0;
    assert {:id "id57"} {:subsumption 0} ##b#0 > 0;
    assume ##a#0 > 0 && ##b#0 > 0;
    assume _module.__default.Gcd#canCall(A#0, B#0);
    assume {:id "id58"} gcd#0 == _module.__default.Gcd(A#0, B#0);
}



procedure {:verboseName "ParallelGcd_ReadAB_WithoutTermination (call)"} Call$$_module.__default.ParallelGcd__ReadAB__WithoutTermination(A#0: int, B#0: int) returns (gcd#0: int);
  // user-defined preconditions
  requires {:id "id59"} A#0 > 0;
  requires {:id "id60"} B#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Gcd#canCall(A#0, B#0);
  ensures {:id "id61"} gcd#0 == _module.__default.Gcd(A#0, B#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ParallelGcd_ReadAB_WithoutTermination (correctness)"} Impl$$_module.__default.ParallelGcd__ReadAB__WithoutTermination(A#0: int, B#0: int) returns (gcd#0: int, $_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id62"} A#0 > 0;
  requires {:id "id63"} B#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Gcd#canCall(A#0, B#0);
  ensures {:id "id64"} gcd#0 == _module.__default.Gcd(A#0, B#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ParallelGcd_ReadAB_WithoutTermination (correctness)"} Impl$$_module.__default.ParallelGcd__ReadAB__WithoutTermination(A#0: int, B#0: int) returns (gcd#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var b#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var pc0#0: int;
  var pc1#0: int;
  var $rhs#2: int;
  var $rhs#3: int;
  var a0#0: int;
  var b0#0: int;
  var a1#0: int;
  var b1#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var ##a#1: int;
  var ##b#1: int;
  var ##a#2: int;
  var ##b#2: int;
  var a##0_2_0: int;
  var b##0_2_0: int;
  var a##0_2_1: int;
  var b##0_2_1: int;
  var a##0_2_2: int;
  var b##0_2_2: int;
  var $rhs#0_2_0: int;
  var $rhs#0_2_1: int;
  var $rhs#0_3_0: int;
  var $rhs#0_3_1: int;
  var $rhs#0_3_2: int;
  var a##0_6_0: int;
  var b##0_6_0: int;
  var $rhs#0_6_0: int;
  var $rhs#0_6_1: int;
  var $rhs#0_7_0: int;
  var $rhs#0_7_1: int;
  var $rhs#0_7_2: int;
  var a##0: int;

    // AddMethodImpl: ParallelGcd_ReadAB_WithoutTermination, Impl$$_module.__default.ParallelGcd__ReadAB__WithoutTermination
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(42,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := A#0;
    assume true;
    $rhs#1 := B#0;
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(43,16)
    assume true;
    assume true;
    assume true;
    $rhs#2 := LitInt(0);
    assume true;
    $rhs#3 := LitInt(0);
    pc0#0 := $rhs#2;
    pc1#0 := $rhs#3;
    havoc a0#0, b0#0, a1#0, b1#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(45,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id74"} $w$loop#0 ==> 0 < a#0;
      invariant {:id "id75"} $w$loop#0 ==> 0 < b#0;
      free invariant $w$loop#0
         ==> _module.__default.Gcd#canCall(A#0, B#0)
           && _module.__default.Gcd#canCall(a#0, b#0);
      invariant {:id "id81"} $w$loop#0 ==> _module.__default.Gcd(A#0, B#0) == _module.__default.Gcd(a#0, b#0);
      free invariant true;
      invariant {:id "id83"} $w$loop#0 ==> LitInt(0) <= pc0#0;
      invariant {:id "id84"} $w$loop#0 ==> pc0#0 < 3;
      invariant {:id "id85"} $w$loop#0 ==> LitInt(0) <= pc1#0;
      invariant {:id "id86"} $w$loop#0 ==> pc1#0 < 3;
      free invariant true;
      invariant {:id "id88"} $w$loop#0 ==> pc0#0 == LitInt(1) && b0#0 <= a0#0 ==> a0#0 == a#0;
      invariant {:id "id89"} $w$loop#0 ==> pc0#0 == LitInt(1) && b0#0 <= a0#0 ==> b0#0 == b#0;
      free invariant true;
      invariant {:id "id91"} $w$loop#0 ==> pc1#0 == LitInt(1) && a1#0 <= b1#0 ==> a1#0 == a#0;
      invariant {:id "id92"} $w$loop#0 ==> pc1#0 == LitInt(1) && a1#0 <= b1#0 ==> b1#0 == b#0;
      free invariant true;
      invariant {:id "id94"} $w$loop#0 ==> pc0#0 == LitInt(2) ==> a#0 == b#0;
      invariant {:id "id95"} $w$loop#0 ==> pc1#0 == LitInt(2) ==> a#0 == b#0;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
    {
        if (!$w$loop#0)
        {
            if (0 < a#0)
            {
            }

            assume true;
            assume {:id "id73"} 0 < a#0 && 0 < b#0;
            ##a#1 := A#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, TInt, $Heap);
            ##b#1 := B#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1, TInt, $Heap);
            assert {:id "id76"} {:subsumption 0} ##a#1 > 0;
            assert {:id "id77"} {:subsumption 0} ##b#1 > 0;
            assume _module.__default.Gcd#canCall(A#0, B#0);
            ##a#2 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#2, TInt, $Heap);
            ##b#2 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#2, TInt, $Heap);
            assert {:id "id78"} {:subsumption 0} ##a#2 > 0;
            assert {:id "id79"} {:subsumption 0} ##b#2 > 0;
            assume _module.__default.Gcd#canCall(a#0, b#0);
            assume _module.__default.Gcd#canCall(A#0, B#0)
               && _module.__default.Gcd#canCall(a#0, b#0);
            assume {:id "id80"} _module.__default.Gcd(A#0, B#0) == _module.__default.Gcd(a#0, b#0);
            if (LitInt(0) <= pc0#0)
            {
            }

            if (LitInt(0) <= pc0#0 && pc0#0 < 3)
            {
                if (LitInt(0) <= pc1#0)
                {
                }
            }

            assume true;
            assume {:id "id82"} LitInt(0) <= pc0#0 && pc0#0 < 3 && LitInt(0) <= pc1#0 && pc1#0 < 3;
            if (pc0#0 == LitInt(1))
            {
            }

            if (pc0#0 == LitInt(1) && b0#0 <= a0#0)
            {
                if (a0#0 == a#0)
                {
                }
            }

            assume true;
            assume {:id "id87"} pc0#0 == LitInt(1) && b0#0 <= a0#0 ==> a0#0 == a#0 && b0#0 == b#0;
            if (pc1#0 == LitInt(1))
            {
            }

            if (pc1#0 == LitInt(1) && a1#0 <= b1#0)
            {
                if (a1#0 == a#0)
                {
                }
            }

            assume true;
            assume {:id "id90"} pc1#0 == LitInt(1) && a1#0 <= b1#0 ==> a1#0 == a#0 && b1#0 == b#0;
            if (pc0#0 == LitInt(2))
            {
            }

            if (pc0#0 == LitInt(2) ==> a#0 == b#0)
            {
                if (pc1#0 == LitInt(2))
                {
                }
            }

            assume true;
            assume {:id "id93"} (pc0#0 == LitInt(2) ==> a#0 == b#0) && (pc1#0 == LitInt(2) ==> a#0 == b#0);
            assume true;
            assume false;
        }

        if (pc0#0 == LitInt(2))
        {
        }

        assume true;
        if (pc0#0 == LitInt(2) && pc1#0 == LitInt(2))
        {
            break;
        }

        push;
        // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(54,5)
        if (*)
        {
            assume true;
            assume {:id "id126"} pc0#0 == LitInt(0);
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(55,49)
            assume true;
            assume true;
            assume true;
            assume true;
            $rhs#0_7_0 := a#0;
            assume true;
            $rhs#0_7_1 := b#0;
            assume true;
            $rhs#0_7_2 := LitInt(1);
            a0#0 := $rhs#0_7_0;
            b0#0 := $rhs#0_7_1;
            pc0#0 := $rhs#0_7_2;
            pop;
        }
        else if (*)
        {
            if (pc0#0 == LitInt(1))
            {
            }

            assume true;
            assume {:id "id120"} pc0#0 == LitInt(1) && b0#0 < a0#0;
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(56,48)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_6_0 := a#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##0_6_0 := b#0;
            call {:id "id121"} Call$$_module.__default.GcdDecrease(a##0_6_0, b##0_6_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(57,44)
            assume true;
            assume true;
            assume true;
            $rhs#0_6_0 := a0#0 - b0#0;
            assume true;
            $rhs#0_6_1 := LitInt(0);
            a#0 := $rhs#0_6_0;
            pc0#0 := $rhs#0_6_1;
            pop;
        }
        else if (*)
        {
            if (pc0#0 == LitInt(1))
            {
            }

            assume true;
            assume {:id "id118"} pc0#0 == LitInt(1) && b0#0 > a0#0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(58,40)
            assume true;
            assume true;
            pc0#0 := LitInt(0);
            pop;
        }
        else if (*)
        {
            if (pc0#0 == LitInt(1))
            {
            }

            assume true;
            assume {:id "id116"} pc0#0 == LitInt(1) && b0#0 == a0#0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(59,40)
            assume true;
            assume true;
            pc0#0 := LitInt(2);
            pop;
        }
        else if (*)
        {
            assume true;
            assume {:id "id109"} pc1#0 == LitInt(0);
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(60,48)
            assume true;
            assume true;
            assume true;
            assume true;
            $rhs#0_3_0 := a#0;
            assume true;
            $rhs#0_3_1 := b#0;
            assume true;
            $rhs#0_3_2 := LitInt(1);
            a1#0 := $rhs#0_3_0;
            b1#0 := $rhs#0_3_1;
            pc1#0 := $rhs#0_3_2;
            pop;
        }
        else if (*)
        {
            if (pc1#0 == LitInt(1))
            {
            }

            assume true;
            assume {:id "id101"} pc1#0 == LitInt(1) && a1#0 < b1#0;
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(61,44)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_2_0 := a#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##0_2_0 := b#0;
            call {:id "id102"} Call$$_module.__default.Symmetry(a##0_2_0, b##0_2_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(61,63)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_2_1 := b#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##0_2_1 := a#0;
            call {:id "id103"} Call$$_module.__default.GcdDecrease(a##0_2_1, b##0_2_1);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(61,79)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_2_2 := b#0 - a#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##0_2_2 := a#0;
            call {:id "id104"} Call$$_module.__default.Symmetry(a##0_2_2, b##0_2_2);
            // TrCallStmt: After ProcessCallStmt
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(62,43)
            assume true;
            assume true;
            assume true;
            $rhs#0_2_0 := b1#0 - a1#0;
            assume true;
            $rhs#0_2_1 := LitInt(0);
            b#0 := $rhs#0_2_0;
            pc1#0 := $rhs#0_2_1;
            pop;
        }
        else if (*)
        {
            if (pc1#0 == LitInt(1))
            {
            }

            assume true;
            assume {:id "id99"} pc1#0 == LitInt(1) && a1#0 > b1#0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(63,40)
            assume true;
            assume true;
            pc1#0 := LitInt(0);
            pop;
        }
        else if (*)
        {
            if (pc1#0 == LitInt(1))
            {
            }

            assume true;
            assume {:id "id97"} pc1#0 == LitInt(1) && a1#0 == b1#0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(64,40)
            assume true;
            assume true;
            pc1#0 := LitInt(2);
            pop;
        }
        else
        {
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume pc0#0 != LitInt(0)
               && !
              (pc0#0 == LitInt(1)
               && b0#0 < a0#0)
               && !
              (pc0#0 == LitInt(1)
               && b0#0 > a0#0)
               && !
              (pc0#0 == LitInt(1)
               && b0#0 == a0#0)
               && pc1#0 != LitInt(0)
               && !
              (pc1#0 == LitInt(1)
               && a1#0 < b1#0)
               && !
              (pc1#0 == LitInt(1)
               && a1#0 > b1#0)
               && !
              (pc1#0 == LitInt(1)
               && a1#0 == b1#0);
            assert {:id "id96"} false;
        }

        pop;
        assume 0 < a#0
           ==> 
          0 < b#0
           ==> _module.__default.Gcd#canCall(A#0, B#0)
             && _module.__default.Gcd#canCall(a#0, b#0);
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(67,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    call {:id "id133"} Call$$_module.__default.GcdEqual(a##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(68,7)
    assume true;
    assume true;
    gcd#0 := a#0;
}



procedure {:verboseName "ParallelGcd_WithoutTermination (well-formedness)"} CheckWellFormed$$_module.__default.ParallelGcd__WithoutTermination(A#0: int, B#0: int) returns (gcd#0: int);
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ParallelGcd_WithoutTermination (well-formedness)"} CheckWellFormed$$_module.__default.ParallelGcd__WithoutTermination(A#0: int, B#0: int) returns (gcd#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: int;
  var ##b#0: int;


    // AddMethodImpl: ParallelGcd_WithoutTermination, CheckWellFormed$$_module.__default.ParallelGcd__WithoutTermination
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id135"} A#0 > 0;
    assume {:id "id136"} B#0 > 0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc gcd#0;
    ##a#0 := A#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := B#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assert {:id "id137"} {:subsumption 0} ##a#0 > 0;
    assert {:id "id138"} {:subsumption 0} ##b#0 > 0;
    assume ##a#0 > 0 && ##b#0 > 0;
    assume _module.__default.Gcd#canCall(A#0, B#0);
    assume {:id "id139"} gcd#0 == _module.__default.Gcd(A#0, B#0);
}



procedure {:verboseName "ParallelGcd_WithoutTermination (call)"} Call$$_module.__default.ParallelGcd__WithoutTermination(A#0: int, B#0: int) returns (gcd#0: int);
  // user-defined preconditions
  requires {:id "id140"} A#0 > 0;
  requires {:id "id141"} B#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Gcd#canCall(A#0, B#0);
  ensures {:id "id142"} gcd#0 == _module.__default.Gcd(A#0, B#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ParallelGcd_WithoutTermination (correctness)"} Impl$$_module.__default.ParallelGcd__WithoutTermination(A#0: int, B#0: int) returns (gcd#0: int, $_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id143"} A#0 > 0;
  requires {:id "id144"} B#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Gcd#canCall(A#0, B#0);
  ensures {:id "id145"} gcd#0 == _module.__default.Gcd(A#0, B#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ParallelGcd_WithoutTermination (correctness)"} Impl$$_module.__default.ParallelGcd__WithoutTermination(A#0: int, B#0: int) returns (gcd#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var b#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var pc0#0: int;
  var pc1#0: int;
  var $rhs#2: int;
  var $rhs#3: int;
  var a0#0: int;
  var b0#0: int;
  var a1#0: int;
  var b1#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var ##a#1: int;
  var ##b#1: int;
  var ##a#2: int;
  var ##b#2: int;
  var a##0_2_0: int;
  var b##0_2_0: int;
  var a##0_2_1: int;
  var b##0_2_1: int;
  var a##0_2_2: int;
  var b##0_2_2: int;
  var $rhs#0_2_0: int;
  var $rhs#0_2_1: int;
  var $rhs#0_3_0: int;
  var $rhs#0_3_1: int;
  var $rhs#0_4_0: int;
  var $rhs#0_4_1: int;
  var a##0_7_0: int;
  var b##0_7_0: int;
  var $rhs#0_7_0: int;
  var $rhs#0_7_1: int;
  var $rhs#0_8_0: int;
  var $rhs#0_8_1: int;
  var $rhs#0_9_0: int;
  var $rhs#0_9_1: int;
  var a##0: int;

    // AddMethodImpl: ParallelGcd_WithoutTermination, Impl$$_module.__default.ParallelGcd__WithoutTermination
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(76,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := A#0;
    assume true;
    $rhs#1 := B#0;
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(77,16)
    assume true;
    assume true;
    assume true;
    $rhs#2 := LitInt(0);
    assume true;
    $rhs#3 := LitInt(0);
    pc0#0 := $rhs#2;
    pc1#0 := $rhs#3;
    havoc a0#0, b0#0, a1#0, b1#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(79,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id155"} $w$loop#0 ==> 0 < a#0;
      invariant {:id "id156"} $w$loop#0 ==> 0 < b#0;
      free invariant $w$loop#0
         ==> _module.__default.Gcd#canCall(A#0, B#0)
           && _module.__default.Gcd#canCall(a#0, b#0);
      invariant {:id "id162"} $w$loop#0 ==> _module.__default.Gcd(A#0, B#0) == _module.__default.Gcd(a#0, b#0);
      free invariant true;
      invariant {:id "id164"} $w$loop#0 ==> LitInt(0) <= pc0#0;
      invariant {:id "id165"} $w$loop#0 ==> pc0#0 < 4;
      invariant {:id "id166"} $w$loop#0 ==> LitInt(0) <= pc1#0;
      invariant {:id "id167"} $w$loop#0 ==> pc1#0 < 4;
      free invariant true;
      invariant {:id "id169"} $w$loop#0 ==> pc0#0 == LitInt(0) || a0#0 == a#0;
      invariant {:id "id170"} $w$loop#0 ==> pc1#0 == LitInt(0) || b1#0 == b#0;
      free invariant true;
      invariant {:id "id172"} $w$loop#0 ==> pc0#0 == LitInt(2) ==> b#0 <= b0#0;
      invariant {:id "id173"} $w$loop#0 ==> pc0#0 == LitInt(2) ==> b0#0 <= a0#0 ==> b0#0 == b#0;
      free invariant true;
      invariant {:id "id175"} $w$loop#0 ==> pc1#0 == LitInt(2) ==> a#0 <= a1#0;
      invariant {:id "id176"} $w$loop#0 ==> pc1#0 == LitInt(2) ==> a1#0 <= b1#0 ==> a1#0 == a#0;
      free invariant true;
      invariant {:id "id178"} $w$loop#0 ==> pc0#0 == LitInt(3) ==> a#0 == b#0;
      invariant {:id "id179"} $w$loop#0 ==> pc1#0 == LitInt(3) ==> a#0 == b#0;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
    {
        if (!$w$loop#0)
        {
            if (0 < a#0)
            {
            }

            assume true;
            assume {:id "id154"} 0 < a#0 && 0 < b#0;
            ##a#1 := A#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, TInt, $Heap);
            ##b#1 := B#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1, TInt, $Heap);
            assert {:id "id157"} {:subsumption 0} ##a#1 > 0;
            assert {:id "id158"} {:subsumption 0} ##b#1 > 0;
            assume _module.__default.Gcd#canCall(A#0, B#0);
            ##a#2 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#2, TInt, $Heap);
            ##b#2 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#2, TInt, $Heap);
            assert {:id "id159"} {:subsumption 0} ##a#2 > 0;
            assert {:id "id160"} {:subsumption 0} ##b#2 > 0;
            assume _module.__default.Gcd#canCall(a#0, b#0);
            assume _module.__default.Gcd#canCall(A#0, B#0)
               && _module.__default.Gcd#canCall(a#0, b#0);
            assume {:id "id161"} _module.__default.Gcd(A#0, B#0) == _module.__default.Gcd(a#0, b#0);
            if (LitInt(0) <= pc0#0)
            {
            }

            if (LitInt(0) <= pc0#0 && pc0#0 < 4)
            {
                if (LitInt(0) <= pc1#0)
                {
                }
            }

            assume true;
            assume {:id "id163"} LitInt(0) <= pc0#0 && pc0#0 < 4 && LitInt(0) <= pc1#0 && pc1#0 < 4;
            if (pc0#0 != LitInt(0))
            {
            }

            if (pc0#0 == LitInt(0) || a0#0 == a#0)
            {
                if (pc1#0 != LitInt(0))
                {
                }
            }

            assume true;
            assume {:id "id168"} (pc0#0 == LitInt(0) || a0#0 == a#0) && (pc1#0 == LitInt(0) || b1#0 == b#0);
            if (pc0#0 == LitInt(2))
            {
                if (b#0 <= b0#0)
                {
                    if (b0#0 <= a0#0)
                    {
                    }
                }
            }

            assume true;
            assume {:id "id171"} pc0#0 == LitInt(2) ==> b#0 <= b0#0 && (b0#0 <= a0#0 ==> b0#0 == b#0);
            if (pc1#0 == LitInt(2))
            {
                if (a#0 <= a1#0)
                {
                    if (a1#0 <= b1#0)
                    {
                    }
                }
            }

            assume true;
            assume {:id "id174"} pc1#0 == LitInt(2) ==> a#0 <= a1#0 && (a1#0 <= b1#0 ==> a1#0 == a#0);
            if (pc0#0 == LitInt(3))
            {
            }

            if (pc0#0 == LitInt(3) ==> a#0 == b#0)
            {
                if (pc1#0 == LitInt(3))
                {
                }
            }

            assume true;
            assume {:id "id177"} (pc0#0 == LitInt(3) ==> a#0 == b#0) && (pc1#0 == LitInt(3) ==> a#0 == b#0);
            assume true;
            assume false;
        }

        if (pc0#0 == LitInt(3))
        {
        }

        assume true;
        if (pc0#0 == LitInt(3) && pc1#0 == LitInt(3))
        {
            break;
        }

        push;
        // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(89,5)
        if (*)
        {
            assume true;
            assume {:id "id218"} pc0#0 == LitInt(0);
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(90,44)
            assume true;
            assume true;
            assume true;
            $rhs#0_9_0 := a#0;
            assume true;
            $rhs#0_9_1 := LitInt(1);
            a0#0 := $rhs#0_9_0;
            pc0#0 := $rhs#0_9_1;
            pop;
        }
        else if (*)
        {
            assume true;
            assume {:id "id213"} pc0#0 == LitInt(1);
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(91,44)
            assume true;
            assume true;
            assume true;
            $rhs#0_8_0 := b#0;
            assume true;
            $rhs#0_8_1 := LitInt(2);
            b0#0 := $rhs#0_8_0;
            pc0#0 := $rhs#0_8_1;
            pop;
        }
        else if (*)
        {
            if (pc0#0 == LitInt(2))
            {
            }

            assume true;
            assume {:id "id207"} pc0#0 == LitInt(2) && a0#0 > b0#0;
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(92,47)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_7_0 := a#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##0_7_0 := b#0;
            call {:id "id208"} Call$$_module.__default.GcdDecrease(a##0_7_0, b##0_7_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(93,43)
            assume true;
            assume true;
            assume true;
            $rhs#0_7_0 := a0#0 - b0#0;
            assume true;
            $rhs#0_7_1 := LitInt(0);
            a#0 := $rhs#0_7_0;
            pc0#0 := $rhs#0_7_1;
            pop;
        }
        else if (*)
        {
            if (pc0#0 == LitInt(2))
            {
            }

            assume true;
            assume {:id "id205"} pc0#0 == LitInt(2) && a0#0 < b0#0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(94,40)
            assume true;
            assume true;
            pc0#0 := LitInt(0);
            pop;
        }
        else if (*)
        {
            if (pc0#0 == LitInt(2))
            {
            }

            assume true;
            assume {:id "id203"} pc0#0 == LitInt(2) && a0#0 == b0#0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(95,40)
            assume true;
            assume true;
            pc0#0 := LitInt(3);
            pop;
        }
        else if (*)
        {
            assume true;
            assume {:id "id198"} pc1#0 == LitInt(0);
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(96,44)
            assume true;
            assume true;
            assume true;
            $rhs#0_4_0 := b#0;
            assume true;
            $rhs#0_4_1 := LitInt(1);
            b1#0 := $rhs#0_4_0;
            pc1#0 := $rhs#0_4_1;
            pop;
        }
        else if (*)
        {
            assume true;
            assume {:id "id193"} pc1#0 == LitInt(1);
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(97,44)
            assume true;
            assume true;
            assume true;
            $rhs#0_3_0 := a#0;
            assume true;
            $rhs#0_3_1 := LitInt(2);
            a1#0 := $rhs#0_3_0;
            pc1#0 := $rhs#0_3_1;
            pop;
        }
        else if (*)
        {
            if (pc1#0 == LitInt(2))
            {
            }

            assume true;
            assume {:id "id185"} pc1#0 == LitInt(2) && b1#0 > a1#0;
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(98,44)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_2_0 := a#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##0_2_0 := b#0;
            call {:id "id186"} Call$$_module.__default.Symmetry(a##0_2_0, b##0_2_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(98,63)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_2_1 := b#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##0_2_1 := a#0;
            call {:id "id187"} Call$$_module.__default.GcdDecrease(a##0_2_1, b##0_2_1);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(98,79)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_2_2 := b#0 - a#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##0_2_2 := a#0;
            call {:id "id188"} Call$$_module.__default.Symmetry(a##0_2_2, b##0_2_2);
            // TrCallStmt: After ProcessCallStmt
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(99,43)
            assume true;
            assume true;
            assume true;
            $rhs#0_2_0 := b1#0 - a1#0;
            assume true;
            $rhs#0_2_1 := LitInt(0);
            b#0 := $rhs#0_2_0;
            pc1#0 := $rhs#0_2_1;
            pop;
        }
        else if (*)
        {
            if (pc1#0 == LitInt(2))
            {
            }

            assume true;
            assume {:id "id183"} pc1#0 == LitInt(2) && b1#0 < a1#0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(100,40)
            assume true;
            assume true;
            pc1#0 := LitInt(0);
            pop;
        }
        else if (*)
        {
            if (pc1#0 == LitInt(2))
            {
            }

            assume true;
            assume {:id "id181"} pc1#0 == LitInt(2) && b1#0 == a1#0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(101,40)
            assume true;
            assume true;
            pc1#0 := LitInt(3);
            pop;
        }
        else
        {
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume pc0#0 != LitInt(0)
               && pc0#0 != LitInt(1)
               && !
              (pc0#0 == LitInt(2)
               && a0#0 > b0#0)
               && !
              (pc0#0 == LitInt(2)
               && a0#0 < b0#0)
               && !
              (pc0#0 == LitInt(2)
               && a0#0 == b0#0)
               && pc1#0 != LitInt(0)
               && pc1#0 != LitInt(1)
               && !
              (pc1#0 == LitInt(2)
               && b1#0 > a1#0)
               && !
              (pc1#0 == LitInt(2)
               && b1#0 < a1#0)
               && !
              (pc1#0 == LitInt(2)
               && b1#0 == a1#0);
            assert {:id "id180"} false;
        }

        pop;
        assume 0 < a#0
           ==> 
          0 < b#0
           ==> _module.__default.Gcd#canCall(A#0, B#0)
             && _module.__default.Gcd#canCall(a#0, b#0);
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(104,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    call {:id "id223"} Call$$_module.__default.GcdEqual(a##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(105,7)
    assume true;
    assume true;
    gcd#0 := a#0;
}



procedure {:verboseName "ParallelGcd (well-formedness)"} CheckWellFormed$$_module.__default.ParallelGcd(A#0: int, B#0: int) returns (gcd#0: int);
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ParallelGcd (well-formedness)"} CheckWellFormed$$_module.__default.ParallelGcd(A#0: int, B#0: int) returns (gcd#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: int;
  var ##b#0: int;


    // AddMethodImpl: ParallelGcd, CheckWellFormed$$_module.__default.ParallelGcd
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id225"} A#0 > 0;
    assume {:id "id226"} B#0 > 0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc gcd#0;
    ##a#0 := A#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := B#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assert {:id "id227"} {:subsumption 0} ##a#0 > 0;
    assert {:id "id228"} {:subsumption 0} ##b#0 > 0;
    assume ##a#0 > 0 && ##b#0 > 0;
    assume _module.__default.Gcd#canCall(A#0, B#0);
    assume {:id "id229"} gcd#0 == _module.__default.Gcd(A#0, B#0);
}



procedure {:verboseName "ParallelGcd (call)"} Call$$_module.__default.ParallelGcd(A#0: int, B#0: int) returns (gcd#0: int);
  // user-defined preconditions
  requires {:id "id230"} A#0 > 0;
  requires {:id "id231"} B#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Gcd#canCall(A#0, B#0);
  ensures {:id "id232"} gcd#0 == _module.__default.Gcd(A#0, B#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ParallelGcd (correctness)"} Impl$$_module.__default.ParallelGcd(A#0: int, B#0: int) returns (gcd#0: int, $_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id233"} A#0 > 0;
  requires {:id "id234"} B#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Gcd#canCall(A#0, B#0);
  ensures {:id "id235"} gcd#0 == _module.__default.Gcd(A#0, B#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ParallelGcd (correctness)"} Impl$$_module.__default.ParallelGcd(A#0: int, B#0: int) returns (gcd#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var b#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var pc0#0: int;
  var pc1#0: int;
  var $rhs#2: int;
  var $rhs#3: int;
  var a0#0: int;
  var b0#0: int;
  var a1#0: int;
  var b1#0: int;
  var budget0#0: int;
  var budget1#0: int;
  var budget0#1: int;
  var budget1#1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $decr_init$loop#01: int;
  var $decr_init$loop#02: int;
  var $decr_init$loop#03: int;
  var $decr_init$loop#04: int;
  var $w$loop#0: bool;
  var ##a#1: int;
  var ##b#1: int;
  var ##a#2: int;
  var ##b#2: int;
  var ##pcThis#0: int;
  var ##pcThat#0: int;
  var ##a0#0: int;
  var ##b0#0: int;
  var ##b#3: int;
  var ##pcThis#1: int;
  var ##pcThat#1: int;
  var ##a0#1: int;
  var ##b0#1: int;
  var ##b#4: int;
  var $decr$loop#00: int;
  var $decr$loop#01: int;
  var $decr$loop#02: int;
  var $decr$loop#03: int;
  var $decr$loop#04: int;
  var $rhs##0_0_0: int;
  var $rhs##0_0_1: int;
  var inThis##0_0_0: int;
  var inThat##0_0_0: int;
  var pcThat##0_0_0: int;
  var $rhs##0_1_0: int;
  var $rhs##0_1_1: int;
  var inThis##0_1_0: int;
  var inThat##0_1_0: int;
  var pcThat##0_1_0: int;
  var a##0_2_0: int;
  var b##0_2_0: int;
  var a##0_2_1: int;
  var b##0_2_1: int;
  var a##0_2_2: int;
  var b##0_2_2: int;
  var $rhs#0_2_0: int;
  var $rhs#0_2_1: int;
  var $rhs##0_2_0: int;
  var $rhs##0_2_1: int;
  var inThis##0_2_0: int;
  var inThat##0_2_0: int;
  var pcThat##0_2_0: int;
  var $rhs#0_3_0: int;
  var $rhs#0_3_1: int;
  var $rhs#0_4_0: int;
  var $rhs#0_4_1: int;
  var $rhs##0_5_0: int;
  var $rhs##0_5_1: int;
  var inThis##0_5_0: int;
  var inThat##0_5_0: int;
  var pcThat##0_5_0: int;
  var $rhs##0_6_0: int;
  var $rhs##0_6_1: int;
  var inThis##0_6_0: int;
  var inThat##0_6_0: int;
  var pcThat##0_6_0: int;
  var a##0_7_0: int;
  var b##0_7_0: int;
  var $rhs#0_7_0: int;
  var $rhs#0_7_1: int;
  var $rhs##0_7_0: int;
  var $rhs##0_7_1: int;
  var inThis##0_7_0: int;
  var inThat##0_7_0: int;
  var pcThat##0_7_0: int;
  var $rhs#0_8_0: int;
  var $rhs#0_8_1: int;
  var $rhs#0_9_0: int;
  var $rhs#0_9_1: int;
  var a##0: int;

    // AddMethodImpl: ParallelGcd, Impl$$_module.__default.ParallelGcd
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(112,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := A#0;
    assume true;
    $rhs#1 := B#0;
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(113,16)
    assume true;
    assume true;
    assume true;
    $rhs#2 := LitInt(0);
    assume true;
    $rhs#3 := LitInt(0);
    pc0#0 := $rhs#2;
    pc1#0 := $rhs#3;
    havoc a0#0, b0#0, a1#0, b1#0;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(119,24)
    havoc budget0#1;
    havoc budget1#1;
    if (true)
    {
        if (budget0#1 > 0)
        {
        }

        assume true;
    }

    assert {:id "id244"} (
        $Is(LitInt(0 + 1), TInt)
         && $Is(LitInt(0 + 1), TInt)
         && Lit(0 + 1 > 0 && 0 + 1 > 0))
       || 
      ($Is(LitInt(0), TInt) && $Is(LitInt(0 + 1), TInt) && Lit(0 > 0 && 0 + 1 > 0))
       || 
      (exists $as#budget00#0: int :: 
        $Is(LitInt(0 + 1), TInt) && $as#budget00#0 > 0 && 0 + 1 > 0)
       || 
      ($Is(LitInt(0 + 1), TInt) && $Is(LitInt(0), TInt) && Lit(0 + 1 > 0 && 0 > 0))
       || 
      ($Is(LitInt(0), TInt) && $Is(LitInt(0), TInt) && Lit(0 > 0 && 0 > 0))
       || 
      (exists $as#budget00#0: int :: 
        $Is(LitInt(0), TInt) && $as#budget00#0 > 0 && 0 > 0)
       || 
      (exists $as#budget10#0: int :: 
        $Is(LitInt(0 + 1), TInt) && 0 + 1 > 0 && $as#budget10#0 > 0)
       || 
      (exists $as#budget10#0: int :: 
        $Is(LitInt(0), TInt) && 0 > 0 && $as#budget10#0 > 0)
       || (exists $as#budget00#0: int, $as#budget10#0: int :: 
        $as#budget00#0 > 0 && $as#budget10#0 > 0);
    havoc budget0#0, budget1#0;
    assume {:id "id245"} budget0#0 > 0 && budget1#0 > 0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(120,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := a#0 + b#0;
    $decr_init$loop#01 := _module.__default.FinalStretch(pc0#0, pc1#0, a0#0, b0#0, b#0)
       + _module.__default.FinalStretch(pc1#0, pc0#0, b1#0, a1#0, a#0);
    $decr_init$loop#02 := (if pc0#0 == LitInt(2) && a0#0 < b0#0 && !(a#0 < b#0) then 1 else 0)
       + (if pc1#0 == LitInt(2) && b1#0 < a1#0 && !(b#0 < a#0) then 1 else 0);
    $decr_init$loop#03 := (if a#0 < b#0 then budget0#0 else 0) + (if b#0 < a#0 then budget1#0 else 0);
    $decr_init$loop#04 := 8 - pc0#0 - pc1#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id247"} $w$loop#0 ==> 0 < a#0;
      invariant {:id "id248"} $w$loop#0 ==> 0 < b#0;
      free invariant $w$loop#0
         ==> _module.__default.Gcd#canCall(A#0, B#0)
           && _module.__default.Gcd#canCall(a#0, b#0);
      invariant {:id "id254"} $w$loop#0 ==> _module.__default.Gcd(A#0, B#0) == _module.__default.Gcd(a#0, b#0);
      free invariant true;
      invariant {:id "id256"} $w$loop#0 ==> LitInt(0) <= pc0#0;
      invariant {:id "id257"} $w$loop#0 ==> pc0#0 < 4;
      invariant {:id "id258"} $w$loop#0 ==> LitInt(0) <= pc1#0;
      invariant {:id "id259"} $w$loop#0 ==> pc1#0 < 4;
      free invariant true;
      invariant {:id "id261"} $w$loop#0 ==> pc0#0 == LitInt(0) || a0#0 == a#0;
      invariant {:id "id262"} $w$loop#0 ==> pc1#0 == LitInt(0) || b1#0 == b#0;
      free invariant true;
      invariant {:id "id264"} $w$loop#0 ==> pc0#0 == LitInt(2) ==> b#0 <= b0#0;
      invariant {:id "id265"} $w$loop#0 ==> pc0#0 == LitInt(2) ==> b0#0 <= a0#0 ==> b0#0 == b#0;
      free invariant true;
      invariant {:id "id267"} $w$loop#0 ==> pc1#0 == LitInt(2) ==> a#0 <= a1#0;
      invariant {:id "id268"} $w$loop#0 ==> pc1#0 == LitInt(2) ==> a1#0 <= b1#0 ==> a1#0 == a#0;
      free invariant true;
      invariant {:id "id270"} $w$loop#0 ==> pc0#0 == LitInt(3) ==> a#0 == b#0;
      invariant {:id "id271"} $w$loop#0 ==> pc1#0 == LitInt(3) ==> a#0 == b#0;
      free invariant true;
      invariant {:id "id273"} $w$loop#0 ==> LitInt(0) <= budget0#0;
      invariant {:id "id274"} $w$loop#0 ==> LitInt(0) <= budget1#0;
      invariant {:id "id275"} $w$loop#0
         ==> pc0#0 == LitInt(3) || pc1#0 == LitInt(3) || LitInt(1) <= budget0#0 + budget1#0;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant a#0 + b#0 <= $decr_init$loop#00
         && (a#0 + b#0 == $decr_init$loop#00
           ==> _module.__default.FinalStretch(pc0#0, pc1#0, a0#0, b0#0, b#0)
                 + _module.__default.FinalStretch(pc1#0, pc0#0, b1#0, a1#0, a#0)
               <= $decr_init$loop#01
             && (_module.__default.FinalStretch(pc0#0, pc1#0, a0#0, b0#0, b#0)
                   + _module.__default.FinalStretch(pc1#0, pc0#0, b1#0, a1#0, a#0)
                 == $decr_init$loop#01
               ==> (if pc0#0 == LitInt(2) && a0#0 < b0#0 && !(a#0 < b#0) then 1 else 0)
                     + (if pc1#0 == LitInt(2) && b1#0 < a1#0 && !(b#0 < a#0) then 1 else 0)
                   <= $decr_init$loop#02
                 && ((if pc0#0 == LitInt(2) && a0#0 < b0#0 && !(a#0 < b#0) then 1 else 0)
                       + (if pc1#0 == LitInt(2) && b1#0 < a1#0 && !(b#0 < a#0) then 1 else 0)
                     == $decr_init$loop#02
                   ==> (if a#0 < b#0 then budget0#0 else 0) + (if b#0 < a#0 then budget1#0 else 0)
                       <= $decr_init$loop#03
                     && ((if a#0 < b#0 then budget0#0 else 0) + (if b#0 < a#0 then budget1#0 else 0)
                         == $decr_init$loop#03
                       ==> 8 - pc0#0 - pc1#0 <= $decr_init$loop#04))));
    {
        if (!$w$loop#0)
        {
            if (0 < a#0)
            {
            }

            assume true;
            assume {:id "id246"} 0 < a#0 && 0 < b#0;
            ##a#1 := A#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, TInt, $Heap);
            ##b#1 := B#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1, TInt, $Heap);
            assert {:id "id249"} {:subsumption 0} ##a#1 > 0;
            assert {:id "id250"} {:subsumption 0} ##b#1 > 0;
            assume _module.__default.Gcd#canCall(A#0, B#0);
            ##a#2 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#2, TInt, $Heap);
            ##b#2 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#2, TInt, $Heap);
            assert {:id "id251"} {:subsumption 0} ##a#2 > 0;
            assert {:id "id252"} {:subsumption 0} ##b#2 > 0;
            assume _module.__default.Gcd#canCall(a#0, b#0);
            assume _module.__default.Gcd#canCall(A#0, B#0)
               && _module.__default.Gcd#canCall(a#0, b#0);
            assume {:id "id253"} _module.__default.Gcd(A#0, B#0) == _module.__default.Gcd(a#0, b#0);
            if (LitInt(0) <= pc0#0)
            {
            }

            if (LitInt(0) <= pc0#0 && pc0#0 < 4)
            {
                if (LitInt(0) <= pc1#0)
                {
                }
            }

            assume true;
            assume {:id "id255"} LitInt(0) <= pc0#0 && pc0#0 < 4 && LitInt(0) <= pc1#0 && pc1#0 < 4;
            if (pc0#0 != LitInt(0))
            {
            }

            if (pc0#0 == LitInt(0) || a0#0 == a#0)
            {
                if (pc1#0 != LitInt(0))
                {
                }
            }

            assume true;
            assume {:id "id260"} (pc0#0 == LitInt(0) || a0#0 == a#0) && (pc1#0 == LitInt(0) || b1#0 == b#0);
            if (pc0#0 == LitInt(2))
            {
                if (b#0 <= b0#0)
                {
                    if (b0#0 <= a0#0)
                    {
                    }
                }
            }

            assume true;
            assume {:id "id263"} pc0#0 == LitInt(2) ==> b#0 <= b0#0 && (b0#0 <= a0#0 ==> b0#0 == b#0);
            if (pc1#0 == LitInt(2))
            {
                if (a#0 <= a1#0)
                {
                    if (a1#0 <= b1#0)
                    {
                    }
                }
            }

            assume true;
            assume {:id "id266"} pc1#0 == LitInt(2) ==> a#0 <= a1#0 && (a1#0 <= b1#0 ==> a1#0 == a#0);
            if (pc0#0 == LitInt(3))
            {
            }

            if (pc0#0 == LitInt(3) ==> a#0 == b#0)
            {
                if (pc1#0 == LitInt(3))
                {
                }
            }

            assume true;
            assume {:id "id269"} (pc0#0 == LitInt(3) ==> a#0 == b#0) && (pc1#0 == LitInt(3) ==> a#0 == b#0);
            if (LitInt(0) <= budget0#0)
            {
            }

            if (LitInt(0) <= budget0#0 && LitInt(0) <= budget1#0)
            {
                if (pc0#0 != LitInt(3))
                {
                }

                if (!(pc0#0 == LitInt(3) || pc1#0 == LitInt(3)))
                {
                }
            }

            assume true;
            assume {:id "id272"} LitInt(0) <= budget0#0
               && LitInt(0) <= budget1#0
               && (pc0#0 == LitInt(3) || pc1#0 == LitInt(3) || LitInt(1) <= budget0#0 + budget1#0);
            assume true;
            ##pcThis#0 := pc0#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##pcThis#0, TInt, $Heap);
            ##pcThat#0 := pc1#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##pcThat#0, TInt, $Heap);
            ##a0#0 := a0#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a0#0, TInt, $Heap);
            ##b0#0 := b0#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b0#0, TInt, $Heap);
            ##b#3 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#3, TInt, $Heap);
            assume _module.__default.FinalStretch#canCall(pc0#0, pc1#0, a0#0, b0#0, b#0);
            ##pcThis#1 := pc1#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##pcThis#1, TInt, $Heap);
            ##pcThat#1 := pc0#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##pcThat#1, TInt, $Heap);
            ##a0#1 := b1#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a0#1, TInt, $Heap);
            ##b0#1 := a1#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b0#1, TInt, $Heap);
            ##b#4 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#4, TInt, $Heap);
            assume _module.__default.FinalStretch#canCall(pc1#0, pc0#0, b1#0, a1#0, a#0);
            assume _module.__default.FinalStretch#canCall(pc0#0, pc1#0, a0#0, b0#0, b#0)
               && _module.__default.FinalStretch#canCall(pc1#0, pc0#0, b1#0, a1#0, a#0);
            if (pc0#0 == LitInt(2))
            {
            }

            if (pc0#0 == LitInt(2) && a0#0 < b0#0)
            {
            }

            if (pc0#0 == LitInt(2) && a0#0 < b0#0 && !(a#0 < b#0))
            {
            }
            else
            {
            }

            if (pc1#0 == LitInt(2))
            {
            }

            if (pc1#0 == LitInt(2) && b1#0 < a1#0)
            {
            }

            if (pc1#0 == LitInt(2) && b1#0 < a1#0 && !(b#0 < a#0))
            {
            }
            else
            {
            }

            assume true;
            if (a#0 < b#0)
            {
            }
            else
            {
            }

            if (b#0 < a#0)
            {
            }
            else
            {
            }

            assume true;
            assume true;
            assume false;
        }

        if (pc0#0 == LitInt(3))
        {
        }

        assume true;
        if (pc0#0 == LitInt(3) && pc1#0 == LitInt(3))
        {
            break;
        }

        $decr$loop#00 := a#0 + b#0;
        $decr$loop#01 := _module.__default.FinalStretch(pc0#0, pc1#0, a0#0, b0#0, b#0)
           + _module.__default.FinalStretch(pc1#0, pc0#0, b1#0, a1#0, a#0);
        $decr$loop#02 := (if pc0#0 == LitInt(2) && a0#0 < b0#0 && !(a#0 < b#0) then 1 else 0)
           + (if pc1#0 == LitInt(2) && b1#0 < a1#0 && !(b#0 < a#0) then 1 else 0);
        $decr$loop#03 := (if a#0 < b#0 then budget0#0 else 0) + (if b#0 < a#0 then budget1#0 else 0);
        $decr$loop#04 := 8 - pc0#0 - pc1#0;
        push;
        // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(137,5)
        if (*)
        {
            assume true;
            assume {:id "id332"} pc0#0 == LitInt(0);
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(138,59)
            assume true;
            assume true;
            assume true;
            $rhs#0_9_0 := a#0;
            assume true;
            $rhs#0_9_1 := LitInt(1);
            a0#0 := $rhs#0_9_0;
            pc0#0 := $rhs#0_9_1;
            pop;
        }
        else if (*)
        {
            assume true;
            assume {:id "id327"} pc0#0 == LitInt(1);
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(139,59)
            assume true;
            assume true;
            assume true;
            $rhs#0_8_0 := b#0;
            assume true;
            $rhs#0_8_1 := LitInt(2);
            b0#0 := $rhs#0_8_0;
            pc0#0 := $rhs#0_8_1;
            pop;
        }
        else if (*)
        {
            if (pc0#0 == LitInt(2))
            {
                if (0 >= budget0#0)
                {
                }
            }

            if (pc0#0 == LitInt(2) && (budget0#0 > 0 || pc1#0 == LitInt(3)))
            {
            }

            assume true;
            assume {:id "id318"} pc0#0 == LitInt(2) && (budget0#0 > 0 || pc1#0 == LitInt(3)) && a0#0 > b0#0;
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(141,62)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_7_0 := a#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##0_7_0 := b#0;
            call {:id "id319"} Call$$_module.__default.GcdDecrease(a##0_7_0, b##0_7_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(142,58)
            assume true;
            assume true;
            assume true;
            $rhs#0_7_0 := a0#0 - b0#0;
            assume true;
            $rhs#0_7_1 := LitInt(0);
            a#0 := $rhs#0_7_0;
            pc0#0 := $rhs#0_7_1;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(143,83)
            assume true;
            assume true;
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            inThis##0_7_0 := budget0#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            inThat##0_7_0 := budget1#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            pcThat##0_7_0 := pc1#0;
            call {:id "id324"} $rhs##0_7_0, $rhs##0_7_1 := Call$$_module.__default.BudgetUpdate(inThis##0_7_0, inThat##0_7_0, pcThat##0_7_0);
            // TrCallStmt: After ProcessCallStmt
            budget0#0 := $rhs##0_7_0;
            budget1#0 := $rhs##0_7_1;
            pop;
        }
        else if (*)
        {
            if (pc0#0 == LitInt(2))
            {
                if (0 >= budget0#0)
                {
                }
            }

            if (pc0#0 == LitInt(2) && (budget0#0 > 0 || pc1#0 == LitInt(3)))
            {
            }

            assume true;
            assume {:id "id313"} pc0#0 == LitInt(2) && (budget0#0 > 0 || pc1#0 == LitInt(3)) && a0#0 < b0#0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(145,55)
            assume true;
            assume true;
            pc0#0 := LitInt(0);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(146,83)
            assume true;
            assume true;
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            inThis##0_6_0 := budget0#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            inThat##0_6_0 := budget1#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            pcThat##0_6_0 := pc1#0;
            call {:id "id315"} $rhs##0_6_0, $rhs##0_6_1 := Call$$_module.__default.BudgetUpdate(inThis##0_6_0, inThat##0_6_0, pcThat##0_6_0);
            // TrCallStmt: After ProcessCallStmt
            budget0#0 := $rhs##0_6_0;
            budget1#0 := $rhs##0_6_1;
            pop;
        }
        else if (*)
        {
            if (pc0#0 == LitInt(2))
            {
                if (0 >= budget0#0)
                {
                }
            }

            if (pc0#0 == LitInt(2) && (budget0#0 > 0 || pc1#0 == LitInt(3)))
            {
            }

            assume true;
            assume {:id "id308"} pc0#0 == LitInt(2) && (budget0#0 > 0 || pc1#0 == LitInt(3)) && a0#0 == b0#0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(148,55)
            assume true;
            assume true;
            pc0#0 := LitInt(3);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(149,83)
            assume true;
            assume true;
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            inThis##0_5_0 := budget0#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            inThat##0_5_0 := budget1#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            pcThat##0_5_0 := pc1#0;
            call {:id "id310"} $rhs##0_5_0, $rhs##0_5_1 := Call$$_module.__default.BudgetUpdate(inThis##0_5_0, inThat##0_5_0, pcThat##0_5_0);
            // TrCallStmt: After ProcessCallStmt
            budget0#0 := $rhs##0_5_0;
            budget1#0 := $rhs##0_5_1;
            pop;
        }
        else if (*)
        {
            assume true;
            assume {:id "id303"} pc1#0 == LitInt(0);
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(150,59)
            assume true;
            assume true;
            assume true;
            $rhs#0_4_0 := b#0;
            assume true;
            $rhs#0_4_1 := LitInt(1);
            b1#0 := $rhs#0_4_0;
            pc1#0 := $rhs#0_4_1;
            pop;
        }
        else if (*)
        {
            assume true;
            assume {:id "id298"} pc1#0 == LitInt(1);
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(151,59)
            assume true;
            assume true;
            assume true;
            $rhs#0_3_0 := a#0;
            assume true;
            $rhs#0_3_1 := LitInt(2);
            a1#0 := $rhs#0_3_0;
            pc1#0 := $rhs#0_3_1;
            pop;
        }
        else if (*)
        {
            if (pc1#0 == LitInt(2))
            {
                if (0 >= budget1#0)
                {
                }
            }

            if (pc1#0 == LitInt(2) && (budget1#0 > 0 || pc0#0 == LitInt(3)))
            {
            }

            assume true;
            assume {:id "id287"} pc1#0 == LitInt(2) && (budget1#0 > 0 || pc0#0 == LitInt(3)) && b1#0 > a1#0;
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(153,59)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_2_0 := a#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##0_2_0 := b#0;
            call {:id "id288"} Call$$_module.__default.Symmetry(a##0_2_0, b##0_2_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(153,78)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_2_1 := b#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##0_2_1 := a#0;
            call {:id "id289"} Call$$_module.__default.GcdDecrease(a##0_2_1, b##0_2_1);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(153,94)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_2_2 := b#0 - a#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##0_2_2 := a#0;
            call {:id "id290"} Call$$_module.__default.Symmetry(a##0_2_2, b##0_2_2);
            // TrCallStmt: After ProcessCallStmt
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(154,58)
            assume true;
            assume true;
            assume true;
            $rhs#0_2_0 := b1#0 - a1#0;
            assume true;
            $rhs#0_2_1 := LitInt(0);
            b#0 := $rhs#0_2_0;
            pc1#0 := $rhs#0_2_1;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(155,83)
            assume true;
            assume true;
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            inThis##0_2_0 := budget1#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            inThat##0_2_0 := budget0#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            pcThat##0_2_0 := pc0#0;
            call {:id "id295"} $rhs##0_2_0, $rhs##0_2_1 := Call$$_module.__default.BudgetUpdate(inThis##0_2_0, inThat##0_2_0, pcThat##0_2_0);
            // TrCallStmt: After ProcessCallStmt
            budget1#0 := $rhs##0_2_0;
            budget0#0 := $rhs##0_2_1;
            pop;
        }
        else if (*)
        {
            if (pc1#0 == LitInt(2))
            {
                if (0 >= budget1#0)
                {
                }
            }

            if (pc1#0 == LitInt(2) && (budget1#0 > 0 || pc0#0 == LitInt(3)))
            {
            }

            assume true;
            assume {:id "id282"} pc1#0 == LitInt(2) && (budget1#0 > 0 || pc0#0 == LitInt(3)) && b1#0 < a1#0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(157,55)
            assume true;
            assume true;
            pc1#0 := LitInt(0);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(158,83)
            assume true;
            assume true;
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            inThis##0_1_0 := budget1#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            inThat##0_1_0 := budget0#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            pcThat##0_1_0 := pc0#0;
            call {:id "id284"} $rhs##0_1_0, $rhs##0_1_1 := Call$$_module.__default.BudgetUpdate(inThis##0_1_0, inThat##0_1_0, pcThat##0_1_0);
            // TrCallStmt: After ProcessCallStmt
            budget1#0 := $rhs##0_1_0;
            budget0#0 := $rhs##0_1_1;
            pop;
        }
        else if (*)
        {
            if (pc1#0 == LitInt(2))
            {
                if (0 >= budget1#0)
                {
                }
            }

            if (pc1#0 == LitInt(2) && (budget1#0 > 0 || pc0#0 == LitInt(3)))
            {
            }

            assume true;
            assume {:id "id277"} pc1#0 == LitInt(2) && (budget1#0 > 0 || pc0#0 == LitInt(3)) && b1#0 == a1#0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(160,55)
            assume true;
            assume true;
            pc1#0 := LitInt(3);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(161,83)
            assume true;
            assume true;
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            inThis##0_0_0 := budget1#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            inThat##0_0_0 := budget0#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            pcThat##0_0_0 := pc0#0;
            call {:id "id279"} $rhs##0_0_0, $rhs##0_0_1 := Call$$_module.__default.BudgetUpdate(inThis##0_0_0, inThat##0_0_0, pcThat##0_0_0);
            // TrCallStmt: After ProcessCallStmt
            budget1#0 := $rhs##0_0_0;
            budget0#0 := $rhs##0_0_1;
            pop;
        }
        else
        {
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume pc0#0 != LitInt(0)
               && pc0#0 != LitInt(1)
               && !
              (
              pc0#0 == LitInt(2)
               && (budget0#0 > 0 || pc1#0 == LitInt(3))
               && a0#0 > b0#0)
               && !
              (
              pc0#0 == LitInt(2)
               && (budget0#0 > 0 || pc1#0 == LitInt(3))
               && a0#0 < b0#0)
               && !
              (
              pc0#0 == LitInt(2)
               && (budget0#0 > 0 || pc1#0 == LitInt(3))
               && a0#0 == b0#0)
               && pc1#0 != LitInt(0)
               && pc1#0 != LitInt(1)
               && !
              (
              pc1#0 == LitInt(2)
               && (budget1#0 > 0 || pc0#0 == LitInt(3))
               && b1#0 > a1#0)
               && !
              (
              pc1#0 == LitInt(2)
               && (budget1#0 > 0 || pc0#0 == LitInt(3))
               && b1#0 < a1#0)
               && !
              (
              pc1#0 == LitInt(2)
               && (budget1#0 > 0 || pc0#0 == LitInt(3))
               && b1#0 == a1#0);
            assert {:id "id276"} false;
        }

        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(120,3)
        assert {:id "id337"} 0 <= $decr$loop#00 || a#0 + b#0 == $decr$loop#00;
        assert {:id "id338"} 0 <= $decr$loop#01
           || a#0 + b#0 < $decr$loop#00
           || _module.__default.FinalStretch(pc0#0, pc1#0, a0#0, b0#0, b#0)
               + _module.__default.FinalStretch(pc1#0, pc0#0, b1#0, a1#0, a#0)
             == $decr$loop#01;
        assert {:id "id339"} 0 <= $decr$loop#02
           || a#0 + b#0 < $decr$loop#00
           || _module.__default.FinalStretch(pc0#0, pc1#0, a0#0, b0#0, b#0)
               + _module.__default.FinalStretch(pc1#0, pc0#0, b1#0, a1#0, a#0)
             < $decr$loop#01
           || (if pc0#0 == LitInt(2) && a0#0 < b0#0 && !(a#0 < b#0) then 1 else 0)
               + (if pc1#0 == LitInt(2) && b1#0 < a1#0 && !(b#0 < a#0) then 1 else 0)
             == $decr$loop#02;
        assert {:id "id340"} 0 <= $decr$loop#03
           || a#0 + b#0 < $decr$loop#00
           || _module.__default.FinalStretch(pc0#0, pc1#0, a0#0, b0#0, b#0)
               + _module.__default.FinalStretch(pc1#0, pc0#0, b1#0, a1#0, a#0)
             < $decr$loop#01
           || (if pc0#0 == LitInt(2) && a0#0 < b0#0 && !(a#0 < b#0) then 1 else 0)
               + (if pc1#0 == LitInt(2) && b1#0 < a1#0 && !(b#0 < a#0) then 1 else 0)
             < $decr$loop#02
           || (if a#0 < b#0 then budget0#0 else 0) + (if b#0 < a#0 then budget1#0 else 0)
             == $decr$loop#03;
        assert {:id "id341"} 0 <= $decr$loop#04
           || a#0 + b#0 < $decr$loop#00
           || _module.__default.FinalStretch(pc0#0, pc1#0, a0#0, b0#0, b#0)
               + _module.__default.FinalStretch(pc1#0, pc0#0, b1#0, a1#0, a#0)
             < $decr$loop#01
           || (if pc0#0 == LitInt(2) && a0#0 < b0#0 && !(a#0 < b#0) then 1 else 0)
               + (if pc1#0 == LitInt(2) && b1#0 < a1#0 && !(b#0 < a#0) then 1 else 0)
             < $decr$loop#02
           || (if a#0 < b#0 then budget0#0 else 0) + (if b#0 < a#0 then budget1#0 else 0)
             < $decr$loop#03
           || 8 - pc0#0 - pc1#0 == $decr$loop#04;
        assert {:id "id342"} a#0 + b#0 < $decr$loop#00
           || (a#0 + b#0 == $decr$loop#00
             && (_module.__default.FinalStretch(pc0#0, pc1#0, a0#0, b0#0, b#0)
                   + _module.__default.FinalStretch(pc1#0, pc0#0, b1#0, a1#0, a#0)
                 < $decr$loop#01
               || (_module.__default.FinalStretch(pc0#0, pc1#0, a0#0, b0#0, b#0)
                     + _module.__default.FinalStretch(pc1#0, pc0#0, b1#0, a1#0, a#0)
                   == $decr$loop#01
                 && ((if pc0#0 == LitInt(2) && a0#0 < b0#0 && !(a#0 < b#0) then 1 else 0)
                       + (if pc1#0 == LitInt(2) && b1#0 < a1#0 && !(b#0 < a#0) then 1 else 0)
                     < $decr$loop#02
                   || ((if pc0#0 == LitInt(2) && a0#0 < b0#0 && !(a#0 < b#0) then 1 else 0)
                         + (if pc1#0 == LitInt(2) && b1#0 < a1#0 && !(b#0 < a#0) then 1 else 0)
                       == $decr$loop#02
                     && ((if a#0 < b#0 then budget0#0 else 0) + (if b#0 < a#0 then budget1#0 else 0)
                         < $decr$loop#03
                       || ((if a#0 < b#0 then budget0#0 else 0) + (if b#0 < a#0 then budget1#0 else 0)
                           == $decr$loop#03
                         && 8 - pc0#0 - pc1#0 < $decr$loop#04)))))));
        assume 0 < a#0
           ==> 
          0 < b#0
           ==> _module.__default.Gcd#canCall(A#0, B#0)
             && _module.__default.Gcd#canCall(a#0, b#0);
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(164,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    call {:id "id343"} Call$$_module.__default.GcdEqual(a##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(165,7)
    assume true;
    assume true;
    gcd#0 := a#0;
}



// function declaration for _module._default.FinalStretch
function _module.__default.FinalStretch(pcThis#0: int, pcThat#0: int, a0#0: int, b0#0: int, b#0: int) : int
uses {
// definition axiom for _module.__default.FinalStretch (revealed)
axiom {:id "id345"} 0 <= $FunctionContextHeight
   ==> (forall pcThis#0: int, pcThat#0: int, a0#0: int, b0#0: int, b#0: int :: 
    { _module.__default.FinalStretch(pcThis#0, pcThat#0, a0#0, b0#0, b#0) } 
    _module.__default.FinalStretch#canCall(pcThis#0, pcThat#0, a0#0, b0#0, b#0)
         || 0 < $FunctionContextHeight
       ==> _module.__default.FinalStretch(pcThis#0, pcThat#0, a0#0, b0#0, b#0)
         == (if pcThat#0 != 3
           then 10
           else (if pcThis#0 == LitInt(3)
             then 0
             else (if pcThis#0 == LitInt(2) && a0#0 == b0#0
               then 1
               else (if pcThis#0 == LitInt(1) && a0#0 == b#0
                 then 2
                 else (if pcThis#0 == LitInt(0)
                   then 3
                   else (if pcThis#0 == LitInt(2) && a0#0 < b0#0 then 4 else 5)))))));
// definition axiom for _module.__default.FinalStretch for all literals (revealed)
axiom {:id "id346"} 0 <= $FunctionContextHeight
   ==> (forall pcThis#0: int, pcThat#0: int, a0#0: int, b0#0: int, b#0: int :: 
    {:weight 3} { _module.__default.FinalStretch(LitInt(pcThis#0), LitInt(pcThat#0), LitInt(a0#0), LitInt(b0#0), LitInt(b#0)) } 
    _module.__default.FinalStretch#canCall(LitInt(pcThis#0), LitInt(pcThat#0), LitInt(a0#0), LitInt(b0#0), LitInt(b#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.FinalStretch(LitInt(pcThis#0), LitInt(pcThat#0), LitInt(a0#0), LitInt(b0#0), LitInt(b#0))
         == (if pcThat#0 != 3
           then 10
           else (if LitInt(pcThis#0) == LitInt(3)
             then 0
             else (if LitInt(pcThis#0) == LitInt(2) && LitInt(a0#0) == LitInt(b0#0)
               then 1
               else (if LitInt(pcThis#0) == LitInt(1) && LitInt(a0#0) == LitInt(b#0)
                 then 2
                 else (if LitInt(pcThis#0) == LitInt(0)
                   then 3
                   else (if LitInt(pcThis#0) == LitInt(2) && a0#0 < b0#0 then 4 else 5)))))));
}

function _module.__default.FinalStretch#canCall(pcThis#0: int, pcThat#0: int, a0#0: int, b0#0: int, b#0: int) : bool;

function _module.__default.FinalStretch#requires(int, int, int, int, int) : bool;

// #requires axiom for _module.__default.FinalStretch
axiom (forall pcThis#0: int, pcThat#0: int, a0#0: int, b0#0: int, b#0: int :: 
  { _module.__default.FinalStretch#requires(pcThis#0, pcThat#0, a0#0, b0#0, b#0) } 
  _module.__default.FinalStretch#requires(pcThis#0, pcThat#0, a0#0, b0#0, b#0)
     == true);

procedure {:verboseName "FinalStretch (well-formedness)"} CheckWellformed$$_module.__default.FinalStretch(pcThis#0: int, pcThat#0: int, a0#0: int, b0#0: int, b#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BudgetUpdate (well-formedness)"} CheckWellFormed$$_module.__default.BudgetUpdate(inThis#0: int, inThat#0: int, pcThat#0: int)
   returns (outThis#0: int, outThat#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BudgetUpdate (call)"} Call$$_module.__default.BudgetUpdate(inThis#0: int, inThat#0: int, pcThat#0: int)
   returns (outThis#0: int, outThat#0: int);
  // user-defined preconditions
  requires {:id "id362"} pcThat#0 == LitInt(3) || 0 < inThis#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id363"} outThis#0 == (if 0 < inThis#0 then inThis#0 - 1 else inThis#0);
  free ensures true;
  ensures {:id "id364"} pcThat#0 == LitInt(3) ==> outThat#0 == inThat#0;
  ensures {:id "id365"} pcThat#0 != LitInt(3) ==> outThat#0 > 0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "BudgetUpdate (correctness)"} Impl$$_module.__default.BudgetUpdate(inThis#0: int, inThat#0: int, pcThat#0: int)
   returns (outThis#0: int, outThat#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id366"} pcThat#0 == LitInt(3) || 0 < inThis#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id367"} outThis#0 == (if 0 < inThis#0 then inThis#0 - 1 else inThis#0);
  free ensures true;
  ensures {:id "id368"} pcThat#0 == LitInt(3) ==> outThat#0 == inThat#0;
  ensures {:id "id369"} pcThat#0 != LitInt(3) ==> outThat#0 > 0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BudgetUpdate (correctness)"} Impl$$_module.__default.BudgetUpdate(inThis#0: int, inThat#0: int, pcThat#0: int)
   returns (outThis#0: int, outThat#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var outThat#1_0: int;

    // AddMethodImpl: BudgetUpdate, Impl$$_module.__default.BudgetUpdate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(184,11)
    assume true;
    if (0 < inThis#0)
    {
    }
    else
    {
    }

    assume true;
    outThis#0 := (if 0 < inThis#0 then inThis#0 - 1 else inThis#0);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(185,3)
    assume true;
    if (pcThat#0 == LitInt(3))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(186,13)
        assume true;
        assume true;
        outThat#0 := inThat#0;
    }
    else
    {
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(188,13)
        havoc outThat#1_0;
        if (true)
        {
            assume true;
        }

        assert {:id "id372"} ($Is(LitInt(0 + 1), TInt) && Lit(0 + 1 > 0))
           || 
          ($Is(LitInt(0), TInt) && Lit(0 > 0))
           || (exists $as#outThat1_0#1_0: int :: $as#outThat1_0#1_0 > 0);
        havoc outThat#0;
        assume {:id "id373"} outThat#0 > 0;
    }
}



// function declaration for _module._default.Gcd
function _module.__default.Gcd(a#0: int, b#0: int) : int
uses {
// definition axiom for _module.__default.Gcd (revealed)
axiom {:id "id374"} 5 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, a#0: int, b#0: int :: 
    { _module.__default.Gcd(a#0, b#0), $IsGoodHeap($Heap) } 
    _module.__default.Gcd#canCall(a#0, b#0)
         || (5 < $FunctionContextHeight && $IsGoodHeap($Heap) && a#0 > 0 && b#0 > 0)
       ==> $let#0$canCall(a#0, b#0)
         && _module.__default.Gcd(a#0, b#0) == (var d#0 := $let#0_d(a#0, b#0); d#0));
// definition axiom for _module.__default.Gcd for all literals (revealed)
axiom {:id "id375"} 5 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, a#0: int, b#0: int :: 
    {:weight 3} { _module.__default.Gcd(LitInt(a#0), LitInt(b#0)), $IsGoodHeap($Heap) } 
    _module.__default.Gcd#canCall(LitInt(a#0), LitInt(b#0))
         || (5 < $FunctionContextHeight && $IsGoodHeap($Heap) && Lit(a#0 > 0 && b#0 > 0))
       ==> $let#0$canCall(LitInt(a#0), LitInt(b#0))
         && _module.__default.Gcd(LitInt(a#0), LitInt(b#0))
           == (var d#1 := $let#0_d(LitInt(a#0), LitInt(b#0)); d#1));
}

function _module.__default.Gcd#canCall(a#0: int, b#0: int) : bool;

function _module.__default.Gcd#requires(int, int) : bool;

// #requires axiom for _module.__default.Gcd
axiom (forall $Heap: Heap, a#0: int, b#0: int :: 
  { _module.__default.Gcd#requires(a#0, b#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
     ==> _module.__default.Gcd#requires(a#0, b#0) == (a#0 > 0 && b#0 > 0));

function $let#0_d(a: int, b: int) : int;

function $let#0$canCall(a: int, b: int) : bool;

axiom (forall a: int, b: int :: 
  { $let#0_d(a, b) } 
  $let#0$canCall(a, b)
     ==> _module.__default.DividesBoth($let#0_d(a, b), a, b)
       && (forall m#0: int :: 
        { _module.__default.DividesBoth(m#0, a, b) } 
        _module.__default.DividesBoth(m#0, a, b) ==> m#0 <= $let#0_d(a, b)));

procedure {:verboseName "Gcd (well-formedness)"} CheckWellformed$$_module.__default.Gcd(a#0: int, b#0: int);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Gcd (well-formedness)"} CheckWellformed$$_module.__default.Gcd(a#0: int, b#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var a##0: int;
  var b##0: int;
  var d#2: int;
  var ##d#0: int;
  var ##a#0: int;
  var ##b#0: int;
  var m#1: int;
  var ##d#1: int;
  var ##a#1: int;
  var ##b#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id376"} a#0 > 0;
    assume {:id "id377"} b#0 > 0;
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
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(195,9)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0 := a#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##0 := b#0;
        call {:id "id378"} Call$$_module.__default.Exists(a##0, b##0);
        // TrCallStmt: After ProcessCallStmt
        havoc d#2;
        if (true)
        {
            ##d#0 := d#2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#0, TInt, $Heap);
            ##a#0 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, TInt, $Heap);
            ##b#0 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0, TInt, $Heap);
            assert {:id "id379"} {:subsumption 0} ##a#0 > 0;
            assert {:id "id380"} {:subsumption 0} ##b#0 > 0;
            assume ##a#0 > 0 && ##b#0 > 0;
            assume _module.__default.DividesBoth#canCall(d#2, a#0, b#0);
            if (_module.__default.DividesBoth(d#2, a#0, b#0))
            {
                // Begin Comprehension WF check
                havoc m#1;
                if (true)
                {
                    ##d#1 := m#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##d#1, TInt, $Heap);
                    ##a#1 := a#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##a#1, TInt, $Heap);
                    ##b#1 := b#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##b#1, TInt, $Heap);
                    assert {:id "id381"} {:subsumption 0} ##a#1 > 0;
                    assert {:id "id382"} {:subsumption 0} ##b#1 > 0;
                    assume ##a#1 > 0 && ##b#1 > 0;
                    assume _module.__default.DividesBoth#canCall(m#1, a#0, b#0);
                    if (_module.__default.DividesBoth(m#1, a#0, b#0))
                    {
                    }
                }

                // End Comprehension WF check
            }
        }

        assert {:id "id383"} ($Is(LitInt(0), TInt)
             && 
            _module.__default.DividesBoth(LitInt(0), a#0, b#0)
             && (forall m#3: int :: 
              { _module.__default.DividesBoth(m#3, a#0, b#0) } 
              _module.__default.DividesBoth(m#3, a#0, b#0) ==> m#3 <= LitInt(0)))
           || (exists d#3: int :: 
            _module.__default.DividesBoth(d#3, a#0, b#0)
               && (forall m#2: int :: 
                { _module.__default.DividesBoth(m#2, a#0, b#0) } 
                _module.__default.DividesBoth(m#2, a#0, b#0) ==> m#2 <= d#3));
        assume true;
        assume _module.__default.DividesBoth(d#2, a#0, b#0)
           && (forall m#4: int :: 
            { _module.__default.DividesBoth(m#4, a#0, b#0) } 
            _module.__default.DividesBoth(m#4, a#0, b#0) ==> m#4 <= d#2);
        assume $let#0$canCall(a#0, b#0);
        assume {:id "id384"} _module.__default.Gcd(a#0, b#0) == d#2;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Gcd(a#0, b#0), TInt);
        return;

        assume false;
    }
}



// function declaration for _module._default.DividesBoth
function _module.__default.DividesBoth(d#0: int, a#0: int, b#0: int) : bool
uses {
// definition axiom for _module.__default.DividesBoth (revealed)
axiom {:id "id385"} 2 <= $FunctionContextHeight
   ==> (forall d#0: int, a#0: int, b#0: int :: 
    { _module.__default.DividesBoth(d#0, a#0, b#0) } 
    _module.__default.DividesBoth#canCall(d#0, a#0, b#0)
         || (2 < $FunctionContextHeight && a#0 > 0 && b#0 > 0)
       ==> (d#0 > 0
           ==> _module.__default.Divides#canCall(d#0, a#0)
             && (_module.__default.Divides(reveal__module._default.Divides, d#0, a#0)
               ==> _module.__default.Divides#canCall(d#0, b#0)))
         && _module.__default.DividesBoth(d#0, a#0, b#0)
           == (
            d#0 > 0
             && _module.__default.Divides(reveal__module._default.Divides, d#0, a#0)
             && _module.__default.Divides(reveal__module._default.Divides, d#0, b#0)));
// definition axiom for _module.__default.DividesBoth for all literals (revealed)
axiom {:id "id386"} 2 <= $FunctionContextHeight
   ==> (forall d#0: int, a#0: int, b#0: int :: 
    {:weight 3} { _module.__default.DividesBoth(LitInt(d#0), LitInt(a#0), LitInt(b#0)) } 
    _module.__default.DividesBoth#canCall(LitInt(d#0), LitInt(a#0), LitInt(b#0))
         || (2 < $FunctionContextHeight && Lit(a#0 > 0 && b#0 > 0))
       ==> (Lit(d#0 > 0)
           ==> _module.__default.Divides#canCall(LitInt(d#0), LitInt(a#0))
             && (_module.__default.Divides(reveal__module._default.Divides, LitInt(d#0), LitInt(a#0))
               ==> _module.__default.Divides#canCall(LitInt(d#0), LitInt(b#0))))
         && _module.__default.DividesBoth(LitInt(d#0), LitInt(a#0), LitInt(b#0))
           == (
            d#0 > 0
             && _module.__default.Divides(reveal__module._default.Divides, LitInt(d#0), LitInt(a#0))
             && _module.__default.Divides(reveal__module._default.Divides, LitInt(d#0), LitInt(b#0))));
}

function _module.__default.DividesBoth#canCall(d#0: int, a#0: int, b#0: int) : bool;

function _module.__default.DividesBoth#requires(int, int, int) : bool;

// #requires axiom for _module.__default.DividesBoth
axiom (forall d#0: int, a#0: int, b#0: int :: 
  { _module.__default.DividesBoth#requires(d#0, a#0, b#0) } 
  _module.__default.DividesBoth#requires(d#0, a#0, b#0) == (a#0 > 0 && b#0 > 0));

procedure {:verboseName "DividesBoth (well-formedness)"} CheckWellformed$$_module.__default.DividesBoth(d#0: int, a#0: int, b#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DividesBoth (well-formedness)"} CheckWellformed$$_module.__default.DividesBoth(d#0: int, a#0: int, b#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##d#0: int;
  var ##a#0: int;
  var ##d#1: int;
  var ##a#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id387"} a#0 > 0;
    assume {:id "id388"} b#0 > 0;
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
        if (d#0 > 0)
        {
            ##d#0 := d#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#0, TInt, $Heap);
            ##a#0 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, TInt, $Heap);
            assert {:id "id389"} {:subsumption 0} ##d#0 > 0;
            assert {:id "id390"} {:subsumption 0} ##a#0 > 0;
            assume ##d#0 > 0 && ##a#0 > 0;
            assume _module.__default.Divides#canCall(d#0, a#0);
        }

        if (d#0 > 0 && _module.__default.Divides(reveal__module._default.Divides, d#0, a#0))
        {
            ##d#1 := d#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#1, TInt, $Heap);
            ##a#1 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, TInt, $Heap);
            assert {:id "id391"} {:subsumption 0} ##d#1 > 0;
            assert {:id "id392"} {:subsumption 0} ##a#1 > 0;
            assume ##d#1 > 0 && ##a#1 > 0;
            assume _module.__default.Divides#canCall(d#0, b#0);
        }

        assume {:id "id393"} _module.__default.DividesBoth(d#0, a#0, b#0)
           == (
            d#0 > 0
             && _module.__default.Divides(reveal__module._default.Divides, d#0, a#0)
             && _module.__default.Divides(reveal__module._default.Divides, d#0, b#0));
        assume d#0 > 0
           ==> _module.__default.Divides#canCall(d#0, a#0)
             && (_module.__default.Divides(reveal__module._default.Divides, d#0, a#0)
               ==> _module.__default.Divides#canCall(d#0, b#0));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.DividesBoth(d#0, a#0, b#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.Divides
function _module.__default.Divides($reveal: bool, d#0: int, a#0: int) : bool
uses {
// definition axiom for _module.__default.Divides (revealed)
axiom {:id "id394"} 1 <= $FunctionContextHeight
   ==> (forall d#0: int, a#0: int :: 
    { _module.__default.Divides(true, d#0, a#0) } 
    _module.__default.Divides#canCall(d#0, a#0)
         || (1 < $FunctionContextHeight && d#0 > 0 && a#0 > 0)
       ==> (forall n#0: int :: 
          { _module.__default.MulTriple(n#0, d#0, a#0) } 
          n#0 > 0 ==> _module.__default.MulTriple#canCall(n#0, d#0, a#0))
         && _module.__default.Divides(true, d#0, a#0)
           == (exists n#0: int :: 
            { _module.__default.MulTriple(n#0, d#0, a#0) } 
            n#0 > 0 && _module.__default.MulTriple(n#0, d#0, a#0)));
// definition axiom for _module.__default.Divides for all literals (revealed)
axiom {:id "id395"} 1 <= $FunctionContextHeight
   ==> (forall d#0: int, a#0: int :: 
    {:weight 3} { _module.__default.Divides(true, LitInt(d#0), LitInt(a#0)) } 
    _module.__default.Divides#canCall(LitInt(d#0), LitInt(a#0))
         || (1 < $FunctionContextHeight && Lit(d#0 > 0 && a#0 > 0))
       ==> (forall n#1: int :: 
          { _module.__default.MulTriple(n#1, d#0, a#0) } 
          n#1 > 0 ==> _module.__default.MulTriple#canCall(n#1, LitInt(d#0), LitInt(a#0)))
         && _module.__default.Divides(true, LitInt(d#0), LitInt(a#0))
           == (exists n#1: int :: 
            { _module.__default.MulTriple(n#1, d#0, a#0) } 
            n#1 > 0 && _module.__default.MulTriple(n#1, LitInt(d#0), LitInt(a#0))));
}

function _module.__default.Divides#canCall(d#0: int, a#0: int) : bool;

function _module.__default.Divides#requires(int, int) : bool;

// #requires axiom for _module.__default.Divides
axiom (forall d#0: int, a#0: int :: 
  { _module.__default.Divides#requires(d#0, a#0) } 
  _module.__default.Divides#requires(d#0, a#0) == (d#0 > 0 && a#0 > 0));

procedure {:verboseName "Divides (well-formedness)"} CheckWellformed$$_module.__default.Divides(d#0: int, a#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Divides (well-formedness)"} CheckWellformed$$_module.__default.Divides(d#0: int, a#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var n#2: int;
  var ##n#0: int;
  var ##d#0: int;
  var ##a#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id396"} d#0 > 0;
    assume {:id "id397"} a#0 > 0;
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
        havoc n#2;
        if (true)
        {
            if (n#2 > 0)
            {
                ##n#0 := n#2;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, TInt, $Heap);
                ##d#0 := d#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##d#0, TInt, $Heap);
                ##a#0 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0, TInt, $Heap);
                assert {:id "id398"} {:subsumption 0} ##n#0 > 0;
                assert {:id "id399"} {:subsumption 0} ##d#0 > 0;
                assume ##n#0 > 0 && ##d#0 > 0;
                assume _module.__default.MulTriple#canCall(n#2, d#0, a#0);
            }
        }

        // End Comprehension WF check
        assume {:id "id400"} _module.__default.Divides(reveal__module._default.Divides, d#0, a#0)
           == (exists n#3: int :: 
            { _module.__default.MulTriple(n#3, d#0, a#0) } 
            n#3 > 0 && _module.__default.MulTriple(n#3, d#0, a#0));
        assume (forall n#3: int :: 
          { _module.__default.MulTriple(n#3, d#0, a#0) } 
          n#3 > 0 ==> _module.__default.MulTriple#canCall(n#3, d#0, a#0));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Divides(reveal__module._default.Divides, d#0, a#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.MulTriple
function _module.__default.MulTriple(n#0: int, d#0: int, a#0: int) : bool
uses {
// definition axiom for _module.__default.MulTriple (revealed)
axiom {:id "id401"} 0 <= $FunctionContextHeight
   ==> (forall n#0: int, d#0: int, a#0: int :: 
    { _module.__default.MulTriple(n#0, d#0, a#0) } 
    _module.__default.MulTriple#canCall(n#0, d#0, a#0)
         || (0 < $FunctionContextHeight && n#0 > 0 && d#0 > 0)
       ==> _module.__default.MulTriple(n#0, d#0, a#0) == (Mul(n#0, d#0) == a#0));
// definition axiom for _module.__default.MulTriple for all literals (revealed)
axiom {:id "id402"} 0 <= $FunctionContextHeight
   ==> (forall n#0: int, d#0: int, a#0: int :: 
    {:weight 3} { _module.__default.MulTriple(LitInt(n#0), LitInt(d#0), LitInt(a#0)) } 
    _module.__default.MulTriple#canCall(LitInt(n#0), LitInt(d#0), LitInt(a#0))
         || (0 < $FunctionContextHeight && Lit(n#0 > 0 && d#0 > 0))
       ==> _module.__default.MulTriple(LitInt(n#0), LitInt(d#0), LitInt(a#0))
         == 
        (LitInt(Mul(LitInt(n#0), LitInt(d#0)))
         == LitInt(a#0)));
}

function _module.__default.MulTriple#canCall(n#0: int, d#0: int, a#0: int) : bool;

function _module.__default.MulTriple#requires(int, int, int) : bool;

// #requires axiom for _module.__default.MulTriple
axiom (forall n#0: int, d#0: int, a#0: int :: 
  { _module.__default.MulTriple#requires(n#0, d#0, a#0) } 
  _module.__default.MulTriple#requires(n#0, d#0, a#0) == (n#0 > 0 && d#0 > 0));

procedure {:verboseName "MulTriple (well-formedness)"} CheckWellformed$$_module.__default.MulTriple(n#0: int, d#0: int, a#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Exists (well-formedness)"} CheckWellFormed$$_module.__default.Exists(a#0: int, b#0: int);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Exists (well-formedness)"} CheckWellFormed$$_module.__default.Exists(a#0: int, b#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var d#0: int;
  var ##d#0: int;
  var ##a#0: int;
  var ##b#0: int;
  var m#0: int;
  var ##d#1: int;
  var ##a#1: int;
  var ##b#1: int;


    // AddMethodImpl: Exists, CheckWellFormed$$_module.__default.Exists
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id406"} a#0 > 0;
    assume {:id "id407"} b#0 > 0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc d#0;
    assume true;
    ##d#0 := d#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, TInt, $Heap);
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assert {:id "id408"} {:subsumption 0} ##a#0 > 0;
    assert {:id "id409"} {:subsumption 0} ##b#0 > 0;
    assume ##a#0 > 0 && ##b#0 > 0;
    assume _module.__default.DividesBoth#canCall(d#0, a#0, b#0);
    assume {:id "id410"} _module.__default.DividesBoth(d#0, a#0, b#0);
    havoc m#0;
    assume true;
    if (*)
    {
        ##d#1 := m#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#1, TInt, $Heap);
        ##a#1 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#1, TInt, $Heap);
        ##b#1 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#1, TInt, $Heap);
        assert {:id "id411"} {:subsumption 0} ##a#1 > 0;
        assert {:id "id412"} {:subsumption 0} ##b#1 > 0;
        assume ##a#1 > 0 && ##b#1 > 0;
        assume _module.__default.DividesBoth#canCall(m#0, a#0, b#0);
        assume {:id "id413"} _module.__default.DividesBoth(m#0, a#0, b#0);
        assume {:id "id414"} m#0 <= d#0;
    }
    else
    {
        assume {:id "id415"} _module.__default.DividesBoth(m#0, a#0, b#0) ==> m#0 <= d#0;
    }

    assume {:id "id416"} (forall m#1: int :: 
      { _module.__default.DividesBoth(m#1, a#0, b#0) } 
      _module.__default.DividesBoth(m#1, a#0, b#0) ==> m#1 <= d#0);
}



procedure {:verboseName "Exists (call)"} Call$$_module.__default.Exists(a#0: int, b#0: int);
  // user-defined preconditions
  requires {:id "id417"} a#0 > 0;
  requires {:id "id418"} b#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall d#1: int :: 
    { _module.__default.DividesBoth(d#1, a#0, b#0) } 
    _module.__default.DividesBoth#canCall(d#1, a#0, b#0)
       && (_module.__default.DividesBoth(d#1, a#0, b#0)
         ==> (forall m#2: int :: 
          { _module.__default.DividesBoth(m#2, a#0, b#0) } 
          _module.__default.DividesBoth#canCall(m#2, a#0, b#0))));
  ensures {:id "id419"} (exists d#1: int :: 
    { _module.__default.DividesBoth(d#1, a#0, b#0) } 
    _module.__default.DividesBoth(d#1, a#0, b#0)
       && (forall m#2: int :: 
        { _module.__default.DividesBoth(m#2, a#0, b#0) } 
        _module.__default.DividesBoth(m#2, a#0, b#0) ==> m#2 <= d#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Exists (correctness)"} Impl$$_module.__default.Exists(a#0: int, b#0: int) returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id420"} a#0 > 0;
  requires {:id "id421"} b#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall d#1: int :: 
    { _module.__default.DividesBoth(d#1, a#0, b#0) } 
    _module.__default.DividesBoth#canCall(d#1, a#0, b#0)
       && (_module.__default.DividesBoth(d#1, a#0, b#0)
         ==> (forall m#2: int :: 
          { _module.__default.DividesBoth(m#2, a#0, b#0) } 
          _module.__default.DividesBoth#canCall(m#2, a#0, b#0))));
  ensures {:id "id422"} (exists d#1: int :: 
    { _module.__default.DividesBoth(d#1, a#0, b#0) } 
    _module.__default.DividesBoth(d#1, a#0, b#0)
       && (forall m#2: int :: 
        { _module.__default.DividesBoth(m#2, a#0, b#0) } 
        _module.__default.DividesBoth(m#2, a#0, b#0) ==> m#2 <= d#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Exists (correctness)"} Impl$$_module.__default.Exists(a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var d#2: int;
  var $rhs##0: int;
  var a##0: int;
  var b##0: int;

    // AddMethodImpl: Exists, Impl$$_module.__default.Exists
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(223,22)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := b#0;
    call {:id "id423"} $rhs##0 := Call$$_module.__default.ShowExists(a##0, b##0);
    // TrCallStmt: After ProcessCallStmt
    d#2 := $rhs##0;
}



procedure {:verboseName "ShowExists (well-formedness)"} CheckWellFormed$$_module.__default.ShowExists(a#0: int, b#0: int) returns (d#0: int);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ShowExists (well-formedness)"} CheckWellFormed$$_module.__default.ShowExists(a#0: int, b#0: int) returns (d#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##d#0: int;
  var ##a#0: int;
  var ##b#0: int;
  var m#0: int;
  var ##d#1: int;
  var ##a#1: int;
  var ##b#1: int;


    // AddMethodImpl: ShowExists, CheckWellFormed$$_module.__default.ShowExists
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id425"} a#0 > 0;
    assume {:id "id426"} b#0 > 0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc d#0;
    ##d#0 := d#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, TInt, $Heap);
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assert {:id "id427"} {:subsumption 0} ##a#0 > 0;
    assert {:id "id428"} {:subsumption 0} ##b#0 > 0;
    assume ##a#0 > 0 && ##b#0 > 0;
    assume _module.__default.DividesBoth#canCall(d#0, a#0, b#0);
    assume {:id "id429"} _module.__default.DividesBoth(d#0, a#0, b#0);
    havoc m#0;
    assume true;
    if (*)
    {
        ##d#1 := m#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#1, TInt, $Heap);
        ##a#1 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#1, TInt, $Heap);
        ##b#1 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#1, TInt, $Heap);
        assert {:id "id430"} {:subsumption 0} ##a#1 > 0;
        assert {:id "id431"} {:subsumption 0} ##b#1 > 0;
        assume ##a#1 > 0 && ##b#1 > 0;
        assume _module.__default.DividesBoth#canCall(m#0, a#0, b#0);
        assume {:id "id432"} _module.__default.DividesBoth(m#0, a#0, b#0);
        assume {:id "id433"} m#0 <= d#0;
    }
    else
    {
        assume {:id "id434"} _module.__default.DividesBoth(m#0, a#0, b#0) ==> m#0 <= d#0;
    }

    assume {:id "id435"} (forall m#1: int :: 
      { _module.__default.DividesBoth(m#1, a#0, b#0) } 
      _module.__default.DividesBoth(m#1, a#0, b#0) ==> m#1 <= d#0);
}



procedure {:verboseName "ShowExists (call)"} Call$$_module.__default.ShowExists(a#0: int, b#0: int) returns (d#0: int);
  // user-defined preconditions
  requires {:id "id436"} a#0 > 0;
  requires {:id "id437"} b#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.DividesBoth#canCall(d#0, a#0, b#0)
     && (_module.__default.DividesBoth(d#0, a#0, b#0)
       ==> (forall m#1: int :: 
        { _module.__default.DividesBoth(m#1, a#0, b#0) } 
        _module.__default.DividesBoth#canCall(m#1, a#0, b#0)));
  free ensures {:id "id438"} _module.__default.DividesBoth#canCall(d#0, a#0, b#0)
     && 
    _module.__default.DividesBoth(d#0, a#0, b#0)
     && 
    d#0 > 0
     && _module.__default.Divides(reveal__module._default.Divides, d#0, a#0)
     && _module.__default.Divides(reveal__module._default.Divides, d#0, b#0);
  ensures {:id "id439"} (forall m#1: int :: 
    { _module.__default.DividesBoth(m#1, a#0, b#0) } 
    _module.__default.DividesBoth(m#1, a#0, b#0) ==> m#1 <= d#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ShowExists (correctness)"} Impl$$_module.__default.ShowExists(a#0: int, b#0: int) returns (d#0: int, $_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id440"} a#0 > 0;
  requires {:id "id441"} b#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.DividesBoth#canCall(d#0, a#0, b#0)
     && (_module.__default.DividesBoth(d#0, a#0, b#0)
       ==> (forall m#1: int :: 
        { _module.__default.DividesBoth(m#1, a#0, b#0) } 
        _module.__default.DividesBoth#canCall(m#1, a#0, b#0)));
  ensures {:id "id442"} _module.__default.DividesBoth#canCall(d#0, a#0, b#0)
     ==> _module.__default.DividesBoth(d#0, a#0, b#0) || d#0 > 0;
  ensures {:id "id443"} _module.__default.DividesBoth#canCall(d#0, a#0, b#0)
     ==> _module.__default.DividesBoth(d#0, a#0, b#0)
       || _module.__default.Divides(reveal__module._default.Divides, d#0, a#0);
  ensures {:id "id444"} _module.__default.DividesBoth#canCall(d#0, a#0, b#0)
     ==> _module.__default.DividesBoth(d#0, a#0, b#0)
       || _module.__default.Divides(reveal__module._default.Divides, d#0, b#0);
  ensures {:id "id445"} (forall m#1: int :: 
    { _module.__default.DividesBoth(m#1, a#0, b#0) } 
    _module.__default.DividesBoth(m#1, a#0, b#0) ==> m#1 <= d#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ShowExists (correctness)"} Impl$$_module.__default.ShowExists(a#0: int, b#0: int) returns (d#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a##0_0: int;
  var a##0_1: int;
  var ##d#0_0: int;
  var ##a#0_0: int;
  var ##d#0_1: int;
  var ##a#0_1: int;
  var ##d#0_2: int;
  var ##a#0_2: int;
  var ##b#0_0: int;
  var d#1: int;
  var ##d#2: int;
  var ##a#2: int;
  var ##b#2: int;
  var d#3: int;
  var ##d#3: int;
  var ##a#3: int;
  var ##b#3: int;
  var d#4: int;
  var ##d#4: int;
  var ##a#4: int;
  var ##b#4: int;
  var d##0: int;
  var a##0: int;
  var d##1: int;
  var a##1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var ##d#5: int;
  var ##a#5: int;
  var ##b#5: int;
  var $decr$loop#00: int;
  var k#1_0: int;
  var ##d#1_0: int;
  var ##a#1_0: int;
  var ##b#1_0: int;
  var k#1_0_0: int;
  var k#1_0_1: int;
  var ##d#1_0_0: int;
  var ##a#1_0_0: int;
  var ##b#1_0_0: int;
  var ##d#1_0_1: int;
  var ##a#1_0_1: int;
  var d##1_0_0: int;
  var a##1_0_0: int;
  var d##1_0_1: int;
  var a##1_0_1: int;

    // AddMethodImpl: ShowExists, Impl$$_module.__default.ShowExists
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    if (*)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(233,23)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_0 := a#0;
        call {:id "id446"} Call$$_module.__default.OneDividesAnything(a##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(234,23)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_1 := b#0;
        call {:id "id447"} Call$$_module.__default.OneDividesAnything(a##0_1);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(235,5)
        ##d#0_0 := LitInt(1);
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#0_0, TInt, $Heap);
        ##a#0_0 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_0, TInt, $Heap);
        assert {:id "id448"} {:subsumption 0} ##d#0_0 > 0;
        assert {:id "id449"} {:subsumption 0} ##a#0_0 > 0;
        assume _module.__default.Divides#canCall(LitInt(1), a#0);
        assume _module.__default.Divides#canCall(LitInt(1), a#0);
        assert {:id "id450"} _module.__default.Divides(reveal__module._default.Divides, LitInt(1), a#0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(236,5)
        ##d#0_1 := LitInt(1);
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#0_1, TInt, $Heap);
        ##a#0_1 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_1, TInt, $Heap);
        assert {:id "id451"} {:subsumption 0} ##d#0_1 > 0;
        assert {:id "id452"} {:subsumption 0} ##a#0_1 > 0;
        assume _module.__default.Divides#canCall(LitInt(1), b#0);
        assume _module.__default.Divides#canCall(LitInt(1), b#0);
        assert {:id "id453"} _module.__default.Divides(reveal__module._default.Divides, LitInt(1), b#0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(237,5)
        ##d#0_2 := LitInt(1);
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#0_2, TInt, $Heap);
        ##a#0_2 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0_2, TInt, $Heap);
        ##b#0_0 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_0, TInt, $Heap);
        assert {:id "id454"} {:subsumption 0} ##a#0_2 > 0;
        assert {:id "id455"} {:subsumption 0} ##b#0_0 > 0;
        assume _module.__default.DividesBoth#canCall(LitInt(1), a#0, b#0);
        assume _module.__default.DividesBoth#canCall(LitInt(1), a#0, b#0);
        assert {:id "id456"} {:subsumption 0} _module.__default.DividesBoth#canCall(LitInt(1), a#0, b#0)
           ==> _module.__default.DividesBoth(LitInt(1), a#0, b#0) || Lit(1 > 0);
        assert {:id "id457"} {:subsumption 0} _module.__default.DividesBoth#canCall(LitInt(1), a#0, b#0)
           ==> _module.__default.DividesBoth(LitInt(1), a#0, b#0)
             || _module.__default.Divides(reveal__module._default.Divides, LitInt(1), a#0);
        assert {:id "id458"} {:subsumption 0} _module.__default.DividesBoth#canCall(LitInt(1), a#0, b#0)
           ==> _module.__default.DividesBoth(LitInt(1), a#0, b#0)
             || _module.__default.Divides(reveal__module._default.Divides, LitInt(1), b#0);
        assume {:id "id459"} _module.__default.DividesBoth(LitInt(1), a#0, b#0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(230,3)
        // Begin Comprehension WF check
        havoc d#1;
        if (true)
        {
            ##d#2 := d#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#2, TInt, $Heap);
            ##a#2 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#2, TInt, $Heap);
            ##b#2 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#2, TInt, $Heap);
            assert {:id "id460"} {:subsumption 0} ##a#2 > 0;
            assert {:id "id461"} {:subsumption 0} ##b#2 > 0;
            assume _module.__default.DividesBoth#canCall(d#1, a#0, b#0);
        }

        // End Comprehension WF check
        assume (forall d#2: int :: 
          { _module.__default.DividesBoth(d#2, a#0, b#0) } 
          _module.__default.DividesBoth#canCall(d#2, a#0, b#0));
        assert {:id "id462"} (exists d#2: int :: 
          { _module.__default.DividesBoth(d#2, a#0, b#0) } 
          _module.__default.DividesBoth(d#2, a#0, b#0));
        assume false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(230,3)
    // Begin Comprehension WF check
    havoc d#3;
    if (true)
    {
        ##d#3 := d#3;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#3, TInt, $Heap);
        ##a#3 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#3, TInt, $Heap);
        ##b#3 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#3, TInt, $Heap);
        assume {:id "id463"} {:subsumption 0} ##a#3 > 0;
        assume {:id "id464"} {:subsumption 0} ##b#3 > 0;
        assume _module.__default.DividesBoth#canCall(d#3, a#0, b#0);
    }

    // End Comprehension WF check
    assume (forall d#2: int :: 
      { _module.__default.DividesBoth(d#2, a#0, b#0) } 
      _module.__default.DividesBoth#canCall(d#2, a#0, b#0));
    assume {:id "id465"} (exists d#2: int :: 
      { _module.__default.DividesBoth(d#2, a#0, b#0) } 
      _module.__default.DividesBoth(d#2, a#0, b#0));
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(239,5)
    havoc d#4;
    if (true)
    {
        ##d#4 := d#4;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#4, TInt, $Heap);
        ##a#4 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#4, TInt, $Heap);
        ##b#4 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#4, TInt, $Heap);
        assert {:id "id466"} {:subsumption 0} ##a#4 > 0;
        assert {:id "id467"} {:subsumption 0} ##b#4 > 0;
        assume _module.__default.DividesBoth#canCall(d#4, a#0, b#0);
        assume _module.__default.DividesBoth#canCall(d#4, a#0, b#0);
    }

    assert {:id "id468"} ($Is(LitInt(0), TInt) && _module.__default.DividesBoth(LitInt(0), a#0, b#0))
       || (exists $as#d0#0: int :: _module.__default.DividesBoth($as#d0#0, a#0, b#0));
    havoc d#0;
    assume {:id "id469"} _module.__default.DividesBoth(d#0, a#0, b#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(240,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##0 := d#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    call {:id "id470"} Call$$_module.__default.DividesUpperBound(d##0, a##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(241,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##1 := d#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := b#0;
    call {:id "id471"} Call$$_module.__default.DividesUpperBound(d##1, a##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(242,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := a#0 + b#0 - Mul(LitInt(2), d#0);
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0 ==> _module.__default.DividesBoth#canCall(d#0, a#0, b#0);
      invariant {:id "id475"} $w$loop#0
         ==> 
        _module.__default.DividesBoth#canCall(d#0, a#0, b#0)
         ==> _module.__default.DividesBoth(d#0, a#0, b#0) || d#0 > 0;
      invariant {:id "id476"} $w$loop#0
         ==> 
        _module.__default.DividesBoth#canCall(d#0, a#0, b#0)
         ==> _module.__default.DividesBoth(d#0, a#0, b#0)
           || _module.__default.Divides(reveal__module._default.Divides, d#0, a#0);
      invariant {:id "id477"} $w$loop#0
         ==> 
        _module.__default.DividesBoth#canCall(d#0, a#0, b#0)
         ==> _module.__default.DividesBoth(d#0, a#0, b#0)
           || _module.__default.Divides(reveal__module._default.Divides, d#0, b#0);
      free invariant {:id "id478"} $w$loop#0
         ==> _module.__default.DividesBoth#canCall(d#0, a#0, b#0)
           && 
          _module.__default.DividesBoth(d#0, a#0, b#0)
           && 
          d#0 > 0
           && _module.__default.Divides(reveal__module._default.Divides, d#0, a#0)
           && _module.__default.Divides(reveal__module._default.Divides, d#0, b#0);
      free invariant true;
      invariant {:id "id480"} $w$loop#0 ==> d#0 <= a#0;
      invariant {:id "id481"} $w$loop#0 ==> d#0 <= b#0;
      free invariant $PreLoopHeap$loop#0 == $Heap;
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant a#0 + b#0 - Mul(LitInt(2), d#0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            ##d#5 := d#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#5, TInt, $Heap);
            ##a#5 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#5, TInt, $Heap);
            ##b#5 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#5, TInt, $Heap);
            assert {:id "id472"} {:subsumption 0} ##a#5 > 0;
            assert {:id "id473"} {:subsumption 0} ##b#5 > 0;
            assume _module.__default.DividesBoth#canCall(d#0, a#0, b#0);
            assume _module.__default.DividesBoth#canCall(d#0, a#0, b#0);
            assume {:id "id474"} _module.__default.DividesBoth(d#0, a#0, b#0);
            if (d#0 <= a#0)
            {
            }

            assume true;
            assume {:id "id479"} d#0 <= a#0 && d#0 <= b#0;
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        $decr$loop#00 := a#0 + b#0 - Mul(LitInt(2), d#0);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(247,5)
        // Begin Comprehension WF check
        havoc k#1_0;
        if (true)
        {
            ##d#1_0 := k#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#1_0, TInt, $Heap);
            ##a#1_0 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0, TInt, $Heap);
            ##b#1_0 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0, TInt, $Heap);
            assert {:id "id482"} {:subsumption 0} ##a#1_0 > 0;
            assert {:id "id483"} {:subsumption 0} ##b#1_0 > 0;
            assume ##a#1_0 > 0 && ##b#1_0 > 0;
            assume _module.__default.DividesBoth#canCall(k#1_0, a#0, b#0);
            if (_module.__default.DividesBoth(k#1_0, a#0, b#0))
            {
            }
        }

        // End Comprehension WF check
        assume (forall k#1_1: int :: 
          { _module.__default.DividesBoth(k#1_1, a#0, b#0) } 
          _module.__default.DividesBoth#canCall(k#1_1, a#0, b#0));
        if ((exists k#1_1: int :: 
          { _module.__default.DividesBoth(k#1_1, a#0, b#0) } 
          _module.__default.DividesBoth(k#1_1, a#0, b#0) && k#1_1 > d#0))
        {
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(248,13)
            havoc k#1_0_1;
            if (true)
            {
                ##d#1_0_0 := k#1_0_1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##d#1_0_0, TInt, $Heap);
                ##a#1_0_0 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#1_0_0, TInt, $Heap);
                ##b#1_0_0 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#1_0_0, TInt, $Heap);
                assert {:id "id484"} {:subsumption 0} ##a#1_0_0 > 0;
                assert {:id "id485"} {:subsumption 0} ##b#1_0_0 > 0;
                assume _module.__default.DividesBoth#canCall(k#1_0_1, a#0, b#0);
                if (_module.__default.DividesBoth(k#1_0_1, a#0, b#0))
                {
                }

                assume _module.__default.DividesBoth#canCall(k#1_0_1, a#0, b#0);
            }

            assert {:id "id486"} ($Is(d#0 + 1, TInt)
                 && 
                _module.__default.DividesBoth(d#0 + 1, a#0, b#0)
                 && d#0 + 1 > d#0)
               || 
              ($Is(LitInt(0), TInt)
                 && 
                _module.__default.DividesBoth(LitInt(0), a#0, b#0)
                 && 0 > d#0)
               || (exists $as#k1_0_0#1_0_0: int :: 
                _module.__default.DividesBoth($as#k1_0_0#1_0_0, a#0, b#0)
                   && $as#k1_0_0#1_0_0 > d#0);
            havoc k#1_0_0;
            assume {:id "id487"} _module.__default.DividesBoth(k#1_0_0, a#0, b#0) && k#1_0_0 > d#0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(249,9)
            assume true;
            assume true;
            d#0 := k#1_0_0;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(250,7)
            ##d#1_0_1 := d#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#1_0_1, TInt, $Heap);
            ##a#1_0_1 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_1, TInt, $Heap);
            assert {:id "id489"} {:subsumption 0} ##d#1_0_1 > 0;
            assert {:id "id490"} {:subsumption 0} ##a#1_0_1 > 0;
            assume _module.__default.Divides#canCall(d#0, a#0);
            assume _module.__default.Divides#canCall(d#0, a#0);
            assert {:id "id491"} _module.__default.Divides(reveal__module._default.Divides, d#0, a#0);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(251,24)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            d##1_0_0 := d#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##1_0_0 := a#0;
            call {:id "id492"} Call$$_module.__default.DividesUpperBound(d##1_0_0, a##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(252,7)
            assume true;
            assert {:id "id493"} d#0 <= a#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(253,24)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            d##1_0_1 := d#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##1_0_1 := b#0;
            call {:id "id494"} Call$$_module.__default.DividesUpperBound(d##1_0_1, a##1_0_1);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(254,7)
            assume true;
            assert {:id "id495"} d#0 <= b#0;
        }
        else
        {
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(256,7)
            return;
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(242,3)
        assert {:id "id496"} 0 <= $decr$loop#00 || a#0 + b#0 - Mul(LitInt(2), d#0) == $decr$loop#00;
        assert {:id "id497"} a#0 + b#0 - Mul(LitInt(2), d#0) < $decr$loop#00;
        assume _module.__default.DividesBoth#canCall(d#0, a#0, b#0);
    }
}



procedure {:verboseName "OneDividesAnything (well-formedness)"} CheckWellFormed$$_module.__default.OneDividesAnything(a#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OneDividesAnything (well-formedness)"} CheckWellFormed$$_module.__default.OneDividesAnything(a#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##d#0: int;
  var ##a#0: int;


    // AddMethodImpl: OneDividesAnything, CheckWellFormed$$_module.__default.OneDividesAnything
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id498"} a#0 > 0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##d#0 := LitInt(1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, TInt, $Heap);
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    assert {:id "id499"} {:subsumption 0} ##d#0 > 0;
    assert {:id "id500"} {:subsumption 0} ##a#0 > 0;
    assume ##d#0 > 0 && ##a#0 > 0;
    assume _module.__default.Divides#canCall(LitInt(1), a#0);
    assume {:id "id501"} _module.__default.Divides(reveal__module._default.Divides, LitInt(1), a#0);
}



procedure {:verboseName "OneDividesAnything (call)"} Call$$_module.__default.OneDividesAnything(a#0: int);
  // user-defined preconditions
  requires {:id "id502"} a#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Divides#canCall(LitInt(1), a#0);
  ensures {:id "id503"} _module.__default.Divides(reveal__module._default.Divides, LitInt(1), a#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "OneDividesAnything (correctness)"} Impl$$_module.__default.OneDividesAnything(a#0: int) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id504"} a#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Divides#canCall(LitInt(1), a#0);
  ensures {:id "id505"} _module.__default.Divides(reveal__module._default.Divides, LitInt(1), a#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OneDividesAnything (correctness)"} Impl$$_module.__default.OneDividesAnything(a#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##d#1: int;
  var ##a#1: int;

    // AddMethodImpl: OneDividesAnything, Impl$$_module.__default.OneDividesAnything
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(265,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(265,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id506"} Call$$_module.__default.reveal__Divides();
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(266,3)
    ##n#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, TInt, $Heap);
    ##d#1 := LitInt(1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#1, TInt, $Heap);
    ##a#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, TInt, $Heap);
    assert {:id "id507"} {:subsumption 0} ##n#0 > 0;
    assert {:id "id508"} {:subsumption 0} ##d#1 > 0;
    assume _module.__default.MulTriple#canCall(a#0, LitInt(1), a#0);
    assume _module.__default.MulTriple#canCall(a#0, LitInt(1), a#0);
    assert {:id "id509"} {:subsumption 0} _module.__default.MulTriple#canCall(a#0, LitInt(1), a#0)
       ==> _module.__default.MulTriple(a#0, LitInt(1), a#0) || Mul(a#0, LitInt(1)) == a#0;
    assume {:id "id510"} _module.__default.MulTriple(a#0, LitInt(1), a#0);
}



procedure {:verboseName "GcdEqual (well-formedness)"} CheckWellFormed$$_module.__default.GcdEqual(a#0: int);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GcdEqual (well-formedness)"} CheckWellFormed$$_module.__default.GcdEqual(a#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: int;
  var ##b#0: int;


    // AddMethodImpl: GcdEqual, CheckWellFormed$$_module.__default.GcdEqual
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id511"} a#0 > 0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assert {:id "id512"} {:subsumption 0} ##a#0 > 0;
    assert {:id "id513"} {:subsumption 0} ##b#0 > 0;
    assume ##a#0 > 0 && ##b#0 > 0;
    assume _module.__default.Gcd#canCall(a#0, a#0);
    assume {:id "id514"} _module.__default.Gcd(a#0, a#0) == a#0;
}



procedure {:verboseName "GcdEqual (call)"} Call$$_module.__default.GcdEqual(a#0: int);
  // user-defined preconditions
  requires {:id "id515"} a#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Gcd#canCall(a#0, a#0);
  ensures {:id "id516"} _module.__default.Gcd(a#0, a#0) == a#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "GcdEqual (correctness)"} Impl$$_module.__default.GcdEqual(a#0: int) returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id517"} a#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Gcd#canCall(a#0, a#0);
  ensures {:id "id518"} _module.__default.Gcd(a#0, a#0) == a#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GcdEqual (correctness)"} Impl$$_module.__default.GcdEqual(a#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a##0: int;
  var ##d#0: int;
  var ##a#1: int;
  var d##0: int;
  var a##1: int;
  var ##d#1: int;
  var ##a#2: int;
  var ##b#1: int;
  var k#0: int;
  var ##a#3: int;
  var ##b#2: int;
  var ##d#2: int;
  var ##a#4: int;
  var ##b#3: int;
  var m#0: int;
  var ##d#3: int;
  var ##a#5: int;
  var ##b#4: int;
  var ##d#4: int;
  var ##a#6: int;
  var d##1: int;
  var a##2: int;

    // AddMethodImpl: GcdEqual, Impl$$_module.__default.GcdEqual
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(273,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    call {:id "id519"} Call$$_module.__default.DividesIdempotent(a##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(274,3)
    ##d#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, TInt, $Heap);
    ##a#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, TInt, $Heap);
    assert {:id "id520"} {:subsumption 0} ##d#0 > 0;
    assert {:id "id521"} {:subsumption 0} ##a#1 > 0;
    assume _module.__default.Divides#canCall(a#0, a#0);
    assume _module.__default.Divides#canCall(a#0, a#0);
    assert {:id "id522"} _module.__default.Divides(reveal__module._default.Divides, a#0, a#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(275,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := a#0;
    call {:id "id523"} Call$$_module.__default.DividesUpperBound(d##0, a##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(276,3)
    ##d#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#1, TInt, $Heap);
    ##a#2 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#2, TInt, $Heap);
    ##b#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TInt, $Heap);
    assert {:id "id524"} {:subsumption 0} ##a#2 > 0;
    assert {:id "id525"} {:subsumption 0} ##b#1 > 0;
    assume _module.__default.DividesBoth#canCall(a#0, a#0, a#0);
    assume _module.__default.DividesBoth#canCall(a#0, a#0, a#0);
    assert {:id "id526"} {:subsumption 0} _module.__default.DividesBoth#canCall(a#0, a#0, a#0)
       ==> _module.__default.DividesBoth(a#0, a#0, a#0) || a#0 > 0;
    assert {:id "id527"} {:subsumption 0} _module.__default.DividesBoth#canCall(a#0, a#0, a#0)
       ==> _module.__default.DividesBoth(a#0, a#0, a#0)
         || _module.__default.Divides(reveal__module._default.Divides, a#0, a#0);
    assert {:id "id528"} {:subsumption 0} _module.__default.DividesBoth#canCall(a#0, a#0, a#0)
       ==> _module.__default.DividesBoth(a#0, a#0, a#0)
         || _module.__default.Divides(reveal__module._default.Divides, a#0, a#0);
    assume {:id "id529"} _module.__default.DividesBoth(a#0, a#0, a#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(278,9)
    assume true;
    ##a#3 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#3, TInt, $Heap);
    ##b#2 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TInt, $Heap);
    assert {:id "id530"} {:subsumption 0} ##a#3 > 0;
    assert {:id "id531"} {:subsumption 0} ##b#2 > 0;
    assume ##a#3 > 0 && ##b#2 > 0;
    assume _module.__default.Gcd#canCall(a#0, a#0);
    assume _module.__default.Gcd#canCall(a#0, a#0);
    k#0 := _module.__default.Gcd(a#0, a#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(279,3)
    if (k#0 > 0)
    {
        ##d#2 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#2, TInt, $Heap);
        ##a#4 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#4, TInt, $Heap);
        ##b#3 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#3, TInt, $Heap);
        assert {:id "id533"} {:subsumption 0} ##a#4 > 0;
        assert {:id "id534"} {:subsumption 0} ##b#3 > 0;
        assume _module.__default.DividesBoth#canCall(k#0, a#0, a#0);
    }

    assume k#0 > 0 ==> _module.__default.DividesBoth#canCall(k#0, a#0, a#0);
    assert {:id "id535"} {:subsumption 0} k#0 > 0;
    assert {:id "id536"} {:subsumption 0} _module.__default.DividesBoth#canCall(k#0, a#0, a#0)
       ==> _module.__default.DividesBoth(k#0, a#0, a#0) || k#0 > 0;
    assert {:id "id537"} {:subsumption 0} _module.__default.DividesBoth#canCall(k#0, a#0, a#0)
       ==> _module.__default.DividesBoth(k#0, a#0, a#0)
         || _module.__default.Divides(reveal__module._default.Divides, k#0, a#0);
    assert {:id "id538"} {:subsumption 0} _module.__default.DividesBoth#canCall(k#0, a#0, a#0)
       ==> _module.__default.DividesBoth(k#0, a#0, a#0)
         || _module.__default.Divides(reveal__module._default.Divides, k#0, a#0);
    assume {:id "id539"} k#0 > 0 && _module.__default.DividesBoth(k#0, a#0, a#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(280,3)
    // Begin Comprehension WF check
    havoc m#0;
    if (true)
    {
        if (m#0 > 0)
        {
            ##d#3 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#3, TInt, $Heap);
            ##a#5 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#5, TInt, $Heap);
            ##b#4 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#4, TInt, $Heap);
            assert {:id "id540"} {:subsumption 0} ##a#5 > 0;
            assert {:id "id541"} {:subsumption 0} ##b#4 > 0;
            assume _module.__default.DividesBoth#canCall(m#0, a#0, a#0);
        }

        if (m#0 > 0 && _module.__default.DividesBoth(m#0, a#0, a#0))
        {
        }
    }

    // End Comprehension WF check
    assume (forall m#1: int :: 
      { _module.__default.DividesBoth(m#1, a#0, a#0) } 
      m#1 > 0 ==> _module.__default.DividesBoth#canCall(m#1, a#0, a#0));
    assert {:id "id542"} (forall m#1: int :: 
      { _module.__default.DividesBoth(m#1, a#0, a#0) } 
      m#1 > 0 && _module.__default.DividesBoth(m#1, a#0, a#0) ==> m#1 <= k#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(281,3)
    ##d#4 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#4, TInt, $Heap);
    ##a#6 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#6, TInt, $Heap);
    assert {:id "id543"} {:subsumption 0} ##d#4 > 0;
    assert {:id "id544"} {:subsumption 0} ##a#6 > 0;
    assume _module.__default.Divides#canCall(k#0, a#0);
    assume _module.__default.Divides#canCall(k#0, a#0);
    assert {:id "id545"} _module.__default.Divides(reveal__module._default.Divides, k#0, a#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(282,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##1 := k#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##2 := a#0;
    call {:id "id546"} Call$$_module.__default.DividesUpperBound(d##1, a##2);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "DividesIdempotent (well-formedness)"} CheckWellFormed$$_module.__default.DividesIdempotent(a#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DividesIdempotent (well-formedness)"} CheckWellFormed$$_module.__default.DividesIdempotent(a#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##d#0: int;
  var ##a#0: int;


    // AddMethodImpl: DividesIdempotent, CheckWellFormed$$_module.__default.DividesIdempotent
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id547"} a#0 > 0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##d#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, TInt, $Heap);
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    assert {:id "id548"} {:subsumption 0} ##d#0 > 0;
    assert {:id "id549"} {:subsumption 0} ##a#0 > 0;
    assume ##d#0 > 0 && ##a#0 > 0;
    assume _module.__default.Divides#canCall(a#0, a#0);
    assume {:id "id550"} _module.__default.Divides(reveal__module._default.Divides, a#0, a#0);
}



procedure {:verboseName "DividesIdempotent (call)"} Call$$_module.__default.DividesIdempotent(a#0: int);
  // user-defined preconditions
  requires {:id "id551"} a#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Divides#canCall(a#0, a#0);
  ensures {:id "id552"} _module.__default.Divides(reveal__module._default.Divides, a#0, a#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "DividesIdempotent (correctness)"} Impl$$_module.__default.DividesIdempotent(a#0: int) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id553"} a#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Divides#canCall(a#0, a#0);
  ensures {:id "id554"} _module.__default.Divides(reveal__module._default.Divides, a#0, a#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DividesIdempotent (correctness)"} Impl$$_module.__default.DividesIdempotent(a#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##d#1: int;
  var ##a#1: int;

    // AddMethodImpl: DividesIdempotent, Impl$$_module.__default.DividesIdempotent
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(289,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(289,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id555"} Call$$_module.__default.reveal__Divides();
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(290,3)
    ##n#0 := LitInt(1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, TInt, $Heap);
    ##d#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#1, TInt, $Heap);
    ##a#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, TInt, $Heap);
    assert {:id "id556"} {:subsumption 0} ##n#0 > 0;
    assert {:id "id557"} {:subsumption 0} ##d#1 > 0;
    assume _module.__default.MulTriple#canCall(LitInt(1), a#0, a#0);
    assume _module.__default.MulTriple#canCall(LitInt(1), a#0, a#0);
    assert {:id "id558"} {:subsumption 0} _module.__default.MulTriple#canCall(LitInt(1), a#0, a#0)
       ==> _module.__default.MulTriple(LitInt(1), a#0, a#0) || Mul(LitInt(1), a#0) == a#0;
    assume {:id "id559"} _module.__default.MulTriple(LitInt(1), a#0, a#0);
}



procedure {:verboseName "DividesUpperBound (well-formedness)"} CheckWellFormed$$_module.__default.DividesUpperBound(d#0: int, a#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DividesUpperBound (well-formedness)"} CheckWellFormed$$_module.__default.DividesUpperBound(d#0: int, a#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##d#0: int;
  var ##a#0: int;


    // AddMethodImpl: DividesUpperBound, CheckWellFormed$$_module.__default.DividesUpperBound
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id560"} d#0 > 0;
    assume {:id "id561"} a#0 > 0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    if (*)
    {
        ##d#0 := d#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#0, TInt, $Heap);
        ##a#0 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0, TInt, $Heap);
        assert {:id "id562"} {:subsumption 0} ##d#0 > 0;
        assert {:id "id563"} {:subsumption 0} ##a#0 > 0;
        assume ##d#0 > 0 && ##a#0 > 0;
        assume _module.__default.Divides#canCall(d#0, a#0);
        assume {:id "id564"} _module.__default.Divides(reveal__module._default.Divides, d#0, a#0);
        assume {:id "id565"} d#0 <= a#0;
    }
    else
    {
        assume {:id "id566"} _module.__default.Divides(reveal__module._default.Divides, d#0, a#0)
           ==> d#0 <= a#0;
    }
}



procedure {:verboseName "DividesUpperBound (call)"} Call$$_module.__default.DividesUpperBound(d#0: int, a#0: int);
  // user-defined preconditions
  requires {:id "id567"} d#0 > 0;
  requires {:id "id568"} a#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Divides#canCall(d#0, a#0);
  ensures {:id "id569"} _module.__default.Divides(reveal__module._default.Divides, d#0, a#0)
     ==> d#0 <= a#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "DividesUpperBound (correctness)"} Impl$$_module.__default.DividesUpperBound(d#0: int, a#0: int) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id570"} d#0 > 0;
  requires {:id "id571"} a#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Divides#canCall(d#0, a#0);
  ensures {:id "id572"} _module.__default.Divides(reveal__module._default.Divides, d#0, a#0)
     ==> d#0 <= a#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DividesUpperBound (correctness)"} Impl$$_module.__default.DividesUpperBound(d#0: int, a#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: DividesUpperBound, Impl$$_module.__default.DividesUpperBound
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(297,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(297,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id573"} Call$$_module.__default.reveal__Divides();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Symmetry (well-formedness)"} CheckWellFormed$$_module.__default.Symmetry(a#0: int, b#0: int);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Symmetry (well-formedness)"} CheckWellFormed$$_module.__default.Symmetry(a#0: int, b#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: int;
  var ##b#0: int;
  var ##a#1: int;
  var ##b#1: int;


    // AddMethodImpl: Symmetry, CheckWellFormed$$_module.__default.Symmetry
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id574"} a#0 > 0;
    assume {:id "id575"} b#0 > 0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assert {:id "id576"} {:subsumption 0} ##a#0 > 0;
    assert {:id "id577"} {:subsumption 0} ##b#0 > 0;
    assume ##a#0 > 0 && ##b#0 > 0;
    assume _module.__default.Gcd#canCall(a#0, b#0);
    ##a#1 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, TInt, $Heap);
    ##b#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TInt, $Heap);
    assert {:id "id578"} {:subsumption 0} ##a#1 > 0;
    assert {:id "id579"} {:subsumption 0} ##b#1 > 0;
    assume ##a#1 > 0 && ##b#1 > 0;
    assume _module.__default.Gcd#canCall(b#0, a#0);
    assume {:id "id580"} _module.__default.Gcd(a#0, b#0) == _module.__default.Gcd(b#0, a#0);
}



procedure {:verboseName "Symmetry (call)"} Call$$_module.__default.Symmetry(a#0: int, b#0: int);
  // user-defined preconditions
  requires {:id "id581"} a#0 > 0;
  requires {:id "id582"} b#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Gcd#canCall(a#0, b#0)
     && _module.__default.Gcd#canCall(b#0, a#0);
  ensures {:id "id583"} _module.__default.Gcd(a#0, b#0) == _module.__default.Gcd(b#0, a#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Symmetry (correctness)"} Impl$$_module.__default.Symmetry(a#0: int, b#0: int) returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id584"} a#0 > 0;
  requires {:id "id585"} b#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Gcd#canCall(a#0, b#0)
     && _module.__default.Gcd#canCall(b#0, a#0);
  ensures {:id "id586"} _module.__default.Gcd(a#0, b#0) == _module.__default.Gcd(b#0, a#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Symmetry (correctness)"} Impl$$_module.__default.Symmetry(a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var l#0: int;
  var $rhs#0: int;
  var ##a#2: int;
  var ##b#2: int;
  var $rhs#1: int;
  var ##a#3: int;
  var ##b#3: int;
  var ##d#0: int;
  var ##a#4: int;
  var ##b#4: int;
  var m#0: int;
  var ##d#1: int;
  var ##a#5: int;
  var ##b#5: int;
  var ##d#2: int;
  var ##a#6: int;
  var ##b#6: int;
  var m#2: int;
  var ##d#3: int;
  var ##a#7: int;
  var ##b#7: int;
  var ##d#4: int;
  var ##a#8: int;
  var ##b#8: int;
  var m#4: int;
  var ##d#5: int;
  var ##a#9: int;
  var ##b#9: int;
  var ##d#6: int;
  var ##a#10: int;
  var ##b#10: int;

    // AddMethodImpl: Symmetry, Impl$$_module.__default.Symmetry
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(304,12)
    assume true;
    assume true;
    ##a#2 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#2, TInt, $Heap);
    ##b#2 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TInt, $Heap);
    assert {:id "id587"} {:subsumption 0} ##a#2 > 0;
    assert {:id "id588"} {:subsumption 0} ##b#2 > 0;
    assume ##a#2 > 0 && ##b#2 > 0;
    assume _module.__default.Gcd#canCall(a#0, b#0);
    assume _module.__default.Gcd#canCall(a#0, b#0);
    $rhs#0 := _module.__default.Gcd(a#0, b#0);
    ##a#3 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#3, TInt, $Heap);
    ##b#3 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, TInt, $Heap);
    assert {:id "id590"} {:subsumption 0} ##a#3 > 0;
    assert {:id "id591"} {:subsumption 0} ##b#3 > 0;
    assume ##a#3 > 0 && ##b#3 > 0;
    assume _module.__default.Gcd#canCall(b#0, a#0);
    assume _module.__default.Gcd#canCall(b#0, a#0);
    $rhs#1 := _module.__default.Gcd(b#0, a#0);
    k#0 := $rhs#0;
    l#0 := $rhs#1;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(305,3)
    ##d#0 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, TInt, $Heap);
    ##a#4 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#4, TInt, $Heap);
    ##b#4 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, TInt, $Heap);
    assert {:id "id595"} {:subsumption 0} ##a#4 > 0;
    assert {:id "id596"} {:subsumption 0} ##b#4 > 0;
    assume _module.__default.DividesBoth#canCall(k#0, a#0, b#0);
    if (_module.__default.DividesBoth(k#0, a#0, b#0))
    {
        // Begin Comprehension WF check
        havoc m#0;
        if (true)
        {
            ##d#1 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#1, TInt, $Heap);
            ##a#5 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#5, TInt, $Heap);
            ##b#5 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#5, TInt, $Heap);
            assert {:id "id597"} {:subsumption 0} ##a#5 > 0;
            assert {:id "id598"} {:subsumption 0} ##b#5 > 0;
            assume _module.__default.DividesBoth#canCall(m#0, a#0, b#0);
            if (_module.__default.DividesBoth(m#0, a#0, b#0))
            {
            }
        }

        // End Comprehension WF check
    }

    assume _module.__default.DividesBoth#canCall(k#0, a#0, b#0)
       && (_module.__default.DividesBoth(k#0, a#0, b#0)
         ==> (forall m#1: int :: 
          { _module.__default.DividesBoth(m#1, a#0, b#0) } 
          _module.__default.DividesBoth#canCall(m#1, a#0, b#0)));
    assert {:id "id599"} {:subsumption 0} _module.__default.DividesBoth#canCall(k#0, a#0, b#0)
       ==> _module.__default.DividesBoth(k#0, a#0, b#0) || k#0 > 0;
    assert {:id "id600"} {:subsumption 0} _module.__default.DividesBoth#canCall(k#0, a#0, b#0)
       ==> _module.__default.DividesBoth(k#0, a#0, b#0)
         || _module.__default.Divides(reveal__module._default.Divides, k#0, a#0);
    assert {:id "id601"} {:subsumption 0} _module.__default.DividesBoth#canCall(k#0, a#0, b#0)
       ==> _module.__default.DividesBoth(k#0, a#0, b#0)
         || _module.__default.Divides(reveal__module._default.Divides, k#0, b#0);
    assert {:id "id602"} {:subsumption 0} (forall m#1: int :: 
      { _module.__default.DividesBoth(m#1, a#0, b#0) } 
      _module.__default.DividesBoth(m#1, a#0, b#0) ==> m#1 <= k#0);
    assume {:id "id603"} _module.__default.DividesBoth(k#0, a#0, b#0)
       && (forall m#1: int :: 
        { _module.__default.DividesBoth(m#1, a#0, b#0) } 
        _module.__default.DividesBoth(m#1, a#0, b#0) ==> m#1 <= k#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(306,3)
    ##d#2 := l#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#2, TInt, $Heap);
    ##a#6 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#6, TInt, $Heap);
    ##b#6 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#6, TInt, $Heap);
    assert {:id "id604"} {:subsumption 0} ##a#6 > 0;
    assert {:id "id605"} {:subsumption 0} ##b#6 > 0;
    assume _module.__default.DividesBoth#canCall(l#0, b#0, a#0);
    if (_module.__default.DividesBoth(l#0, b#0, a#0))
    {
        // Begin Comprehension WF check
        havoc m#2;
        if (true)
        {
            ##d#3 := m#2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#3, TInt, $Heap);
            ##a#7 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#7, TInt, $Heap);
            ##b#7 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#7, TInt, $Heap);
            assert {:id "id606"} {:subsumption 0} ##a#7 > 0;
            assert {:id "id607"} {:subsumption 0} ##b#7 > 0;
            assume _module.__default.DividesBoth#canCall(m#2, b#0, a#0);
            if (_module.__default.DividesBoth(m#2, b#0, a#0))
            {
            }
        }

        // End Comprehension WF check
    }

    assume _module.__default.DividesBoth#canCall(l#0, b#0, a#0)
       && (_module.__default.DividesBoth(l#0, b#0, a#0)
         ==> (forall m#3: int :: 
          { _module.__default.DividesBoth(m#3, b#0, a#0) } 
          _module.__default.DividesBoth#canCall(m#3, b#0, a#0)));
    assert {:id "id608"} {:subsumption 0} _module.__default.DividesBoth#canCall(l#0, b#0, a#0)
       ==> _module.__default.DividesBoth(l#0, b#0, a#0) || l#0 > 0;
    assert {:id "id609"} {:subsumption 0} _module.__default.DividesBoth#canCall(l#0, b#0, a#0)
       ==> _module.__default.DividesBoth(l#0, b#0, a#0)
         || _module.__default.Divides(reveal__module._default.Divides, l#0, b#0);
    assert {:id "id610"} {:subsumption 0} _module.__default.DividesBoth#canCall(l#0, b#0, a#0)
       ==> _module.__default.DividesBoth(l#0, b#0, a#0)
         || _module.__default.Divides(reveal__module._default.Divides, l#0, a#0);
    assert {:id "id611"} {:subsumption 0} (forall m#3: int :: 
      { _module.__default.DividesBoth(m#3, b#0, a#0) } 
      _module.__default.DividesBoth(m#3, b#0, a#0) ==> m#3 <= l#0);
    assume {:id "id612"} _module.__default.DividesBoth(l#0, b#0, a#0)
       && (forall m#3: int :: 
        { _module.__default.DividesBoth(m#3, b#0, a#0) } 
        _module.__default.DividesBoth(m#3, b#0, a#0) ==> m#3 <= l#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(307,3)
    ##d#4 := l#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#4, TInt, $Heap);
    ##a#8 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#8, TInt, $Heap);
    ##b#8 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#8, TInt, $Heap);
    assert {:id "id613"} {:subsumption 0} ##a#8 > 0;
    assert {:id "id614"} {:subsumption 0} ##b#8 > 0;
    assume _module.__default.DividesBoth#canCall(l#0, a#0, b#0);
    assume _module.__default.DividesBoth#canCall(l#0, a#0, b#0);
    assert {:id "id615"} {:subsumption 0} _module.__default.DividesBoth#canCall(l#0, a#0, b#0)
       ==> _module.__default.DividesBoth(l#0, a#0, b#0) || l#0 > 0;
    assert {:id "id616"} {:subsumption 0} _module.__default.DividesBoth#canCall(l#0, a#0, b#0)
       ==> _module.__default.DividesBoth(l#0, a#0, b#0)
         || _module.__default.Divides(reveal__module._default.Divides, l#0, a#0);
    assert {:id "id617"} {:subsumption 0} _module.__default.DividesBoth#canCall(l#0, a#0, b#0)
       ==> _module.__default.DividesBoth(l#0, a#0, b#0)
         || _module.__default.Divides(reveal__module._default.Divides, l#0, b#0);
    assume {:id "id618"} _module.__default.DividesBoth(l#0, a#0, b#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(308,3)
    // Begin Comprehension WF check
    havoc m#4;
    if (true)
    {
        ##d#5 := m#4;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#5, TInt, $Heap);
        ##a#9 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#9, TInt, $Heap);
        ##b#9 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#9, TInt, $Heap);
        assert {:id "id619"} {:subsumption 0} ##a#9 > 0;
        assert {:id "id620"} {:subsumption 0} ##b#9 > 0;
        assume _module.__default.DividesBoth#canCall(m#4, b#0, a#0);
        if (_module.__default.DividesBoth(m#4, b#0, a#0))
        {
            if (m#4 <= l#0)
            {
                ##d#6 := m#4;
                // assume allocatedness for argument to function
                assume $IsAlloc(##d#6, TInt, $Heap);
                ##a#10 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#10, TInt, $Heap);
                ##b#10 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#10, TInt, $Heap);
                assert {:id "id621"} {:subsumption 0} ##a#10 > 0;
                assert {:id "id622"} {:subsumption 0} ##b#10 > 0;
                assume _module.__default.DividesBoth#canCall(m#4, a#0, b#0);
            }
        }
    }

    // End Comprehension WF check
    assume (forall m#5: int :: 
      { _module.__default.DividesBoth(m#5, a#0, b#0) } 
        { _module.__default.DividesBoth(m#5, b#0, a#0) } 
      _module.__default.DividesBoth#canCall(m#5, b#0, a#0)
         && (
          (_module.__default.DividesBoth(m#5, b#0, a#0)
           ==> m#5 <= l#0)
           ==> _module.__default.DividesBoth#canCall(m#5, b#0, a#0)
             && (_module.__default.DividesBoth(m#5, b#0, a#0)
               ==> _module.__default.DividesBoth#canCall(m#5, a#0, b#0))));
    assert {:id "id623"} (forall m#5: int :: 
      { _module.__default.DividesBoth(m#5, a#0, b#0) } 
        { _module.__default.DividesBoth(m#5, b#0, a#0) } 
      (_module.__default.DividesBoth(m#5, b#0, a#0) ==> m#5 <= l#0)
         && (_module.__default.DividesBoth(m#5, b#0, a#0)
           ==> _module.__default.DividesBoth(m#5, a#0, b#0)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(309,3)
    assume true;
    assert {:id "id624"} k#0 == l#0;
}



procedure {:verboseName "GcdDecrease (well-formedness)"} CheckWellFormed$$_module.__default.GcdDecrease(a#0: int, b#0: int);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GcdDecrease (well-formedness)"} CheckWellFormed$$_module.__default.GcdDecrease(a#0: int, b#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: int;
  var ##b#0: int;
  var ##a#1: int;
  var ##b#1: int;


    // AddMethodImpl: GcdDecrease, CheckWellFormed$$_module.__default.GcdDecrease
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (a#0 > b#0)
    {
    }

    assume {:id "id625"} a#0 > b#0 && b#0 > 0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assert {:id "id626"} {:subsumption 0} ##a#0 > 0;
    assert {:id "id627"} {:subsumption 0} ##b#0 > 0;
    assume ##a#0 > 0 && ##b#0 > 0;
    assume _module.__default.Gcd#canCall(a#0, b#0);
    ##a#1 := a#0 - b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, TInt, $Heap);
    ##b#1 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TInt, $Heap);
    assert {:id "id628"} {:subsumption 0} ##a#1 > 0;
    assert {:id "id629"} {:subsumption 0} ##b#1 > 0;
    assume ##a#1 > 0 && ##b#1 > 0;
    assume _module.__default.Gcd#canCall(a#0 - b#0, b#0);
    assume {:id "id630"} _module.__default.Gcd(a#0, b#0) == _module.__default.Gcd(a#0 - b#0, b#0);
}



procedure {:verboseName "GcdDecrease (call)"} Call$$_module.__default.GcdDecrease(a#0: int, b#0: int);
  // user-defined preconditions
  requires {:id "id631"} a#0 > b#0;
  requires {:id "id632"} b#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Gcd#canCall(a#0, b#0)
     && _module.__default.Gcd#canCall(a#0 - b#0, b#0);
  ensures {:id "id633"} _module.__default.Gcd(a#0, b#0) == _module.__default.Gcd(a#0 - b#0, b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "GcdDecrease (correctness)"} Impl$$_module.__default.GcdDecrease(a#0: int, b#0: int) returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id634"} a#0 > b#0;
  requires {:id "id635"} b#0 > 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Gcd#canCall(a#0, b#0)
     && _module.__default.Gcd#canCall(a#0 - b#0, b#0);
  ensures {:id "id636"} _module.__default.Gcd(a#0, b#0) == _module.__default.Gcd(a#0 - b#0, b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GcdDecrease (correctness)"} Impl$$_module.__default.GcdDecrease(a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var ##a#2: int;
  var ##b#2: int;
  var ##d#0: int;
  var ##a#3: int;
  var ##b#3: int;
  var m#0: int;
  var mm#0: int;
  var ##d#1: int;
  var ##a#4: int;
  var ##b#4: int;
  var n#0: int;
  var $rhs##0: int;
  var d##0: int;
  var a##0: int;
  var p#0: int;
  var $rhs##1: int;
  var d##1: int;
  var a##1: int;
  var n##0: int;
  var d##2: int;
  var a##2: int;
  var ##d#2: int;
  var ##a#5: int;
  var ##d#3: int;
  var ##a#6: int;
  var ##b#5: int;
  var l#0: int;
  var ##a#7: int;
  var ##b#6: int;
  var m#2: int;
  var ##d#4: int;
  var ##a#8: int;
  var ##b#7: int;
  var n'#0: int;
  var $rhs##2: int;
  var d##3: int;
  var a##3: int;
  var p'#0: int;
  var $rhs##3: int;
  var d##4: int;
  var a##4: int;
  var n##1: int;
  var d##5: int;
  var a##5: int;
  var ##d#5: int;
  var ##a#9: int;
  var ##d#6: int;
  var ##a#10: int;
  var ##b#8: int;

    // AddMethodImpl: GcdDecrease, Impl$$_module.__default.GcdDecrease
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(316,9)
    assume true;
    ##a#2 := a#0 - b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#2, TInt, $Heap);
    ##b#2 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TInt, $Heap);
    assert {:id "id637"} {:subsumption 0} ##a#2 > 0;
    assert {:id "id638"} {:subsumption 0} ##b#2 > 0;
    assume ##a#2 > 0 && ##b#2 > 0;
    assume _module.__default.Gcd#canCall(a#0 - b#0, b#0);
    assume _module.__default.Gcd#canCall(a#0 - b#0, b#0);
    k#0 := _module.__default.Gcd(a#0 - b#0, b#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(317,3)
    ##d#0 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, TInt, $Heap);
    ##a#3 := a#0 - b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#3, TInt, $Heap);
    ##b#3 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, TInt, $Heap);
    assert {:id "id640"} {:subsumption 0} ##a#3 > 0;
    assert {:id "id641"} {:subsumption 0} ##b#3 > 0;
    assume _module.__default.DividesBoth#canCall(k#0, a#0 - b#0, b#0);
    if (_module.__default.DividesBoth(k#0, a#0 - b#0, b#0))
    {
        // Begin Comprehension WF check
        havoc m#0;
        havoc mm#0;
        if (true)
        {
            if (mm#0 == a#0 - b#0)
            {
                ##d#1 := m#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##d#1, TInt, $Heap);
                ##a#4 := mm#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#4, TInt, $Heap);
                ##b#4 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#4, TInt, $Heap);
                assert {:id "id642"} {:subsumption 0} ##a#4 > 0;
                assert {:id "id643"} {:subsumption 0} ##b#4 > 0;
                assume _module.__default.DividesBoth#canCall(m#0, mm#0, b#0);
                if (_module.__default.DividesBoth(m#0, mm#0, b#0))
                {
                }
            }
        }

        // End Comprehension WF check
    }

    assume _module.__default.DividesBoth#canCall(k#0, a#0 - b#0, b#0)
       && (_module.__default.DividesBoth(k#0, a#0 - b#0, b#0)
         ==> (forall m#1: int, mm#1: int :: 
          { _module.__default.DividesBoth(m#1, mm#1, b#0) } 
          mm#1 == a#0 - b#0 ==> _module.__default.DividesBoth#canCall(m#1, mm#1, b#0)));
    assert {:id "id644"} {:subsumption 0} _module.__default.DividesBoth#canCall(k#0, a#0 - b#0, b#0)
       ==> _module.__default.DividesBoth(k#0, a#0 - b#0, b#0) || k#0 > 0;
    assert {:id "id645"} {:subsumption 0} _module.__default.DividesBoth#canCall(k#0, a#0 - b#0, b#0)
       ==> _module.__default.DividesBoth(k#0, a#0 - b#0, b#0)
         || _module.__default.Divides(reveal__module._default.Divides, k#0, a#0 - b#0);
    assert {:id "id646"} {:subsumption 0} _module.__default.DividesBoth#canCall(k#0, a#0 - b#0, b#0)
       ==> _module.__default.DividesBoth(k#0, a#0 - b#0, b#0)
         || _module.__default.Divides(reveal__module._default.Divides, k#0, b#0);
    assert {:id "id647"} {:subsumption 0} (forall m#1: int, mm#1: int :: 
      { _module.__default.DividesBoth(m#1, mm#1, b#0) } 
      mm#1 == a#0 - b#0
         ==> 
        _module.__default.DividesBoth(m#1, mm#1, b#0)
         ==> m#1 <= k#0);
    assume {:id "id648"} _module.__default.DividesBoth(k#0, a#0 - b#0, b#0)
       && (forall m#1: int, mm#1: int :: 
        { _module.__default.DividesBoth(m#1, mm#1, b#0) } 
        mm#1 == a#0 - b#0
           ==> 
          _module.__default.DividesBoth(m#1, mm#1, b#0)
           ==> m#1 <= k#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(318,27)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##0 := k#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0 - b#0;
    call {:id "id649"} $rhs##0 := Call$$_module.__default.DividesProperty(d##0, a##0);
    // TrCallStmt: After ProcessCallStmt
    n#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(319,3)
    assume true;
    assert {:id "id651"} Mul(n#0, k#0) == a#0 - b#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(320,27)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##1 := k#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := b#0;
    call {:id "id652"} $rhs##1 := Call$$_module.__default.DividesProperty(d##1, a##1);
    // TrCallStmt: After ProcessCallStmt
    p#0 := $rhs##1;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(321,3)
    assume true;
    assert {:id "id654"} Mul(p#0, k#0) == b#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(323,3)
    assume true;
    assert {:id "id655"} Mul(n#0, k#0) + Mul(p#0, k#0) == a#0 - b#0 + b#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(324,3)
    assume true;
    assert {:id "id656"} Mul(n#0 + p#0, k#0) == a#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(326,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := n#0 + p#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##2 := k#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##2 := a#0;
    call {:id "id657"} Call$$_module.__default.MultipleDivides(n##0, d##2, a##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(327,3)
    ##d#2 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#2, TInt, $Heap);
    ##a#5 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#5, TInt, $Heap);
    assert {:id "id658"} {:subsumption 0} ##d#2 > 0;
    assert {:id "id659"} {:subsumption 0} ##a#5 > 0;
    assume _module.__default.Divides#canCall(k#0, a#0);
    assume _module.__default.Divides#canCall(k#0, a#0);
    assert {:id "id660"} _module.__default.Divides(reveal__module._default.Divides, k#0, a#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(328,3)
    ##d#3 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#3, TInt, $Heap);
    ##a#6 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#6, TInt, $Heap);
    ##b#5 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#5, TInt, $Heap);
    assert {:id "id661"} {:subsumption 0} ##a#6 > 0;
    assert {:id "id662"} {:subsumption 0} ##b#5 > 0;
    assume _module.__default.DividesBoth#canCall(k#0, a#0, b#0);
    assume _module.__default.DividesBoth#canCall(k#0, a#0, b#0);
    assert {:id "id663"} {:subsumption 0} _module.__default.DividesBoth#canCall(k#0, a#0, b#0)
       ==> _module.__default.DividesBoth(k#0, a#0, b#0) || k#0 > 0;
    assert {:id "id664"} {:subsumption 0} _module.__default.DividesBoth#canCall(k#0, a#0, b#0)
       ==> _module.__default.DividesBoth(k#0, a#0, b#0)
         || _module.__default.Divides(reveal__module._default.Divides, k#0, a#0);
    assert {:id "id665"} {:subsumption 0} _module.__default.DividesBoth#canCall(k#0, a#0, b#0)
       ==> _module.__default.DividesBoth(k#0, a#0, b#0)
         || _module.__default.Divides(reveal__module._default.Divides, k#0, b#0);
    assume {:id "id666"} _module.__default.DividesBoth(k#0, a#0, b#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(330,9)
    assume true;
    ##a#7 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#7, TInt, $Heap);
    ##b#6 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#6, TInt, $Heap);
    assert {:id "id667"} {:subsumption 0} ##a#7 > 0;
    assert {:id "id668"} {:subsumption 0} ##b#6 > 0;
    assume ##a#7 > 0 && ##b#6 > 0;
    assume _module.__default.Gcd#canCall(a#0, b#0);
    assume _module.__default.Gcd#canCall(a#0, b#0);
    l#0 := _module.__default.Gcd(a#0, b#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(331,3)
    // Begin Comprehension WF check
    havoc m#2;
    if (true)
    {
        ##d#4 := m#2;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#4, TInt, $Heap);
        ##a#8 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#8, TInt, $Heap);
        ##b#7 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#7, TInt, $Heap);
        assert {:id "id670"} {:subsumption 0} ##a#8 > 0;
        assert {:id "id671"} {:subsumption 0} ##b#7 > 0;
        assume _module.__default.DividesBoth#canCall(m#2, a#0, b#0);
        if (_module.__default.DividesBoth(m#2, a#0, b#0))
        {
        }
    }

    // End Comprehension WF check
    assume (forall m#3: int :: 
      { _module.__default.DividesBoth(m#3, a#0, b#0) } 
      _module.__default.DividesBoth#canCall(m#3, a#0, b#0));
    assert {:id "id672"} (forall m#3: int :: 
      { _module.__default.DividesBoth(m#3, a#0, b#0) } 
      _module.__default.DividesBoth(m#3, a#0, b#0) ==> m#3 <= l#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(332,3)
    assume true;
    assert {:id "id673"} k#0 <= l#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(334,28)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##3 := l#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##3 := a#0;
    call {:id "id674"} $rhs##2 := Call$$_module.__default.DividesProperty(d##3, a##3);
    // TrCallStmt: After ProcessCallStmt
    n'#0 := $rhs##2;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(335,28)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##4 := l#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##4 := b#0;
    call {:id "id676"} $rhs##3 := Call$$_module.__default.DividesProperty(d##4, a##4);
    // TrCallStmt: After ProcessCallStmt
    p'#0 := $rhs##3;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(336,3)
    assume true;
    assert {:id "id678"} Mul(n'#0, l#0) == a#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(337,3)
    assume true;
    assert {:id "id679"} Mul(p'#0, l#0) == b#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(338,3)
    assume true;
    assert {:id "id680"} Mul(n'#0, l#0) - Mul(p'#0, l#0) == a#0 - b#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(339,3)
    assume true;
    assert {:id "id681"} Mul(n'#0 - p'#0, l#0) == a#0 - b#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(340,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##1 := n'#0 - p'#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##5 := l#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##5 := a#0 - b#0;
    call {:id "id682"} Call$$_module.__default.MultipleDivides(n##1, d##5, a##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(341,3)
    ##d#5 := l#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#5, TInt, $Heap);
    ##a#9 := a#0 - b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#9, TInt, $Heap);
    assert {:id "id683"} {:subsumption 0} ##d#5 > 0;
    assert {:id "id684"} {:subsumption 0} ##a#9 > 0;
    assume _module.__default.Divides#canCall(l#0, a#0 - b#0);
    assume _module.__default.Divides#canCall(l#0, a#0 - b#0);
    assert {:id "id685"} _module.__default.Divides(reveal__module._default.Divides, l#0, a#0 - b#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(342,3)
    ##d#6 := l#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#6, TInt, $Heap);
    ##a#10 := a#0 - b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#10, TInt, $Heap);
    ##b#8 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#8, TInt, $Heap);
    assert {:id "id686"} {:subsumption 0} ##a#10 > 0;
    assert {:id "id687"} {:subsumption 0} ##b#8 > 0;
    assume _module.__default.DividesBoth#canCall(l#0, a#0 - b#0, b#0);
    assume _module.__default.DividesBoth#canCall(l#0, a#0 - b#0, b#0);
    assert {:id "id688"} {:subsumption 0} _module.__default.DividesBoth#canCall(l#0, a#0 - b#0, b#0)
       ==> _module.__default.DividesBoth(l#0, a#0 - b#0, b#0) || l#0 > 0;
    assert {:id "id689"} {:subsumption 0} _module.__default.DividesBoth#canCall(l#0, a#0 - b#0, b#0)
       ==> _module.__default.DividesBoth(l#0, a#0 - b#0, b#0)
         || _module.__default.Divides(reveal__module._default.Divides, l#0, a#0 - b#0);
    assert {:id "id690"} {:subsumption 0} _module.__default.DividesBoth#canCall(l#0, a#0 - b#0, b#0)
       ==> _module.__default.DividesBoth(l#0, a#0 - b#0, b#0)
         || _module.__default.Divides(reveal__module._default.Divides, l#0, b#0);
    assume {:id "id691"} _module.__default.DividesBoth(l#0, a#0 - b#0, b#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(343,3)
    assume true;
    assert {:id "id692"} l#0 <= k#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(345,3)
    assume true;
    assert {:id "id693"} k#0 == l#0;
}



procedure {:verboseName "MultipleDivides (well-formedness)"} CheckWellFormed$$_module.__default.MultipleDivides(n#0: int, d#0: int, a#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultipleDivides (well-formedness)"} CheckWellFormed$$_module.__default.MultipleDivides(n#0: int, d#0: int, a#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##d#0: int;
  var ##a#0: int;


    // AddMethodImpl: MultipleDivides, CheckWellFormed$$_module.__default.MultipleDivides
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id694"} n#0 > 0;
    assume {:id "id695"} d#0 > 0;
    assume {:id "id696"} Mul(n#0, d#0) == a#0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##d#0 := d#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, TInt, $Heap);
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    assert {:id "id697"} {:subsumption 0} ##d#0 > 0;
    assert {:id "id698"} {:subsumption 0} ##a#0 > 0;
    assume ##d#0 > 0 && ##a#0 > 0;
    assume _module.__default.Divides#canCall(d#0, a#0);
    assume {:id "id699"} _module.__default.Divides(reveal__module._default.Divides, d#0, a#0);
}



procedure {:verboseName "MultipleDivides (call)"} Call$$_module.__default.MultipleDivides(n#0: int, d#0: int, a#0: int);
  // user-defined preconditions
  requires {:id "id700"} n#0 > 0;
  requires {:id "id701"} d#0 > 0;
  requires {:id "id702"} Mul(n#0, d#0) == a#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Divides#canCall(d#0, a#0);
  ensures {:id "id703"} _module.__default.Divides(reveal__module._default.Divides, d#0, a#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "MultipleDivides (correctness)"} Impl$$_module.__default.MultipleDivides(n#0: int, d#0: int, a#0: int) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id704"} n#0 > 0;
  requires {:id "id705"} d#0 > 0;
  requires {:id "id706"} Mul(n#0, d#0) == a#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Divides#canCall(d#0, a#0);
  ensures {:id "id707"} _module.__default.Divides(reveal__module._default.Divides, d#0, a#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultipleDivides (correctness)"} Impl$$_module.__default.MultipleDivides(n#0: int, d#0: int, a#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##d#1: int;
  var ##a#1: int;

    // AddMethodImpl: MultipleDivides, Impl$$_module.__default.MultipleDivides
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(352,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(352,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id708"} Call$$_module.__default.reveal__Divides();
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(353,3)
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, TInt, $Heap);
    ##d#1 := d#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#1, TInt, $Heap);
    ##a#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, TInt, $Heap);
    assert {:id "id709"} {:subsumption 0} ##n#0 > 0;
    assert {:id "id710"} {:subsumption 0} ##d#1 > 0;
    assume _module.__default.MulTriple#canCall(n#0, d#0, a#0);
    assume _module.__default.MulTriple#canCall(n#0, d#0, a#0);
    assert {:id "id711"} {:subsumption 0} _module.__default.MulTriple#canCall(n#0, d#0, a#0)
       ==> _module.__default.MulTriple(n#0, d#0, a#0) || Mul(n#0, d#0) == a#0;
    assume {:id "id712"} _module.__default.MulTriple(n#0, d#0, a#0);
}



procedure {:verboseName "DividesProperty (well-formedness)"} CheckWellFormed$$_module.__default.DividesProperty(d#0: int, a#0: int) returns (n#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DividesProperty (well-formedness)"} CheckWellFormed$$_module.__default.DividesProperty(d#0: int, a#0: int) returns (n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##d#0: int;
  var ##a#0: int;


    // AddMethodImpl: DividesProperty, CheckWellFormed$$_module.__default.DividesProperty
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id713"} d#0 > 0;
    assume {:id "id714"} a#0 > 0;
    ##d#0 := d#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##d#0, TInt, $Heap);
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    assert {:id "id715"} {:subsumption 0} ##d#0 > 0;
    assert {:id "id716"} {:subsumption 0} ##a#0 > 0;
    assume ##d#0 > 0 && ##a#0 > 0;
    assume _module.__default.Divides#canCall(d#0, a#0);
    assume {:id "id717"} _module.__default.Divides(reveal__module._default.Divides, d#0, a#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc n#0;
    assume {:id "id718"} Mul(n#0, d#0) == a#0;
}



procedure {:verboseName "DividesProperty (call)"} Call$$_module.__default.DividesProperty(d#0: int, a#0: int) returns (n#0: int);
  // user-defined preconditions
  requires {:id "id719"} d#0 > 0;
  requires {:id "id720"} a#0 > 0;
  requires {:id "id721"} _module.__default.Divides(reveal__module._default.Divides, d#0, a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id722"} Mul(n#0, d#0) == a#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "DividesProperty (correctness)"} Impl$$_module.__default.DividesProperty(d#0: int, a#0: int) returns (n#0: int, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id723"} d#0 > 0;
  requires {:id "id724"} a#0 > 0;
  requires {:id "id725"} _module.__default.Divides(reveal__module._default.Divides, d#0, a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id726"} Mul(n#0, d#0) == a#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DividesProperty (correctness)"} Impl$$_module.__default.DividesProperty(d#0: int, a#0: int) returns (n#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#1: int;
  var ##n#0: int;
  var ##d#1: int;
  var ##a#1: int;

    // AddMethodImpl: DividesProperty, Impl$$_module.__default.DividesProperty
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(361,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(361,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id727"} Call$$_module.__default.reveal__Divides();
    // TrCallStmt: After ProcessCallStmt
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/VerifyThis2015/Problem2.dfy(362,5)
    havoc n#1;
    if (true)
    {
        if (n#1 > 0)
        {
            ##n#0 := n#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, TInt, $Heap);
            ##d#1 := d#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##d#1, TInt, $Heap);
            ##a#1 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1, TInt, $Heap);
            assert {:id "id728"} {:subsumption 0} ##n#0 > 0;
            assert {:id "id729"} {:subsumption 0} ##d#1 > 0;
            assume _module.__default.MulTriple#canCall(n#1, d#0, a#0);
        }

        assume n#1 > 0 ==> _module.__default.MulTriple#canCall(n#1, d#0, a#0);
    }

    assert {:id "id730"} ($Is(LitInt(0 + 1), TInt)
         && 
        0 + 1 > 0
         && _module.__default.MulTriple(LitInt(0 + 1), d#0, a#0))
       || 
      ($Is(LitInt(0), TInt)
         && 
        0 > 0
         && _module.__default.MulTriple(LitInt(0), d#0, a#0))
       || (exists $as#n0#0: int :: 
        $as#n0#0 > 0 && _module.__default.MulTriple($as#n0#0, d#0, a#0));
    havoc n#0;
    assume {:id "id731"} n#0 > 0 && _module.__default.MulTriple(n#0, d#0, a#0);
}



procedure {:verboseName "reveal_Divides (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.reveal__Divides();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_Divides (call)"} {:verify false} Call$$_module.__default.reveal__Divides();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module._default.Divides;



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

const unique tytagFamily$_#Func5: TyTagFamily;

const unique tytagFamily$_#PartialFunc5: TyTagFamily;

const unique tytagFamily$_#TotalFunc5: TyTagFamily;

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;
