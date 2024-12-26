// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OlderVerification.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OlderVerification-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OlderVerification.dfy

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

const unique class._module.__default: ClassName;

// function declaration for _module._default.Trivial0
function _module.__default.Trivial0(x#0: int, s#0: Set) : bool
uses {
// consequence axiom for _module.__default.Trivial0
axiom 0 <= $FunctionContextHeight
   ==> (forall x#0: int, s#0: Set :: 
    { _module.__default.Trivial0(x#0, s#0) } 
    _module.__default.Trivial0#canCall(x#0, s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(TInt)))
       ==> (forall $olderHeap: Heap :: { $OlderTag($olderHeap) } true));
// definition axiom for _module.__default.Trivial0 (revealed)
axiom {:id "id171"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, s#0: Set :: 
    { _module.__default.Trivial0(x#0, s#0) } 
    _module.__default.Trivial0#canCall(x#0, s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(TInt)))
       ==> _module.__default.Trivial0(x#0, s#0) == Lit(true));
// definition axiom for _module.__default.Trivial0 for all literals (revealed)
axiom {:id "id172"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, s#0: Set :: 
    {:weight 3} { _module.__default.Trivial0(LitInt(x#0), Lit(s#0)) } 
    _module.__default.Trivial0#canCall(LitInt(x#0), Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(TInt)))
       ==> _module.__default.Trivial0(LitInt(x#0), Lit(s#0)) == Lit(true));
}

function _module.__default.Trivial0#canCall(x#0: int, s#0: Set) : bool;

function _module.__default.Trivial0#requires(int, Set) : bool;

// #requires axiom for _module.__default.Trivial0
axiom (forall x#0: int, s#0: Set :: 
  { _module.__default.Trivial0#requires(x#0, s#0) } 
  $Is(s#0, TSet(TInt)) ==> _module.__default.Trivial0#requires(x#0, s#0) == true);

procedure {:verboseName "Trivial0 (well-formedness)"} CheckWellformed$$_module.__default.Trivial0(x#0: int, s#0: Set where $Is(s#0, TSet(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures (forall $olderHeap: Heap :: { $OlderTag($olderHeap) } true);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Trivial0 (well-formedness)"} CheckWellformed$$_module.__default.Trivial0(x#0: int, s#0: Set)
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
        assume {:id "id173"} _module.__default.Trivial0(x#0, s#0) == Lit(true);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Trivial0(x#0, s#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.Trivial1
function _module.__default.Trivial1(x#0: int, s#0: Set) : bool
uses {
// consequence axiom for _module.__default.Trivial1
axiom 0 <= $FunctionContextHeight
   ==> (forall x#0: int, s#0: Set :: 
    { _module.__default.Trivial1(x#0, s#0) } 
    _module.__default.Trivial1#canCall(x#0, s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(TInt)))
       ==> (forall $olderHeap: Heap :: { $OlderTag($olderHeap) } true));
// definition axiom for _module.__default.Trivial1 (revealed)
axiom {:id "id174"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, s#0: Set :: 
    { _module.__default.Trivial1(x#0, s#0) } 
    _module.__default.Trivial1#canCall(x#0, s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(TInt)))
       ==> _module.__default.Trivial1(x#0, s#0) == Set#IsMember(s#0, $Box(x#0)));
// definition axiom for _module.__default.Trivial1 for all literals (revealed)
axiom {:id "id175"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, s#0: Set :: 
    {:weight 3} { _module.__default.Trivial1(LitInt(x#0), Lit(s#0)) } 
    _module.__default.Trivial1#canCall(LitInt(x#0), Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(TInt)))
       ==> _module.__default.Trivial1(LitInt(x#0), Lit(s#0))
         == Set#IsMember(Lit(s#0), $Box(LitInt(x#0))));
}

function _module.__default.Trivial1#canCall(x#0: int, s#0: Set) : bool;

function _module.__default.Trivial1#requires(int, Set) : bool;

// #requires axiom for _module.__default.Trivial1
axiom (forall x#0: int, s#0: Set :: 
  { _module.__default.Trivial1#requires(x#0, s#0) } 
  $Is(s#0, TSet(TInt)) ==> _module.__default.Trivial1#requires(x#0, s#0) == true);

procedure {:verboseName "Trivial1 (well-formedness)"} CheckWellformed$$_module.__default.Trivial1(x#0: int, s#0: Set where $Is(s#0, TSet(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures (forall $olderHeap: Heap :: { $OlderTag($olderHeap) } true);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Trivial1 (well-formedness)"} CheckWellformed$$_module.__default.Trivial1(x#0: int, s#0: Set)
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
        assume {:id "id176"} _module.__default.Trivial1(x#0, s#0) == Set#IsMember(s#0, $Box(x#0));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Trivial1(x#0, s#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.Trivial2
function _module.__default.Trivial2(x#0: int, s#0: Set) : bool
uses {
// consequence axiom for _module.__default.Trivial2
axiom 0 <= $FunctionContextHeight
   ==> (forall x#0: int, s#0: Set :: 
    { _module.__default.Trivial2(x#0, s#0) } 
    _module.__default.Trivial2#canCall(x#0, s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(TInt)))
       ==> (forall $olderHeap: Heap :: { $OlderTag($olderHeap) } true));
// definition axiom for _module.__default.Trivial2 (revealed)
axiom {:id "id177"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, s#0: Set :: 
    { _module.__default.Trivial2(x#0, s#0) } 
    _module.__default.Trivial2#canCall(x#0, s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(TInt)))
       ==> _module.__default.Trivial2(x#0, s#0) == !Set#IsMember(s#0, $Box(x#0)));
// definition axiom for _module.__default.Trivial2 for all literals (revealed)
axiom {:id "id178"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, s#0: Set :: 
    {:weight 3} { _module.__default.Trivial2(LitInt(x#0), Lit(s#0)) } 
    _module.__default.Trivial2#canCall(LitInt(x#0), Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(TInt)))
       ==> _module.__default.Trivial2(LitInt(x#0), Lit(s#0))
         == !Set#IsMember(Lit(s#0), $Box(LitInt(x#0))));
}

function _module.__default.Trivial2#canCall(x#0: int, s#0: Set) : bool;

function _module.__default.Trivial2#requires(int, Set) : bool;

// #requires axiom for _module.__default.Trivial2
axiom (forall x#0: int, s#0: Set :: 
  { _module.__default.Trivial2#requires(x#0, s#0) } 
  $Is(s#0, TSet(TInt)) ==> _module.__default.Trivial2#requires(x#0, s#0) == true);

procedure {:verboseName "Trivial2 (well-formedness)"} CheckWellformed$$_module.__default.Trivial2(x#0: int, s#0: Set where $Is(s#0, TSet(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures (forall $olderHeap: Heap :: { $OlderTag($olderHeap) } true);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Trivial2 (well-formedness)"} CheckWellformed$$_module.__default.Trivial2(x#0: int, s#0: Set)
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
        assume {:id "id179"} _module.__default.Trivial2(x#0, s#0) == !Set#IsMember(s#0, $Box(x#0));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Trivial2(x#0, s#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.Trivial3
function _module.__default.Trivial3(_module._default.Trivial3$X: Ty, x#0: Box, s#0: Set) : bool
uses {
// consequence axiom for _module.__default.Trivial3
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.Trivial3$X: Ty, x#0: Box, s#0: Set :: 
    { _module.__default.Trivial3(_module._default.Trivial3$X, x#0, s#0) } 
    _module.__default.Trivial3#canCall(_module._default.Trivial3$X, x#0, s#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Trivial3$X)
           && $Is(s#0, TSet(_module._default.Trivial3$X)))
       ==> (forall $olderHeap: Heap :: 
        { $OlderTag($olderHeap) } 
        $IsGoodHeap($olderHeap)
             && $OlderTag($olderHeap)
             && 
            _module.__default.Trivial3(_module._default.Trivial3$X, x#0, s#0)
             && $IsAlloc(s#0, TSet(_module._default.Trivial3$X), $olderHeap)
           ==> $IsAllocBox(x#0, _module._default.Trivial3$X, $olderHeap)));
// definition axiom for _module.__default.Trivial3 (revealed)
axiom {:id "id180"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Trivial3$X: Ty, x#0: Box, s#0: Set :: 
    { _module.__default.Trivial3(_module._default.Trivial3$X, x#0, s#0) } 
    _module.__default.Trivial3#canCall(_module._default.Trivial3$X, x#0, s#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Trivial3$X)
           && $Is(s#0, TSet(_module._default.Trivial3$X)))
       ==> _module.__default.Trivial3(_module._default.Trivial3$X, x#0, s#0) == Lit(true));
// definition axiom for _module.__default.Trivial3 for decreasing-related literals (revealed)
axiom {:id "id181"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Trivial3$X: Ty, x#0: Box, s#0: Set :: 
    {:weight 3} { _module.__default.Trivial3(_module._default.Trivial3$X, x#0, Lit(s#0)) } 
    _module.__default.Trivial3#canCall(_module._default.Trivial3$X, x#0, Lit(s#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Trivial3$X)
           && $Is(s#0, TSet(_module._default.Trivial3$X)))
       ==> _module.__default.Trivial3(_module._default.Trivial3$X, x#0, Lit(s#0))
         == Lit(true));
// definition axiom for _module.__default.Trivial3 for all literals (revealed)
axiom {:id "id182"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Trivial3$X: Ty, x#0: Box, s#0: Set :: 
    {:weight 3} { _module.__default.Trivial3(_module._default.Trivial3$X, Lit(x#0), Lit(s#0)) } 
    _module.__default.Trivial3#canCall(_module._default.Trivial3$X, Lit(x#0), Lit(s#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Trivial3$X)
           && $Is(s#0, TSet(_module._default.Trivial3$X)))
       ==> _module.__default.Trivial3(_module._default.Trivial3$X, Lit(x#0), Lit(s#0))
         == Lit(true));
}

function _module.__default.Trivial3#canCall(_module._default.Trivial3$X: Ty, x#0: Box, s#0: Set) : bool;

function _module.__default.Trivial3#requires(Ty, Box, Set) : bool;

// #requires axiom for _module.__default.Trivial3
axiom (forall _module._default.Trivial3$X: Ty, x#0: Box, s#0: Set :: 
  { _module.__default.Trivial3#requires(_module._default.Trivial3$X, x#0, s#0) } 
  $IsBox(x#0, _module._default.Trivial3$X)
       && $Is(s#0, TSet(_module._default.Trivial3$X))
     ==> _module.__default.Trivial3#requires(_module._default.Trivial3$X, x#0, s#0)
       == true);

procedure {:verboseName "Trivial3 (well-formedness)"} CheckWellformed$$_module.__default.Trivial3(_module._default.Trivial3$X: Ty
       where $AlwaysAllocated(_module._default.Trivial3$X), 
    x#0: Box where $IsBox(x#0, _module._default.Trivial3$X), 
    s#0: Set where $Is(s#0, TSet(_module._default.Trivial3$X)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures (forall $olderHeap: Heap :: 
    { $OlderTag($olderHeap) } 
    $IsGoodHeap($olderHeap)
         && $OlderTag($olderHeap)
         && 
        _module.__default.Trivial3(_module._default.Trivial3$X, x#0, s#0)
         && $IsAlloc(s#0, TSet(_module._default.Trivial3$X), $olderHeap)
       ==> $IsAllocBox(x#0, _module._default.Trivial3$X, $olderHeap));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Trivial3 (well-formedness)"} CheckWellformed$$_module.__default.Trivial3(_module._default.Trivial3$X: Ty, x#0: Box, s#0: Set)
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
        assume {:id "id183"} _module.__default.Trivial3(_module._default.Trivial3$X, x#0, s#0) == Lit(true);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Trivial3(_module._default.Trivial3$X, x#0, s#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.Trivial4
function _module.__default.Trivial4(_module._default.Trivial4$X: Ty, x#0: Box, s#0: Set) : bool
uses {
// consequence axiom for _module.__default.Trivial4
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.Trivial4$X: Ty, x#0: Box, s#0: Set :: 
    { _module.__default.Trivial4(_module._default.Trivial4$X, x#0, s#0) } 
    _module.__default.Trivial4#canCall(_module._default.Trivial4$X, x#0, s#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Trivial4$X)
           && $Is(s#0, TSet(_module._default.Trivial4$X)))
       ==> (forall $olderHeap: Heap :: 
        { $OlderTag($olderHeap) } 
        $IsGoodHeap($olderHeap)
             && $OlderTag($olderHeap)
             && 
            _module.__default.Trivial4(_module._default.Trivial4$X, x#0, s#0)
             && $IsAlloc(s#0, TSet(_module._default.Trivial4$X), $olderHeap)
           ==> $IsAllocBox(x#0, _module._default.Trivial4$X, $olderHeap)));
// definition axiom for _module.__default.Trivial4 (revealed)
axiom {:id "id184"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Trivial4$X: Ty, x#0: Box, s#0: Set :: 
    { _module.__default.Trivial4(_module._default.Trivial4$X, x#0, s#0) } 
    _module.__default.Trivial4#canCall(_module._default.Trivial4$X, x#0, s#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Trivial4$X)
           && $Is(s#0, TSet(_module._default.Trivial4$X)))
       ==> _module.__default.Trivial4(_module._default.Trivial4$X, x#0, s#0)
         == Set#IsMember(s#0, x#0));
// definition axiom for _module.__default.Trivial4 for decreasing-related literals (revealed)
axiom {:id "id185"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Trivial4$X: Ty, x#0: Box, s#0: Set :: 
    {:weight 3} { _module.__default.Trivial4(_module._default.Trivial4$X, x#0, Lit(s#0)) } 
    _module.__default.Trivial4#canCall(_module._default.Trivial4$X, x#0, Lit(s#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Trivial4$X)
           && $Is(s#0, TSet(_module._default.Trivial4$X)))
       ==> _module.__default.Trivial4(_module._default.Trivial4$X, x#0, Lit(s#0))
         == Set#IsMember(Lit(s#0), x#0));
// definition axiom for _module.__default.Trivial4 for all literals (revealed)
axiom {:id "id186"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Trivial4$X: Ty, x#0: Box, s#0: Set :: 
    {:weight 3} { _module.__default.Trivial4(_module._default.Trivial4$X, Lit(x#0), Lit(s#0)) } 
    _module.__default.Trivial4#canCall(_module._default.Trivial4$X, Lit(x#0), Lit(s#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Trivial4$X)
           && $Is(s#0, TSet(_module._default.Trivial4$X)))
       ==> _module.__default.Trivial4(_module._default.Trivial4$X, Lit(x#0), Lit(s#0))
         == Set#IsMember(Lit(s#0), Lit(x#0)));
}

function _module.__default.Trivial4#canCall(_module._default.Trivial4$X: Ty, x#0: Box, s#0: Set) : bool;

function _module.__default.Trivial4#requires(Ty, Box, Set) : bool;

// #requires axiom for _module.__default.Trivial4
axiom (forall _module._default.Trivial4$X: Ty, x#0: Box, s#0: Set :: 
  { _module.__default.Trivial4#requires(_module._default.Trivial4$X, x#0, s#0) } 
  $IsBox(x#0, _module._default.Trivial4$X)
       && $Is(s#0, TSet(_module._default.Trivial4$X))
     ==> _module.__default.Trivial4#requires(_module._default.Trivial4$X, x#0, s#0)
       == true);

procedure {:verboseName "Trivial4 (well-formedness)"} CheckWellformed$$_module.__default.Trivial4(_module._default.Trivial4$X: Ty
       where $AlwaysAllocated(_module._default.Trivial4$X), 
    x#0: Box where $IsBox(x#0, _module._default.Trivial4$X), 
    s#0: Set where $Is(s#0, TSet(_module._default.Trivial4$X)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures (forall $olderHeap: Heap :: 
    { $OlderTag($olderHeap) } 
    $IsGoodHeap($olderHeap)
         && $OlderTag($olderHeap)
         && 
        _module.__default.Trivial4(_module._default.Trivial4$X, x#0, s#0)
         && $IsAlloc(s#0, TSet(_module._default.Trivial4$X), $olderHeap)
       ==> $IsAllocBox(x#0, _module._default.Trivial4$X, $olderHeap));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Trivial4 (well-formedness)"} CheckWellformed$$_module.__default.Trivial4(_module._default.Trivial4$X: Ty, x#0: Box, s#0: Set)
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
        assume {:id "id187"} _module.__default.Trivial4(_module._default.Trivial4$X, x#0, s#0)
           == Set#IsMember(s#0, x#0);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Trivial4(_module._default.Trivial4$X, x#0, s#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.Trivial5
function _module.__default.Trivial5(_module._default.Trivial5$X: Ty, x#0: Box, s#0: Set) : bool
uses {
// consequence axiom for _module.__default.Trivial5
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.Trivial5$X: Ty, x#0: Box, s#0: Set :: 
    { _module.__default.Trivial5(_module._default.Trivial5$X, x#0, s#0) } 
    _module.__default.Trivial5#canCall(_module._default.Trivial5$X, x#0, s#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Trivial5$X)
           && $Is(s#0, TSet(_module._default.Trivial5$X)))
       ==> (forall $olderHeap: Heap :: 
        { $OlderTag($olderHeap) } 
        $IsGoodHeap($olderHeap)
             && $OlderTag($olderHeap)
             && 
            _module.__default.Trivial5(_module._default.Trivial5$X, x#0, s#0)
             && $IsAlloc(s#0, TSet(_module._default.Trivial5$X), $olderHeap)
           ==> $IsAllocBox(x#0, _module._default.Trivial5$X, $olderHeap)));
// definition axiom for _module.__default.Trivial5 (revealed)
axiom {:id "id188"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Trivial5$X: Ty, x#0: Box, s#0: Set :: 
    { _module.__default.Trivial5(_module._default.Trivial5$X, x#0, s#0) } 
    _module.__default.Trivial5#canCall(_module._default.Trivial5$X, x#0, s#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Trivial5$X)
           && $Is(s#0, TSet(_module._default.Trivial5$X)))
       ==> _module.__default.Trivial5(_module._default.Trivial5$X, x#0, s#0)
         == !Set#IsMember(s#0, x#0));
// definition axiom for _module.__default.Trivial5 for decreasing-related literals (revealed)
axiom {:id "id189"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Trivial5$X: Ty, x#0: Box, s#0: Set :: 
    {:weight 3} { _module.__default.Trivial5(_module._default.Trivial5$X, x#0, Lit(s#0)) } 
    _module.__default.Trivial5#canCall(_module._default.Trivial5$X, x#0, Lit(s#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Trivial5$X)
           && $Is(s#0, TSet(_module._default.Trivial5$X)))
       ==> _module.__default.Trivial5(_module._default.Trivial5$X, x#0, Lit(s#0))
         == !Set#IsMember(Lit(s#0), x#0));
// definition axiom for _module.__default.Trivial5 for all literals (revealed)
axiom {:id "id190"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Trivial5$X: Ty, x#0: Box, s#0: Set :: 
    {:weight 3} { _module.__default.Trivial5(_module._default.Trivial5$X, Lit(x#0), Lit(s#0)) } 
    _module.__default.Trivial5#canCall(_module._default.Trivial5$X, Lit(x#0), Lit(s#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Trivial5$X)
           && $Is(s#0, TSet(_module._default.Trivial5$X)))
       ==> _module.__default.Trivial5(_module._default.Trivial5$X, Lit(x#0), Lit(s#0))
         == !Set#IsMember(Lit(s#0), Lit(x#0)));
}

function _module.__default.Trivial5#canCall(_module._default.Trivial5$X: Ty, x#0: Box, s#0: Set) : bool;

function _module.__default.Trivial5#requires(Ty, Box, Set) : bool;

// #requires axiom for _module.__default.Trivial5
axiom (forall _module._default.Trivial5$X: Ty, x#0: Box, s#0: Set :: 
  { _module.__default.Trivial5#requires(_module._default.Trivial5$X, x#0, s#0) } 
  $IsBox(x#0, _module._default.Trivial5$X)
       && $Is(s#0, TSet(_module._default.Trivial5$X))
     ==> _module.__default.Trivial5#requires(_module._default.Trivial5$X, x#0, s#0)
       == true);

procedure {:verboseName "Trivial5 (well-formedness)"} CheckWellformed$$_module.__default.Trivial5(_module._default.Trivial5$X: Ty
       where $AlwaysAllocated(_module._default.Trivial5$X), 
    x#0: Box where $IsBox(x#0, _module._default.Trivial5$X), 
    s#0: Set where $Is(s#0, TSet(_module._default.Trivial5$X)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures (forall $olderHeap: Heap :: 
    { $OlderTag($olderHeap) } 
    $IsGoodHeap($olderHeap)
         && $OlderTag($olderHeap)
         && 
        _module.__default.Trivial5(_module._default.Trivial5$X, x#0, s#0)
         && $IsAlloc(s#0, TSet(_module._default.Trivial5$X), $olderHeap)
       ==> $IsAllocBox(x#0, _module._default.Trivial5$X, $olderHeap));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Trivial5 (well-formedness)"} CheckWellformed$$_module.__default.Trivial5(_module._default.Trivial5$X: Ty, x#0: Box, s#0: Set)
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
        assume {:id "id191"} _module.__default.Trivial5(_module._default.Trivial5$X, x#0, s#0)
           == !Set#IsMember(s#0, x#0);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Trivial5(_module._default.Trivial5$X, x#0, s#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.Simple0
function _module.__default.Simple0(_module._default.Simple0$X: Ty, x#0: Box, s#0: Set) : bool
uses {
// consequence axiom for _module.__default.Simple0
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.Simple0$X: Ty, x#0: Box, s#0: Set :: 
    { _module.__default.Simple0(_module._default.Simple0$X, x#0, s#0) } 
    _module.__default.Simple0#canCall(_module._default.Simple0$X, x#0, s#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Simple0$X)
           && $Is(s#0, TSet(_module._default.Simple0$X)))
       ==> (forall $olderHeap: Heap :: 
        { $OlderTag($olderHeap) } 
        $IsGoodHeap($olderHeap)
             && $OlderTag($olderHeap)
             && 
            _module.__default.Simple0(_module._default.Simple0$X, x#0, s#0)
             && $IsAlloc(s#0, TSet(_module._default.Simple0$X), $olderHeap)
           ==> $IsAllocBox(x#0, _module._default.Simple0$X, $olderHeap)));
// definition axiom for _module.__default.Simple0 (revealed)
axiom {:id "id192"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Simple0$X: Ty, x#0: Box, s#0: Set :: 
    { _module.__default.Simple0(_module._default.Simple0$X, x#0, s#0) } 
    _module.__default.Simple0#canCall(_module._default.Simple0$X, x#0, s#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Simple0$X)
           && $Is(s#0, TSet(_module._default.Simple0$X)))
       ==> _module.__default.Simple0(_module._default.Simple0$X, x#0, s#0) == Lit(true));
// definition axiom for _module.__default.Simple0 for decreasing-related literals (revealed)
axiom {:id "id193"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Simple0$X: Ty, x#0: Box, s#0: Set :: 
    {:weight 3} { _module.__default.Simple0(_module._default.Simple0$X, x#0, Lit(s#0)) } 
    _module.__default.Simple0#canCall(_module._default.Simple0$X, x#0, Lit(s#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Simple0$X)
           && $Is(s#0, TSet(_module._default.Simple0$X)))
       ==> _module.__default.Simple0(_module._default.Simple0$X, x#0, Lit(s#0))
         == Lit(true));
// definition axiom for _module.__default.Simple0 for all literals (revealed)
axiom {:id "id194"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Simple0$X: Ty, x#0: Box, s#0: Set :: 
    {:weight 3} { _module.__default.Simple0(_module._default.Simple0$X, Lit(x#0), Lit(s#0)) } 
    _module.__default.Simple0#canCall(_module._default.Simple0$X, Lit(x#0), Lit(s#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Simple0$X)
           && $Is(s#0, TSet(_module._default.Simple0$X)))
       ==> _module.__default.Simple0(_module._default.Simple0$X, Lit(x#0), Lit(s#0))
         == Lit(true));
}

function _module.__default.Simple0#canCall(_module._default.Simple0$X: Ty, x#0: Box, s#0: Set) : bool;

function _module.__default.Simple0#requires(Ty, Box, Set) : bool;

// #requires axiom for _module.__default.Simple0
axiom (forall _module._default.Simple0$X: Ty, x#0: Box, s#0: Set :: 
  { _module.__default.Simple0#requires(_module._default.Simple0$X, x#0, s#0) } 
  $IsBox(x#0, _module._default.Simple0$X)
       && $Is(s#0, TSet(_module._default.Simple0$X))
     ==> _module.__default.Simple0#requires(_module._default.Simple0$X, x#0, s#0) == true);

procedure {:verboseName "Simple0 (well-formedness)"} CheckWellformed$$_module.__default.Simple0(_module._default.Simple0$X: Ty, 
    x#0: Box where $IsBox(x#0, _module._default.Simple0$X), 
    s#0: Set where $Is(s#0, TSet(_module._default.Simple0$X)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures (forall $olderHeap: Heap :: 
    { $OlderTag($olderHeap) } 
    $IsGoodHeap($olderHeap)
         && $OlderTag($olderHeap)
         && 
        _module.__default.Simple0(_module._default.Simple0$X, x#0, s#0)
         && $IsAlloc(s#0, TSet(_module._default.Simple0$X), $olderHeap)
       ==> $IsAllocBox(x#0, _module._default.Simple0$X, $olderHeap));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Simple0 (well-formedness)"} CheckWellformed$$_module.__default.Simple0(_module._default.Simple0$X: Ty, x#0: Box, s#0: Set)
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
        assume {:id "id195"} _module.__default.Simple0(_module._default.Simple0$X, x#0, s#0) == Lit(true);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Simple0(_module._default.Simple0$X, x#0, s#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.Simple1
function _module.__default.Simple1(_module._default.Simple1$X: Ty, x#0: Box, s#0: Set) : bool
uses {
// consequence axiom for _module.__default.Simple1
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.Simple1$X: Ty, x#0: Box, s#0: Set :: 
    { _module.__default.Simple1(_module._default.Simple1$X, x#0, s#0) } 
    _module.__default.Simple1#canCall(_module._default.Simple1$X, x#0, s#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Simple1$X)
           && $Is(s#0, TSet(_module._default.Simple1$X)))
       ==> (forall $olderHeap: Heap :: 
        { $OlderTag($olderHeap) } 
        $IsGoodHeap($olderHeap)
             && $OlderTag($olderHeap)
             && 
            _module.__default.Simple1(_module._default.Simple1$X, x#0, s#0)
             && $IsAlloc(s#0, TSet(_module._default.Simple1$X), $olderHeap)
           ==> $IsAllocBox(x#0, _module._default.Simple1$X, $olderHeap)));
// definition axiom for _module.__default.Simple1 (revealed)
axiom {:id "id196"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Simple1$X: Ty, x#0: Box, s#0: Set :: 
    { _module.__default.Simple1(_module._default.Simple1$X, x#0, s#0) } 
    _module.__default.Simple1#canCall(_module._default.Simple1$X, x#0, s#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Simple1$X)
           && $Is(s#0, TSet(_module._default.Simple1$X)))
       ==> _module.__default.Simple1(_module._default.Simple1$X, x#0, s#0)
         == Set#IsMember(s#0, x#0));
// definition axiom for _module.__default.Simple1 for decreasing-related literals (revealed)
axiom {:id "id197"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Simple1$X: Ty, x#0: Box, s#0: Set :: 
    {:weight 3} { _module.__default.Simple1(_module._default.Simple1$X, x#0, Lit(s#0)) } 
    _module.__default.Simple1#canCall(_module._default.Simple1$X, x#0, Lit(s#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Simple1$X)
           && $Is(s#0, TSet(_module._default.Simple1$X)))
       ==> _module.__default.Simple1(_module._default.Simple1$X, x#0, Lit(s#0))
         == Set#IsMember(Lit(s#0), x#0));
// definition axiom for _module.__default.Simple1 for all literals (revealed)
axiom {:id "id198"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Simple1$X: Ty, x#0: Box, s#0: Set :: 
    {:weight 3} { _module.__default.Simple1(_module._default.Simple1$X, Lit(x#0), Lit(s#0)) } 
    _module.__default.Simple1#canCall(_module._default.Simple1$X, Lit(x#0), Lit(s#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Simple1$X)
           && $Is(s#0, TSet(_module._default.Simple1$X)))
       ==> _module.__default.Simple1(_module._default.Simple1$X, Lit(x#0), Lit(s#0))
         == Set#IsMember(Lit(s#0), Lit(x#0)));
}

function _module.__default.Simple1#canCall(_module._default.Simple1$X: Ty, x#0: Box, s#0: Set) : bool;

function _module.__default.Simple1#requires(Ty, Box, Set) : bool;

// #requires axiom for _module.__default.Simple1
axiom (forall _module._default.Simple1$X: Ty, x#0: Box, s#0: Set :: 
  { _module.__default.Simple1#requires(_module._default.Simple1$X, x#0, s#0) } 
  $IsBox(x#0, _module._default.Simple1$X)
       && $Is(s#0, TSet(_module._default.Simple1$X))
     ==> _module.__default.Simple1#requires(_module._default.Simple1$X, x#0, s#0) == true);

procedure {:verboseName "Simple1 (well-formedness)"} CheckWellformed$$_module.__default.Simple1(_module._default.Simple1$X: Ty, 
    x#0: Box where $IsBox(x#0, _module._default.Simple1$X), 
    s#0: Set where $Is(s#0, TSet(_module._default.Simple1$X)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures (forall $olderHeap: Heap :: 
    { $OlderTag($olderHeap) } 
    $IsGoodHeap($olderHeap)
         && $OlderTag($olderHeap)
         && 
        _module.__default.Simple1(_module._default.Simple1$X, x#0, s#0)
         && $IsAlloc(s#0, TSet(_module._default.Simple1$X), $olderHeap)
       ==> $IsAllocBox(x#0, _module._default.Simple1$X, $olderHeap));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Simple1 (well-formedness)"} CheckWellformed$$_module.__default.Simple1(_module._default.Simple1$X: Ty, x#0: Box, s#0: Set)
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
        assume {:id "id199"} _module.__default.Simple1(_module._default.Simple1$X, x#0, s#0)
           == Set#IsMember(s#0, x#0);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Simple1(_module._default.Simple1$X, x#0, s#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.Simple2
function _module.__default.Simple2(_module._default.Simple2$X: Ty, x#0: Box, s#0: Set) : bool
uses {
// consequence axiom for _module.__default.Simple2
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.Simple2$X: Ty, x#0: Box, s#0: Set :: 
    { _module.__default.Simple2(_module._default.Simple2$X, x#0, s#0) } 
    _module.__default.Simple2#canCall(_module._default.Simple2$X, x#0, s#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Simple2$X)
           && $Is(s#0, TSet(_module._default.Simple2$X)))
       ==> (forall $olderHeap: Heap :: 
        { $OlderTag($olderHeap) } 
        $IsGoodHeap($olderHeap)
             && $OlderTag($olderHeap)
             && 
            _module.__default.Simple2(_module._default.Simple2$X, x#0, s#0)
             && $IsAlloc(s#0, TSet(_module._default.Simple2$X), $olderHeap)
           ==> $IsAllocBox(x#0, _module._default.Simple2$X, $olderHeap)));
// definition axiom for _module.__default.Simple2 (revealed)
axiom {:id "id200"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Simple2$X: Ty, x#0: Box, s#0: Set :: 
    { _module.__default.Simple2(_module._default.Simple2$X, x#0, s#0) } 
    _module.__default.Simple2#canCall(_module._default.Simple2$X, x#0, s#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Simple2$X)
           && $Is(s#0, TSet(_module._default.Simple2$X)))
       ==> _module.__default.Simple2(_module._default.Simple2$X, x#0, s#0)
         == !Set#IsMember(s#0, x#0));
// definition axiom for _module.__default.Simple2 for decreasing-related literals (revealed)
axiom {:id "id201"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Simple2$X: Ty, x#0: Box, s#0: Set :: 
    {:weight 3} { _module.__default.Simple2(_module._default.Simple2$X, x#0, Lit(s#0)) } 
    _module.__default.Simple2#canCall(_module._default.Simple2$X, x#0, Lit(s#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Simple2$X)
           && $Is(s#0, TSet(_module._default.Simple2$X)))
       ==> _module.__default.Simple2(_module._default.Simple2$X, x#0, Lit(s#0))
         == !Set#IsMember(Lit(s#0), x#0));
// definition axiom for _module.__default.Simple2 for all literals (revealed)
axiom {:id "id202"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Simple2$X: Ty, x#0: Box, s#0: Set :: 
    {:weight 3} { _module.__default.Simple2(_module._default.Simple2$X, Lit(x#0), Lit(s#0)) } 
    _module.__default.Simple2#canCall(_module._default.Simple2$X, Lit(x#0), Lit(s#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(x#0, _module._default.Simple2$X)
           && $Is(s#0, TSet(_module._default.Simple2$X)))
       ==> _module.__default.Simple2(_module._default.Simple2$X, Lit(x#0), Lit(s#0))
         == !Set#IsMember(Lit(s#0), Lit(x#0)));
}

function _module.__default.Simple2#canCall(_module._default.Simple2$X: Ty, x#0: Box, s#0: Set) : bool;

function _module.__default.Simple2#requires(Ty, Box, Set) : bool;

// #requires axiom for _module.__default.Simple2
axiom (forall _module._default.Simple2$X: Ty, x#0: Box, s#0: Set :: 
  { _module.__default.Simple2#requires(_module._default.Simple2$X, x#0, s#0) } 
  $IsBox(x#0, _module._default.Simple2$X)
       && $Is(s#0, TSet(_module._default.Simple2$X))
     ==> _module.__default.Simple2#requires(_module._default.Simple2$X, x#0, s#0) == true);

procedure {:verboseName "Simple2 (well-formedness)"} CheckWellformed$$_module.__default.Simple2(_module._default.Simple2$X: Ty, 
    x#0: Box where $IsBox(x#0, _module._default.Simple2$X), 
    s#0: Set where $Is(s#0, TSet(_module._default.Simple2$X)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures (forall $olderHeap: Heap :: 
    { $OlderTag($olderHeap) } 
    $IsGoodHeap($olderHeap)
         && $OlderTag($olderHeap)
         && 
        _module.__default.Simple2(_module._default.Simple2$X, x#0, s#0)
         && $IsAlloc(s#0, TSet(_module._default.Simple2$X), $olderHeap)
       ==> $IsAllocBox(x#0, _module._default.Simple2$X, $olderHeap));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Simple2 (well-formedness)"} CheckWellformed$$_module.__default.Simple2(_module._default.Simple2$X: Ty, x#0: Box, s#0: Set)
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
        assume {:id "id203"} _module.__default.Simple2(_module._default.Simple2$X, x#0, s#0)
           == !Set#IsMember(s#0, x#0);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Simple2(_module._default.Simple2$X, x#0, s#0), TBool);
        return;

        assume false;
    }
}



const unique class.Reachable0.__default: ClassName;

// function declaration for Reachable0._default.Reachable
function Reachable0.__default.Reachable($heap: Heap, source#0: ref, sink#0: ref, S#0: Set) : bool;

function Reachable0.__default.Reachable#canCall($heap: Heap, source#0: ref, sink#0: ref, S#0: Set) : bool;

function Tclass.Reachable0.Node() : Ty
uses {
// Tclass.Reachable0.Node Tag
axiom Tag(Tclass.Reachable0.Node()) == Tagclass.Reachable0.Node
   && TagFamily(Tclass.Reachable0.Node()) == tytagFamily$Node;
}

const unique Tagclass.Reachable0.Node: TyTag;

// Box/unbox axiom for Tclass.Reachable0.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Reachable0.Node()) } 
  $IsBox(bx, Tclass.Reachable0.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Reachable0.Node()));

// frame axiom for Reachable0.__default.Reachable
axiom (forall $h0: Heap, $h1: Heap, source#0: ref, sink#0: ref, S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), Reachable0.__default.Reachable($h1, source#0, sink#0, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (Reachable0.__default.Reachable#canCall($h0, source#0, sink#0, S#0)
         || (
          $Is(source#0, Tclass.Reachable0.Node())
           && $Is(sink#0, Tclass.Reachable0.Node())
           && $Is(S#0, TSet(Tclass.Reachable0.Node()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> Reachable0.__default.Reachable($h0, source#0, sink#0, S#0)
       == Reachable0.__default.Reachable($h1, source#0, sink#0, S#0));

function Reachable0.__default.Reachable#requires(Heap, ref, ref, Set) : bool;

// #requires axiom for Reachable0.__default.Reachable
axiom (forall $Heap: Heap, source#0: ref, sink#0: ref, S#0: Set :: 
  { Reachable0.__default.Reachable#requires($Heap, source#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(source#0, Tclass.Reachable0.Node())
       && $Is(sink#0, Tclass.Reachable0.Node())
       && $Is(S#0, TSet(Tclass.Reachable0.Node()))
     ==> Reachable0.__default.Reachable#requires($Heap, source#0, sink#0, S#0) == true);

function Tclass.Reachable0.Path(Ty) : Ty;

const unique Tagclass.Reachable0.Path: TyTag;

// Tclass.Reachable0.Path Tag
axiom (forall Reachable0.Path$T: Ty :: 
  { Tclass.Reachable0.Path(Reachable0.Path$T) } 
  Tag(Tclass.Reachable0.Path(Reachable0.Path$T)) == Tagclass.Reachable0.Path
     && TagFamily(Tclass.Reachable0.Path(Reachable0.Path$T)) == tytagFamily$Path);

function Tclass.Reachable0.Path_0(Ty) : Ty;

// Tclass.Reachable0.Path injectivity 0
axiom (forall Reachable0.Path$T: Ty :: 
  { Tclass.Reachable0.Path(Reachable0.Path$T) } 
  Tclass.Reachable0.Path_0(Tclass.Reachable0.Path(Reachable0.Path$T))
     == Reachable0.Path$T);

// Box/unbox axiom for Tclass.Reachable0.Path
axiom (forall Reachable0.Path$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Reachable0.Path(Reachable0.Path$T)) } 
  $IsBox(bx, Tclass.Reachable0.Path(Reachable0.Path$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Reachable0.Path(Reachable0.Path$T)));

// definition axiom for Reachable0.__default.Reachable (revealed)
axiom {:id "id204"} (forall $Heap: Heap, source#0: ref, sink#0: ref, S#0: Set :: 
  { Reachable0.__default.Reachable($Heap, source#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  Reachable0.__default.Reachable#canCall($Heap, source#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(source#0, Tclass.Reachable0.Node())
         && $Is(sink#0, Tclass.Reachable0.Node())
         && $Is(S#0, TSet(Tclass.Reachable0.Node())))
     ==> (forall via#3: DatatypeType :: 
        { Reachable0.__default.ReachableVia($LS($LZ), $Heap, source#0, via#3, sink#0, S#0) } 
        $Is(via#3, Tclass.Reachable0.Path(Tclass.Reachable0.Node()))
           ==> Reachable0.__default.ReachableVia#canCall($Heap, source#0, via#3, sink#0, S#0))
       && Reachable0.__default.Reachable($Heap, source#0, sink#0, S#0)
         == (exists via#3: DatatypeType :: 
          { Reachable0.__default.ReachableVia($LS($LZ), $Heap, source#0, via#3, sink#0, S#0) } 
          $Is(via#3, Tclass.Reachable0.Path(Tclass.Reachable0.Node()))
             && Reachable0.__default.ReachableVia($LS($LZ), $Heap, source#0, via#3, sink#0, S#0)));

// function declaration for Reachable0._default.ReachableVia
function Reachable0.__default.ReachableVia($ly: LayerType, 
    $heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set)
   : bool;

function Reachable0.__default.ReachableVia#canCall($heap: Heap, source#0: ref, p#0: DatatypeType, sink#0: ref, S#0: Set) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable0.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0) } 
  Reachable0.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0)
     == Reachable0.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable0.__default.ReachableVia(AsFuelBottom($ly), $Heap, source#0, p#0, sink#0, S#0) } 
  Reachable0.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0)
     == Reachable0.__default.ReachableVia($LZ, $Heap, source#0, p#0, sink#0, S#0));

// frame axiom for Reachable0.__default.ReachableVia
axiom (forall $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), Reachable0.__default.ReachableVia($ly, $h1, source#0, p#0, sink#0, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (Reachable0.__default.ReachableVia#canCall($h0, source#0, p#0, sink#0, S#0)
         || (
          $Is(source#0, Tclass.Reachable0.Node())
           && $Is(p#0, Tclass.Reachable0.Path(Tclass.Reachable0.Node()))
           && $Is(sink#0, Tclass.Reachable0.Node())
           && $Is(S#0, TSet(Tclass.Reachable0.Node()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> Reachable0.__default.ReachableVia($ly, $h0, source#0, p#0, sink#0, S#0)
       == Reachable0.__default.ReachableVia($ly, $h1, source#0, p#0, sink#0, S#0));

// consequence axiom for Reachable0.__default.ReachableVia
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable0.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0) } 
  Reachable0.__default.ReachableVia#canCall($Heap, source#0, p#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(source#0, Tclass.Reachable0.Node())
         && $IsAlloc(source#0, Tclass.Reachable0.Node(), $Heap)
         && 
        $Is(p#0, Tclass.Reachable0.Path(Tclass.Reachable0.Node()))
         && $IsAlloc(p#0, Tclass.Reachable0.Path(Tclass.Reachable0.Node()), $Heap)
         && 
        $Is(sink#0, Tclass.Reachable0.Node())
         && $IsAlloc(sink#0, Tclass.Reachable0.Node(), $Heap)
         && 
        $Is(S#0, TSet(Tclass.Reachable0.Node()))
         && $IsAlloc(S#0, TSet(Tclass.Reachable0.Node()), $Heap))
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && 
          Reachable0.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0)
           && 
          $IsAlloc(source#0, Tclass.Reachable0.Node(), $olderHeap)
           && $IsAlloc(sink#0, Tclass.Reachable0.Node(), $olderHeap)
           && $IsAlloc(S#0, TSet(Tclass.Reachable0.Node()), $olderHeap)
         ==> $IsAlloc(p#0, Tclass.Reachable0.Path(Tclass.Reachable0.Node()), $olderHeap)));

function Reachable0.__default.ReachableVia#requires(LayerType, Heap, ref, DatatypeType, ref, Set) : bool;

// #requires axiom for Reachable0.__default.ReachableVia
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable0.__default.ReachableVia#requires($ly, $Heap, source#0, p#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(source#0, Tclass.Reachable0.Node())
       && $Is(p#0, Tclass.Reachable0.Path(Tclass.Reachable0.Node()))
       && $Is(sink#0, Tclass.Reachable0.Node())
       && $Is(S#0, TSet(Tclass.Reachable0.Node()))
     ==> Reachable0.__default.ReachableVia#requires($ly, $Heap, source#0, p#0, sink#0, S#0)
       == true);

// definition axiom for Reachable0.__default.ReachableVia (revealed)
axiom {:id "id205"} (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable0.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  Reachable0.__default.ReachableVia#canCall($Heap, source#0, p#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(source#0, Tclass.Reachable0.Node())
         && $Is(p#0, Tclass.Reachable0.Path(Tclass.Reachable0.Node()))
         && $Is(sink#0, Tclass.Reachable0.Node())
         && $Is(S#0, TSet(Tclass.Reachable0.Node())))
     ==> (!Reachable0.Path.Empty_q(p#0)
         ==> (var n#3 := $Unbox(Reachable0.Path._h1(p#0)): ref; 
          (var prefix#3 := Reachable0.Path._h0(p#0); 
            Set#IsMember(S#0, $Box(n#3))
               ==> 
              Seq#Contains($Unbox(read($Heap, n#3, Reachable0.Node.children)): Seq, $Box(sink#0))
               ==> Reachable0.__default.ReachableVia#canCall($Heap, source#0, prefix#3, n#3, S#0))))
       && Reachable0.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0)
         == (if Reachable0.Path.Empty_q(p#0)
           then source#0 == sink#0
           else (var n#2 := $Unbox(Reachable0.Path._h1(p#0)): ref; 
            (var prefix#2 := Reachable0.Path._h0(p#0); 
              Set#IsMember(S#0, $Box(n#2))
                 && Seq#Contains($Unbox(read($Heap, n#2, Reachable0.Node.children)): Seq, $Box(sink#0))
                 && Reachable0.__default.ReachableVia($ly, $Heap, source#0, prefix#2, n#2, S#0)))));

const unique class.Reachable0.Node?: ClassName;

function Tclass.Reachable0.Node?() : Ty
uses {
// Tclass.Reachable0.Node? Tag
axiom Tag(Tclass.Reachable0.Node?()) == Tagclass.Reachable0.Node?
   && TagFamily(Tclass.Reachable0.Node?()) == tytagFamily$Node;
}

const unique Tagclass.Reachable0.Node?: TyTag;

// Box/unbox axiom for Tclass.Reachable0.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Reachable0.Node?()) } 
  $IsBox(bx, Tclass.Reachable0.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Reachable0.Node?()));

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Reachable0.Node?()) } 
  $Is($o, Tclass.Reachable0.Node?())
     <==> $o == null || dtype($o) == Tclass.Reachable0.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Reachable0.Node?(), $h) } 
  $IsAlloc($o, Tclass.Reachable0.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const Reachable0.Node.children: Field
uses {
axiom FDim(Reachable0.Node.children) == 0
   && FieldOfDecl(class.Reachable0.Node?, field$children) == Reachable0.Node.children
   && !$IsGhostField(Reachable0.Node.children);
}

// Node.children: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, Reachable0.Node.children)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.Reachable0.Node?()
     ==> $Is($Unbox(read($h, $o, Reachable0.Node.children)): Seq, 
      TSeq(Tclass.Reachable0.Node())));

// Node.children: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, Reachable0.Node.children)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.Reachable0.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, Reachable0.Node.children)): Seq, 
      TSeq(Tclass.Reachable0.Node()), 
      $h));

// $Is axiom for non-null type Reachable0.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.Reachable0.Node()) } { $Is(c#0, Tclass.Reachable0.Node?()) } 
  $Is(c#0, Tclass.Reachable0.Node())
     <==> $Is(c#0, Tclass.Reachable0.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type Reachable0.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Reachable0.Node(), $h) } 
    { $IsAlloc(c#0, Tclass.Reachable0.Node?(), $h) } 
  $IsAlloc(c#0, Tclass.Reachable0.Node(), $h)
     <==> $IsAlloc(c#0, Tclass.Reachable0.Node?(), $h));

// Constructor function declaration
function #Reachable0.Path.Empty() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Reachable0.Path.Empty()) == ##Reachable0.Path.Empty;
// Constructor literal
axiom #Reachable0.Path.Empty() == Lit(#Reachable0.Path.Empty());
}

const unique ##Reachable0.Path.Empty: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Reachable0.Path.Empty()) == ##Reachable0.Path.Empty;
}

function Reachable0.Path.Empty_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Reachable0.Path.Empty_q(d) } 
  Reachable0.Path.Empty_q(d) <==> DatatypeCtorId(d) == ##Reachable0.Path.Empty);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Reachable0.Path.Empty_q(d) } 
  Reachable0.Path.Empty_q(d) ==> d == #Reachable0.Path.Empty());

// Constructor $Is
axiom (forall Reachable0.Path$T: Ty :: 
  { $Is(#Reachable0.Path.Empty(), Tclass.Reachable0.Path(Reachable0.Path$T)) } 
  $Is(#Reachable0.Path.Empty(), Tclass.Reachable0.Path(Reachable0.Path$T)));

// Constructor $IsAlloc
axiom (forall Reachable0.Path$T: Ty, $h: Heap :: 
  { $IsAlloc(#Reachable0.Path.Empty(), Tclass.Reachable0.Path(Reachable0.Path$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Reachable0.Path.Empty(), Tclass.Reachable0.Path(Reachable0.Path$T), $h));

// Constructor function declaration
function #Reachable0.Path.Extend(DatatypeType, Box) : DatatypeType;

const unique ##Reachable0.Path.Extend: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: DatatypeType, a#4#1#0: Box :: 
  { #Reachable0.Path.Extend(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#Reachable0.Path.Extend(a#4#0#0, a#4#1#0))
     == ##Reachable0.Path.Extend);
}

function Reachable0.Path.Extend_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Reachable0.Path.Extend_q(d) } 
  Reachable0.Path.Extend_q(d) <==> DatatypeCtorId(d) == ##Reachable0.Path.Extend);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Reachable0.Path.Extend_q(d) } 
  Reachable0.Path.Extend_q(d)
     ==> (exists a#5#0#0: DatatypeType, a#5#1#0: Box :: 
      d == #Reachable0.Path.Extend(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall Reachable0.Path$T: Ty, a#6#0#0: DatatypeType, a#6#1#0: Box :: 
  { $Is(#Reachable0.Path.Extend(a#6#0#0, a#6#1#0), 
      Tclass.Reachable0.Path(Reachable0.Path$T)) } 
  $Is(#Reachable0.Path.Extend(a#6#0#0, a#6#1#0), 
      Tclass.Reachable0.Path(Reachable0.Path$T))
     <==> $Is(a#6#0#0, Tclass.Reachable0.Path(Reachable0.Path$T))
       && $IsBox(a#6#1#0, Reachable0.Path$T));

// Constructor $IsAlloc
axiom (forall Reachable0.Path$T: Ty, a#6#0#0: DatatypeType, a#6#1#0: Box, $h: Heap :: 
  { $IsAlloc(#Reachable0.Path.Extend(a#6#0#0, a#6#1#0), 
      Tclass.Reachable0.Path(Reachable0.Path$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Reachable0.Path.Extend(a#6#0#0, a#6#1#0), 
        Tclass.Reachable0.Path(Reachable0.Path$T), 
        $h)
       <==> $IsAlloc(a#6#0#0, Tclass.Reachable0.Path(Reachable0.Path$T), $h)
         && $IsAllocBox(a#6#1#0, Reachable0.Path$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Reachable0.Path$T: Ty, $h: Heap :: 
  { $IsAlloc(Reachable0.Path._h0(d), Tclass.Reachable0.Path(Reachable0.Path$T), $h) } 
  $IsGoodHeap($h)
       && 
      Reachable0.Path.Extend_q(d)
       && $IsAlloc(d, Tclass.Reachable0.Path(Reachable0.Path$T), $h)
     ==> $IsAlloc(Reachable0.Path._h0(d), Tclass.Reachable0.Path(Reachable0.Path$T), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Reachable0.Path$T: Ty, $h: Heap :: 
  { $IsAllocBox(Reachable0.Path._h1(d), Reachable0.Path$T, $h) } 
  $IsGoodHeap($h)
       && 
      Reachable0.Path.Extend_q(d)
       && $IsAlloc(d, Tclass.Reachable0.Path(Reachable0.Path$T), $h)
     ==> $IsAllocBox(Reachable0.Path._h1(d), Reachable0.Path$T, $h));

// Constructor literal
axiom (forall a#7#0#0: DatatypeType, a#7#1#0: Box :: 
  { #Reachable0.Path.Extend(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #Reachable0.Path.Extend(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#Reachable0.Path.Extend(a#7#0#0, a#7#1#0)));

function Reachable0.Path._h0(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#8#0#0: DatatypeType, a#8#1#0: Box :: 
  { #Reachable0.Path.Extend(a#8#0#0, a#8#1#0) } 
  Reachable0.Path._h0(#Reachable0.Path.Extend(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: DatatypeType, a#9#1#0: Box :: 
  { #Reachable0.Path.Extend(a#9#0#0, a#9#1#0) } 
  DtRank(a#9#0#0) < DtRank(#Reachable0.Path.Extend(a#9#0#0, a#9#1#0)));

function Reachable0.Path._h1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#10#0#0: DatatypeType, a#10#1#0: Box :: 
  { #Reachable0.Path.Extend(a#10#0#0, a#10#1#0) } 
  Reachable0.Path._h1(#Reachable0.Path.Extend(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: DatatypeType, a#11#1#0: Box :: 
  { #Reachable0.Path.Extend(a#11#0#0, a#11#1#0) } 
  BoxRank(a#11#1#0) < DtRank(#Reachable0.Path.Extend(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#Reachable0.Path(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Reachable0.Path(d) } 
  $IsA#Reachable0.Path(d)
     ==> Reachable0.Path.Empty_q(d) || Reachable0.Path.Extend_q(d));

// Questionmark data type disjunctivity
axiom (forall Reachable0.Path$T: Ty, d: DatatypeType :: 
  { Reachable0.Path.Extend_q(d), $Is(d, Tclass.Reachable0.Path(Reachable0.Path$T)) } 
    { Reachable0.Path.Empty_q(d), $Is(d, Tclass.Reachable0.Path(Reachable0.Path$T)) } 
  $Is(d, Tclass.Reachable0.Path(Reachable0.Path$T))
     ==> Reachable0.Path.Empty_q(d) || Reachable0.Path.Extend_q(d));

// Datatype extensional equality declaration
function Reachable0.Path#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Reachable0.Path.Empty
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable0.Path#Equal(a, b), Reachable0.Path.Empty_q(a) } 
    { Reachable0.Path#Equal(a, b), Reachable0.Path.Empty_q(b) } 
  Reachable0.Path.Empty_q(a) && Reachable0.Path.Empty_q(b)
     ==> Reachable0.Path#Equal(a, b));

// Datatype extensional equality definition: #Reachable0.Path.Extend
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable0.Path#Equal(a, b), Reachable0.Path.Extend_q(a) } 
    { Reachable0.Path#Equal(a, b), Reachable0.Path.Extend_q(b) } 
  Reachable0.Path.Extend_q(a) && Reachable0.Path.Extend_q(b)
     ==> (Reachable0.Path#Equal(a, b)
       <==> Reachable0.Path#Equal(Reachable0.Path._h0(a), Reachable0.Path._h0(b))
         && Reachable0.Path._h1(a) == Reachable0.Path._h1(b)));

// Datatype extensionality axiom: Reachable0.Path
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable0.Path#Equal(a, b) } 
  Reachable0.Path#Equal(a, b) <==> a == b);

const unique class.Reachable0.Path: ClassName;

const unique class.Reachable1.__default: ClassName;

// function declaration for Reachable1._default.Reachable
function Reachable1.__default.Reachable(Reachable1._default.Reachable$Extra: Ty, 
    $heap: Heap, 
    source#0: ref, 
    sink#0: ref, 
    S#0: Set)
   : bool;

function Reachable1.__default.Reachable#canCall(Reachable1._default.Reachable$Extra: Ty, 
    $heap: Heap, 
    source#0: ref, 
    sink#0: ref, 
    S#0: Set)
   : bool;

function Tclass.Reachable1.Node() : Ty
uses {
// Tclass.Reachable1.Node Tag
axiom Tag(Tclass.Reachable1.Node()) == Tagclass.Reachable1.Node
   && TagFamily(Tclass.Reachable1.Node()) == tytagFamily$Node;
}

const unique Tagclass.Reachable1.Node: TyTag;

// Box/unbox axiom for Tclass.Reachable1.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Reachable1.Node()) } 
  $IsBox(bx, Tclass.Reachable1.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Reachable1.Node()));

// frame axiom for Reachable1.__default.Reachable
axiom (forall Reachable1._default.Reachable$Extra: Ty, 
    $h0: Heap, 
    $h1: Heap, 
    source#0: ref, 
    sink#0: ref, 
    S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), Reachable1.__default.Reachable(Reachable1._default.Reachable$Extra, $h1, source#0, sink#0, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (Reachable1.__default.Reachable#canCall(Reachable1._default.Reachable$Extra, $h0, source#0, sink#0, S#0)
         || (
          $Is(source#0, Tclass.Reachable1.Node())
           && $Is(sink#0, Tclass.Reachable1.Node())
           && $Is(S#0, TSet(Tclass.Reachable1.Node()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> Reachable1.__default.Reachable(Reachable1._default.Reachable$Extra, $h0, source#0, sink#0, S#0)
       == Reachable1.__default.Reachable(Reachable1._default.Reachable$Extra, $h1, source#0, sink#0, S#0));

function Reachable1.__default.Reachable#requires(Ty, Heap, ref, ref, Set) : bool;

// #requires axiom for Reachable1.__default.Reachable
axiom (forall Reachable1._default.Reachable$Extra: Ty, 
    $Heap: Heap, 
    source#0: ref, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable1.__default.Reachable#requires(Reachable1._default.Reachable$Extra, $Heap, source#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(source#0, Tclass.Reachable1.Node())
       && $Is(sink#0, Tclass.Reachable1.Node())
       && $Is(S#0, TSet(Tclass.Reachable1.Node()))
     ==> Reachable1.__default.Reachable#requires(Reachable1._default.Reachable$Extra, $Heap, source#0, sink#0, S#0)
       == true);

function Tclass.Reachable1.Path(Ty, Ty) : Ty;

const unique Tagclass.Reachable1.Path: TyTag;

// Tclass.Reachable1.Path Tag
axiom (forall Reachable1.Path$T: Ty, Reachable1.Path$Extra: Ty :: 
  { Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra) } 
  Tag(Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra))
       == Tagclass.Reachable1.Path
     && TagFamily(Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra))
       == tytagFamily$Path);

function Tclass.Reachable1.Path_0(Ty) : Ty;

// Tclass.Reachable1.Path injectivity 0
axiom (forall Reachable1.Path$T: Ty, Reachable1.Path$Extra: Ty :: 
  { Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra) } 
  Tclass.Reachable1.Path_0(Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra))
     == Reachable1.Path$T);

function Tclass.Reachable1.Path_1(Ty) : Ty;

// Tclass.Reachable1.Path injectivity 1
axiom (forall Reachable1.Path$T: Ty, Reachable1.Path$Extra: Ty :: 
  { Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra) } 
  Tclass.Reachable1.Path_1(Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra))
     == Reachable1.Path$Extra);

// Box/unbox axiom for Tclass.Reachable1.Path
axiom (forall Reachable1.Path$T: Ty, Reachable1.Path$Extra: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra)) } 
  $IsBox(bx, Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra)));

// definition axiom for Reachable1.__default.Reachable (revealed)
axiom {:id "id206"} (forall Reachable1._default.Reachable$Extra: Ty, 
    $Heap: Heap, 
    source#0: ref, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable1.__default.Reachable(Reachable1._default.Reachable$Extra, $Heap, source#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  Reachable1.__default.Reachable#canCall(Reachable1._default.Reachable$Extra, $Heap, source#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(source#0, Tclass.Reachable1.Node())
         && $Is(sink#0, Tclass.Reachable1.Node())
         && $Is(S#0, TSet(Tclass.Reachable1.Node())))
     ==> (forall via#3: DatatypeType :: 
        { Reachable1.__default.ReachableVia(Reachable1._default.Reachable$Extra, 
            $LS($LZ), 
            $Heap, 
            source#0, 
            via#3, 
            sink#0, 
            S#0) } 
        $Is(via#3, 
            Tclass.Reachable1.Path(Tclass.Reachable1.Node(), Reachable1._default.Reachable$Extra))
           ==> Reachable1.__default.ReachableVia#canCall(Reachable1._default.Reachable$Extra, $Heap, source#0, via#3, sink#0, S#0))
       && Reachable1.__default.Reachable(Reachable1._default.Reachable$Extra, $Heap, source#0, sink#0, S#0)
         == (exists via#3: DatatypeType :: 
          { Reachable1.__default.ReachableVia(Reachable1._default.Reachable$Extra, 
              $LS($LZ), 
              $Heap, 
              source#0, 
              via#3, 
              sink#0, 
              S#0) } 
          $Is(via#3, 
              Tclass.Reachable1.Path(Tclass.Reachable1.Node(), Reachable1._default.Reachable$Extra))
             && Reachable1.__default.ReachableVia(Reachable1._default.Reachable$Extra, 
              $LS($LZ), 
              $Heap, 
              source#0, 
              via#3, 
              sink#0, 
              S#0)));

// function declaration for Reachable1._default.ReachableVia
function Reachable1.__default.ReachableVia(Reachable1._default.ReachableVia$Extra: Ty, 
    $ly: LayerType, 
    $heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set)
   : bool;

function Reachable1.__default.ReachableVia#canCall(Reachable1._default.ReachableVia$Extra: Ty, 
    $heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set)
   : bool;

// layer synonym axiom
axiom (forall Reachable1._default.ReachableVia$Extra: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable1.__default.ReachableVia(Reachable1._default.ReachableVia$Extra, 
      $LS($ly), 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0) } 
  Reachable1.__default.ReachableVia(Reachable1._default.ReachableVia$Extra, 
      $LS($ly), 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0)
     == Reachable1.__default.ReachableVia(Reachable1._default.ReachableVia$Extra, $ly, $Heap, source#0, p#0, sink#0, S#0));

// fuel synonym axiom
axiom (forall Reachable1._default.ReachableVia$Extra: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable1.__default.ReachableVia(Reachable1._default.ReachableVia$Extra, 
      AsFuelBottom($ly), 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0) } 
  Reachable1.__default.ReachableVia(Reachable1._default.ReachableVia$Extra, $ly, $Heap, source#0, p#0, sink#0, S#0)
     == Reachable1.__default.ReachableVia(Reachable1._default.ReachableVia$Extra, $LZ, $Heap, source#0, p#0, sink#0, S#0));

// frame axiom for Reachable1.__default.ReachableVia
axiom (forall Reachable1._default.ReachableVia$Extra: Ty, 
    $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), Reachable1.__default.ReachableVia(Reachable1._default.ReachableVia$Extra, $ly, $h1, source#0, p#0, sink#0, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (Reachable1.__default.ReachableVia#canCall(Reachable1._default.ReachableVia$Extra, $h0, source#0, p#0, sink#0, S#0)
         || (
          $Is(source#0, Tclass.Reachable1.Node())
           && $Is(p#0, 
            Tclass.Reachable1.Path(Tclass.Reachable1.Node(), Reachable1._default.ReachableVia$Extra))
           && $Is(sink#0, Tclass.Reachable1.Node())
           && $Is(S#0, TSet(Tclass.Reachable1.Node()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> Reachable1.__default.ReachableVia(Reachable1._default.ReachableVia$Extra, $ly, $h0, source#0, p#0, sink#0, S#0)
       == Reachable1.__default.ReachableVia(Reachable1._default.ReachableVia$Extra, $ly, $h1, source#0, p#0, sink#0, S#0));

// consequence axiom for Reachable1.__default.ReachableVia
axiom (forall Reachable1._default.ReachableVia$Extra: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable1.__default.ReachableVia(Reachable1._default.ReachableVia$Extra, $ly, $Heap, source#0, p#0, sink#0, S#0) } 
  Reachable1.__default.ReachableVia#canCall(Reachable1._default.ReachableVia$Extra, $Heap, source#0, p#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(source#0, Tclass.Reachable1.Node())
         && $IsAlloc(source#0, Tclass.Reachable1.Node(), $Heap)
         && 
        $Is(p#0, 
          Tclass.Reachable1.Path(Tclass.Reachable1.Node(), Reachable1._default.ReachableVia$Extra))
         && $IsAlloc(p#0, 
          Tclass.Reachable1.Path(Tclass.Reachable1.Node(), Reachable1._default.ReachableVia$Extra), 
          $Heap)
         && 
        $Is(sink#0, Tclass.Reachable1.Node())
         && $IsAlloc(sink#0, Tclass.Reachable1.Node(), $Heap)
         && 
        $Is(S#0, TSet(Tclass.Reachable1.Node()))
         && $IsAlloc(S#0, TSet(Tclass.Reachable1.Node()), $Heap))
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && 
          Reachable1.__default.ReachableVia(Reachable1._default.ReachableVia$Extra, $ly, $Heap, source#0, p#0, sink#0, S#0)
           && 
          $IsAlloc(source#0, Tclass.Reachable1.Node(), $olderHeap)
           && $IsAlloc(sink#0, Tclass.Reachable1.Node(), $olderHeap)
           && $IsAlloc(S#0, TSet(Tclass.Reachable1.Node()), $olderHeap)
         ==> $IsAlloc(p#0, 
          Tclass.Reachable1.Path(Tclass.Reachable1.Node(), Reachable1._default.ReachableVia$Extra), 
          $olderHeap)));

function Reachable1.__default.ReachableVia#requires(Ty, LayerType, Heap, ref, DatatypeType, ref, Set) : bool;

// #requires axiom for Reachable1.__default.ReachableVia
axiom (forall Reachable1._default.ReachableVia$Extra: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable1.__default.ReachableVia#requires(Reachable1._default.ReachableVia$Extra, $ly, $Heap, source#0, p#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(source#0, Tclass.Reachable1.Node())
       && $Is(p#0, 
        Tclass.Reachable1.Path(Tclass.Reachable1.Node(), Reachable1._default.ReachableVia$Extra))
       && $Is(sink#0, Tclass.Reachable1.Node())
       && $Is(S#0, TSet(Tclass.Reachable1.Node()))
     ==> Reachable1.__default.ReachableVia#requires(Reachable1._default.ReachableVia$Extra, $ly, $Heap, source#0, p#0, sink#0, S#0)
       == true);

// definition axiom for Reachable1.__default.ReachableVia (revealed)
axiom {:id "id207"} (forall Reachable1._default.ReachableVia$Extra: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable1.__default.ReachableVia(Reachable1._default.ReachableVia$Extra, 
      $LS($ly), 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0), $IsGoodHeap($Heap) } 
  Reachable1.__default.ReachableVia#canCall(Reachable1._default.ReachableVia$Extra, $Heap, source#0, p#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(source#0, Tclass.Reachable1.Node())
         && $Is(p#0, 
          Tclass.Reachable1.Path(Tclass.Reachable1.Node(), Reachable1._default.ReachableVia$Extra))
         && $Is(sink#0, Tclass.Reachable1.Node())
         && $Is(S#0, TSet(Tclass.Reachable1.Node())))
     ==> (!Reachable1.Path.Empty_q(p#0)
         ==> (var n#3 := $Unbox(Reachable1.Path._h3(p#0)): ref; 
          (var prefix#3 := Reachable1.Path._h2(p#0); 
            Set#IsMember(S#0, $Box(n#3))
               ==> 
              Seq#Contains($Unbox(read($Heap, n#3, Reachable1.Node.children)): Seq, $Box(sink#0))
               ==> Reachable1.__default.ReachableVia#canCall(Reachable1._default.ReachableVia$Extra, $Heap, source#0, prefix#3, n#3, S#0))))
       && Reachable1.__default.ReachableVia(Reachable1._default.ReachableVia$Extra, 
          $LS($ly), 
          $Heap, 
          source#0, 
          p#0, 
          sink#0, 
          S#0)
         == (if Reachable1.Path.Empty_q(p#0)
           then source#0 == sink#0
           else (var extra#2 := Reachable1.Path._h4(p#0); 
            (var n#2 := $Unbox(Reachable1.Path._h3(p#0)): ref; 
              (var prefix#2 := Reachable1.Path._h2(p#0); 
                Set#IsMember(S#0, $Box(n#2))
                   && Seq#Contains($Unbox(read($Heap, n#2, Reachable1.Node.children)): Seq, $Box(sink#0))
                   && Reachable1.__default.ReachableVia(Reachable1._default.ReachableVia$Extra, $ly, $Heap, source#0, prefix#2, n#2, S#0))))));

const unique class.Reachable1.Node?: ClassName;

function Tclass.Reachable1.Node?() : Ty
uses {
// Tclass.Reachable1.Node? Tag
axiom Tag(Tclass.Reachable1.Node?()) == Tagclass.Reachable1.Node?
   && TagFamily(Tclass.Reachable1.Node?()) == tytagFamily$Node;
}

const unique Tagclass.Reachable1.Node?: TyTag;

// Box/unbox axiom for Tclass.Reachable1.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Reachable1.Node?()) } 
  $IsBox(bx, Tclass.Reachable1.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Reachable1.Node?()));

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Reachable1.Node?()) } 
  $Is($o, Tclass.Reachable1.Node?())
     <==> $o == null || dtype($o) == Tclass.Reachable1.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Reachable1.Node?(), $h) } 
  $IsAlloc($o, Tclass.Reachable1.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const Reachable1.Node.children: Field
uses {
axiom FDim(Reachable1.Node.children) == 0
   && FieldOfDecl(class.Reachable1.Node?, field$children) == Reachable1.Node.children
   && !$IsGhostField(Reachable1.Node.children);
}

// Node.children: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, Reachable1.Node.children)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.Reachable1.Node?()
     ==> $Is($Unbox(read($h, $o, Reachable1.Node.children)): Seq, 
      TSeq(Tclass.Reachable1.Node())));

// Node.children: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, Reachable1.Node.children)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.Reachable1.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, Reachable1.Node.children)): Seq, 
      TSeq(Tclass.Reachable1.Node()), 
      $h));

// $Is axiom for non-null type Reachable1.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.Reachable1.Node()) } { $Is(c#0, Tclass.Reachable1.Node?()) } 
  $Is(c#0, Tclass.Reachable1.Node())
     <==> $Is(c#0, Tclass.Reachable1.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type Reachable1.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Reachable1.Node(), $h) } 
    { $IsAlloc(c#0, Tclass.Reachable1.Node?(), $h) } 
  $IsAlloc(c#0, Tclass.Reachable1.Node(), $h)
     <==> $IsAlloc(c#0, Tclass.Reachable1.Node?(), $h));

// Constructor function declaration
function #Reachable1.Path.Empty() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Reachable1.Path.Empty()) == ##Reachable1.Path.Empty;
// Constructor literal
axiom #Reachable1.Path.Empty() == Lit(#Reachable1.Path.Empty());
}

const unique ##Reachable1.Path.Empty: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Reachable1.Path.Empty()) == ##Reachable1.Path.Empty;
}

function Reachable1.Path.Empty_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Reachable1.Path.Empty_q(d) } 
  Reachable1.Path.Empty_q(d) <==> DatatypeCtorId(d) == ##Reachable1.Path.Empty);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Reachable1.Path.Empty_q(d) } 
  Reachable1.Path.Empty_q(d) ==> d == #Reachable1.Path.Empty());

// Constructor $Is
axiom (forall Reachable1.Path$T: Ty, Reachable1.Path$Extra: Ty :: 
  { $Is(#Reachable1.Path.Empty(), 
      Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra)) } 
  $Is(#Reachable1.Path.Empty(), 
    Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra)));

// Constructor $IsAlloc
axiom (forall Reachable1.Path$T: Ty, Reachable1.Path$Extra: Ty, $h: Heap :: 
  { $IsAlloc(#Reachable1.Path.Empty(), 
      Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Reachable1.Path.Empty(), 
      Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra), 
      $h));

// Constructor function declaration
function #Reachable1.Path.Extend(DatatypeType, Box, Box) : DatatypeType;

const unique ##Reachable1.Path.Extend: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: DatatypeType, a#4#1#0: Box, a#4#2#0: Box :: 
  { #Reachable1.Path.Extend(a#4#0#0, a#4#1#0, a#4#2#0) } 
  DatatypeCtorId(#Reachable1.Path.Extend(a#4#0#0, a#4#1#0, a#4#2#0))
     == ##Reachable1.Path.Extend);
}

function Reachable1.Path.Extend_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Reachable1.Path.Extend_q(d) } 
  Reachable1.Path.Extend_q(d) <==> DatatypeCtorId(d) == ##Reachable1.Path.Extend);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Reachable1.Path.Extend_q(d) } 
  Reachable1.Path.Extend_q(d)
     ==> (exists a#5#0#0: DatatypeType, a#5#1#0: Box, a#5#2#0: Box :: 
      d == #Reachable1.Path.Extend(a#5#0#0, a#5#1#0, a#5#2#0)));

// Constructor $Is
axiom (forall Reachable1.Path$T: Ty, 
    Reachable1.Path$Extra: Ty, 
    a#6#0#0: DatatypeType, 
    a#6#1#0: Box, 
    a#6#2#0: Box :: 
  { $Is(#Reachable1.Path.Extend(a#6#0#0, a#6#1#0, a#6#2#0), 
      Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra)) } 
  $Is(#Reachable1.Path.Extend(a#6#0#0, a#6#1#0, a#6#2#0), 
      Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra))
     <==> $Is(a#6#0#0, Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra))
       && $IsBox(a#6#1#0, Reachable1.Path$T)
       && $IsBox(a#6#2#0, Reachable1.Path$Extra));

// Constructor $IsAlloc
axiom (forall Reachable1.Path$T: Ty, 
    Reachable1.Path$Extra: Ty, 
    a#6#0#0: DatatypeType, 
    a#6#1#0: Box, 
    a#6#2#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#Reachable1.Path.Extend(a#6#0#0, a#6#1#0, a#6#2#0), 
      Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Reachable1.Path.Extend(a#6#0#0, a#6#1#0, a#6#2#0), 
        Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra), 
        $h)
       <==> $IsAlloc(a#6#0#0, Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra), $h)
         && $IsAllocBox(a#6#1#0, Reachable1.Path$T, $h)
         && $IsAllocBox(a#6#2#0, Reachable1.Path$Extra, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Reachable1.Path$T: Ty, Reachable1.Path$Extra: Ty, $h: Heap :: 
  { $IsAlloc(Reachable1.Path._h2(d), 
      Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra), 
      $h) } 
  $IsGoodHeap($h)
       && 
      Reachable1.Path.Extend_q(d)
       && $IsAlloc(d, Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra), $h)
     ==> $IsAlloc(Reachable1.Path._h2(d), 
      Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra), 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Reachable1.Path$T: Ty, $h: Heap :: 
  { $IsAllocBox(Reachable1.Path._h3(d), Reachable1.Path$T, $h) } 
  $IsGoodHeap($h)
       && 
      Reachable1.Path.Extend_q(d)
       && (exists Reachable1.Path$Extra: Ty :: 
        { $IsAlloc(d, Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra), $h) } 
        $IsAlloc(d, Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra), $h))
     ==> $IsAllocBox(Reachable1.Path._h3(d), Reachable1.Path$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Reachable1.Path$Extra: Ty, $h: Heap :: 
  { $IsAllocBox(Reachable1.Path._h4(d), Reachable1.Path$Extra, $h) } 
  $IsGoodHeap($h)
       && 
      Reachable1.Path.Extend_q(d)
       && (exists Reachable1.Path$T: Ty :: 
        { $IsAlloc(d, Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra), $h) } 
        $IsAlloc(d, Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra), $h))
     ==> $IsAllocBox(Reachable1.Path._h4(d), Reachable1.Path$Extra, $h));

// Constructor literal
axiom (forall a#7#0#0: DatatypeType, a#7#1#0: Box, a#7#2#0: Box :: 
  { #Reachable1.Path.Extend(Lit(a#7#0#0), Lit(a#7#1#0), Lit(a#7#2#0)) } 
  #Reachable1.Path.Extend(Lit(a#7#0#0), Lit(a#7#1#0), Lit(a#7#2#0))
     == Lit(#Reachable1.Path.Extend(a#7#0#0, a#7#1#0, a#7#2#0)));

function Reachable1.Path._h2(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#8#0#0: DatatypeType, a#8#1#0: Box, a#8#2#0: Box :: 
  { #Reachable1.Path.Extend(a#8#0#0, a#8#1#0, a#8#2#0) } 
  Reachable1.Path._h2(#Reachable1.Path.Extend(a#8#0#0, a#8#1#0, a#8#2#0))
     == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: DatatypeType, a#9#1#0: Box, a#9#2#0: Box :: 
  { #Reachable1.Path.Extend(a#9#0#0, a#9#1#0, a#9#2#0) } 
  DtRank(a#9#0#0) < DtRank(#Reachable1.Path.Extend(a#9#0#0, a#9#1#0, a#9#2#0)));

function Reachable1.Path._h3(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#10#0#0: DatatypeType, a#10#1#0: Box, a#10#2#0: Box :: 
  { #Reachable1.Path.Extend(a#10#0#0, a#10#1#0, a#10#2#0) } 
  Reachable1.Path._h3(#Reachable1.Path.Extend(a#10#0#0, a#10#1#0, a#10#2#0))
     == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: DatatypeType, a#11#1#0: Box, a#11#2#0: Box :: 
  { #Reachable1.Path.Extend(a#11#0#0, a#11#1#0, a#11#2#0) } 
  BoxRank(a#11#1#0)
     < DtRank(#Reachable1.Path.Extend(a#11#0#0, a#11#1#0, a#11#2#0)));

function Reachable1.Path._h4(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#12#0#0: DatatypeType, a#12#1#0: Box, a#12#2#0: Box :: 
  { #Reachable1.Path.Extend(a#12#0#0, a#12#1#0, a#12#2#0) } 
  Reachable1.Path._h4(#Reachable1.Path.Extend(a#12#0#0, a#12#1#0, a#12#2#0))
     == a#12#2#0);

// Inductive rank
axiom (forall a#13#0#0: DatatypeType, a#13#1#0: Box, a#13#2#0: Box :: 
  { #Reachable1.Path.Extend(a#13#0#0, a#13#1#0, a#13#2#0) } 
  BoxRank(a#13#2#0)
     < DtRank(#Reachable1.Path.Extend(a#13#0#0, a#13#1#0, a#13#2#0)));

// Depth-one case-split function
function $IsA#Reachable1.Path(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Reachable1.Path(d) } 
  $IsA#Reachable1.Path(d)
     ==> Reachable1.Path.Empty_q(d) || Reachable1.Path.Extend_q(d));

// Questionmark data type disjunctivity
axiom (forall Reachable1.Path$T: Ty, Reachable1.Path$Extra: Ty, d: DatatypeType :: 
  { Reachable1.Path.Extend_q(d), $Is(d, Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra)) } 
    { Reachable1.Path.Empty_q(d), $Is(d, Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra)) } 
  $Is(d, Tclass.Reachable1.Path(Reachable1.Path$T, Reachable1.Path$Extra))
     ==> Reachable1.Path.Empty_q(d) || Reachable1.Path.Extend_q(d));

// Datatype extensional equality declaration
function Reachable1.Path#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Reachable1.Path.Empty
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable1.Path#Equal(a, b), Reachable1.Path.Empty_q(a) } 
    { Reachable1.Path#Equal(a, b), Reachable1.Path.Empty_q(b) } 
  Reachable1.Path.Empty_q(a) && Reachable1.Path.Empty_q(b)
     ==> Reachable1.Path#Equal(a, b));

// Datatype extensional equality definition: #Reachable1.Path.Extend
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable1.Path#Equal(a, b), Reachable1.Path.Extend_q(a) } 
    { Reachable1.Path#Equal(a, b), Reachable1.Path.Extend_q(b) } 
  Reachable1.Path.Extend_q(a) && Reachable1.Path.Extend_q(b)
     ==> (Reachable1.Path#Equal(a, b)
       <==> Reachable1.Path#Equal(Reachable1.Path._h2(a), Reachable1.Path._h2(b))
         && Reachable1.Path._h3(a) == Reachable1.Path._h3(b)
         && Reachable1.Path._h4(a) == Reachable1.Path._h4(b)));

// Datatype extensionality axiom: Reachable1.Path
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable1.Path#Equal(a, b) } 
  Reachable1.Path#Equal(a, b) <==> a == b);

const unique class.Reachable1.Path: ClassName;

const unique class.Reachable2.__default: ClassName;

// function declaration for Reachable2._default.Reachable
function Reachable2.__default.Reachable($heap: Heap, source#0: ref, sink#0: ref, S#0: Set) : bool;

function Reachable2.__default.Reachable#canCall($heap: Heap, source#0: ref, sink#0: ref, S#0: Set) : bool;

function Tclass.Reachable2.Node() : Ty
uses {
// Tclass.Reachable2.Node Tag
axiom Tag(Tclass.Reachable2.Node()) == Tagclass.Reachable2.Node
   && TagFamily(Tclass.Reachable2.Node()) == tytagFamily$Node;
}

const unique Tagclass.Reachable2.Node: TyTag;

// Box/unbox axiom for Tclass.Reachable2.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Reachable2.Node()) } 
  $IsBox(bx, Tclass.Reachable2.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Reachable2.Node()));

// frame axiom for Reachable2.__default.Reachable
axiom (forall $h0: Heap, $h1: Heap, source#0: ref, sink#0: ref, S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), Reachable2.__default.Reachable($h1, source#0, sink#0, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (Reachable2.__default.Reachable#canCall($h0, source#0, sink#0, S#0)
         || (
          $Is(source#0, Tclass.Reachable2.Node())
           && $Is(sink#0, Tclass.Reachable2.Node())
           && $Is(S#0, TSet(Tclass.Reachable2.Node()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> Reachable2.__default.Reachable($h0, source#0, sink#0, S#0)
       == Reachable2.__default.Reachable($h1, source#0, sink#0, S#0));

function Reachable2.__default.Reachable#requires(Heap, ref, ref, Set) : bool;

// #requires axiom for Reachable2.__default.Reachable
axiom (forall $Heap: Heap, source#0: ref, sink#0: ref, S#0: Set :: 
  { Reachable2.__default.Reachable#requires($Heap, source#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(source#0, Tclass.Reachable2.Node())
       && $Is(sink#0, Tclass.Reachable2.Node())
       && $Is(S#0, TSet(Tclass.Reachable2.Node()))
     ==> Reachable2.__default.Reachable#requires($Heap, source#0, sink#0, S#0) == true);

function Tclass.Reachable2.Path(Ty, Ty) : Ty;

const unique Tagclass.Reachable2.Path: TyTag;

// Tclass.Reachable2.Path Tag
axiom (forall Reachable2.Path$T: Ty, Reachable2.Path$Extra: Ty :: 
  { Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra) } 
  Tag(Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra))
       == Tagclass.Reachable2.Path
     && TagFamily(Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra))
       == tytagFamily$Path);

function Tclass.Reachable2.Path_0(Ty) : Ty;

// Tclass.Reachable2.Path injectivity 0
axiom (forall Reachable2.Path$T: Ty, Reachable2.Path$Extra: Ty :: 
  { Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra) } 
  Tclass.Reachable2.Path_0(Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra))
     == Reachable2.Path$T);

function Tclass.Reachable2.Path_1(Ty) : Ty;

// Tclass.Reachable2.Path injectivity 1
axiom (forall Reachable2.Path$T: Ty, Reachable2.Path$Extra: Ty :: 
  { Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra) } 
  Tclass.Reachable2.Path_1(Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra))
     == Reachable2.Path$Extra);

// Box/unbox axiom for Tclass.Reachable2.Path
axiom (forall Reachable2.Path$T: Ty, Reachable2.Path$Extra: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra)) } 
  $IsBox(bx, Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra)));

// definition axiom for Reachable2.__default.Reachable (revealed)
axiom {:id "id208"} (forall $Heap: Heap, source#0: ref, sink#0: ref, S#0: Set :: 
  { Reachable2.__default.Reachable($Heap, source#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  Reachable2.__default.Reachable#canCall($Heap, source#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(source#0, Tclass.Reachable2.Node())
         && $Is(sink#0, Tclass.Reachable2.Node())
         && $Is(S#0, TSet(Tclass.Reachable2.Node())))
     ==> (forall via#3: DatatypeType :: 
        { Reachable2.__default.ReachableVia($LS($LZ), $Heap, source#0, via#3, sink#0, S#0) } 
        $Is(via#3, Tclass.Reachable2.Path(Tclass.Reachable2.Node(), TInt))
           ==> Reachable2.__default.ReachableVia#canCall($Heap, source#0, via#3, sink#0, S#0))
       && Reachable2.__default.Reachable($Heap, source#0, sink#0, S#0)
         == (exists via#3: DatatypeType :: 
          { Reachable2.__default.ReachableVia($LS($LZ), $Heap, source#0, via#3, sink#0, S#0) } 
          $Is(via#3, Tclass.Reachable2.Path(Tclass.Reachable2.Node(), TInt))
             && Reachable2.__default.ReachableVia($LS($LZ), $Heap, source#0, via#3, sink#0, S#0)));

// function declaration for Reachable2._default.ReachableVia
function Reachable2.__default.ReachableVia($ly: LayerType, 
    $heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set)
   : bool;

function Reachable2.__default.ReachableVia#canCall($heap: Heap, source#0: ref, p#0: DatatypeType, sink#0: ref, S#0: Set) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable2.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0) } 
  Reachable2.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0)
     == Reachable2.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable2.__default.ReachableVia(AsFuelBottom($ly), $Heap, source#0, p#0, sink#0, S#0) } 
  Reachable2.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0)
     == Reachable2.__default.ReachableVia($LZ, $Heap, source#0, p#0, sink#0, S#0));

// frame axiom for Reachable2.__default.ReachableVia
axiom (forall $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), Reachable2.__default.ReachableVia($ly, $h1, source#0, p#0, sink#0, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (Reachable2.__default.ReachableVia#canCall($h0, source#0, p#0, sink#0, S#0)
         || (
          $Is(source#0, Tclass.Reachable2.Node())
           && $Is(p#0, Tclass.Reachable2.Path(Tclass.Reachable2.Node(), TInt))
           && $Is(sink#0, Tclass.Reachable2.Node())
           && $Is(S#0, TSet(Tclass.Reachable2.Node()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> Reachable2.__default.ReachableVia($ly, $h0, source#0, p#0, sink#0, S#0)
       == Reachable2.__default.ReachableVia($ly, $h1, source#0, p#0, sink#0, S#0));

// consequence axiom for Reachable2.__default.ReachableVia
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable2.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0) } 
  Reachable2.__default.ReachableVia#canCall($Heap, source#0, p#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(source#0, Tclass.Reachable2.Node())
         && $IsAlloc(source#0, Tclass.Reachable2.Node(), $Heap)
         && 
        $Is(p#0, Tclass.Reachable2.Path(Tclass.Reachable2.Node(), TInt))
         && $IsAlloc(p#0, Tclass.Reachable2.Path(Tclass.Reachable2.Node(), TInt), $Heap)
         && 
        $Is(sink#0, Tclass.Reachable2.Node())
         && $IsAlloc(sink#0, Tclass.Reachable2.Node(), $Heap)
         && 
        $Is(S#0, TSet(Tclass.Reachable2.Node()))
         && $IsAlloc(S#0, TSet(Tclass.Reachable2.Node()), $Heap))
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && 
          Reachable2.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0)
           && 
          $IsAlloc(source#0, Tclass.Reachable2.Node(), $olderHeap)
           && $IsAlloc(sink#0, Tclass.Reachable2.Node(), $olderHeap)
           && $IsAlloc(S#0, TSet(Tclass.Reachable2.Node()), $olderHeap)
         ==> $IsAlloc(p#0, Tclass.Reachable2.Path(Tclass.Reachable2.Node(), TInt), $olderHeap)));

function Reachable2.__default.ReachableVia#requires(LayerType, Heap, ref, DatatypeType, ref, Set) : bool;

// #requires axiom for Reachable2.__default.ReachableVia
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable2.__default.ReachableVia#requires($ly, $Heap, source#0, p#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(source#0, Tclass.Reachable2.Node())
       && $Is(p#0, Tclass.Reachable2.Path(Tclass.Reachable2.Node(), TInt))
       && $Is(sink#0, Tclass.Reachable2.Node())
       && $Is(S#0, TSet(Tclass.Reachable2.Node()))
     ==> Reachable2.__default.ReachableVia#requires($ly, $Heap, source#0, p#0, sink#0, S#0)
       == true);

// definition axiom for Reachable2.__default.ReachableVia (revealed)
axiom {:id "id209"} (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable2.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  Reachable2.__default.ReachableVia#canCall($Heap, source#0, p#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(source#0, Tclass.Reachable2.Node())
         && $Is(p#0, Tclass.Reachable2.Path(Tclass.Reachable2.Node(), TInt))
         && $Is(sink#0, Tclass.Reachable2.Node())
         && $Is(S#0, TSet(Tclass.Reachable2.Node())))
     ==> (!Reachable2.Path.Empty_q(p#0)
         ==> (var n#3 := $Unbox(Reachable2.Path._h6(p#0)): ref; 
          (var prefix#3 := Reachable2.Path._h5(p#0); 
            Set#IsMember(S#0, $Box(n#3))
               ==> 
              Seq#Contains($Unbox(read($Heap, n#3, Reachable2.Node.children)): Seq, $Box(sink#0))
               ==> Reachable2.__default.ReachableVia#canCall($Heap, source#0, prefix#3, n#3, S#0))))
       && Reachable2.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0)
         == (if Reachable2.Path.Empty_q(p#0)
           then source#0 == sink#0
           else (var extra#2 := $Unbox(Reachable2.Path._h7(p#0)): int; 
            (var n#2 := $Unbox(Reachable2.Path._h6(p#0)): ref; 
              (var prefix#2 := Reachable2.Path._h5(p#0); 
                Set#IsMember(S#0, $Box(n#2))
                   && Seq#Contains($Unbox(read($Heap, n#2, Reachable2.Node.children)): Seq, $Box(sink#0))
                   && Reachable2.__default.ReachableVia($ly, $Heap, source#0, prefix#2, n#2, S#0))))));

const unique class.Reachable2.Node?: ClassName;

function Tclass.Reachable2.Node?() : Ty
uses {
// Tclass.Reachable2.Node? Tag
axiom Tag(Tclass.Reachable2.Node?()) == Tagclass.Reachable2.Node?
   && TagFamily(Tclass.Reachable2.Node?()) == tytagFamily$Node;
}

const unique Tagclass.Reachable2.Node?: TyTag;

// Box/unbox axiom for Tclass.Reachable2.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Reachable2.Node?()) } 
  $IsBox(bx, Tclass.Reachable2.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Reachable2.Node?()));

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Reachable2.Node?()) } 
  $Is($o, Tclass.Reachable2.Node?())
     <==> $o == null || dtype($o) == Tclass.Reachable2.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Reachable2.Node?(), $h) } 
  $IsAlloc($o, Tclass.Reachable2.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const Reachable2.Node.children: Field
uses {
axiom FDim(Reachable2.Node.children) == 0
   && FieldOfDecl(class.Reachable2.Node?, field$children) == Reachable2.Node.children
   && !$IsGhostField(Reachable2.Node.children);
}

// Node.children: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, Reachable2.Node.children)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.Reachable2.Node?()
     ==> $Is($Unbox(read($h, $o, Reachable2.Node.children)): Seq, 
      TSeq(Tclass.Reachable2.Node())));

// Node.children: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, Reachable2.Node.children)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.Reachable2.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, Reachable2.Node.children)): Seq, 
      TSeq(Tclass.Reachable2.Node()), 
      $h));

// $Is axiom for non-null type Reachable2.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.Reachable2.Node()) } { $Is(c#0, Tclass.Reachable2.Node?()) } 
  $Is(c#0, Tclass.Reachable2.Node())
     <==> $Is(c#0, Tclass.Reachable2.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type Reachable2.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Reachable2.Node(), $h) } 
    { $IsAlloc(c#0, Tclass.Reachable2.Node?(), $h) } 
  $IsAlloc(c#0, Tclass.Reachable2.Node(), $h)
     <==> $IsAlloc(c#0, Tclass.Reachable2.Node?(), $h));

// Constructor function declaration
function #Reachable2.Path.Empty() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Reachable2.Path.Empty()) == ##Reachable2.Path.Empty;
// Constructor literal
axiom #Reachable2.Path.Empty() == Lit(#Reachable2.Path.Empty());
}

const unique ##Reachable2.Path.Empty: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Reachable2.Path.Empty()) == ##Reachable2.Path.Empty;
}

function Reachable2.Path.Empty_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Reachable2.Path.Empty_q(d) } 
  Reachable2.Path.Empty_q(d) <==> DatatypeCtorId(d) == ##Reachable2.Path.Empty);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Reachable2.Path.Empty_q(d) } 
  Reachable2.Path.Empty_q(d) ==> d == #Reachable2.Path.Empty());

// Constructor $Is
axiom (forall Reachable2.Path$T: Ty, Reachable2.Path$Extra: Ty :: 
  { $Is(#Reachable2.Path.Empty(), 
      Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra)) } 
  $Is(#Reachable2.Path.Empty(), 
    Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra)));

// Constructor $IsAlloc
axiom (forall Reachable2.Path$T: Ty, Reachable2.Path$Extra: Ty, $h: Heap :: 
  { $IsAlloc(#Reachable2.Path.Empty(), 
      Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Reachable2.Path.Empty(), 
      Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra), 
      $h));

// Constructor function declaration
function #Reachable2.Path.Extend(DatatypeType, Box, Box) : DatatypeType;

const unique ##Reachable2.Path.Extend: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: DatatypeType, a#4#1#0: Box, a#4#2#0: Box :: 
  { #Reachable2.Path.Extend(a#4#0#0, a#4#1#0, a#4#2#0) } 
  DatatypeCtorId(#Reachable2.Path.Extend(a#4#0#0, a#4#1#0, a#4#2#0))
     == ##Reachable2.Path.Extend);
}

function Reachable2.Path.Extend_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Reachable2.Path.Extend_q(d) } 
  Reachable2.Path.Extend_q(d) <==> DatatypeCtorId(d) == ##Reachable2.Path.Extend);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Reachable2.Path.Extend_q(d) } 
  Reachable2.Path.Extend_q(d)
     ==> (exists a#5#0#0: DatatypeType, a#5#1#0: Box, a#5#2#0: Box :: 
      d == #Reachable2.Path.Extend(a#5#0#0, a#5#1#0, a#5#2#0)));

// Constructor $Is
axiom (forall Reachable2.Path$T: Ty, 
    Reachable2.Path$Extra: Ty, 
    a#6#0#0: DatatypeType, 
    a#6#1#0: Box, 
    a#6#2#0: Box :: 
  { $Is(#Reachable2.Path.Extend(a#6#0#0, a#6#1#0, a#6#2#0), 
      Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra)) } 
  $Is(#Reachable2.Path.Extend(a#6#0#0, a#6#1#0, a#6#2#0), 
      Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra))
     <==> $Is(a#6#0#0, Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra))
       && $IsBox(a#6#1#0, Reachable2.Path$T)
       && $IsBox(a#6#2#0, Reachable2.Path$Extra));

// Constructor $IsAlloc
axiom (forall Reachable2.Path$T: Ty, 
    Reachable2.Path$Extra: Ty, 
    a#6#0#0: DatatypeType, 
    a#6#1#0: Box, 
    a#6#2#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#Reachable2.Path.Extend(a#6#0#0, a#6#1#0, a#6#2#0), 
      Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Reachable2.Path.Extend(a#6#0#0, a#6#1#0, a#6#2#0), 
        Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra), 
        $h)
       <==> $IsAlloc(a#6#0#0, Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra), $h)
         && $IsAllocBox(a#6#1#0, Reachable2.Path$T, $h)
         && $IsAllocBox(a#6#2#0, Reachable2.Path$Extra, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Reachable2.Path$T: Ty, Reachable2.Path$Extra: Ty, $h: Heap :: 
  { $IsAlloc(Reachable2.Path._h5(d), 
      Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra), 
      $h) } 
  $IsGoodHeap($h)
       && 
      Reachable2.Path.Extend_q(d)
       && $IsAlloc(d, Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra), $h)
     ==> $IsAlloc(Reachable2.Path._h5(d), 
      Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra), 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Reachable2.Path$T: Ty, $h: Heap :: 
  { $IsAllocBox(Reachable2.Path._h6(d), Reachable2.Path$T, $h) } 
  $IsGoodHeap($h)
       && 
      Reachable2.Path.Extend_q(d)
       && (exists Reachable2.Path$Extra: Ty :: 
        { $IsAlloc(d, Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra), $h) } 
        $IsAlloc(d, Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra), $h))
     ==> $IsAllocBox(Reachable2.Path._h6(d), Reachable2.Path$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Reachable2.Path$Extra: Ty, $h: Heap :: 
  { $IsAllocBox(Reachable2.Path._h7(d), Reachable2.Path$Extra, $h) } 
  $IsGoodHeap($h)
       && 
      Reachable2.Path.Extend_q(d)
       && (exists Reachable2.Path$T: Ty :: 
        { $IsAlloc(d, Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra), $h) } 
        $IsAlloc(d, Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra), $h))
     ==> $IsAllocBox(Reachable2.Path._h7(d), Reachable2.Path$Extra, $h));

// Constructor literal
axiom (forall a#7#0#0: DatatypeType, a#7#1#0: Box, a#7#2#0: Box :: 
  { #Reachable2.Path.Extend(Lit(a#7#0#0), Lit(a#7#1#0), Lit(a#7#2#0)) } 
  #Reachable2.Path.Extend(Lit(a#7#0#0), Lit(a#7#1#0), Lit(a#7#2#0))
     == Lit(#Reachable2.Path.Extend(a#7#0#0, a#7#1#0, a#7#2#0)));

function Reachable2.Path._h5(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#8#0#0: DatatypeType, a#8#1#0: Box, a#8#2#0: Box :: 
  { #Reachable2.Path.Extend(a#8#0#0, a#8#1#0, a#8#2#0) } 
  Reachable2.Path._h5(#Reachable2.Path.Extend(a#8#0#0, a#8#1#0, a#8#2#0))
     == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: DatatypeType, a#9#1#0: Box, a#9#2#0: Box :: 
  { #Reachable2.Path.Extend(a#9#0#0, a#9#1#0, a#9#2#0) } 
  DtRank(a#9#0#0) < DtRank(#Reachable2.Path.Extend(a#9#0#0, a#9#1#0, a#9#2#0)));

function Reachable2.Path._h6(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#10#0#0: DatatypeType, a#10#1#0: Box, a#10#2#0: Box :: 
  { #Reachable2.Path.Extend(a#10#0#0, a#10#1#0, a#10#2#0) } 
  Reachable2.Path._h6(#Reachable2.Path.Extend(a#10#0#0, a#10#1#0, a#10#2#0))
     == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: DatatypeType, a#11#1#0: Box, a#11#2#0: Box :: 
  { #Reachable2.Path.Extend(a#11#0#0, a#11#1#0, a#11#2#0) } 
  BoxRank(a#11#1#0)
     < DtRank(#Reachable2.Path.Extend(a#11#0#0, a#11#1#0, a#11#2#0)));

function Reachable2.Path._h7(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#12#0#0: DatatypeType, a#12#1#0: Box, a#12#2#0: Box :: 
  { #Reachable2.Path.Extend(a#12#0#0, a#12#1#0, a#12#2#0) } 
  Reachable2.Path._h7(#Reachable2.Path.Extend(a#12#0#0, a#12#1#0, a#12#2#0))
     == a#12#2#0);

// Inductive rank
axiom (forall a#13#0#0: DatatypeType, a#13#1#0: Box, a#13#2#0: Box :: 
  { #Reachable2.Path.Extend(a#13#0#0, a#13#1#0, a#13#2#0) } 
  BoxRank(a#13#2#0)
     < DtRank(#Reachable2.Path.Extend(a#13#0#0, a#13#1#0, a#13#2#0)));

// Depth-one case-split function
function $IsA#Reachable2.Path(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Reachable2.Path(d) } 
  $IsA#Reachable2.Path(d)
     ==> Reachable2.Path.Empty_q(d) || Reachable2.Path.Extend_q(d));

// Questionmark data type disjunctivity
axiom (forall Reachable2.Path$T: Ty, Reachable2.Path$Extra: Ty, d: DatatypeType :: 
  { Reachable2.Path.Extend_q(d), $Is(d, Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra)) } 
    { Reachable2.Path.Empty_q(d), $Is(d, Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra)) } 
  $Is(d, Tclass.Reachable2.Path(Reachable2.Path$T, Reachable2.Path$Extra))
     ==> Reachable2.Path.Empty_q(d) || Reachable2.Path.Extend_q(d));

// Datatype extensional equality declaration
function Reachable2.Path#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Reachable2.Path.Empty
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable2.Path#Equal(a, b), Reachable2.Path.Empty_q(a) } 
    { Reachable2.Path#Equal(a, b), Reachable2.Path.Empty_q(b) } 
  Reachable2.Path.Empty_q(a) && Reachable2.Path.Empty_q(b)
     ==> Reachable2.Path#Equal(a, b));

// Datatype extensional equality definition: #Reachable2.Path.Extend
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable2.Path#Equal(a, b), Reachable2.Path.Extend_q(a) } 
    { Reachable2.Path#Equal(a, b), Reachable2.Path.Extend_q(b) } 
  Reachable2.Path.Extend_q(a) && Reachable2.Path.Extend_q(b)
     ==> (Reachable2.Path#Equal(a, b)
       <==> Reachable2.Path#Equal(Reachable2.Path._h5(a), Reachable2.Path._h5(b))
         && Reachable2.Path._h6(a) == Reachable2.Path._h6(b)
         && Reachable2.Path._h7(a) == Reachable2.Path._h7(b)));

// Datatype extensionality axiom: Reachable2.Path
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable2.Path#Equal(a, b) } 
  Reachable2.Path#Equal(a, b) <==> a == b);

const unique class.Reachable2.Path: ClassName;

const unique class.Reachable3.__default: ClassName;

// function declaration for Reachable3._default.Reachable
function Reachable3.__default.Reachable($heap: Heap, source#0: ref, sink#0: ref, S#0: Set) : bool;

function Reachable3.__default.Reachable#canCall($heap: Heap, source#0: ref, sink#0: ref, S#0: Set) : bool;

function Tclass.Reachable3.Node() : Ty
uses {
// Tclass.Reachable3.Node Tag
axiom Tag(Tclass.Reachable3.Node()) == Tagclass.Reachable3.Node
   && TagFamily(Tclass.Reachable3.Node()) == tytagFamily$Node;
}

const unique Tagclass.Reachable3.Node: TyTag;

// Box/unbox axiom for Tclass.Reachable3.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Reachable3.Node()) } 
  $IsBox(bx, Tclass.Reachable3.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Reachable3.Node()));

// frame axiom for Reachable3.__default.Reachable
axiom (forall $h0: Heap, $h1: Heap, source#0: ref, sink#0: ref, S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), Reachable3.__default.Reachable($h1, source#0, sink#0, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (Reachable3.__default.Reachable#canCall($h0, source#0, sink#0, S#0)
         || (
          $Is(source#0, Tclass.Reachable3.Node())
           && $Is(sink#0, Tclass.Reachable3.Node())
           && $Is(S#0, TSet(Tclass.Reachable3.Node()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> Reachable3.__default.Reachable($h0, source#0, sink#0, S#0)
       == Reachable3.__default.Reachable($h1, source#0, sink#0, S#0));

function Reachable3.__default.Reachable#requires(Heap, ref, ref, Set) : bool;

// #requires axiom for Reachable3.__default.Reachable
axiom (forall $Heap: Heap, source#0: ref, sink#0: ref, S#0: Set :: 
  { Reachable3.__default.Reachable#requires($Heap, source#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(source#0, Tclass.Reachable3.Node())
       && $Is(sink#0, Tclass.Reachable3.Node())
       && $Is(S#0, TSet(Tclass.Reachable3.Node()))
     ==> Reachable3.__default.Reachable#requires($Heap, source#0, sink#0, S#0) == true);

function Tclass.Reachable3.Path(Ty) : Ty;

const unique Tagclass.Reachable3.Path: TyTag;

// Tclass.Reachable3.Path Tag
axiom (forall Reachable3.Path$T: Ty :: 
  { Tclass.Reachable3.Path(Reachable3.Path$T) } 
  Tag(Tclass.Reachable3.Path(Reachable3.Path$T)) == Tagclass.Reachable3.Path
     && TagFamily(Tclass.Reachable3.Path(Reachable3.Path$T)) == tytagFamily$Path);

function Tclass.Reachable3.Path_0(Ty) : Ty;

// Tclass.Reachable3.Path injectivity 0
axiom (forall Reachable3.Path$T: Ty :: 
  { Tclass.Reachable3.Path(Reachable3.Path$T) } 
  Tclass.Reachable3.Path_0(Tclass.Reachable3.Path(Reachable3.Path$T))
     == Reachable3.Path$T);

// Box/unbox axiom for Tclass.Reachable3.Path
axiom (forall Reachable3.Path$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Reachable3.Path(Reachable3.Path$T)) } 
  $IsBox(bx, Tclass.Reachable3.Path(Reachable3.Path$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Reachable3.Path(Reachable3.Path$T)));

// definition axiom for Reachable3.__default.Reachable (revealed)
axiom {:id "id210"} (forall $Heap: Heap, source#0: ref, sink#0: ref, S#0: Set :: 
  { Reachable3.__default.Reachable($Heap, source#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  Reachable3.__default.Reachable#canCall($Heap, source#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(source#0, Tclass.Reachable3.Node())
         && $Is(sink#0, Tclass.Reachable3.Node())
         && $Is(S#0, TSet(Tclass.Reachable3.Node())))
     ==> (forall via#3: DatatypeType :: 
        { Reachable3.__default.ReachableVia($LS($LZ), $Heap, source#0, via#3, sink#0, S#0, 5) } 
        $Is(via#3, Tclass.Reachable3.Path(Tclass.Reachable3.Node()))
           ==> Reachable3.__default.ReachableVia#canCall($Heap, source#0, via#3, sink#0, S#0, LitInt(5)))
       && Reachable3.__default.Reachable($Heap, source#0, sink#0, S#0)
         == (exists via#3: DatatypeType :: 
          { Reachable3.__default.ReachableVia($LS($LZ), $Heap, source#0, via#3, sink#0, S#0, 5) } 
          $Is(via#3, Tclass.Reachable3.Path(Tclass.Reachable3.Node()))
             && Reachable3.__default.ReachableVia($LS($LZ), $Heap, source#0, via#3, sink#0, S#0, LitInt(5))));

// function declaration for Reachable3._default.ReachableVia
function Reachable3.__default.ReachableVia($ly: LayerType, 
    $heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set, 
    bound#0: int)
   : bool;

function Reachable3.__default.ReachableVia#canCall($heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set, 
    bound#0: int)
   : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set, 
    bound#0: int :: 
  { Reachable3.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0, bound#0) } 
  Reachable3.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0, bound#0)
     == Reachable3.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0, bound#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set, 
    bound#0: int :: 
  { Reachable3.__default.ReachableVia(AsFuelBottom($ly), $Heap, source#0, p#0, sink#0, S#0, bound#0) } 
  Reachable3.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0, bound#0)
     == Reachable3.__default.ReachableVia($LZ, $Heap, source#0, p#0, sink#0, S#0, bound#0));

// frame axiom for Reachable3.__default.ReachableVia
axiom (forall $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set, 
    bound#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), Reachable3.__default.ReachableVia($ly, $h1, source#0, p#0, sink#0, S#0, bound#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (Reachable3.__default.ReachableVia#canCall($h0, source#0, p#0, sink#0, S#0, bound#0)
         || (
          $Is(source#0, Tclass.Reachable3.Node())
           && $Is(p#0, Tclass.Reachable3.Path(Tclass.Reachable3.Node()))
           && $Is(sink#0, Tclass.Reachable3.Node())
           && $Is(S#0, TSet(Tclass.Reachable3.Node()))
           && LitInt(0) <= bound#0))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> Reachable3.__default.ReachableVia($ly, $h0, source#0, p#0, sink#0, S#0, bound#0)
       == Reachable3.__default.ReachableVia($ly, $h1, source#0, p#0, sink#0, S#0, bound#0));

// consequence axiom for Reachable3.__default.ReachableVia
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set, 
    bound#0: int :: 
  { Reachable3.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0, bound#0) } 
  Reachable3.__default.ReachableVia#canCall($Heap, source#0, p#0, sink#0, S#0, bound#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(source#0, Tclass.Reachable3.Node())
         && $IsAlloc(source#0, Tclass.Reachable3.Node(), $Heap)
         && 
        $Is(p#0, Tclass.Reachable3.Path(Tclass.Reachable3.Node()))
         && $IsAlloc(p#0, Tclass.Reachable3.Path(Tclass.Reachable3.Node()), $Heap)
         && 
        $Is(sink#0, Tclass.Reachable3.Node())
         && $IsAlloc(sink#0, Tclass.Reachable3.Node(), $Heap)
         && 
        $Is(S#0, TSet(Tclass.Reachable3.Node()))
         && $IsAlloc(S#0, TSet(Tclass.Reachable3.Node()), $Heap)
         && LitInt(0) <= bound#0)
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && 
          Reachable3.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0, bound#0)
           && 
          $IsAlloc(source#0, Tclass.Reachable3.Node(), $olderHeap)
           && $IsAlloc(sink#0, Tclass.Reachable3.Node(), $olderHeap)
           && $IsAlloc(S#0, TSet(Tclass.Reachable3.Node()), $olderHeap)
         ==> $IsAlloc(p#0, Tclass.Reachable3.Path(Tclass.Reachable3.Node()), $olderHeap)));

function Reachable3.__default.ReachableVia#requires(LayerType, Heap, ref, DatatypeType, ref, Set, int) : bool;

// #requires axiom for Reachable3.__default.ReachableVia
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set, 
    bound#0: int :: 
  { Reachable3.__default.ReachableVia#requires($ly, $Heap, source#0, p#0, sink#0, S#0, bound#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(source#0, Tclass.Reachable3.Node())
       && $Is(p#0, Tclass.Reachable3.Path(Tclass.Reachable3.Node()))
       && $Is(sink#0, Tclass.Reachable3.Node())
       && $Is(S#0, TSet(Tclass.Reachable3.Node()))
       && LitInt(0) <= bound#0
     ==> Reachable3.__default.ReachableVia#requires($ly, $Heap, source#0, p#0, sink#0, S#0, bound#0)
       == true);

// definition axiom for Reachable3.__default.ReachableVia (revealed)
axiom {:id "id211"} (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set, 
    bound#0: int :: 
  { Reachable3.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0, bound#0), $IsGoodHeap($Heap) } 
  Reachable3.__default.ReachableVia#canCall($Heap, source#0, p#0, sink#0, S#0, bound#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(source#0, Tclass.Reachable3.Node())
         && $Is(p#0, Tclass.Reachable3.Path(Tclass.Reachable3.Node()))
         && $Is(sink#0, Tclass.Reachable3.Node())
         && $Is(S#0, TSet(Tclass.Reachable3.Node()))
         && LitInt(0) <= bound#0)
     ==> (bound#0 != 0
         ==> 
        !Reachable3.Path.Empty_q(p#0)
         ==> (var n#6 := $Unbox(Reachable3.Path._h9(p#0)): ref; 
          (var prefix#6 := Reachable3.Path._h8(p#0); 
            Set#IsMember(S#0, $Box(n#6))
               ==> 
              Seq#Contains($Unbox(read($Heap, n#6, Reachable3.Node.children)): Seq, $Box(sink#0))
               ==> Reachable3.__default.ReachableVia#canCall($Heap, source#0, prefix#6, n#6, S#0, bound#0 - 1))))
       && Reachable3.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0, bound#0)
         == (bound#0 != 0
           ==> (if Reachable3.Path.Empty_q(p#0)
             then source#0 == sink#0
             else (var n#5 := $Unbox(Reachable3.Path._h9(p#0)): ref; 
              (var prefix#5 := Reachable3.Path._h8(p#0); 
                Set#IsMember(S#0, $Box(n#5))
                   && Seq#Contains($Unbox(read($Heap, n#5, Reachable3.Node.children)): Seq, $Box(sink#0))
                   && Reachable3.__default.ReachableVia($ly, $Heap, source#0, prefix#5, n#5, S#0, bound#0 - 1))))));

const unique class.Reachable3.Node?: ClassName;

function Tclass.Reachable3.Node?() : Ty
uses {
// Tclass.Reachable3.Node? Tag
axiom Tag(Tclass.Reachable3.Node?()) == Tagclass.Reachable3.Node?
   && TagFamily(Tclass.Reachable3.Node?()) == tytagFamily$Node;
}

const unique Tagclass.Reachable3.Node?: TyTag;

// Box/unbox axiom for Tclass.Reachable3.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Reachable3.Node?()) } 
  $IsBox(bx, Tclass.Reachable3.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Reachable3.Node?()));

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Reachable3.Node?()) } 
  $Is($o, Tclass.Reachable3.Node?())
     <==> $o == null || dtype($o) == Tclass.Reachable3.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Reachable3.Node?(), $h) } 
  $IsAlloc($o, Tclass.Reachable3.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const Reachable3.Node.children: Field
uses {
axiom FDim(Reachable3.Node.children) == 0
   && FieldOfDecl(class.Reachable3.Node?, field$children) == Reachable3.Node.children
   && !$IsGhostField(Reachable3.Node.children);
}

// Node.children: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, Reachable3.Node.children)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.Reachable3.Node?()
     ==> $Is($Unbox(read($h, $o, Reachable3.Node.children)): Seq, 
      TSeq(Tclass.Reachable3.Node())));

// Node.children: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, Reachable3.Node.children)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.Reachable3.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, Reachable3.Node.children)): Seq, 
      TSeq(Tclass.Reachable3.Node()), 
      $h));

// $Is axiom for non-null type Reachable3.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.Reachable3.Node()) } { $Is(c#0, Tclass.Reachable3.Node?()) } 
  $Is(c#0, Tclass.Reachable3.Node())
     <==> $Is(c#0, Tclass.Reachable3.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type Reachable3.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Reachable3.Node(), $h) } 
    { $IsAlloc(c#0, Tclass.Reachable3.Node?(), $h) } 
  $IsAlloc(c#0, Tclass.Reachable3.Node(), $h)
     <==> $IsAlloc(c#0, Tclass.Reachable3.Node?(), $h));

// Constructor function declaration
function #Reachable3.Path.Empty() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Reachable3.Path.Empty()) == ##Reachable3.Path.Empty;
// Constructor literal
axiom #Reachable3.Path.Empty() == Lit(#Reachable3.Path.Empty());
}

const unique ##Reachable3.Path.Empty: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Reachable3.Path.Empty()) == ##Reachable3.Path.Empty;
}

function Reachable3.Path.Empty_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Reachable3.Path.Empty_q(d) } 
  Reachable3.Path.Empty_q(d) <==> DatatypeCtorId(d) == ##Reachable3.Path.Empty);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Reachable3.Path.Empty_q(d) } 
  Reachable3.Path.Empty_q(d) ==> d == #Reachable3.Path.Empty());

// Constructor $Is
axiom (forall Reachable3.Path$T: Ty :: 
  { $Is(#Reachable3.Path.Empty(), Tclass.Reachable3.Path(Reachable3.Path$T)) } 
  $Is(#Reachable3.Path.Empty(), Tclass.Reachable3.Path(Reachable3.Path$T)));

// Constructor $IsAlloc
axiom (forall Reachable3.Path$T: Ty, $h: Heap :: 
  { $IsAlloc(#Reachable3.Path.Empty(), Tclass.Reachable3.Path(Reachable3.Path$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Reachable3.Path.Empty(), Tclass.Reachable3.Path(Reachable3.Path$T), $h));

// Constructor function declaration
function #Reachable3.Path.Extend(DatatypeType, Box) : DatatypeType;

const unique ##Reachable3.Path.Extend: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: DatatypeType, a#4#1#0: Box :: 
  { #Reachable3.Path.Extend(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#Reachable3.Path.Extend(a#4#0#0, a#4#1#0))
     == ##Reachable3.Path.Extend);
}

function Reachable3.Path.Extend_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Reachable3.Path.Extend_q(d) } 
  Reachable3.Path.Extend_q(d) <==> DatatypeCtorId(d) == ##Reachable3.Path.Extend);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Reachable3.Path.Extend_q(d) } 
  Reachable3.Path.Extend_q(d)
     ==> (exists a#5#0#0: DatatypeType, a#5#1#0: Box :: 
      d == #Reachable3.Path.Extend(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall Reachable3.Path$T: Ty, a#6#0#0: DatatypeType, a#6#1#0: Box :: 
  { $Is(#Reachable3.Path.Extend(a#6#0#0, a#6#1#0), 
      Tclass.Reachable3.Path(Reachable3.Path$T)) } 
  $Is(#Reachable3.Path.Extend(a#6#0#0, a#6#1#0), 
      Tclass.Reachable3.Path(Reachable3.Path$T))
     <==> $Is(a#6#0#0, Tclass.Reachable3.Path(Reachable3.Path$T))
       && $IsBox(a#6#1#0, Reachable3.Path$T));

// Constructor $IsAlloc
axiom (forall Reachable3.Path$T: Ty, a#6#0#0: DatatypeType, a#6#1#0: Box, $h: Heap :: 
  { $IsAlloc(#Reachable3.Path.Extend(a#6#0#0, a#6#1#0), 
      Tclass.Reachable3.Path(Reachable3.Path$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Reachable3.Path.Extend(a#6#0#0, a#6#1#0), 
        Tclass.Reachable3.Path(Reachable3.Path$T), 
        $h)
       <==> $IsAlloc(a#6#0#0, Tclass.Reachable3.Path(Reachable3.Path$T), $h)
         && $IsAllocBox(a#6#1#0, Reachable3.Path$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Reachable3.Path$T: Ty, $h: Heap :: 
  { $IsAlloc(Reachable3.Path._h8(d), Tclass.Reachable3.Path(Reachable3.Path$T), $h) } 
  $IsGoodHeap($h)
       && 
      Reachable3.Path.Extend_q(d)
       && $IsAlloc(d, Tclass.Reachable3.Path(Reachable3.Path$T), $h)
     ==> $IsAlloc(Reachable3.Path._h8(d), Tclass.Reachable3.Path(Reachable3.Path$T), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Reachable3.Path$T: Ty, $h: Heap :: 
  { $IsAllocBox(Reachable3.Path._h9(d), Reachable3.Path$T, $h) } 
  $IsGoodHeap($h)
       && 
      Reachable3.Path.Extend_q(d)
       && $IsAlloc(d, Tclass.Reachable3.Path(Reachable3.Path$T), $h)
     ==> $IsAllocBox(Reachable3.Path._h9(d), Reachable3.Path$T, $h));

// Constructor literal
axiom (forall a#7#0#0: DatatypeType, a#7#1#0: Box :: 
  { #Reachable3.Path.Extend(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #Reachable3.Path.Extend(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#Reachable3.Path.Extend(a#7#0#0, a#7#1#0)));

function Reachable3.Path._h8(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#8#0#0: DatatypeType, a#8#1#0: Box :: 
  { #Reachable3.Path.Extend(a#8#0#0, a#8#1#0) } 
  Reachable3.Path._h8(#Reachable3.Path.Extend(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: DatatypeType, a#9#1#0: Box :: 
  { #Reachable3.Path.Extend(a#9#0#0, a#9#1#0) } 
  DtRank(a#9#0#0) < DtRank(#Reachable3.Path.Extend(a#9#0#0, a#9#1#0)));

function Reachable3.Path._h9(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#10#0#0: DatatypeType, a#10#1#0: Box :: 
  { #Reachable3.Path.Extend(a#10#0#0, a#10#1#0) } 
  Reachable3.Path._h9(#Reachable3.Path.Extend(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: DatatypeType, a#11#1#0: Box :: 
  { #Reachable3.Path.Extend(a#11#0#0, a#11#1#0) } 
  BoxRank(a#11#1#0) < DtRank(#Reachable3.Path.Extend(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#Reachable3.Path(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Reachable3.Path(d) } 
  $IsA#Reachable3.Path(d)
     ==> Reachable3.Path.Empty_q(d) || Reachable3.Path.Extend_q(d));

// Questionmark data type disjunctivity
axiom (forall Reachable3.Path$T: Ty, d: DatatypeType :: 
  { Reachable3.Path.Extend_q(d), $Is(d, Tclass.Reachable3.Path(Reachable3.Path$T)) } 
    { Reachable3.Path.Empty_q(d), $Is(d, Tclass.Reachable3.Path(Reachable3.Path$T)) } 
  $Is(d, Tclass.Reachable3.Path(Reachable3.Path$T))
     ==> Reachable3.Path.Empty_q(d) || Reachable3.Path.Extend_q(d));

// Datatype extensional equality declaration
function Reachable3.Path#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Reachable3.Path.Empty
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable3.Path#Equal(a, b), Reachable3.Path.Empty_q(a) } 
    { Reachable3.Path#Equal(a, b), Reachable3.Path.Empty_q(b) } 
  Reachable3.Path.Empty_q(a) && Reachable3.Path.Empty_q(b)
     ==> Reachable3.Path#Equal(a, b));

// Datatype extensional equality definition: #Reachable3.Path.Extend
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable3.Path#Equal(a, b), Reachable3.Path.Extend_q(a) } 
    { Reachable3.Path#Equal(a, b), Reachable3.Path.Extend_q(b) } 
  Reachable3.Path.Extend_q(a) && Reachable3.Path.Extend_q(b)
     ==> (Reachable3.Path#Equal(a, b)
       <==> Reachable3.Path#Equal(Reachable3.Path._h8(a), Reachable3.Path._h8(b))
         && Reachable3.Path._h9(a) == Reachable3.Path._h9(b)));

// Datatype extensionality axiom: Reachable3.Path
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable3.Path#Equal(a, b) } 
  Reachable3.Path#Equal(a, b) <==> a == b);

const unique class.Reachable3.Path: ClassName;

const unique class.Reachable4.__default: ClassName;

// function declaration for Reachable4._default.Reachable
function Reachable4.__default.Reachable(Reachable4._default.Reachable$Extra: Ty, 
    $heap: Heap, 
    source#0: ref, 
    sink#0: ref, 
    S#0: Set)
   : bool;

function Reachable4.__default.Reachable#canCall(Reachable4._default.Reachable$Extra: Ty, 
    $heap: Heap, 
    source#0: ref, 
    sink#0: ref, 
    S#0: Set)
   : bool;

function Tclass.Reachable4.Node() : Ty
uses {
// Tclass.Reachable4.Node Tag
axiom Tag(Tclass.Reachable4.Node()) == Tagclass.Reachable4.Node
   && TagFamily(Tclass.Reachable4.Node()) == tytagFamily$Node;
}

const unique Tagclass.Reachable4.Node: TyTag;

// Box/unbox axiom for Tclass.Reachable4.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Reachable4.Node()) } 
  $IsBox(bx, Tclass.Reachable4.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Reachable4.Node()));

// frame axiom for Reachable4.__default.Reachable
axiom (forall Reachable4._default.Reachable$Extra: Ty, 
    $h0: Heap, 
    $h1: Heap, 
    source#0: ref, 
    sink#0: ref, 
    S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), Reachable4.__default.Reachable(Reachable4._default.Reachable$Extra, $h1, source#0, sink#0, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (Reachable4.__default.Reachable#canCall(Reachable4._default.Reachable$Extra, $h0, source#0, sink#0, S#0)
         || (
          $Is(source#0, Tclass.Reachable4.Node())
           && $Is(sink#0, Tclass.Reachable4.Node())
           && $Is(S#0, TSet(Tclass.Reachable4.Node()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> Reachable4.__default.Reachable(Reachable4._default.Reachable$Extra, $h0, source#0, sink#0, S#0)
       == Reachable4.__default.Reachable(Reachable4._default.Reachable$Extra, $h1, source#0, sink#0, S#0));

function Reachable4.__default.Reachable#requires(Ty, Heap, ref, ref, Set) : bool;

// #requires axiom for Reachable4.__default.Reachable
axiom (forall Reachable4._default.Reachable$Extra: Ty, 
    $Heap: Heap, 
    source#0: ref, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable4.__default.Reachable#requires(Reachable4._default.Reachable$Extra, $Heap, source#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(source#0, Tclass.Reachable4.Node())
       && $Is(sink#0, Tclass.Reachable4.Node())
       && $Is(S#0, TSet(Tclass.Reachable4.Node()))
     ==> Reachable4.__default.Reachable#requires(Reachable4._default.Reachable$Extra, $Heap, source#0, sink#0, S#0)
       == true);

function Tclass.Reachable4.Path(Ty, Ty) : Ty;

const unique Tagclass.Reachable4.Path: TyTag;

// Tclass.Reachable4.Path Tag
axiom (forall Reachable4.Path$T: Ty, Reachable4.Path$Extra: Ty :: 
  { Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra) } 
  Tag(Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra))
       == Tagclass.Reachable4.Path
     && TagFamily(Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra))
       == tytagFamily$Path);

function Tclass.Reachable4.Path_0(Ty) : Ty;

// Tclass.Reachable4.Path injectivity 0
axiom (forall Reachable4.Path$T: Ty, Reachable4.Path$Extra: Ty :: 
  { Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra) } 
  Tclass.Reachable4.Path_0(Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra))
     == Reachable4.Path$T);

function Tclass.Reachable4.Path_1(Ty) : Ty;

// Tclass.Reachable4.Path injectivity 1
axiom (forall Reachable4.Path$T: Ty, Reachable4.Path$Extra: Ty :: 
  { Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra) } 
  Tclass.Reachable4.Path_1(Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra))
     == Reachable4.Path$Extra);

// Box/unbox axiom for Tclass.Reachable4.Path
axiom (forall Reachable4.Path$T: Ty, Reachable4.Path$Extra: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra)) } 
  $IsBox(bx, Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra)));

// definition axiom for Reachable4.__default.Reachable (revealed)
axiom {:id "id212"} (forall Reachable4._default.Reachable$Extra: Ty, 
    $Heap: Heap, 
    source#0: ref, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable4.__default.Reachable(Reachable4._default.Reachable$Extra, $Heap, source#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  Reachable4.__default.Reachable#canCall(Reachable4._default.Reachable$Extra, $Heap, source#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(source#0, Tclass.Reachable4.Node())
         && $Is(sink#0, Tclass.Reachable4.Node())
         && $Is(S#0, TSet(Tclass.Reachable4.Node())))
     ==> (forall via#3: DatatypeType :: 
        { Reachable4.__default.ReachableVia(Reachable4._default.Reachable$Extra, 
            $LS($LZ), 
            $Heap, 
            source#0, 
            via#3, 
            sink#0, 
            S#0) } 
        $Is(via#3, 
            Tclass.Reachable4.Path(Tclass.Reachable4.Node(), Reachable4._default.Reachable$Extra))
           ==> Reachable4.__default.ReachableVia#canCall(Reachable4._default.Reachable$Extra, $Heap, source#0, via#3, sink#0, S#0))
       && Reachable4.__default.Reachable(Reachable4._default.Reachable$Extra, $Heap, source#0, sink#0, S#0)
         == (exists via#3: DatatypeType :: 
          { Reachable4.__default.ReachableVia(Reachable4._default.Reachable$Extra, 
              $LS($LZ), 
              $Heap, 
              source#0, 
              via#3, 
              sink#0, 
              S#0) } 
          $Is(via#3, 
              Tclass.Reachable4.Path(Tclass.Reachable4.Node(), Reachable4._default.Reachable$Extra))
             && Reachable4.__default.ReachableVia(Reachable4._default.Reachable$Extra, 
              $LS($LZ), 
              $Heap, 
              source#0, 
              via#3, 
              sink#0, 
              S#0)));

// function declaration for Reachable4._default.ReachableVia
function Reachable4.__default.ReachableVia(Reachable4._default.ReachableVia$Extra: Ty, 
    $ly: LayerType, 
    $heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set)
   : bool;

function Reachable4.__default.ReachableVia#canCall(Reachable4._default.ReachableVia$Extra: Ty, 
    $heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set)
   : bool;

// layer synonym axiom
axiom (forall Reachable4._default.ReachableVia$Extra: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable4.__default.ReachableVia(Reachable4._default.ReachableVia$Extra, 
      $LS($ly), 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0) } 
  Reachable4.__default.ReachableVia(Reachable4._default.ReachableVia$Extra, 
      $LS($ly), 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0)
     == Reachable4.__default.ReachableVia(Reachable4._default.ReachableVia$Extra, $ly, $Heap, source#0, p#0, sink#0, S#0));

// fuel synonym axiom
axiom (forall Reachable4._default.ReachableVia$Extra: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable4.__default.ReachableVia(Reachable4._default.ReachableVia$Extra, 
      AsFuelBottom($ly), 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0) } 
  Reachable4.__default.ReachableVia(Reachable4._default.ReachableVia$Extra, $ly, $Heap, source#0, p#0, sink#0, S#0)
     == Reachable4.__default.ReachableVia(Reachable4._default.ReachableVia$Extra, $LZ, $Heap, source#0, p#0, sink#0, S#0));

// frame axiom for Reachable4.__default.ReachableVia
axiom (forall Reachable4._default.ReachableVia$Extra: Ty, 
    $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), Reachable4.__default.ReachableVia(Reachable4._default.ReachableVia$Extra, $ly, $h1, source#0, p#0, sink#0, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (Reachable4.__default.ReachableVia#canCall(Reachable4._default.ReachableVia$Extra, $h0, source#0, p#0, sink#0, S#0)
         || (
          $Is(source#0, Tclass.Reachable4.Node())
           && $Is(p#0, 
            Tclass.Reachable4.Path(Tclass.Reachable4.Node(), Reachable4._default.ReachableVia$Extra))
           && $Is(sink#0, Tclass.Reachable4.Node())
           && $Is(S#0, TSet(Tclass.Reachable4.Node()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> Reachable4.__default.ReachableVia(Reachable4._default.ReachableVia$Extra, $ly, $h0, source#0, p#0, sink#0, S#0)
       == Reachable4.__default.ReachableVia(Reachable4._default.ReachableVia$Extra, $ly, $h1, source#0, p#0, sink#0, S#0));

// consequence axiom for Reachable4.__default.ReachableVia
axiom (forall Reachable4._default.ReachableVia$Extra: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable4.__default.ReachableVia(Reachable4._default.ReachableVia$Extra, $ly, $Heap, source#0, p#0, sink#0, S#0) } 
  Reachable4.__default.ReachableVia#canCall(Reachable4._default.ReachableVia$Extra, $Heap, source#0, p#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(source#0, Tclass.Reachable4.Node())
         && $IsAlloc(source#0, Tclass.Reachable4.Node(), $Heap)
         && 
        $Is(p#0, 
          Tclass.Reachable4.Path(Tclass.Reachable4.Node(), Reachable4._default.ReachableVia$Extra))
         && $IsAlloc(p#0, 
          Tclass.Reachable4.Path(Tclass.Reachable4.Node(), Reachable4._default.ReachableVia$Extra), 
          $Heap)
         && 
        $Is(sink#0, Tclass.Reachable4.Node())
         && $IsAlloc(sink#0, Tclass.Reachable4.Node(), $Heap)
         && 
        $Is(S#0, TSet(Tclass.Reachable4.Node()))
         && $IsAlloc(S#0, TSet(Tclass.Reachable4.Node()), $Heap))
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && 
          Reachable4.__default.ReachableVia(Reachable4._default.ReachableVia$Extra, $ly, $Heap, source#0, p#0, sink#0, S#0)
           && 
          $IsAlloc(source#0, Tclass.Reachable4.Node(), $olderHeap)
           && $IsAlloc(sink#0, Tclass.Reachable4.Node(), $olderHeap)
           && $IsAlloc(S#0, TSet(Tclass.Reachable4.Node()), $olderHeap)
         ==> $IsAlloc(p#0, 
          Tclass.Reachable4.Path(Tclass.Reachable4.Node(), Reachable4._default.ReachableVia$Extra), 
          $olderHeap)));

function Reachable4.__default.ReachableVia#requires(Ty, LayerType, Heap, ref, DatatypeType, ref, Set) : bool;

// #requires axiom for Reachable4.__default.ReachableVia
axiom (forall Reachable4._default.ReachableVia$Extra: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable4.__default.ReachableVia#requires(Reachable4._default.ReachableVia$Extra, $ly, $Heap, source#0, p#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(source#0, Tclass.Reachable4.Node())
       && $Is(p#0, 
        Tclass.Reachable4.Path(Tclass.Reachable4.Node(), Reachable4._default.ReachableVia$Extra))
       && $Is(sink#0, Tclass.Reachable4.Node())
       && $Is(S#0, TSet(Tclass.Reachable4.Node()))
     ==> Reachable4.__default.ReachableVia#requires(Reachable4._default.ReachableVia$Extra, $ly, $Heap, source#0, p#0, sink#0, S#0)
       == true);

// definition axiom for Reachable4.__default.ReachableVia (revealed)
axiom {:id "id213"} (forall Reachable4._default.ReachableVia$Extra: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable4.__default.ReachableVia(Reachable4._default.ReachableVia$Extra, 
      $LS($ly), 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0), $IsGoodHeap($Heap) } 
  Reachable4.__default.ReachableVia#canCall(Reachable4._default.ReachableVia$Extra, $Heap, source#0, p#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(source#0, Tclass.Reachable4.Node())
         && $Is(p#0, 
          Tclass.Reachable4.Path(Tclass.Reachable4.Node(), Reachable4._default.ReachableVia$Extra))
         && $Is(sink#0, Tclass.Reachable4.Node())
         && $Is(S#0, TSet(Tclass.Reachable4.Node())))
     ==> (!Reachable4.Path.Empty_q(p#0)
         ==> (var n#3 := $Unbox(Reachable4.Path._h11(p#0)): ref; 
          (var prefix#3 := Reachable4.Path._h10(p#0); 
            Set#IsMember(S#0, $Box(n#3))
               ==> 
              Seq#Contains($Unbox(read($Heap, n#3, Reachable4.Node.children)): Seq, $Box(sink#0))
               ==> Reachable4.__default.ReachableVia#canCall(Reachable4._default.ReachableVia$Extra, $Heap, source#0, prefix#3, n#3, S#0))))
       && Reachable4.__default.ReachableVia(Reachable4._default.ReachableVia$Extra, 
          $LS($ly), 
          $Heap, 
          source#0, 
          p#0, 
          sink#0, 
          S#0)
         == (if Reachable4.Path.Empty_q(p#0)
           then false
           else (var extra#2 := Reachable4.Path._h12(p#0); 
            (var n#2 := $Unbox(Reachable4.Path._h11(p#0)): ref; 
              (var prefix#2 := Reachable4.Path._h10(p#0); 
                Set#IsMember(S#0, $Box(n#2))
                   && Seq#Contains($Unbox(read($Heap, n#2, Reachable4.Node.children)): Seq, $Box(sink#0))
                   && Reachable4.__default.ReachableVia(Reachable4._default.ReachableVia$Extra, $ly, $Heap, source#0, prefix#2, n#2, S#0))))));

// function declaration for Reachable4._default.ReachableViaEnsures
function Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra: Ty, 
    $ly: LayerType, 
    $heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set)
   : bool;

function Reachable4.__default.ReachableViaEnsures#canCall(Reachable4._default.ReachableViaEnsures$Extra: Ty, 
    $heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set)
   : bool;

// layer synonym axiom
axiom (forall Reachable4._default.ReachableViaEnsures$Extra: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra, 
      $LS($ly), 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0) } 
  Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra, 
      $LS($ly), 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0)
     == Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra, 
      $ly, 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0));

// fuel synonym axiom
axiom (forall Reachable4._default.ReachableViaEnsures$Extra: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra, 
      AsFuelBottom($ly), 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0) } 
  Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra, 
      $ly, 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0)
     == Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra, 
      $LZ, 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0));

// frame axiom for Reachable4.__default.ReachableViaEnsures
axiom (forall Reachable4._default.ReachableViaEnsures$Extra: Ty, 
    $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra, 
      $ly, 
      $h1, 
      source#0, 
      p#0, 
      sink#0, 
      S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (Reachable4.__default.ReachableViaEnsures#canCall(Reachable4._default.ReachableViaEnsures$Extra, $h0, source#0, p#0, sink#0, S#0)
         || (
          $Is(source#0, Tclass.Reachable4.Node())
           && $Is(p#0, 
            Tclass.Reachable4.Path(Tclass.Reachable4.Node(), Reachable4._default.ReachableViaEnsures$Extra))
           && $Is(sink#0, Tclass.Reachable4.Node())
           && $Is(S#0, TSet(Tclass.Reachable4.Node()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra, 
        $ly, 
        $h0, 
        source#0, 
        p#0, 
        sink#0, 
        S#0)
       == Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra, 
        $ly, 
        $h1, 
        source#0, 
        p#0, 
        sink#0, 
        S#0));

// consequence axiom for Reachable4.__default.ReachableViaEnsures
axiom (forall Reachable4._default.ReachableViaEnsures$Extra: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra, 
      $ly, 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0) } 
  Reachable4.__default.ReachableViaEnsures#canCall(Reachable4._default.ReachableViaEnsures$Extra, $Heap, source#0, p#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(source#0, Tclass.Reachable4.Node())
         && $IsAlloc(source#0, Tclass.Reachable4.Node(), $Heap)
         && 
        $Is(p#0, 
          Tclass.Reachable4.Path(Tclass.Reachable4.Node(), Reachable4._default.ReachableViaEnsures$Extra))
         && $IsAlloc(p#0, 
          Tclass.Reachable4.Path(Tclass.Reachable4.Node(), Reachable4._default.ReachableViaEnsures$Extra), 
          $Heap)
         && 
        $Is(sink#0, Tclass.Reachable4.Node())
         && $IsAlloc(sink#0, Tclass.Reachable4.Node(), $Heap)
         && 
        $Is(S#0, TSet(Tclass.Reachable4.Node()))
         && $IsAlloc(S#0, TSet(Tclass.Reachable4.Node()), $Heap))
     ==> !Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra, 
        $ly, 
        $Heap, 
        source#0, 
        p#0, 
        sink#0, 
        S#0)
       && (forall $olderHeap: Heap :: 
        { $OlderTag($olderHeap) } 
        $IsGoodHeap($olderHeap)
             && $OlderTag($olderHeap)
             && 
            Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra, 
              $ly, 
              $Heap, 
              source#0, 
              p#0, 
              sink#0, 
              S#0)
             && 
            $IsAlloc(source#0, Tclass.Reachable4.Node(), $olderHeap)
             && $IsAlloc(sink#0, Tclass.Reachable4.Node(), $olderHeap)
             && $IsAlloc(S#0, TSet(Tclass.Reachable4.Node()), $olderHeap)
           ==> $IsAlloc(p#0, 
            Tclass.Reachable4.Path(Tclass.Reachable4.Node(), Reachable4._default.ReachableViaEnsures$Extra), 
            $olderHeap)));

function Reachable4.__default.ReachableViaEnsures#requires(Ty, LayerType, Heap, ref, DatatypeType, ref, Set) : bool;

// #requires axiom for Reachable4.__default.ReachableViaEnsures
axiom (forall Reachable4._default.ReachableViaEnsures$Extra: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable4.__default.ReachableViaEnsures#requires(Reachable4._default.ReachableViaEnsures$Extra, 
      $ly, 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(source#0, Tclass.Reachable4.Node())
       && $Is(p#0, 
        Tclass.Reachable4.Path(Tclass.Reachable4.Node(), Reachable4._default.ReachableViaEnsures$Extra))
       && $Is(sink#0, Tclass.Reachable4.Node())
       && $Is(S#0, TSet(Tclass.Reachable4.Node()))
     ==> Reachable4.__default.ReachableViaEnsures#requires(Reachable4._default.ReachableViaEnsures$Extra, 
        $ly, 
        $Heap, 
        source#0, 
        p#0, 
        sink#0, 
        S#0)
       == true);

// definition axiom for Reachable4.__default.ReachableViaEnsures (revealed)
axiom {:id "id214"} (forall Reachable4._default.ReachableViaEnsures$Extra: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra, 
      $LS($ly), 
      $Heap, 
      source#0, 
      p#0, 
      sink#0, 
      S#0), $IsGoodHeap($Heap) } 
  Reachable4.__default.ReachableViaEnsures#canCall(Reachable4._default.ReachableViaEnsures$Extra, $Heap, source#0, p#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(source#0, Tclass.Reachable4.Node())
         && $Is(p#0, 
          Tclass.Reachable4.Path(Tclass.Reachable4.Node(), Reachable4._default.ReachableViaEnsures$Extra))
         && $Is(sink#0, Tclass.Reachable4.Node())
         && $Is(S#0, TSet(Tclass.Reachable4.Node())))
     ==> (!Reachable4.Path.Empty_q(p#0)
         ==> (var n#3 := $Unbox(Reachable4.Path._h11(p#0)): ref; 
          (var prefix#3 := Reachable4.Path._h10(p#0); 
            Set#IsMember(S#0, $Box(n#3))
               ==> 
              Seq#Contains($Unbox(read($Heap, n#3, Reachable4.Node.children)): Seq, $Box(sink#0))
               ==> Reachable4.__default.ReachableViaEnsures#canCall(Reachable4._default.ReachableViaEnsures$Extra, 
                $Heap, 
                source#0, 
                prefix#3, 
                n#3, 
                S#0))))
       && Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra, 
          $LS($ly), 
          $Heap, 
          source#0, 
          p#0, 
          sink#0, 
          S#0)
         == (if Reachable4.Path.Empty_q(p#0)
           then false
           else (var extra#2 := Reachable4.Path._h12(p#0); 
            (var n#2 := $Unbox(Reachable4.Path._h11(p#0)): ref; 
              (var prefix#2 := Reachable4.Path._h10(p#0); 
                Set#IsMember(S#0, $Box(n#2))
                   && Seq#Contains($Unbox(read($Heap, n#2, Reachable4.Node.children)): Seq, $Box(sink#0))
                   && Reachable4.__default.ReachableViaEnsures(Reachable4._default.ReachableViaEnsures$Extra, 
                    $ly, 
                    $Heap, 
                    source#0, 
                    prefix#2, 
                    n#2, 
                    S#0))))));

const unique class.Reachable4.Node?: ClassName;

function Tclass.Reachable4.Node?() : Ty
uses {
// Tclass.Reachable4.Node? Tag
axiom Tag(Tclass.Reachable4.Node?()) == Tagclass.Reachable4.Node?
   && TagFamily(Tclass.Reachable4.Node?()) == tytagFamily$Node;
}

const unique Tagclass.Reachable4.Node?: TyTag;

// Box/unbox axiom for Tclass.Reachable4.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Reachable4.Node?()) } 
  $IsBox(bx, Tclass.Reachable4.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Reachable4.Node?()));

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Reachable4.Node?()) } 
  $Is($o, Tclass.Reachable4.Node?())
     <==> $o == null || dtype($o) == Tclass.Reachable4.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Reachable4.Node?(), $h) } 
  $IsAlloc($o, Tclass.Reachable4.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const Reachable4.Node.children: Field
uses {
axiom FDim(Reachable4.Node.children) == 0
   && FieldOfDecl(class.Reachable4.Node?, field$children) == Reachable4.Node.children
   && !$IsGhostField(Reachable4.Node.children);
}

// Node.children: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, Reachable4.Node.children)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.Reachable4.Node?()
     ==> $Is($Unbox(read($h, $o, Reachable4.Node.children)): Seq, 
      TSeq(Tclass.Reachable4.Node())));

// Node.children: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, Reachable4.Node.children)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.Reachable4.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, Reachable4.Node.children)): Seq, 
      TSeq(Tclass.Reachable4.Node()), 
      $h));

// $Is axiom for non-null type Reachable4.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.Reachable4.Node()) } { $Is(c#0, Tclass.Reachable4.Node?()) } 
  $Is(c#0, Tclass.Reachable4.Node())
     <==> $Is(c#0, Tclass.Reachable4.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type Reachable4.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Reachable4.Node(), $h) } 
    { $IsAlloc(c#0, Tclass.Reachable4.Node?(), $h) } 
  $IsAlloc(c#0, Tclass.Reachable4.Node(), $h)
     <==> $IsAlloc(c#0, Tclass.Reachable4.Node?(), $h));

// Constructor function declaration
function #Reachable4.Path.Empty() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Reachable4.Path.Empty()) == ##Reachable4.Path.Empty;
// Constructor literal
axiom #Reachable4.Path.Empty() == Lit(#Reachable4.Path.Empty());
}

const unique ##Reachable4.Path.Empty: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Reachable4.Path.Empty()) == ##Reachable4.Path.Empty;
}

function Reachable4.Path.Empty_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Reachable4.Path.Empty_q(d) } 
  Reachable4.Path.Empty_q(d) <==> DatatypeCtorId(d) == ##Reachable4.Path.Empty);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Reachable4.Path.Empty_q(d) } 
  Reachable4.Path.Empty_q(d) ==> d == #Reachable4.Path.Empty());

// Constructor $Is
axiom (forall Reachable4.Path$T: Ty, Reachable4.Path$Extra: Ty :: 
  { $Is(#Reachable4.Path.Empty(), 
      Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra)) } 
  $Is(#Reachable4.Path.Empty(), 
    Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra)));

// Constructor $IsAlloc
axiom (forall Reachable4.Path$T: Ty, Reachable4.Path$Extra: Ty, $h: Heap :: 
  { $IsAlloc(#Reachable4.Path.Empty(), 
      Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Reachable4.Path.Empty(), 
      Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra), 
      $h));

// Constructor function declaration
function #Reachable4.Path.Extend(DatatypeType, Box, Box) : DatatypeType;

const unique ##Reachable4.Path.Extend: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: DatatypeType, a#4#1#0: Box, a#4#2#0: Box :: 
  { #Reachable4.Path.Extend(a#4#0#0, a#4#1#0, a#4#2#0) } 
  DatatypeCtorId(#Reachable4.Path.Extend(a#4#0#0, a#4#1#0, a#4#2#0))
     == ##Reachable4.Path.Extend);
}

function Reachable4.Path.Extend_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Reachable4.Path.Extend_q(d) } 
  Reachable4.Path.Extend_q(d) <==> DatatypeCtorId(d) == ##Reachable4.Path.Extend);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Reachable4.Path.Extend_q(d) } 
  Reachable4.Path.Extend_q(d)
     ==> (exists a#5#0#0: DatatypeType, a#5#1#0: Box, a#5#2#0: Box :: 
      d == #Reachable4.Path.Extend(a#5#0#0, a#5#1#0, a#5#2#0)));

// Constructor $Is
axiom (forall Reachable4.Path$T: Ty, 
    Reachable4.Path$Extra: Ty, 
    a#6#0#0: DatatypeType, 
    a#6#1#0: Box, 
    a#6#2#0: Box :: 
  { $Is(#Reachable4.Path.Extend(a#6#0#0, a#6#1#0, a#6#2#0), 
      Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra)) } 
  $Is(#Reachable4.Path.Extend(a#6#0#0, a#6#1#0, a#6#2#0), 
      Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra))
     <==> $Is(a#6#0#0, Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra))
       && $IsBox(a#6#1#0, Reachable4.Path$T)
       && $IsBox(a#6#2#0, Reachable4.Path$Extra));

// Constructor $IsAlloc
axiom (forall Reachable4.Path$T: Ty, 
    Reachable4.Path$Extra: Ty, 
    a#6#0#0: DatatypeType, 
    a#6#1#0: Box, 
    a#6#2#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#Reachable4.Path.Extend(a#6#0#0, a#6#1#0, a#6#2#0), 
      Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Reachable4.Path.Extend(a#6#0#0, a#6#1#0, a#6#2#0), 
        Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra), 
        $h)
       <==> $IsAlloc(a#6#0#0, Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra), $h)
         && $IsAllocBox(a#6#1#0, Reachable4.Path$T, $h)
         && $IsAllocBox(a#6#2#0, Reachable4.Path$Extra, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Reachable4.Path$T: Ty, Reachable4.Path$Extra: Ty, $h: Heap :: 
  { $IsAlloc(Reachable4.Path._h10(d), 
      Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra), 
      $h) } 
  $IsGoodHeap($h)
       && 
      Reachable4.Path.Extend_q(d)
       && $IsAlloc(d, Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra), $h)
     ==> $IsAlloc(Reachable4.Path._h10(d), 
      Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra), 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Reachable4.Path$T: Ty, $h: Heap :: 
  { $IsAllocBox(Reachable4.Path._h11(d), Reachable4.Path$T, $h) } 
  $IsGoodHeap($h)
       && 
      Reachable4.Path.Extend_q(d)
       && (exists Reachable4.Path$Extra: Ty :: 
        { $IsAlloc(d, Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra), $h) } 
        $IsAlloc(d, Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra), $h))
     ==> $IsAllocBox(Reachable4.Path._h11(d), Reachable4.Path$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Reachable4.Path$Extra: Ty, $h: Heap :: 
  { $IsAllocBox(Reachable4.Path._h12(d), Reachable4.Path$Extra, $h) } 
  $IsGoodHeap($h)
       && 
      Reachable4.Path.Extend_q(d)
       && (exists Reachable4.Path$T: Ty :: 
        { $IsAlloc(d, Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra), $h) } 
        $IsAlloc(d, Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra), $h))
     ==> $IsAllocBox(Reachable4.Path._h12(d), Reachable4.Path$Extra, $h));

// Constructor literal
axiom (forall a#7#0#0: DatatypeType, a#7#1#0: Box, a#7#2#0: Box :: 
  { #Reachable4.Path.Extend(Lit(a#7#0#0), Lit(a#7#1#0), Lit(a#7#2#0)) } 
  #Reachable4.Path.Extend(Lit(a#7#0#0), Lit(a#7#1#0), Lit(a#7#2#0))
     == Lit(#Reachable4.Path.Extend(a#7#0#0, a#7#1#0, a#7#2#0)));

function Reachable4.Path._h10(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#8#0#0: DatatypeType, a#8#1#0: Box, a#8#2#0: Box :: 
  { #Reachable4.Path.Extend(a#8#0#0, a#8#1#0, a#8#2#0) } 
  Reachable4.Path._h10(#Reachable4.Path.Extend(a#8#0#0, a#8#1#0, a#8#2#0))
     == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: DatatypeType, a#9#1#0: Box, a#9#2#0: Box :: 
  { #Reachable4.Path.Extend(a#9#0#0, a#9#1#0, a#9#2#0) } 
  DtRank(a#9#0#0) < DtRank(#Reachable4.Path.Extend(a#9#0#0, a#9#1#0, a#9#2#0)));

function Reachable4.Path._h11(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#10#0#0: DatatypeType, a#10#1#0: Box, a#10#2#0: Box :: 
  { #Reachable4.Path.Extend(a#10#0#0, a#10#1#0, a#10#2#0) } 
  Reachable4.Path._h11(#Reachable4.Path.Extend(a#10#0#0, a#10#1#0, a#10#2#0))
     == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: DatatypeType, a#11#1#0: Box, a#11#2#0: Box :: 
  { #Reachable4.Path.Extend(a#11#0#0, a#11#1#0, a#11#2#0) } 
  BoxRank(a#11#1#0)
     < DtRank(#Reachable4.Path.Extend(a#11#0#0, a#11#1#0, a#11#2#0)));

function Reachable4.Path._h12(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#12#0#0: DatatypeType, a#12#1#0: Box, a#12#2#0: Box :: 
  { #Reachable4.Path.Extend(a#12#0#0, a#12#1#0, a#12#2#0) } 
  Reachable4.Path._h12(#Reachable4.Path.Extend(a#12#0#0, a#12#1#0, a#12#2#0))
     == a#12#2#0);

// Inductive rank
axiom (forall a#13#0#0: DatatypeType, a#13#1#0: Box, a#13#2#0: Box :: 
  { #Reachable4.Path.Extend(a#13#0#0, a#13#1#0, a#13#2#0) } 
  BoxRank(a#13#2#0)
     < DtRank(#Reachable4.Path.Extend(a#13#0#0, a#13#1#0, a#13#2#0)));

// Depth-one case-split function
function $IsA#Reachable4.Path(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Reachable4.Path(d) } 
  $IsA#Reachable4.Path(d)
     ==> Reachable4.Path.Empty_q(d) || Reachable4.Path.Extend_q(d));

// Questionmark data type disjunctivity
axiom (forall Reachable4.Path$T: Ty, Reachable4.Path$Extra: Ty, d: DatatypeType :: 
  { Reachable4.Path.Extend_q(d), $Is(d, Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra)) } 
    { Reachable4.Path.Empty_q(d), $Is(d, Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra)) } 
  $Is(d, Tclass.Reachable4.Path(Reachable4.Path$T, Reachable4.Path$Extra))
     ==> Reachable4.Path.Empty_q(d) || Reachable4.Path.Extend_q(d));

// Datatype extensional equality declaration
function Reachable4.Path#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Reachable4.Path.Empty
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable4.Path#Equal(a, b), Reachable4.Path.Empty_q(a) } 
    { Reachable4.Path#Equal(a, b), Reachable4.Path.Empty_q(b) } 
  Reachable4.Path.Empty_q(a) && Reachable4.Path.Empty_q(b)
     ==> Reachable4.Path#Equal(a, b));

// Datatype extensional equality definition: #Reachable4.Path.Extend
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable4.Path#Equal(a, b), Reachable4.Path.Extend_q(a) } 
    { Reachable4.Path#Equal(a, b), Reachable4.Path.Extend_q(b) } 
  Reachable4.Path.Extend_q(a) && Reachable4.Path.Extend_q(b)
     ==> (Reachable4.Path#Equal(a, b)
       <==> Reachable4.Path#Equal(Reachable4.Path._h10(a), Reachable4.Path._h10(b))
         && Reachable4.Path._h11(a) == Reachable4.Path._h11(b)
         && Reachable4.Path._h12(a) == Reachable4.Path._h12(b)));

// Datatype extensionality axiom: Reachable4.Path
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable4.Path#Equal(a, b) } 
  Reachable4.Path#Equal(a, b) <==> a == b);

const unique class.Reachable4.Path: ClassName;

const unique class.Reachable5.__default: ClassName;

// function declaration for Reachable5._default.Reachable
function Reachable5.__default.Reachable($heap: Heap, source#0: ref, sink#0: ref, S#0: Set) : bool;

function Reachable5.__default.Reachable#canCall($heap: Heap, source#0: ref, sink#0: ref, S#0: Set) : bool;

function Tclass.Reachable5.Node() : Ty
uses {
// Tclass.Reachable5.Node Tag
axiom Tag(Tclass.Reachable5.Node()) == Tagclass.Reachable5.Node
   && TagFamily(Tclass.Reachable5.Node()) == tytagFamily$Node;
}

const unique Tagclass.Reachable5.Node: TyTag;

// Box/unbox axiom for Tclass.Reachable5.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Reachable5.Node()) } 
  $IsBox(bx, Tclass.Reachable5.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Reachable5.Node()));

// frame axiom for Reachable5.__default.Reachable
axiom (forall $h0: Heap, $h1: Heap, source#0: ref, sink#0: ref, S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), Reachable5.__default.Reachable($h1, source#0, sink#0, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (Reachable5.__default.Reachable#canCall($h0, source#0, sink#0, S#0)
         || (
          $Is(source#0, Tclass.Reachable5.Node())
           && $Is(sink#0, Tclass.Reachable5.Node())
           && $Is(S#0, TSet(Tclass.Reachable5.Node()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> Reachable5.__default.Reachable($h0, source#0, sink#0, S#0)
       == Reachable5.__default.Reachable($h1, source#0, sink#0, S#0));

function Reachable5.__default.Reachable#requires(Heap, ref, ref, Set) : bool;

// #requires axiom for Reachable5.__default.Reachable
axiom (forall $Heap: Heap, source#0: ref, sink#0: ref, S#0: Set :: 
  { Reachable5.__default.Reachable#requires($Heap, source#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(source#0, Tclass.Reachable5.Node())
       && $Is(sink#0, Tclass.Reachable5.Node())
       && $Is(S#0, TSet(Tclass.Reachable5.Node()))
     ==> Reachable5.__default.Reachable#requires($Heap, source#0, sink#0, S#0) == true);

function Tclass.Reachable5.Path(Ty) : Ty;

const unique Tagclass.Reachable5.Path: TyTag;

// Tclass.Reachable5.Path Tag
axiom (forall Reachable5.Path$T: Ty :: 
  { Tclass.Reachable5.Path(Reachable5.Path$T) } 
  Tag(Tclass.Reachable5.Path(Reachable5.Path$T)) == Tagclass.Reachable5.Path
     && TagFamily(Tclass.Reachable5.Path(Reachable5.Path$T)) == tytagFamily$Path);

function Tclass.Reachable5.Path_0(Ty) : Ty;

// Tclass.Reachable5.Path injectivity 0
axiom (forall Reachable5.Path$T: Ty :: 
  { Tclass.Reachable5.Path(Reachable5.Path$T) } 
  Tclass.Reachable5.Path_0(Tclass.Reachable5.Path(Reachable5.Path$T))
     == Reachable5.Path$T);

// Box/unbox axiom for Tclass.Reachable5.Path
axiom (forall Reachable5.Path$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Reachable5.Path(Reachable5.Path$T)) } 
  $IsBox(bx, Tclass.Reachable5.Path(Reachable5.Path$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Reachable5.Path(Reachable5.Path$T)));

// definition axiom for Reachable5.__default.Reachable (revealed)
axiom {:id "id215"} (forall $Heap: Heap, source#0: ref, sink#0: ref, S#0: Set :: 
  { Reachable5.__default.Reachable($Heap, source#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  Reachable5.__default.Reachable#canCall($Heap, source#0, sink#0, S#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(source#0, Tclass.Reachable5.Node())
         && $Is(sink#0, Tclass.Reachable5.Node())
         && $Is(S#0, TSet(Tclass.Reachable5.Node())))
     ==> (forall via#3: DatatypeType :: 
        { Reachable5.__default.ReachableVia($LS($LZ), $Heap, source#0, via#3, sink#0, S#0, S#0) } 
        $Is(via#3, Tclass.Reachable5.Path(Tclass.Reachable5.Node()))
           ==> Reachable5.__default.ReachableVia#canCall($Heap, source#0, via#3, sink#0, S#0, S#0))
       && Reachable5.__default.Reachable($Heap, source#0, sink#0, S#0)
         == (exists via#3: DatatypeType :: 
          { Reachable5.__default.ReachableVia($LS($LZ), $Heap, source#0, via#3, sink#0, S#0, S#0) } 
          $Is(via#3, Tclass.Reachable5.Path(Tclass.Reachable5.Node()))
             && Reachable5.__default.ReachableVia($LS($LZ), $Heap, source#0, via#3, sink#0, S#0, S#0)));

// function declaration for Reachable5._default.ReachableVia
function Reachable5.__default.ReachableVia($ly: LayerType, 
    $heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set, 
    T#0: Set)
   : bool;

function Reachable5.__default.ReachableVia#canCall($heap: Heap, source#0: ref, p#0: DatatypeType, sink#0: ref, S#0: Set, T#0: Set)
   : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set, 
    T#0: Set :: 
  { Reachable5.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0, T#0) } 
  Reachable5.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0, T#0)
     == Reachable5.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0, T#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set, 
    T#0: Set :: 
  { Reachable5.__default.ReachableVia(AsFuelBottom($ly), $Heap, source#0, p#0, sink#0, S#0, T#0) } 
  Reachable5.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0, T#0)
     == Reachable5.__default.ReachableVia($LZ, $Heap, source#0, p#0, sink#0, S#0, T#0));

// frame axiom for Reachable5.__default.ReachableVia
axiom (forall $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set, 
    T#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), Reachable5.__default.ReachableVia($ly, $h1, source#0, p#0, sink#0, S#0, T#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (Reachable5.__default.ReachableVia#canCall($h0, source#0, p#0, sink#0, S#0, T#0)
         || (
          $Is(source#0, Tclass.Reachable5.Node())
           && $Is(p#0, Tclass.Reachable5.Path(Tclass.Reachable5.Node()))
           && $Is(sink#0, Tclass.Reachable5.Node())
           && $Is(S#0, TSet(Tclass.Reachable5.Node()))
           && $Is(T#0, TSet(Tclass.Reachable5.Node()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && (Set#IsMember(S#0, $Box($o)) || Set#IsMember(T#0, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> Reachable5.__default.ReachableVia($ly, $h0, source#0, p#0, sink#0, S#0, T#0)
       == Reachable5.__default.ReachableVia($ly, $h1, source#0, p#0, sink#0, S#0, T#0));

// consequence axiom for Reachable5.__default.ReachableVia
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set, 
    T#0: Set :: 
  { Reachable5.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0, T#0) } 
  Reachable5.__default.ReachableVia#canCall($Heap, source#0, p#0, sink#0, S#0, T#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(source#0, Tclass.Reachable5.Node())
         && $IsAlloc(source#0, Tclass.Reachable5.Node(), $Heap)
         && 
        $Is(p#0, Tclass.Reachable5.Path(Tclass.Reachable5.Node()))
         && $IsAlloc(p#0, Tclass.Reachable5.Path(Tclass.Reachable5.Node()), $Heap)
         && 
        $Is(sink#0, Tclass.Reachable5.Node())
         && $IsAlloc(sink#0, Tclass.Reachable5.Node(), $Heap)
         && 
        $Is(S#0, TSet(Tclass.Reachable5.Node()))
         && $IsAlloc(S#0, TSet(Tclass.Reachable5.Node()), $Heap)
         && 
        $Is(T#0, TSet(Tclass.Reachable5.Node()))
         && $IsAlloc(T#0, TSet(Tclass.Reachable5.Node()), $Heap))
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && 
          Reachable5.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0, T#0)
           && 
          $IsAlloc(source#0, Tclass.Reachable5.Node(), $olderHeap)
           && $IsAlloc(sink#0, Tclass.Reachable5.Node(), $olderHeap)
           && $IsAlloc(S#0, TSet(Tclass.Reachable5.Node()), $olderHeap)
           && $IsAlloc(T#0, TSet(Tclass.Reachable5.Node()), $olderHeap)
         ==> $IsAlloc(p#0, Tclass.Reachable5.Path(Tclass.Reachable5.Node()), $olderHeap)));

function Reachable5.__default.ReachableVia#requires(LayerType, Heap, ref, DatatypeType, ref, Set, Set) : bool;

// #requires axiom for Reachable5.__default.ReachableVia
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set, 
    T#0: Set :: 
  { Reachable5.__default.ReachableVia#requires($ly, $Heap, source#0, p#0, sink#0, S#0, T#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(source#0, Tclass.Reachable5.Node())
       && $Is(p#0, Tclass.Reachable5.Path(Tclass.Reachable5.Node()))
       && $Is(sink#0, Tclass.Reachable5.Node())
       && $Is(S#0, TSet(Tclass.Reachable5.Node()))
       && $Is(T#0, TSet(Tclass.Reachable5.Node()))
     ==> Reachable5.__default.ReachableVia#requires($ly, $Heap, source#0, p#0, sink#0, S#0, T#0)
       == true);

// definition axiom for Reachable5.__default.ReachableVia (revealed)
axiom {:id "id216"} (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set, 
    T#0: Set :: 
  { Reachable5.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0, T#0), $IsGoodHeap($Heap) } 
  Reachable5.__default.ReachableVia#canCall($Heap, source#0, p#0, sink#0, S#0, T#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(source#0, Tclass.Reachable5.Node())
         && $Is(p#0, Tclass.Reachable5.Path(Tclass.Reachable5.Node()))
         && $Is(sink#0, Tclass.Reachable5.Node())
         && $Is(S#0, TSet(Tclass.Reachable5.Node()))
         && $Is(T#0, TSet(Tclass.Reachable5.Node())))
     ==> (!Reachable5.Path.Empty_q(p#0)
         ==> (var n#3 := $Unbox(Reachable5.Path._h14(p#0)): ref; 
          (var prefix#3 := Reachable5.Path._h13(p#0); 
            Set#IsMember(S#0, $Box(n#3))
               ==> 
              Seq#Contains($Unbox(read($Heap, n#3, Reachable5.Node.children)): Seq, $Box(sink#0))
               ==> Reachable5.__default.ReachableVia#canCall($Heap, source#0, prefix#3, n#3, S#0, T#0))))
       && Reachable5.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0, T#0)
         == (if Reachable5.Path.Empty_q(p#0)
           then source#0 == sink#0
           else (var n#2 := $Unbox(Reachable5.Path._h14(p#0)): ref; 
            (var prefix#2 := Reachable5.Path._h13(p#0); 
              Set#IsMember(S#0, $Box(n#2))
                 && Seq#Contains($Unbox(read($Heap, n#2, Reachable5.Node.children)): Seq, $Box(sink#0))
                 && Reachable5.__default.ReachableVia($ly, $Heap, source#0, prefix#2, n#2, S#0, T#0)))));

const unique class.Reachable5.Node?: ClassName;

function Tclass.Reachable5.Node?() : Ty
uses {
// Tclass.Reachable5.Node? Tag
axiom Tag(Tclass.Reachable5.Node?()) == Tagclass.Reachable5.Node?
   && TagFamily(Tclass.Reachable5.Node?()) == tytagFamily$Node;
}

const unique Tagclass.Reachable5.Node?: TyTag;

// Box/unbox axiom for Tclass.Reachable5.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Reachable5.Node?()) } 
  $IsBox(bx, Tclass.Reachable5.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Reachable5.Node?()));

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Reachable5.Node?()) } 
  $Is($o, Tclass.Reachable5.Node?())
     <==> $o == null || dtype($o) == Tclass.Reachable5.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Reachable5.Node?(), $h) } 
  $IsAlloc($o, Tclass.Reachable5.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const Reachable5.Node.children: Field
uses {
axiom FDim(Reachable5.Node.children) == 0
   && FieldOfDecl(class.Reachable5.Node?, field$children) == Reachable5.Node.children
   && !$IsGhostField(Reachable5.Node.children);
}

// Node.children: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, Reachable5.Node.children)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.Reachable5.Node?()
     ==> $Is($Unbox(read($h, $o, Reachable5.Node.children)): Seq, 
      TSeq(Tclass.Reachable5.Node())));

// Node.children: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, Reachable5.Node.children)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.Reachable5.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, Reachable5.Node.children)): Seq, 
      TSeq(Tclass.Reachable5.Node()), 
      $h));

// $Is axiom for non-null type Reachable5.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.Reachable5.Node()) } { $Is(c#0, Tclass.Reachable5.Node?()) } 
  $Is(c#0, Tclass.Reachable5.Node())
     <==> $Is(c#0, Tclass.Reachable5.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type Reachable5.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Reachable5.Node(), $h) } 
    { $IsAlloc(c#0, Tclass.Reachable5.Node?(), $h) } 
  $IsAlloc(c#0, Tclass.Reachable5.Node(), $h)
     <==> $IsAlloc(c#0, Tclass.Reachable5.Node?(), $h));

// Constructor function declaration
function #Reachable5.Path.Empty() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Reachable5.Path.Empty()) == ##Reachable5.Path.Empty;
// Constructor literal
axiom #Reachable5.Path.Empty() == Lit(#Reachable5.Path.Empty());
}

const unique ##Reachable5.Path.Empty: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Reachable5.Path.Empty()) == ##Reachable5.Path.Empty;
}

function Reachable5.Path.Empty_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Reachable5.Path.Empty_q(d) } 
  Reachable5.Path.Empty_q(d) <==> DatatypeCtorId(d) == ##Reachable5.Path.Empty);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Reachable5.Path.Empty_q(d) } 
  Reachable5.Path.Empty_q(d) ==> d == #Reachable5.Path.Empty());

// Constructor $Is
axiom (forall Reachable5.Path$T: Ty :: 
  { $Is(#Reachable5.Path.Empty(), Tclass.Reachable5.Path(Reachable5.Path$T)) } 
  $Is(#Reachable5.Path.Empty(), Tclass.Reachable5.Path(Reachable5.Path$T)));

// Constructor $IsAlloc
axiom (forall Reachable5.Path$T: Ty, $h: Heap :: 
  { $IsAlloc(#Reachable5.Path.Empty(), Tclass.Reachable5.Path(Reachable5.Path$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Reachable5.Path.Empty(), Tclass.Reachable5.Path(Reachable5.Path$T), $h));

// Constructor function declaration
function #Reachable5.Path.Extend(DatatypeType, Box) : DatatypeType;

const unique ##Reachable5.Path.Extend: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: DatatypeType, a#4#1#0: Box :: 
  { #Reachable5.Path.Extend(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#Reachable5.Path.Extend(a#4#0#0, a#4#1#0))
     == ##Reachable5.Path.Extend);
}

function Reachable5.Path.Extend_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Reachable5.Path.Extend_q(d) } 
  Reachable5.Path.Extend_q(d) <==> DatatypeCtorId(d) == ##Reachable5.Path.Extend);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Reachable5.Path.Extend_q(d) } 
  Reachable5.Path.Extend_q(d)
     ==> (exists a#5#0#0: DatatypeType, a#5#1#0: Box :: 
      d == #Reachable5.Path.Extend(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall Reachable5.Path$T: Ty, a#6#0#0: DatatypeType, a#6#1#0: Box :: 
  { $Is(#Reachable5.Path.Extend(a#6#0#0, a#6#1#0), 
      Tclass.Reachable5.Path(Reachable5.Path$T)) } 
  $Is(#Reachable5.Path.Extend(a#6#0#0, a#6#1#0), 
      Tclass.Reachable5.Path(Reachable5.Path$T))
     <==> $Is(a#6#0#0, Tclass.Reachable5.Path(Reachable5.Path$T))
       && $IsBox(a#6#1#0, Reachable5.Path$T));

// Constructor $IsAlloc
axiom (forall Reachable5.Path$T: Ty, a#6#0#0: DatatypeType, a#6#1#0: Box, $h: Heap :: 
  { $IsAlloc(#Reachable5.Path.Extend(a#6#0#0, a#6#1#0), 
      Tclass.Reachable5.Path(Reachable5.Path$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Reachable5.Path.Extend(a#6#0#0, a#6#1#0), 
        Tclass.Reachable5.Path(Reachable5.Path$T), 
        $h)
       <==> $IsAlloc(a#6#0#0, Tclass.Reachable5.Path(Reachable5.Path$T), $h)
         && $IsAllocBox(a#6#1#0, Reachable5.Path$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Reachable5.Path$T: Ty, $h: Heap :: 
  { $IsAlloc(Reachable5.Path._h13(d), Tclass.Reachable5.Path(Reachable5.Path$T), $h) } 
  $IsGoodHeap($h)
       && 
      Reachable5.Path.Extend_q(d)
       && $IsAlloc(d, Tclass.Reachable5.Path(Reachable5.Path$T), $h)
     ==> $IsAlloc(Reachable5.Path._h13(d), Tclass.Reachable5.Path(Reachable5.Path$T), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Reachable5.Path$T: Ty, $h: Heap :: 
  { $IsAllocBox(Reachable5.Path._h14(d), Reachable5.Path$T, $h) } 
  $IsGoodHeap($h)
       && 
      Reachable5.Path.Extend_q(d)
       && $IsAlloc(d, Tclass.Reachable5.Path(Reachable5.Path$T), $h)
     ==> $IsAllocBox(Reachable5.Path._h14(d), Reachable5.Path$T, $h));

// Constructor literal
axiom (forall a#7#0#0: DatatypeType, a#7#1#0: Box :: 
  { #Reachable5.Path.Extend(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #Reachable5.Path.Extend(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#Reachable5.Path.Extend(a#7#0#0, a#7#1#0)));

function Reachable5.Path._h13(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#8#0#0: DatatypeType, a#8#1#0: Box :: 
  { #Reachable5.Path.Extend(a#8#0#0, a#8#1#0) } 
  Reachable5.Path._h13(#Reachable5.Path.Extend(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: DatatypeType, a#9#1#0: Box :: 
  { #Reachable5.Path.Extend(a#9#0#0, a#9#1#0) } 
  DtRank(a#9#0#0) < DtRank(#Reachable5.Path.Extend(a#9#0#0, a#9#1#0)));

function Reachable5.Path._h14(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#10#0#0: DatatypeType, a#10#1#0: Box :: 
  { #Reachable5.Path.Extend(a#10#0#0, a#10#1#0) } 
  Reachable5.Path._h14(#Reachable5.Path.Extend(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: DatatypeType, a#11#1#0: Box :: 
  { #Reachable5.Path.Extend(a#11#0#0, a#11#1#0) } 
  BoxRank(a#11#1#0) < DtRank(#Reachable5.Path.Extend(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#Reachable5.Path(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Reachable5.Path(d) } 
  $IsA#Reachable5.Path(d)
     ==> Reachable5.Path.Empty_q(d) || Reachable5.Path.Extend_q(d));

// Questionmark data type disjunctivity
axiom (forall Reachable5.Path$T: Ty, d: DatatypeType :: 
  { Reachable5.Path.Extend_q(d), $Is(d, Tclass.Reachable5.Path(Reachable5.Path$T)) } 
    { Reachable5.Path.Empty_q(d), $Is(d, Tclass.Reachable5.Path(Reachable5.Path$T)) } 
  $Is(d, Tclass.Reachable5.Path(Reachable5.Path$T))
     ==> Reachable5.Path.Empty_q(d) || Reachable5.Path.Extend_q(d));

// Datatype extensional equality declaration
function Reachable5.Path#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Reachable5.Path.Empty
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable5.Path#Equal(a, b), Reachable5.Path.Empty_q(a) } 
    { Reachable5.Path#Equal(a, b), Reachable5.Path.Empty_q(b) } 
  Reachable5.Path.Empty_q(a) && Reachable5.Path.Empty_q(b)
     ==> Reachable5.Path#Equal(a, b));

// Datatype extensional equality definition: #Reachable5.Path.Extend
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable5.Path#Equal(a, b), Reachable5.Path.Extend_q(a) } 
    { Reachable5.Path#Equal(a, b), Reachable5.Path.Extend_q(b) } 
  Reachable5.Path.Extend_q(a) && Reachable5.Path.Extend_q(b)
     ==> (Reachable5.Path#Equal(a, b)
       <==> Reachable5.Path#Equal(Reachable5.Path._h13(a), Reachable5.Path._h13(b))
         && Reachable5.Path._h14(a) == Reachable5.Path._h14(b)));

// Datatype extensionality axiom: Reachable5.Path
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Reachable5.Path#Equal(a, b) } 
  Reachable5.Path#Equal(a, b) <==> a == b);

const unique class.Reachable5.Path: ClassName;

const unique class.Comprehension.__default: ClassName;

// function declaration for Comprehension._default.ElementsContainedIn
function Comprehension.__default.ElementsContainedIn(Comprehension._default.ElementsContainedIn$X: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    S#0: Set)
   : bool;

function Comprehension.__default.ElementsContainedIn#canCall(Comprehension._default.ElementsContainedIn$X: Ty, xs#0: DatatypeType, S#0: Set)
   : bool;

// layer synonym axiom
axiom (forall Comprehension._default.ElementsContainedIn$X: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    S#0: Set :: 
  { Comprehension.__default.ElementsContainedIn(Comprehension._default.ElementsContainedIn$X, $LS($ly), xs#0, S#0) } 
  Comprehension.__default.ElementsContainedIn(Comprehension._default.ElementsContainedIn$X, $LS($ly), xs#0, S#0)
     == Comprehension.__default.ElementsContainedIn(Comprehension._default.ElementsContainedIn$X, $ly, xs#0, S#0));

// fuel synonym axiom
axiom (forall Comprehension._default.ElementsContainedIn$X: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    S#0: Set :: 
  { Comprehension.__default.ElementsContainedIn(Comprehension._default.ElementsContainedIn$X, AsFuelBottom($ly), xs#0, S#0) } 
  Comprehension.__default.ElementsContainedIn(Comprehension._default.ElementsContainedIn$X, $ly, xs#0, S#0)
     == Comprehension.__default.ElementsContainedIn(Comprehension._default.ElementsContainedIn$X, $LZ, xs#0, S#0));

function Tclass.Comprehension.List(Ty) : Ty;

const unique Tagclass.Comprehension.List: TyTag;

// Tclass.Comprehension.List Tag
axiom (forall Comprehension.List$T: Ty :: 
  { Tclass.Comprehension.List(Comprehension.List$T) } 
  Tag(Tclass.Comprehension.List(Comprehension.List$T))
       == Tagclass.Comprehension.List
     && TagFamily(Tclass.Comprehension.List(Comprehension.List$T)) == tytagFamily$List);

function Tclass.Comprehension.List_0(Ty) : Ty;

// Tclass.Comprehension.List injectivity 0
axiom (forall Comprehension.List$T: Ty :: 
  { Tclass.Comprehension.List(Comprehension.List$T) } 
  Tclass.Comprehension.List_0(Tclass.Comprehension.List(Comprehension.List$T))
     == Comprehension.List$T);

// Box/unbox axiom for Tclass.Comprehension.List
axiom (forall Comprehension.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Comprehension.List(Comprehension.List$T)) } 
  $IsBox(bx, Tclass.Comprehension.List(Comprehension.List$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Comprehension.List(Comprehension.List$T)));

// consequence axiom for Comprehension.__default.ElementsContainedIn
axiom (forall Comprehension._default.ElementsContainedIn$X: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    S#0: Set :: 
  { Comprehension.__default.ElementsContainedIn(Comprehension._default.ElementsContainedIn$X, $ly, xs#0, S#0) } 
  Comprehension.__default.ElementsContainedIn#canCall(Comprehension._default.ElementsContainedIn$X, xs#0, S#0)
       || ($Is(xs#0, Tclass.Comprehension.List(Comprehension._default.ElementsContainedIn$X))
         && $Is(S#0, TSet(Comprehension._default.ElementsContainedIn$X)))
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && 
          Comprehension.__default.ElementsContainedIn(Comprehension._default.ElementsContainedIn$X, $ly, xs#0, S#0)
           && $IsAlloc(S#0, TSet(Comprehension._default.ElementsContainedIn$X), $olderHeap)
         ==> $IsAlloc(xs#0, 
          Tclass.Comprehension.List(Comprehension._default.ElementsContainedIn$X), 
          $olderHeap)));

function Comprehension.__default.ElementsContainedIn#requires(Ty, LayerType, DatatypeType, Set) : bool;

// #requires axiom for Comprehension.__default.ElementsContainedIn
axiom (forall Comprehension._default.ElementsContainedIn$X: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    S#0: Set :: 
  { Comprehension.__default.ElementsContainedIn#requires(Comprehension._default.ElementsContainedIn$X, $ly, xs#0, S#0) } 
  $Is(xs#0, Tclass.Comprehension.List(Comprehension._default.ElementsContainedIn$X))
       && $Is(S#0, TSet(Comprehension._default.ElementsContainedIn$X))
     ==> Comprehension.__default.ElementsContainedIn#requires(Comprehension._default.ElementsContainedIn$X, $ly, xs#0, S#0)
       == true);

// definition axiom for Comprehension.__default.ElementsContainedIn (revealed)
axiom {:id "id217"} (forall Comprehension._default.ElementsContainedIn$X: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    S#0: Set :: 
  { Comprehension.__default.ElementsContainedIn(Comprehension._default.ElementsContainedIn$X, $LS($ly), xs#0, S#0) } 
  Comprehension.__default.ElementsContainedIn#canCall(Comprehension._default.ElementsContainedIn$X, xs#0, S#0)
       || ($Is(xs#0, Tclass.Comprehension.List(Comprehension._default.ElementsContainedIn$X))
         && $Is(S#0, TSet(Comprehension._default.ElementsContainedIn$X)))
     ==> (!Comprehension.List.Nil_q(xs#0)
         ==> (var tail#5 := Comprehension.List._h16(xs#0); 
          (var x#5 := Comprehension.List._h15(xs#0); 
            Set#IsMember(S#0, x#5)
               ==> Comprehension.__default.ElementsContainedIn#canCall(Comprehension._default.ElementsContainedIn$X, tail#5, S#0))))
       && Comprehension.__default.ElementsContainedIn(Comprehension._default.ElementsContainedIn$X, $LS($ly), xs#0, S#0)
         == (if Comprehension.List.Nil_q(xs#0)
           then true
           else (var tail#4 := Comprehension.List._h16(xs#0); 
            (var x#4 := Comprehension.List._h15(xs#0); 
              Set#IsMember(S#0, x#4)
                 && Comprehension.__default.ElementsContainedIn(Comprehension._default.ElementsContainedIn$X, $ly, tail#4, S#0)))));

// definition axiom for Comprehension.__default.ElementsContainedIn for all literals (revealed)
axiom {:id "id218"} (forall Comprehension._default.ElementsContainedIn$X: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    S#0: Set :: 
  {:weight 3} { Comprehension.__default.ElementsContainedIn(Comprehension._default.ElementsContainedIn$X, $LS($ly), Lit(xs#0), Lit(S#0)) } 
  Comprehension.__default.ElementsContainedIn#canCall(Comprehension._default.ElementsContainedIn$X, Lit(xs#0), Lit(S#0))
       || ($Is(xs#0, Tclass.Comprehension.List(Comprehension._default.ElementsContainedIn$X))
         && $Is(S#0, TSet(Comprehension._default.ElementsContainedIn$X)))
     ==> (!Lit(Comprehension.List.Nil_q(Lit(xs#0)))
         ==> (var tail#7 := Lit(Comprehension.List._h16(Lit(xs#0))); 
          (var x#7 := Lit(Comprehension.List._h15(Lit(xs#0))); 
            Set#IsMember(Lit(S#0), x#7)
               ==> Comprehension.__default.ElementsContainedIn#canCall(Comprehension._default.ElementsContainedIn$X, tail#7, Lit(S#0)))))
       && Comprehension.__default.ElementsContainedIn(Comprehension._default.ElementsContainedIn$X, $LS($ly), Lit(xs#0), Lit(S#0))
         == (if Comprehension.List.Nil_q(Lit(xs#0))
           then true
           else (var tail#6 := Lit(Comprehension.List._h16(Lit(xs#0))); 
            (var x#6 := Lit(Comprehension.List._h15(Lit(xs#0))); 
              Set#IsMember(Lit(S#0), x#6)
                 && Comprehension.__default.ElementsContainedIn(Comprehension._default.ElementsContainedIn$X, $LS($ly), tail#6, Lit(S#0))))));

// function declaration for Comprehension._default.Collection
function Comprehension.__default.Collection(Comprehension._default.Collection$X: Ty, S#0: Set) : ISet;

function Comprehension.__default.Collection#canCall(Comprehension._default.Collection$X: Ty, S#0: Set) : bool;

// consequence axiom for Comprehension.__default.Collection
axiom (forall Comprehension._default.Collection$X: Ty, S#0: Set :: 
  { Comprehension.__default.Collection(Comprehension._default.Collection$X, S#0) } 
  Comprehension.__default.Collection#canCall(Comprehension._default.Collection$X, S#0)
       || $Is(S#0, TSet(Comprehension._default.Collection$X))
     ==> $Is(Comprehension.__default.Collection(Comprehension._default.Collection$X, S#0), 
      TISet(Tclass.Comprehension.List(Comprehension._default.Collection$X))));

// alloc consequence axiom for Comprehension.__default.Collection
axiom (forall $Heap: Heap, Comprehension._default.Collection$X: Ty, S#0: Set :: 
  { $IsAlloc(Comprehension.__default.Collection(Comprehension._default.Collection$X, S#0), 
      TISet(Tclass.Comprehension.List(Comprehension._default.Collection$X)), 
      $Heap) } 
  (Comprehension.__default.Collection#canCall(Comprehension._default.Collection$X, S#0)
         || ($Is(S#0, TSet(Comprehension._default.Collection$X))
           && $IsAlloc(S#0, TSet(Comprehension._default.Collection$X), $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(Comprehension.__default.Collection(Comprehension._default.Collection$X, S#0), 
      TISet(Tclass.Comprehension.List(Comprehension._default.Collection$X)), 
      $Heap));

function Comprehension.__default.Collection#requires(Ty, Set) : bool;

// #requires axiom for Comprehension.__default.Collection
axiom (forall Comprehension._default.Collection$X: Ty, S#0: Set :: 
  { Comprehension.__default.Collection#requires(Comprehension._default.Collection$X, S#0) } 
  $Is(S#0, TSet(Comprehension._default.Collection$X))
     ==> Comprehension.__default.Collection#requires(Comprehension._default.Collection$X, S#0)
       == true);

// definition axiom for Comprehension.__default.Collection (revealed)
axiom {:id "id219"} (forall Comprehension._default.Collection$X: Ty, S#0: Set :: 
  { Comprehension.__default.Collection(Comprehension._default.Collection$X, S#0) } 
  Comprehension.__default.Collection#canCall(Comprehension._default.Collection$X, S#0)
       || $Is(S#0, TSet(Comprehension._default.Collection$X))
     ==> (forall xs#4: DatatypeType :: 
        { Comprehension.__default.ElementsContainedIn(Comprehension._default.Collection$X, $LS($LZ), xs#4, S#0) } 
        $Is(xs#4, Tclass.Comprehension.List(Comprehension._default.Collection$X))
           ==> Comprehension.__default.ElementsContainedIn#canCall(Comprehension._default.Collection$X, xs#4, S#0))
       && Comprehension.__default.Collection(Comprehension._default.Collection$X, S#0)
         == (lambda $y#4: Box :: 
          $IsBox($y#4, Tclass.Comprehension.List(Comprehension._default.Collection$X))
             && Comprehension.__default.ElementsContainedIn(Comprehension._default.Collection$X, $LS($LZ), $Unbox($y#4): DatatypeType, S#0)));

// definition axiom for Comprehension.__default.Collection for all literals (revealed)
axiom {:id "id220"} (forall Comprehension._default.Collection$X: Ty, S#0: Set :: 
  {:weight 3} { Comprehension.__default.Collection(Comprehension._default.Collection$X, Lit(S#0)) } 
  Comprehension.__default.Collection#canCall(Comprehension._default.Collection$X, Lit(S#0))
       || $Is(S#0, TSet(Comprehension._default.Collection$X))
     ==> (forall xs#5: DatatypeType :: 
        { Comprehension.__default.ElementsContainedIn(Comprehension._default.Collection$X, $LS($LZ), xs#5, S#0) } 
        $Is(xs#5, Tclass.Comprehension.List(Comprehension._default.Collection$X))
           ==> Comprehension.__default.ElementsContainedIn#canCall(Comprehension._default.Collection$X, xs#5, Lit(S#0)))
       && Comprehension.__default.Collection(Comprehension._default.Collection$X, Lit(S#0))
         == (lambda $y#5: Box :: 
          $IsBox($y#5, Tclass.Comprehension.List(Comprehension._default.Collection$X))
             && Comprehension.__default.ElementsContainedIn(Comprehension._default.Collection$X, 
              $LS($LZ), 
              $Unbox($y#5): DatatypeType, 
              Lit(S#0))));

const unique class.Comprehension.C?: ClassName;

function Tclass.Comprehension.C?() : Ty
uses {
// Tclass.Comprehension.C? Tag
axiom Tag(Tclass.Comprehension.C?()) == Tagclass.Comprehension.C?
   && TagFamily(Tclass.Comprehension.C?()) == tytagFamily$C;
}

const unique Tagclass.Comprehension.C?: TyTag;

// Box/unbox axiom for Tclass.Comprehension.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Comprehension.C?()) } 
  $IsBox(bx, Tclass.Comprehension.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Comprehension.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Comprehension.C?()) } 
  $Is($o, Tclass.Comprehension.C?())
     <==> $o == null || dtype($o) == Tclass.Comprehension.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Comprehension.C?(), $h) } 
  $IsAlloc($o, Tclass.Comprehension.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.Comprehension.C() : Ty
uses {
// Tclass.Comprehension.C Tag
axiom Tag(Tclass.Comprehension.C()) == Tagclass.Comprehension.C
   && TagFamily(Tclass.Comprehension.C()) == tytagFamily$C;
}

const unique Tagclass.Comprehension.C: TyTag;

// Box/unbox axiom for Tclass.Comprehension.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Comprehension.C()) } 
  $IsBox(bx, Tclass.Comprehension.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Comprehension.C()));

// $Is axiom for non-null type Comprehension.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.Comprehension.C()) } { $Is(c#0, Tclass.Comprehension.C?()) } 
  $Is(c#0, Tclass.Comprehension.C())
     <==> $Is(c#0, Tclass.Comprehension.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type Comprehension.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Comprehension.C(), $h) } 
    { $IsAlloc(c#0, Tclass.Comprehension.C?(), $h) } 
  $IsAlloc(c#0, Tclass.Comprehension.C(), $h)
     <==> $IsAlloc(c#0, Tclass.Comprehension.C?(), $h));

// Constructor function declaration
function #Comprehension.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Comprehension.List.Nil()) == ##Comprehension.List.Nil;
// Constructor literal
axiom #Comprehension.List.Nil() == Lit(#Comprehension.List.Nil());
}

const unique ##Comprehension.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Comprehension.List.Nil()) == ##Comprehension.List.Nil;
}

function Comprehension.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Comprehension.List.Nil_q(d) } 
  Comprehension.List.Nil_q(d) <==> DatatypeCtorId(d) == ##Comprehension.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Comprehension.List.Nil_q(d) } 
  Comprehension.List.Nil_q(d) ==> d == #Comprehension.List.Nil());

// Constructor $Is
axiom (forall Comprehension.List$T: Ty :: 
  { $Is(#Comprehension.List.Nil(), Tclass.Comprehension.List(Comprehension.List$T)) } 
  $Is(#Comprehension.List.Nil(), Tclass.Comprehension.List(Comprehension.List$T)));

// Constructor $IsAlloc
axiom (forall Comprehension.List$T: Ty, $h: Heap :: 
  { $IsAlloc(#Comprehension.List.Nil(), Tclass.Comprehension.List(Comprehension.List$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Comprehension.List.Nil(), Tclass.Comprehension.List(Comprehension.List$T), $h));

// Constructor function declaration
function #Comprehension.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##Comprehension.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #Comprehension.List.Cons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#Comprehension.List.Cons(a#4#0#0, a#4#1#0))
     == ##Comprehension.List.Cons);
}

function Comprehension.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Comprehension.List.Cons_q(d) } 
  Comprehension.List.Cons_q(d) <==> DatatypeCtorId(d) == ##Comprehension.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Comprehension.List.Cons_q(d) } 
  Comprehension.List.Cons_q(d)
     ==> (exists a#5#0#0: Box, a#5#1#0: DatatypeType :: 
      d == #Comprehension.List.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall Comprehension.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { $Is(#Comprehension.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.Comprehension.List(Comprehension.List$T)) } 
  $Is(#Comprehension.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.Comprehension.List(Comprehension.List$T))
     <==> $IsBox(a#6#0#0, Comprehension.List$T)
       && $Is(a#6#1#0, Tclass.Comprehension.List(Comprehension.List$T)));

// Constructor $IsAlloc
axiom (forall Comprehension.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#Comprehension.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.Comprehension.List(Comprehension.List$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Comprehension.List.Cons(a#6#0#0, a#6#1#0), 
        Tclass.Comprehension.List(Comprehension.List$T), 
        $h)
       <==> $IsAllocBox(a#6#0#0, Comprehension.List$T, $h)
         && $IsAlloc(a#6#1#0, Tclass.Comprehension.List(Comprehension.List$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Comprehension.List$T: Ty, $h: Heap :: 
  { $IsAllocBox(Comprehension.List._h15(d), Comprehension.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      Comprehension.List.Cons_q(d)
       && $IsAlloc(d, Tclass.Comprehension.List(Comprehension.List$T), $h)
     ==> $IsAllocBox(Comprehension.List._h15(d), Comprehension.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Comprehension.List$T: Ty, $h: Heap :: 
  { $IsAlloc(Comprehension.List._h16(d), Tclass.Comprehension.List(Comprehension.List$T), $h) } 
  $IsGoodHeap($h)
       && 
      Comprehension.List.Cons_q(d)
       && $IsAlloc(d, Tclass.Comprehension.List(Comprehension.List$T), $h)
     ==> $IsAlloc(Comprehension.List._h16(d), Tclass.Comprehension.List(Comprehension.List$T), $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #Comprehension.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #Comprehension.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#Comprehension.List.Cons(a#7#0#0, a#7#1#0)));

function Comprehension.List._h15(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #Comprehension.List.Cons(a#8#0#0, a#8#1#0) } 
  Comprehension.List._h15(#Comprehension.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #Comprehension.List.Cons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0) < DtRank(#Comprehension.List.Cons(a#9#0#0, a#9#1#0)));

function Comprehension.List._h16(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #Comprehension.List.Cons(a#10#0#0, a#10#1#0) } 
  Comprehension.List._h16(#Comprehension.List.Cons(a#10#0#0, a#10#1#0))
     == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #Comprehension.List.Cons(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0) < DtRank(#Comprehension.List.Cons(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#Comprehension.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Comprehension.List(d) } 
  $IsA#Comprehension.List(d)
     ==> Comprehension.List.Nil_q(d) || Comprehension.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall Comprehension.List$T: Ty, d: DatatypeType :: 
  { Comprehension.List.Cons_q(d), $Is(d, Tclass.Comprehension.List(Comprehension.List$T)) } 
    { Comprehension.List.Nil_q(d), $Is(d, Tclass.Comprehension.List(Comprehension.List$T)) } 
  $Is(d, Tclass.Comprehension.List(Comprehension.List$T))
     ==> Comprehension.List.Nil_q(d) || Comprehension.List.Cons_q(d));

// Datatype extensional equality declaration
function Comprehension.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Comprehension.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Comprehension.List#Equal(a, b), Comprehension.List.Nil_q(a) } 
    { Comprehension.List#Equal(a, b), Comprehension.List.Nil_q(b) } 
  Comprehension.List.Nil_q(a) && Comprehension.List.Nil_q(b)
     ==> Comprehension.List#Equal(a, b));

// Datatype extensional equality definition: #Comprehension.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Comprehension.List#Equal(a, b), Comprehension.List.Cons_q(a) } 
    { Comprehension.List#Equal(a, b), Comprehension.List.Cons_q(b) } 
  Comprehension.List.Cons_q(a) && Comprehension.List.Cons_q(b)
     ==> (Comprehension.List#Equal(a, b)
       <==> Comprehension.List._h15(a) == Comprehension.List._h15(b)
         && Comprehension.List#Equal(Comprehension.List._h16(a), Comprehension.List._h16(b))));

// Datatype extensionality axiom: Comprehension.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Comprehension.List#Equal(a, b) } 
  Comprehension.List#Equal(a, b) <==> a == b);

const unique class.Comprehension.List: ClassName;

const unique class.MoreTests.__default: ClassName;

// function declaration for MoreTests._default.P
function MoreTests.__default.P($ly: LayerType, x#0: DatatypeType, y#0: Set) : bool;

function MoreTests.__default.P#canCall(x#0: DatatypeType, y#0: Set) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: Set :: 
  { MoreTests.__default.P($LS($ly), x#0, y#0) } 
  MoreTests.__default.P($LS($ly), x#0, y#0)
     == MoreTests.__default.P($ly, x#0, y#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: Set :: 
  { MoreTests.__default.P(AsFuelBottom($ly), x#0, y#0) } 
  MoreTests.__default.P($ly, x#0, y#0) == MoreTests.__default.P($LZ, x#0, y#0));

function Tclass.MoreTests.C() : Ty
uses {
// Tclass.MoreTests.C Tag
axiom Tag(Tclass.MoreTests.C()) == Tagclass.MoreTests.C
   && TagFamily(Tclass.MoreTests.C()) == tytagFamily$C;
}

const unique Tagclass.MoreTests.C: TyTag;

// Box/unbox axiom for Tclass.MoreTests.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.C()) } 
  $IsBox(bx, Tclass.MoreTests.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.MoreTests.C()));

function Tclass.MoreTests.List(Ty) : Ty;

const unique Tagclass.MoreTests.List: TyTag;

// Tclass.MoreTests.List Tag
axiom (forall MoreTests.List$T: Ty :: 
  { Tclass.MoreTests.List(MoreTests.List$T) } 
  Tag(Tclass.MoreTests.List(MoreTests.List$T)) == Tagclass.MoreTests.List
     && TagFamily(Tclass.MoreTests.List(MoreTests.List$T)) == tytagFamily$List);

function Tclass.MoreTests.List_0(Ty) : Ty;

// Tclass.MoreTests.List injectivity 0
axiom (forall MoreTests.List$T: Ty :: 
  { Tclass.MoreTests.List(MoreTests.List$T) } 
  Tclass.MoreTests.List_0(Tclass.MoreTests.List(MoreTests.List$T))
     == MoreTests.List$T);

// Box/unbox axiom for Tclass.MoreTests.List
axiom (forall MoreTests.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.List(MoreTests.List$T)) } 
  $IsBox(bx, Tclass.MoreTests.List(MoreTests.List$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MoreTests.List(MoreTests.List$T)));

// consequence axiom for MoreTests.__default.P
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: Set :: 
  { MoreTests.__default.P($ly, x#0, y#0) } 
  MoreTests.__default.P#canCall(x#0, y#0)
       || ($Is(x#0, Tclass.MoreTests.List(Tclass.MoreTests.C()))
         && $Is(y#0, TSet(Tclass.MoreTests.C())))
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && 
          MoreTests.__default.P($ly, x#0, y#0)
           && $IsAlloc(y#0, TSet(Tclass.MoreTests.C()), $olderHeap)
         ==> $IsAlloc(x#0, Tclass.MoreTests.List(Tclass.MoreTests.C()), $olderHeap)));

function MoreTests.__default.P#requires(LayerType, DatatypeType, Set) : bool;

// #requires axiom for MoreTests.__default.P
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: Set :: 
  { MoreTests.__default.P#requires($ly, x#0, y#0) } 
  $Is(x#0, Tclass.MoreTests.List(Tclass.MoreTests.C()))
       && $Is(y#0, TSet(Tclass.MoreTests.C()))
     ==> MoreTests.__default.P#requires($ly, x#0, y#0) == true);

// definition axiom for MoreTests.__default.P (revealed)
axiom {:id "id221"} (forall $ly: LayerType, x#0: DatatypeType, y#0: Set :: 
  { MoreTests.__default.P($LS($ly), x#0, y#0) } 
  MoreTests.__default.P#canCall(x#0, y#0)
       || ($Is(x#0, Tclass.MoreTests.List(Tclass.MoreTests.C()))
         && $Is(y#0, TSet(Tclass.MoreTests.C())))
     ==> (!MoreTests.List.Nil_q(x#0)
         ==> (var tail#5 := MoreTests.List._h18(x#0); 
          (var head#5 := $Unbox(MoreTests.List._h17(x#0)): ref; 
            Set#IsMember(y#0, $Box(head#5)) ==> MoreTests.__default.P#canCall(tail#5, y#0))))
       && MoreTests.__default.P($LS($ly), x#0, y#0)
         == (if MoreTests.List.Nil_q(x#0)
           then true
           else (var tail#4 := MoreTests.List._h18(x#0); 
            (var head#4 := $Unbox(MoreTests.List._h17(x#0)): ref; 
              Set#IsMember(y#0, $Box(head#4)) && MoreTests.__default.P($ly, tail#4, y#0)))));

// definition axiom for MoreTests.__default.P for all literals (revealed)
axiom {:id "id222"} (forall $ly: LayerType, x#0: DatatypeType, y#0: Set :: 
  {:weight 3} { MoreTests.__default.P($LS($ly), Lit(x#0), Lit(y#0)) } 
  MoreTests.__default.P#canCall(Lit(x#0), Lit(y#0))
       || ($Is(x#0, Tclass.MoreTests.List(Tclass.MoreTests.C()))
         && $Is(y#0, TSet(Tclass.MoreTests.C())))
     ==> (!Lit(MoreTests.List.Nil_q(Lit(x#0)))
         ==> (var tail#7 := Lit(MoreTests.List._h18(Lit(x#0))); 
          (var head#7 := Lit($Unbox(MoreTests.List._h17(Lit(x#0))): ref); 
            Set#IsMember(Lit(y#0), $Box(head#7))
               ==> MoreTests.__default.P#canCall(tail#7, Lit(y#0)))))
       && MoreTests.__default.P($LS($ly), Lit(x#0), Lit(y#0))
         == (if MoreTests.List.Nil_q(Lit(x#0))
           then true
           else (var tail#6 := Lit(MoreTests.List._h18(Lit(x#0))); 
            (var head#6 := Lit($Unbox(MoreTests.List._h17(Lit(x#0))): ref); 
              Set#IsMember(Lit(y#0), $Box(head#6))
                 && MoreTests.__default.P($LS($ly), tail#6, Lit(y#0))))));

// function declaration for MoreTests._default.F
function MoreTests.__default.F(y#0: Set) : int;

function MoreTests.__default.F#canCall(y#0: Set) : bool;

function MoreTests.__default.F#requires(Set) : bool;

// #requires axiom for MoreTests.__default.F
axiom (forall y#0: Set :: 
  { MoreTests.__default.F#requires(y#0) } 
  $Is(y#0, TSet(Tclass.MoreTests.C()))
     ==> MoreTests.__default.F#requires(y#0) == true);

// definition axiom for MoreTests.__default.F (revealed)
axiom {:id "id223"} (forall y#0: Set :: 
  { MoreTests.__default.F(y#0) } 
  MoreTests.__default.F#canCall(y#0) || $Is(y#0, TSet(Tclass.MoreTests.C()))
     ==> (forall x#4: DatatypeType :: 
        { MoreTests.__default.G(x#4, y#0) } 
          { MoreTests.__default.P($LS($LZ), x#4, y#0) } 
        $Is(x#4, Tclass.MoreTests.List(Tclass.MoreTests.C()))
           ==> MoreTests.__default.P#canCall(x#4, y#0)
             && (MoreTests.__default.P($LS($LZ), x#4, y#0)
               ==> MoreTests.__default.G#canCall(x#4, y#0)))
       && MoreTests.__default.F(y#0)
         == (if (forall x#4: DatatypeType :: 
            { MoreTests.__default.G(x#4, y#0) } 
              { MoreTests.__default.P($LS($LZ), x#4, y#0) } 
            $Is(x#4, Tclass.MoreTests.List(Tclass.MoreTests.C()))
               ==> 
              MoreTests.__default.P($LS($LZ), x#4, y#0)
               ==> MoreTests.__default.G(x#4, y#0) == LitInt(3))
           then 100
           else 0));

// definition axiom for MoreTests.__default.F for all literals (revealed)
axiom {:id "id224"} (forall y#0: Set :: 
  {:weight 3} { MoreTests.__default.F(Lit(y#0)) } 
  MoreTests.__default.F#canCall(Lit(y#0)) || $Is(y#0, TSet(Tclass.MoreTests.C()))
     ==> (forall x#5: DatatypeType :: 
        { MoreTests.__default.G(x#5, y#0) } 
          { MoreTests.__default.P($LS($LZ), x#5, y#0) } 
        $Is(x#5, Tclass.MoreTests.List(Tclass.MoreTests.C()))
           ==> MoreTests.__default.P#canCall(x#5, Lit(y#0))
             && (MoreTests.__default.P($LS($LZ), x#5, Lit(y#0))
               ==> MoreTests.__default.G#canCall(x#5, Lit(y#0))))
       && MoreTests.__default.F(Lit(y#0))
         == (if (forall x#5: DatatypeType :: 
            { MoreTests.__default.G(x#5, y#0) } 
              { MoreTests.__default.P($LS($LZ), x#5, y#0) } 
            $Is(x#5, Tclass.MoreTests.List(Tclass.MoreTests.C()))
               ==> 
              MoreTests.__default.P($LS($LZ), x#5, Lit(y#0))
               ==> MoreTests.__default.G(x#5, Lit(y#0)) == LitInt(3))
           then 100
           else 0));

// function declaration for MoreTests._default.G
function MoreTests.__default.G(x#0: DatatypeType, y#0: Set) : int;

function MoreTests.__default.G#canCall(x#0: DatatypeType, y#0: Set) : bool;

function MoreTests.__default.G#requires(DatatypeType, Set) : bool;

// #requires axiom for MoreTests.__default.G
axiom (forall x#0: DatatypeType, y#0: Set :: 
  { MoreTests.__default.G#requires(x#0, y#0) } 
  $Is(x#0, Tclass.MoreTests.List(Tclass.MoreTests.C()))
       && $Is(y#0, TSet(Tclass.MoreTests.C()))
     ==> MoreTests.__default.G#requires(x#0, y#0) == true);

// function declaration for MoreTests._default.Collection
function MoreTests.__default.Collection(y#0: Set) : ISet;

function MoreTests.__default.Collection#canCall(y#0: Set) : bool;

// consequence axiom for MoreTests.__default.Collection
axiom (forall y#0: Set :: 
  { MoreTests.__default.Collection(y#0) } 
  MoreTests.__default.Collection#canCall(y#0)
       || $Is(y#0, TSet(Tclass.MoreTests.C()))
     ==> $Is(MoreTests.__default.Collection(y#0), 
      TISet(Tclass.MoreTests.List(Tclass.MoreTests.C()))));

// alloc consequence axiom for MoreTests.__default.Collection
axiom (forall $Heap: Heap, y#0: Set :: 
  { $IsAlloc(MoreTests.__default.Collection(y#0), 
      TISet(Tclass.MoreTests.List(Tclass.MoreTests.C())), 
      $Heap) } 
  (MoreTests.__default.Collection#canCall(y#0)
         || ($Is(y#0, TSet(Tclass.MoreTests.C()))
           && $IsAlloc(y#0, TSet(Tclass.MoreTests.C()), $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(MoreTests.__default.Collection(y#0), 
      TISet(Tclass.MoreTests.List(Tclass.MoreTests.C())), 
      $Heap));

function MoreTests.__default.Collection#requires(Set) : bool;

// #requires axiom for MoreTests.__default.Collection
axiom (forall y#0: Set :: 
  { MoreTests.__default.Collection#requires(y#0) } 
  $Is(y#0, TSet(Tclass.MoreTests.C()))
     ==> MoreTests.__default.Collection#requires(y#0) == true);

// definition axiom for MoreTests.__default.Collection (revealed)
axiom {:id "id225"} (forall y#0: Set :: 
  { MoreTests.__default.Collection(y#0) } 
  MoreTests.__default.Collection#canCall(y#0)
       || $Is(y#0, TSet(Tclass.MoreTests.C()))
     ==> (forall x#4: DatatypeType :: 
        { MoreTests.__default.P($LS($LZ), x#4, y#0) } 
        $Is(x#4, Tclass.MoreTests.List(Tclass.MoreTests.C()))
           ==> MoreTests.__default.P#canCall(x#4, y#0))
       && MoreTests.__default.Collection(y#0)
         == (lambda $y#4: Box :: 
          $IsBox($y#4, Tclass.MoreTests.List(Tclass.MoreTests.C()))
             && MoreTests.__default.P($LS($LZ), $Unbox($y#4): DatatypeType, y#0)));

// definition axiom for MoreTests.__default.Collection for all literals (revealed)
axiom {:id "id226"} (forall y#0: Set :: 
  {:weight 3} { MoreTests.__default.Collection(Lit(y#0)) } 
  MoreTests.__default.Collection#canCall(Lit(y#0))
       || $Is(y#0, TSet(Tclass.MoreTests.C()))
     ==> (forall x#5: DatatypeType :: 
        { MoreTests.__default.P($LS($LZ), x#5, y#0) } 
        $Is(x#5, Tclass.MoreTests.List(Tclass.MoreTests.C()))
           ==> MoreTests.__default.P#canCall(x#5, Lit(y#0)))
       && MoreTests.__default.Collection(Lit(y#0))
         == (lambda $y#5: Box :: 
          $IsBox($y#5, Tclass.MoreTests.List(Tclass.MoreTests.C()))
             && MoreTests.__default.P($LS($LZ), $Unbox($y#5): DatatypeType, Lit(y#0))));

const unique class.MoreTests.C?: ClassName;

function Tclass.MoreTests.C?() : Ty
uses {
// Tclass.MoreTests.C? Tag
axiom Tag(Tclass.MoreTests.C?()) == Tagclass.MoreTests.C?
   && TagFamily(Tclass.MoreTests.C?()) == tytagFamily$C;
}

const unique Tagclass.MoreTests.C?: TyTag;

// Box/unbox axiom for Tclass.MoreTests.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.C?()) } 
  $IsBox(bx, Tclass.MoreTests.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.MoreTests.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.MoreTests.C?()) } 
  $Is($o, Tclass.MoreTests.C?())
     <==> $o == null || dtype($o) == Tclass.MoreTests.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.MoreTests.C?(), $h) } 
  $IsAlloc($o, Tclass.MoreTests.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// $Is axiom for non-null type MoreTests.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.MoreTests.C()) } { $Is(c#0, Tclass.MoreTests.C?()) } 
  $Is(c#0, Tclass.MoreTests.C())
     <==> $Is(c#0, Tclass.MoreTests.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type MoreTests.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.MoreTests.C(), $h) } 
    { $IsAlloc(c#0, Tclass.MoreTests.C?(), $h) } 
  $IsAlloc(c#0, Tclass.MoreTests.C(), $h)
     <==> $IsAlloc(c#0, Tclass.MoreTests.C?(), $h));

// Constructor function declaration
function #MoreTests.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreTests.List.Nil()) == ##MoreTests.List.Nil;
// Constructor literal
axiom #MoreTests.List.Nil() == Lit(#MoreTests.List.Nil());
}

const unique ##MoreTests.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreTests.List.Nil()) == ##MoreTests.List.Nil;
}

function MoreTests.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreTests.List.Nil_q(d) } 
  MoreTests.List.Nil_q(d) <==> DatatypeCtorId(d) == ##MoreTests.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreTests.List.Nil_q(d) } 
  MoreTests.List.Nil_q(d) ==> d == #MoreTests.List.Nil());

// Constructor $Is
axiom (forall MoreTests.List$T: Ty :: 
  { $Is(#MoreTests.List.Nil(), Tclass.MoreTests.List(MoreTests.List$T)) } 
  $Is(#MoreTests.List.Nil(), Tclass.MoreTests.List(MoreTests.List$T)));

// Constructor $IsAlloc
axiom (forall MoreTests.List$T: Ty, $h: Heap :: 
  { $IsAlloc(#MoreTests.List.Nil(), Tclass.MoreTests.List(MoreTests.List$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#MoreTests.List.Nil(), Tclass.MoreTests.List(MoreTests.List$T), $h));

// Constructor function declaration
function #MoreTests.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##MoreTests.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #MoreTests.List.Cons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#MoreTests.List.Cons(a#4#0#0, a#4#1#0)) == ##MoreTests.List.Cons);
}

function MoreTests.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreTests.List.Cons_q(d) } 
  MoreTests.List.Cons_q(d) <==> DatatypeCtorId(d) == ##MoreTests.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreTests.List.Cons_q(d) } 
  MoreTests.List.Cons_q(d)
     ==> (exists a#5#0#0: Box, a#5#1#0: DatatypeType :: 
      d == #MoreTests.List.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall MoreTests.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { $Is(#MoreTests.List.Cons(a#6#0#0, a#6#1#0), Tclass.MoreTests.List(MoreTests.List$T)) } 
  $Is(#MoreTests.List.Cons(a#6#0#0, a#6#1#0), Tclass.MoreTests.List(MoreTests.List$T))
     <==> $IsBox(a#6#0#0, MoreTests.List$T)
       && $Is(a#6#1#0, Tclass.MoreTests.List(MoreTests.List$T)));

// Constructor $IsAlloc
axiom (forall MoreTests.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#MoreTests.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.MoreTests.List(MoreTests.List$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#MoreTests.List.Cons(a#6#0#0, a#6#1#0), 
        Tclass.MoreTests.List(MoreTests.List$T), 
        $h)
       <==> $IsAllocBox(a#6#0#0, MoreTests.List$T, $h)
         && $IsAlloc(a#6#1#0, Tclass.MoreTests.List(MoreTests.List$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, MoreTests.List$T: Ty, $h: Heap :: 
  { $IsAllocBox(MoreTests.List._h17(d), MoreTests.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      MoreTests.List.Cons_q(d)
       && $IsAlloc(d, Tclass.MoreTests.List(MoreTests.List$T), $h)
     ==> $IsAllocBox(MoreTests.List._h17(d), MoreTests.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, MoreTests.List$T: Ty, $h: Heap :: 
  { $IsAlloc(MoreTests.List._h18(d), Tclass.MoreTests.List(MoreTests.List$T), $h) } 
  $IsGoodHeap($h)
       && 
      MoreTests.List.Cons_q(d)
       && $IsAlloc(d, Tclass.MoreTests.List(MoreTests.List$T), $h)
     ==> $IsAlloc(MoreTests.List._h18(d), Tclass.MoreTests.List(MoreTests.List$T), $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #MoreTests.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #MoreTests.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#MoreTests.List.Cons(a#7#0#0, a#7#1#0)));

function MoreTests.List._h17(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #MoreTests.List.Cons(a#8#0#0, a#8#1#0) } 
  MoreTests.List._h17(#MoreTests.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #MoreTests.List.Cons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0) < DtRank(#MoreTests.List.Cons(a#9#0#0, a#9#1#0)));

function MoreTests.List._h18(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #MoreTests.List.Cons(a#10#0#0, a#10#1#0) } 
  MoreTests.List._h18(#MoreTests.List.Cons(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #MoreTests.List.Cons(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0) < DtRank(#MoreTests.List.Cons(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#MoreTests.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MoreTests.List(d) } 
  $IsA#MoreTests.List(d) ==> MoreTests.List.Nil_q(d) || MoreTests.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall MoreTests.List$T: Ty, d: DatatypeType :: 
  { MoreTests.List.Cons_q(d), $Is(d, Tclass.MoreTests.List(MoreTests.List$T)) } 
    { MoreTests.List.Nil_q(d), $Is(d, Tclass.MoreTests.List(MoreTests.List$T)) } 
  $Is(d, Tclass.MoreTests.List(MoreTests.List$T))
     ==> MoreTests.List.Nil_q(d) || MoreTests.List.Cons_q(d));

// Datatype extensional equality declaration
function MoreTests.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MoreTests.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.List#Equal(a, b), MoreTests.List.Nil_q(a) } 
    { MoreTests.List#Equal(a, b), MoreTests.List.Nil_q(b) } 
  MoreTests.List.Nil_q(a) && MoreTests.List.Nil_q(b)
     ==> MoreTests.List#Equal(a, b));

// Datatype extensional equality definition: #MoreTests.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.List#Equal(a, b), MoreTests.List.Cons_q(a) } 
    { MoreTests.List#Equal(a, b), MoreTests.List.Cons_q(b) } 
  MoreTests.List.Cons_q(a) && MoreTests.List.Cons_q(b)
     ==> (MoreTests.List#Equal(a, b)
       <==> MoreTests.List._h17(a) == MoreTests.List._h17(b)
         && MoreTests.List#Equal(MoreTests.List._h18(a), MoreTests.List._h18(b))));

// Datatype extensionality axiom: MoreTests.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.List#Equal(a, b) } 
  MoreTests.List#Equal(a, b) <==> a == b);

const unique class.MoreTests.List: ClassName;

const unique class.VariationsOnPlurals.__default: ClassName;

// function declaration for VariationsOnPlurals._default.One_None
function VariationsOnPlurals.__default.One__None(a#0: Box) : bool;

function VariationsOnPlurals.__default.One__None#canCall(a#0: Box) : bool;

function Tclass.VariationsOnPlurals.X() : Ty;

// consequence axiom for VariationsOnPlurals.__default.One__None
axiom (forall a#0: Box :: 
  { VariationsOnPlurals.__default.One__None(a#0) } 
  VariationsOnPlurals.__default.One__None#canCall(a#0)
       || $IsBox(a#0, Tclass.VariationsOnPlurals.X())
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && VariationsOnPlurals.__default.One__None(a#0)
         ==> $IsAllocBox(a#0, Tclass.VariationsOnPlurals.X(), $olderHeap)));

function VariationsOnPlurals.__default.One__None#requires(Box) : bool;

// #requires axiom for VariationsOnPlurals.__default.One__None
axiom (forall a#0: Box :: 
  { VariationsOnPlurals.__default.One__None#requires(a#0) } 
  $IsBox(a#0, Tclass.VariationsOnPlurals.X())
     ==> VariationsOnPlurals.__default.One__None#requires(a#0) == true);

// definition axiom for VariationsOnPlurals.__default.One__None (revealed)
axiom {:id "id227"} (forall a#0: Box :: 
  { VariationsOnPlurals.__default.One__None(a#0) } 
  VariationsOnPlurals.__default.One__None#canCall(a#0)
       || $IsBox(a#0, Tclass.VariationsOnPlurals.X())
     ==> VariationsOnPlurals.__default.One__None(a#0) == Lit(true));

// definition axiom for VariationsOnPlurals.__default.One__None for all literals (revealed)
axiom {:id "id228"} (forall a#0: Box :: 
  {:weight 3} { VariationsOnPlurals.__default.One__None(Lit(a#0)) } 
  VariationsOnPlurals.__default.One__None#canCall(Lit(a#0))
       || $IsBox(a#0, Tclass.VariationsOnPlurals.X())
     ==> VariationsOnPlurals.__default.One__None(Lit(a#0)) == Lit(true));

// function declaration for VariationsOnPlurals._default.One_One
function VariationsOnPlurals.__default.One__One(a#0: Box, b#0: Box) : bool;

function VariationsOnPlurals.__default.One__One#canCall(a#0: Box, b#0: Box) : bool;

// consequence axiom for VariationsOnPlurals.__default.One__One
axiom (forall a#0: Box, b#0: Box :: 
  { VariationsOnPlurals.__default.One__One(a#0, b#0) } 
  VariationsOnPlurals.__default.One__One#canCall(a#0, b#0)
       || ($IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X()))
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && 
          VariationsOnPlurals.__default.One__One(a#0, b#0)
           && $IsAllocBox(b#0, Tclass.VariationsOnPlurals.X(), $olderHeap)
         ==> $IsAllocBox(a#0, Tclass.VariationsOnPlurals.X(), $olderHeap)));

function VariationsOnPlurals.__default.One__One#requires(Box, Box) : bool;

// #requires axiom for VariationsOnPlurals.__default.One__One
axiom (forall a#0: Box, b#0: Box :: 
  { VariationsOnPlurals.__default.One__One#requires(a#0, b#0) } 
  $IsBox(a#0, Tclass.VariationsOnPlurals.X())
       && $IsBox(b#0, Tclass.VariationsOnPlurals.X())
     ==> VariationsOnPlurals.__default.One__One#requires(a#0, b#0) == true);

// definition axiom for VariationsOnPlurals.__default.One__One (revealed)
axiom {:id "id229"} (forall a#0: Box, b#0: Box :: 
  { VariationsOnPlurals.__default.One__One(a#0, b#0) } 
  VariationsOnPlurals.__default.One__One#canCall(a#0, b#0)
       || ($IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X()))
     ==> VariationsOnPlurals.__default.One__One(a#0, b#0) == Lit(true));

// definition axiom for VariationsOnPlurals.__default.One__One for all literals (revealed)
axiom {:id "id230"} (forall a#0: Box, b#0: Box :: 
  {:weight 3} { VariationsOnPlurals.__default.One__One(Lit(a#0), Lit(b#0)) } 
  VariationsOnPlurals.__default.One__One#canCall(Lit(a#0), Lit(b#0))
       || ($IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X()))
     ==> VariationsOnPlurals.__default.One__One(Lit(a#0), Lit(b#0)) == Lit(true));

// function declaration for VariationsOnPlurals._default.One_Many
function VariationsOnPlurals.__default.One__Many(a#0: Box, b#0: Box, c#0: Box) : bool;

function VariationsOnPlurals.__default.One__Many#canCall(a#0: Box, b#0: Box, c#0: Box) : bool;

// consequence axiom for VariationsOnPlurals.__default.One__Many
axiom (forall a#0: Box, b#0: Box, c#0: Box :: 
  { VariationsOnPlurals.__default.One__Many(a#0, b#0, c#0) } 
  VariationsOnPlurals.__default.One__Many#canCall(a#0, b#0, c#0)
       || (
        $IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(c#0, Tclass.VariationsOnPlurals.X()))
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && 
          VariationsOnPlurals.__default.One__Many(a#0, b#0, c#0)
           && 
          $IsAllocBox(b#0, Tclass.VariationsOnPlurals.X(), $olderHeap)
           && $IsAllocBox(c#0, Tclass.VariationsOnPlurals.X(), $olderHeap)
         ==> $IsAllocBox(a#0, Tclass.VariationsOnPlurals.X(), $olderHeap)));

function VariationsOnPlurals.__default.One__Many#requires(Box, Box, Box) : bool;

// #requires axiom for VariationsOnPlurals.__default.One__Many
axiom (forall a#0: Box, b#0: Box, c#0: Box :: 
  { VariationsOnPlurals.__default.One__Many#requires(a#0, b#0, c#0) } 
  $IsBox(a#0, Tclass.VariationsOnPlurals.X())
       && $IsBox(b#0, Tclass.VariationsOnPlurals.X())
       && $IsBox(c#0, Tclass.VariationsOnPlurals.X())
     ==> VariationsOnPlurals.__default.One__Many#requires(a#0, b#0, c#0) == true);

// definition axiom for VariationsOnPlurals.__default.One__Many (revealed)
axiom {:id "id231"} (forall a#0: Box, b#0: Box, c#0: Box :: 
  { VariationsOnPlurals.__default.One__Many(a#0, b#0, c#0) } 
  VariationsOnPlurals.__default.One__Many#canCall(a#0, b#0, c#0)
       || (
        $IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(c#0, Tclass.VariationsOnPlurals.X()))
     ==> VariationsOnPlurals.__default.One__Many(a#0, b#0, c#0) == Lit(true));

// definition axiom for VariationsOnPlurals.__default.One__Many for all literals (revealed)
axiom {:id "id232"} (forall a#0: Box, b#0: Box, c#0: Box :: 
  {:weight 3} { VariationsOnPlurals.__default.One__Many(Lit(a#0), Lit(b#0), Lit(c#0)) } 
  VariationsOnPlurals.__default.One__Many#canCall(Lit(a#0), Lit(b#0), Lit(c#0))
       || (
        $IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(c#0, Tclass.VariationsOnPlurals.X()))
     ==> VariationsOnPlurals.__default.One__Many(Lit(a#0), Lit(b#0), Lit(c#0))
       == Lit(true));

// function declaration for VariationsOnPlurals._default.Many_None
function VariationsOnPlurals.__default.Many__None(a#0: Box, b#0: Box) : bool;

function VariationsOnPlurals.__default.Many__None#canCall(a#0: Box, b#0: Box) : bool;

// consequence axiom for VariationsOnPlurals.__default.Many__None
axiom (forall a#0: Box, b#0: Box :: 
  { VariationsOnPlurals.__default.Many__None(a#0, b#0) } 
  VariationsOnPlurals.__default.Many__None#canCall(a#0, b#0)
       || ($IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X()))
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && VariationsOnPlurals.__default.Many__None(a#0, b#0)
         ==> $IsAllocBox(a#0, Tclass.VariationsOnPlurals.X(), $olderHeap)
           && $IsAllocBox(b#0, Tclass.VariationsOnPlurals.X(), $olderHeap)));

function VariationsOnPlurals.__default.Many__None#requires(Box, Box) : bool;

// #requires axiom for VariationsOnPlurals.__default.Many__None
axiom (forall a#0: Box, b#0: Box :: 
  { VariationsOnPlurals.__default.Many__None#requires(a#0, b#0) } 
  $IsBox(a#0, Tclass.VariationsOnPlurals.X())
       && $IsBox(b#0, Tclass.VariationsOnPlurals.X())
     ==> VariationsOnPlurals.__default.Many__None#requires(a#0, b#0) == true);

// definition axiom for VariationsOnPlurals.__default.Many__None (revealed)
axiom {:id "id233"} (forall a#0: Box, b#0: Box :: 
  { VariationsOnPlurals.__default.Many__None(a#0, b#0) } 
  VariationsOnPlurals.__default.Many__None#canCall(a#0, b#0)
       || ($IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X()))
     ==> VariationsOnPlurals.__default.Many__None(a#0, b#0) == Lit(true));

// definition axiom for VariationsOnPlurals.__default.Many__None for all literals (revealed)
axiom {:id "id234"} (forall a#0: Box, b#0: Box :: 
  {:weight 3} { VariationsOnPlurals.__default.Many__None(Lit(a#0), Lit(b#0)) } 
  VariationsOnPlurals.__default.Many__None#canCall(Lit(a#0), Lit(b#0))
       || ($IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X()))
     ==> VariationsOnPlurals.__default.Many__None(Lit(a#0), Lit(b#0)) == Lit(true));

// function declaration for VariationsOnPlurals._default.Many_One
function VariationsOnPlurals.__default.Many__One(a#0: Box, b#0: Box, c#0: Box) : bool;

function VariationsOnPlurals.__default.Many__One#canCall(a#0: Box, b#0: Box, c#0: Box) : bool;

// consequence axiom for VariationsOnPlurals.__default.Many__One
axiom (forall a#0: Box, b#0: Box, c#0: Box :: 
  { VariationsOnPlurals.__default.Many__One(a#0, b#0, c#0) } 
  VariationsOnPlurals.__default.Many__One#canCall(a#0, b#0, c#0)
       || (
        $IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(c#0, Tclass.VariationsOnPlurals.X()))
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && 
          VariationsOnPlurals.__default.Many__One(a#0, b#0, c#0)
           && $IsAllocBox(c#0, Tclass.VariationsOnPlurals.X(), $olderHeap)
         ==> $IsAllocBox(a#0, Tclass.VariationsOnPlurals.X(), $olderHeap)
           && $IsAllocBox(b#0, Tclass.VariationsOnPlurals.X(), $olderHeap)));

function VariationsOnPlurals.__default.Many__One#requires(Box, Box, Box) : bool;

// #requires axiom for VariationsOnPlurals.__default.Many__One
axiom (forall a#0: Box, b#0: Box, c#0: Box :: 
  { VariationsOnPlurals.__default.Many__One#requires(a#0, b#0, c#0) } 
  $IsBox(a#0, Tclass.VariationsOnPlurals.X())
       && $IsBox(b#0, Tclass.VariationsOnPlurals.X())
       && $IsBox(c#0, Tclass.VariationsOnPlurals.X())
     ==> VariationsOnPlurals.__default.Many__One#requires(a#0, b#0, c#0) == true);

// definition axiom for VariationsOnPlurals.__default.Many__One (revealed)
axiom {:id "id235"} (forall a#0: Box, b#0: Box, c#0: Box :: 
  { VariationsOnPlurals.__default.Many__One(a#0, b#0, c#0) } 
  VariationsOnPlurals.__default.Many__One#canCall(a#0, b#0, c#0)
       || (
        $IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(c#0, Tclass.VariationsOnPlurals.X()))
     ==> VariationsOnPlurals.__default.Many__One(a#0, b#0, c#0) == Lit(true));

// definition axiom for VariationsOnPlurals.__default.Many__One for all literals (revealed)
axiom {:id "id236"} (forall a#0: Box, b#0: Box, c#0: Box :: 
  {:weight 3} { VariationsOnPlurals.__default.Many__One(Lit(a#0), Lit(b#0), Lit(c#0)) } 
  VariationsOnPlurals.__default.Many__One#canCall(Lit(a#0), Lit(b#0), Lit(c#0))
       || (
        $IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(c#0, Tclass.VariationsOnPlurals.X()))
     ==> VariationsOnPlurals.__default.Many__One(Lit(a#0), Lit(b#0), Lit(c#0))
       == Lit(true));

// function declaration for VariationsOnPlurals._default.Many_Many
function VariationsOnPlurals.__default.Many__Many(a#0: Box, b#0: Box, c#0: Box, d#0: Box) : bool;

function VariationsOnPlurals.__default.Many__Many#canCall(a#0: Box, b#0: Box, c#0: Box, d#0: Box) : bool;

// consequence axiom for VariationsOnPlurals.__default.Many__Many
axiom (forall a#0: Box, b#0: Box, c#0: Box, d#0: Box :: 
  { VariationsOnPlurals.__default.Many__Many(a#0, b#0, c#0, d#0) } 
  VariationsOnPlurals.__default.Many__Many#canCall(a#0, b#0, c#0, d#0)
       || (
        $IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(c#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(d#0, Tclass.VariationsOnPlurals.X()))
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && 
          VariationsOnPlurals.__default.Many__Many(a#0, b#0, c#0, d#0)
           && 
          $IsAllocBox(c#0, Tclass.VariationsOnPlurals.X(), $olderHeap)
           && $IsAllocBox(d#0, Tclass.VariationsOnPlurals.X(), $olderHeap)
         ==> $IsAllocBox(a#0, Tclass.VariationsOnPlurals.X(), $olderHeap)
           && $IsAllocBox(b#0, Tclass.VariationsOnPlurals.X(), $olderHeap)));

function VariationsOnPlurals.__default.Many__Many#requires(Box, Box, Box, Box) : bool;

// #requires axiom for VariationsOnPlurals.__default.Many__Many
axiom (forall a#0: Box, b#0: Box, c#0: Box, d#0: Box :: 
  { VariationsOnPlurals.__default.Many__Many#requires(a#0, b#0, c#0, d#0) } 
  $IsBox(a#0, Tclass.VariationsOnPlurals.X())
       && $IsBox(b#0, Tclass.VariationsOnPlurals.X())
       && $IsBox(c#0, Tclass.VariationsOnPlurals.X())
       && $IsBox(d#0, Tclass.VariationsOnPlurals.X())
     ==> VariationsOnPlurals.__default.Many__Many#requires(a#0, b#0, c#0, d#0) == true);

// definition axiom for VariationsOnPlurals.__default.Many__Many (revealed)
axiom {:id "id237"} (forall a#0: Box, b#0: Box, c#0: Box, d#0: Box :: 
  { VariationsOnPlurals.__default.Many__Many(a#0, b#0, c#0, d#0) } 
  VariationsOnPlurals.__default.Many__Many#canCall(a#0, b#0, c#0, d#0)
       || (
        $IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(c#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(d#0, Tclass.VariationsOnPlurals.X()))
     ==> VariationsOnPlurals.__default.Many__Many(a#0, b#0, c#0, d#0) == Lit(true));

// definition axiom for VariationsOnPlurals.__default.Many__Many for all literals (revealed)
axiom {:id "id238"} (forall a#0: Box, b#0: Box, c#0: Box, d#0: Box :: 
  {:weight 3} { VariationsOnPlurals.__default.Many__Many(Lit(a#0), Lit(b#0), Lit(c#0), Lit(d#0)) } 
  VariationsOnPlurals.__default.Many__Many#canCall(Lit(a#0), Lit(b#0), Lit(c#0), Lit(d#0))
       || (
        $IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(c#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(d#0, Tclass.VariationsOnPlurals.X()))
     ==> VariationsOnPlurals.__default.Many__Many(Lit(a#0), Lit(b#0), Lit(c#0), Lit(d#0))
       == Lit(true));

const unique class.VariationsOnPlurals.X: ClassName;

const unique class.VariationsOnPlurals.C?: ClassName;

function Tclass.VariationsOnPlurals.C?() : Ty
uses {
// Tclass.VariationsOnPlurals.C? Tag
axiom Tag(Tclass.VariationsOnPlurals.C?()) == Tagclass.VariationsOnPlurals.C?
   && TagFamily(Tclass.VariationsOnPlurals.C?()) == tytagFamily$C;
}

const unique Tagclass.VariationsOnPlurals.C?: TyTag;

// Box/unbox axiom for Tclass.VariationsOnPlurals.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.VariationsOnPlurals.C?()) } 
  $IsBox(bx, Tclass.VariationsOnPlurals.C?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.VariationsOnPlurals.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.VariationsOnPlurals.C?()) } 
  $Is($o, Tclass.VariationsOnPlurals.C?())
     <==> $o == null || dtype($o) == Tclass.VariationsOnPlurals.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.VariationsOnPlurals.C?(), $h) } 
  $IsAlloc($o, Tclass.VariationsOnPlurals.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for VariationsOnPlurals.C.One_OneWithThis
function VariationsOnPlurals.C.One__OneWithThis(this: ref, a#0: Box) : bool;

function VariationsOnPlurals.C.One__OneWithThis#canCall(this: ref, a#0: Box) : bool;

function Tclass.VariationsOnPlurals.C() : Ty
uses {
// Tclass.VariationsOnPlurals.C Tag
axiom Tag(Tclass.VariationsOnPlurals.C()) == Tagclass.VariationsOnPlurals.C
   && TagFamily(Tclass.VariationsOnPlurals.C()) == tytagFamily$C;
}

const unique Tagclass.VariationsOnPlurals.C: TyTag;

// Box/unbox axiom for Tclass.VariationsOnPlurals.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.VariationsOnPlurals.C()) } 
  $IsBox(bx, Tclass.VariationsOnPlurals.C())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.VariationsOnPlurals.C()));

// consequence axiom for VariationsOnPlurals.C.One__OneWithThis
axiom (forall this: ref, a#0: Box :: 
  { VariationsOnPlurals.C.One__OneWithThis(this, a#0) } 
  VariationsOnPlurals.C.One__OneWithThis#canCall(this, a#0)
       || (
        this != null
         && $Is(this, Tclass.VariationsOnPlurals.C())
         && $IsBox(a#0, Tclass.VariationsOnPlurals.X()))
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && 
          VariationsOnPlurals.C.One__OneWithThis(this, a#0)
           && $IsAlloc(this, Tclass.VariationsOnPlurals.C(), $olderHeap)
         ==> $IsAllocBox(a#0, Tclass.VariationsOnPlurals.X(), $olderHeap)));

function VariationsOnPlurals.C.One__OneWithThis#requires(ref, Box) : bool;

// #requires axiom for VariationsOnPlurals.C.One__OneWithThis
axiom (forall this: ref, a#0: Box :: 
  { VariationsOnPlurals.C.One__OneWithThis#requires(this, a#0) } 
  this != null
       && $Is(this, Tclass.VariationsOnPlurals.C())
       && $IsBox(a#0, Tclass.VariationsOnPlurals.X())
     ==> VariationsOnPlurals.C.One__OneWithThis#requires(this, a#0) == true);

// definition axiom for VariationsOnPlurals.C.One__OneWithThis (revealed)
axiom {:id "id239"} (forall this: ref, a#0: Box :: 
  { VariationsOnPlurals.C.One__OneWithThis(this, a#0) } 
  VariationsOnPlurals.C.One__OneWithThis#canCall(this, a#0)
       || (
        this != null
         && $Is(this, Tclass.VariationsOnPlurals.C())
         && $IsBox(a#0, Tclass.VariationsOnPlurals.X()))
     ==> VariationsOnPlurals.C.One__OneWithThis(this, a#0) == Lit(true));

// definition axiom for VariationsOnPlurals.C.One__OneWithThis for all literals (revealed)
axiom {:id "id240"} (forall this: ref, a#0: Box :: 
  {:weight 3} { VariationsOnPlurals.C.One__OneWithThis(Lit(this), Lit(a#0)) } 
  VariationsOnPlurals.C.One__OneWithThis#canCall(Lit(this), Lit(a#0))
       || (
        this != null
         && $Is(this, Tclass.VariationsOnPlurals.C())
         && $IsBox(a#0, Tclass.VariationsOnPlurals.X()))
     ==> VariationsOnPlurals.C.One__OneWithThis(Lit(this), Lit(a#0)) == Lit(true));

// function declaration for VariationsOnPlurals.C.One_ManyWithThis
function VariationsOnPlurals.C.One__ManyWithThis(this: ref, a#0: Box, b#0: Box) : bool;

function VariationsOnPlurals.C.One__ManyWithThis#canCall(this: ref, a#0: Box, b#0: Box) : bool;

// consequence axiom for VariationsOnPlurals.C.One__ManyWithThis
axiom (forall this: ref, a#0: Box, b#0: Box :: 
  { VariationsOnPlurals.C.One__ManyWithThis(this, a#0, b#0) } 
  VariationsOnPlurals.C.One__ManyWithThis#canCall(this, a#0, b#0)
       || (
        this != null
         && $Is(this, Tclass.VariationsOnPlurals.C())
         && $IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X()))
     ==> (forall $olderHeap: Heap :: 
      { $OlderTag($olderHeap) } 
      $IsGoodHeap($olderHeap)
           && $OlderTag($olderHeap)
           && 
          VariationsOnPlurals.C.One__ManyWithThis(this, a#0, b#0)
           && 
          $IsAlloc(this, Tclass.VariationsOnPlurals.C(), $olderHeap)
           && $IsAllocBox(b#0, Tclass.VariationsOnPlurals.X(), $olderHeap)
         ==> $IsAllocBox(a#0, Tclass.VariationsOnPlurals.X(), $olderHeap)));

function VariationsOnPlurals.C.One__ManyWithThis#requires(ref, Box, Box) : bool;

// #requires axiom for VariationsOnPlurals.C.One__ManyWithThis
axiom (forall this: ref, a#0: Box, b#0: Box :: 
  { VariationsOnPlurals.C.One__ManyWithThis#requires(this, a#0, b#0) } 
  this != null
       && $Is(this, Tclass.VariationsOnPlurals.C())
       && $IsBox(a#0, Tclass.VariationsOnPlurals.X())
       && $IsBox(b#0, Tclass.VariationsOnPlurals.X())
     ==> VariationsOnPlurals.C.One__ManyWithThis#requires(this, a#0, b#0) == true);

// definition axiom for VariationsOnPlurals.C.One__ManyWithThis (revealed)
axiom {:id "id241"} (forall this: ref, a#0: Box, b#0: Box :: 
  { VariationsOnPlurals.C.One__ManyWithThis(this, a#0, b#0) } 
  VariationsOnPlurals.C.One__ManyWithThis#canCall(this, a#0, b#0)
       || (
        this != null
         && $Is(this, Tclass.VariationsOnPlurals.C())
         && $IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X()))
     ==> VariationsOnPlurals.C.One__ManyWithThis(this, a#0, b#0) == Lit(true));

// definition axiom for VariationsOnPlurals.C.One__ManyWithThis for all literals (revealed)
axiom {:id "id242"} (forall this: ref, a#0: Box, b#0: Box :: 
  {:weight 3} { VariationsOnPlurals.C.One__ManyWithThis(Lit(this), Lit(a#0), Lit(b#0)) } 
  VariationsOnPlurals.C.One__ManyWithThis#canCall(Lit(this), Lit(a#0), Lit(b#0))
       || (
        this != null
         && $Is(this, Tclass.VariationsOnPlurals.C())
         && $IsBox(a#0, Tclass.VariationsOnPlurals.X())
         && $IsBox(b#0, Tclass.VariationsOnPlurals.X()))
     ==> VariationsOnPlurals.C.One__ManyWithThis(Lit(this), Lit(a#0), Lit(b#0))
       == Lit(true));

// $Is axiom for non-null type VariationsOnPlurals.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.VariationsOnPlurals.C()) } 
    { $Is(c#0, Tclass.VariationsOnPlurals.C?()) } 
  $Is(c#0, Tclass.VariationsOnPlurals.C())
     <==> $Is(c#0, Tclass.VariationsOnPlurals.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type VariationsOnPlurals.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.VariationsOnPlurals.C(), $h) } 
    { $IsAlloc(c#0, Tclass.VariationsOnPlurals.C?(), $h) } 
  $IsAlloc(c#0, Tclass.VariationsOnPlurals.C(), $h)
     <==> $IsAlloc(c#0, Tclass.VariationsOnPlurals.C?(), $h));

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

const unique tytagFamily$_#Func5: TyTagFamily;

const unique tytagFamily$_#PartialFunc5: TyTagFamily;

const unique tytagFamily$_#TotalFunc5: TyTagFamily;

const unique tytagFamily$Node: TyTagFamily;

const unique tytagFamily$Path: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$C: TyTagFamily;

const unique field$children: NameFamily;