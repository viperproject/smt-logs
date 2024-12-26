// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy

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

// Box/unbox axiom for bv3
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(3)) } 
  $IsBox(bx, TBitvector(3))
     ==> $Box($Unbox(bx): bv3) == bx && $Is($Unbox(bx): bv3, TBitvector(3)));

axiom (forall v: bv3 :: { $Is(v, TBitvector(3)) } $Is(v, TBitvector(3)));

axiom (forall v: bv3, heap: Heap :: 
  { $IsAlloc(v, TBitvector(3), heap) } 
  $IsAlloc(v, TBitvector(3), heap));

function {:bvbuiltin "bvand"} and_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvor"} or_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvxor"} xor_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvnot"} not_bv3(bv3) : bv3;

function {:bvbuiltin "bvadd"} add_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvsub"} sub_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvmul"} mul_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvudiv"} div_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvurem"} mod_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvult"} lt_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvule"} le_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvuge"} ge_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvugt"} gt_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvlshr"} RightShift_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "(_ int2bv 3)"} nat_to_bv3(int) : bv3;

function {:bvbuiltin "bv2int"} smt_nat_from_bv3(bv3) : int;

function nat_from_bv3(bv3) : int;

axiom (forall b: bv3 :: 
  { nat_from_bv3(b) } 
  0 <= nat_from_bv3(b)
     && nat_from_bv3(b) < 8
     && nat_from_bv3(b) == smt_nat_from_bv3(b));

// Box/unbox axiom for bv30
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(30)) } 
  $IsBox(bx, TBitvector(30))
     ==> $Box($Unbox(bx): bv30) == bx && $Is($Unbox(bx): bv30, TBitvector(30)));

axiom (forall v: bv30 :: { $Is(v, TBitvector(30)) } $Is(v, TBitvector(30)));

axiom (forall v: bv30, heap: Heap :: 
  { $IsAlloc(v, TBitvector(30), heap) } 
  $IsAlloc(v, TBitvector(30), heap));

function {:bvbuiltin "bvand"} and_bv30(bv30, bv30) : bv30;

function {:bvbuiltin "bvor"} or_bv30(bv30, bv30) : bv30;

function {:bvbuiltin "bvxor"} xor_bv30(bv30, bv30) : bv30;

function {:bvbuiltin "bvnot"} not_bv30(bv30) : bv30;

function {:bvbuiltin "bvadd"} add_bv30(bv30, bv30) : bv30;

function {:bvbuiltin "bvsub"} sub_bv30(bv30, bv30) : bv30;

function {:bvbuiltin "bvmul"} mul_bv30(bv30, bv30) : bv30;

function {:bvbuiltin "bvudiv"} div_bv30(bv30, bv30) : bv30;

function {:bvbuiltin "bvurem"} mod_bv30(bv30, bv30) : bv30;

function {:bvbuiltin "bvult"} lt_bv30(bv30, bv30) : bool;

function {:bvbuiltin "bvule"} le_bv30(bv30, bv30) : bool;

function {:bvbuiltin "bvuge"} ge_bv30(bv30, bv30) : bool;

function {:bvbuiltin "bvugt"} gt_bv30(bv30, bv30) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv30(bv30, bv30) : bv30;

function {:bvbuiltin "bvlshr"} RightShift_bv30(bv30, bv30) : bv30;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv30(bv30, bv30) : bv30;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv30(bv30, bv30) : bv30;

function {:bvbuiltin "(_ int2bv 30)"} nat_to_bv30(int) : bv30;

function {:bvbuiltin "bv2int"} smt_nat_from_bv30(bv30) : int;

function nat_from_bv30(bv30) : int;

axiom (forall b: bv30 :: 
  { nat_from_bv30(b) } 
  0 <= nat_from_bv30(b)
     && nat_from_bv30(b) < 1073741824
     && nat_from_bv30(b) == smt_nat_from_bv30(b));

// Box/unbox axiom for bv8
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(8)) } 
  $IsBox(bx, TBitvector(8))
     ==> $Box($Unbox(bx): bv8) == bx && $Is($Unbox(bx): bv8, TBitvector(8)));

axiom (forall v: bv8 :: { $Is(v, TBitvector(8)) } $Is(v, TBitvector(8)));

axiom (forall v: bv8, heap: Heap :: 
  { $IsAlloc(v, TBitvector(8), heap) } 
  $IsAlloc(v, TBitvector(8), heap));

function {:bvbuiltin "bvand"} and_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvor"} or_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvxor"} xor_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvnot"} not_bv8(bv8) : bv8;

function {:bvbuiltin "bvadd"} add_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvsub"} sub_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvmul"} mul_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvudiv"} div_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvurem"} mod_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvult"} lt_bv8(bv8, bv8) : bool;

function {:bvbuiltin "bvule"} le_bv8(bv8, bv8) : bool;

function {:bvbuiltin "bvuge"} ge_bv8(bv8, bv8) : bool;

function {:bvbuiltin "bvugt"} gt_bv8(bv8, bv8) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvlshr"} RightShift_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "(_ int2bv 8)"} nat_to_bv8(int) : bv8;

function {:bvbuiltin "bv2int"} smt_nat_from_bv8(bv8) : int;

function nat_from_bv8(bv8) : int;

axiom (forall b: bv8 :: 
  { nat_from_bv8(b) } 
  0 <= nat_from_bv8(b)
     && nat_from_bv8(b) < 256
     && nat_from_bv8(b) == smt_nat_from_bv8(b));

// Box/unbox axiom for bv7
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(7)) } 
  $IsBox(bx, TBitvector(7))
     ==> $Box($Unbox(bx): bv7) == bx && $Is($Unbox(bx): bv7, TBitvector(7)));

axiom (forall v: bv7 :: { $Is(v, TBitvector(7)) } $Is(v, TBitvector(7)));

axiom (forall v: bv7, heap: Heap :: 
  { $IsAlloc(v, TBitvector(7), heap) } 
  $IsAlloc(v, TBitvector(7), heap));

function {:bvbuiltin "bvand"} and_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvor"} or_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvxor"} xor_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvnot"} not_bv7(bv7) : bv7;

function {:bvbuiltin "bvadd"} add_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvsub"} sub_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvmul"} mul_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvudiv"} div_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvurem"} mod_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvult"} lt_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvule"} le_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvuge"} ge_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvugt"} gt_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvlshr"} RightShift_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "(_ int2bv 7)"} nat_to_bv7(int) : bv7;

function {:bvbuiltin "bv2int"} smt_nat_from_bv7(bv7) : int;

function nat_from_bv7(bv7) : int;

axiom (forall b: bv7 :: 
  { nat_from_bv7(b) } 
  0 <= nat_from_bv7(b)
     && nat_from_bv7(b) < 128
     && nat_from_bv7(b) == smt_nat_from_bv7(b));

// Box/unbox axiom for bv2009
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(2009)) } 
  $IsBox(bx, TBitvector(2009))
     ==> $Box($Unbox(bx): bv2009) == bx && $Is($Unbox(bx): bv2009, TBitvector(2009)));

axiom (forall v: bv2009 :: { $Is(v, TBitvector(2009)) } $Is(v, TBitvector(2009)));

axiom (forall v: bv2009, heap: Heap :: 
  { $IsAlloc(v, TBitvector(2009), heap) } 
  $IsAlloc(v, TBitvector(2009), heap));

function {:bvbuiltin "bvand"} and_bv2009(bv2009, bv2009) : bv2009;

function {:bvbuiltin "bvor"} or_bv2009(bv2009, bv2009) : bv2009;

function {:bvbuiltin "bvxor"} xor_bv2009(bv2009, bv2009) : bv2009;

function {:bvbuiltin "bvnot"} not_bv2009(bv2009) : bv2009;

function {:bvbuiltin "bvadd"} add_bv2009(bv2009, bv2009) : bv2009;

function {:bvbuiltin "bvsub"} sub_bv2009(bv2009, bv2009) : bv2009;

function {:bvbuiltin "bvmul"} mul_bv2009(bv2009, bv2009) : bv2009;

function {:bvbuiltin "bvudiv"} div_bv2009(bv2009, bv2009) : bv2009;

function {:bvbuiltin "bvurem"} mod_bv2009(bv2009, bv2009) : bv2009;

function {:bvbuiltin "bvult"} lt_bv2009(bv2009, bv2009) : bool;

function {:bvbuiltin "bvule"} le_bv2009(bv2009, bv2009) : bool;

function {:bvbuiltin "bvuge"} ge_bv2009(bv2009, bv2009) : bool;

function {:bvbuiltin "bvugt"} gt_bv2009(bv2009, bv2009) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv2009(bv2009, bv2009) : bv2009;

function {:bvbuiltin "bvlshr"} RightShift_bv2009(bv2009, bv2009) : bv2009;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv2009(bv2009, bv2009) : bv2009;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv2009(bv2009, bv2009) : bv2009;

function {:bvbuiltin "(_ int2bv 2009)"} nat_to_bv2009(int) : bv2009;

function {:bvbuiltin "bv2int"} smt_nat_from_bv2009(bv2009) : int;

function nat_from_bv2009(bv2009) : int;

axiom (forall b: bv2009 :: 
  { nat_from_bv2009(b) } 
  0 <= nat_from_bv2009(b)
     && nat_from_bv2009(b)
       < 58784291598041831640721059900297317581942666346941194264455308125479232583289360069460965699405121019824433389516158094000492490796188432969007685435732643092034554442399887360352654923898902974171610618912504957328187117386950842341026317332718773233103358237779148190179650358079135564562516081648810332848214481400042754868418296221651998157278605568219649390953792425227268163704976021381769156258409778685642966081035151287502869585844829824788935390157871063324138385197912084049961962094914858370754777898867719950514578646749211908564621201347904089822990746021295498658798312326238643788303040512
     && nat_from_bv2009(b) == smt_nat_from_bv2009(b));

// Box/unbox axiom for bv5
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(5)) } 
  $IsBox(bx, TBitvector(5))
     ==> $Box($Unbox(bx): bv5) == bx && $Is($Unbox(bx): bv5, TBitvector(5)));

axiom (forall v: bv5 :: { $Is(v, TBitvector(5)) } $Is(v, TBitvector(5)));

axiom (forall v: bv5, heap: Heap :: 
  { $IsAlloc(v, TBitvector(5), heap) } 
  $IsAlloc(v, TBitvector(5), heap));

function {:bvbuiltin "bvand"} and_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvor"} or_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvxor"} xor_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvnot"} not_bv5(bv5) : bv5;

function {:bvbuiltin "bvadd"} add_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvsub"} sub_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvmul"} mul_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvudiv"} div_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvurem"} mod_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvult"} lt_bv5(bv5, bv5) : bool;

function {:bvbuiltin "bvule"} le_bv5(bv5, bv5) : bool;

function {:bvbuiltin "bvuge"} ge_bv5(bv5, bv5) : bool;

function {:bvbuiltin "bvugt"} gt_bv5(bv5, bv5) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvlshr"} RightShift_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "(_ int2bv 5)"} nat_to_bv5(int) : bv5;

function {:bvbuiltin "bv2int"} smt_nat_from_bv5(bv5) : int;

function nat_from_bv5(bv5) : int;

axiom (forall b: bv5 :: 
  { nat_from_bv5(b) } 
  0 <= nat_from_bv5(b)
     && nat_from_bv5(b) < 32
     && nat_from_bv5(b) == smt_nat_from_bv5(b));

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

// Constructor function declaration
function #_System._tuple#4._#Make4(Box, Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#4._#Make4: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: Box, a#12#1#0: Box, a#12#2#0: Box, a#12#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#12#0#0, a#12#1#0, a#12#2#0, a#12#3#0) } 
  DatatypeCtorId(#_System._tuple#4._#Make4(a#12#0#0, a#12#1#0, a#12#2#0, a#12#3#0))
     == ##_System._tuple#4._#Make4);
}

function _System.Tuple4.___hMake4_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple4.___hMake4_q(d) } 
  _System.Tuple4.___hMake4_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#4._#Make4);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple4.___hMake4_q(d) } 
  _System.Tuple4.___hMake4_q(d)
     ==> (exists a#13#0#0: Box, a#13#1#0: Box, a#13#2#0: Box, a#13#3#0: Box :: 
      d == #_System._tuple#4._#Make4(a#13#0#0, a#13#1#0, a#13#2#0, a#13#3#0)));

function Tclass._System.Tuple4(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple4: TyTag;

// Tclass._System.Tuple4 Tag
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty :: 
  { Tclass._System.Tuple4(_System._tuple#4$T0, 
      _System._tuple#4$T1, 
      _System._tuple#4$T2, 
      _System._tuple#4$T3) } 
  Tag(Tclass._System.Tuple4(_System._tuple#4$T0, 
          _System._tuple#4$T1, 
          _System._tuple#4$T2, 
          _System._tuple#4$T3))
       == Tagclass._System.Tuple4
     && TagFamily(Tclass._System.Tuple4(_System._tuple#4$T0, 
          _System._tuple#4$T1, 
          _System._tuple#4$T2, 
          _System._tuple#4$T3))
       == tytagFamily$_tuple#4);

function Tclass._System.Tuple4_0(Ty) : Ty;

// Tclass._System.Tuple4 injectivity 0
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty :: 
  { Tclass._System.Tuple4(_System._tuple#4$T0, 
      _System._tuple#4$T1, 
      _System._tuple#4$T2, 
      _System._tuple#4$T3) } 
  Tclass._System.Tuple4_0(Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3))
     == _System._tuple#4$T0);

function Tclass._System.Tuple4_1(Ty) : Ty;

// Tclass._System.Tuple4 injectivity 1
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty :: 
  { Tclass._System.Tuple4(_System._tuple#4$T0, 
      _System._tuple#4$T1, 
      _System._tuple#4$T2, 
      _System._tuple#4$T3) } 
  Tclass._System.Tuple4_1(Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3))
     == _System._tuple#4$T1);

function Tclass._System.Tuple4_2(Ty) : Ty;

// Tclass._System.Tuple4 injectivity 2
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty :: 
  { Tclass._System.Tuple4(_System._tuple#4$T0, 
      _System._tuple#4$T1, 
      _System._tuple#4$T2, 
      _System._tuple#4$T3) } 
  Tclass._System.Tuple4_2(Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3))
     == _System._tuple#4$T2);

function Tclass._System.Tuple4_3(Ty) : Ty;

// Tclass._System.Tuple4 injectivity 3
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty :: 
  { Tclass._System.Tuple4(_System._tuple#4$T0, 
      _System._tuple#4$T1, 
      _System._tuple#4$T2, 
      _System._tuple#4$T3) } 
  Tclass._System.Tuple4_3(Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3))
     == _System._tuple#4$T3);

// Box/unbox axiom for Tclass._System.Tuple4
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3)) } 
  $IsBox(bx, 
      Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple4(_System._tuple#4$T0, 
          _System._tuple#4$T1, 
          _System._tuple#4$T2, 
          _System._tuple#4$T3)));

// Constructor $Is
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box, 
    a#14#3#0: Box :: 
  { $Is(#_System._tuple#4._#Make4(a#14#0#0, a#14#1#0, a#14#2#0, a#14#3#0), 
      Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3)) } 
  $Is(#_System._tuple#4._#Make4(a#14#0#0, a#14#1#0, a#14#2#0, a#14#3#0), 
      Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3))
     <==> $IsBox(a#14#0#0, _System._tuple#4$T0)
       && $IsBox(a#14#1#0, _System._tuple#4$T1)
       && $IsBox(a#14#2#0, _System._tuple#4$T2)
       && $IsBox(a#14#3#0, _System._tuple#4$T3));

// Constructor $IsAlloc
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box, 
    a#14#3#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#4._#Make4(a#14#0#0, a#14#1#0, a#14#2#0, a#14#3#0), 
      Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#4._#Make4(a#14#0#0, a#14#1#0, a#14#2#0, a#14#3#0), 
        Tclass._System.Tuple4(_System._tuple#4$T0, 
          _System._tuple#4$T1, 
          _System._tuple#4$T2, 
          _System._tuple#4$T3), 
        $h)
       <==> $IsAllocBox(a#14#0#0, _System._tuple#4$T0, $h)
         && $IsAllocBox(a#14#1#0, _System._tuple#4$T1, $h)
         && $IsAllocBox(a#14#2#0, _System._tuple#4$T2, $h)
         && $IsAllocBox(a#14#3#0, _System._tuple#4$T3, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4._0(d), _System._tuple#4$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4.___hMake4_q(d)
       && (exists _System._tuple#4$T1: Ty, _System._tuple#4$T2: Ty, _System._tuple#4$T3: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4(_System._tuple#4$T0, 
              _System._tuple#4$T1, 
              _System._tuple#4$T2, 
              _System._tuple#4$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4(_System._tuple#4$T0, 
            _System._tuple#4$T1, 
            _System._tuple#4$T2, 
            _System._tuple#4$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4._0(d), _System._tuple#4$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4._1(d), _System._tuple#4$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4.___hMake4_q(d)
       && (exists _System._tuple#4$T0: Ty, _System._tuple#4$T2: Ty, _System._tuple#4$T3: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4(_System._tuple#4$T0, 
              _System._tuple#4$T1, 
              _System._tuple#4$T2, 
              _System._tuple#4$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4(_System._tuple#4$T0, 
            _System._tuple#4$T1, 
            _System._tuple#4$T2, 
            _System._tuple#4$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4._1(d), _System._tuple#4$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4._2(d), _System._tuple#4$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4.___hMake4_q(d)
       && (exists _System._tuple#4$T0: Ty, _System._tuple#4$T1: Ty, _System._tuple#4$T3: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4(_System._tuple#4$T0, 
              _System._tuple#4$T1, 
              _System._tuple#4$T2, 
              _System._tuple#4$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4(_System._tuple#4$T0, 
            _System._tuple#4$T1, 
            _System._tuple#4$T2, 
            _System._tuple#4$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4._2(d), _System._tuple#4$T2, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4$T3: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4._3(d), _System._tuple#4$T3, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4.___hMake4_q(d)
       && (exists _System._tuple#4$T0: Ty, _System._tuple#4$T1: Ty, _System._tuple#4$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4(_System._tuple#4$T0, 
              _System._tuple#4$T1, 
              _System._tuple#4$T2, 
              _System._tuple#4$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4(_System._tuple#4$T0, 
            _System._tuple#4$T1, 
            _System._tuple#4$T2, 
            _System._tuple#4$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4._3(d), _System._tuple#4$T3, $h));

// Constructor literal
axiom (forall a#15#0#0: Box, a#15#1#0: Box, a#15#2#0: Box, a#15#3#0: Box :: 
  { #_System._tuple#4._#Make4(Lit(a#15#0#0), Lit(a#15#1#0), Lit(a#15#2#0), Lit(a#15#3#0)) } 
  #_System._tuple#4._#Make4(Lit(a#15#0#0), Lit(a#15#1#0), Lit(a#15#2#0), Lit(a#15#3#0))
     == Lit(#_System._tuple#4._#Make4(a#15#0#0, a#15#1#0, a#15#2#0, a#15#3#0)));

function _System.Tuple4._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#16#0#0: Box, a#16#1#0: Box, a#16#2#0: Box, a#16#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#16#0#0, a#16#1#0, a#16#2#0, a#16#3#0) } 
  _System.Tuple4._0(#_System._tuple#4._#Make4(a#16#0#0, a#16#1#0, a#16#2#0, a#16#3#0))
     == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: Box, a#17#1#0: Box, a#17#2#0: Box, a#17#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#17#0#0, a#17#1#0, a#17#2#0, a#17#3#0) } 
  BoxRank(a#17#0#0)
     < DtRank(#_System._tuple#4._#Make4(a#17#0#0, a#17#1#0, a#17#2#0, a#17#3#0)));

function _System.Tuple4._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#18#0#0: Box, a#18#1#0: Box, a#18#2#0: Box, a#18#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#18#0#0, a#18#1#0, a#18#2#0, a#18#3#0) } 
  _System.Tuple4._1(#_System._tuple#4._#Make4(a#18#0#0, a#18#1#0, a#18#2#0, a#18#3#0))
     == a#18#1#0);

// Inductive rank
axiom (forall a#19#0#0: Box, a#19#1#0: Box, a#19#2#0: Box, a#19#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#19#0#0, a#19#1#0, a#19#2#0, a#19#3#0) } 
  BoxRank(a#19#1#0)
     < DtRank(#_System._tuple#4._#Make4(a#19#0#0, a#19#1#0, a#19#2#0, a#19#3#0)));

function _System.Tuple4._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#20#0#0: Box, a#20#1#0: Box, a#20#2#0: Box, a#20#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#20#0#0, a#20#1#0, a#20#2#0, a#20#3#0) } 
  _System.Tuple4._2(#_System._tuple#4._#Make4(a#20#0#0, a#20#1#0, a#20#2#0, a#20#3#0))
     == a#20#2#0);

// Inductive rank
axiom (forall a#21#0#0: Box, a#21#1#0: Box, a#21#2#0: Box, a#21#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#21#0#0, a#21#1#0, a#21#2#0, a#21#3#0) } 
  BoxRank(a#21#2#0)
     < DtRank(#_System._tuple#4._#Make4(a#21#0#0, a#21#1#0, a#21#2#0, a#21#3#0)));

function _System.Tuple4._3(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#22#0#0: Box, a#22#1#0: Box, a#22#2#0: Box, a#22#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#22#0#0, a#22#1#0, a#22#2#0, a#22#3#0) } 
  _System.Tuple4._3(#_System._tuple#4._#Make4(a#22#0#0, a#22#1#0, a#22#2#0, a#22#3#0))
     == a#22#3#0);

// Inductive rank
axiom (forall a#23#0#0: Box, a#23#1#0: Box, a#23#2#0: Box, a#23#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#23#0#0, a#23#1#0, a#23#2#0, a#23#3#0) } 
  BoxRank(a#23#3#0)
     < DtRank(#_System._tuple#4._#Make4(a#23#0#0, a#23#1#0, a#23#2#0, a#23#3#0)));

// Depth-one case-split function
function $IsA#_System.Tuple4(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple4(d) } 
  $IsA#_System.Tuple4(d) ==> _System.Tuple4.___hMake4_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty, 
    d: DatatypeType :: 
  { _System.Tuple4.___hMake4_q(d), $Is(d, 
      Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3)) } 
  $Is(d, 
      Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3))
     ==> _System.Tuple4.___hMake4_q(d));

// Datatype extensional equality declaration
function _System.Tuple4#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#4._#Make4
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple4#Equal(a, b) } 
  _System.Tuple4#Equal(a, b)
     <==> _System.Tuple4._0(a) == _System.Tuple4._0(b)
       && _System.Tuple4._1(a) == _System.Tuple4._1(b)
       && _System.Tuple4._2(a) == _System.Tuple4._2(b)
       && _System.Tuple4._3(a) == _System.Tuple4._3(b));

// Datatype extensionality axiom: _System._tuple#4
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple4#Equal(a, b) } 
  _System.Tuple4#Equal(a, b) <==> a == b);

const unique class._System.Tuple4: ClassName;

// Constructor function declaration
function #_System._tuple#7._#Make7(Box, Box, Box, Box, Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#7._#Make7: DtCtorId
uses {
// Constructor identifier
axiom (forall a#24#0#0: Box, 
    a#24#1#0: Box, 
    a#24#2#0: Box, 
    a#24#3#0: Box, 
    a#24#4#0: Box, 
    a#24#5#0: Box, 
    a#24#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#24#0#0, a#24#1#0, a#24#2#0, a#24#3#0, a#24#4#0, a#24#5#0, a#24#6#0) } 
  DatatypeCtorId(#_System._tuple#7._#Make7(a#24#0#0, a#24#1#0, a#24#2#0, a#24#3#0, a#24#4#0, a#24#5#0, a#24#6#0))
     == ##_System._tuple#7._#Make7);
}

function _System.Tuple7.___hMake7_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple7.___hMake7_q(d) } 
  _System.Tuple7.___hMake7_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#7._#Make7);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple7.___hMake7_q(d) } 
  _System.Tuple7.___hMake7_q(d)
     ==> (exists a#25#0#0: Box, 
        a#25#1#0: Box, 
        a#25#2#0: Box, 
        a#25#3#0: Box, 
        a#25#4#0: Box, 
        a#25#5#0: Box, 
        a#25#6#0: Box :: 
      d
         == #_System._tuple#7._#Make7(a#25#0#0, a#25#1#0, a#25#2#0, a#25#3#0, a#25#4#0, a#25#5#0, a#25#6#0)));

function Tclass._System.Tuple7(Ty, Ty, Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple7: TyTag;

// Tclass._System.Tuple7 Tag
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tag(Tclass._System.Tuple7(_System._tuple#7$T0, 
          _System._tuple#7$T1, 
          _System._tuple#7$T2, 
          _System._tuple#7$T3, 
          _System._tuple#7$T4, 
          _System._tuple#7$T5, 
          _System._tuple#7$T6))
       == Tagclass._System.Tuple7
     && TagFamily(Tclass._System.Tuple7(_System._tuple#7$T0, 
          _System._tuple#7$T1, 
          _System._tuple#7$T2, 
          _System._tuple#7$T3, 
          _System._tuple#7$T4, 
          _System._tuple#7$T5, 
          _System._tuple#7$T6))
       == tytagFamily$_tuple#7);

function Tclass._System.Tuple7_0(Ty) : Ty;

// Tclass._System.Tuple7 injectivity 0
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tclass._System.Tuple7_0(Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     == _System._tuple#7$T0);

function Tclass._System.Tuple7_1(Ty) : Ty;

// Tclass._System.Tuple7 injectivity 1
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tclass._System.Tuple7_1(Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     == _System._tuple#7$T1);

function Tclass._System.Tuple7_2(Ty) : Ty;

// Tclass._System.Tuple7 injectivity 2
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tclass._System.Tuple7_2(Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     == _System._tuple#7$T2);

function Tclass._System.Tuple7_3(Ty) : Ty;

// Tclass._System.Tuple7 injectivity 3
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tclass._System.Tuple7_3(Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     == _System._tuple#7$T3);

function Tclass._System.Tuple7_4(Ty) : Ty;

// Tclass._System.Tuple7 injectivity 4
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tclass._System.Tuple7_4(Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     == _System._tuple#7$T4);

function Tclass._System.Tuple7_5(Ty) : Ty;

// Tclass._System.Tuple7 injectivity 5
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tclass._System.Tuple7_5(Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     == _System._tuple#7$T5);

function Tclass._System.Tuple7_6(Ty) : Ty;

// Tclass._System.Tuple7 injectivity 6
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty :: 
  { Tclass._System.Tuple7(_System._tuple#7$T0, 
      _System._tuple#7$T1, 
      _System._tuple#7$T2, 
      _System._tuple#7$T3, 
      _System._tuple#7$T4, 
      _System._tuple#7$T5, 
      _System._tuple#7$T6) } 
  Tclass._System.Tuple7_6(Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     == _System._tuple#7$T6);

// Box/unbox axiom for Tclass._System.Tuple7
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6)) } 
  $IsBox(bx, 
      Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple7(_System._tuple#7$T0, 
          _System._tuple#7$T1, 
          _System._tuple#7$T2, 
          _System._tuple#7$T3, 
          _System._tuple#7$T4, 
          _System._tuple#7$T5, 
          _System._tuple#7$T6)));

// Constructor $Is
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty, 
    a#26#0#0: Box, 
    a#26#1#0: Box, 
    a#26#2#0: Box, 
    a#26#3#0: Box, 
    a#26#4#0: Box, 
    a#26#5#0: Box, 
    a#26#6#0: Box :: 
  { $Is(#_System._tuple#7._#Make7(a#26#0#0, a#26#1#0, a#26#2#0, a#26#3#0, a#26#4#0, a#26#5#0, a#26#6#0), 
      Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6)) } 
  $Is(#_System._tuple#7._#Make7(a#26#0#0, a#26#1#0, a#26#2#0, a#26#3#0, a#26#4#0, a#26#5#0, a#26#6#0), 
      Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     <==> $IsBox(a#26#0#0, _System._tuple#7$T0)
       && $IsBox(a#26#1#0, _System._tuple#7$T1)
       && $IsBox(a#26#2#0, _System._tuple#7$T2)
       && $IsBox(a#26#3#0, _System._tuple#7$T3)
       && $IsBox(a#26#4#0, _System._tuple#7$T4)
       && $IsBox(a#26#5#0, _System._tuple#7$T5)
       && $IsBox(a#26#6#0, _System._tuple#7$T6));

// Constructor $IsAlloc
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty, 
    a#26#0#0: Box, 
    a#26#1#0: Box, 
    a#26#2#0: Box, 
    a#26#3#0: Box, 
    a#26#4#0: Box, 
    a#26#5#0: Box, 
    a#26#6#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#7._#Make7(a#26#0#0, a#26#1#0, a#26#2#0, a#26#3#0, a#26#4#0, a#26#5#0, a#26#6#0), 
      Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#7._#Make7(a#26#0#0, a#26#1#0, a#26#2#0, a#26#3#0, a#26#4#0, a#26#5#0, a#26#6#0), 
        Tclass._System.Tuple7(_System._tuple#7$T0, 
          _System._tuple#7$T1, 
          _System._tuple#7$T2, 
          _System._tuple#7$T3, 
          _System._tuple#7$T4, 
          _System._tuple#7$T5, 
          _System._tuple#7$T6), 
        $h)
       <==> $IsAllocBox(a#26#0#0, _System._tuple#7$T0, $h)
         && $IsAllocBox(a#26#1#0, _System._tuple#7$T1, $h)
         && $IsAllocBox(a#26#2#0, _System._tuple#7$T2, $h)
         && $IsAllocBox(a#26#3#0, _System._tuple#7$T3, $h)
         && $IsAllocBox(a#26#4#0, _System._tuple#7$T4, $h)
         && $IsAllocBox(a#26#5#0, _System._tuple#7$T5, $h)
         && $IsAllocBox(a#26#6#0, _System._tuple#7$T6, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#7$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple7._0(d), _System._tuple#7$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple7.___hMake7_q(d)
       && (exists _System._tuple#7$T1: Ty, 
          _System._tuple#7$T2: Ty, 
          _System._tuple#7$T3: Ty, 
          _System._tuple#7$T4: Ty, 
          _System._tuple#7$T5: Ty, 
          _System._tuple#7$T6: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple7(_System._tuple#7$T0, 
              _System._tuple#7$T1, 
              _System._tuple#7$T2, 
              _System._tuple#7$T3, 
              _System._tuple#7$T4, 
              _System._tuple#7$T5, 
              _System._tuple#7$T6), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple7(_System._tuple#7$T0, 
            _System._tuple#7$T1, 
            _System._tuple#7$T2, 
            _System._tuple#7$T3, 
            _System._tuple#7$T4, 
            _System._tuple#7$T5, 
            _System._tuple#7$T6), 
          $h))
     ==> $IsAllocBox(_System.Tuple7._0(d), _System._tuple#7$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#7$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple7._1(d), _System._tuple#7$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple7.___hMake7_q(d)
       && (exists _System._tuple#7$T0: Ty, 
          _System._tuple#7$T2: Ty, 
          _System._tuple#7$T3: Ty, 
          _System._tuple#7$T4: Ty, 
          _System._tuple#7$T5: Ty, 
          _System._tuple#7$T6: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple7(_System._tuple#7$T0, 
              _System._tuple#7$T1, 
              _System._tuple#7$T2, 
              _System._tuple#7$T3, 
              _System._tuple#7$T4, 
              _System._tuple#7$T5, 
              _System._tuple#7$T6), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple7(_System._tuple#7$T0, 
            _System._tuple#7$T1, 
            _System._tuple#7$T2, 
            _System._tuple#7$T3, 
            _System._tuple#7$T4, 
            _System._tuple#7$T5, 
            _System._tuple#7$T6), 
          $h))
     ==> $IsAllocBox(_System.Tuple7._1(d), _System._tuple#7$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#7$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple7._2(d), _System._tuple#7$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple7.___hMake7_q(d)
       && (exists _System._tuple#7$T0: Ty, 
          _System._tuple#7$T1: Ty, 
          _System._tuple#7$T3: Ty, 
          _System._tuple#7$T4: Ty, 
          _System._tuple#7$T5: Ty, 
          _System._tuple#7$T6: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple7(_System._tuple#7$T0, 
              _System._tuple#7$T1, 
              _System._tuple#7$T2, 
              _System._tuple#7$T3, 
              _System._tuple#7$T4, 
              _System._tuple#7$T5, 
              _System._tuple#7$T6), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple7(_System._tuple#7$T0, 
            _System._tuple#7$T1, 
            _System._tuple#7$T2, 
            _System._tuple#7$T3, 
            _System._tuple#7$T4, 
            _System._tuple#7$T5, 
            _System._tuple#7$T6), 
          $h))
     ==> $IsAllocBox(_System.Tuple7._2(d), _System._tuple#7$T2, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#7$T3: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple7._3(d), _System._tuple#7$T3, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple7.___hMake7_q(d)
       && (exists _System._tuple#7$T0: Ty, 
          _System._tuple#7$T1: Ty, 
          _System._tuple#7$T2: Ty, 
          _System._tuple#7$T4: Ty, 
          _System._tuple#7$T5: Ty, 
          _System._tuple#7$T6: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple7(_System._tuple#7$T0, 
              _System._tuple#7$T1, 
              _System._tuple#7$T2, 
              _System._tuple#7$T3, 
              _System._tuple#7$T4, 
              _System._tuple#7$T5, 
              _System._tuple#7$T6), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple7(_System._tuple#7$T0, 
            _System._tuple#7$T1, 
            _System._tuple#7$T2, 
            _System._tuple#7$T3, 
            _System._tuple#7$T4, 
            _System._tuple#7$T5, 
            _System._tuple#7$T6), 
          $h))
     ==> $IsAllocBox(_System.Tuple7._3(d), _System._tuple#7$T3, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#7$T4: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple7._4(d), _System._tuple#7$T4, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple7.___hMake7_q(d)
       && (exists _System._tuple#7$T0: Ty, 
          _System._tuple#7$T1: Ty, 
          _System._tuple#7$T2: Ty, 
          _System._tuple#7$T3: Ty, 
          _System._tuple#7$T5: Ty, 
          _System._tuple#7$T6: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple7(_System._tuple#7$T0, 
              _System._tuple#7$T1, 
              _System._tuple#7$T2, 
              _System._tuple#7$T3, 
              _System._tuple#7$T4, 
              _System._tuple#7$T5, 
              _System._tuple#7$T6), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple7(_System._tuple#7$T0, 
            _System._tuple#7$T1, 
            _System._tuple#7$T2, 
            _System._tuple#7$T3, 
            _System._tuple#7$T4, 
            _System._tuple#7$T5, 
            _System._tuple#7$T6), 
          $h))
     ==> $IsAllocBox(_System.Tuple7._4(d), _System._tuple#7$T4, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#7$T5: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple7._5(d), _System._tuple#7$T5, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple7.___hMake7_q(d)
       && (exists _System._tuple#7$T0: Ty, 
          _System._tuple#7$T1: Ty, 
          _System._tuple#7$T2: Ty, 
          _System._tuple#7$T3: Ty, 
          _System._tuple#7$T4: Ty, 
          _System._tuple#7$T6: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple7(_System._tuple#7$T0, 
              _System._tuple#7$T1, 
              _System._tuple#7$T2, 
              _System._tuple#7$T3, 
              _System._tuple#7$T4, 
              _System._tuple#7$T5, 
              _System._tuple#7$T6), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple7(_System._tuple#7$T0, 
            _System._tuple#7$T1, 
            _System._tuple#7$T2, 
            _System._tuple#7$T3, 
            _System._tuple#7$T4, 
            _System._tuple#7$T5, 
            _System._tuple#7$T6), 
          $h))
     ==> $IsAllocBox(_System.Tuple7._5(d), _System._tuple#7$T5, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#7$T6: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple7._6(d), _System._tuple#7$T6, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple7.___hMake7_q(d)
       && (exists _System._tuple#7$T0: Ty, 
          _System._tuple#7$T1: Ty, 
          _System._tuple#7$T2: Ty, 
          _System._tuple#7$T3: Ty, 
          _System._tuple#7$T4: Ty, 
          _System._tuple#7$T5: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple7(_System._tuple#7$T0, 
              _System._tuple#7$T1, 
              _System._tuple#7$T2, 
              _System._tuple#7$T3, 
              _System._tuple#7$T4, 
              _System._tuple#7$T5, 
              _System._tuple#7$T6), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple7(_System._tuple#7$T0, 
            _System._tuple#7$T1, 
            _System._tuple#7$T2, 
            _System._tuple#7$T3, 
            _System._tuple#7$T4, 
            _System._tuple#7$T5, 
            _System._tuple#7$T6), 
          $h))
     ==> $IsAllocBox(_System.Tuple7._6(d), _System._tuple#7$T6, $h));

// Constructor literal
axiom (forall a#27#0#0: Box, 
    a#27#1#0: Box, 
    a#27#2#0: Box, 
    a#27#3#0: Box, 
    a#27#4#0: Box, 
    a#27#5#0: Box, 
    a#27#6#0: Box :: 
  { #_System._tuple#7._#Make7(Lit(a#27#0#0), 
      Lit(a#27#1#0), 
      Lit(a#27#2#0), 
      Lit(a#27#3#0), 
      Lit(a#27#4#0), 
      Lit(a#27#5#0), 
      Lit(a#27#6#0)) } 
  #_System._tuple#7._#Make7(Lit(a#27#0#0), 
      Lit(a#27#1#0), 
      Lit(a#27#2#0), 
      Lit(a#27#3#0), 
      Lit(a#27#4#0), 
      Lit(a#27#5#0), 
      Lit(a#27#6#0))
     == Lit(#_System._tuple#7._#Make7(a#27#0#0, a#27#1#0, a#27#2#0, a#27#3#0, a#27#4#0, a#27#5#0, a#27#6#0)));

function _System.Tuple7._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#28#0#0: Box, 
    a#28#1#0: Box, 
    a#28#2#0: Box, 
    a#28#3#0: Box, 
    a#28#4#0: Box, 
    a#28#5#0: Box, 
    a#28#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#28#0#0, a#28#1#0, a#28#2#0, a#28#3#0, a#28#4#0, a#28#5#0, a#28#6#0) } 
  _System.Tuple7._0(#_System._tuple#7._#Make7(a#28#0#0, a#28#1#0, a#28#2#0, a#28#3#0, a#28#4#0, a#28#5#0, a#28#6#0))
     == a#28#0#0);

// Inductive rank
axiom (forall a#29#0#0: Box, 
    a#29#1#0: Box, 
    a#29#2#0: Box, 
    a#29#3#0: Box, 
    a#29#4#0: Box, 
    a#29#5#0: Box, 
    a#29#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#29#0#0, a#29#1#0, a#29#2#0, a#29#3#0, a#29#4#0, a#29#5#0, a#29#6#0) } 
  BoxRank(a#29#0#0)
     < DtRank(#_System._tuple#7._#Make7(a#29#0#0, a#29#1#0, a#29#2#0, a#29#3#0, a#29#4#0, a#29#5#0, a#29#6#0)));

function _System.Tuple7._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#30#0#0: Box, 
    a#30#1#0: Box, 
    a#30#2#0: Box, 
    a#30#3#0: Box, 
    a#30#4#0: Box, 
    a#30#5#0: Box, 
    a#30#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#30#0#0, a#30#1#0, a#30#2#0, a#30#3#0, a#30#4#0, a#30#5#0, a#30#6#0) } 
  _System.Tuple7._1(#_System._tuple#7._#Make7(a#30#0#0, a#30#1#0, a#30#2#0, a#30#3#0, a#30#4#0, a#30#5#0, a#30#6#0))
     == a#30#1#0);

// Inductive rank
axiom (forall a#31#0#0: Box, 
    a#31#1#0: Box, 
    a#31#2#0: Box, 
    a#31#3#0: Box, 
    a#31#4#0: Box, 
    a#31#5#0: Box, 
    a#31#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#31#0#0, a#31#1#0, a#31#2#0, a#31#3#0, a#31#4#0, a#31#5#0, a#31#6#0) } 
  BoxRank(a#31#1#0)
     < DtRank(#_System._tuple#7._#Make7(a#31#0#0, a#31#1#0, a#31#2#0, a#31#3#0, a#31#4#0, a#31#5#0, a#31#6#0)));

function _System.Tuple7._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#32#0#0: Box, 
    a#32#1#0: Box, 
    a#32#2#0: Box, 
    a#32#3#0: Box, 
    a#32#4#0: Box, 
    a#32#5#0: Box, 
    a#32#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#32#0#0, a#32#1#0, a#32#2#0, a#32#3#0, a#32#4#0, a#32#5#0, a#32#6#0) } 
  _System.Tuple7._2(#_System._tuple#7._#Make7(a#32#0#0, a#32#1#0, a#32#2#0, a#32#3#0, a#32#4#0, a#32#5#0, a#32#6#0))
     == a#32#2#0);

// Inductive rank
axiom (forall a#33#0#0: Box, 
    a#33#1#0: Box, 
    a#33#2#0: Box, 
    a#33#3#0: Box, 
    a#33#4#0: Box, 
    a#33#5#0: Box, 
    a#33#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#33#0#0, a#33#1#0, a#33#2#0, a#33#3#0, a#33#4#0, a#33#5#0, a#33#6#0) } 
  BoxRank(a#33#2#0)
     < DtRank(#_System._tuple#7._#Make7(a#33#0#0, a#33#1#0, a#33#2#0, a#33#3#0, a#33#4#0, a#33#5#0, a#33#6#0)));

function _System.Tuple7._3(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#34#0#0: Box, 
    a#34#1#0: Box, 
    a#34#2#0: Box, 
    a#34#3#0: Box, 
    a#34#4#0: Box, 
    a#34#5#0: Box, 
    a#34#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#34#0#0, a#34#1#0, a#34#2#0, a#34#3#0, a#34#4#0, a#34#5#0, a#34#6#0) } 
  _System.Tuple7._3(#_System._tuple#7._#Make7(a#34#0#0, a#34#1#0, a#34#2#0, a#34#3#0, a#34#4#0, a#34#5#0, a#34#6#0))
     == a#34#3#0);

// Inductive rank
axiom (forall a#35#0#0: Box, 
    a#35#1#0: Box, 
    a#35#2#0: Box, 
    a#35#3#0: Box, 
    a#35#4#0: Box, 
    a#35#5#0: Box, 
    a#35#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#35#0#0, a#35#1#0, a#35#2#0, a#35#3#0, a#35#4#0, a#35#5#0, a#35#6#0) } 
  BoxRank(a#35#3#0)
     < DtRank(#_System._tuple#7._#Make7(a#35#0#0, a#35#1#0, a#35#2#0, a#35#3#0, a#35#4#0, a#35#5#0, a#35#6#0)));

function _System.Tuple7._4(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#36#0#0: Box, 
    a#36#1#0: Box, 
    a#36#2#0: Box, 
    a#36#3#0: Box, 
    a#36#4#0: Box, 
    a#36#5#0: Box, 
    a#36#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#36#0#0, a#36#1#0, a#36#2#0, a#36#3#0, a#36#4#0, a#36#5#0, a#36#6#0) } 
  _System.Tuple7._4(#_System._tuple#7._#Make7(a#36#0#0, a#36#1#0, a#36#2#0, a#36#3#0, a#36#4#0, a#36#5#0, a#36#6#0))
     == a#36#4#0);

// Inductive rank
axiom (forall a#37#0#0: Box, 
    a#37#1#0: Box, 
    a#37#2#0: Box, 
    a#37#3#0: Box, 
    a#37#4#0: Box, 
    a#37#5#0: Box, 
    a#37#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#37#0#0, a#37#1#0, a#37#2#0, a#37#3#0, a#37#4#0, a#37#5#0, a#37#6#0) } 
  BoxRank(a#37#4#0)
     < DtRank(#_System._tuple#7._#Make7(a#37#0#0, a#37#1#0, a#37#2#0, a#37#3#0, a#37#4#0, a#37#5#0, a#37#6#0)));

function _System.Tuple7._5(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#38#0#0: Box, 
    a#38#1#0: Box, 
    a#38#2#0: Box, 
    a#38#3#0: Box, 
    a#38#4#0: Box, 
    a#38#5#0: Box, 
    a#38#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#38#0#0, a#38#1#0, a#38#2#0, a#38#3#0, a#38#4#0, a#38#5#0, a#38#6#0) } 
  _System.Tuple7._5(#_System._tuple#7._#Make7(a#38#0#0, a#38#1#0, a#38#2#0, a#38#3#0, a#38#4#0, a#38#5#0, a#38#6#0))
     == a#38#5#0);

// Inductive rank
axiom (forall a#39#0#0: Box, 
    a#39#1#0: Box, 
    a#39#2#0: Box, 
    a#39#3#0: Box, 
    a#39#4#0: Box, 
    a#39#5#0: Box, 
    a#39#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#39#0#0, a#39#1#0, a#39#2#0, a#39#3#0, a#39#4#0, a#39#5#0, a#39#6#0) } 
  BoxRank(a#39#5#0)
     < DtRank(#_System._tuple#7._#Make7(a#39#0#0, a#39#1#0, a#39#2#0, a#39#3#0, a#39#4#0, a#39#5#0, a#39#6#0)));

function _System.Tuple7._6(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#40#0#0: Box, 
    a#40#1#0: Box, 
    a#40#2#0: Box, 
    a#40#3#0: Box, 
    a#40#4#0: Box, 
    a#40#5#0: Box, 
    a#40#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#40#0#0, a#40#1#0, a#40#2#0, a#40#3#0, a#40#4#0, a#40#5#0, a#40#6#0) } 
  _System.Tuple7._6(#_System._tuple#7._#Make7(a#40#0#0, a#40#1#0, a#40#2#0, a#40#3#0, a#40#4#0, a#40#5#0, a#40#6#0))
     == a#40#6#0);

// Inductive rank
axiom (forall a#41#0#0: Box, 
    a#41#1#0: Box, 
    a#41#2#0: Box, 
    a#41#3#0: Box, 
    a#41#4#0: Box, 
    a#41#5#0: Box, 
    a#41#6#0: Box :: 
  { #_System._tuple#7._#Make7(a#41#0#0, a#41#1#0, a#41#2#0, a#41#3#0, a#41#4#0, a#41#5#0, a#41#6#0) } 
  BoxRank(a#41#6#0)
     < DtRank(#_System._tuple#7._#Make7(a#41#0#0, a#41#1#0, a#41#2#0, a#41#3#0, a#41#4#0, a#41#5#0, a#41#6#0)));

// Depth-one case-split function
function $IsA#_System.Tuple7(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple7(d) } 
  $IsA#_System.Tuple7(d) ==> _System.Tuple7.___hMake7_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#7$T0: Ty, 
    _System._tuple#7$T1: Ty, 
    _System._tuple#7$T2: Ty, 
    _System._tuple#7$T3: Ty, 
    _System._tuple#7$T4: Ty, 
    _System._tuple#7$T5: Ty, 
    _System._tuple#7$T6: Ty, 
    d: DatatypeType :: 
  { _System.Tuple7.___hMake7_q(d), $Is(d, 
      Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6)) } 
  $Is(d, 
      Tclass._System.Tuple7(_System._tuple#7$T0, 
        _System._tuple#7$T1, 
        _System._tuple#7$T2, 
        _System._tuple#7$T3, 
        _System._tuple#7$T4, 
        _System._tuple#7$T5, 
        _System._tuple#7$T6))
     ==> _System.Tuple7.___hMake7_q(d));

// Datatype extensional equality declaration
function _System.Tuple7#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#7._#Make7
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple7#Equal(a, b) } 
  _System.Tuple7#Equal(a, b)
     <==> _System.Tuple7._0(a) == _System.Tuple7._0(b)
       && _System.Tuple7._1(a) == _System.Tuple7._1(b)
       && _System.Tuple7._2(a) == _System.Tuple7._2(b)
       && _System.Tuple7._3(a) == _System.Tuple7._3(b)
       && _System.Tuple7._4(a) == _System.Tuple7._4(b)
       && _System.Tuple7._5(a) == _System.Tuple7._5(b)
       && _System.Tuple7._6(a) == _System.Tuple7._6(b));

// Datatype extensionality axiom: _System._tuple#7
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple7#Equal(a, b) } 
  _System.Tuple7#Equal(a, b) <==> a == b);

const unique class._System.Tuple7: ClassName;

const unique class._System.array2?: ClassName;

function Tclass._System.array2?(Ty) : Ty;

const unique Tagclass._System.array2?: TyTag;

// Tclass._System.array2? Tag
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2?(_System.array2$arg) } 
  Tag(Tclass._System.array2?(_System.array2$arg)) == Tagclass._System.array2?
     && TagFamily(Tclass._System.array2?(_System.array2$arg)) == tytagFamily$array2);

function Tclass._System.array2?_0(Ty) : Ty;

// Tclass._System.array2? injectivity 0
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2?(_System.array2$arg) } 
  Tclass._System.array2?_0(Tclass._System.array2?(_System.array2$arg))
     == _System.array2$arg);

// Box/unbox axiom for Tclass._System.array2?
axiom (forall _System.array2$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array2?(_System.array2$arg)) } 
  $IsBox(bx, Tclass._System.array2?(_System.array2$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array2?(_System.array2$arg)));

axiom (forall o: ref :: { _System.array2.Length0(o) } 0 <= _System.array2.Length0(o));

axiom (forall o: ref :: { _System.array2.Length1(o) } 0 <= _System.array2.Length1(o));

// array2.: Type axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int :: 
  { read($h, $o, MultiIndexField(IndexField($i0), $i1)), Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && 
      0 <= $i0
       && $i0 < _System.array2.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array2.Length1($o)
     ==> $IsBox(read($h, $o, MultiIndexField(IndexField($i0), $i1)), _System.array2$arg));

// array2.: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int :: 
  { read($h, $o, MultiIndexField(IndexField($i0), $i1)), Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && 
      0 <= $i0
       && $i0 < _System.array2.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array2.Length1($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, MultiIndexField(IndexField($i0), $i1)), _System.array2$arg, $h));

// $Is axiom for array type array2
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array2?(_System.array2$arg)) } 
  $Is($o, Tclass._System.array2?(_System.array2$arg))
     <==> $o == null || dtype($o) == Tclass._System.array2?(_System.array2$arg));

// $IsAlloc axiom for array type array2
axiom (forall _System.array2$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array2?(_System.array2$arg), $h) } 
  $IsAlloc($o, Tclass._System.array2?(_System.array2$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _System.array2.Length0(ref) : int;

// array2.Length0: Type axiom
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { _System.array2.Length0($o), Tclass._System.array2?(_System.array2$arg) } 
  $o != null && dtype($o) == Tclass._System.array2?(_System.array2$arg)
     ==> $Is(_System.array2.Length0($o), TInt));

// array2.Length0: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array2.Length0($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array2.Length0($o), TInt, $h));

function _System.array2.Length1(ref) : int;

// array2.Length1: Type axiom
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { _System.array2.Length1($o), Tclass._System.array2?(_System.array2$arg) } 
  $o != null && dtype($o) == Tclass._System.array2?(_System.array2$arg)
     ==> $Is(_System.array2.Length1($o), TInt));

// array2.Length1: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array2.Length1($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array2.Length1($o), TInt, $h));

function Tclass._System.array2(Ty) : Ty;

const unique Tagclass._System.array2: TyTag;

// Tclass._System.array2 Tag
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2(_System.array2$arg) } 
  Tag(Tclass._System.array2(_System.array2$arg)) == Tagclass._System.array2
     && TagFamily(Tclass._System.array2(_System.array2$arg)) == tytagFamily$array2);

function Tclass._System.array2_0(Ty) : Ty;

// Tclass._System.array2 injectivity 0
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2(_System.array2$arg) } 
  Tclass._System.array2_0(Tclass._System.array2(_System.array2$arg))
     == _System.array2$arg);

// Box/unbox axiom for Tclass._System.array2
axiom (forall _System.array2$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array2(_System.array2$arg)) } 
  $IsBox(bx, Tclass._System.array2(_System.array2$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array2(_System.array2$arg)));

// $Is axiom for non-null type _System.array2
axiom (forall _System.array2$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array2(_System.array2$arg)) } 
    { $Is(c#0, Tclass._System.array2?(_System.array2$arg)) } 
  $Is(c#0, Tclass._System.array2(_System.array2$arg))
     <==> $Is(c#0, Tclass._System.array2?(_System.array2$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array2
axiom (forall _System.array2$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array2(_System.array2$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array2?(_System.array2$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array2(_System.array2$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array2?(_System.array2$arg), $h));

const unique class._module.__default: ClassName;

// function declaration for _module._default.Same
function _module.__default.Same(_module._default.Same$A: Ty, a0#0: Box, a1#0: Box) : bool
uses {
// definition axiom for _module.__default.Same (revealed)
axiom {:id "id196"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Same$A: Ty, a0#0: Box, a1#0: Box :: 
    { _module.__default.Same(_module._default.Same$A, a0#0, a1#0) } 
    _module.__default.Same#canCall(_module._default.Same$A, a0#0, a1#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a0#0, _module._default.Same$A)
           && $IsBox(a1#0, _module._default.Same$A))
       ==> _module.__default.Same(_module._default.Same$A, a0#0, a1#0) == (a0#0 == a1#0));
// definition axiom for _module.__default.Same for all literals (revealed)
axiom {:id "id197"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Same$A: Ty, a0#0: Box, a1#0: Box :: 
    {:weight 3} { _module.__default.Same(_module._default.Same$A, Lit(a0#0), Lit(a1#0)) } 
    _module.__default.Same#canCall(_module._default.Same$A, Lit(a0#0), Lit(a1#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a0#0, _module._default.Same$A)
           && $IsBox(a1#0, _module._default.Same$A))
       ==> _module.__default.Same(_module._default.Same$A, Lit(a0#0), Lit(a1#0))
         == 
        (Lit(a0#0)
         == Lit(a1#0)));
}

function _module.__default.Same#canCall(_module._default.Same$A: Ty, a0#0: Box, a1#0: Box) : bool;

function _module.__default.Same#requires(Ty, Box, Box) : bool;

// #requires axiom for _module.__default.Same
axiom (forall _module._default.Same$A: Ty, a0#0: Box, a1#0: Box :: 
  { _module.__default.Same#requires(_module._default.Same$A, a0#0, a1#0) } 
  $IsBox(a0#0, _module._default.Same$A) && $IsBox(a1#0, _module._default.Same$A)
     ==> _module.__default.Same#requires(_module._default.Same$A, a0#0, a1#0) == true);

procedure {:verboseName "Same (well-formedness)"} CheckWellformed$$_module.__default.Same(_module._default.Same$A: Ty, 
    a0#0: Box where $IsBox(a0#0, _module._default.Same$A), 
    a1#0: Box where $IsBox(a1#0, _module._default.Same$A));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



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



function Tclass._module.WClass(Ty) : Ty;

const unique Tagclass._module.WClass: TyTag;

// Tclass._module.WClass Tag
axiom (forall _module.WClass$W: Ty :: 
  { Tclass._module.WClass(_module.WClass$W) } 
  Tag(Tclass._module.WClass(_module.WClass$W)) == Tagclass._module.WClass
     && TagFamily(Tclass._module.WClass(_module.WClass$W)) == tytagFamily$WClass);

function Tclass._module.WClass_0(Ty) : Ty;

// Tclass._module.WClass injectivity 0
axiom (forall _module.WClass$W: Ty :: 
  { Tclass._module.WClass(_module.WClass$W) } 
  Tclass._module.WClass_0(Tclass._module.WClass(_module.WClass$W))
     == _module.WClass$W);

// Box/unbox axiom for Tclass._module.WClass
axiom (forall _module.WClass$W: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.WClass(_module.WClass$W)) } 
  $IsBox(bx, Tclass._module.WClass(_module.WClass$W))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.WClass(_module.WClass$W)));

function _module.WClass.strm(_module.WClass$W: Ty, this: ref) : DatatypeType
uses {
// WClass.strm: Type axiom
axiom 1 < $FunctionContextHeight
   ==> (forall _module.WClass$W: Ty, $o: ref :: 
    { _module.WClass.strm(_module.WClass$W, $o) } 
    $o != null && dtype($o) == Tclass._module.WClass?(_module.WClass$W)
       ==> $Is(_module.WClass.strm(_module.WClass$W, $o), 
        Tclass._module.Stream(_module.WClass$W)));
// WClass.strm: Allocation axiom
axiom 1 < $FunctionContextHeight
   ==> (forall _module.WClass$W: Ty, $h: Heap, $o: ref :: 
    { _module.WClass.strm(_module.WClass$W, $o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass._module.WClass?(_module.WClass$W)
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(_module.WClass.strm(_module.WClass$W, $o), 
        Tclass._module.Stream(_module.WClass$W), 
        $h));
}

function Tclass._module.Class() : Ty
uses {
// Tclass._module.Class Tag
axiom Tag(Tclass._module.Class()) == Tagclass._module.Class
   && TagFamily(Tclass._module.Class()) == tytagFamily$Class;
}

const unique Tagclass._module.Class: TyTag;

// Box/unbox axiom for Tclass._module.Class
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Class()) } 
  $IsBox(bx, Tclass._module.Class())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Class()));

function Tclass._module.SomeObject?() : Ty
uses {
// Tclass._module.SomeObject? Tag
axiom Tag(Tclass._module.SomeObject?()) == Tagclass._module.SomeObject?
   && TagFamily(Tclass._module.SomeObject?()) == tytagFamily$SomeObject;
}

const unique Tagclass._module.SomeObject?: TyTag;

// Box/unbox axiom for Tclass._module.SomeObject?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SomeObject?()) } 
  $IsBox(bx, Tclass._module.SomeObject?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.SomeObject?()));

function Tclass._module.Cell(Ty) : Ty;

const unique Tagclass._module.Cell: TyTag;

// Tclass._module.Cell Tag
axiom (forall _module.Cell$T: Ty :: 
  { Tclass._module.Cell(_module.Cell$T) } 
  Tag(Tclass._module.Cell(_module.Cell$T)) == Tagclass._module.Cell
     && TagFamily(Tclass._module.Cell(_module.Cell$T)) == tytagFamily$Cell);

function Tclass._module.Cell_0(Ty) : Ty;

// Tclass._module.Cell injectivity 0
axiom (forall _module.Cell$T: Ty :: 
  { Tclass._module.Cell(_module.Cell$T) } 
  Tclass._module.Cell_0(Tclass._module.Cell(_module.Cell$T)) == _module.Cell$T);

// Box/unbox axiom for Tclass._module.Cell
axiom (forall _module.Cell$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Cell(_module.Cell$T)) } 
  $IsBox(bx, Tclass._module.Cell(_module.Cell$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Cell(_module.Cell$T)));

function Tclass._module.Class?() : Ty
uses {
// Tclass._module.Class? Tag
axiom Tag(Tclass._module.Class?()) == Tagclass._module.Class?
   && TagFamily(Tclass._module.Class?()) == tytagFamily$Class;
}

const unique Tagclass._module.Class?: TyTag;

// Box/unbox axiom for Tclass._module.Class?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Class?()) } 
  $IsBox(bx, Tclass._module.Class?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Class?()));

function Tclass._module.WClass?(Ty) : Ty;

const unique Tagclass._module.WClass?: TyTag;

// Tclass._module.WClass? Tag
axiom (forall _module.WClass$W: Ty :: 
  { Tclass._module.WClass?(_module.WClass$W) } 
  Tag(Tclass._module.WClass?(_module.WClass$W)) == Tagclass._module.WClass?
     && TagFamily(Tclass._module.WClass?(_module.WClass$W)) == tytagFamily$WClass);

function Tclass._module.WClass?_0(Ty) : Ty;

// Tclass._module.WClass? injectivity 0
axiom (forall _module.WClass$W: Ty :: 
  { Tclass._module.WClass?(_module.WClass$W) } 
  Tclass._module.WClass?_0(Tclass._module.WClass?(_module.WClass$W))
     == _module.WClass$W);

// Box/unbox axiom for Tclass._module.WClass?
axiom (forall _module.WClass$W: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.WClass?(_module.WClass$W)) } 
  $IsBox(bx, Tclass._module.WClass?(_module.WClass$W))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.WClass?(_module.WClass$W)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#w#0: bool;
  var w#0: ref
     where defass#w#0
       ==> $Is(w#0, Tclass._module.WClass(TBitvector(8)))
         && $IsAlloc(w#0, Tclass._module.WClass(TBitvector(8)), $Heap);
  var $nw: ref;
  var w##0: bv8;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.Class()) && $IsAlloc(c#0, Tclass._module.Class(), $Heap);
  var x0#0: DatatypeType
     where $Is(x0#0, Tclass._System.Tuple0())
       && $IsAlloc(x0#0, Tclass._System.Tuple0(), $Heap);
  var x4#0: DatatypeType
     where $Is(x4#0, Tclass._System.Tuple4(TInt, TBool, TBool, TSeq(TReal)))
       && $IsAlloc(x4#0, Tclass._System.Tuple4(TInt, TBool, TBool, TSeq(TReal)), $Heap);
  var null2#0: DatatypeType
     where $Is(null2#0, 
        Tclass._System.Tuple2(Tclass._module.SomeObject?(), Tclass._module.Cell(TInt)))
       && $IsAlloc(null2#0, 
        Tclass._System.Tuple2(Tclass._module.SomeObject?(), Tclass._module.Cell(TInt)), 
        $Heap);
  var null2'#0: DatatypeType
     where $Is(null2'#0, 
        Tclass._System.Tuple2(Tclass._module.SomeObject?(), Tclass._module.Cell(TInt)))
       && $IsAlloc(null2'#0, 
        Tclass._System.Tuple2(Tclass._module.SomeObject?(), Tclass._module.Cell(TInt)), 
        $Heap);
  var null4#0: DatatypeType
     where $Is(null4#0, 
        Tclass._System.Tuple4(Tclass._module.SomeObject?(), 
          Tclass._module.Class?(), 
          Tclass._module.WClass?(TBool), 
          Tclass._module.Cell(TInt)))
       && $IsAlloc(null4#0, 
        Tclass._System.Tuple4(Tclass._module.SomeObject?(), 
          Tclass._module.Class?(), 
          Tclass._module.WClass?(TBool), 
          Tclass._module.Cell(TInt)), 
        $Heap);
  var null4'#0: DatatypeType
     where $Is(null4'#0, 
        Tclass._System.Tuple4(Tclass._module.SomeObject?(), 
          Tclass._module.Class?(), 
          Tclass._module.WClass?(TBool), 
          Tclass._module.Cell(TInt)))
       && $IsAlloc(null4'#0, 
        Tclass._System.Tuple4(Tclass._module.SomeObject?(), 
          Tclass._module.Class?(), 
          Tclass._module.WClass?(TBool), 
          Tclass._module.Cell(TInt)), 
        $Heap);
  var newtype$check#0: ref;
  var ##a0#0: ref;
  var ##a1#0: ref;
  var ##a0#1: ref;
  var ##a1#1: ref;
  var ##a0#2: ref;
  var ##a1#2: ref;
  var ##a0#3: ref;
  var ##a1#3: ref;
  var newtype$check#1: ref;
  var m#0: Map
     where $Is(m#0, 
        TMap(Tclass._System.Tuple2(Tclass._module.SomeObject?(), Tclass._module.Cell(TInt)), 
          TInt))
       && $IsAlloc(m#0, 
        TMap(Tclass._System.Tuple2(Tclass._module.SomeObject?(), Tclass._module.Cell(TInt)), 
          TInt), 
        $Heap);

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(36,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(36,28)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    w##0 := Lit(3bv8);
    call {:id "id199"} $nw := Call$$_module.WClass.Make(TBitvector(8), $Box(w##0));
    // TrCallStmt: After ProcessCallStmt
    w#0 := $nw;
    defass#w#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(37,3)
    assert {:id "id201"} defass#w#0;
    assert {:id "id202"} {:subsumption 0} w#0 != null;
    assume _module.Stream.Next_q(_module.WClass.strm(TBitvector(8), w#0));
    assume _module.Stream.Next_q(_module.Stream.tail(_module.WClass.strm(TBitvector(8), w#0)));
    assume _module.Stream.Next_q(_module.WClass.strm(TBitvector(8), w#0))
       && _module.Stream.Next_q(_module.Stream.tail(_module.WClass.strm(TBitvector(8), w#0)));
    assume true;
    assert {:id "id203"} defass#w#0;
    assert {:id "id204"} {:subsumption 0} w#0 != null;
    assume _System.Tuple2.___hMake2_q($Unbox(read($Heap, w#0, _module.WClass.pair)): DatatypeType);
    assume _System.Tuple2.___hMake2_q($Unbox(read($Heap, w#0, _module.WClass.pair)): DatatypeType);
    assume true;
    assert {:id "id205"} defass#w#0;
    assert {:id "id206"} {:subsumption 0} w#0 != null;
    assume _System.Tuple2.___hMake2_q($Unbox(read($Heap, w#0, _module.WClass.pair)): DatatypeType);
    assume _System.Tuple2.___hMake2_q($Unbox(read($Heap, w#0, _module.WClass.pair)): DatatypeType);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(39,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(39,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id207"} $nw := Call$$_module.Class.__ctor();
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(40,3)
    assert {:id "id209"} defass#c#0;
    assert {:id "id210"} {:subsumption 0} c#0 != null;
    assume true;
    assume true;
    assert {:id "id211"} defass#c#0;
    assert {:id "id212"} {:subsumption 0} c#0 != null;
    assume _module.Cell.Cell_q($Unbox(read($Heap, c#0, _module.Class.cell)): DatatypeType);
    assume _module.Cell.Cell_q($Unbox(read($Heap, c#0, _module.Class.cell)): DatatypeType);
    assume true;
    assert {:id "id213"} defass#c#0;
    assert {:id "id214"} {:subsumption 0} c#0 != null;
    assume true;
    assume true;
    havoc x0#0 /* where $Is(x0#0, Tclass._System.Tuple0())
       && $IsAlloc(x0#0, Tclass._System.Tuple0(), $Heap) */;
    havoc x4#0 /* where $Is(x4#0, Tclass._System.Tuple4(TInt, TBool, TBool, TSeq(TReal)))
       && $IsAlloc(x4#0, Tclass._System.Tuple4(TInt, TBool, TBool, TSeq(TReal)), $Heap) */;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(44,3)
    assume true;
    assume true;
    assume true;
    assume true;
    havoc null2#0 /* where $Is(null2#0, 
        Tclass._System.Tuple2(Tclass._module.SomeObject?(), Tclass._module.Cell(TInt)))
       && $IsAlloc(null2#0, 
        Tclass._System.Tuple2(Tclass._module.SomeObject?(), Tclass._module.Cell(TInt)), 
        $Heap) */;
    havoc null2'#0 /* where $Is(null2'#0, 
        Tclass._System.Tuple2(Tclass._module.SomeObject?(), Tclass._module.Cell(TInt)))
       && $IsAlloc(null2'#0, 
        Tclass._System.Tuple2(Tclass._module.SomeObject?(), Tclass._module.Cell(TInt)), 
        $Heap) */;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(48,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume $IsA#_System.Tuple2(null2#0) && $IsA#_System.Tuple2(null2'#0);
    assume true;
    havoc null4#0 /* where $Is(null4#0, 
        Tclass._System.Tuple4(Tclass._module.SomeObject?(), 
          Tclass._module.Class?(), 
          Tclass._module.WClass?(TBool), 
          Tclass._module.Cell(TInt)))
       && $IsAlloc(null4#0, 
        Tclass._System.Tuple4(Tclass._module.SomeObject?(), 
          Tclass._module.Class?(), 
          Tclass._module.WClass?(TBool), 
          Tclass._module.Cell(TInt)), 
        $Heap) */;
    havoc null4'#0 /* where $Is(null4'#0, 
        Tclass._System.Tuple4(Tclass._module.SomeObject?(), 
          Tclass._module.Class?(), 
          Tclass._module.WClass?(TBool), 
          Tclass._module.Cell(TInt)))
       && $IsAlloc(null4'#0, 
        Tclass._System.Tuple4(Tclass._module.SomeObject?(), 
          Tclass._module.Class?(), 
          Tclass._module.WClass?(TBool), 
          Tclass._module.Cell(TInt)), 
        $Heap) */;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(51,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume $IsA#_System.Tuple4(null4#0) && $IsA#_System.Tuple4(null4'#0);
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(52,3)
    assert {:id "id215"} defass#c#0;
    assert {:id "id216"} defass#c#0;
    assume true;
    assume true;
    assert {:id "id217"} defass#c#0;
    assume _System.Tuple4.___hMake4_q(null4#0);
    assume _System.Tuple4.___hMake4_q(null4#0);
    assume true;
    assume _System.Tuple4.___hMake4_q(null4#0);
    assert {:id "id218"} defass#c#0;
    assume _System.Tuple4.___hMake4_q(null4#0);
    assume true;
    assume _System.Tuple4.___hMake4_q(null4#0);
    newtype$check#0 := null;
    assume _System.Tuple4.___hMake4_q(null4#0);
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(53,3)
    assert {:id "id219"} defass#c#0;
    ##a0#0 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a0#0, Tclass._module.Class(), $Heap);
    assert {:id "id220"} defass#c#0;
    ##a1#0 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a1#0, Tclass._module.Class(), $Heap);
    assume _module.__default.Same#canCall(Tclass._module.Class(), $Box(c#0), $Box(c#0));
    assume _module.__default.Same#canCall(Tclass._module.Class(), $Box(c#0), $Box(c#0));
    assume true;
    assert {:id "id221"} defass#c#0;
    ##a0#1 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a0#1, Tclass._module.Class?(), $Heap);
    assume _System.Tuple4.___hMake4_q(null4#0);
    ##a1#1 := $Unbox(_System.Tuple4._1(null4#0)): ref;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a1#1, Tclass._module.Class?(), $Heap);
    assume _module.__default.Same#canCall(Tclass._module.Class?(), $Box(c#0), _System.Tuple4._1(null4#0));
    assume _System.Tuple4.___hMake4_q(null4#0)
       && _module.__default.Same#canCall(Tclass._module.Class?(), $Box(c#0), _System.Tuple4._1(null4#0));
    assume true;
    assume _System.Tuple4.___hMake4_q(null4#0);
    ##a0#2 := $Unbox(_System.Tuple4._1(null4#0)): ref;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a0#2, Tclass._module.Class?(), $Heap);
    assert {:id "id222"} defass#c#0;
    ##a1#2 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a1#2, Tclass._module.Class?(), $Heap);
    assume _module.__default.Same#canCall(Tclass._module.Class?(), _System.Tuple4._1(null4#0), $Box(c#0));
    assume _System.Tuple4.___hMake4_q(null4#0)
       && _module.__default.Same#canCall(Tclass._module.Class?(), _System.Tuple4._1(null4#0), $Box(c#0));
    assume true;
    assume _System.Tuple4.___hMake4_q(null4#0);
    ##a0#3 := $Unbox(_System.Tuple4._1(null4#0)): ref;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a0#3, Tclass._module.Class?(), $Heap);
    newtype$check#1 := null;
    ##a1#3 := null;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a1#3, Tclass._module.Class?(), $Heap);
    assume _module.__default.Same#canCall(Tclass._module.Class?(), _System.Tuple4._1(null4#0), $Box(null));
    assume _System.Tuple4.___hMake4_q(null4#0)
       && _module.__default.Same#canCall(Tclass._module.Class?(), _System.Tuple4._1(null4#0), $Box(null));
    assume true;
    havoc m#0 /* where $Is(m#0, 
        TMap(Tclass._System.Tuple2(Tclass._module.SomeObject?(), Tclass._module.Cell(TInt)), 
          TInt))
       && $IsAlloc(m#0, 
        TMap(Tclass._System.Tuple2(Tclass._module.SomeObject?(), Tclass._module.Cell(TInt)), 
          TInt), 
        $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(57,5)
    assume true;
    assume true;
    m#0 := Map#Build(m#0, $Box(null2#0), $Box(LitInt(15)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(58,5)
    assume true;
    assume true;
    m#0 := Map#Build(m#0, $Box(null2'#0), $Box(LitInt(17)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(59,3)
    assert {:id "id225"} {:subsumption 0} Set#IsMember(Map#Domain(m#0), $Box(null2#0));
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(60,7)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id226"} Call$$_module.__default.More();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(61,9)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id227"} Call$$_module.__default.Arrows();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(62,21)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id228"} Call$$NilRegression.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(63,29)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id229"} Call$$DatatypeDefaultValues.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(64,21)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id230"} Call$$ImportedTypes.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(65,37)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id231"} Call$$TypeDescriptorInDatatypeValue.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(66,22)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id232"} Call$$DatatypeValues.__default.Test();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "More (well-formedness)"} CheckWellFormed$$_module.__default.More();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "More (call)"} Call$$_module.__default.More();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "More (correctness)"} Impl$$_module.__default.More() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.ThisOrThat(Ty, Ty) : Ty;

const unique Tagclass._module.ThisOrThat: TyTag;

// Tclass._module.ThisOrThat Tag
axiom (forall _module.ThisOrThat$A: Ty, _module.ThisOrThat$B: Ty :: 
  { Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B) } 
  Tag(Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B))
       == Tagclass._module.ThisOrThat
     && TagFamily(Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B))
       == tytagFamily$ThisOrThat);

function Tclass._module.ThisOrThat_0(Ty) : Ty;

// Tclass._module.ThisOrThat injectivity 0
axiom (forall _module.ThisOrThat$A: Ty, _module.ThisOrThat$B: Ty :: 
  { Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B) } 
  Tclass._module.ThisOrThat_0(Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B))
     == _module.ThisOrThat$A);

function Tclass._module.ThisOrThat_1(Ty) : Ty;

// Tclass._module.ThisOrThat injectivity 1
axiom (forall _module.ThisOrThat$A: Ty, _module.ThisOrThat$B: Ty :: 
  { Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B) } 
  Tclass._module.ThisOrThat_1(Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B))
     == _module.ThisOrThat$B);

// Box/unbox axiom for Tclass._module.ThisOrThat
axiom (forall _module.ThisOrThat$A: Ty, _module.ThisOrThat$B: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B)) } 
  $IsBox(bx, Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B)));

function Tclass._module.OrThat(Ty) : Ty;

const unique Tagclass._module.OrThat: TyTag;

// Tclass._module.OrThat Tag
axiom (forall _module.OrThat$X: Ty :: 
  { Tclass._module.OrThat(_module.OrThat$X) } 
  Tag(Tclass._module.OrThat(_module.OrThat$X)) == Tagclass._module.OrThat
     && TagFamily(Tclass._module.OrThat(_module.OrThat$X)) == tytagFamily$OrThat);

function Tclass._module.OrThat_0(Ty) : Ty;

// Tclass._module.OrThat injectivity 0
axiom (forall _module.OrThat$X: Ty :: 
  { Tclass._module.OrThat(_module.OrThat$X) } 
  Tclass._module.OrThat_0(Tclass._module.OrThat(_module.OrThat$X))
     == _module.OrThat$X);

// Box/unbox axiom for Tclass._module.OrThat
axiom (forall _module.OrThat$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.OrThat(_module.OrThat$X)) } 
  $IsBox(bx, Tclass._module.OrThat(_module.OrThat$X))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.OrThat(_module.OrThat$X)));

function Tclass._module.pos() : Ty
uses {
// Tclass._module.pos Tag
axiom Tag(Tclass._module.pos()) == Tagclass._module.pos
   && TagFamily(Tclass._module.pos()) == tytagFamily$pos;
}

const unique Tagclass._module.pos: TyTag;

// Box/unbox axiom for Tclass._module.pos
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.pos()) } 
  $IsBox(bx, Tclass._module.pos())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.pos()));

function Tclass._module.OddByte() : Ty
uses {
// Tclass._module.OddByte Tag
axiom Tag(Tclass._module.OddByte()) == Tagclass._module.OddByte
   && TagFamily(Tclass._module.OddByte()) == tytagFamily$OddByte;
}

const unique Tagclass._module.OddByte: TyTag;

// Box/unbox axiom for Tclass._module.OddByte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.OddByte()) } 
  $IsBox(bx, Tclass._module.OddByte())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.OddByte()));

function Tclass._module.OddNat() : Ty
uses {
// Tclass._module.OddNat Tag
axiom Tag(Tclass._module.OddNat()) == Tagclass._module.OddNat
   && TagFamily(Tclass._module.OddNat()) == tytagFamily$OddNat;
}

const unique Tagclass._module.OddNat: TyTag;

// Box/unbox axiom for Tclass._module.OddNat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.OddNat()) } 
  $IsBox(bx, Tclass._module.OddNat())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.OddNat()));

procedure {:verboseName "Arrows (well-formedness)"} CheckWellFormed$$_module.__default.Arrows();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Arrows (call)"} Call$$_module.__default.Arrows();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Arrows (correctness)"} Impl$$_module.__default.Arrows() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Arrows (correctness)"} Impl$$_module.__default.Arrows() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var f#0: HandleType
     where $Is(f#0, Tclass._System.___hTotalFunc1(TInt, Tclass._module.pos()))
       && $IsAlloc(f#0, Tclass._System.___hTotalFunc1(TInt, Tclass._module.pos()), $Heap);
  var g#0: HandleType
     where $Is(g#0, Tclass._System.___hPartialFunc1(TInt, Tclass._module.pos()))
       && $IsAlloc(g#0, Tclass._System.___hPartialFunc1(TInt, Tclass._module.pos()), $Heap);
  var h#0: HandleType
     where $Is(h#0, Tclass._System.___hFunc1(TInt, Tclass._module.pos()))
       && $IsAlloc(h#0, Tclass._System.___hFunc1(TInt, Tclass._module.pos()), $Heap);
  var F##0: HandleType;
  var F##1: HandleType;
  var F##2: HandleType;

    // AddMethodImpl: Arrows, Impl$$_module.__default.Arrows
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc f#0 /* where $Is(f#0, Tclass._System.___hTotalFunc1(TInt, Tclass._module.pos()))
       && $IsAlloc(f#0, Tclass._System.___hTotalFunc1(TInt, Tclass._module.pos()), $Heap) */;
    havoc g#0 /* where $Is(g#0, Tclass._System.___hPartialFunc1(TInt, Tclass._module.pos()))
       && $IsAlloc(g#0, Tclass._System.___hPartialFunc1(TInt, Tclass._module.pos()), $Heap) */;
    havoc h#0 /* where $Is(h#0, Tclass._System.___hFunc1(TInt, Tclass._module.pos()))
       && $IsAlloc(h#0, Tclass._System.___hFunc1(TInt, Tclass._module.pos()), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(93,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    F##0 := f#0;
    call {:id "id233"} Call$$_module.__default.DoNothing(F##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(94,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    F##1 := g#0;
    call {:id "id234"} Call$$_module.__default.DoNothing(F##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(95,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    F##2 := h#0;
    call {:id "id235"} Call$$_module.__default.DoNothing(F##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(96,3)
    assume true;
    assume true;
}



procedure {:verboseName "DoNothing (well-formedness)"} CheckWellFormed$$_module.__default.DoNothing(F#0: HandleType
       where $Is(F#0, Tclass._System.___hFunc1(TInt, Tclass._module.pos()))
         && $IsAlloc(F#0, Tclass._System.___hFunc1(TInt, Tclass._module.pos()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DoNothing (call)"} Call$$_module.__default.DoNothing(F#0: HandleType
       where $Is(F#0, Tclass._System.___hFunc1(TInt, Tclass._module.pos()))
         && $IsAlloc(F#0, Tclass._System.___hFunc1(TInt, Tclass._module.pos()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DoNothing (correctness)"} Impl$$_module.__default.DoNothing(F#0: HandleType
       where $Is(F#0, Tclass._System.___hFunc1(TInt, Tclass._module.pos()))
         && $IsAlloc(F#0, Tclass._System.___hFunc1(TInt, Tclass._module.pos()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// Constructor function declaration
function #_module.Stream.Next(Box, DatatypeType) : DatatypeType;

const unique ##_module.Stream.Next: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: DatatypeType :: 
  { #_module.Stream.Next(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_module.Stream.Next(a#0#0#0, a#0#1#0)) == ##_module.Stream.Next);
}

function _module.Stream.Next_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Stream.Next_q(d) } 
  _module.Stream.Next_q(d) <==> DatatypeCtorId(d) == ##_module.Stream.Next);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Stream.Next_q(d) } 
  _module.Stream.Next_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: DatatypeType :: 
      d == #_module.Stream.Next(a#1#0#0, a#1#1#0)));

function Tclass._module.Stream(Ty) : Ty;

const unique Tagclass._module.Stream: TyTag;

// Tclass._module.Stream Tag
axiom (forall _module.Stream$G: Ty :: 
  { Tclass._module.Stream(_module.Stream$G) } 
  Tag(Tclass._module.Stream(_module.Stream$G)) == Tagclass._module.Stream
     && TagFamily(Tclass._module.Stream(_module.Stream$G)) == tytagFamily$Stream);

function Tclass._module.Stream_0(Ty) : Ty;

// Tclass._module.Stream injectivity 0
axiom (forall _module.Stream$G: Ty :: 
  { Tclass._module.Stream(_module.Stream$G) } 
  Tclass._module.Stream_0(Tclass._module.Stream(_module.Stream$G))
     == _module.Stream$G);

// Box/unbox axiom for Tclass._module.Stream
axiom (forall _module.Stream$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Stream(_module.Stream$G)) } 
  $IsBox(bx, Tclass._module.Stream(_module.Stream$G))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Stream(_module.Stream$G)));

// Constructor $Is
axiom (forall _module.Stream$G: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType :: 
  { $Is(#_module.Stream.Next(a#2#0#0, a#2#1#0), Tclass._module.Stream(_module.Stream$G)) } 
  $Is(#_module.Stream.Next(a#2#0#0, a#2#1#0), Tclass._module.Stream(_module.Stream$G))
     <==> $IsBox(a#2#0#0, _module.Stream$G)
       && $Is(a#2#1#0, Tclass._module.Stream(_module.Stream$G)));

// Constructor $IsAlloc
axiom (forall _module.Stream$G: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.Stream.Next(a#2#0#0, a#2#1#0), 
      Tclass._module.Stream(_module.Stream$G), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Stream.Next(a#2#0#0, a#2#1#0), 
        Tclass._module.Stream(_module.Stream$G), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _module.Stream$G, $h)
         && $IsAlloc(a#2#1#0, Tclass._module.Stream(_module.Stream$G), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$G: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Stream.head(d), _module.Stream$G, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.Next_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$G), $h)
     ==> $IsAllocBox(_module.Stream.head(d), _module.Stream$G, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$G: Ty, $h: Heap :: 
  { $IsAlloc(_module.Stream.tail(d), Tclass._module.Stream(_module.Stream$G), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.Next_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$G), $h)
     ==> $IsAlloc(_module.Stream.tail(d), Tclass._module.Stream(_module.Stream$G), $h));

function _module.Stream.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#3#0#0: Box, a#3#1#0: DatatypeType :: 
  { #_module.Stream.Next(a#3#0#0, a#3#1#0) } 
  _module.Stream.head(#_module.Stream.Next(a#3#0#0, a#3#1#0)) == a#3#0#0);

function _module.Stream.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #_module.Stream.Next(a#4#0#0, a#4#1#0) } 
  _module.Stream.tail(#_module.Stream.Next(a#4#0#0, a#4#1#0)) == a#4#1#0);

// Depth-one case-split function
function $IsA#_module.Stream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Stream(d) } 
  $IsA#_module.Stream(d) ==> _module.Stream.Next_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Stream$G: Ty, d: DatatypeType :: 
  { _module.Stream.Next_q(d), $Is(d, Tclass._module.Stream(_module.Stream$G)) } 
  $Is(d, Tclass._module.Stream(_module.Stream$G)) ==> _module.Stream.Next_q(d));

function $Eq#_module.Stream(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream(_module.Stream$G#l))
       && $Is(d1, Tclass._module.Stream(_module.Stream$G#r))
     ==> ($Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1)
       <==> _module.Stream.Next_q(d0)
         && _module.Stream.Next_q(d1)
         && (_module.Stream.Next_q(d0) && _module.Stream.Next_q(d1)
           ==> _module.Stream.head(d0) == _module.Stream.head(d1)
             && $Eq#_module.Stream(_module.Stream$G#l, 
              _module.Stream$G#r, 
              ly, 
              _module.Stream.tail(d0), 
              _module.Stream.tail(d1)))));

// Unbump layer co-equality axiom
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1)
     <==> $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.Stream(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream(_module.Stream$G#l))
       && $Is(d1, Tclass._module.Stream(_module.Stream$G#r))
     ==> ($PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> _module.Stream.Next_q(d0)
             && _module.Stream.Next_q(d1)
             && (_module.Stream.Next_q(d0) && _module.Stream.Next_q(d1)
               ==> _module.Stream.head(d0) == _module.Stream.head(d1)
                 && $PrefixEq#_module.Stream(_module.Stream$G#l, 
                  _module.Stream$G#r, 
                  ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  _module.Stream.tail(d0), 
                  _module.Stream.tail(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1), $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1));

const unique class._module.Stream: ClassName;

const unique class._module.WClass?: ClassName;

// $Is axiom for class WClass
axiom (forall _module.WClass$W: Ty, $o: ref :: 
  { $Is($o, Tclass._module.WClass?(_module.WClass$W)) } 
  $Is($o, Tclass._module.WClass?(_module.WClass$W))
     <==> $o == null || dtype($o) == Tclass._module.WClass?(_module.WClass$W));

// $IsAlloc axiom for class WClass
axiom (forall _module.WClass$W: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.WClass?(_module.WClass$W), $h) } 
  $IsAlloc($o, Tclass._module.WClass?(_module.WClass$W), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.WClass.pair: Field
uses {
axiom FDim(_module.WClass.pair) == 0
   && FieldOfDecl(class._module.WClass?, field$pair) == _module.WClass.pair
   && !$IsGhostField(_module.WClass.pair);
}

// WClass.pair: Type axiom
axiom (forall _module.WClass$W: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WClass.pair)): DatatypeType, Tclass._module.WClass?(_module.WClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.WClass?(_module.WClass$W)
     ==> $Is($Unbox(read($h, $o, _module.WClass.pair)): DatatypeType, 
      Tclass._System.Tuple2(TBool, TInt)));

// WClass.pair: Allocation axiom
axiom (forall _module.WClass$W: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WClass.pair)): DatatypeType, Tclass._module.WClass?(_module.WClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.WClass?(_module.WClass$W)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.WClass.pair)): DatatypeType, 
      Tclass._System.Tuple2(TBool, TInt), 
      $h));

procedure {:verboseName "WClass.Make (well-formedness)"} CheckWellFormed$$_module.WClass.Make(_module.WClass$W: Ty, 
    w#0: Box
       where $IsBox(w#0, _module.WClass$W) && $IsAllocBox(w#0, _module.WClass$W, $Heap))
   returns (this: ref);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "WClass.Make (call)"} Call$$_module.WClass.Make(_module.WClass$W: Ty, 
    w#0: Box
       where $IsBox(w#0, _module.WClass$W) && $IsAllocBox(w#0, _module.WClass$W, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WClass(_module.WClass$W))
         && $IsAlloc(this, Tclass._module.WClass(_module.WClass$W), $Heap));
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



procedure {:verboseName "WClass.Make (correctness)"} Impl$$_module.WClass.Make(_module.WClass$W: Ty, 
    w#0: Box
       where $IsBox(w#0, _module.WClass$W) && $IsAllocBox(w#0, _module.WClass$W, $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WClass.Make (correctness)"} Impl$$_module.WClass.Make(_module.WClass$W: Ty, w#0: Box) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.strm: DatatypeType;
  var this.pair: DatatypeType;
  var defass#this.strm: bool;
  var ##w#0: Box;

    // AddMethodImpl: Make, Impl$$_module.WClass.Make
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(11,26)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(12,10)
    assume true;
    ##w#0 := w#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##w#0, _module.WClass$W, $Heap);
    assume _module.WClass.Generate#canCall(_module.WClass$W, w#0);
    assume _module.Stream.Next_q(_module.WClass.Generate(_module.WClass$W, $LS($LZ), w#0));
    assume _module.WClass.Generate#canCall(_module.WClass$W, w#0);
    this.strm := _module.WClass.Generate(_module.WClass$W, $LS($LZ), w#0);
    defass#this.strm := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(11,26)
    assert {:id "id237"} defass#this.strm;
    assume this != null && $Is(this, Tclass._module.WClass?(_module.WClass$W));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume _module.WClass.strm(_module.WClass$W, this) == this.strm;
    assume $Unbox(read($Heap, this, _module.WClass.pair)): DatatypeType == this.pair;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(11,26)
}



// function declaration for _module.WClass.Generate
function _module.WClass.Generate(_module.WClass$W: Ty, $ly: LayerType, w#0: Box) : DatatypeType
uses {
// consequence axiom for _module.WClass.Generate
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.WClass$W: Ty, $ly: LayerType, w#0: Box :: 
    { _module.WClass.Generate(_module.WClass$W, $ly, w#0) } 
    _module.WClass.Generate#canCall(_module.WClass$W, w#0)
         || (1 < $FunctionContextHeight && $IsBox(w#0, _module.WClass$W))
       ==> $Is(_module.WClass.Generate(_module.WClass$W, $ly, w#0), 
        Tclass._module.Stream(_module.WClass$W)));
// alloc consequence axiom for _module.WClass.Generate
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.WClass$W: Ty, $ly: LayerType, w#0: Box :: 
    { $IsAlloc(_module.WClass.Generate(_module.WClass$W, $ly, w#0), 
        Tclass._module.Stream(_module.WClass$W), 
        $Heap) } 
    (_module.WClass.Generate#canCall(_module.WClass$W, w#0)
           || (1 < $FunctionContextHeight
             && 
            $IsBox(w#0, _module.WClass$W)
             && $IsAllocBox(w#0, _module.WClass$W, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.WClass.Generate(_module.WClass$W, $ly, w#0), 
        Tclass._module.Stream(_module.WClass$W), 
        $Heap));
// definition axiom for _module.WClass.Generate (revealed)
axiom {:id "id238"} 1 <= $FunctionContextHeight
   ==> (forall _module.WClass$W: Ty, $ly: LayerType, w#0: Box :: 
    { _module.WClass.Generate(_module.WClass$W, $LS($ly), w#0) } 
    _module.WClass.Generate#canCall(_module.WClass$W, w#0)
         || (1 < $FunctionContextHeight && $IsBox(w#0, _module.WClass$W))
       ==> _module.WClass.Generate#canCall(_module.WClass$W, w#0)
         && _module.WClass.Generate(_module.WClass$W, $LS($ly), w#0)
           == #_module.Stream.Next(w#0, _module.WClass.Generate(_module.WClass$W, $ly, w#0)));
}

function _module.WClass.Generate#canCall(_module.WClass$W: Ty, w#0: Box) : bool;

// layer synonym axiom
axiom (forall _module.WClass$W: Ty, $ly: LayerType, w#0: Box :: 
  { _module.WClass.Generate(_module.WClass$W, $LS($ly), w#0) } 
  _module.WClass.Generate(_module.WClass$W, $LS($ly), w#0)
     == _module.WClass.Generate(_module.WClass$W, $ly, w#0));

// fuel synonym axiom
axiom (forall _module.WClass$W: Ty, $ly: LayerType, w#0: Box :: 
  { _module.WClass.Generate(_module.WClass$W, AsFuelBottom($ly), w#0) } 
  _module.WClass.Generate(_module.WClass$W, $ly, w#0)
     == _module.WClass.Generate(_module.WClass$W, $LZ, w#0));

function _module.WClass.Generate#requires(Ty, LayerType, Box) : bool;

// #requires axiom for _module.WClass.Generate
axiom (forall _module.WClass$W: Ty, $ly: LayerType, w#0: Box :: 
  { _module.WClass.Generate#requires(_module.WClass$W, $ly, w#0) } 
  $IsBox(w#0, _module.WClass$W)
     ==> _module.WClass.Generate#requires(_module.WClass$W, $ly, w#0) == true);

procedure {:verboseName "WClass.Generate (well-formedness)"} CheckWellformed$$_module.WClass.Generate(_module.WClass$W: Ty, w#0: Box where $IsBox(w#0, _module.WClass$W));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for non-null type _module.WClass
axiom (forall _module.WClass$W: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.WClass(_module.WClass$W)) } 
    { $Is(c#0, Tclass._module.WClass?(_module.WClass$W)) } 
  $Is(c#0, Tclass._module.WClass(_module.WClass$W))
     <==> $Is(c#0, Tclass._module.WClass?(_module.WClass$W)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.WClass
axiom (forall _module.WClass$W: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.WClass(_module.WClass$W), $h) } 
    { $IsAlloc(c#0, Tclass._module.WClass?(_module.WClass$W), $h) } 
  $IsAlloc(c#0, Tclass._module.WClass(_module.WClass$W), $h)
     <==> $IsAlloc(c#0, Tclass._module.WClass?(_module.WClass$W), $h));

// Constructor function declaration
function #_module.Cell.Cell(Box) : DatatypeType;

const unique ##_module.Cell.Cell: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #_module.Cell.Cell(a#0#0#0) } 
  DatatypeCtorId(#_module.Cell.Cell(a#0#0#0)) == ##_module.Cell.Cell);
}

function _module.Cell.Cell_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Cell.Cell_q(d) } 
  _module.Cell.Cell_q(d) <==> DatatypeCtorId(d) == ##_module.Cell.Cell);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Cell.Cell_q(d) } 
  _module.Cell.Cell_q(d)
     ==> (exists a#1#0#0: Box :: d == #_module.Cell.Cell(a#1#0#0)));

// Constructor $Is
axiom (forall _module.Cell$T: Ty, a#2#0#0: Box :: 
  { $Is(#_module.Cell.Cell(a#2#0#0), Tclass._module.Cell(_module.Cell$T)) } 
  $Is(#_module.Cell.Cell(a#2#0#0), Tclass._module.Cell(_module.Cell$T))
     <==> $IsBox(a#2#0#0, _module.Cell$T));

// Constructor $IsAlloc
axiom (forall _module.Cell$T: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Cell.Cell(a#2#0#0), Tclass._module.Cell(_module.Cell$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Cell.Cell(a#2#0#0), Tclass._module.Cell(_module.Cell$T), $h)
       <==> $IsAllocBox(a#2#0#0, _module.Cell$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Cell$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Cell.data(d), _module.Cell$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Cell.Cell_q(d)
       && $IsAlloc(d, Tclass._module.Cell(_module.Cell$T), $h)
     ==> $IsAllocBox(_module.Cell.data(d), _module.Cell$T, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #_module.Cell.Cell(Lit(a#3#0#0)) } 
  #_module.Cell.Cell(Lit(a#3#0#0)) == Lit(#_module.Cell.Cell(a#3#0#0)));

function _module.Cell.data(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #_module.Cell.Cell(a#4#0#0) } 
  _module.Cell.data(#_module.Cell.Cell(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #_module.Cell.Cell(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#_module.Cell.Cell(a#5#0#0)));

// Depth-one case-split function
function $IsA#_module.Cell(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Cell(d) } 
  $IsA#_module.Cell(d) ==> _module.Cell.Cell_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Cell$T: Ty, d: DatatypeType :: 
  { _module.Cell.Cell_q(d), $Is(d, Tclass._module.Cell(_module.Cell$T)) } 
  $Is(d, Tclass._module.Cell(_module.Cell$T)) ==> _module.Cell.Cell_q(d));

// Datatype extensional equality declaration
function _module.Cell#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Cell.Cell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Cell#Equal(a, b) } 
  _module.Cell#Equal(a, b) <==> _module.Cell.data(a) == _module.Cell.data(b));

// Datatype extensionality axiom: _module.Cell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Cell#Equal(a, b) } 
  _module.Cell#Equal(a, b) <==> a == b);

const unique class._module.Cell: ClassName;

const unique class._module.SomeObject?: ClassName;

// $Is axiom for class SomeObject
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.SomeObject?()) } 
  $Is($o, Tclass._module.SomeObject?())
     <==> $o == null || dtype($o) == Tclass._module.SomeObject?());

// $IsAlloc axiom for class SomeObject
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.SomeObject?(), $h) } 
  $IsAlloc($o, Tclass._module.SomeObject?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass._module.SomeObject() : Ty
uses {
// Tclass._module.SomeObject Tag
axiom Tag(Tclass._module.SomeObject()) == Tagclass._module.SomeObject
   && TagFamily(Tclass._module.SomeObject()) == tytagFamily$SomeObject;
}

const unique Tagclass._module.SomeObject: TyTag;

// Box/unbox axiom for Tclass._module.SomeObject
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SomeObject()) } 
  $IsBox(bx, Tclass._module.SomeObject())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.SomeObject()));

// $Is axiom for non-null type _module.SomeObject
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.SomeObject()) } 
    { $Is(c#0, Tclass._module.SomeObject?()) } 
  $Is(c#0, Tclass._module.SomeObject())
     <==> $Is(c#0, Tclass._module.SomeObject?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.SomeObject
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.SomeObject(), $h) } 
    { $IsAlloc(c#0, Tclass._module.SomeObject?(), $h) } 
  $IsAlloc(c#0, Tclass._module.SomeObject(), $h)
     <==> $IsAlloc(c#0, Tclass._module.SomeObject?(), $h));

const unique class._module.Class?: ClassName;

// $Is axiom for class Class
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Class?()) } 
  $Is($o, Tclass._module.Class?())
     <==> $o == null || dtype($o) == Tclass._module.Class?());

// $IsAlloc axiom for class Class
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Class?(), $h) } 
  $IsAlloc($o, Tclass._module.Class?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Class.cell: Field
uses {
axiom FDim(_module.Class.cell) == 0
   && FieldOfDecl(class._module.Class?, field$cell) == _module.Class.cell
   && !$IsGhostField(_module.Class.cell);
}

// Class.cell: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Class.cell)): DatatypeType } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Class?()
     ==> $Is($Unbox(read($h, $o, _module.Class.cell)): DatatypeType, 
      Tclass._module.Cell(TBool)));

// Class.cell: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Class.cell)): DatatypeType } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Class?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Class.cell)): DatatypeType, 
      Tclass._module.Cell(TBool), 
      $h));

const _module.Class.obj: Field
uses {
axiom FDim(_module.Class.obj) == 0
   && FieldOfDecl(class._module.Class?, field$obj) == _module.Class.obj
   && !$IsGhostField(_module.Class.obj);
}

// Class.obj: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Class.obj)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Class?()
     ==> $Is($Unbox(read($h, $o, _module.Class.obj)): ref, Tclass._module.SomeObject()));

// Class.obj: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Class.obj)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Class?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Class.obj)): ref, Tclass._module.SomeObject(), $h));

procedure {:verboseName "Class._ctor (well-formedness)"} CheckWellFormed$$_module.Class.__ctor() returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Class._ctor (call)"} Call$$_module.Class.__ctor()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Class())
         && $IsAlloc(this, Tclass._module.Class(), $Heap));
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



procedure {:verboseName "Class._ctor (correctness)"} Impl$$_module.Class.__ctor() returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Class._ctor (correctness)"} Impl$$_module.Class.__ctor() returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.cell: DatatypeType;
  var this.obj: ref;
  var defass#this.obj: bool;
  var $nw: ref;

    // AddMethodImpl: _ctor, Impl$$_module.Class.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(26,18)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(27,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.SomeObject?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    this.obj := $nw;
    defass#this.obj := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(26,18)
    assert {:id "id241"} defass#this.obj;
    assume this != null && $Is(this, Tclass._module.Class?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Class.cell)): DatatypeType == this.cell;
    assume $Unbox(read($Heap, this, _module.Class.obj)): ref == this.obj;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/AutoInit.dfy(26,18)
}



// $Is axiom for non-null type _module.Class
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Class()) } { $Is(c#0, Tclass._module.Class?()) } 
  $Is(c#0, Tclass._module.Class())
     <==> $Is(c#0, Tclass._module.Class?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Class
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Class(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Class?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Class(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Class?(), $h));

// Constructor function declaration
function #_module.ThisOrThat.This(Box) : DatatypeType;

const unique ##_module.ThisOrThat.This: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #_module.ThisOrThat.This(a#0#0#0) } 
  DatatypeCtorId(#_module.ThisOrThat.This(a#0#0#0)) == ##_module.ThisOrThat.This);
}

function _module.ThisOrThat.This_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.ThisOrThat.This_q(d) } 
  _module.ThisOrThat.This_q(d) <==> DatatypeCtorId(d) == ##_module.ThisOrThat.This);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.ThisOrThat.This_q(d) } 
  _module.ThisOrThat.This_q(d)
     ==> (exists a#1#0#0: Box :: d == #_module.ThisOrThat.This(a#1#0#0)));

// Constructor $Is
axiom (forall _module.ThisOrThat$A: Ty, _module.ThisOrThat$B: Ty, a#2#0#0: Box :: 
  { $Is(#_module.ThisOrThat.This(a#2#0#0), 
      Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B)) } 
  $Is(#_module.ThisOrThat.This(a#2#0#0), 
      Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B))
     <==> $IsBox(a#2#0#0, _module.ThisOrThat$A));

// Constructor $IsAlloc
axiom (forall _module.ThisOrThat$A: Ty, _module.ThisOrThat$B: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.ThisOrThat.This(a#2#0#0), 
      Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.ThisOrThat.This(a#2#0#0), 
        Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _module.ThisOrThat$A, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.ThisOrThat$A: Ty, $h: Heap :: 
  { $IsAllocBox(_module.ThisOrThat._h0(d), _module.ThisOrThat$A, $h) } 
  $IsGoodHeap($h)
       && 
      _module.ThisOrThat.This_q(d)
       && (exists _module.ThisOrThat$B: Ty :: 
        { $IsAlloc(d, Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B), $h) } 
        $IsAlloc(d, Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B), $h))
     ==> $IsAllocBox(_module.ThisOrThat._h0(d), _module.ThisOrThat$A, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #_module.ThisOrThat.This(Lit(a#3#0#0)) } 
  #_module.ThisOrThat.This(Lit(a#3#0#0)) == Lit(#_module.ThisOrThat.This(a#3#0#0)));

function _module.ThisOrThat._h0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #_module.ThisOrThat.This(a#4#0#0) } 
  _module.ThisOrThat._h0(#_module.ThisOrThat.This(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #_module.ThisOrThat.This(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#_module.ThisOrThat.This(a#5#0#0)));

// Constructor function declaration
function #_module.ThisOrThat.Or() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.ThisOrThat.Or()) == ##_module.ThisOrThat.Or;
// Constructor literal
axiom #_module.ThisOrThat.Or() == Lit(#_module.ThisOrThat.Or());
}

const unique ##_module.ThisOrThat.Or: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.ThisOrThat.Or()) == ##_module.ThisOrThat.Or;
}

function _module.ThisOrThat.Or_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.ThisOrThat.Or_q(d) } 
  _module.ThisOrThat.Or_q(d) <==> DatatypeCtorId(d) == ##_module.ThisOrThat.Or);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.ThisOrThat.Or_q(d) } 
  _module.ThisOrThat.Or_q(d) ==> d == #_module.ThisOrThat.Or());

// Constructor $Is
axiom (forall _module.ThisOrThat$A: Ty, _module.ThisOrThat$B: Ty :: 
  { $Is(#_module.ThisOrThat.Or(), 
      Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B)) } 
  $Is(#_module.ThisOrThat.Or(), 
    Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B)));

// Constructor $IsAlloc
axiom (forall _module.ThisOrThat$A: Ty, _module.ThisOrThat$B: Ty, $h: Heap :: 
  { $IsAlloc(#_module.ThisOrThat.Or(), 
      Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.ThisOrThat.Or(), 
      Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B), 
      $h));

// Constructor function declaration
function #_module.ThisOrThat.That(Box) : DatatypeType;

const unique ##_module.ThisOrThat.That: DtCtorId
uses {
// Constructor identifier
axiom (forall a#10#0#0: Box :: 
  { #_module.ThisOrThat.That(a#10#0#0) } 
  DatatypeCtorId(#_module.ThisOrThat.That(a#10#0#0)) == ##_module.ThisOrThat.That);
}

function _module.ThisOrThat.That_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.ThisOrThat.That_q(d) } 
  _module.ThisOrThat.That_q(d) <==> DatatypeCtorId(d) == ##_module.ThisOrThat.That);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.ThisOrThat.That_q(d) } 
  _module.ThisOrThat.That_q(d)
     ==> (exists a#11#0#0: Box :: d == #_module.ThisOrThat.That(a#11#0#0)));

// Constructor $Is
axiom (forall _module.ThisOrThat$A: Ty, _module.ThisOrThat$B: Ty, a#12#0#0: Box :: 
  { $Is(#_module.ThisOrThat.That(a#12#0#0), 
      Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B)) } 
  $Is(#_module.ThisOrThat.That(a#12#0#0), 
      Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B))
     <==> $IsBox(a#12#0#0, _module.ThisOrThat$B));

// Constructor $IsAlloc
axiom (forall _module.ThisOrThat$A: Ty, _module.ThisOrThat$B: Ty, a#12#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.ThisOrThat.That(a#12#0#0), 
      Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.ThisOrThat.That(a#12#0#0), 
        Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B), 
        $h)
       <==> $IsAllocBox(a#12#0#0, _module.ThisOrThat$B, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.ThisOrThat$B: Ty, $h: Heap :: 
  { $IsAllocBox(_module.ThisOrThat._h1(d), _module.ThisOrThat$B, $h) } 
  $IsGoodHeap($h)
       && 
      _module.ThisOrThat.That_q(d)
       && (exists _module.ThisOrThat$A: Ty :: 
        { $IsAlloc(d, Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B), $h) } 
        $IsAlloc(d, Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B), $h))
     ==> $IsAllocBox(_module.ThisOrThat._h1(d), _module.ThisOrThat$B, $h));

// Constructor literal
axiom (forall a#13#0#0: Box :: 
  { #_module.ThisOrThat.That(Lit(a#13#0#0)) } 
  #_module.ThisOrThat.That(Lit(a#13#0#0))
     == Lit(#_module.ThisOrThat.That(a#13#0#0)));

function _module.ThisOrThat._h1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#14#0#0: Box :: 
  { #_module.ThisOrThat.That(a#14#0#0) } 
  _module.ThisOrThat._h1(#_module.ThisOrThat.That(a#14#0#0)) == a#14#0#0);

// Inductive rank
axiom (forall a#15#0#0: Box :: 
  { #_module.ThisOrThat.That(a#15#0#0) } 
  BoxRank(a#15#0#0) < DtRank(#_module.ThisOrThat.That(a#15#0#0)));

// Depth-one case-split function
function $IsA#_module.ThisOrThat(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.ThisOrThat(d) } 
  $IsA#_module.ThisOrThat(d)
     ==> _module.ThisOrThat.This_q(d)
       || _module.ThisOrThat.Or_q(d)
       || _module.ThisOrThat.That_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.ThisOrThat$A: Ty, _module.ThisOrThat$B: Ty, d: DatatypeType :: 
  { _module.ThisOrThat.That_q(d), $Is(d, Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B)) } 
    { _module.ThisOrThat.Or_q(d), $Is(d, Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B)) } 
    { _module.ThisOrThat.This_q(d), $Is(d, Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B)) } 
  $Is(d, Tclass._module.ThisOrThat(_module.ThisOrThat$A, _module.ThisOrThat$B))
     ==> _module.ThisOrThat.This_q(d)
       || _module.ThisOrThat.Or_q(d)
       || _module.ThisOrThat.That_q(d));

// Datatype extensional equality declaration
function _module.ThisOrThat#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.ThisOrThat.This
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.ThisOrThat#Equal(a, b), _module.ThisOrThat.This_q(a) } 
    { _module.ThisOrThat#Equal(a, b), _module.ThisOrThat.This_q(b) } 
  _module.ThisOrThat.This_q(a) && _module.ThisOrThat.This_q(b)
     ==> (_module.ThisOrThat#Equal(a, b)
       <==> _module.ThisOrThat._h0(a) == _module.ThisOrThat._h0(b)));

// Datatype extensional equality definition: #_module.ThisOrThat.Or
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.ThisOrThat#Equal(a, b), _module.ThisOrThat.Or_q(a) } 
    { _module.ThisOrThat#Equal(a, b), _module.ThisOrThat.Or_q(b) } 
  _module.ThisOrThat.Or_q(a) && _module.ThisOrThat.Or_q(b)
     ==> _module.ThisOrThat#Equal(a, b));

// Datatype extensional equality definition: #_module.ThisOrThat.That
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.ThisOrThat#Equal(a, b), _module.ThisOrThat.That_q(a) } 
    { _module.ThisOrThat#Equal(a, b), _module.ThisOrThat.That_q(b) } 
  _module.ThisOrThat.That_q(a) && _module.ThisOrThat.That_q(b)
     ==> (_module.ThisOrThat#Equal(a, b)
       <==> _module.ThisOrThat._h1(a) == _module.ThisOrThat._h1(b)));

// Datatype extensionality axiom: _module.ThisOrThat
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.ThisOrThat#Equal(a, b) } 
  _module.ThisOrThat#Equal(a, b) <==> a == b);

const unique class._module.ThisOrThat: ClassName;

procedure {:verboseName "pos (well-formedness)"} CheckWellFormed$$_module.pos(i#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "pos (well-formedness)"} CheckWellFormed$$_module.pos(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    // AddWellformednessCheck for subset type pos
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume LitInt(0) <= i#0;
        assume {:id "id242"} i#0 != 0;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        newtype$check#0 := LitInt(1);
        assert {:id "id243"} LitInt(0) <= newtype$check#0;
        newtype$check#1 := LitInt(1);
        assert {:id "id244"} LitInt(0) <= newtype$check#1;
        assume true;
        assert {:id "id245"} Lit(1 != 0);
        assume false;
    }
}



// $Is axiom for subset type _module.pos
axiom (forall i#0: int :: 
  { $Is(i#0, Tclass._module.pos()) } 
  $Is(i#0, Tclass._module.pos()) <==> LitInt(0) <= i#0 && i#0 != 0);

// $IsAlloc axiom for subset type _module.pos
axiom (forall i#0: int, $h: Heap :: 
  { $IsAlloc(i#0, Tclass._module.pos(), $h) } 
  $IsAlloc(i#0, Tclass._module.pos(), $h));

procedure {:verboseName "OrThat (well-formedness)"} CheckWellFormed$$_module.OrThat(_module.OrThat$X: Ty, tot#0: DatatypeType);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OrThat (well-formedness)"} CheckWellFormed$$_module.OrThat(_module.OrThat$X: Ty, tot#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type OrThat
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(tot#0, Tclass._module.ThisOrThat(_module.OrThat$X, TInt));
        assume {:id "id246"} !_module.ThisOrThat.This_q(tot#0);
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id247"} !Lit(_module.ThisOrThat.This_q(Lit(#_module.ThisOrThat.Or())));
        assume false;
    }
}



// $Is axiom for subset type _module.OrThat
axiom (forall _module.OrThat$X: Ty, tot#0: DatatypeType :: 
  { $Is(tot#0, Tclass._module.OrThat(_module.OrThat$X)) } 
  $Is(tot#0, Tclass._module.OrThat(_module.OrThat$X))
     <==> $Is(tot#0, Tclass._module.ThisOrThat(_module.OrThat$X, TInt))
       && !_module.ThisOrThat.This_q(tot#0));

// $IsAlloc axiom for subset type _module.OrThat
axiom (forall _module.OrThat$X: Ty, tot#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(tot#0, Tclass._module.OrThat(_module.OrThat$X), $h) } 
  $IsAlloc(tot#0, Tclass._module.OrThat(_module.OrThat$X), $h)
     <==> $IsAlloc(tot#0, Tclass._module.ThisOrThat(_module.OrThat$X, TInt), $h));

procedure {:verboseName "OddByte (well-formedness)"} CheckWellFormed$$_module.OddByte(i#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OddByte (well-formedness)"} CheckWellFormed$$_module.OddByte(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype OddByte
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(2) <= i#0)
        {
        }

        assume {:id "id248"} LitInt(2) <= i#0 && i#0 < 20;
        assert {:id "id249"} LitInt(2) != 0;
        assume {:id "id250"} Mod(i#0, LitInt(2)) == LitInt(1);
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id251"} {:subsumption 0} LitInt(2) <= LitInt(3);
        assert {:id "id252"} {:subsumption 0} Lit(3 < 20);
        assert {:id "id253"} {:subsumption 0} LitInt(Mod(3, LitInt(2))) == LitInt(1);
        assume false;
    }
}



// $Is axiom for newtype _module.OddByte
axiom (forall i#0: int :: 
  { $Is(i#0, Tclass._module.OddByte()) } 
  $Is(i#0, Tclass._module.OddByte())
     <==> LitInt(2) <= i#0 && i#0 < 20 && Mod(i#0, LitInt(2)) == LitInt(1));

// $IsAlloc axiom for newtype _module.OddByte
axiom (forall i#0: int, $h: Heap :: 
  { $IsAlloc(i#0, Tclass._module.OddByte(), $h) } 
  $IsAlloc(i#0, Tclass._module.OddByte(), $h));

const unique class._module.OddByte: ClassName;

procedure {:verboseName "OddNat (well-formedness)"} CheckWellFormed$$_module.OddNat(i#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OddNat (well-formedness)"} CheckWellFormed$$_module.OddNat(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype OddNat
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assume {:id "id254"} LitInt(4) <= i#0;
        assert {:id "id255"} LitInt(2) != 0;
        assume {:id "id256"} Mod(i#0, LitInt(2)) == LitInt(1);
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id257"} {:subsumption 0} LitInt(4) <= LitInt(9);
        assert {:id "id258"} {:subsumption 0} LitInt(Mod(9, LitInt(2))) == LitInt(1);
        assume false;
    }
}



// $Is axiom for newtype _module.OddNat
axiom (forall i#0: int :: 
  { $Is(i#0, Tclass._module.OddNat()) } 
  $Is(i#0, Tclass._module.OddNat())
     <==> LitInt(4) <= i#0 && Mod(i#0, LitInt(2)) == LitInt(1));

// $IsAlloc axiom for newtype _module.OddNat
axiom (forall i#0: int, $h: Heap :: 
  { $IsAlloc(i#0, Tclass._module.OddNat(), $h) } 
  $IsAlloc(i#0, Tclass._module.OddNat(), $h));

const unique class._module.OddNat: ClassName;

const unique class.NilRegression.__default: ClassName;

procedure {:verboseName "NilRegression.Test (well-formedness)"} CheckWellFormed$$NilRegression.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NilRegression.Test (call)"} Call$$NilRegression.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for NilRegression._default.Id
function NilRegression.__default.Id(NilRegression._default.Id$X: Ty, x#0: Box) : Box;

function NilRegression.__default.Id#canCall(NilRegression._default.Id$X: Ty, x#0: Box) : bool;

// consequence axiom for NilRegression.__default.Id
axiom (forall NilRegression._default.Id$X: Ty, x#0: Box :: 
  { NilRegression.__default.Id(NilRegression._default.Id$X, x#0) } 
  NilRegression.__default.Id#canCall(NilRegression._default.Id$X, x#0)
       || $IsBox(x#0, NilRegression._default.Id$X)
     ==> $IsBox(NilRegression.__default.Id(NilRegression._default.Id$X, x#0), 
      NilRegression._default.Id$X));

// alloc consequence axiom for NilRegression.__default.Id
axiom (forall $Heap: Heap, NilRegression._default.Id$X: Ty, x#0: Box :: 
  { $IsAllocBox(NilRegression.__default.Id(NilRegression._default.Id$X, x#0), 
      NilRegression._default.Id$X, 
      $Heap) } 
  (NilRegression.__default.Id#canCall(NilRegression._default.Id$X, x#0)
         || ($IsBox(x#0, NilRegression._default.Id$X)
           && $IsAllocBox(x#0, NilRegression._default.Id$X, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(NilRegression.__default.Id(NilRegression._default.Id$X, x#0), 
      NilRegression._default.Id$X, 
      $Heap));

function NilRegression.__default.Id#requires(Ty, Box) : bool;

// #requires axiom for NilRegression.__default.Id
axiom (forall NilRegression._default.Id$X: Ty, x#0: Box :: 
  { NilRegression.__default.Id#requires(NilRegression._default.Id$X, x#0) } 
  $IsBox(x#0, NilRegression._default.Id$X)
     ==> NilRegression.__default.Id#requires(NilRegression._default.Id$X, x#0) == true);

// definition axiom for NilRegression.__default.Id (revealed)
axiom {:id "id259"} (forall NilRegression._default.Id$X: Ty, x#0: Box :: 
  { NilRegression.__default.Id(NilRegression._default.Id$X, x#0) } 
  NilRegression.__default.Id#canCall(NilRegression._default.Id$X, x#0)
       || $IsBox(x#0, NilRegression._default.Id$X)
     ==> NilRegression.__default.Id(NilRegression._default.Id$X, x#0) == x#0);

// definition axiom for NilRegression.__default.Id for all literals (revealed)
axiom {:id "id260"} (forall NilRegression._default.Id$X: Ty, x#0: Box :: 
  {:weight 3} { NilRegression.__default.Id(NilRegression._default.Id$X, Lit(x#0)) } 
  NilRegression.__default.Id#canCall(NilRegression._default.Id$X, Lit(x#0))
       || $IsBox(x#0, NilRegression._default.Id$X)
     ==> NilRegression.__default.Id(NilRegression._default.Id$X, Lit(x#0)) == Lit(x#0));

const unique class.NilRegression.Trait?: ClassName;

function Tclass.NilRegression.Trait?() : Ty
uses {
// Tclass.NilRegression.Trait? Tag
axiom Tag(Tclass.NilRegression.Trait?()) == Tagclass.NilRegression.Trait?
   && TagFamily(Tclass.NilRegression.Trait?()) == tytagFamily$Trait;
}

const unique Tagclass.NilRegression.Trait?: TyTag;

// Box/unbox axiom for Tclass.NilRegression.Trait?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NilRegression.Trait?()) } 
  $IsBox(bx, Tclass.NilRegression.Trait?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.NilRegression.Trait?()));

// $Is axiom for trait Trait
axiom (forall $o: ref :: 
  { $Is($o, Tclass.NilRegression.Trait?()) } 
  $Is($o, Tclass.NilRegression.Trait?())
     <==> $o == null || implements$NilRegression.Trait(dtype($o)));

// $IsAlloc axiom for trait Trait
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.NilRegression.Trait?(), $h) } 
  $IsAlloc($o, Tclass.NilRegression.Trait?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$NilRegression.Trait(ty: Ty) : bool;

function Tclass.NilRegression.Trait() : Ty
uses {
// Tclass.NilRegression.Trait Tag
axiom Tag(Tclass.NilRegression.Trait()) == Tagclass.NilRegression.Trait
   && TagFamily(Tclass.NilRegression.Trait()) == tytagFamily$Trait;
}

const unique Tagclass.NilRegression.Trait: TyTag;

// Box/unbox axiom for Tclass.NilRegression.Trait
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NilRegression.Trait()) } 
  $IsBox(bx, Tclass.NilRegression.Trait())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.NilRegression.Trait()));

// $Is axiom for non-null type NilRegression.Trait
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.NilRegression.Trait()) } 
    { $Is(c#0, Tclass.NilRegression.Trait?()) } 
  $Is(c#0, Tclass.NilRegression.Trait())
     <==> $Is(c#0, Tclass.NilRegression.Trait?()) && c#0 != null);

// $IsAlloc axiom for non-null type NilRegression.Trait
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.NilRegression.Trait(), $h) } 
    { $IsAlloc(c#0, Tclass.NilRegression.Trait?(), $h) } 
  $IsAlloc(c#0, Tclass.NilRegression.Trait(), $h)
     <==> $IsAlloc(c#0, Tclass.NilRegression.Trait?(), $h));

const unique class.NilRegression.Class?: ClassName;

function Tclass.NilRegression.Class?() : Ty
uses {
// Tclass.NilRegression.Class? Tag
axiom Tag(Tclass.NilRegression.Class?()) == Tagclass.NilRegression.Class?
   && TagFamily(Tclass.NilRegression.Class?()) == tytagFamily$Class;
axiom implements$NilRegression.Trait(Tclass.NilRegression.Class?());
}

const unique Tagclass.NilRegression.Class?: TyTag;

// Box/unbox axiom for Tclass.NilRegression.Class?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NilRegression.Class?()) } 
  $IsBox(bx, Tclass.NilRegression.Class?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.NilRegression.Class?()));

// $Is axiom for class Class
axiom (forall $o: ref :: 
  { $Is($o, Tclass.NilRegression.Class?()) } 
  $Is($o, Tclass.NilRegression.Class?())
     <==> $o == null || dtype($o) == Tclass.NilRegression.Class?());

// $IsAlloc axiom for class Class
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.NilRegression.Class?(), $h) } 
  $IsAlloc($o, Tclass.NilRegression.Class?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.NilRegression.Class() : Ty
uses {
// Tclass.NilRegression.Class Tag
axiom Tag(Tclass.NilRegression.Class()) == Tagclass.NilRegression.Class
   && TagFamily(Tclass.NilRegression.Class()) == tytagFamily$Class;
}

const unique Tagclass.NilRegression.Class: TyTag;

// Box/unbox axiom for Tclass.NilRegression.Class
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NilRegression.Class()) } 
  $IsBox(bx, Tclass.NilRegression.Class())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.NilRegression.Class()));

// $Is axiom for non-null type NilRegression.Class
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.NilRegression.Class()) } 
    { $Is(c#0, Tclass.NilRegression.Class?()) } 
  $Is(c#0, Tclass.NilRegression.Class())
     <==> $Is(c#0, Tclass.NilRegression.Class?()) && c#0 != null);

// $IsAlloc axiom for non-null type NilRegression.Class
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.NilRegression.Class(), $h) } 
    { $IsAlloc(c#0, Tclass.NilRegression.Class?(), $h) } 
  $IsAlloc(c#0, Tclass.NilRegression.Class(), $h)
     <==> $IsAlloc(c#0, Tclass.NilRegression.Class?(), $h));

const unique class.NilRegression.GClass?: ClassName;

function Tclass.NilRegression.GClass?(Ty, Ty, Ty) : Ty;

const unique Tagclass.NilRegression.GClass?: TyTag;

// Tclass.NilRegression.GClass? Tag
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty :: 
  { Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  Tag(Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W))
       == Tagclass.NilRegression.GClass?
     && TagFamily(Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W))
       == tytagFamily$GClass);

function Tclass.NilRegression.GClass?_0(Ty) : Ty;

// Tclass.NilRegression.GClass? injectivity 0
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty :: 
  { Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  Tclass.NilRegression.GClass?_0(Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W))
     == NilRegression.GClass$U);

function Tclass.NilRegression.GClass?_1(Ty) : Ty;

// Tclass.NilRegression.GClass? injectivity 1
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty :: 
  { Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  Tclass.NilRegression.GClass?_1(Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W))
     == NilRegression.GClass$V);

function Tclass.NilRegression.GClass?_2(Ty) : Ty;

// Tclass.NilRegression.GClass? injectivity 2
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty :: 
  { Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  Tclass.NilRegression.GClass?_2(Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W))
     == NilRegression.GClass$W);

// Box/unbox axiom for Tclass.NilRegression.GClass?
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)) } 
  $IsBox(bx, 
      Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)));

// $Is axiom for class GClass
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $o: ref :: 
  { $Is($o, 
      Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)) } 
  $Is($o, 
      Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W))
     <==> $o == null
       || dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W));

// $IsAlloc axiom for class GClass
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $o: ref, 
    $h: Heap :: 
  { $IsAlloc($o, 
      Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W), 
      $h) } 
  $IsAlloc($o, 
      Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W), 
      $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const NilRegression.GClass.u: Field
uses {
axiom FDim(NilRegression.GClass.u) == 0
   && FieldOfDecl(class.NilRegression.GClass?, field$u) == NilRegression.GClass.u
   && !$IsGhostField(NilRegression.GClass.u);
}

// GClass.u: Type axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { read($h, $o, NilRegression.GClass.u), Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
     ==> $IsBox(read($h, $o, NilRegression.GClass.u), NilRegression.GClass$U));

// GClass.u: Allocation axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { read($h, $o, NilRegression.GClass.u), Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, NilRegression.GClass.u), NilRegression.GClass$U, $h));

const NilRegression.GClass.v: Field
uses {
axiom FDim(NilRegression.GClass.v) == 0
   && FieldOfDecl(class.NilRegression.GClass?, field$v) == NilRegression.GClass.v
   && !$IsGhostField(NilRegression.GClass.v);
}

// GClass.v: Type axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { read($h, $o, NilRegression.GClass.v), Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
     ==> $IsBox(read($h, $o, NilRegression.GClass.v), NilRegression.GClass$V));

// GClass.v: Allocation axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { read($h, $o, NilRegression.GClass.v), Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, NilRegression.GClass.v), NilRegression.GClass$V, $h));

const NilRegression.GClass.w: Field
uses {
axiom FDim(NilRegression.GClass.w) == 0
   && FieldOfDecl(class.NilRegression.GClass?, field$w) == NilRegression.GClass.w
   && !$IsGhostField(NilRegression.GClass.w);
}

// GClass.w: Type axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { read($h, $o, NilRegression.GClass.w), Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
     ==> $IsBox(read($h, $o, NilRegression.GClass.w), NilRegression.GClass$W));

// GClass.w: Allocation axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { read($h, $o, NilRegression.GClass.w), Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, NilRegression.GClass.w), NilRegression.GClass$W, $h));

function NilRegression.GClass.u_k(NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    this: ref)
   : Box;

// GClass.u': Type axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $o: ref :: 
  { NilRegression.GClass.u_k(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W, $o) } 
  $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
     ==> $IsBox(NilRegression.GClass.u_k(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W, $o), 
      NilRegression.GClass$U));

// GClass.u': Allocation axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { NilRegression.GClass.u_k(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(NilRegression.GClass.u_k(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W, $o), 
      NilRegression.GClass$U, 
      $h));

function NilRegression.GClass.v_k(NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    this: ref)
   : Box;

// GClass.v': Type axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $o: ref :: 
  { NilRegression.GClass.v_k(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W, $o) } 
  $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
     ==> $IsBox(NilRegression.GClass.v_k(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W, $o), 
      NilRegression.GClass$V));

// GClass.v': Allocation axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { NilRegression.GClass.v_k(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(NilRegression.GClass.v_k(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W, $o), 
      NilRegression.GClass$V, 
      $h));

function NilRegression.GClass.w_k(NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    this: ref)
   : Box;

// GClass.w': Type axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $o: ref :: 
  { NilRegression.GClass.w_k(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W, $o) } 
  $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
     ==> $IsBox(NilRegression.GClass.w_k(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W, $o), 
      NilRegression.GClass$W));

// GClass.w': Allocation axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { NilRegression.GClass.w_k(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(NilRegression.GClass.w_k(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W, $o), 
      NilRegression.GClass$W, 
      $h));

const NilRegression.GClass.u1: Field
uses {
axiom FDim(NilRegression.GClass.u1) == 0
   && FieldOfDecl(class.NilRegression.GClass?, field$u1) == NilRegression.GClass.u1
   && !$IsGhostField(NilRegression.GClass.u1);
}

// GClass.u1: Type axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { $Unbox(read($h, $o, NilRegression.GClass.u1)): ref, Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
     ==> $Is($Unbox(read($h, $o, NilRegression.GClass.u1)): ref, 
      Tclass._System.array(NilRegression.GClass$U)));

// GClass.u1: Allocation axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { $Unbox(read($h, $o, NilRegression.GClass.u1)): ref, Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, NilRegression.GClass.u1)): ref, 
      Tclass._System.array(NilRegression.GClass$U), 
      $h));

const NilRegression.GClass.v1: Field
uses {
axiom FDim(NilRegression.GClass.v1) == 0
   && FieldOfDecl(class.NilRegression.GClass?, field$v1) == NilRegression.GClass.v1
   && !$IsGhostField(NilRegression.GClass.v1);
}

// GClass.v1: Type axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { $Unbox(read($h, $o, NilRegression.GClass.v1)): ref, Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
     ==> $Is($Unbox(read($h, $o, NilRegression.GClass.v1)): ref, 
      Tclass._System.array(NilRegression.GClass$V)));

// GClass.v1: Allocation axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { $Unbox(read($h, $o, NilRegression.GClass.v1)): ref, Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, NilRegression.GClass.v1)): ref, 
      Tclass._System.array(NilRegression.GClass$V), 
      $h));

const NilRegression.GClass.w1: Field
uses {
axiom FDim(NilRegression.GClass.w1) == 0
   && FieldOfDecl(class.NilRegression.GClass?, field$w1) == NilRegression.GClass.w1
   && !$IsGhostField(NilRegression.GClass.w1);
}

// GClass.w1: Type axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { $Unbox(read($h, $o, NilRegression.GClass.w1)): ref, Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
     ==> $Is($Unbox(read($h, $o, NilRegression.GClass.w1)): ref, 
      Tclass._System.array(NilRegression.GClass$W)));

// GClass.w1: Allocation axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { $Unbox(read($h, $o, NilRegression.GClass.w1)): ref, Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, NilRegression.GClass.w1)): ref, 
      Tclass._System.array(NilRegression.GClass$W), 
      $h));

const NilRegression.GClass.u2: Field
uses {
axiom FDim(NilRegression.GClass.u2) == 0
   && FieldOfDecl(class.NilRegression.GClass?, field$u2) == NilRegression.GClass.u2
   && !$IsGhostField(NilRegression.GClass.u2);
}

// GClass.u2: Type axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { $Unbox(read($h, $o, NilRegression.GClass.u2)): ref, Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
     ==> $Is($Unbox(read($h, $o, NilRegression.GClass.u2)): ref, 
      Tclass._System.array2(NilRegression.GClass$U)));

// GClass.u2: Allocation axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { $Unbox(read($h, $o, NilRegression.GClass.u2)): ref, Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, NilRegression.GClass.u2)): ref, 
      Tclass._System.array2(NilRegression.GClass$U), 
      $h));

const NilRegression.GClass.v2: Field
uses {
axiom FDim(NilRegression.GClass.v2) == 0
   && FieldOfDecl(class.NilRegression.GClass?, field$v2) == NilRegression.GClass.v2
   && !$IsGhostField(NilRegression.GClass.v2);
}

// GClass.v2: Type axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { $Unbox(read($h, $o, NilRegression.GClass.v2)): ref, Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
     ==> $Is($Unbox(read($h, $o, NilRegression.GClass.v2)): ref, 
      Tclass._System.array2(NilRegression.GClass$V)));

// GClass.v2: Allocation axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { $Unbox(read($h, $o, NilRegression.GClass.v2)): ref, Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, NilRegression.GClass.v2)): ref, 
      Tclass._System.array2(NilRegression.GClass$V), 
      $h));

const NilRegression.GClass.w2: Field
uses {
axiom FDim(NilRegression.GClass.w2) == 0
   && FieldOfDecl(class.NilRegression.GClass?, field$w2) == NilRegression.GClass.w2
   && !$IsGhostField(NilRegression.GClass.w2);
}

// GClass.w2: Type axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { $Unbox(read($h, $o, NilRegression.GClass.w2)): ref, Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
     ==> $Is($Unbox(read($h, $o, NilRegression.GClass.w2)): ref, 
      Tclass._System.array2(NilRegression.GClass$W)));

// GClass.w2: Allocation axiom
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    $h: Heap, 
    $o: ref :: 
  { $Unbox(read($h, $o, NilRegression.GClass.w2)): ref, Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, NilRegression.GClass.w2)): ref, 
      Tclass._System.array2(NilRegression.GClass$W), 
      $h));

function Tclass.NilRegression.GClass(Ty, Ty, Ty) : Ty;

const unique Tagclass.NilRegression.GClass: TyTag;

// Tclass.NilRegression.GClass Tag
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty :: 
  { Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  Tag(Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W))
       == Tagclass.NilRegression.GClass
     && TagFamily(Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W))
       == tytagFamily$GClass);

function Tclass.NilRegression.GClass_0(Ty) : Ty;

// Tclass.NilRegression.GClass injectivity 0
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty :: 
  { Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  Tclass.NilRegression.GClass_0(Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W))
     == NilRegression.GClass$U);

function Tclass.NilRegression.GClass_1(Ty) : Ty;

// Tclass.NilRegression.GClass injectivity 1
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty :: 
  { Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  Tclass.NilRegression.GClass_1(Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W))
     == NilRegression.GClass$V);

function Tclass.NilRegression.GClass_2(Ty) : Ty;

// Tclass.NilRegression.GClass injectivity 2
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty :: 
  { Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W) } 
  Tclass.NilRegression.GClass_2(Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W))
     == NilRegression.GClass$W);

// Box/unbox axiom for Tclass.NilRegression.GClass
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)) } 
  $IsBox(bx, 
      Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)));

// $Is axiom for non-null type NilRegression.GClass
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    c#0: ref :: 
  { $Is(c#0, 
      Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)) } 
    { $Is(c#0, 
      Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W)) } 
  $Is(c#0, 
      Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W))
     <==> $Is(c#0, 
        Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W))
       && c#0 != null);

// $IsAlloc axiom for non-null type NilRegression.GClass
axiom (forall NilRegression.GClass$U: Ty, 
    NilRegression.GClass$V: Ty, 
    NilRegression.GClass$W: Ty, 
    c#0: ref, 
    $h: Heap :: 
  { $IsAlloc(c#0, 
      Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W), 
      $h) } 
    { $IsAlloc(c#0, 
      Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W), 
      $h) } 
  $IsAlloc(c#0, 
      Tclass.NilRegression.GClass(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W), 
      $h)
     <==> $IsAlloc(c#0, 
      Tclass.NilRegression.GClass?(NilRegression.GClass$U, NilRegression.GClass$V, NilRegression.GClass$W), 
      $h));

// Constructor function declaration
function #NilRegression.DaTy.DaTy(Box) : DatatypeType;

const unique ##NilRegression.DaTy.DaTy: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #NilRegression.DaTy.DaTy(a#0#0#0) } 
  DatatypeCtorId(#NilRegression.DaTy.DaTy(a#0#0#0)) == ##NilRegression.DaTy.DaTy);
}

function NilRegression.DaTy.DaTy_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { NilRegression.DaTy.DaTy_q(d) } 
  NilRegression.DaTy.DaTy_q(d) <==> DatatypeCtorId(d) == ##NilRegression.DaTy.DaTy);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { NilRegression.DaTy.DaTy_q(d) } 
  NilRegression.DaTy.DaTy_q(d)
     ==> (exists a#1#0#0: Box :: d == #NilRegression.DaTy.DaTy(a#1#0#0)));

function Tclass.NilRegression.DaTy(Ty) : Ty;

const unique Tagclass.NilRegression.DaTy: TyTag;

// Tclass.NilRegression.DaTy Tag
axiom (forall NilRegression.DaTy$X: Ty :: 
  { Tclass.NilRegression.DaTy(NilRegression.DaTy$X) } 
  Tag(Tclass.NilRegression.DaTy(NilRegression.DaTy$X))
       == Tagclass.NilRegression.DaTy
     && TagFamily(Tclass.NilRegression.DaTy(NilRegression.DaTy$X)) == tytagFamily$DaTy);

function Tclass.NilRegression.DaTy_0(Ty) : Ty;

// Tclass.NilRegression.DaTy injectivity 0
axiom (forall NilRegression.DaTy$X: Ty :: 
  { Tclass.NilRegression.DaTy(NilRegression.DaTy$X) } 
  Tclass.NilRegression.DaTy_0(Tclass.NilRegression.DaTy(NilRegression.DaTy$X))
     == NilRegression.DaTy$X);

// Box/unbox axiom for Tclass.NilRegression.DaTy
axiom (forall NilRegression.DaTy$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.NilRegression.DaTy(NilRegression.DaTy$X)) } 
  $IsBox(bx, Tclass.NilRegression.DaTy(NilRegression.DaTy$X))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.NilRegression.DaTy(NilRegression.DaTy$X)));

// Constructor $Is
axiom (forall NilRegression.DaTy$X: Ty, a#2#0#0: Box :: 
  { $Is(#NilRegression.DaTy.DaTy(a#2#0#0), 
      Tclass.NilRegression.DaTy(NilRegression.DaTy$X)) } 
  $Is(#NilRegression.DaTy.DaTy(a#2#0#0), 
      Tclass.NilRegression.DaTy(NilRegression.DaTy$X))
     <==> $IsBox(a#2#0#0, NilRegression.DaTy$X));

// Constructor $IsAlloc
axiom (forall NilRegression.DaTy$X: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#NilRegression.DaTy.DaTy(a#2#0#0), 
      Tclass.NilRegression.DaTy(NilRegression.DaTy$X), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#NilRegression.DaTy.DaTy(a#2#0#0), 
        Tclass.NilRegression.DaTy(NilRegression.DaTy$X), 
        $h)
       <==> $IsAllocBox(a#2#0#0, NilRegression.DaTy$X, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, NilRegression.DaTy$X: Ty, $h: Heap :: 
  { $IsAllocBox(NilRegression.DaTy.get(d), NilRegression.DaTy$X, $h) } 
  $IsGoodHeap($h)
       && 
      NilRegression.DaTy.DaTy_q(d)
       && $IsAlloc(d, Tclass.NilRegression.DaTy(NilRegression.DaTy$X), $h)
     ==> $IsAllocBox(NilRegression.DaTy.get(d), NilRegression.DaTy$X, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #NilRegression.DaTy.DaTy(Lit(a#3#0#0)) } 
  #NilRegression.DaTy.DaTy(Lit(a#3#0#0)) == Lit(#NilRegression.DaTy.DaTy(a#3#0#0)));

function NilRegression.DaTy.get(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #NilRegression.DaTy.DaTy(a#4#0#0) } 
  NilRegression.DaTy.get(#NilRegression.DaTy.DaTy(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #NilRegression.DaTy.DaTy(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#NilRegression.DaTy.DaTy(a#5#0#0)));

// Depth-one case-split function
function $IsA#NilRegression.DaTy(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#NilRegression.DaTy(d) } 
  $IsA#NilRegression.DaTy(d) ==> NilRegression.DaTy.DaTy_q(d));

// Questionmark data type disjunctivity
axiom (forall NilRegression.DaTy$X: Ty, d: DatatypeType :: 
  { NilRegression.DaTy.DaTy_q(d), $Is(d, Tclass.NilRegression.DaTy(NilRegression.DaTy$X)) } 
  $Is(d, Tclass.NilRegression.DaTy(NilRegression.DaTy$X))
     ==> NilRegression.DaTy.DaTy_q(d));

// Datatype extensional equality declaration
function NilRegression.DaTy#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #NilRegression.DaTy.DaTy
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NilRegression.DaTy#Equal(a, b) } 
  NilRegression.DaTy#Equal(a, b)
     <==> NilRegression.DaTy.get(a) == NilRegression.DaTy.get(b));

// Datatype extensionality axiom: NilRegression.DaTy
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NilRegression.DaTy#Equal(a, b) } 
  NilRegression.DaTy#Equal(a, b) <==> a == b);

const unique class.NilRegression.DaTy: ClassName;

// Constructor function declaration
function #NilRegression.DaTy2.Nothing() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#NilRegression.DaTy2.Nothing()) == ##NilRegression.DaTy2.Nothing;
// Constructor literal
axiom #NilRegression.DaTy2.Nothing() == Lit(#NilRegression.DaTy2.Nothing());
}

const unique ##NilRegression.DaTy2.Nothing: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#NilRegression.DaTy2.Nothing()) == ##NilRegression.DaTy2.Nothing;
}

function NilRegression.DaTy2.Nothing_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { NilRegression.DaTy2.Nothing_q(d) } 
  NilRegression.DaTy2.Nothing_q(d)
     <==> DatatypeCtorId(d) == ##NilRegression.DaTy2.Nothing);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { NilRegression.DaTy2.Nothing_q(d) } 
  NilRegression.DaTy2.Nothing_q(d) ==> d == #NilRegression.DaTy2.Nothing());

function Tclass.NilRegression.DaTy2(Ty) : Ty;

const unique Tagclass.NilRegression.DaTy2: TyTag;

// Tclass.NilRegression.DaTy2 Tag
axiom (forall NilRegression.DaTy2$X: Ty :: 
  { Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X) } 
  Tag(Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X))
       == Tagclass.NilRegression.DaTy2
     && TagFamily(Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X))
       == tytagFamily$DaTy2);

function Tclass.NilRegression.DaTy2_0(Ty) : Ty;

// Tclass.NilRegression.DaTy2 injectivity 0
axiom (forall NilRegression.DaTy2$X: Ty :: 
  { Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X) } 
  Tclass.NilRegression.DaTy2_0(Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X))
     == NilRegression.DaTy2$X);

// Box/unbox axiom for Tclass.NilRegression.DaTy2
axiom (forall NilRegression.DaTy2$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X)) } 
  $IsBox(bx, Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X)));

// Constructor $Is
axiom (forall NilRegression.DaTy2$X: Ty :: 
  { $Is(#NilRegression.DaTy2.Nothing(), 
      Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X)) } 
  $Is(#NilRegression.DaTy2.Nothing(), 
    Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X)));

// Constructor $IsAlloc
axiom (forall NilRegression.DaTy2$X: Ty, $h: Heap :: 
  { $IsAlloc(#NilRegression.DaTy2.Nothing(), 
      Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#NilRegression.DaTy2.Nothing(), 
      Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X), 
      $h));

// Constructor function declaration
function #NilRegression.DaTy2.DaTy2(Box) : DatatypeType;

const unique ##NilRegression.DaTy2.DaTy2: DtCtorId
uses {
// Constructor identifier
axiom (forall a#10#0#0: Box :: 
  { #NilRegression.DaTy2.DaTy2(a#10#0#0) } 
  DatatypeCtorId(#NilRegression.DaTy2.DaTy2(a#10#0#0))
     == ##NilRegression.DaTy2.DaTy2);
}

function NilRegression.DaTy2.DaTy2_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { NilRegression.DaTy2.DaTy2_q(d) } 
  NilRegression.DaTy2.DaTy2_q(d)
     <==> DatatypeCtorId(d) == ##NilRegression.DaTy2.DaTy2);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { NilRegression.DaTy2.DaTy2_q(d) } 
  NilRegression.DaTy2.DaTy2_q(d)
     ==> (exists a#11#0#0: Box :: d == #NilRegression.DaTy2.DaTy2(a#11#0#0)));

// Constructor $Is
axiom (forall NilRegression.DaTy2$X: Ty, a#12#0#0: Box :: 
  { $Is(#NilRegression.DaTy2.DaTy2(a#12#0#0), 
      Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X)) } 
  $Is(#NilRegression.DaTy2.DaTy2(a#12#0#0), 
      Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X))
     <==> $IsBox(a#12#0#0, NilRegression.DaTy2$X));

// Constructor $IsAlloc
axiom (forall NilRegression.DaTy2$X: Ty, a#12#0#0: Box, $h: Heap :: 
  { $IsAlloc(#NilRegression.DaTy2.DaTy2(a#12#0#0), 
      Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#NilRegression.DaTy2.DaTy2(a#12#0#0), 
        Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X), 
        $h)
       <==> $IsAllocBox(a#12#0#0, NilRegression.DaTy2$X, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, NilRegression.DaTy2$X: Ty, $h: Heap :: 
  { $IsAllocBox(NilRegression.DaTy2.get(d), NilRegression.DaTy2$X, $h) } 
  $IsGoodHeap($h)
       && 
      NilRegression.DaTy2.DaTy2_q(d)
       && $IsAlloc(d, Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X), $h)
     ==> $IsAllocBox(NilRegression.DaTy2.get(d), NilRegression.DaTy2$X, $h));

// Constructor literal
axiom (forall a#13#0#0: Box :: 
  { #NilRegression.DaTy2.DaTy2(Lit(a#13#0#0)) } 
  #NilRegression.DaTy2.DaTy2(Lit(a#13#0#0))
     == Lit(#NilRegression.DaTy2.DaTy2(a#13#0#0)));

function NilRegression.DaTy2.get(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#14#0#0: Box :: 
  { #NilRegression.DaTy2.DaTy2(a#14#0#0) } 
  NilRegression.DaTy2.get(#NilRegression.DaTy2.DaTy2(a#14#0#0)) == a#14#0#0);

// Inductive rank
axiom (forall a#15#0#0: Box :: 
  { #NilRegression.DaTy2.DaTy2(a#15#0#0) } 
  BoxRank(a#15#0#0) < DtRank(#NilRegression.DaTy2.DaTy2(a#15#0#0)));

// Depth-one case-split function
function $IsA#NilRegression.DaTy2(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#NilRegression.DaTy2(d) } 
  $IsA#NilRegression.DaTy2(d)
     ==> NilRegression.DaTy2.Nothing_q(d) || NilRegression.DaTy2.DaTy2_q(d));

// Questionmark data type disjunctivity
axiom (forall NilRegression.DaTy2$X: Ty, d: DatatypeType :: 
  { NilRegression.DaTy2.DaTy2_q(d), $Is(d, Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X)) } 
    { NilRegression.DaTy2.Nothing_q(d), $Is(d, Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X)) } 
  $Is(d, Tclass.NilRegression.DaTy2(NilRegression.DaTy2$X))
     ==> NilRegression.DaTy2.Nothing_q(d) || NilRegression.DaTy2.DaTy2_q(d));

// Datatype extensional equality declaration
function NilRegression.DaTy2#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #NilRegression.DaTy2.Nothing
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NilRegression.DaTy2#Equal(a, b), NilRegression.DaTy2.Nothing_q(a) } 
    { NilRegression.DaTy2#Equal(a, b), NilRegression.DaTy2.Nothing_q(b) } 
  NilRegression.DaTy2.Nothing_q(a) && NilRegression.DaTy2.Nothing_q(b)
     ==> NilRegression.DaTy2#Equal(a, b));

// Datatype extensional equality definition: #NilRegression.DaTy2.DaTy2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NilRegression.DaTy2#Equal(a, b), NilRegression.DaTy2.DaTy2_q(a) } 
    { NilRegression.DaTy2#Equal(a, b), NilRegression.DaTy2.DaTy2_q(b) } 
  NilRegression.DaTy2.DaTy2_q(a) && NilRegression.DaTy2.DaTy2_q(b)
     ==> (NilRegression.DaTy2#Equal(a, b)
       <==> NilRegression.DaTy2.get(a) == NilRegression.DaTy2.get(b)));

// Datatype extensionality axiom: NilRegression.DaTy2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NilRegression.DaTy2#Equal(a, b) } 
  NilRegression.DaTy2#Equal(a, b) <==> a == b);

const unique class.NilRegression.DaTy2: ClassName;

const unique class.NilRegression.MyClass?: ClassName;

function Tclass.NilRegression.MyClass?() : Ty
uses {
// Tclass.NilRegression.MyClass? Tag
axiom Tag(Tclass.NilRegression.MyClass?()) == Tagclass.NilRegression.MyClass?
   && TagFamily(Tclass.NilRegression.MyClass?()) == tytagFamily$MyClass;
}

const unique Tagclass.NilRegression.MyClass?: TyTag;

// Box/unbox axiom for Tclass.NilRegression.MyClass?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NilRegression.MyClass?()) } 
  $IsBox(bx, Tclass.NilRegression.MyClass?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.NilRegression.MyClass?()));

// $Is axiom for class MyClass
axiom (forall $o: ref :: 
  { $Is($o, Tclass.NilRegression.MyClass?()) } 
  $Is($o, Tclass.NilRegression.MyClass?())
     <==> $o == null || dtype($o) == Tclass.NilRegression.MyClass?());

// $IsAlloc axiom for class MyClass
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.NilRegression.MyClass?(), $h) } 
  $IsAlloc($o, Tclass.NilRegression.MyClass?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.NilRegression.MyClass() : Ty
uses {
// Tclass.NilRegression.MyClass Tag
axiom Tag(Tclass.NilRegression.MyClass()) == Tagclass.NilRegression.MyClass
   && TagFamily(Tclass.NilRegression.MyClass()) == tytagFamily$MyClass;
}

const unique Tagclass.NilRegression.MyClass: TyTag;

// Box/unbox axiom for Tclass.NilRegression.MyClass
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NilRegression.MyClass()) } 
  $IsBox(bx, Tclass.NilRegression.MyClass())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.NilRegression.MyClass()));

// $Is axiom for non-null type NilRegression.MyClass
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.NilRegression.MyClass()) } 
    { $Is(c#0, Tclass.NilRegression.MyClass?()) } 
  $Is(c#0, Tclass.NilRegression.MyClass())
     <==> $Is(c#0, Tclass.NilRegression.MyClass?()) && c#0 != null);

// $IsAlloc axiom for non-null type NilRegression.MyClass
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.NilRegression.MyClass(), $h) } 
    { $IsAlloc(c#0, Tclass.NilRegression.MyClass?(), $h) } 
  $IsAlloc(c#0, Tclass.NilRegression.MyClass(), $h)
     <==> $IsAlloc(c#0, Tclass.NilRegression.MyClass?(), $h));

const unique class.DatatypeDefaultValues.__default: ClassName;

procedure {:verboseName "DatatypeDefaultValues.Test (well-formedness)"} CheckWellFormed$$DatatypeDefaultValues.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DatatypeDefaultValues.Test (call)"} Call$$DatatypeDefaultValues.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// Constructor function declaration
function #DatatypeDefaultValues.EnumDatatype.MakeZero() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeDefaultValues.EnumDatatype.MakeZero())
   == ##DatatypeDefaultValues.EnumDatatype.MakeZero;
// Constructor $Is
axiom $Is(#DatatypeDefaultValues.EnumDatatype.MakeZero(), 
  Tclass.DatatypeDefaultValues.EnumDatatype());
// Constructor literal
axiom #DatatypeDefaultValues.EnumDatatype.MakeZero()
   == Lit(#DatatypeDefaultValues.EnumDatatype.MakeZero());
}

const unique ##DatatypeDefaultValues.EnumDatatype.MakeZero: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeDefaultValues.EnumDatatype.MakeZero())
   == ##DatatypeDefaultValues.EnumDatatype.MakeZero;
}

function DatatypeDefaultValues.EnumDatatype.MakeZero_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.EnumDatatype.MakeZero_q(d) } 
  DatatypeDefaultValues.EnumDatatype.MakeZero_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeDefaultValues.EnumDatatype.MakeZero);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.EnumDatatype.MakeZero_q(d) } 
  DatatypeDefaultValues.EnumDatatype.MakeZero_q(d)
     ==> d == #DatatypeDefaultValues.EnumDatatype.MakeZero());

function Tclass.DatatypeDefaultValues.EnumDatatype() : Ty
uses {
// Tclass.DatatypeDefaultValues.EnumDatatype Tag
axiom Tag(Tclass.DatatypeDefaultValues.EnumDatatype())
     == Tagclass.DatatypeDefaultValues.EnumDatatype
   && TagFamily(Tclass.DatatypeDefaultValues.EnumDatatype())
     == tytagFamily$EnumDatatype;
}

const unique Tagclass.DatatypeDefaultValues.EnumDatatype: TyTag;

// Box/unbox axiom for Tclass.DatatypeDefaultValues.EnumDatatype
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeDefaultValues.EnumDatatype()) } 
  $IsBox(bx, Tclass.DatatypeDefaultValues.EnumDatatype())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DatatypeDefaultValues.EnumDatatype()));

// Constructor function declaration
function #DatatypeDefaultValues.EnumDatatype.MakeOne() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeDefaultValues.EnumDatatype.MakeOne())
   == ##DatatypeDefaultValues.EnumDatatype.MakeOne;
// Constructor $Is
axiom $Is(#DatatypeDefaultValues.EnumDatatype.MakeOne(), 
  Tclass.DatatypeDefaultValues.EnumDatatype());
// Constructor literal
axiom #DatatypeDefaultValues.EnumDatatype.MakeOne()
   == Lit(#DatatypeDefaultValues.EnumDatatype.MakeOne());
}

const unique ##DatatypeDefaultValues.EnumDatatype.MakeOne: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeDefaultValues.EnumDatatype.MakeOne())
   == ##DatatypeDefaultValues.EnumDatatype.MakeOne;
}

function DatatypeDefaultValues.EnumDatatype.MakeOne_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.EnumDatatype.MakeOne_q(d) } 
  DatatypeDefaultValues.EnumDatatype.MakeOne_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeDefaultValues.EnumDatatype.MakeOne);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.EnumDatatype.MakeOne_q(d) } 
  DatatypeDefaultValues.EnumDatatype.MakeOne_q(d)
     ==> d == #DatatypeDefaultValues.EnumDatatype.MakeOne());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DatatypeDefaultValues.EnumDatatype(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DatatypeDefaultValues.EnumDatatype())
     ==> $IsAlloc(d, Tclass.DatatypeDefaultValues.EnumDatatype(), $h));

// Depth-one case-split function
function $IsA#DatatypeDefaultValues.EnumDatatype(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeDefaultValues.EnumDatatype(d) } 
  $IsA#DatatypeDefaultValues.EnumDatatype(d)
     ==> DatatypeDefaultValues.EnumDatatype.MakeZero_q(d)
       || DatatypeDefaultValues.EnumDatatype.MakeOne_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.EnumDatatype.MakeOne_q(d), $Is(d, Tclass.DatatypeDefaultValues.EnumDatatype()) } 
    { DatatypeDefaultValues.EnumDatatype.MakeZero_q(d), $Is(d, Tclass.DatatypeDefaultValues.EnumDatatype()) } 
  $Is(d, Tclass.DatatypeDefaultValues.EnumDatatype())
     ==> DatatypeDefaultValues.EnumDatatype.MakeZero_q(d)
       || DatatypeDefaultValues.EnumDatatype.MakeOne_q(d));

// Datatype extensional equality declaration
function DatatypeDefaultValues.EnumDatatype#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeDefaultValues.EnumDatatype.MakeZero
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.EnumDatatype#Equal(a, b), DatatypeDefaultValues.EnumDatatype.MakeZero_q(a) } 
    { DatatypeDefaultValues.EnumDatatype#Equal(a, b), DatatypeDefaultValues.EnumDatatype.MakeZero_q(b) } 
  DatatypeDefaultValues.EnumDatatype.MakeZero_q(a)
       && DatatypeDefaultValues.EnumDatatype.MakeZero_q(b)
     ==> DatatypeDefaultValues.EnumDatatype#Equal(a, b));

// Datatype extensional equality definition: #DatatypeDefaultValues.EnumDatatype.MakeOne
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.EnumDatatype#Equal(a, b), DatatypeDefaultValues.EnumDatatype.MakeOne_q(a) } 
    { DatatypeDefaultValues.EnumDatatype#Equal(a, b), DatatypeDefaultValues.EnumDatatype.MakeOne_q(b) } 
  DatatypeDefaultValues.EnumDatatype.MakeOne_q(a)
       && DatatypeDefaultValues.EnumDatatype.MakeOne_q(b)
     ==> DatatypeDefaultValues.EnumDatatype#Equal(a, b));

// Datatype extensionality axiom: DatatypeDefaultValues.EnumDatatype
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.EnumDatatype#Equal(a, b) } 
  DatatypeDefaultValues.EnumDatatype#Equal(a, b) <==> a == b);

const unique class.DatatypeDefaultValues.EnumDatatype: ClassName;

// Constructor function declaration
function #DatatypeDefaultValues.IntList.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeDefaultValues.IntList.Nil())
   == ##DatatypeDefaultValues.IntList.Nil;
// Constructor $Is
axiom $Is(#DatatypeDefaultValues.IntList.Nil(), Tclass.DatatypeDefaultValues.IntList());
// Constructor literal
axiom #DatatypeDefaultValues.IntList.Nil()
   == Lit(#DatatypeDefaultValues.IntList.Nil());
}

const unique ##DatatypeDefaultValues.IntList.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeDefaultValues.IntList.Nil())
   == ##DatatypeDefaultValues.IntList.Nil;
}

function DatatypeDefaultValues.IntList.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.IntList.Nil_q(d) } 
  DatatypeDefaultValues.IntList.Nil_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeDefaultValues.IntList.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.IntList.Nil_q(d) } 
  DatatypeDefaultValues.IntList.Nil_q(d)
     ==> d == #DatatypeDefaultValues.IntList.Nil());

function Tclass.DatatypeDefaultValues.IntList() : Ty
uses {
// Tclass.DatatypeDefaultValues.IntList Tag
axiom Tag(Tclass.DatatypeDefaultValues.IntList())
     == Tagclass.DatatypeDefaultValues.IntList
   && TagFamily(Tclass.DatatypeDefaultValues.IntList()) == tytagFamily$IntList;
}

const unique Tagclass.DatatypeDefaultValues.IntList: TyTag;

// Box/unbox axiom for Tclass.DatatypeDefaultValues.IntList
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeDefaultValues.IntList()) } 
  $IsBox(bx, Tclass.DatatypeDefaultValues.IntList())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DatatypeDefaultValues.IntList()));

// Constructor function declaration
function #DatatypeDefaultValues.IntList.Cons(int, DatatypeType) : DatatypeType;

const unique ##DatatypeDefaultValues.IntList.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: int, a#12#1#0: DatatypeType :: 
  { #DatatypeDefaultValues.IntList.Cons(a#12#0#0, a#12#1#0) } 
  DatatypeCtorId(#DatatypeDefaultValues.IntList.Cons(a#12#0#0, a#12#1#0))
     == ##DatatypeDefaultValues.IntList.Cons);
}

function DatatypeDefaultValues.IntList.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.IntList.Cons_q(d) } 
  DatatypeDefaultValues.IntList.Cons_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeDefaultValues.IntList.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.IntList.Cons_q(d) } 
  DatatypeDefaultValues.IntList.Cons_q(d)
     ==> (exists a#13#0#0: int, a#13#1#0: DatatypeType :: 
      d == #DatatypeDefaultValues.IntList.Cons(a#13#0#0, a#13#1#0)));

// Constructor $Is
axiom (forall a#14#0#0: int, a#14#1#0: DatatypeType :: 
  { $Is(#DatatypeDefaultValues.IntList.Cons(a#14#0#0, a#14#1#0), 
      Tclass.DatatypeDefaultValues.IntList()) } 
  $Is(#DatatypeDefaultValues.IntList.Cons(a#14#0#0, a#14#1#0), 
      Tclass.DatatypeDefaultValues.IntList())
     <==> $Is(a#14#0#0, TInt) && $Is(a#14#1#0, Tclass.DatatypeDefaultValues.IntList()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeDefaultValues.IntList._h2(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeDefaultValues.IntList.Cons_q(d)
       && $IsAlloc(d, Tclass.DatatypeDefaultValues.IntList(), $h)
     ==> $IsAlloc(DatatypeDefaultValues.IntList._h2(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeDefaultValues.IntList._h3(d), Tclass.DatatypeDefaultValues.IntList(), $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeDefaultValues.IntList.Cons_q(d)
       && $IsAlloc(d, Tclass.DatatypeDefaultValues.IntList(), $h)
     ==> $IsAlloc(DatatypeDefaultValues.IntList._h3(d), Tclass.DatatypeDefaultValues.IntList(), $h));

// Constructor literal
axiom (forall a#15#0#0: int, a#15#1#0: DatatypeType :: 
  { #DatatypeDefaultValues.IntList.Cons(LitInt(a#15#0#0), Lit(a#15#1#0)) } 
  #DatatypeDefaultValues.IntList.Cons(LitInt(a#15#0#0), Lit(a#15#1#0))
     == Lit(#DatatypeDefaultValues.IntList.Cons(a#15#0#0, a#15#1#0)));

function DatatypeDefaultValues.IntList._h2(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#16#0#0: int, a#16#1#0: DatatypeType :: 
  { #DatatypeDefaultValues.IntList.Cons(a#16#0#0, a#16#1#0) } 
  DatatypeDefaultValues.IntList._h2(#DatatypeDefaultValues.IntList.Cons(a#16#0#0, a#16#1#0))
     == a#16#0#0);

function DatatypeDefaultValues.IntList._h3(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#17#0#0: int, a#17#1#0: DatatypeType :: 
  { #DatatypeDefaultValues.IntList.Cons(a#17#0#0, a#17#1#0) } 
  DatatypeDefaultValues.IntList._h3(#DatatypeDefaultValues.IntList.Cons(a#17#0#0, a#17#1#0))
     == a#17#1#0);

// Inductive rank
axiom (forall a#18#0#0: int, a#18#1#0: DatatypeType :: 
  { #DatatypeDefaultValues.IntList.Cons(a#18#0#0, a#18#1#0) } 
  DtRank(a#18#1#0)
     < DtRank(#DatatypeDefaultValues.IntList.Cons(a#18#0#0, a#18#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DatatypeDefaultValues.IntList(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DatatypeDefaultValues.IntList())
     ==> $IsAlloc(d, Tclass.DatatypeDefaultValues.IntList(), $h));

// Depth-one case-split function
function $IsA#DatatypeDefaultValues.IntList(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeDefaultValues.IntList(d) } 
  $IsA#DatatypeDefaultValues.IntList(d)
     ==> DatatypeDefaultValues.IntList.Nil_q(d)
       || DatatypeDefaultValues.IntList.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.IntList.Cons_q(d), $Is(d, Tclass.DatatypeDefaultValues.IntList()) } 
    { DatatypeDefaultValues.IntList.Nil_q(d), $Is(d, Tclass.DatatypeDefaultValues.IntList()) } 
  $Is(d, Tclass.DatatypeDefaultValues.IntList())
     ==> DatatypeDefaultValues.IntList.Nil_q(d)
       || DatatypeDefaultValues.IntList.Cons_q(d));

// Datatype extensional equality declaration
function DatatypeDefaultValues.IntList#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeDefaultValues.IntList.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.IntList#Equal(a, b), DatatypeDefaultValues.IntList.Nil_q(a) } 
    { DatatypeDefaultValues.IntList#Equal(a, b), DatatypeDefaultValues.IntList.Nil_q(b) } 
  DatatypeDefaultValues.IntList.Nil_q(a) && DatatypeDefaultValues.IntList.Nil_q(b)
     ==> DatatypeDefaultValues.IntList#Equal(a, b));

// Datatype extensional equality definition: #DatatypeDefaultValues.IntList.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.IntList#Equal(a, b), DatatypeDefaultValues.IntList.Cons_q(a) } 
    { DatatypeDefaultValues.IntList#Equal(a, b), DatatypeDefaultValues.IntList.Cons_q(b) } 
  DatatypeDefaultValues.IntList.Cons_q(a)
       && DatatypeDefaultValues.IntList.Cons_q(b)
     ==> (DatatypeDefaultValues.IntList#Equal(a, b)
       <==> DatatypeDefaultValues.IntList._h2(a) == DatatypeDefaultValues.IntList._h2(b)
         && DatatypeDefaultValues.IntList#Equal(DatatypeDefaultValues.IntList._h3(a), DatatypeDefaultValues.IntList._h3(b))));

// Datatype extensionality axiom: DatatypeDefaultValues.IntList
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.IntList#Equal(a, b) } 
  DatatypeDefaultValues.IntList#Equal(a, b) <==> a == b);

const unique class.DatatypeDefaultValues.IntList: ClassName;

// Constructor function declaration
function #DatatypeDefaultValues.Cell.MakeCell(Box) : DatatypeType;

const unique ##DatatypeDefaultValues.Cell.MakeCell: DtCtorId
uses {
// Constructor identifier
axiom (forall a#19#0#0: Box :: 
  { #DatatypeDefaultValues.Cell.MakeCell(a#19#0#0) } 
  DatatypeCtorId(#DatatypeDefaultValues.Cell.MakeCell(a#19#0#0))
     == ##DatatypeDefaultValues.Cell.MakeCell);
}

function DatatypeDefaultValues.Cell.MakeCell_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.Cell.MakeCell_q(d) } 
  DatatypeDefaultValues.Cell.MakeCell_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeDefaultValues.Cell.MakeCell);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.Cell.MakeCell_q(d) } 
  DatatypeDefaultValues.Cell.MakeCell_q(d)
     ==> (exists a#20#0#0: Box :: d == #DatatypeDefaultValues.Cell.MakeCell(a#20#0#0)));

function Tclass.DatatypeDefaultValues.Cell(Ty) : Ty;

const unique Tagclass.DatatypeDefaultValues.Cell: TyTag;

// Tclass.DatatypeDefaultValues.Cell Tag
axiom (forall DatatypeDefaultValues.Cell$B: Ty :: 
  { Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.Cell$B) } 
  Tag(Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.Cell$B))
       == Tagclass.DatatypeDefaultValues.Cell
     && TagFamily(Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.Cell$B))
       == tytagFamily$Cell);

function Tclass.DatatypeDefaultValues.Cell_0(Ty) : Ty;

// Tclass.DatatypeDefaultValues.Cell injectivity 0
axiom (forall DatatypeDefaultValues.Cell$B: Ty :: 
  { Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.Cell$B) } 
  Tclass.DatatypeDefaultValues.Cell_0(Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.Cell$B))
     == DatatypeDefaultValues.Cell$B);

// Box/unbox axiom for Tclass.DatatypeDefaultValues.Cell
axiom (forall DatatypeDefaultValues.Cell$B: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.Cell$B)) } 
  $IsBox(bx, Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.Cell$B))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.Cell$B)));

// Constructor $Is
axiom (forall DatatypeDefaultValues.Cell$B: Ty, a#21#0#0: Box :: 
  { $Is(#DatatypeDefaultValues.Cell.MakeCell(a#21#0#0), 
      Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.Cell$B)) } 
  $Is(#DatatypeDefaultValues.Cell.MakeCell(a#21#0#0), 
      Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.Cell$B))
     <==> $IsBox(a#21#0#0, DatatypeDefaultValues.Cell$B));

// Constructor $IsAlloc
axiom (forall DatatypeDefaultValues.Cell$B: Ty, a#21#0#0: Box, $h: Heap :: 
  { $IsAlloc(#DatatypeDefaultValues.Cell.MakeCell(a#21#0#0), 
      Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.Cell$B), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DatatypeDefaultValues.Cell.MakeCell(a#21#0#0), 
        Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.Cell$B), 
        $h)
       <==> $IsAllocBox(a#21#0#0, DatatypeDefaultValues.Cell$B, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DatatypeDefaultValues.Cell$B: Ty, $h: Heap :: 
  { $IsAllocBox(DatatypeDefaultValues.Cell._h4(d), DatatypeDefaultValues.Cell$B, $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeDefaultValues.Cell.MakeCell_q(d)
       && $IsAlloc(d, Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.Cell$B), $h)
     ==> $IsAllocBox(DatatypeDefaultValues.Cell._h4(d), DatatypeDefaultValues.Cell$B, $h));

// Constructor literal
axiom (forall a#22#0#0: Box :: 
  { #DatatypeDefaultValues.Cell.MakeCell(Lit(a#22#0#0)) } 
  #DatatypeDefaultValues.Cell.MakeCell(Lit(a#22#0#0))
     == Lit(#DatatypeDefaultValues.Cell.MakeCell(a#22#0#0)));

function DatatypeDefaultValues.Cell._h4(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#23#0#0: Box :: 
  { #DatatypeDefaultValues.Cell.MakeCell(a#23#0#0) } 
  DatatypeDefaultValues.Cell._h4(#DatatypeDefaultValues.Cell.MakeCell(a#23#0#0))
     == a#23#0#0);

// Inductive rank
axiom (forall a#24#0#0: Box :: 
  { #DatatypeDefaultValues.Cell.MakeCell(a#24#0#0) } 
  BoxRank(a#24#0#0) < DtRank(#DatatypeDefaultValues.Cell.MakeCell(a#24#0#0)));

// Depth-one case-split function
function $IsA#DatatypeDefaultValues.Cell(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeDefaultValues.Cell(d) } 
  $IsA#DatatypeDefaultValues.Cell(d) ==> DatatypeDefaultValues.Cell.MakeCell_q(d));

// Questionmark data type disjunctivity
axiom (forall DatatypeDefaultValues.Cell$B: Ty, d: DatatypeType :: 
  { DatatypeDefaultValues.Cell.MakeCell_q(d), $Is(d, Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.Cell$B)) } 
  $Is(d, Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.Cell$B))
     ==> DatatypeDefaultValues.Cell.MakeCell_q(d));

// Datatype extensional equality declaration
function DatatypeDefaultValues.Cell#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeDefaultValues.Cell.MakeCell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.Cell#Equal(a, b) } 
  DatatypeDefaultValues.Cell#Equal(a, b)
     <==> DatatypeDefaultValues.Cell._h4(a) == DatatypeDefaultValues.Cell._h4(b));

// Datatype extensionality axiom: DatatypeDefaultValues.Cell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.Cell#Equal(a, b) } 
  DatatypeDefaultValues.Cell#Equal(a, b) <==> a == b);

const unique class.DatatypeDefaultValues.Cell: ClassName;

// Constructor function declaration
function #DatatypeDefaultValues.GenericTree.Leaf() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeDefaultValues.GenericTree.Leaf())
   == ##DatatypeDefaultValues.GenericTree.Leaf;
// Constructor literal
axiom #DatatypeDefaultValues.GenericTree.Leaf()
   == Lit(#DatatypeDefaultValues.GenericTree.Leaf());
}

const unique ##DatatypeDefaultValues.GenericTree.Leaf: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeDefaultValues.GenericTree.Leaf())
   == ##DatatypeDefaultValues.GenericTree.Leaf;
}

function DatatypeDefaultValues.GenericTree.Leaf_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.GenericTree.Leaf_q(d) } 
  DatatypeDefaultValues.GenericTree.Leaf_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeDefaultValues.GenericTree.Leaf);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.GenericTree.Leaf_q(d) } 
  DatatypeDefaultValues.GenericTree.Leaf_q(d)
     ==> d == #DatatypeDefaultValues.GenericTree.Leaf());

function Tclass.DatatypeDefaultValues.GenericTree(Ty) : Ty;

const unique Tagclass.DatatypeDefaultValues.GenericTree: TyTag;

// Tclass.DatatypeDefaultValues.GenericTree Tag
axiom (forall DatatypeDefaultValues.GenericTree$A: Ty :: 
  { Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A) } 
  Tag(Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A))
       == Tagclass.DatatypeDefaultValues.GenericTree
     && TagFamily(Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A))
       == tytagFamily$GenericTree);

function Tclass.DatatypeDefaultValues.GenericTree_0(Ty) : Ty;

// Tclass.DatatypeDefaultValues.GenericTree injectivity 0
axiom (forall DatatypeDefaultValues.GenericTree$A: Ty :: 
  { Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A) } 
  Tclass.DatatypeDefaultValues.GenericTree_0(Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A))
     == DatatypeDefaultValues.GenericTree$A);

// Box/unbox axiom for Tclass.DatatypeDefaultValues.GenericTree
axiom (forall DatatypeDefaultValues.GenericTree$A: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A)) } 
  $IsBox(bx, 
      Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A)));

// Constructor $Is
axiom (forall DatatypeDefaultValues.GenericTree$A: Ty :: 
  { $Is(#DatatypeDefaultValues.GenericTree.Leaf(), 
      Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A)) } 
  $Is(#DatatypeDefaultValues.GenericTree.Leaf(), 
    Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A)));

// Constructor $IsAlloc
axiom (forall DatatypeDefaultValues.GenericTree$A: Ty, $h: Heap :: 
  { $IsAlloc(#DatatypeDefaultValues.GenericTree.Leaf(), 
      Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#DatatypeDefaultValues.GenericTree.Leaf(), 
      Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A), 
      $h));

// Constructor function declaration
function #DatatypeDefaultValues.GenericTree.Node(DatatypeType, DatatypeType) : DatatypeType;

const unique ##DatatypeDefaultValues.GenericTree.Node: DtCtorId
uses {
// Constructor identifier
axiom (forall a#29#0#0: DatatypeType, a#29#1#0: DatatypeType :: 
  { #DatatypeDefaultValues.GenericTree.Node(a#29#0#0, a#29#1#0) } 
  DatatypeCtorId(#DatatypeDefaultValues.GenericTree.Node(a#29#0#0, a#29#1#0))
     == ##DatatypeDefaultValues.GenericTree.Node);
}

function DatatypeDefaultValues.GenericTree.Node_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.GenericTree.Node_q(d) } 
  DatatypeDefaultValues.GenericTree.Node_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeDefaultValues.GenericTree.Node);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.GenericTree.Node_q(d) } 
  DatatypeDefaultValues.GenericTree.Node_q(d)
     ==> (exists a#30#0#0: DatatypeType, a#30#1#0: DatatypeType :: 
      d == #DatatypeDefaultValues.GenericTree.Node(a#30#0#0, a#30#1#0)));

// Constructor $Is
axiom (forall DatatypeDefaultValues.GenericTree$A: Ty, 
    a#31#0#0: DatatypeType, 
    a#31#1#0: DatatypeType :: 
  { $Is(#DatatypeDefaultValues.GenericTree.Node(a#31#0#0, a#31#1#0), 
      Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A)) } 
  $Is(#DatatypeDefaultValues.GenericTree.Node(a#31#0#0, a#31#1#0), 
      Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A))
     <==> $Is(a#31#0#0, 
        Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A))
       && $Is(a#31#1#0, 
        Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A)));

// Constructor $IsAlloc
axiom (forall DatatypeDefaultValues.GenericTree$A: Ty, 
    a#31#0#0: DatatypeType, 
    a#31#1#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#DatatypeDefaultValues.GenericTree.Node(a#31#0#0, a#31#1#0), 
      Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DatatypeDefaultValues.GenericTree.Node(a#31#0#0, a#31#1#0), 
        Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A), 
        $h)
       <==> $IsAlloc(a#31#0#0, 
          Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A), 
          $h)
         && $IsAlloc(a#31#1#0, 
          Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A), 
          $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DatatypeDefaultValues.GenericTree$A: Ty, $h: Heap :: 
  { $IsAlloc(DatatypeDefaultValues.GenericTree._h5(d), 
      Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A), 
      $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeDefaultValues.GenericTree.Node_q(d)
       && $IsAlloc(d, 
        Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A), 
        $h)
     ==> $IsAlloc(DatatypeDefaultValues.GenericTree._h5(d), 
      Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A), 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DatatypeDefaultValues.GenericTree$A: Ty, $h: Heap :: 
  { $IsAlloc(DatatypeDefaultValues.GenericTree._h6(d), 
      Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A), 
      $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeDefaultValues.GenericTree.Node_q(d)
       && $IsAlloc(d, 
        Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A), 
        $h)
     ==> $IsAlloc(DatatypeDefaultValues.GenericTree._h6(d), 
      Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A), 
      $h));

// Constructor literal
axiom (forall a#32#0#0: DatatypeType, a#32#1#0: DatatypeType :: 
  { #DatatypeDefaultValues.GenericTree.Node(Lit(a#32#0#0), Lit(a#32#1#0)) } 
  #DatatypeDefaultValues.GenericTree.Node(Lit(a#32#0#0), Lit(a#32#1#0))
     == Lit(#DatatypeDefaultValues.GenericTree.Node(a#32#0#0, a#32#1#0)));

function DatatypeDefaultValues.GenericTree._h5(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#33#0#0: DatatypeType, a#33#1#0: DatatypeType :: 
  { #DatatypeDefaultValues.GenericTree.Node(a#33#0#0, a#33#1#0) } 
  DatatypeDefaultValues.GenericTree._h5(#DatatypeDefaultValues.GenericTree.Node(a#33#0#0, a#33#1#0))
     == a#33#0#0);

// Inductive rank
axiom (forall a#34#0#0: DatatypeType, a#34#1#0: DatatypeType :: 
  { #DatatypeDefaultValues.GenericTree.Node(a#34#0#0, a#34#1#0) } 
  DtRank(a#34#0#0)
     < DtRank(#DatatypeDefaultValues.GenericTree.Node(a#34#0#0, a#34#1#0)));

function DatatypeDefaultValues.GenericTree._h6(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#35#0#0: DatatypeType, a#35#1#0: DatatypeType :: 
  { #DatatypeDefaultValues.GenericTree.Node(a#35#0#0, a#35#1#0) } 
  DatatypeDefaultValues.GenericTree._h6(#DatatypeDefaultValues.GenericTree.Node(a#35#0#0, a#35#1#0))
     == a#35#1#0);

// Inductive rank
axiom (forall a#36#0#0: DatatypeType, a#36#1#0: DatatypeType :: 
  { #DatatypeDefaultValues.GenericTree.Node(a#36#0#0, a#36#1#0) } 
  DtRank(a#36#1#0)
     < DtRank(#DatatypeDefaultValues.GenericTree.Node(a#36#0#0, a#36#1#0)));

// Depth-one case-split function
function $IsA#DatatypeDefaultValues.GenericTree(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeDefaultValues.GenericTree(d) } 
  $IsA#DatatypeDefaultValues.GenericTree(d)
     ==> DatatypeDefaultValues.GenericTree.Leaf_q(d)
       || DatatypeDefaultValues.GenericTree.Node_q(d));

// Questionmark data type disjunctivity
axiom (forall DatatypeDefaultValues.GenericTree$A: Ty, d: DatatypeType :: 
  { DatatypeDefaultValues.GenericTree.Node_q(d), $Is(d, Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A)) } 
    { DatatypeDefaultValues.GenericTree.Leaf_q(d), $Is(d, Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A)) } 
  $Is(d, Tclass.DatatypeDefaultValues.GenericTree(DatatypeDefaultValues.GenericTree$A))
     ==> DatatypeDefaultValues.GenericTree.Leaf_q(d)
       || DatatypeDefaultValues.GenericTree.Node_q(d));

// Datatype extensional equality declaration
function DatatypeDefaultValues.GenericTree#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeDefaultValues.GenericTree.Leaf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.GenericTree#Equal(a, b), DatatypeDefaultValues.GenericTree.Leaf_q(a) } 
    { DatatypeDefaultValues.GenericTree#Equal(a, b), DatatypeDefaultValues.GenericTree.Leaf_q(b) } 
  DatatypeDefaultValues.GenericTree.Leaf_q(a)
       && DatatypeDefaultValues.GenericTree.Leaf_q(b)
     ==> DatatypeDefaultValues.GenericTree#Equal(a, b));

// Datatype extensional equality definition: #DatatypeDefaultValues.GenericTree.Node
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.GenericTree#Equal(a, b), DatatypeDefaultValues.GenericTree.Node_q(a) } 
    { DatatypeDefaultValues.GenericTree#Equal(a, b), DatatypeDefaultValues.GenericTree.Node_q(b) } 
  DatatypeDefaultValues.GenericTree.Node_q(a)
       && DatatypeDefaultValues.GenericTree.Node_q(b)
     ==> (DatatypeDefaultValues.GenericTree#Equal(a, b)
       <==> DatatypeDefaultValues.GenericTree#Equal(DatatypeDefaultValues.GenericTree._h5(a), 
          DatatypeDefaultValues.GenericTree._h5(b))
         && DatatypeDefaultValues.GenericTree#Equal(DatatypeDefaultValues.GenericTree._h6(a), 
          DatatypeDefaultValues.GenericTree._h6(b))));

// Datatype extensionality axiom: DatatypeDefaultValues.GenericTree
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.GenericTree#Equal(a, b) } 
  DatatypeDefaultValues.GenericTree#Equal(a, b) <==> a == b);

const unique class.DatatypeDefaultValues.GenericTree: ClassName;

// Constructor function declaration
function #DatatypeDefaultValues.Complicated.ComplA(Box, Box) : DatatypeType;

const unique ##DatatypeDefaultValues.Complicated.ComplA: DtCtorId
uses {
// Constructor identifier
axiom (forall a#37#0#0: Box, a#37#1#0: Box :: 
  { #DatatypeDefaultValues.Complicated.ComplA(a#37#0#0, a#37#1#0) } 
  DatatypeCtorId(#DatatypeDefaultValues.Complicated.ComplA(a#37#0#0, a#37#1#0))
     == ##DatatypeDefaultValues.Complicated.ComplA);
}

function DatatypeDefaultValues.Complicated.ComplA_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.Complicated.ComplA_q(d) } 
  DatatypeDefaultValues.Complicated.ComplA_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeDefaultValues.Complicated.ComplA);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.Complicated.ComplA_q(d) } 
  DatatypeDefaultValues.Complicated.ComplA_q(d)
     ==> (exists a#38#0#0: Box, a#38#1#0: Box :: 
      d == #DatatypeDefaultValues.Complicated.ComplA(a#38#0#0, a#38#1#0)));

function Tclass.DatatypeDefaultValues.Complicated(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass.DatatypeDefaultValues.Complicated: TyTag;

// Tclass.DatatypeDefaultValues.Complicated Tag
axiom (forall DatatypeDefaultValues.Complicated$K: Ty, 
    DatatypeDefaultValues.Complicated$L: Ty, 
    DatatypeDefaultValues.Complicated$M: Ty, 
    DatatypeDefaultValues.Complicated$N: Ty :: 
  { Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
      DatatypeDefaultValues.Complicated$L, 
      DatatypeDefaultValues.Complicated$M, 
      DatatypeDefaultValues.Complicated$N) } 
  Tag(Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
          DatatypeDefaultValues.Complicated$L, 
          DatatypeDefaultValues.Complicated$M, 
          DatatypeDefaultValues.Complicated$N))
       == Tagclass.DatatypeDefaultValues.Complicated
     && TagFamily(Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
          DatatypeDefaultValues.Complicated$L, 
          DatatypeDefaultValues.Complicated$M, 
          DatatypeDefaultValues.Complicated$N))
       == tytagFamily$Complicated);

function Tclass.DatatypeDefaultValues.Complicated_0(Ty) : Ty;

// Tclass.DatatypeDefaultValues.Complicated injectivity 0
axiom (forall DatatypeDefaultValues.Complicated$K: Ty, 
    DatatypeDefaultValues.Complicated$L: Ty, 
    DatatypeDefaultValues.Complicated$M: Ty, 
    DatatypeDefaultValues.Complicated$N: Ty :: 
  { Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
      DatatypeDefaultValues.Complicated$L, 
      DatatypeDefaultValues.Complicated$M, 
      DatatypeDefaultValues.Complicated$N) } 
  Tclass.DatatypeDefaultValues.Complicated_0(Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N))
     == DatatypeDefaultValues.Complicated$K);

function Tclass.DatatypeDefaultValues.Complicated_1(Ty) : Ty;

// Tclass.DatatypeDefaultValues.Complicated injectivity 1
axiom (forall DatatypeDefaultValues.Complicated$K: Ty, 
    DatatypeDefaultValues.Complicated$L: Ty, 
    DatatypeDefaultValues.Complicated$M: Ty, 
    DatatypeDefaultValues.Complicated$N: Ty :: 
  { Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
      DatatypeDefaultValues.Complicated$L, 
      DatatypeDefaultValues.Complicated$M, 
      DatatypeDefaultValues.Complicated$N) } 
  Tclass.DatatypeDefaultValues.Complicated_1(Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N))
     == DatatypeDefaultValues.Complicated$L);

function Tclass.DatatypeDefaultValues.Complicated_2(Ty) : Ty;

// Tclass.DatatypeDefaultValues.Complicated injectivity 2
axiom (forall DatatypeDefaultValues.Complicated$K: Ty, 
    DatatypeDefaultValues.Complicated$L: Ty, 
    DatatypeDefaultValues.Complicated$M: Ty, 
    DatatypeDefaultValues.Complicated$N: Ty :: 
  { Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
      DatatypeDefaultValues.Complicated$L, 
      DatatypeDefaultValues.Complicated$M, 
      DatatypeDefaultValues.Complicated$N) } 
  Tclass.DatatypeDefaultValues.Complicated_2(Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N))
     == DatatypeDefaultValues.Complicated$M);

function Tclass.DatatypeDefaultValues.Complicated_3(Ty) : Ty;

// Tclass.DatatypeDefaultValues.Complicated injectivity 3
axiom (forall DatatypeDefaultValues.Complicated$K: Ty, 
    DatatypeDefaultValues.Complicated$L: Ty, 
    DatatypeDefaultValues.Complicated$M: Ty, 
    DatatypeDefaultValues.Complicated$N: Ty :: 
  { Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
      DatatypeDefaultValues.Complicated$L, 
      DatatypeDefaultValues.Complicated$M, 
      DatatypeDefaultValues.Complicated$N) } 
  Tclass.DatatypeDefaultValues.Complicated_3(Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N))
     == DatatypeDefaultValues.Complicated$N);

// Box/unbox axiom for Tclass.DatatypeDefaultValues.Complicated
axiom (forall DatatypeDefaultValues.Complicated$K: Ty, 
    DatatypeDefaultValues.Complicated$L: Ty, 
    DatatypeDefaultValues.Complicated$M: Ty, 
    DatatypeDefaultValues.Complicated$N: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N)) } 
  $IsBox(bx, 
      Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
          DatatypeDefaultValues.Complicated$L, 
          DatatypeDefaultValues.Complicated$M, 
          DatatypeDefaultValues.Complicated$N)));

// Constructor $Is
axiom (forall DatatypeDefaultValues.Complicated$K: Ty, 
    DatatypeDefaultValues.Complicated$L: Ty, 
    DatatypeDefaultValues.Complicated$M: Ty, 
    DatatypeDefaultValues.Complicated$N: Ty, 
    a#39#0#0: Box, 
    a#39#1#0: Box :: 
  { $Is(#DatatypeDefaultValues.Complicated.ComplA(a#39#0#0, a#39#1#0), 
      Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N)) } 
  $Is(#DatatypeDefaultValues.Complicated.ComplA(a#39#0#0, a#39#1#0), 
      Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N))
     <==> $IsBox(a#39#0#0, DatatypeDefaultValues.Complicated$K)
       && $IsBox(a#39#1#0, DatatypeDefaultValues.Complicated$L));

// Constructor $IsAlloc
axiom (forall DatatypeDefaultValues.Complicated$K: Ty, 
    DatatypeDefaultValues.Complicated$L: Ty, 
    DatatypeDefaultValues.Complicated$M: Ty, 
    DatatypeDefaultValues.Complicated$N: Ty, 
    a#39#0#0: Box, 
    a#39#1#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#DatatypeDefaultValues.Complicated.ComplA(a#39#0#0, a#39#1#0), 
      Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DatatypeDefaultValues.Complicated.ComplA(a#39#0#0, a#39#1#0), 
        Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
          DatatypeDefaultValues.Complicated$L, 
          DatatypeDefaultValues.Complicated$M, 
          DatatypeDefaultValues.Complicated$N), 
        $h)
       <==> $IsAllocBox(a#39#0#0, DatatypeDefaultValues.Complicated$K, $h)
         && $IsAllocBox(a#39#1#0, DatatypeDefaultValues.Complicated$L, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DatatypeDefaultValues.Complicated$K: Ty, $h: Heap :: 
  { $IsAllocBox(DatatypeDefaultValues.Complicated._h7(d), 
      DatatypeDefaultValues.Complicated$K, 
      $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeDefaultValues.Complicated.ComplA_q(d)
       && (exists DatatypeDefaultValues.Complicated$L: Ty, 
          DatatypeDefaultValues.Complicated$M: Ty, 
          DatatypeDefaultValues.Complicated$N: Ty :: 
        { $IsAlloc(d, 
            Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
              DatatypeDefaultValues.Complicated$L, 
              DatatypeDefaultValues.Complicated$M, 
              DatatypeDefaultValues.Complicated$N), 
            $h) } 
        $IsAlloc(d, 
          Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
            DatatypeDefaultValues.Complicated$L, 
            DatatypeDefaultValues.Complicated$M, 
            DatatypeDefaultValues.Complicated$N), 
          $h))
     ==> $IsAllocBox(DatatypeDefaultValues.Complicated._h7(d), 
      DatatypeDefaultValues.Complicated$K, 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DatatypeDefaultValues.Complicated$L: Ty, $h: Heap :: 
  { $IsAllocBox(DatatypeDefaultValues.Complicated._h8(d), 
      DatatypeDefaultValues.Complicated$L, 
      $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeDefaultValues.Complicated.ComplA_q(d)
       && (exists DatatypeDefaultValues.Complicated$K: Ty, 
          DatatypeDefaultValues.Complicated$M: Ty, 
          DatatypeDefaultValues.Complicated$N: Ty :: 
        { $IsAlloc(d, 
            Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
              DatatypeDefaultValues.Complicated$L, 
              DatatypeDefaultValues.Complicated$M, 
              DatatypeDefaultValues.Complicated$N), 
            $h) } 
        $IsAlloc(d, 
          Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
            DatatypeDefaultValues.Complicated$L, 
            DatatypeDefaultValues.Complicated$M, 
            DatatypeDefaultValues.Complicated$N), 
          $h))
     ==> $IsAllocBox(DatatypeDefaultValues.Complicated._h8(d), 
      DatatypeDefaultValues.Complicated$L, 
      $h));

// Constructor literal
axiom (forall a#40#0#0: Box, a#40#1#0: Box :: 
  { #DatatypeDefaultValues.Complicated.ComplA(Lit(a#40#0#0), Lit(a#40#1#0)) } 
  #DatatypeDefaultValues.Complicated.ComplA(Lit(a#40#0#0), Lit(a#40#1#0))
     == Lit(#DatatypeDefaultValues.Complicated.ComplA(a#40#0#0, a#40#1#0)));

function DatatypeDefaultValues.Complicated._h7(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#41#0#0: Box, a#41#1#0: Box :: 
  { #DatatypeDefaultValues.Complicated.ComplA(a#41#0#0, a#41#1#0) } 
  DatatypeDefaultValues.Complicated._h7(#DatatypeDefaultValues.Complicated.ComplA(a#41#0#0, a#41#1#0))
     == a#41#0#0);

// Inductive rank
axiom (forall a#42#0#0: Box, a#42#1#0: Box :: 
  { #DatatypeDefaultValues.Complicated.ComplA(a#42#0#0, a#42#1#0) } 
  BoxRank(a#42#0#0)
     < DtRank(#DatatypeDefaultValues.Complicated.ComplA(a#42#0#0, a#42#1#0)));

function DatatypeDefaultValues.Complicated._h8(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#43#0#0: Box, a#43#1#0: Box :: 
  { #DatatypeDefaultValues.Complicated.ComplA(a#43#0#0, a#43#1#0) } 
  DatatypeDefaultValues.Complicated._h8(#DatatypeDefaultValues.Complicated.ComplA(a#43#0#0, a#43#1#0))
     == a#43#1#0);

// Inductive rank
axiom (forall a#44#0#0: Box, a#44#1#0: Box :: 
  { #DatatypeDefaultValues.Complicated.ComplA(a#44#0#0, a#44#1#0) } 
  BoxRank(a#44#1#0)
     < DtRank(#DatatypeDefaultValues.Complicated.ComplA(a#44#0#0, a#44#1#0)));

// Constructor function declaration
function #DatatypeDefaultValues.Complicated.Rest(DatatypeType) : DatatypeType;

const unique ##DatatypeDefaultValues.Complicated.Rest: DtCtorId
uses {
// Constructor identifier
axiom (forall a#45#0#0: DatatypeType :: 
  { #DatatypeDefaultValues.Complicated.Rest(a#45#0#0) } 
  DatatypeCtorId(#DatatypeDefaultValues.Complicated.Rest(a#45#0#0))
     == ##DatatypeDefaultValues.Complicated.Rest);
}

function DatatypeDefaultValues.Complicated.Rest_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.Complicated.Rest_q(d) } 
  DatatypeDefaultValues.Complicated.Rest_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeDefaultValues.Complicated.Rest);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.Complicated.Rest_q(d) } 
  DatatypeDefaultValues.Complicated.Rest_q(d)
     ==> (exists a#46#0#0: DatatypeType :: 
      d == #DatatypeDefaultValues.Complicated.Rest(a#46#0#0)));

// Constructor $Is
axiom (forall DatatypeDefaultValues.Complicated$K: Ty, 
    DatatypeDefaultValues.Complicated$L: Ty, 
    DatatypeDefaultValues.Complicated$M: Ty, 
    DatatypeDefaultValues.Complicated$N: Ty, 
    a#47#0#0: DatatypeType :: 
  { $Is(#DatatypeDefaultValues.Complicated.Rest(a#47#0#0), 
      Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N)) } 
  $Is(#DatatypeDefaultValues.Complicated.Rest(a#47#0#0), 
      Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N))
     <==> $Is(a#47#0#0, 
      Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N)));

// Constructor $IsAlloc
axiom (forall DatatypeDefaultValues.Complicated$K: Ty, 
    DatatypeDefaultValues.Complicated$L: Ty, 
    DatatypeDefaultValues.Complicated$M: Ty, 
    DatatypeDefaultValues.Complicated$N: Ty, 
    a#47#0#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#DatatypeDefaultValues.Complicated.Rest(a#47#0#0), 
      Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DatatypeDefaultValues.Complicated.Rest(a#47#0#0), 
        Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
          DatatypeDefaultValues.Complicated$L, 
          DatatypeDefaultValues.Complicated$M, 
          DatatypeDefaultValues.Complicated$N), 
        $h)
       <==> $IsAlloc(a#47#0#0, 
        Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
          DatatypeDefaultValues.Complicated$L, 
          DatatypeDefaultValues.Complicated$M, 
          DatatypeDefaultValues.Complicated$N), 
        $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, 
    DatatypeDefaultValues.Complicated$K: Ty, 
    DatatypeDefaultValues.Complicated$L: Ty, 
    DatatypeDefaultValues.Complicated$M: Ty, 
    DatatypeDefaultValues.Complicated$N: Ty, 
    $h: Heap :: 
  { $IsAlloc(DatatypeDefaultValues.Complicated._h9(d), 
      Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N), 
      $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeDefaultValues.Complicated.Rest_q(d)
       && $IsAlloc(d, 
        Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
          DatatypeDefaultValues.Complicated$L, 
          DatatypeDefaultValues.Complicated$M, 
          DatatypeDefaultValues.Complicated$N), 
        $h)
     ==> $IsAlloc(DatatypeDefaultValues.Complicated._h9(d), 
      Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N), 
      $h));

// Constructor literal
axiom (forall a#48#0#0: DatatypeType :: 
  { #DatatypeDefaultValues.Complicated.Rest(Lit(a#48#0#0)) } 
  #DatatypeDefaultValues.Complicated.Rest(Lit(a#48#0#0))
     == Lit(#DatatypeDefaultValues.Complicated.Rest(a#48#0#0)));

function DatatypeDefaultValues.Complicated._h9(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#49#0#0: DatatypeType :: 
  { #DatatypeDefaultValues.Complicated.Rest(a#49#0#0) } 
  DatatypeDefaultValues.Complicated._h9(#DatatypeDefaultValues.Complicated.Rest(a#49#0#0))
     == a#49#0#0);

// Inductive rank
axiom (forall a#50#0#0: DatatypeType :: 
  { #DatatypeDefaultValues.Complicated.Rest(a#50#0#0) } 
  DtRank(a#50#0#0) < DtRank(#DatatypeDefaultValues.Complicated.Rest(a#50#0#0)));

// Depth-one case-split function
function $IsA#DatatypeDefaultValues.Complicated(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeDefaultValues.Complicated(d) } 
  $IsA#DatatypeDefaultValues.Complicated(d)
     ==> DatatypeDefaultValues.Complicated.ComplA_q(d)
       || DatatypeDefaultValues.Complicated.Rest_q(d));

// Questionmark data type disjunctivity
axiom (forall DatatypeDefaultValues.Complicated$K: Ty, 
    DatatypeDefaultValues.Complicated$L: Ty, 
    DatatypeDefaultValues.Complicated$M: Ty, 
    DatatypeDefaultValues.Complicated$N: Ty, 
    d: DatatypeType :: 
  { DatatypeDefaultValues.Complicated.Rest_q(d), $Is(d, 
      Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N)) } 
    { DatatypeDefaultValues.Complicated.ComplA_q(d), $Is(d, 
      Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N)) } 
  $Is(d, 
      Tclass.DatatypeDefaultValues.Complicated(DatatypeDefaultValues.Complicated$K, 
        DatatypeDefaultValues.Complicated$L, 
        DatatypeDefaultValues.Complicated$M, 
        DatatypeDefaultValues.Complicated$N))
     ==> DatatypeDefaultValues.Complicated.ComplA_q(d)
       || DatatypeDefaultValues.Complicated.Rest_q(d));

// Datatype extensional equality declaration
function DatatypeDefaultValues.Complicated#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeDefaultValues.Complicated.ComplA
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.Complicated#Equal(a, b), DatatypeDefaultValues.Complicated.ComplA_q(a) } 
    { DatatypeDefaultValues.Complicated#Equal(a, b), DatatypeDefaultValues.Complicated.ComplA_q(b) } 
  DatatypeDefaultValues.Complicated.ComplA_q(a)
       && DatatypeDefaultValues.Complicated.ComplA_q(b)
     ==> (DatatypeDefaultValues.Complicated#Equal(a, b)
       <==> DatatypeDefaultValues.Complicated._h7(a)
           == DatatypeDefaultValues.Complicated._h7(b)
         && DatatypeDefaultValues.Complicated._h8(a)
           == DatatypeDefaultValues.Complicated._h8(b)));

// Datatype extensional equality definition: #DatatypeDefaultValues.Complicated.Rest
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.Complicated#Equal(a, b), DatatypeDefaultValues.Complicated.Rest_q(a) } 
    { DatatypeDefaultValues.Complicated#Equal(a, b), DatatypeDefaultValues.Complicated.Rest_q(b) } 
  DatatypeDefaultValues.Complicated.Rest_q(a)
       && DatatypeDefaultValues.Complicated.Rest_q(b)
     ==> (DatatypeDefaultValues.Complicated#Equal(a, b)
       <==> DatatypeDefaultValues.Complicated#Equal(DatatypeDefaultValues.Complicated._h9(a), 
        DatatypeDefaultValues.Complicated._h9(b))));

// Datatype extensionality axiom: DatatypeDefaultValues.Complicated
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.Complicated#Equal(a, b) } 
  DatatypeDefaultValues.Complicated#Equal(a, b) <==> a == b);

const unique class.DatatypeDefaultValues.Complicated: ClassName;

// Constructor function declaration
function #DatatypeDefaultValues.CellCell.MakeCellCell(DatatypeType) : DatatypeType;

const unique ##DatatypeDefaultValues.CellCell.MakeCellCell: DtCtorId
uses {
// Constructor identifier
axiom (forall a#51#0#0: DatatypeType :: 
  { #DatatypeDefaultValues.CellCell.MakeCellCell(a#51#0#0) } 
  DatatypeCtorId(#DatatypeDefaultValues.CellCell.MakeCellCell(a#51#0#0))
     == ##DatatypeDefaultValues.CellCell.MakeCellCell);
}

function DatatypeDefaultValues.CellCell.MakeCellCell_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.CellCell.MakeCellCell_q(d) } 
  DatatypeDefaultValues.CellCell.MakeCellCell_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeDefaultValues.CellCell.MakeCellCell);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.CellCell.MakeCellCell_q(d) } 
  DatatypeDefaultValues.CellCell.MakeCellCell_q(d)
     ==> (exists a#52#0#0: DatatypeType :: 
      d == #DatatypeDefaultValues.CellCell.MakeCellCell(a#52#0#0)));

function Tclass.DatatypeDefaultValues.CellCell(Ty, Ty) : Ty;

const unique Tagclass.DatatypeDefaultValues.CellCell: TyTag;

// Tclass.DatatypeDefaultValues.CellCell Tag
axiom (forall DatatypeDefaultValues.CellCell$X: Ty, DatatypeDefaultValues.CellCell$Y: Ty :: 
  { Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y) } 
  Tag(Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y))
       == Tagclass.DatatypeDefaultValues.CellCell
     && TagFamily(Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y))
       == tytagFamily$CellCell);

function Tclass.DatatypeDefaultValues.CellCell_0(Ty) : Ty;

// Tclass.DatatypeDefaultValues.CellCell injectivity 0
axiom (forall DatatypeDefaultValues.CellCell$X: Ty, DatatypeDefaultValues.CellCell$Y: Ty :: 
  { Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y) } 
  Tclass.DatatypeDefaultValues.CellCell_0(Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y))
     == DatatypeDefaultValues.CellCell$X);

function Tclass.DatatypeDefaultValues.CellCell_1(Ty) : Ty;

// Tclass.DatatypeDefaultValues.CellCell injectivity 1
axiom (forall DatatypeDefaultValues.CellCell$X: Ty, DatatypeDefaultValues.CellCell$Y: Ty :: 
  { Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y) } 
  Tclass.DatatypeDefaultValues.CellCell_1(Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y))
     == DatatypeDefaultValues.CellCell$Y);

// Box/unbox axiom for Tclass.DatatypeDefaultValues.CellCell
axiom (forall DatatypeDefaultValues.CellCell$X: Ty, 
    DatatypeDefaultValues.CellCell$Y: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y)) } 
  $IsBox(bx, 
      Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y)));

// Constructor $Is
axiom (forall DatatypeDefaultValues.CellCell$X: Ty, 
    DatatypeDefaultValues.CellCell$Y: Ty, 
    a#53#0#0: DatatypeType :: 
  { $Is(#DatatypeDefaultValues.CellCell.MakeCellCell(a#53#0#0), 
      Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y)) } 
  $Is(#DatatypeDefaultValues.CellCell.MakeCellCell(a#53#0#0), 
      Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y))
     <==> $Is(a#53#0#0, Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.CellCell$X)));

// Constructor $IsAlloc
axiom (forall DatatypeDefaultValues.CellCell$X: Ty, 
    DatatypeDefaultValues.CellCell$Y: Ty, 
    a#53#0#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#DatatypeDefaultValues.CellCell.MakeCellCell(a#53#0#0), 
      Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DatatypeDefaultValues.CellCell.MakeCellCell(a#53#0#0), 
        Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y), 
        $h)
       <==> $IsAlloc(a#53#0#0, 
        Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.CellCell$X), 
        $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DatatypeDefaultValues.CellCell$X: Ty, $h: Heap :: 
  { $IsAlloc(DatatypeDefaultValues.CellCell._h10(d), 
      Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.CellCell$X), 
      $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeDefaultValues.CellCell.MakeCellCell_q(d)
       && (exists DatatypeDefaultValues.CellCell$Y: Ty :: 
        { $IsAlloc(d, 
            Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y), 
            $h) } 
        $IsAlloc(d, 
          Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y), 
          $h))
     ==> $IsAlloc(DatatypeDefaultValues.CellCell._h10(d), 
      Tclass.DatatypeDefaultValues.Cell(DatatypeDefaultValues.CellCell$X), 
      $h));

// Constructor literal
axiom (forall a#54#0#0: DatatypeType :: 
  { #DatatypeDefaultValues.CellCell.MakeCellCell(Lit(a#54#0#0)) } 
  #DatatypeDefaultValues.CellCell.MakeCellCell(Lit(a#54#0#0))
     == Lit(#DatatypeDefaultValues.CellCell.MakeCellCell(a#54#0#0)));

function DatatypeDefaultValues.CellCell._h10(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#55#0#0: DatatypeType :: 
  { #DatatypeDefaultValues.CellCell.MakeCellCell(a#55#0#0) } 
  DatatypeDefaultValues.CellCell._h10(#DatatypeDefaultValues.CellCell.MakeCellCell(a#55#0#0))
     == a#55#0#0);

// Inductive rank
axiom (forall a#56#0#0: DatatypeType :: 
  { #DatatypeDefaultValues.CellCell.MakeCellCell(a#56#0#0) } 
  DtRank(a#56#0#0)
     < DtRank(#DatatypeDefaultValues.CellCell.MakeCellCell(a#56#0#0)));

// Constructor function declaration
function #DatatypeDefaultValues.CellCell.MakeMoreCellCell(DatatypeType) : DatatypeType;

const unique ##DatatypeDefaultValues.CellCell.MakeMoreCellCell: DtCtorId
uses {
// Constructor identifier
axiom (forall a#57#0#0: DatatypeType :: 
  { #DatatypeDefaultValues.CellCell.MakeMoreCellCell(a#57#0#0) } 
  DatatypeCtorId(#DatatypeDefaultValues.CellCell.MakeMoreCellCell(a#57#0#0))
     == ##DatatypeDefaultValues.CellCell.MakeMoreCellCell);
}

function DatatypeDefaultValues.CellCell.MakeMoreCellCell_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.CellCell.MakeMoreCellCell_q(d) } 
  DatatypeDefaultValues.CellCell.MakeMoreCellCell_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeDefaultValues.CellCell.MakeMoreCellCell);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.CellCell.MakeMoreCellCell_q(d) } 
  DatatypeDefaultValues.CellCell.MakeMoreCellCell_q(d)
     ==> (exists a#58#0#0: DatatypeType :: 
      d == #DatatypeDefaultValues.CellCell.MakeMoreCellCell(a#58#0#0)));

// Constructor $Is
axiom (forall DatatypeDefaultValues.CellCell$X: Ty, 
    DatatypeDefaultValues.CellCell$Y: Ty, 
    a#59#0#0: DatatypeType :: 
  { $Is(#DatatypeDefaultValues.CellCell.MakeMoreCellCell(a#59#0#0), 
      Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y)) } 
  $Is(#DatatypeDefaultValues.CellCell.MakeMoreCellCell(a#59#0#0), 
      Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y))
     <==> $Is(a#59#0#0, 
      Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y)));

// Constructor $IsAlloc
axiom (forall DatatypeDefaultValues.CellCell$X: Ty, 
    DatatypeDefaultValues.CellCell$Y: Ty, 
    a#59#0#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#DatatypeDefaultValues.CellCell.MakeMoreCellCell(a#59#0#0), 
      Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DatatypeDefaultValues.CellCell.MakeMoreCellCell(a#59#0#0), 
        Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y), 
        $h)
       <==> $IsAlloc(a#59#0#0, 
        Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y), 
        $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, 
    DatatypeDefaultValues.CellCell$X: Ty, 
    DatatypeDefaultValues.CellCell$Y: Ty, 
    $h: Heap :: 
  { $IsAlloc(DatatypeDefaultValues.CellCell._h11(d), 
      Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y), 
      $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeDefaultValues.CellCell.MakeMoreCellCell_q(d)
       && $IsAlloc(d, 
        Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y), 
        $h)
     ==> $IsAlloc(DatatypeDefaultValues.CellCell._h11(d), 
      Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y), 
      $h));

// Constructor literal
axiom (forall a#60#0#0: DatatypeType :: 
  { #DatatypeDefaultValues.CellCell.MakeMoreCellCell(Lit(a#60#0#0)) } 
  #DatatypeDefaultValues.CellCell.MakeMoreCellCell(Lit(a#60#0#0))
     == Lit(#DatatypeDefaultValues.CellCell.MakeMoreCellCell(a#60#0#0)));

function DatatypeDefaultValues.CellCell._h11(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#61#0#0: DatatypeType :: 
  { #DatatypeDefaultValues.CellCell.MakeMoreCellCell(a#61#0#0) } 
  DatatypeDefaultValues.CellCell._h11(#DatatypeDefaultValues.CellCell.MakeMoreCellCell(a#61#0#0))
     == a#61#0#0);

// Inductive rank
axiom (forall a#62#0#0: DatatypeType :: 
  { #DatatypeDefaultValues.CellCell.MakeMoreCellCell(a#62#0#0) } 
  DtRank(a#62#0#0)
     < DtRank(#DatatypeDefaultValues.CellCell.MakeMoreCellCell(a#62#0#0)));

// Depth-one case-split function
function $IsA#DatatypeDefaultValues.CellCell(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeDefaultValues.CellCell(d) } 
  $IsA#DatatypeDefaultValues.CellCell(d)
     ==> DatatypeDefaultValues.CellCell.MakeCellCell_q(d)
       || DatatypeDefaultValues.CellCell.MakeMoreCellCell_q(d));

// Questionmark data type disjunctivity
axiom (forall DatatypeDefaultValues.CellCell$X: Ty, 
    DatatypeDefaultValues.CellCell$Y: Ty, 
    d: DatatypeType :: 
  { DatatypeDefaultValues.CellCell.MakeMoreCellCell_q(d), $Is(d, 
      Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y)) } 
    { DatatypeDefaultValues.CellCell.MakeCellCell_q(d), $Is(d, 
      Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y)) } 
  $Is(d, 
      Tclass.DatatypeDefaultValues.CellCell(DatatypeDefaultValues.CellCell$X, DatatypeDefaultValues.CellCell$Y))
     ==> DatatypeDefaultValues.CellCell.MakeCellCell_q(d)
       || DatatypeDefaultValues.CellCell.MakeMoreCellCell_q(d));

// Datatype extensional equality declaration
function DatatypeDefaultValues.CellCell#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeDefaultValues.CellCell.MakeCellCell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.CellCell#Equal(a, b), DatatypeDefaultValues.CellCell.MakeCellCell_q(a) } 
    { DatatypeDefaultValues.CellCell#Equal(a, b), DatatypeDefaultValues.CellCell.MakeCellCell_q(b) } 
  DatatypeDefaultValues.CellCell.MakeCellCell_q(a)
       && DatatypeDefaultValues.CellCell.MakeCellCell_q(b)
     ==> (DatatypeDefaultValues.CellCell#Equal(a, b)
       <==> DatatypeDefaultValues.Cell#Equal(DatatypeDefaultValues.CellCell._h10(a), DatatypeDefaultValues.CellCell._h10(b))));

// Datatype extensional equality definition: #DatatypeDefaultValues.CellCell.MakeMoreCellCell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.CellCell#Equal(a, b), DatatypeDefaultValues.CellCell.MakeMoreCellCell_q(a) } 
    { DatatypeDefaultValues.CellCell#Equal(a, b), DatatypeDefaultValues.CellCell.MakeMoreCellCell_q(b) } 
  DatatypeDefaultValues.CellCell.MakeMoreCellCell_q(a)
       && DatatypeDefaultValues.CellCell.MakeMoreCellCell_q(b)
     ==> (DatatypeDefaultValues.CellCell#Equal(a, b)
       <==> DatatypeDefaultValues.CellCell#Equal(DatatypeDefaultValues.CellCell._h11(a), DatatypeDefaultValues.CellCell._h11(b))));

// Datatype extensionality axiom: DatatypeDefaultValues.CellCell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.CellCell#Equal(a, b) } 
  DatatypeDefaultValues.CellCell#Equal(a, b) <==> a == b);

const unique class.DatatypeDefaultValues.CellCell: ClassName;

// Constructor function declaration
function #DatatypeDefaultValues.Difficult.MakeDifficult(ref) : DatatypeType;

const unique ##DatatypeDefaultValues.Difficult.MakeDifficult: DtCtorId
uses {
// Constructor identifier
axiom (forall a#63#0#0: ref :: 
  { #DatatypeDefaultValues.Difficult.MakeDifficult(a#63#0#0) } 
  DatatypeCtorId(#DatatypeDefaultValues.Difficult.MakeDifficult(a#63#0#0))
     == ##DatatypeDefaultValues.Difficult.MakeDifficult);
}

function DatatypeDefaultValues.Difficult.MakeDifficult_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.Difficult.MakeDifficult_q(d) } 
  DatatypeDefaultValues.Difficult.MakeDifficult_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeDefaultValues.Difficult.MakeDifficult);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.Difficult.MakeDifficult_q(d) } 
  DatatypeDefaultValues.Difficult.MakeDifficult_q(d)
     ==> (exists a#64#0#0: ref :: 
      d == #DatatypeDefaultValues.Difficult.MakeDifficult(a#64#0#0)));

function Tclass.DatatypeDefaultValues.Difficult() : Ty
uses {
// Tclass.DatatypeDefaultValues.Difficult Tag
axiom Tag(Tclass.DatatypeDefaultValues.Difficult())
     == Tagclass.DatatypeDefaultValues.Difficult
   && TagFamily(Tclass.DatatypeDefaultValues.Difficult()) == tytagFamily$Difficult;
}

const unique Tagclass.DatatypeDefaultValues.Difficult: TyTag;

// Box/unbox axiom for Tclass.DatatypeDefaultValues.Difficult
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeDefaultValues.Difficult()) } 
  $IsBox(bx, Tclass.DatatypeDefaultValues.Difficult())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DatatypeDefaultValues.Difficult()));

function Tclass.DatatypeDefaultValues.Class?() : Ty
uses {
// Tclass.DatatypeDefaultValues.Class? Tag
axiom Tag(Tclass.DatatypeDefaultValues.Class?())
     == Tagclass.DatatypeDefaultValues.Class?
   && TagFamily(Tclass.DatatypeDefaultValues.Class?()) == tytagFamily$Class;
}

const unique Tagclass.DatatypeDefaultValues.Class?: TyTag;

// Box/unbox axiom for Tclass.DatatypeDefaultValues.Class?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeDefaultValues.Class?()) } 
  $IsBox(bx, Tclass.DatatypeDefaultValues.Class?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.DatatypeDefaultValues.Class?()));

// Constructor $Is
axiom (forall a#65#0#0: ref :: 
  { $Is(#DatatypeDefaultValues.Difficult.MakeDifficult(a#65#0#0), 
      Tclass.DatatypeDefaultValues.Difficult()) } 
  $Is(#DatatypeDefaultValues.Difficult.MakeDifficult(a#65#0#0), 
      Tclass.DatatypeDefaultValues.Difficult())
     <==> $Is(a#65#0#0, Tclass.DatatypeDefaultValues.Class?()));

// Constructor $IsAlloc
axiom (forall a#65#0#0: ref, $h: Heap :: 
  { $IsAlloc(#DatatypeDefaultValues.Difficult.MakeDifficult(a#65#0#0), 
      Tclass.DatatypeDefaultValues.Difficult(), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DatatypeDefaultValues.Difficult.MakeDifficult(a#65#0#0), 
        Tclass.DatatypeDefaultValues.Difficult(), 
        $h)
       <==> $IsAlloc(a#65#0#0, Tclass.DatatypeDefaultValues.Class?(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeDefaultValues.Difficult._h12(d), 
      Tclass.DatatypeDefaultValues.Class?(), 
      $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeDefaultValues.Difficult.MakeDifficult_q(d)
       && $IsAlloc(d, Tclass.DatatypeDefaultValues.Difficult(), $h)
     ==> $IsAlloc(DatatypeDefaultValues.Difficult._h12(d), 
      Tclass.DatatypeDefaultValues.Class?(), 
      $h));

// Constructor literal
axiom (forall a#66#0#0: ref :: 
  { #DatatypeDefaultValues.Difficult.MakeDifficult(Lit(a#66#0#0)) } 
  #DatatypeDefaultValues.Difficult.MakeDifficult(Lit(a#66#0#0))
     == Lit(#DatatypeDefaultValues.Difficult.MakeDifficult(a#66#0#0)));

function DatatypeDefaultValues.Difficult._h12(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#67#0#0: ref :: 
  { #DatatypeDefaultValues.Difficult.MakeDifficult(a#67#0#0) } 
  DatatypeDefaultValues.Difficult._h12(#DatatypeDefaultValues.Difficult.MakeDifficult(a#67#0#0))
     == a#67#0#0);

// Depth-one case-split function
function $IsA#DatatypeDefaultValues.Difficult(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeDefaultValues.Difficult(d) } 
  $IsA#DatatypeDefaultValues.Difficult(d)
     ==> DatatypeDefaultValues.Difficult.MakeDifficult_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.Difficult.MakeDifficult_q(d), $Is(d, Tclass.DatatypeDefaultValues.Difficult()) } 
  $Is(d, Tclass.DatatypeDefaultValues.Difficult())
     ==> DatatypeDefaultValues.Difficult.MakeDifficult_q(d));

// Datatype extensional equality declaration
function DatatypeDefaultValues.Difficult#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeDefaultValues.Difficult.MakeDifficult
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.Difficult#Equal(a, b) } 
  DatatypeDefaultValues.Difficult#Equal(a, b)
     <==> DatatypeDefaultValues.Difficult._h12(a)
       == DatatypeDefaultValues.Difficult._h12(b));

// Datatype extensionality axiom: DatatypeDefaultValues.Difficult
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.Difficult#Equal(a, b) } 
  DatatypeDefaultValues.Difficult#Equal(a, b) <==> a == b);

const unique class.DatatypeDefaultValues.Difficult: ClassName;

// Constructor function declaration
function #DatatypeDefaultValues.GenDifficult.MakeGenDifficult(ref) : DatatypeType;

const unique ##DatatypeDefaultValues.GenDifficult.MakeGenDifficult: DtCtorId
uses {
// Constructor identifier
axiom (forall a#68#0#0: ref :: 
  { #DatatypeDefaultValues.GenDifficult.MakeGenDifficult(a#68#0#0) } 
  DatatypeCtorId(#DatatypeDefaultValues.GenDifficult.MakeGenDifficult(a#68#0#0))
     == ##DatatypeDefaultValues.GenDifficult.MakeGenDifficult);
}

function DatatypeDefaultValues.GenDifficult.MakeGenDifficult_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.GenDifficult.MakeGenDifficult_q(d) } 
  DatatypeDefaultValues.GenDifficult.MakeGenDifficult_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeDefaultValues.GenDifficult.MakeGenDifficult);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeDefaultValues.GenDifficult.MakeGenDifficult_q(d) } 
  DatatypeDefaultValues.GenDifficult.MakeGenDifficult_q(d)
     ==> (exists a#69#0#0: ref :: 
      d == #DatatypeDefaultValues.GenDifficult.MakeGenDifficult(a#69#0#0)));

function Tclass.DatatypeDefaultValues.GenDifficult(Ty) : Ty;

const unique Tagclass.DatatypeDefaultValues.GenDifficult: TyTag;

// Tclass.DatatypeDefaultValues.GenDifficult Tag
axiom (forall DatatypeDefaultValues.GenDifficult$G: Ty :: 
  { Tclass.DatatypeDefaultValues.GenDifficult(DatatypeDefaultValues.GenDifficult$G) } 
  Tag(Tclass.DatatypeDefaultValues.GenDifficult(DatatypeDefaultValues.GenDifficult$G))
       == Tagclass.DatatypeDefaultValues.GenDifficult
     && TagFamily(Tclass.DatatypeDefaultValues.GenDifficult(DatatypeDefaultValues.GenDifficult$G))
       == tytagFamily$GenDifficult);

function Tclass.DatatypeDefaultValues.GenDifficult_0(Ty) : Ty;

// Tclass.DatatypeDefaultValues.GenDifficult injectivity 0
axiom (forall DatatypeDefaultValues.GenDifficult$G: Ty :: 
  { Tclass.DatatypeDefaultValues.GenDifficult(DatatypeDefaultValues.GenDifficult$G) } 
  Tclass.DatatypeDefaultValues.GenDifficult_0(Tclass.DatatypeDefaultValues.GenDifficult(DatatypeDefaultValues.GenDifficult$G))
     == DatatypeDefaultValues.GenDifficult$G);

// Box/unbox axiom for Tclass.DatatypeDefaultValues.GenDifficult
axiom (forall DatatypeDefaultValues.GenDifficult$G: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.DatatypeDefaultValues.GenDifficult(DatatypeDefaultValues.GenDifficult$G)) } 
  $IsBox(bx, 
      Tclass.DatatypeDefaultValues.GenDifficult(DatatypeDefaultValues.GenDifficult$G))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.DatatypeDefaultValues.GenDifficult(DatatypeDefaultValues.GenDifficult$G)));

function Tclass.DatatypeDefaultValues.GenClass?(Ty) : Ty;

const unique Tagclass.DatatypeDefaultValues.GenClass?: TyTag;

// Tclass.DatatypeDefaultValues.GenClass? Tag
axiom (forall DatatypeDefaultValues.GenClass$H: Ty :: 
  { Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H) } 
  Tag(Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H))
       == Tagclass.DatatypeDefaultValues.GenClass?
     && TagFamily(Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H))
       == tytagFamily$GenClass);

function Tclass.DatatypeDefaultValues.GenClass?_0(Ty) : Ty;

// Tclass.DatatypeDefaultValues.GenClass? injectivity 0
axiom (forall DatatypeDefaultValues.GenClass$H: Ty :: 
  { Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H) } 
  Tclass.DatatypeDefaultValues.GenClass?_0(Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H))
     == DatatypeDefaultValues.GenClass$H);

// Box/unbox axiom for Tclass.DatatypeDefaultValues.GenClass?
axiom (forall DatatypeDefaultValues.GenClass$H: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H)) } 
  $IsBox(bx, Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H)));

// Constructor $Is
axiom (forall DatatypeDefaultValues.GenDifficult$G: Ty, a#70#0#0: ref :: 
  { $Is(#DatatypeDefaultValues.GenDifficult.MakeGenDifficult(a#70#0#0), 
      Tclass.DatatypeDefaultValues.GenDifficult(DatatypeDefaultValues.GenDifficult$G)) } 
  $Is(#DatatypeDefaultValues.GenDifficult.MakeGenDifficult(a#70#0#0), 
      Tclass.DatatypeDefaultValues.GenDifficult(DatatypeDefaultValues.GenDifficult$G))
     <==> $Is(a#70#0#0, 
      Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenDifficult$G)));

// Constructor $IsAlloc
axiom (forall DatatypeDefaultValues.GenDifficult$G: Ty, a#70#0#0: ref, $h: Heap :: 
  { $IsAlloc(#DatatypeDefaultValues.GenDifficult.MakeGenDifficult(a#70#0#0), 
      Tclass.DatatypeDefaultValues.GenDifficult(DatatypeDefaultValues.GenDifficult$G), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DatatypeDefaultValues.GenDifficult.MakeGenDifficult(a#70#0#0), 
        Tclass.DatatypeDefaultValues.GenDifficult(DatatypeDefaultValues.GenDifficult$G), 
        $h)
       <==> $IsAlloc(a#70#0#0, 
        Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenDifficult$G), 
        $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DatatypeDefaultValues.GenDifficult$G: Ty, $h: Heap :: 
  { $IsAlloc(DatatypeDefaultValues.GenDifficult._h13(d), 
      Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenDifficult$G), 
      $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeDefaultValues.GenDifficult.MakeGenDifficult_q(d)
       && $IsAlloc(d, 
        Tclass.DatatypeDefaultValues.GenDifficult(DatatypeDefaultValues.GenDifficult$G), 
        $h)
     ==> $IsAlloc(DatatypeDefaultValues.GenDifficult._h13(d), 
      Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenDifficult$G), 
      $h));

// Constructor literal
axiom (forall a#71#0#0: ref :: 
  { #DatatypeDefaultValues.GenDifficult.MakeGenDifficult(Lit(a#71#0#0)) } 
  #DatatypeDefaultValues.GenDifficult.MakeGenDifficult(Lit(a#71#0#0))
     == Lit(#DatatypeDefaultValues.GenDifficult.MakeGenDifficult(a#71#0#0)));

function DatatypeDefaultValues.GenDifficult._h13(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#72#0#0: ref :: 
  { #DatatypeDefaultValues.GenDifficult.MakeGenDifficult(a#72#0#0) } 
  DatatypeDefaultValues.GenDifficult._h13(#DatatypeDefaultValues.GenDifficult.MakeGenDifficult(a#72#0#0))
     == a#72#0#0);

// Depth-one case-split function
function $IsA#DatatypeDefaultValues.GenDifficult(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeDefaultValues.GenDifficult(d) } 
  $IsA#DatatypeDefaultValues.GenDifficult(d)
     ==> DatatypeDefaultValues.GenDifficult.MakeGenDifficult_q(d));

// Questionmark data type disjunctivity
axiom (forall DatatypeDefaultValues.GenDifficult$G: Ty, d: DatatypeType :: 
  { DatatypeDefaultValues.GenDifficult.MakeGenDifficult_q(d), $Is(d, 
      Tclass.DatatypeDefaultValues.GenDifficult(DatatypeDefaultValues.GenDifficult$G)) } 
  $Is(d, 
      Tclass.DatatypeDefaultValues.GenDifficult(DatatypeDefaultValues.GenDifficult$G))
     ==> DatatypeDefaultValues.GenDifficult.MakeGenDifficult_q(d));

// Datatype extensional equality declaration
function DatatypeDefaultValues.GenDifficult#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeDefaultValues.GenDifficult.MakeGenDifficult
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.GenDifficult#Equal(a, b) } 
  DatatypeDefaultValues.GenDifficult#Equal(a, b)
     <==> DatatypeDefaultValues.GenDifficult._h13(a)
       == DatatypeDefaultValues.GenDifficult._h13(b));

// Datatype extensionality axiom: DatatypeDefaultValues.GenDifficult
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeDefaultValues.GenDifficult#Equal(a, b) } 
  DatatypeDefaultValues.GenDifficult#Equal(a, b) <==> a == b);

const unique class.DatatypeDefaultValues.GenDifficult: ClassName;

const unique class.DatatypeDefaultValues.Class?: ClassName;

// $Is axiom for class Class
axiom (forall $o: ref :: 
  { $Is($o, Tclass.DatatypeDefaultValues.Class?()) } 
  $Is($o, Tclass.DatatypeDefaultValues.Class?())
     <==> $o == null || dtype($o) == Tclass.DatatypeDefaultValues.Class?());

// $IsAlloc axiom for class Class
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.DatatypeDefaultValues.Class?(), $h) } 
  $IsAlloc($o, Tclass.DatatypeDefaultValues.Class?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.DatatypeDefaultValues.Class() : Ty
uses {
// Tclass.DatatypeDefaultValues.Class Tag
axiom Tag(Tclass.DatatypeDefaultValues.Class())
     == Tagclass.DatatypeDefaultValues.Class
   && TagFamily(Tclass.DatatypeDefaultValues.Class()) == tytagFamily$Class;
}

const unique Tagclass.DatatypeDefaultValues.Class: TyTag;

// Box/unbox axiom for Tclass.DatatypeDefaultValues.Class
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeDefaultValues.Class()) } 
  $IsBox(bx, Tclass.DatatypeDefaultValues.Class())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.DatatypeDefaultValues.Class()));

// $Is axiom for non-null type DatatypeDefaultValues.Class
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.DatatypeDefaultValues.Class()) } 
    { $Is(c#0, Tclass.DatatypeDefaultValues.Class?()) } 
  $Is(c#0, Tclass.DatatypeDefaultValues.Class())
     <==> $Is(c#0, Tclass.DatatypeDefaultValues.Class?()) && c#0 != null);

// $IsAlloc axiom for non-null type DatatypeDefaultValues.Class
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.DatatypeDefaultValues.Class(), $h) } 
    { $IsAlloc(c#0, Tclass.DatatypeDefaultValues.Class?(), $h) } 
  $IsAlloc(c#0, Tclass.DatatypeDefaultValues.Class(), $h)
     <==> $IsAlloc(c#0, Tclass.DatatypeDefaultValues.Class?(), $h));

const unique class.DatatypeDefaultValues.GenClass?: ClassName;

// $Is axiom for class GenClass
axiom (forall DatatypeDefaultValues.GenClass$H: Ty, $o: ref :: 
  { $Is($o, Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H)) } 
  $Is($o, Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H))
     <==> $o == null
       || dtype($o)
         == Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H));

// $IsAlloc axiom for class GenClass
axiom (forall DatatypeDefaultValues.GenClass$H: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H), $h) } 
  $IsAlloc($o, Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.DatatypeDefaultValues.GenClass(Ty) : Ty;

const unique Tagclass.DatatypeDefaultValues.GenClass: TyTag;

// Tclass.DatatypeDefaultValues.GenClass Tag
axiom (forall DatatypeDefaultValues.GenClass$H: Ty :: 
  { Tclass.DatatypeDefaultValues.GenClass(DatatypeDefaultValues.GenClass$H) } 
  Tag(Tclass.DatatypeDefaultValues.GenClass(DatatypeDefaultValues.GenClass$H))
       == Tagclass.DatatypeDefaultValues.GenClass
     && TagFamily(Tclass.DatatypeDefaultValues.GenClass(DatatypeDefaultValues.GenClass$H))
       == tytagFamily$GenClass);

function Tclass.DatatypeDefaultValues.GenClass_0(Ty) : Ty;

// Tclass.DatatypeDefaultValues.GenClass injectivity 0
axiom (forall DatatypeDefaultValues.GenClass$H: Ty :: 
  { Tclass.DatatypeDefaultValues.GenClass(DatatypeDefaultValues.GenClass$H) } 
  Tclass.DatatypeDefaultValues.GenClass_0(Tclass.DatatypeDefaultValues.GenClass(DatatypeDefaultValues.GenClass$H))
     == DatatypeDefaultValues.GenClass$H);

// Box/unbox axiom for Tclass.DatatypeDefaultValues.GenClass
axiom (forall DatatypeDefaultValues.GenClass$H: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeDefaultValues.GenClass(DatatypeDefaultValues.GenClass$H)) } 
  $IsBox(bx, Tclass.DatatypeDefaultValues.GenClass(DatatypeDefaultValues.GenClass$H))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.DatatypeDefaultValues.GenClass(DatatypeDefaultValues.GenClass$H)));

// $Is axiom for non-null type DatatypeDefaultValues.GenClass
axiom (forall DatatypeDefaultValues.GenClass$H: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.DatatypeDefaultValues.GenClass(DatatypeDefaultValues.GenClass$H)) } 
    { $Is(c#0, Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H)) } 
  $Is(c#0, Tclass.DatatypeDefaultValues.GenClass(DatatypeDefaultValues.GenClass$H))
     <==> $Is(c#0, Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H))
       && c#0 != null);

// $IsAlloc axiom for non-null type DatatypeDefaultValues.GenClass
axiom (forall DatatypeDefaultValues.GenClass$H: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.DatatypeDefaultValues.GenClass(DatatypeDefaultValues.GenClass$H), $h) } 
    { $IsAlloc(c#0, 
      Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H), 
      $h) } 
  $IsAlloc(c#0, Tclass.DatatypeDefaultValues.GenClass(DatatypeDefaultValues.GenClass$H), $h)
     <==> $IsAlloc(c#0, 
      Tclass.DatatypeDefaultValues.GenClass?(DatatypeDefaultValues.GenClass$H), 
      $h));

const unique class.ImportedTypes_mLibrary.__default: ClassName;

// Constructor function declaration
function #ImportedTypes.Library.Color.Red(int) : DatatypeType;

const unique ##ImportedTypes.Library.Color.Red: DtCtorId
uses {
// Constructor identifier
axiom (forall a#73#0#0: int :: 
  { #ImportedTypes.Library.Color.Red(a#73#0#0) } 
  DatatypeCtorId(#ImportedTypes.Library.Color.Red(a#73#0#0))
     == ##ImportedTypes.Library.Color.Red);
}

function ImportedTypes_mLibrary.Color.Red_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ImportedTypes_mLibrary.Color.Red_q(d) } 
  ImportedTypes_mLibrary.Color.Red_q(d)
     <==> DatatypeCtorId(d) == ##ImportedTypes.Library.Color.Red);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ImportedTypes_mLibrary.Color.Red_q(d) } 
  ImportedTypes_mLibrary.Color.Red_q(d)
     ==> (exists a#74#0#0: int :: d == #ImportedTypes.Library.Color.Red(a#74#0#0)));

function Tclass.ImportedTypes_mLibrary.Color() : Ty
uses {
// Tclass.ImportedTypes_mLibrary.Color Tag
axiom Tag(Tclass.ImportedTypes_mLibrary.Color())
     == Tagclass.ImportedTypes_mLibrary.Color
   && TagFamily(Tclass.ImportedTypes_mLibrary.Color()) == tytagFamily$Color;
}

const unique Tagclass.ImportedTypes_mLibrary.Color: TyTag;

// Box/unbox axiom for Tclass.ImportedTypes_mLibrary.Color
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ImportedTypes_mLibrary.Color()) } 
  $IsBox(bx, Tclass.ImportedTypes_mLibrary.Color())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.ImportedTypes_mLibrary.Color()));

// Constructor $Is
axiom (forall a#75#0#0: int :: 
  { $Is(#ImportedTypes.Library.Color.Red(a#75#0#0), 
      Tclass.ImportedTypes_mLibrary.Color()) } 
  $Is(#ImportedTypes.Library.Color.Red(a#75#0#0), 
      Tclass.ImportedTypes_mLibrary.Color())
     <==> $Is(a#75#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(ImportedTypes_mLibrary.Color._h14(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      ImportedTypes_mLibrary.Color.Red_q(d)
       && $IsAlloc(d, Tclass.ImportedTypes_mLibrary.Color(), $h)
     ==> $IsAlloc(ImportedTypes_mLibrary.Color._h14(d), TInt, $h));

// Constructor literal
axiom (forall a#76#0#0: int :: 
  { #ImportedTypes.Library.Color.Red(LitInt(a#76#0#0)) } 
  #ImportedTypes.Library.Color.Red(LitInt(a#76#0#0))
     == Lit(#ImportedTypes.Library.Color.Red(a#76#0#0)));

function ImportedTypes_mLibrary.Color._h14(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#77#0#0: int :: 
  { #ImportedTypes.Library.Color.Red(a#77#0#0) } 
  ImportedTypes_mLibrary.Color._h14(#ImportedTypes.Library.Color.Red(a#77#0#0))
     == a#77#0#0);

// Constructor function declaration
function #ImportedTypes.Library.Color.Green(real) : DatatypeType;

const unique ##ImportedTypes.Library.Color.Green: DtCtorId
uses {
// Constructor identifier
axiom (forall a#78#0#0: real :: 
  { #ImportedTypes.Library.Color.Green(a#78#0#0) } 
  DatatypeCtorId(#ImportedTypes.Library.Color.Green(a#78#0#0))
     == ##ImportedTypes.Library.Color.Green);
}

function ImportedTypes_mLibrary.Color.Green_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ImportedTypes_mLibrary.Color.Green_q(d) } 
  ImportedTypes_mLibrary.Color.Green_q(d)
     <==> DatatypeCtorId(d) == ##ImportedTypes.Library.Color.Green);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ImportedTypes_mLibrary.Color.Green_q(d) } 
  ImportedTypes_mLibrary.Color.Green_q(d)
     ==> (exists a#79#0#0: real :: d == #ImportedTypes.Library.Color.Green(a#79#0#0)));

// Constructor $Is
axiom (forall a#80#0#0: real :: 
  { $Is(#ImportedTypes.Library.Color.Green(a#80#0#0), 
      Tclass.ImportedTypes_mLibrary.Color()) } 
  $Is(#ImportedTypes.Library.Color.Green(a#80#0#0), 
      Tclass.ImportedTypes_mLibrary.Color())
     <==> $Is(a#80#0#0, TReal));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(ImportedTypes_mLibrary.Color._h15(d), TReal, $h) } 
  $IsGoodHeap($h)
       && 
      ImportedTypes_mLibrary.Color.Green_q(d)
       && $IsAlloc(d, Tclass.ImportedTypes_mLibrary.Color(), $h)
     ==> $IsAlloc(ImportedTypes_mLibrary.Color._h15(d), TReal, $h));

// Constructor literal
axiom (forall a#81#0#0: real :: 
  { #ImportedTypes.Library.Color.Green(LitReal(a#81#0#0)) } 
  #ImportedTypes.Library.Color.Green(LitReal(a#81#0#0))
     == Lit(#ImportedTypes.Library.Color.Green(a#81#0#0)));

function ImportedTypes_mLibrary.Color._h15(DatatypeType) : real;

// Constructor injectivity
axiom (forall a#82#0#0: real :: 
  { #ImportedTypes.Library.Color.Green(a#82#0#0) } 
  ImportedTypes_mLibrary.Color._h15(#ImportedTypes.Library.Color.Green(a#82#0#0))
     == a#82#0#0);

// Constructor function declaration
function #ImportedTypes.Library.Color.Blue(bv30) : DatatypeType;

const unique ##ImportedTypes.Library.Color.Blue: DtCtorId
uses {
// Constructor identifier
axiom (forall a#83#0#0: bv30 :: 
  { #ImportedTypes.Library.Color.Blue(a#83#0#0) } 
  DatatypeCtorId(#ImportedTypes.Library.Color.Blue(a#83#0#0))
     == ##ImportedTypes.Library.Color.Blue);
}

function ImportedTypes_mLibrary.Color.Blue_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ImportedTypes_mLibrary.Color.Blue_q(d) } 
  ImportedTypes_mLibrary.Color.Blue_q(d)
     <==> DatatypeCtorId(d) == ##ImportedTypes.Library.Color.Blue);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ImportedTypes_mLibrary.Color.Blue_q(d) } 
  ImportedTypes_mLibrary.Color.Blue_q(d)
     ==> (exists a#84#0#0: bv30 :: d == #ImportedTypes.Library.Color.Blue(a#84#0#0)));

// Constructor $Is
axiom (forall a#85#0#0: bv30 :: 
  { $Is(#ImportedTypes.Library.Color.Blue(a#85#0#0), 
      Tclass.ImportedTypes_mLibrary.Color()) } 
  $Is(#ImportedTypes.Library.Color.Blue(a#85#0#0), 
      Tclass.ImportedTypes_mLibrary.Color())
     <==> $Is(a#85#0#0, TBitvector(30)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(ImportedTypes_mLibrary.Color._h16(d), TBitvector(30), $h) } 
  $IsGoodHeap($h)
       && 
      ImportedTypes_mLibrary.Color.Blue_q(d)
       && $IsAlloc(d, Tclass.ImportedTypes_mLibrary.Color(), $h)
     ==> $IsAlloc(ImportedTypes_mLibrary.Color._h16(d), TBitvector(30), $h));

// Constructor literal
axiom (forall a#86#0#0: bv30 :: 
  { #ImportedTypes.Library.Color.Blue(Lit(a#86#0#0)) } 
  #ImportedTypes.Library.Color.Blue(Lit(a#86#0#0))
     == Lit(#ImportedTypes.Library.Color.Blue(a#86#0#0)));

function ImportedTypes_mLibrary.Color._h16(DatatypeType) : bv30;

// Constructor injectivity
axiom (forall a#87#0#0: bv30 :: 
  { #ImportedTypes.Library.Color.Blue(a#87#0#0) } 
  ImportedTypes_mLibrary.Color._h16(#ImportedTypes.Library.Color.Blue(a#87#0#0))
     == a#87#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.ImportedTypes_mLibrary.Color(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.ImportedTypes_mLibrary.Color())
     ==> $IsAlloc(d, Tclass.ImportedTypes_mLibrary.Color(), $h));

// Depth-one case-split function
function $IsA#ImportedTypes_mLibrary.Color(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ImportedTypes_mLibrary.Color(d) } 
  $IsA#ImportedTypes_mLibrary.Color(d)
     ==> ImportedTypes_mLibrary.Color.Red_q(d)
       || ImportedTypes_mLibrary.Color.Green_q(d)
       || ImportedTypes_mLibrary.Color.Blue_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { ImportedTypes_mLibrary.Color.Blue_q(d), $Is(d, Tclass.ImportedTypes_mLibrary.Color()) } 
    { ImportedTypes_mLibrary.Color.Green_q(d), $Is(d, Tclass.ImportedTypes_mLibrary.Color()) } 
    { ImportedTypes_mLibrary.Color.Red_q(d), $Is(d, Tclass.ImportedTypes_mLibrary.Color()) } 
  $Is(d, Tclass.ImportedTypes_mLibrary.Color())
     ==> ImportedTypes_mLibrary.Color.Red_q(d)
       || ImportedTypes_mLibrary.Color.Green_q(d)
       || ImportedTypes_mLibrary.Color.Blue_q(d));

// Datatype extensional equality declaration
function ImportedTypes_mLibrary.Color#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ImportedTypes.Library.Color.Red
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ImportedTypes_mLibrary.Color#Equal(a, b), ImportedTypes_mLibrary.Color.Red_q(a) } 
    { ImportedTypes_mLibrary.Color#Equal(a, b), ImportedTypes_mLibrary.Color.Red_q(b) } 
  ImportedTypes_mLibrary.Color.Red_q(a) && ImportedTypes_mLibrary.Color.Red_q(b)
     ==> (ImportedTypes_mLibrary.Color#Equal(a, b)
       <==> ImportedTypes_mLibrary.Color._h14(a) == ImportedTypes_mLibrary.Color._h14(b)));

// Datatype extensional equality definition: #ImportedTypes.Library.Color.Green
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ImportedTypes_mLibrary.Color#Equal(a, b), ImportedTypes_mLibrary.Color.Green_q(a) } 
    { ImportedTypes_mLibrary.Color#Equal(a, b), ImportedTypes_mLibrary.Color.Green_q(b) } 
  ImportedTypes_mLibrary.Color.Green_q(a)
       && ImportedTypes_mLibrary.Color.Green_q(b)
     ==> (ImportedTypes_mLibrary.Color#Equal(a, b)
       <==> ImportedTypes_mLibrary.Color._h15(a) == ImportedTypes_mLibrary.Color._h15(b)));

// Datatype extensional equality definition: #ImportedTypes.Library.Color.Blue
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ImportedTypes_mLibrary.Color#Equal(a, b), ImportedTypes_mLibrary.Color.Blue_q(a) } 
    { ImportedTypes_mLibrary.Color#Equal(a, b), ImportedTypes_mLibrary.Color.Blue_q(b) } 
  ImportedTypes_mLibrary.Color.Blue_q(a) && ImportedTypes_mLibrary.Color.Blue_q(b)
     ==> (ImportedTypes_mLibrary.Color#Equal(a, b)
       <==> ImportedTypes_mLibrary.Color._h16(a) == ImportedTypes_mLibrary.Color._h16(b)));

// Datatype extensionality axiom: ImportedTypes.Library.Color
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ImportedTypes_mLibrary.Color#Equal(a, b) } 
  ImportedTypes_mLibrary.Color#Equal(a, b) <==> a == b);

const unique class.ImportedTypes_mLibrary.Color: ClassName;

// Constructor function declaration
function #ImportedTypes.Library.CoColor.Yellow(int) : DatatypeType;

const unique ##ImportedTypes.Library.CoColor.Yellow: DtCtorId
uses {
// Constructor identifier
axiom (forall a#88#0#0: int :: 
  { #ImportedTypes.Library.CoColor.Yellow(a#88#0#0) } 
  DatatypeCtorId(#ImportedTypes.Library.CoColor.Yellow(a#88#0#0))
     == ##ImportedTypes.Library.CoColor.Yellow);
}

function ImportedTypes_mLibrary.CoColor.Yellow_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ImportedTypes_mLibrary.CoColor.Yellow_q(d) } 
  ImportedTypes_mLibrary.CoColor.Yellow_q(d)
     <==> DatatypeCtorId(d) == ##ImportedTypes.Library.CoColor.Yellow);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ImportedTypes_mLibrary.CoColor.Yellow_q(d) } 
  ImportedTypes_mLibrary.CoColor.Yellow_q(d)
     ==> (exists a#89#0#0: int :: d == #ImportedTypes.Library.CoColor.Yellow(a#89#0#0)));

function Tclass.ImportedTypes_mLibrary.CoColor() : Ty
uses {
// Tclass.ImportedTypes_mLibrary.CoColor Tag
axiom Tag(Tclass.ImportedTypes_mLibrary.CoColor())
     == Tagclass.ImportedTypes_mLibrary.CoColor
   && TagFamily(Tclass.ImportedTypes_mLibrary.CoColor()) == tytagFamily$CoColor;
}

const unique Tagclass.ImportedTypes_mLibrary.CoColor: TyTag;

// Box/unbox axiom for Tclass.ImportedTypes_mLibrary.CoColor
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ImportedTypes_mLibrary.CoColor()) } 
  $IsBox(bx, Tclass.ImportedTypes_mLibrary.CoColor())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.ImportedTypes_mLibrary.CoColor()));

// Constructor $Is
axiom (forall a#90#0#0: int :: 
  { $Is(#ImportedTypes.Library.CoColor.Yellow(a#90#0#0), 
      Tclass.ImportedTypes_mLibrary.CoColor()) } 
  $Is(#ImportedTypes.Library.CoColor.Yellow(a#90#0#0), 
      Tclass.ImportedTypes_mLibrary.CoColor())
     <==> $Is(a#90#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(ImportedTypes_mLibrary.CoColor._h17(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      ImportedTypes_mLibrary.CoColor.Yellow_q(d)
       && $IsAlloc(d, Tclass.ImportedTypes_mLibrary.CoColor(), $h)
     ==> $IsAlloc(ImportedTypes_mLibrary.CoColor._h17(d), TInt, $h));

function ImportedTypes_mLibrary.CoColor._h17(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#91#0#0: int :: 
  { #ImportedTypes.Library.CoColor.Yellow(a#91#0#0) } 
  ImportedTypes_mLibrary.CoColor._h17(#ImportedTypes.Library.CoColor.Yellow(a#91#0#0))
     == a#91#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.ImportedTypes_mLibrary.CoColor(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.ImportedTypes_mLibrary.CoColor())
     ==> $IsAlloc(d, Tclass.ImportedTypes_mLibrary.CoColor(), $h));

// Depth-one case-split function
function $IsA#ImportedTypes_mLibrary.CoColor(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ImportedTypes_mLibrary.CoColor(d) } 
  $IsA#ImportedTypes_mLibrary.CoColor(d)
     ==> ImportedTypes_mLibrary.CoColor.Yellow_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { ImportedTypes_mLibrary.CoColor.Yellow_q(d), $Is(d, Tclass.ImportedTypes_mLibrary.CoColor()) } 
  $Is(d, Tclass.ImportedTypes_mLibrary.CoColor())
     ==> ImportedTypes_mLibrary.CoColor.Yellow_q(d));

function $Eq#ImportedTypes_mLibrary.CoColor(LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#ImportedTypes_mLibrary.CoColor($LS(ly), d0, d1) } 
  $Is(d0, Tclass.ImportedTypes_mLibrary.CoColor())
       && $Is(d1, Tclass.ImportedTypes_mLibrary.CoColor())
     ==> ($Eq#ImportedTypes_mLibrary.CoColor($LS(ly), d0, d1)
       <==> ImportedTypes_mLibrary.CoColor.Yellow_q(d0)
         && ImportedTypes_mLibrary.CoColor.Yellow_q(d1)
         && (ImportedTypes_mLibrary.CoColor.Yellow_q(d0)
             && ImportedTypes_mLibrary.CoColor.Yellow_q(d1)
           ==> ImportedTypes_mLibrary.CoColor._h17(d0)
             == ImportedTypes_mLibrary.CoColor._h17(d1))));

// Unbump layer co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#ImportedTypes_mLibrary.CoColor($LS(ly), d0, d1) } 
  $Eq#ImportedTypes_mLibrary.CoColor($LS(ly), d0, d1)
     <==> $Eq#ImportedTypes_mLibrary.CoColor(ly, d0, d1));

// Equality for codatatypes
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#ImportedTypes_mLibrary.CoColor($LS(ly), d0, d1) } 
  $Eq#ImportedTypes_mLibrary.CoColor($LS(ly), d0, d1) <==> d0 == d1);

function $PrefixEq#ImportedTypes_mLibrary.CoColor(Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#ImportedTypes_mLibrary.CoColor(k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass.ImportedTypes_mLibrary.CoColor())
       && $Is(d1, Tclass.ImportedTypes_mLibrary.CoColor())
     ==> ($PrefixEq#ImportedTypes_mLibrary.CoColor(k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> ImportedTypes_mLibrary.CoColor.Yellow_q(d0)
             && ImportedTypes_mLibrary.CoColor.Yellow_q(d1)
             && (ImportedTypes_mLibrary.CoColor.Yellow_q(d0)
                 && ImportedTypes_mLibrary.CoColor.Yellow_q(d1)
               ==> ImportedTypes_mLibrary.CoColor._h17(d0)
                 == ImportedTypes_mLibrary.CoColor._h17(d1)))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#ImportedTypes_mLibrary.CoColor(ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#ImportedTypes_mLibrary.CoColor(k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#ImportedTypes_mLibrary.CoColor(k, $LS(ly), d0, d1)
       <==> $PrefixEq#ImportedTypes_mLibrary.CoColor(k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#ImportedTypes_mLibrary.CoColor($LS(ly), d0, d1) } 
  $Eq#ImportedTypes_mLibrary.CoColor($LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#ImportedTypes_mLibrary.CoColor(k, $LS(ly), d0, d1) } 
      $PrefixEq#ImportedTypes_mLibrary.CoColor(k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#ImportedTypes_mLibrary.CoColor($LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#ImportedTypes_mLibrary.CoColor(ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#ImportedTypes_mLibrary.CoColor(ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#ImportedTypes_mLibrary.CoColor($LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType, m: Box :: 
  { $PrefixEq#ImportedTypes_mLibrary.CoColor(k, $LS(ly), d0, d1), $PrefixEq#ImportedTypes_mLibrary.CoColor(m, $LS(ly), d0, d1) } 
  ORD#Less(k, m) && $PrefixEq#ImportedTypes_mLibrary.CoColor(m, $LS(ly), d0, d1)
     ==> $PrefixEq#ImportedTypes_mLibrary.CoColor(k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#ImportedTypes_mLibrary.CoColor(k, $LS(ly), d0, d1) } 
  d0 == d1 ==> $PrefixEq#ImportedTypes_mLibrary.CoColor(k, $LS(ly), d0, d1));

const unique class.ImportedTypes_mLibrary.CoColor: ClassName;

// Constructor function declaration
function #ImportedTypes.Library.MoColor.MoYellow(int, DatatypeType) : DatatypeType;

const unique ##ImportedTypes.Library.MoColor.MoYellow: DtCtorId
uses {
// Constructor identifier
axiom (forall a#92#0#0: int, a#92#1#0: DatatypeType :: 
  { #ImportedTypes.Library.MoColor.MoYellow(a#92#0#0, a#92#1#0) } 
  DatatypeCtorId(#ImportedTypes.Library.MoColor.MoYellow(a#92#0#0, a#92#1#0))
     == ##ImportedTypes.Library.MoColor.MoYellow);
}

function ImportedTypes_mLibrary.MoColor.MoYellow_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ImportedTypes_mLibrary.MoColor.MoYellow_q(d) } 
  ImportedTypes_mLibrary.MoColor.MoYellow_q(d)
     <==> DatatypeCtorId(d) == ##ImportedTypes.Library.MoColor.MoYellow);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ImportedTypes_mLibrary.MoColor.MoYellow_q(d) } 
  ImportedTypes_mLibrary.MoColor.MoYellow_q(d)
     ==> (exists a#93#0#0: int, a#93#1#0: DatatypeType :: 
      d == #ImportedTypes.Library.MoColor.MoYellow(a#93#0#0, a#93#1#0)));

function Tclass.ImportedTypes_mLibrary.MoColor() : Ty
uses {
// Tclass.ImportedTypes_mLibrary.MoColor Tag
axiom Tag(Tclass.ImportedTypes_mLibrary.MoColor())
     == Tagclass.ImportedTypes_mLibrary.MoColor
   && TagFamily(Tclass.ImportedTypes_mLibrary.MoColor()) == tytagFamily$MoColor;
}

const unique Tagclass.ImportedTypes_mLibrary.MoColor: TyTag;

// Box/unbox axiom for Tclass.ImportedTypes_mLibrary.MoColor
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ImportedTypes_mLibrary.MoColor()) } 
  $IsBox(bx, Tclass.ImportedTypes_mLibrary.MoColor())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.ImportedTypes_mLibrary.MoColor()));

// Constructor $Is
axiom (forall a#94#0#0: int, a#94#1#0: DatatypeType :: 
  { $Is(#ImportedTypes.Library.MoColor.MoYellow(a#94#0#0, a#94#1#0), 
      Tclass.ImportedTypes_mLibrary.MoColor()) } 
  $Is(#ImportedTypes.Library.MoColor.MoYellow(a#94#0#0, a#94#1#0), 
      Tclass.ImportedTypes_mLibrary.MoColor())
     <==> $Is(a#94#0#0, TInt) && $Is(a#94#1#0, Tclass.ImportedTypes_mLibrary.MoColor()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(ImportedTypes_mLibrary.MoColor._h18(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      ImportedTypes_mLibrary.MoColor.MoYellow_q(d)
       && $IsAlloc(d, Tclass.ImportedTypes_mLibrary.MoColor(), $h)
     ==> $IsAlloc(ImportedTypes_mLibrary.MoColor._h18(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(ImportedTypes_mLibrary.MoColor._h19(d), 
      Tclass.ImportedTypes_mLibrary.MoColor(), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ImportedTypes_mLibrary.MoColor.MoYellow_q(d)
       && $IsAlloc(d, Tclass.ImportedTypes_mLibrary.MoColor(), $h)
     ==> $IsAlloc(ImportedTypes_mLibrary.MoColor._h19(d), 
      Tclass.ImportedTypes_mLibrary.MoColor(), 
      $h));

function ImportedTypes_mLibrary.MoColor._h18(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#95#0#0: int, a#95#1#0: DatatypeType :: 
  { #ImportedTypes.Library.MoColor.MoYellow(a#95#0#0, a#95#1#0) } 
  ImportedTypes_mLibrary.MoColor._h18(#ImportedTypes.Library.MoColor.MoYellow(a#95#0#0, a#95#1#0))
     == a#95#0#0);

function ImportedTypes_mLibrary.MoColor._h19(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#96#0#0: int, a#96#1#0: DatatypeType :: 
  { #ImportedTypes.Library.MoColor.MoYellow(a#96#0#0, a#96#1#0) } 
  ImportedTypes_mLibrary.MoColor._h19(#ImportedTypes.Library.MoColor.MoYellow(a#96#0#0, a#96#1#0))
     == a#96#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.ImportedTypes_mLibrary.MoColor(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.ImportedTypes_mLibrary.MoColor())
     ==> $IsAlloc(d, Tclass.ImportedTypes_mLibrary.MoColor(), $h));

// Depth-one case-split function
function $IsA#ImportedTypes_mLibrary.MoColor(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ImportedTypes_mLibrary.MoColor(d) } 
  $IsA#ImportedTypes_mLibrary.MoColor(d)
     ==> ImportedTypes_mLibrary.MoColor.MoYellow_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { ImportedTypes_mLibrary.MoColor.MoYellow_q(d), $Is(d, Tclass.ImportedTypes_mLibrary.MoColor()) } 
  $Is(d, Tclass.ImportedTypes_mLibrary.MoColor())
     ==> ImportedTypes_mLibrary.MoColor.MoYellow_q(d));

function $Eq#ImportedTypes_mLibrary.MoColor(LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#ImportedTypes_mLibrary.MoColor($LS(ly), d0, d1) } 
  $Is(d0, Tclass.ImportedTypes_mLibrary.MoColor())
       && $Is(d1, Tclass.ImportedTypes_mLibrary.MoColor())
     ==> ($Eq#ImportedTypes_mLibrary.MoColor($LS(ly), d0, d1)
       <==> ImportedTypes_mLibrary.MoColor.MoYellow_q(d0)
         && ImportedTypes_mLibrary.MoColor.MoYellow_q(d1)
         && (ImportedTypes_mLibrary.MoColor.MoYellow_q(d0)
             && ImportedTypes_mLibrary.MoColor.MoYellow_q(d1)
           ==> ImportedTypes_mLibrary.MoColor._h18(d0)
               == ImportedTypes_mLibrary.MoColor._h18(d1)
             && $Eq#ImportedTypes_mLibrary.MoColor(ly, 
              ImportedTypes_mLibrary.MoColor._h19(d0), 
              ImportedTypes_mLibrary.MoColor._h19(d1)))));

// Unbump layer co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#ImportedTypes_mLibrary.MoColor($LS(ly), d0, d1) } 
  $Eq#ImportedTypes_mLibrary.MoColor($LS(ly), d0, d1)
     <==> $Eq#ImportedTypes_mLibrary.MoColor(ly, d0, d1));

// Equality for codatatypes
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#ImportedTypes_mLibrary.MoColor($LS(ly), d0, d1) } 
  $Eq#ImportedTypes_mLibrary.MoColor($LS(ly), d0, d1) <==> d0 == d1);

function $PrefixEq#ImportedTypes_mLibrary.MoColor(Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#ImportedTypes_mLibrary.MoColor(k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass.ImportedTypes_mLibrary.MoColor())
       && $Is(d1, Tclass.ImportedTypes_mLibrary.MoColor())
     ==> ($PrefixEq#ImportedTypes_mLibrary.MoColor(k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> ImportedTypes_mLibrary.MoColor.MoYellow_q(d0)
             && ImportedTypes_mLibrary.MoColor.MoYellow_q(d1)
             && (ImportedTypes_mLibrary.MoColor.MoYellow_q(d0)
                 && ImportedTypes_mLibrary.MoColor.MoYellow_q(d1)
               ==> ImportedTypes_mLibrary.MoColor._h18(d0)
                   == ImportedTypes_mLibrary.MoColor._h18(d1)
                 && $PrefixEq#ImportedTypes_mLibrary.MoColor(ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  ImportedTypes_mLibrary.MoColor._h19(d0), 
                  ImportedTypes_mLibrary.MoColor._h19(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#ImportedTypes_mLibrary.MoColor(ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#ImportedTypes_mLibrary.MoColor(k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#ImportedTypes_mLibrary.MoColor(k, $LS(ly), d0, d1)
       <==> $PrefixEq#ImportedTypes_mLibrary.MoColor(k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#ImportedTypes_mLibrary.MoColor($LS(ly), d0, d1) } 
  $Eq#ImportedTypes_mLibrary.MoColor($LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#ImportedTypes_mLibrary.MoColor(k, $LS(ly), d0, d1) } 
      $PrefixEq#ImportedTypes_mLibrary.MoColor(k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#ImportedTypes_mLibrary.MoColor($LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#ImportedTypes_mLibrary.MoColor(ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#ImportedTypes_mLibrary.MoColor(ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#ImportedTypes_mLibrary.MoColor($LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType, m: Box :: 
  { $PrefixEq#ImportedTypes_mLibrary.MoColor(k, $LS(ly), d0, d1), $PrefixEq#ImportedTypes_mLibrary.MoColor(m, $LS(ly), d0, d1) } 
  ORD#Less(k, m) && $PrefixEq#ImportedTypes_mLibrary.MoColor(m, $LS(ly), d0, d1)
     ==> $PrefixEq#ImportedTypes_mLibrary.MoColor(k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#ImportedTypes_mLibrary.MoColor(k, $LS(ly), d0, d1) } 
  d0 == d1 ==> $PrefixEq#ImportedTypes_mLibrary.MoColor(k, $LS(ly), d0, d1));

const unique class.ImportedTypes_mLibrary.MoColor: ClassName;

function Tclass.ImportedTypes_mLibrary.Nt() : Ty
uses {
// Tclass.ImportedTypes_mLibrary.Nt Tag
axiom Tag(Tclass.ImportedTypes_mLibrary.Nt()) == Tagclass.ImportedTypes_mLibrary.Nt
   && TagFamily(Tclass.ImportedTypes_mLibrary.Nt()) == tytagFamily$Nt;
}

const unique Tagclass.ImportedTypes_mLibrary.Nt: TyTag;

// Box/unbox axiom for Tclass.ImportedTypes_mLibrary.Nt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ImportedTypes_mLibrary.Nt()) } 
  $IsBox(bx, Tclass.ImportedTypes_mLibrary.Nt())
     ==> $Box($Unbox(bx): real) == bx
       && $Is($Unbox(bx): real, Tclass.ImportedTypes_mLibrary.Nt()));

// $Is axiom for newtype ImportedTypes.Library.Nt
axiom (forall r#0: real :: 
  { $Is(r#0, Tclass.ImportedTypes_mLibrary.Nt()) } 
  $Is(r#0, Tclass.ImportedTypes_mLibrary.Nt())
     <==> LitReal(-1e0) <= r#0 && r#0 <= LitReal(1e0));

// $IsAlloc axiom for newtype ImportedTypes.Library.Nt
axiom (forall r#0: real, $h: Heap :: 
  { $IsAlloc(r#0, Tclass.ImportedTypes_mLibrary.Nt(), $h) } 
  $IsAlloc(r#0, Tclass.ImportedTypes_mLibrary.Nt(), $h));

const unique class.ImportedTypes_mLibrary.Nt: ClassName;

const unique class.ImportedTypes.__default: ClassName;

procedure {:verboseName "ImportedTypes.Test (well-formedness)"} CheckWellFormed$$ImportedTypes.__default.Test();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ImportedTypes.Test (call)"} Call$$ImportedTypes.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.TypeDescriptorInDatatypeValue.__default: ClassName;

procedure {:verboseName "TypeDescriptorInDatatypeValue.Test (well-formedness)"} CheckWellFormed$$TypeDescriptorInDatatypeValue.__default.Test();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorInDatatypeValue.Test (call)"} Call$$TypeDescriptorInDatatypeValue.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// Constructor function declaration
function #TypeDescriptorInDatatypeValue.Datatype.Simple(Box, Box) : DatatypeType;

const unique ##TypeDescriptorInDatatypeValue.Datatype.Simple: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: Box :: 
  { #TypeDescriptorInDatatypeValue.Datatype.Simple(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#TypeDescriptorInDatatypeValue.Datatype.Simple(a#0#0#0, a#0#1#0))
     == ##TypeDescriptorInDatatypeValue.Datatype.Simple);
}

function TypeDescriptorInDatatypeValue.Datatype.Simple_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Datatype.Simple_q(d) } 
  TypeDescriptorInDatatypeValue.Datatype.Simple_q(d)
     <==> DatatypeCtorId(d) == ##TypeDescriptorInDatatypeValue.Datatype.Simple);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Datatype.Simple_q(d) } 
  TypeDescriptorInDatatypeValue.Datatype.Simple_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: Box :: 
      d == #TypeDescriptorInDatatypeValue.Datatype.Simple(a#1#0#0, a#1#1#0)));

function Tclass.TypeDescriptorInDatatypeValue.Datatype(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass.TypeDescriptorInDatatypeValue.Datatype: TyTag;

// Tclass.TypeDescriptorInDatatypeValue.Datatype Tag
axiom (forall TypeDescriptorInDatatypeValue.Datatype$A: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$B: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$C: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
      TypeDescriptorInDatatypeValue.Datatype$B, 
      TypeDescriptorInDatatypeValue.Datatype$C, 
      TypeDescriptorInDatatypeValue.Datatype$D) } 
  Tag(Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
          TypeDescriptorInDatatypeValue.Datatype$B, 
          TypeDescriptorInDatatypeValue.Datatype$C, 
          TypeDescriptorInDatatypeValue.Datatype$D))
       == Tagclass.TypeDescriptorInDatatypeValue.Datatype
     && TagFamily(Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
          TypeDescriptorInDatatypeValue.Datatype$B, 
          TypeDescriptorInDatatypeValue.Datatype$C, 
          TypeDescriptorInDatatypeValue.Datatype$D))
       == tytagFamily$Datatype);

function Tclass.TypeDescriptorInDatatypeValue.Datatype_0(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.Datatype injectivity 0
axiom (forall TypeDescriptorInDatatypeValue.Datatype$A: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$B: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$C: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
      TypeDescriptorInDatatypeValue.Datatype$B, 
      TypeDescriptorInDatatypeValue.Datatype$C, 
      TypeDescriptorInDatatypeValue.Datatype$D) } 
  Tclass.TypeDescriptorInDatatypeValue.Datatype_0(Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D))
     == TypeDescriptorInDatatypeValue.Datatype$A);

function Tclass.TypeDescriptorInDatatypeValue.Datatype_1(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.Datatype injectivity 1
axiom (forall TypeDescriptorInDatatypeValue.Datatype$A: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$B: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$C: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
      TypeDescriptorInDatatypeValue.Datatype$B, 
      TypeDescriptorInDatatypeValue.Datatype$C, 
      TypeDescriptorInDatatypeValue.Datatype$D) } 
  Tclass.TypeDescriptorInDatatypeValue.Datatype_1(Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D))
     == TypeDescriptorInDatatypeValue.Datatype$B);

function Tclass.TypeDescriptorInDatatypeValue.Datatype_2(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.Datatype injectivity 2
axiom (forall TypeDescriptorInDatatypeValue.Datatype$A: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$B: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$C: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
      TypeDescriptorInDatatypeValue.Datatype$B, 
      TypeDescriptorInDatatypeValue.Datatype$C, 
      TypeDescriptorInDatatypeValue.Datatype$D) } 
  Tclass.TypeDescriptorInDatatypeValue.Datatype_2(Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D))
     == TypeDescriptorInDatatypeValue.Datatype$C);

function Tclass.TypeDescriptorInDatatypeValue.Datatype_3(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.Datatype injectivity 3
axiom (forall TypeDescriptorInDatatypeValue.Datatype$A: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$B: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$C: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
      TypeDescriptorInDatatypeValue.Datatype$B, 
      TypeDescriptorInDatatypeValue.Datatype$C, 
      TypeDescriptorInDatatypeValue.Datatype$D) } 
  Tclass.TypeDescriptorInDatatypeValue.Datatype_3(Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D))
     == TypeDescriptorInDatatypeValue.Datatype$D);

// Box/unbox axiom for Tclass.TypeDescriptorInDatatypeValue.Datatype
axiom (forall TypeDescriptorInDatatypeValue.Datatype$A: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$B: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$C: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$D: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
          TypeDescriptorInDatatypeValue.Datatype$B, 
          TypeDescriptorInDatatypeValue.Datatype$C, 
          TypeDescriptorInDatatypeValue.Datatype$D)));

// Constructor $Is
axiom (forall TypeDescriptorInDatatypeValue.Datatype$A: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$B: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$C: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$D: Ty, 
    a#2#0#0: Box, 
    a#2#1#0: Box :: 
  { $Is(#TypeDescriptorInDatatypeValue.Datatype.Simple(a#2#0#0, a#2#1#0), 
      Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D)) } 
  $Is(#TypeDescriptorInDatatypeValue.Datatype.Simple(a#2#0#0, a#2#1#0), 
      Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D))
     <==> $IsBox(a#2#0#0, TypeDescriptorInDatatypeValue.Datatype$C)
       && $IsBox(a#2#1#0, TypeDescriptorInDatatypeValue.Datatype$D));

// Constructor $IsAlloc
axiom (forall TypeDescriptorInDatatypeValue.Datatype$A: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$B: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$C: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$D: Ty, 
    a#2#0#0: Box, 
    a#2#1#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#TypeDescriptorInDatatypeValue.Datatype.Simple(a#2#0#0, a#2#1#0), 
      Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#TypeDescriptorInDatatypeValue.Datatype.Simple(a#2#0#0, a#2#1#0), 
        Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
          TypeDescriptorInDatatypeValue.Datatype$B, 
          TypeDescriptorInDatatypeValue.Datatype$C, 
          TypeDescriptorInDatatypeValue.Datatype$D), 
        $h)
       <==> $IsAllocBox(a#2#0#0, TypeDescriptorInDatatypeValue.Datatype$C, $h)
         && $IsAllocBox(a#2#1#0, TypeDescriptorInDatatypeValue.Datatype$D, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, TypeDescriptorInDatatypeValue.Datatype$C: Ty, $h: Heap :: 
  { $IsAllocBox(TypeDescriptorInDatatypeValue.Datatype._h20(d), 
      TypeDescriptorInDatatypeValue.Datatype$C, 
      $h) } 
  $IsGoodHeap($h)
       && 
      TypeDescriptorInDatatypeValue.Datatype.Simple_q(d)
       && (exists TypeDescriptorInDatatypeValue.Datatype$A: Ty, 
          TypeDescriptorInDatatypeValue.Datatype$B: Ty, 
          TypeDescriptorInDatatypeValue.Datatype$D: Ty :: 
        { $IsAlloc(d, 
            Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
              TypeDescriptorInDatatypeValue.Datatype$B, 
              TypeDescriptorInDatatypeValue.Datatype$C, 
              TypeDescriptorInDatatypeValue.Datatype$D), 
            $h) } 
        $IsAlloc(d, 
          Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
            TypeDescriptorInDatatypeValue.Datatype$B, 
            TypeDescriptorInDatatypeValue.Datatype$C, 
            TypeDescriptorInDatatypeValue.Datatype$D), 
          $h))
     ==> $IsAllocBox(TypeDescriptorInDatatypeValue.Datatype._h20(d), 
      TypeDescriptorInDatatypeValue.Datatype$C, 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, TypeDescriptorInDatatypeValue.Datatype$D: Ty, $h: Heap :: 
  { $IsAllocBox(TypeDescriptorInDatatypeValue.Datatype._h21(d), 
      TypeDescriptorInDatatypeValue.Datatype$D, 
      $h) } 
  $IsGoodHeap($h)
       && 
      TypeDescriptorInDatatypeValue.Datatype.Simple_q(d)
       && (exists TypeDescriptorInDatatypeValue.Datatype$A: Ty, 
          TypeDescriptorInDatatypeValue.Datatype$B: Ty, 
          TypeDescriptorInDatatypeValue.Datatype$C: Ty :: 
        { $IsAlloc(d, 
            Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
              TypeDescriptorInDatatypeValue.Datatype$B, 
              TypeDescriptorInDatatypeValue.Datatype$C, 
              TypeDescriptorInDatatypeValue.Datatype$D), 
            $h) } 
        $IsAlloc(d, 
          Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
            TypeDescriptorInDatatypeValue.Datatype$B, 
            TypeDescriptorInDatatypeValue.Datatype$C, 
            TypeDescriptorInDatatypeValue.Datatype$D), 
          $h))
     ==> $IsAllocBox(TypeDescriptorInDatatypeValue.Datatype._h21(d), 
      TypeDescriptorInDatatypeValue.Datatype$D, 
      $h));

// Constructor literal
axiom (forall a#3#0#0: Box, a#3#1#0: Box :: 
  { #TypeDescriptorInDatatypeValue.Datatype.Simple(Lit(a#3#0#0), Lit(a#3#1#0)) } 
  #TypeDescriptorInDatatypeValue.Datatype.Simple(Lit(a#3#0#0), Lit(a#3#1#0))
     == Lit(#TypeDescriptorInDatatypeValue.Datatype.Simple(a#3#0#0, a#3#1#0)));

function TypeDescriptorInDatatypeValue.Datatype._h20(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: Box :: 
  { #TypeDescriptorInDatatypeValue.Datatype.Simple(a#4#0#0, a#4#1#0) } 
  TypeDescriptorInDatatypeValue.Datatype._h20(#TypeDescriptorInDatatypeValue.Datatype.Simple(a#4#0#0, a#4#1#0))
     == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box, a#5#1#0: Box :: 
  { #TypeDescriptorInDatatypeValue.Datatype.Simple(a#5#0#0, a#5#1#0) } 
  BoxRank(a#5#0#0)
     < DtRank(#TypeDescriptorInDatatypeValue.Datatype.Simple(a#5#0#0, a#5#1#0)));

function TypeDescriptorInDatatypeValue.Datatype._h21(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#6#0#0: Box, a#6#1#0: Box :: 
  { #TypeDescriptorInDatatypeValue.Datatype.Simple(a#6#0#0, a#6#1#0) } 
  TypeDescriptorInDatatypeValue.Datatype._h21(#TypeDescriptorInDatatypeValue.Datatype.Simple(a#6#0#0, a#6#1#0))
     == a#6#1#0);

// Inductive rank
axiom (forall a#7#0#0: Box, a#7#1#0: Box :: 
  { #TypeDescriptorInDatatypeValue.Datatype.Simple(a#7#0#0, a#7#1#0) } 
  BoxRank(a#7#1#0)
     < DtRank(#TypeDescriptorInDatatypeValue.Datatype.Simple(a#7#0#0, a#7#1#0)));

// Constructor function declaration
function #TypeDescriptorInDatatypeValue.Datatype.More(DatatypeType) : DatatypeType;

const unique ##TypeDescriptorInDatatypeValue.Datatype.More: DtCtorId
uses {
// Constructor identifier
axiom (forall a#8#0#0: DatatypeType :: 
  { #TypeDescriptorInDatatypeValue.Datatype.More(a#8#0#0) } 
  DatatypeCtorId(#TypeDescriptorInDatatypeValue.Datatype.More(a#8#0#0))
     == ##TypeDescriptorInDatatypeValue.Datatype.More);
}

function TypeDescriptorInDatatypeValue.Datatype.More_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Datatype.More_q(d) } 
  TypeDescriptorInDatatypeValue.Datatype.More_q(d)
     <==> DatatypeCtorId(d) == ##TypeDescriptorInDatatypeValue.Datatype.More);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Datatype.More_q(d) } 
  TypeDescriptorInDatatypeValue.Datatype.More_q(d)
     ==> (exists a#9#0#0: DatatypeType :: 
      d == #TypeDescriptorInDatatypeValue.Datatype.More(a#9#0#0)));

// Constructor $Is
axiom (forall TypeDescriptorInDatatypeValue.Datatype$A: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$B: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$C: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$D: Ty, 
    a#10#0#0: DatatypeType :: 
  { $Is(#TypeDescriptorInDatatypeValue.Datatype.More(a#10#0#0), 
      Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D)) } 
  $Is(#TypeDescriptorInDatatypeValue.Datatype.More(a#10#0#0), 
      Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D))
     <==> $Is(a#10#0#0, 
      Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D)));

// Constructor $IsAlloc
axiom (forall TypeDescriptorInDatatypeValue.Datatype$A: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$B: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$C: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$D: Ty, 
    a#10#0#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#TypeDescriptorInDatatypeValue.Datatype.More(a#10#0#0), 
      Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#TypeDescriptorInDatatypeValue.Datatype.More(a#10#0#0), 
        Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
          TypeDescriptorInDatatypeValue.Datatype$B, 
          TypeDescriptorInDatatypeValue.Datatype$C, 
          TypeDescriptorInDatatypeValue.Datatype$D), 
        $h)
       <==> $IsAlloc(a#10#0#0, 
        Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
          TypeDescriptorInDatatypeValue.Datatype$B, 
          TypeDescriptorInDatatypeValue.Datatype$C, 
          TypeDescriptorInDatatypeValue.Datatype$D), 
        $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, 
    TypeDescriptorInDatatypeValue.Datatype$A: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$B: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$C: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$D: Ty, 
    $h: Heap :: 
  { $IsAlloc(TypeDescriptorInDatatypeValue.Datatype._h22(d), 
      Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D), 
      $h) } 
  $IsGoodHeap($h)
       && 
      TypeDescriptorInDatatypeValue.Datatype.More_q(d)
       && $IsAlloc(d, 
        Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
          TypeDescriptorInDatatypeValue.Datatype$B, 
          TypeDescriptorInDatatypeValue.Datatype$C, 
          TypeDescriptorInDatatypeValue.Datatype$D), 
        $h)
     ==> $IsAlloc(TypeDescriptorInDatatypeValue.Datatype._h22(d), 
      Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D), 
      $h));

// Constructor literal
axiom (forall a#11#0#0: DatatypeType :: 
  { #TypeDescriptorInDatatypeValue.Datatype.More(Lit(a#11#0#0)) } 
  #TypeDescriptorInDatatypeValue.Datatype.More(Lit(a#11#0#0))
     == Lit(#TypeDescriptorInDatatypeValue.Datatype.More(a#11#0#0)));

function TypeDescriptorInDatatypeValue.Datatype._h22(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#12#0#0: DatatypeType :: 
  { #TypeDescriptorInDatatypeValue.Datatype.More(a#12#0#0) } 
  TypeDescriptorInDatatypeValue.Datatype._h22(#TypeDescriptorInDatatypeValue.Datatype.More(a#12#0#0))
     == a#12#0#0);

// Inductive rank
axiom (forall a#13#0#0: DatatypeType :: 
  { #TypeDescriptorInDatatypeValue.Datatype.More(a#13#0#0) } 
  DtRank(a#13#0#0)
     < DtRank(#TypeDescriptorInDatatypeValue.Datatype.More(a#13#0#0)));

// Depth-one case-split function
function $IsA#TypeDescriptorInDatatypeValue.Datatype(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TypeDescriptorInDatatypeValue.Datatype(d) } 
  $IsA#TypeDescriptorInDatatypeValue.Datatype(d)
     ==> TypeDescriptorInDatatypeValue.Datatype.Simple_q(d)
       || TypeDescriptorInDatatypeValue.Datatype.More_q(d));

// Questionmark data type disjunctivity
axiom (forall TypeDescriptorInDatatypeValue.Datatype$A: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$B: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$C: Ty, 
    TypeDescriptorInDatatypeValue.Datatype$D: Ty, 
    d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Datatype.More_q(d), $Is(d, 
      Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D)) } 
    { TypeDescriptorInDatatypeValue.Datatype.Simple_q(d), $Is(d, 
      Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D)) } 
  $Is(d, 
      Tclass.TypeDescriptorInDatatypeValue.Datatype(TypeDescriptorInDatatypeValue.Datatype$A, 
        TypeDescriptorInDatatypeValue.Datatype$B, 
        TypeDescriptorInDatatypeValue.Datatype$C, 
        TypeDescriptorInDatatypeValue.Datatype$D))
     ==> TypeDescriptorInDatatypeValue.Datatype.Simple_q(d)
       || TypeDescriptorInDatatypeValue.Datatype.More_q(d));

// Datatype extensional equality declaration
function TypeDescriptorInDatatypeValue.Datatype#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #TypeDescriptorInDatatypeValue.Datatype.Simple
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Datatype#Equal(a, b), TypeDescriptorInDatatypeValue.Datatype.Simple_q(a) } 
    { TypeDescriptorInDatatypeValue.Datatype#Equal(a, b), TypeDescriptorInDatatypeValue.Datatype.Simple_q(b) } 
  TypeDescriptorInDatatypeValue.Datatype.Simple_q(a)
       && TypeDescriptorInDatatypeValue.Datatype.Simple_q(b)
     ==> (TypeDescriptorInDatatypeValue.Datatype#Equal(a, b)
       <==> TypeDescriptorInDatatypeValue.Datatype._h20(a)
           == TypeDescriptorInDatatypeValue.Datatype._h20(b)
         && TypeDescriptorInDatatypeValue.Datatype._h21(a)
           == TypeDescriptorInDatatypeValue.Datatype._h21(b)));

// Datatype extensional equality definition: #TypeDescriptorInDatatypeValue.Datatype.More
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Datatype#Equal(a, b), TypeDescriptorInDatatypeValue.Datatype.More_q(a) } 
    { TypeDescriptorInDatatypeValue.Datatype#Equal(a, b), TypeDescriptorInDatatypeValue.Datatype.More_q(b) } 
  TypeDescriptorInDatatypeValue.Datatype.More_q(a)
       && TypeDescriptorInDatatypeValue.Datatype.More_q(b)
     ==> (TypeDescriptorInDatatypeValue.Datatype#Equal(a, b)
       <==> TypeDescriptorInDatatypeValue.Datatype#Equal(TypeDescriptorInDatatypeValue.Datatype._h22(a), 
        TypeDescriptorInDatatypeValue.Datatype._h22(b))));

// Datatype extensionality axiom: TypeDescriptorInDatatypeValue.Datatype
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Datatype#Equal(a, b) } 
  TypeDescriptorInDatatypeValue.Datatype#Equal(a, b) <==> a == b);

const unique class.TypeDescriptorInDatatypeValue.Datatype: ClassName;

// Constructor function declaration
function #TypeDescriptorInDatatypeValue.Wrapper.Wrapper(Box) : DatatypeType;

const unique ##TypeDescriptorInDatatypeValue.Wrapper.Wrapper: DtCtorId
uses {
// Constructor identifier
axiom (forall a#14#0#0: Box :: 
  { #TypeDescriptorInDatatypeValue.Wrapper.Wrapper(a#14#0#0) } 
  DatatypeCtorId(#TypeDescriptorInDatatypeValue.Wrapper.Wrapper(a#14#0#0))
     == ##TypeDescriptorInDatatypeValue.Wrapper.Wrapper);
}

function TypeDescriptorInDatatypeValue.Wrapper.Wrapper_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Wrapper.Wrapper_q(d) } 
  TypeDescriptorInDatatypeValue.Wrapper.Wrapper_q(d)
     <==> DatatypeCtorId(d) == ##TypeDescriptorInDatatypeValue.Wrapper.Wrapper);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Wrapper.Wrapper_q(d) } 
  TypeDescriptorInDatatypeValue.Wrapper.Wrapper_q(d)
     ==> (exists a#15#0#0: Box :: 
      d == #TypeDescriptorInDatatypeValue.Wrapper.Wrapper(a#15#0#0)));

function Tclass.TypeDescriptorInDatatypeValue.Wrapper(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass.TypeDescriptorInDatatypeValue.Wrapper: TyTag;

// Tclass.TypeDescriptorInDatatypeValue.Wrapper Tag
axiom (forall TypeDescriptorInDatatypeValue.Wrapper$A: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$B: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$C: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
      TypeDescriptorInDatatypeValue.Wrapper$B, 
      TypeDescriptorInDatatypeValue.Wrapper$C, 
      TypeDescriptorInDatatypeValue.Wrapper$D) } 
  Tag(Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
          TypeDescriptorInDatatypeValue.Wrapper$B, 
          TypeDescriptorInDatatypeValue.Wrapper$C, 
          TypeDescriptorInDatatypeValue.Wrapper$D))
       == Tagclass.TypeDescriptorInDatatypeValue.Wrapper
     && TagFamily(Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
          TypeDescriptorInDatatypeValue.Wrapper$B, 
          TypeDescriptorInDatatypeValue.Wrapper$C, 
          TypeDescriptorInDatatypeValue.Wrapper$D))
       == tytagFamily$Wrapper);

function Tclass.TypeDescriptorInDatatypeValue.Wrapper_0(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.Wrapper injectivity 0
axiom (forall TypeDescriptorInDatatypeValue.Wrapper$A: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$B: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$C: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
      TypeDescriptorInDatatypeValue.Wrapper$B, 
      TypeDescriptorInDatatypeValue.Wrapper$C, 
      TypeDescriptorInDatatypeValue.Wrapper$D) } 
  Tclass.TypeDescriptorInDatatypeValue.Wrapper_0(Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
        TypeDescriptorInDatatypeValue.Wrapper$B, 
        TypeDescriptorInDatatypeValue.Wrapper$C, 
        TypeDescriptorInDatatypeValue.Wrapper$D))
     == TypeDescriptorInDatatypeValue.Wrapper$A);

function Tclass.TypeDescriptorInDatatypeValue.Wrapper_1(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.Wrapper injectivity 1
axiom (forall TypeDescriptorInDatatypeValue.Wrapper$A: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$B: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$C: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
      TypeDescriptorInDatatypeValue.Wrapper$B, 
      TypeDescriptorInDatatypeValue.Wrapper$C, 
      TypeDescriptorInDatatypeValue.Wrapper$D) } 
  Tclass.TypeDescriptorInDatatypeValue.Wrapper_1(Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
        TypeDescriptorInDatatypeValue.Wrapper$B, 
        TypeDescriptorInDatatypeValue.Wrapper$C, 
        TypeDescriptorInDatatypeValue.Wrapper$D))
     == TypeDescriptorInDatatypeValue.Wrapper$B);

function Tclass.TypeDescriptorInDatatypeValue.Wrapper_2(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.Wrapper injectivity 2
axiom (forall TypeDescriptorInDatatypeValue.Wrapper$A: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$B: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$C: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
      TypeDescriptorInDatatypeValue.Wrapper$B, 
      TypeDescriptorInDatatypeValue.Wrapper$C, 
      TypeDescriptorInDatatypeValue.Wrapper$D) } 
  Tclass.TypeDescriptorInDatatypeValue.Wrapper_2(Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
        TypeDescriptorInDatatypeValue.Wrapper$B, 
        TypeDescriptorInDatatypeValue.Wrapper$C, 
        TypeDescriptorInDatatypeValue.Wrapper$D))
     == TypeDescriptorInDatatypeValue.Wrapper$C);

function Tclass.TypeDescriptorInDatatypeValue.Wrapper_3(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.Wrapper injectivity 3
axiom (forall TypeDescriptorInDatatypeValue.Wrapper$A: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$B: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$C: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
      TypeDescriptorInDatatypeValue.Wrapper$B, 
      TypeDescriptorInDatatypeValue.Wrapper$C, 
      TypeDescriptorInDatatypeValue.Wrapper$D) } 
  Tclass.TypeDescriptorInDatatypeValue.Wrapper_3(Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
        TypeDescriptorInDatatypeValue.Wrapper$B, 
        TypeDescriptorInDatatypeValue.Wrapper$C, 
        TypeDescriptorInDatatypeValue.Wrapper$D))
     == TypeDescriptorInDatatypeValue.Wrapper$D);

// Box/unbox axiom for Tclass.TypeDescriptorInDatatypeValue.Wrapper
axiom (forall TypeDescriptorInDatatypeValue.Wrapper$A: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$B: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$C: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$D: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
        TypeDescriptorInDatatypeValue.Wrapper$B, 
        TypeDescriptorInDatatypeValue.Wrapper$C, 
        TypeDescriptorInDatatypeValue.Wrapper$D)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
        TypeDescriptorInDatatypeValue.Wrapper$B, 
        TypeDescriptorInDatatypeValue.Wrapper$C, 
        TypeDescriptorInDatatypeValue.Wrapper$D))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
          TypeDescriptorInDatatypeValue.Wrapper$B, 
          TypeDescriptorInDatatypeValue.Wrapper$C, 
          TypeDescriptorInDatatypeValue.Wrapper$D)));

// Constructor $Is
axiom (forall TypeDescriptorInDatatypeValue.Wrapper$A: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$B: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$C: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$D: Ty, 
    a#16#0#0: Box :: 
  { $Is(#TypeDescriptorInDatatypeValue.Wrapper.Wrapper(a#16#0#0), 
      Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
        TypeDescriptorInDatatypeValue.Wrapper$B, 
        TypeDescriptorInDatatypeValue.Wrapper$C, 
        TypeDescriptorInDatatypeValue.Wrapper$D)) } 
  $Is(#TypeDescriptorInDatatypeValue.Wrapper.Wrapper(a#16#0#0), 
      Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
        TypeDescriptorInDatatypeValue.Wrapper$B, 
        TypeDescriptorInDatatypeValue.Wrapper$C, 
        TypeDescriptorInDatatypeValue.Wrapper$D))
     <==> $IsBox(a#16#0#0, TypeDescriptorInDatatypeValue.Wrapper$C));

// Constructor $IsAlloc
axiom (forall TypeDescriptorInDatatypeValue.Wrapper$A: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$B: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$C: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$D: Ty, 
    a#16#0#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#TypeDescriptorInDatatypeValue.Wrapper.Wrapper(a#16#0#0), 
      Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
        TypeDescriptorInDatatypeValue.Wrapper$B, 
        TypeDescriptorInDatatypeValue.Wrapper$C, 
        TypeDescriptorInDatatypeValue.Wrapper$D), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#TypeDescriptorInDatatypeValue.Wrapper.Wrapper(a#16#0#0), 
        Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
          TypeDescriptorInDatatypeValue.Wrapper$B, 
          TypeDescriptorInDatatypeValue.Wrapper$C, 
          TypeDescriptorInDatatypeValue.Wrapper$D), 
        $h)
       <==> $IsAllocBox(a#16#0#0, TypeDescriptorInDatatypeValue.Wrapper$C, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, TypeDescriptorInDatatypeValue.Wrapper$C: Ty, $h: Heap :: 
  { $IsAllocBox(TypeDescriptorInDatatypeValue.Wrapper._h23(d), 
      TypeDescriptorInDatatypeValue.Wrapper$C, 
      $h) } 
  $IsGoodHeap($h)
       && 
      TypeDescriptorInDatatypeValue.Wrapper.Wrapper_q(d)
       && (exists TypeDescriptorInDatatypeValue.Wrapper$A: Ty, 
          TypeDescriptorInDatatypeValue.Wrapper$B: Ty, 
          TypeDescriptorInDatatypeValue.Wrapper$D: Ty :: 
        { $IsAlloc(d, 
            Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
              TypeDescriptorInDatatypeValue.Wrapper$B, 
              TypeDescriptorInDatatypeValue.Wrapper$C, 
              TypeDescriptorInDatatypeValue.Wrapper$D), 
            $h) } 
        $IsAlloc(d, 
          Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
            TypeDescriptorInDatatypeValue.Wrapper$B, 
            TypeDescriptorInDatatypeValue.Wrapper$C, 
            TypeDescriptorInDatatypeValue.Wrapper$D), 
          $h))
     ==> $IsAllocBox(TypeDescriptorInDatatypeValue.Wrapper._h23(d), 
      TypeDescriptorInDatatypeValue.Wrapper$C, 
      $h));

// Constructor literal
axiom (forall a#17#0#0: Box :: 
  { #TypeDescriptorInDatatypeValue.Wrapper.Wrapper(Lit(a#17#0#0)) } 
  #TypeDescriptorInDatatypeValue.Wrapper.Wrapper(Lit(a#17#0#0))
     == Lit(#TypeDescriptorInDatatypeValue.Wrapper.Wrapper(a#17#0#0)));

function TypeDescriptorInDatatypeValue.Wrapper._h23(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#18#0#0: Box :: 
  { #TypeDescriptorInDatatypeValue.Wrapper.Wrapper(a#18#0#0) } 
  TypeDescriptorInDatatypeValue.Wrapper._h23(#TypeDescriptorInDatatypeValue.Wrapper.Wrapper(a#18#0#0))
     == a#18#0#0);

// Inductive rank
axiom (forall a#19#0#0: Box :: 
  { #TypeDescriptorInDatatypeValue.Wrapper.Wrapper(a#19#0#0) } 
  BoxRank(a#19#0#0)
     < DtRank(#TypeDescriptorInDatatypeValue.Wrapper.Wrapper(a#19#0#0)));

// Depth-one case-split function
function $IsA#TypeDescriptorInDatatypeValue.Wrapper(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TypeDescriptorInDatatypeValue.Wrapper(d) } 
  $IsA#TypeDescriptorInDatatypeValue.Wrapper(d)
     ==> TypeDescriptorInDatatypeValue.Wrapper.Wrapper_q(d));

// Questionmark data type disjunctivity
axiom (forall TypeDescriptorInDatatypeValue.Wrapper$A: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$B: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$C: Ty, 
    TypeDescriptorInDatatypeValue.Wrapper$D: Ty, 
    d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Wrapper.Wrapper_q(d), $Is(d, 
      Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
        TypeDescriptorInDatatypeValue.Wrapper$B, 
        TypeDescriptorInDatatypeValue.Wrapper$C, 
        TypeDescriptorInDatatypeValue.Wrapper$D)) } 
  $Is(d, 
      Tclass.TypeDescriptorInDatatypeValue.Wrapper(TypeDescriptorInDatatypeValue.Wrapper$A, 
        TypeDescriptorInDatatypeValue.Wrapper$B, 
        TypeDescriptorInDatatypeValue.Wrapper$C, 
        TypeDescriptorInDatatypeValue.Wrapper$D))
     ==> TypeDescriptorInDatatypeValue.Wrapper.Wrapper_q(d));

// Datatype extensional equality declaration
function TypeDescriptorInDatatypeValue.Wrapper#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #TypeDescriptorInDatatypeValue.Wrapper.Wrapper
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Wrapper#Equal(a, b) } 
  TypeDescriptorInDatatypeValue.Wrapper#Equal(a, b)
     <==> TypeDescriptorInDatatypeValue.Wrapper._h23(a)
       == TypeDescriptorInDatatypeValue.Wrapper._h23(b));

// Datatype extensionality axiom: TypeDescriptorInDatatypeValue.Wrapper
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Wrapper#Equal(a, b) } 
  TypeDescriptorInDatatypeValue.Wrapper#Equal(a, b) <==> a == b);

const unique class.TypeDescriptorInDatatypeValue.Wrapper: ClassName;

// Constructor function declaration
function #TypeDescriptorInDatatypeValue.Stream.End(Box, Box) : DatatypeType;

const unique ##TypeDescriptorInDatatypeValue.Stream.End: DtCtorId
uses {
// Constructor identifier
axiom (forall a#20#0#0: Box, a#20#1#0: Box :: 
  { #TypeDescriptorInDatatypeValue.Stream.End(a#20#0#0, a#20#1#0) } 
  DatatypeCtorId(#TypeDescriptorInDatatypeValue.Stream.End(a#20#0#0, a#20#1#0))
     == ##TypeDescriptorInDatatypeValue.Stream.End);
}

function TypeDescriptorInDatatypeValue.Stream.End_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Stream.End_q(d) } 
  TypeDescriptorInDatatypeValue.Stream.End_q(d)
     <==> DatatypeCtorId(d) == ##TypeDescriptorInDatatypeValue.Stream.End);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Stream.End_q(d) } 
  TypeDescriptorInDatatypeValue.Stream.End_q(d)
     ==> (exists a#21#0#0: Box, a#21#1#0: Box :: 
      d == #TypeDescriptorInDatatypeValue.Stream.End(a#21#0#0, a#21#1#0)));

function Tclass.TypeDescriptorInDatatypeValue.Stream(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass.TypeDescriptorInDatatypeValue.Stream: TyTag;

// Tclass.TypeDescriptorInDatatypeValue.Stream Tag
axiom (forall TypeDescriptorInDatatypeValue.Stream$A: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
      TypeDescriptorInDatatypeValue.Stream$B, 
      TypeDescriptorInDatatypeValue.Stream$C, 
      TypeDescriptorInDatatypeValue.Stream$D) } 
  Tag(Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
          TypeDescriptorInDatatypeValue.Stream$B, 
          TypeDescriptorInDatatypeValue.Stream$C, 
          TypeDescriptorInDatatypeValue.Stream$D))
       == Tagclass.TypeDescriptorInDatatypeValue.Stream
     && TagFamily(Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
          TypeDescriptorInDatatypeValue.Stream$B, 
          TypeDescriptorInDatatypeValue.Stream$C, 
          TypeDescriptorInDatatypeValue.Stream$D))
       == tytagFamily$Stream);

function Tclass.TypeDescriptorInDatatypeValue.Stream_0(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.Stream injectivity 0
axiom (forall TypeDescriptorInDatatypeValue.Stream$A: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
      TypeDescriptorInDatatypeValue.Stream$B, 
      TypeDescriptorInDatatypeValue.Stream$C, 
      TypeDescriptorInDatatypeValue.Stream$D) } 
  Tclass.TypeDescriptorInDatatypeValue.Stream_0(Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D))
     == TypeDescriptorInDatatypeValue.Stream$A);

function Tclass.TypeDescriptorInDatatypeValue.Stream_1(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.Stream injectivity 1
axiom (forall TypeDescriptorInDatatypeValue.Stream$A: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
      TypeDescriptorInDatatypeValue.Stream$B, 
      TypeDescriptorInDatatypeValue.Stream$C, 
      TypeDescriptorInDatatypeValue.Stream$D) } 
  Tclass.TypeDescriptorInDatatypeValue.Stream_1(Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D))
     == TypeDescriptorInDatatypeValue.Stream$B);

function Tclass.TypeDescriptorInDatatypeValue.Stream_2(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.Stream injectivity 2
axiom (forall TypeDescriptorInDatatypeValue.Stream$A: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
      TypeDescriptorInDatatypeValue.Stream$B, 
      TypeDescriptorInDatatypeValue.Stream$C, 
      TypeDescriptorInDatatypeValue.Stream$D) } 
  Tclass.TypeDescriptorInDatatypeValue.Stream_2(Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D))
     == TypeDescriptorInDatatypeValue.Stream$C);

function Tclass.TypeDescriptorInDatatypeValue.Stream_3(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.Stream injectivity 3
axiom (forall TypeDescriptorInDatatypeValue.Stream$A: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
      TypeDescriptorInDatatypeValue.Stream$B, 
      TypeDescriptorInDatatypeValue.Stream$C, 
      TypeDescriptorInDatatypeValue.Stream$D) } 
  Tclass.TypeDescriptorInDatatypeValue.Stream_3(Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D))
     == TypeDescriptorInDatatypeValue.Stream$D);

// Box/unbox axiom for Tclass.TypeDescriptorInDatatypeValue.Stream
axiom (forall TypeDescriptorInDatatypeValue.Stream$A: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
          TypeDescriptorInDatatypeValue.Stream$B, 
          TypeDescriptorInDatatypeValue.Stream$C, 
          TypeDescriptorInDatatypeValue.Stream$D)));

// Constructor $Is
axiom (forall TypeDescriptorInDatatypeValue.Stream$A: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D: Ty, 
    a#22#0#0: Box, 
    a#22#1#0: Box :: 
  { $Is(#TypeDescriptorInDatatypeValue.Stream.End(a#22#0#0, a#22#1#0), 
      Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D)) } 
  $Is(#TypeDescriptorInDatatypeValue.Stream.End(a#22#0#0, a#22#1#0), 
      Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D))
     <==> $IsBox(a#22#0#0, TypeDescriptorInDatatypeValue.Stream$C)
       && $IsBox(a#22#1#0, TypeDescriptorInDatatypeValue.Stream$D));

// Constructor $IsAlloc
axiom (forall TypeDescriptorInDatatypeValue.Stream$A: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D: Ty, 
    a#22#0#0: Box, 
    a#22#1#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#TypeDescriptorInDatatypeValue.Stream.End(a#22#0#0, a#22#1#0), 
      Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#TypeDescriptorInDatatypeValue.Stream.End(a#22#0#0, a#22#1#0), 
        Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
          TypeDescriptorInDatatypeValue.Stream$B, 
          TypeDescriptorInDatatypeValue.Stream$C, 
          TypeDescriptorInDatatypeValue.Stream$D), 
        $h)
       <==> $IsAllocBox(a#22#0#0, TypeDescriptorInDatatypeValue.Stream$C, $h)
         && $IsAllocBox(a#22#1#0, TypeDescriptorInDatatypeValue.Stream$D, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, TypeDescriptorInDatatypeValue.Stream$C: Ty, $h: Heap :: 
  { $IsAllocBox(TypeDescriptorInDatatypeValue.Stream._h24(d), 
      TypeDescriptorInDatatypeValue.Stream$C, 
      $h) } 
  $IsGoodHeap($h)
       && 
      TypeDescriptorInDatatypeValue.Stream.End_q(d)
       && (exists TypeDescriptorInDatatypeValue.Stream$A: Ty, 
          TypeDescriptorInDatatypeValue.Stream$B: Ty, 
          TypeDescriptorInDatatypeValue.Stream$D: Ty :: 
        { $IsAlloc(d, 
            Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
              TypeDescriptorInDatatypeValue.Stream$B, 
              TypeDescriptorInDatatypeValue.Stream$C, 
              TypeDescriptorInDatatypeValue.Stream$D), 
            $h) } 
        $IsAlloc(d, 
          Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
            TypeDescriptorInDatatypeValue.Stream$B, 
            TypeDescriptorInDatatypeValue.Stream$C, 
            TypeDescriptorInDatatypeValue.Stream$D), 
          $h))
     ==> $IsAllocBox(TypeDescriptorInDatatypeValue.Stream._h24(d), 
      TypeDescriptorInDatatypeValue.Stream$C, 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, TypeDescriptorInDatatypeValue.Stream$D: Ty, $h: Heap :: 
  { $IsAllocBox(TypeDescriptorInDatatypeValue.Stream._h25(d), 
      TypeDescriptorInDatatypeValue.Stream$D, 
      $h) } 
  $IsGoodHeap($h)
       && 
      TypeDescriptorInDatatypeValue.Stream.End_q(d)
       && (exists TypeDescriptorInDatatypeValue.Stream$A: Ty, 
          TypeDescriptorInDatatypeValue.Stream$B: Ty, 
          TypeDescriptorInDatatypeValue.Stream$C: Ty :: 
        { $IsAlloc(d, 
            Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
              TypeDescriptorInDatatypeValue.Stream$B, 
              TypeDescriptorInDatatypeValue.Stream$C, 
              TypeDescriptorInDatatypeValue.Stream$D), 
            $h) } 
        $IsAlloc(d, 
          Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
            TypeDescriptorInDatatypeValue.Stream$B, 
            TypeDescriptorInDatatypeValue.Stream$C, 
            TypeDescriptorInDatatypeValue.Stream$D), 
          $h))
     ==> $IsAllocBox(TypeDescriptorInDatatypeValue.Stream._h25(d), 
      TypeDescriptorInDatatypeValue.Stream$D, 
      $h));

function TypeDescriptorInDatatypeValue.Stream._h24(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#23#0#0: Box, a#23#1#0: Box :: 
  { #TypeDescriptorInDatatypeValue.Stream.End(a#23#0#0, a#23#1#0) } 
  TypeDescriptorInDatatypeValue.Stream._h24(#TypeDescriptorInDatatypeValue.Stream.End(a#23#0#0, a#23#1#0))
     == a#23#0#0);

function TypeDescriptorInDatatypeValue.Stream._h25(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#24#0#0: Box, a#24#1#0: Box :: 
  { #TypeDescriptorInDatatypeValue.Stream.End(a#24#0#0, a#24#1#0) } 
  TypeDescriptorInDatatypeValue.Stream._h25(#TypeDescriptorInDatatypeValue.Stream.End(a#24#0#0, a#24#1#0))
     == a#24#1#0);

// Constructor function declaration
function #TypeDescriptorInDatatypeValue.Stream.Next(DatatypeType) : DatatypeType;

const unique ##TypeDescriptorInDatatypeValue.Stream.Next: DtCtorId
uses {
// Constructor identifier
axiom (forall a#25#0#0: DatatypeType :: 
  { #TypeDescriptorInDatatypeValue.Stream.Next(a#25#0#0) } 
  DatatypeCtorId(#TypeDescriptorInDatatypeValue.Stream.Next(a#25#0#0))
     == ##TypeDescriptorInDatatypeValue.Stream.Next);
}

function TypeDescriptorInDatatypeValue.Stream.Next_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Stream.Next_q(d) } 
  TypeDescriptorInDatatypeValue.Stream.Next_q(d)
     <==> DatatypeCtorId(d) == ##TypeDescriptorInDatatypeValue.Stream.Next);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Stream.Next_q(d) } 
  TypeDescriptorInDatatypeValue.Stream.Next_q(d)
     ==> (exists a#26#0#0: DatatypeType :: 
      d == #TypeDescriptorInDatatypeValue.Stream.Next(a#26#0#0)));

// Constructor $Is
axiom (forall TypeDescriptorInDatatypeValue.Stream$A: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D: Ty, 
    a#27#0#0: DatatypeType :: 
  { $Is(#TypeDescriptorInDatatypeValue.Stream.Next(a#27#0#0), 
      Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D)) } 
  $Is(#TypeDescriptorInDatatypeValue.Stream.Next(a#27#0#0), 
      Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D))
     <==> $Is(a#27#0#0, 
      Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D)));

// Constructor $IsAlloc
axiom (forall TypeDescriptorInDatatypeValue.Stream$A: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D: Ty, 
    a#27#0#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#TypeDescriptorInDatatypeValue.Stream.Next(a#27#0#0), 
      Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#TypeDescriptorInDatatypeValue.Stream.Next(a#27#0#0), 
        Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
          TypeDescriptorInDatatypeValue.Stream$B, 
          TypeDescriptorInDatatypeValue.Stream$C, 
          TypeDescriptorInDatatypeValue.Stream$D), 
        $h)
       <==> $IsAlloc(a#27#0#0, 
        Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
          TypeDescriptorInDatatypeValue.Stream$B, 
          TypeDescriptorInDatatypeValue.Stream$C, 
          TypeDescriptorInDatatypeValue.Stream$D), 
        $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, 
    TypeDescriptorInDatatypeValue.Stream$A: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D: Ty, 
    $h: Heap :: 
  { $IsAlloc(TypeDescriptorInDatatypeValue.Stream.tail(d), 
      Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D), 
      $h) } 
  $IsGoodHeap($h)
       && 
      TypeDescriptorInDatatypeValue.Stream.Next_q(d)
       && $IsAlloc(d, 
        Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
          TypeDescriptorInDatatypeValue.Stream$B, 
          TypeDescriptorInDatatypeValue.Stream$C, 
          TypeDescriptorInDatatypeValue.Stream$D), 
        $h)
     ==> $IsAlloc(TypeDescriptorInDatatypeValue.Stream.tail(d), 
      Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D), 
      $h));

function TypeDescriptorInDatatypeValue.Stream.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#28#0#0: DatatypeType :: 
  { #TypeDescriptorInDatatypeValue.Stream.Next(a#28#0#0) } 
  TypeDescriptorInDatatypeValue.Stream.tail(#TypeDescriptorInDatatypeValue.Stream.Next(a#28#0#0))
     == a#28#0#0);

// Depth-one case-split function
function $IsA#TypeDescriptorInDatatypeValue.Stream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TypeDescriptorInDatatypeValue.Stream(d) } 
  $IsA#TypeDescriptorInDatatypeValue.Stream(d)
     ==> TypeDescriptorInDatatypeValue.Stream.End_q(d)
       || TypeDescriptorInDatatypeValue.Stream.Next_q(d));

// Questionmark data type disjunctivity
axiom (forall TypeDescriptorInDatatypeValue.Stream$A: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D: Ty, 
    d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.Stream.Next_q(d), $Is(d, 
      Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D)) } 
    { TypeDescriptorInDatatypeValue.Stream.End_q(d), $Is(d, 
      Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D)) } 
  $Is(d, 
      Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A, 
        TypeDescriptorInDatatypeValue.Stream$B, 
        TypeDescriptorInDatatypeValue.Stream$C, 
        TypeDescriptorInDatatypeValue.Stream$D))
     ==> TypeDescriptorInDatatypeValue.Stream.End_q(d)
       || TypeDescriptorInDatatypeValue.Stream.Next_q(d));

function $Eq#TypeDescriptorInDatatypeValue.Stream(Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall TypeDescriptorInDatatypeValue.Stream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Is(d0, 
        Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
          TypeDescriptorInDatatypeValue.Stream$B#l, 
          TypeDescriptorInDatatypeValue.Stream$C#l, 
          TypeDescriptorInDatatypeValue.Stream$D#l))
       && $Is(d1, 
        Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#r, 
          TypeDescriptorInDatatypeValue.Stream$B#r, 
          TypeDescriptorInDatatypeValue.Stream$C#r, 
          TypeDescriptorInDatatypeValue.Stream$D#r))
     ==> ($Eq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
        TypeDescriptorInDatatypeValue.Stream$B#l, 
        TypeDescriptorInDatatypeValue.Stream$C#l, 
        TypeDescriptorInDatatypeValue.Stream$D#l, 
        TypeDescriptorInDatatypeValue.Stream$A#r, 
        TypeDescriptorInDatatypeValue.Stream$B#r, 
        TypeDescriptorInDatatypeValue.Stream$C#r, 
        TypeDescriptorInDatatypeValue.Stream$D#r, 
        $LS(ly), 
        d0, 
        d1)
       <==> (
          TypeDescriptorInDatatypeValue.Stream.End_q(d0)
           && TypeDescriptorInDatatypeValue.Stream.End_q(d1)
           && (TypeDescriptorInDatatypeValue.Stream.End_q(d0)
               && TypeDescriptorInDatatypeValue.Stream.End_q(d1)
             ==> TypeDescriptorInDatatypeValue.Stream._h24(d0)
                 == TypeDescriptorInDatatypeValue.Stream._h24(d1)
               && TypeDescriptorInDatatypeValue.Stream._h25(d0)
                 == TypeDescriptorInDatatypeValue.Stream._h25(d1)))
         || (
          TypeDescriptorInDatatypeValue.Stream.Next_q(d0)
           && TypeDescriptorInDatatypeValue.Stream.Next_q(d1)
           && (TypeDescriptorInDatatypeValue.Stream.Next_q(d0)
               && TypeDescriptorInDatatypeValue.Stream.Next_q(d1)
             ==> $Eq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
              TypeDescriptorInDatatypeValue.Stream$B#l, 
              TypeDescriptorInDatatypeValue.Stream$C#l, 
              TypeDescriptorInDatatypeValue.Stream$D#l, 
              TypeDescriptorInDatatypeValue.Stream$A#r, 
              TypeDescriptorInDatatypeValue.Stream$B#r, 
              TypeDescriptorInDatatypeValue.Stream$C#r, 
              TypeDescriptorInDatatypeValue.Stream$D#r, 
              ly, 
              TypeDescriptorInDatatypeValue.Stream.tail(d0), 
              TypeDescriptorInDatatypeValue.Stream.tail(d1))))));

// Unbump layer co-equality axiom
axiom (forall TypeDescriptorInDatatypeValue.Stream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Eq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      $LS(ly), 
      d0, 
      d1)
     <==> $Eq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      ly, 
      d0, 
      d1));

// Equality for codatatypes
axiom (forall TypeDescriptorInDatatypeValue.Stream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Eq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      $LS(ly), 
      d0, 
      d1)
     <==> d0 == d1);

function $PrefixEq#TypeDescriptorInDatatypeValue.Stream(Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Box, LayerType, DatatypeType, DatatypeType)
   : bool;

// Layered co-equality axiom
axiom (forall TypeDescriptorInDatatypeValue.Stream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      k, 
      $LS(ly), 
      d0, 
      d1) } 
  $Is(d0, 
        Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
          TypeDescriptorInDatatypeValue.Stream$B#l, 
          TypeDescriptorInDatatypeValue.Stream$C#l, 
          TypeDescriptorInDatatypeValue.Stream$D#l))
       && $Is(d1, 
        Tclass.TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#r, 
          TypeDescriptorInDatatypeValue.Stream$B#r, 
          TypeDescriptorInDatatypeValue.Stream$C#r, 
          TypeDescriptorInDatatypeValue.Stream$D#r))
     ==> ($PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
        TypeDescriptorInDatatypeValue.Stream$B#l, 
        TypeDescriptorInDatatypeValue.Stream$C#l, 
        TypeDescriptorInDatatypeValue.Stream$D#l, 
        TypeDescriptorInDatatypeValue.Stream$A#r, 
        TypeDescriptorInDatatypeValue.Stream$B#r, 
        TypeDescriptorInDatatypeValue.Stream$C#r, 
        TypeDescriptorInDatatypeValue.Stream$D#r, 
        k, 
        $LS(ly), 
        d0, 
        d1)
       <==> (0 < ORD#Offset(k)
           ==> (
              TypeDescriptorInDatatypeValue.Stream.End_q(d0)
               && TypeDescriptorInDatatypeValue.Stream.End_q(d1)
               && (TypeDescriptorInDatatypeValue.Stream.End_q(d0)
                   && TypeDescriptorInDatatypeValue.Stream.End_q(d1)
                 ==> TypeDescriptorInDatatypeValue.Stream._h24(d0)
                     == TypeDescriptorInDatatypeValue.Stream._h24(d1)
                   && TypeDescriptorInDatatypeValue.Stream._h25(d0)
                     == TypeDescriptorInDatatypeValue.Stream._h25(d1)))
             || (
              TypeDescriptorInDatatypeValue.Stream.Next_q(d0)
               && TypeDescriptorInDatatypeValue.Stream.Next_q(d1)
               && (TypeDescriptorInDatatypeValue.Stream.Next_q(d0)
                   && TypeDescriptorInDatatypeValue.Stream.Next_q(d1)
                 ==> $PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
                  TypeDescriptorInDatatypeValue.Stream$B#l, 
                  TypeDescriptorInDatatypeValue.Stream$C#l, 
                  TypeDescriptorInDatatypeValue.Stream$D#l, 
                  TypeDescriptorInDatatypeValue.Stream$A#r, 
                  TypeDescriptorInDatatypeValue.Stream$B#r, 
                  TypeDescriptorInDatatypeValue.Stream$C#r, 
                  TypeDescriptorInDatatypeValue.Stream$D#r, 
                  ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  TypeDescriptorInDatatypeValue.Stream.tail(d0), 
                  TypeDescriptorInDatatypeValue.Stream.tail(d1)))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
            TypeDescriptorInDatatypeValue.Stream$B#l, 
            TypeDescriptorInDatatypeValue.Stream$C#l, 
            TypeDescriptorInDatatypeValue.Stream$D#l, 
            TypeDescriptorInDatatypeValue.Stream$A#r, 
            TypeDescriptorInDatatypeValue.Stream$B#r, 
            TypeDescriptorInDatatypeValue.Stream$C#r, 
            TypeDescriptorInDatatypeValue.Stream$D#r, 
            ly, 
            d0, 
            d1))));

// Unbump layer co-equality axiom
axiom (forall TypeDescriptorInDatatypeValue.Stream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      k, 
      $LS(ly), 
      d0, 
      d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
        TypeDescriptorInDatatypeValue.Stream$B#l, 
        TypeDescriptorInDatatypeValue.Stream$C#l, 
        TypeDescriptorInDatatypeValue.Stream$D#l, 
        TypeDescriptorInDatatypeValue.Stream$A#r, 
        TypeDescriptorInDatatypeValue.Stream$B#r, 
        TypeDescriptorInDatatypeValue.Stream$C#r, 
        TypeDescriptorInDatatypeValue.Stream$D#r, 
        k, 
        $LS(ly), 
        d0, 
        d1)
       <==> $PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
        TypeDescriptorInDatatypeValue.Stream$B#l, 
        TypeDescriptorInDatatypeValue.Stream$C#l, 
        TypeDescriptorInDatatypeValue.Stream$D#l, 
        TypeDescriptorInDatatypeValue.Stream$A#r, 
        TypeDescriptorInDatatypeValue.Stream$B#r, 
        TypeDescriptorInDatatypeValue.Stream$C#r, 
        TypeDescriptorInDatatypeValue.Stream$D#r, 
        k, 
        ly, 
        d0, 
        d1)));

// Coequality and prefix equality connection
axiom (forall TypeDescriptorInDatatypeValue.Stream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Eq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      $LS(ly), 
      d0, 
      d1)
     <==> (forall k: Box :: 
      { $PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
          TypeDescriptorInDatatypeValue.Stream$B#l, 
          TypeDescriptorInDatatypeValue.Stream$C#l, 
          TypeDescriptorInDatatypeValue.Stream$D#l, 
          TypeDescriptorInDatatypeValue.Stream$A#r, 
          TypeDescriptorInDatatypeValue.Stream$B#r, 
          TypeDescriptorInDatatypeValue.Stream$C#r, 
          TypeDescriptorInDatatypeValue.Stream$D#r, 
          k, 
          $LS(ly), 
          d0, 
          d1) } 
      $PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
        TypeDescriptorInDatatypeValue.Stream$B#l, 
        TypeDescriptorInDatatypeValue.Stream$C#l, 
        TypeDescriptorInDatatypeValue.Stream$D#l, 
        TypeDescriptorInDatatypeValue.Stream$A#r, 
        TypeDescriptorInDatatypeValue.Stream$B#r, 
        TypeDescriptorInDatatypeValue.Stream$C#r, 
        TypeDescriptorInDatatypeValue.Stream$D#r, 
        k, 
        $LS(ly), 
        d0, 
        d1)));

// Coequality and prefix equality connection
axiom (forall TypeDescriptorInDatatypeValue.Stream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      $LS(ly), 
      d0, 
      d1) } 
  (forall k: int :: 
      { $PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
          TypeDescriptorInDatatypeValue.Stream$B#l, 
          TypeDescriptorInDatatypeValue.Stream$C#l, 
          TypeDescriptorInDatatypeValue.Stream$D#l, 
          TypeDescriptorInDatatypeValue.Stream$A#r, 
          TypeDescriptorInDatatypeValue.Stream$B#r, 
          TypeDescriptorInDatatypeValue.Stream$C#r, 
          TypeDescriptorInDatatypeValue.Stream$D#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1) } 
      0 <= k
         ==> $PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
          TypeDescriptorInDatatypeValue.Stream$B#l, 
          TypeDescriptorInDatatypeValue.Stream$C#l, 
          TypeDescriptorInDatatypeValue.Stream$D#l, 
          TypeDescriptorInDatatypeValue.Stream$A#r, 
          TypeDescriptorInDatatypeValue.Stream$B#r, 
          TypeDescriptorInDatatypeValue.Stream$C#r, 
          TypeDescriptorInDatatypeValue.Stream$D#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1))
     ==> $Eq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      $LS(ly), 
      d0, 
      d1));

// Prefix equality consequence
axiom (forall TypeDescriptorInDatatypeValue.Stream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      k, 
      $LS(ly), 
      d0, 
      d1), $PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      m, 
      $LS(ly), 
      d0, 
      d1) } 
  ORD#Less(k, m)
       && $PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
        TypeDescriptorInDatatypeValue.Stream$B#l, 
        TypeDescriptorInDatatypeValue.Stream$C#l, 
        TypeDescriptorInDatatypeValue.Stream$D#l, 
        TypeDescriptorInDatatypeValue.Stream$A#r, 
        TypeDescriptorInDatatypeValue.Stream$B#r, 
        TypeDescriptorInDatatypeValue.Stream$C#r, 
        TypeDescriptorInDatatypeValue.Stream$D#r, 
        m, 
        $LS(ly), 
        d0, 
        d1)
     ==> $PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      k, 
      $LS(ly), 
      d0, 
      d1));

// Prefix equality shortcut
axiom (forall TypeDescriptorInDatatypeValue.Stream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.Stream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.Stream$D#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      k, 
      $LS(ly), 
      d0, 
      d1) } 
  d0 == d1
     ==> $PrefixEq#TypeDescriptorInDatatypeValue.Stream(TypeDescriptorInDatatypeValue.Stream$A#l, 
      TypeDescriptorInDatatypeValue.Stream$B#l, 
      TypeDescriptorInDatatypeValue.Stream$C#l, 
      TypeDescriptorInDatatypeValue.Stream$D#l, 
      TypeDescriptorInDatatypeValue.Stream$A#r, 
      TypeDescriptorInDatatypeValue.Stream$B#r, 
      TypeDescriptorInDatatypeValue.Stream$C#r, 
      TypeDescriptorInDatatypeValue.Stream$D#r, 
      k, 
      $LS(ly), 
      d0, 
      d1));

const unique class.TypeDescriptorInDatatypeValue.Stream: ClassName;

// Constructor function declaration
function #TypeDescriptorInDatatypeValue.ContraStream.End(Box, Box) : DatatypeType;

const unique ##TypeDescriptorInDatatypeValue.ContraStream.End: DtCtorId
uses {
// Constructor identifier
axiom (forall a#29#0#0: Box, a#29#1#0: Box :: 
  { #TypeDescriptorInDatatypeValue.ContraStream.End(a#29#0#0, a#29#1#0) } 
  DatatypeCtorId(#TypeDescriptorInDatatypeValue.ContraStream.End(a#29#0#0, a#29#1#0))
     == ##TypeDescriptorInDatatypeValue.ContraStream.End);
}

function TypeDescriptorInDatatypeValue.ContraStream.End_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.ContraStream.End_q(d) } 
  TypeDescriptorInDatatypeValue.ContraStream.End_q(d)
     <==> DatatypeCtorId(d) == ##TypeDescriptorInDatatypeValue.ContraStream.End);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.ContraStream.End_q(d) } 
  TypeDescriptorInDatatypeValue.ContraStream.End_q(d)
     ==> (exists a#30#0#0: Box, a#30#1#0: Box :: 
      d == #TypeDescriptorInDatatypeValue.ContraStream.End(a#30#0#0, a#30#1#0)));

function Tclass.TypeDescriptorInDatatypeValue.ContraStream(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass.TypeDescriptorInDatatypeValue.ContraStream: TyTag;

// Tclass.TypeDescriptorInDatatypeValue.ContraStream Tag
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
      TypeDescriptorInDatatypeValue.ContraStream$B, 
      TypeDescriptorInDatatypeValue.ContraStream$C, 
      TypeDescriptorInDatatypeValue.ContraStream$D) } 
  Tag(Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
          TypeDescriptorInDatatypeValue.ContraStream$B, 
          TypeDescriptorInDatatypeValue.ContraStream$C, 
          TypeDescriptorInDatatypeValue.ContraStream$D))
       == Tagclass.TypeDescriptorInDatatypeValue.ContraStream
     && TagFamily(Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
          TypeDescriptorInDatatypeValue.ContraStream$B, 
          TypeDescriptorInDatatypeValue.ContraStream$C, 
          TypeDescriptorInDatatypeValue.ContraStream$D))
       == tytagFamily$ContraStream);

function Tclass.TypeDescriptorInDatatypeValue.ContraStream_0(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.ContraStream injectivity 0
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
      TypeDescriptorInDatatypeValue.ContraStream$B, 
      TypeDescriptorInDatatypeValue.ContraStream$C, 
      TypeDescriptorInDatatypeValue.ContraStream$D) } 
  Tclass.TypeDescriptorInDatatypeValue.ContraStream_0(Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D))
     == TypeDescriptorInDatatypeValue.ContraStream$A);

function Tclass.TypeDescriptorInDatatypeValue.ContraStream_1(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.ContraStream injectivity 1
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
      TypeDescriptorInDatatypeValue.ContraStream$B, 
      TypeDescriptorInDatatypeValue.ContraStream$C, 
      TypeDescriptorInDatatypeValue.ContraStream$D) } 
  Tclass.TypeDescriptorInDatatypeValue.ContraStream_1(Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D))
     == TypeDescriptorInDatatypeValue.ContraStream$B);

function Tclass.TypeDescriptorInDatatypeValue.ContraStream_2(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.ContraStream injectivity 2
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
      TypeDescriptorInDatatypeValue.ContraStream$B, 
      TypeDescriptorInDatatypeValue.ContraStream$C, 
      TypeDescriptorInDatatypeValue.ContraStream$D) } 
  Tclass.TypeDescriptorInDatatypeValue.ContraStream_2(Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D))
     == TypeDescriptorInDatatypeValue.ContraStream$C);

function Tclass.TypeDescriptorInDatatypeValue.ContraStream_3(Ty) : Ty;

// Tclass.TypeDescriptorInDatatypeValue.ContraStream injectivity 3
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D: Ty :: 
  { Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
      TypeDescriptorInDatatypeValue.ContraStream$B, 
      TypeDescriptorInDatatypeValue.ContraStream$C, 
      TypeDescriptorInDatatypeValue.ContraStream$D) } 
  Tclass.TypeDescriptorInDatatypeValue.ContraStream_3(Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D))
     == TypeDescriptorInDatatypeValue.ContraStream$D);

// Box/unbox axiom for Tclass.TypeDescriptorInDatatypeValue.ContraStream
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
          TypeDescriptorInDatatypeValue.ContraStream$B, 
          TypeDescriptorInDatatypeValue.ContraStream$C, 
          TypeDescriptorInDatatypeValue.ContraStream$D)));

// Constructor $Is
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D: Ty, 
    a#31#0#0: Box, 
    a#31#1#0: Box :: 
  { $Is(#TypeDescriptorInDatatypeValue.ContraStream.End(a#31#0#0, a#31#1#0), 
      Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D)) } 
  $Is(#TypeDescriptorInDatatypeValue.ContraStream.End(a#31#0#0, a#31#1#0), 
      Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D))
     <==> $IsBox(a#31#0#0, TypeDescriptorInDatatypeValue.ContraStream$C)
       && $IsBox(a#31#1#0, TypeDescriptorInDatatypeValue.ContraStream$D));

// Constructor $IsAlloc
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D: Ty, 
    a#31#0#0: Box, 
    a#31#1#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#TypeDescriptorInDatatypeValue.ContraStream.End(a#31#0#0, a#31#1#0), 
      Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#TypeDescriptorInDatatypeValue.ContraStream.End(a#31#0#0, a#31#1#0), 
        Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
          TypeDescriptorInDatatypeValue.ContraStream$B, 
          TypeDescriptorInDatatypeValue.ContraStream$C, 
          TypeDescriptorInDatatypeValue.ContraStream$D), 
        $h)
       <==> $IsAllocBox(a#31#0#0, TypeDescriptorInDatatypeValue.ContraStream$C, $h)
         && $IsAllocBox(a#31#1#0, TypeDescriptorInDatatypeValue.ContraStream$D, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, TypeDescriptorInDatatypeValue.ContraStream$C: Ty, $h: Heap :: 
  { $IsAllocBox(TypeDescriptorInDatatypeValue.ContraStream._h26(d), 
      TypeDescriptorInDatatypeValue.ContraStream$C, 
      $h) } 
  $IsGoodHeap($h)
       && 
      TypeDescriptorInDatatypeValue.ContraStream.End_q(d)
       && (exists TypeDescriptorInDatatypeValue.ContraStream$A: Ty, 
          TypeDescriptorInDatatypeValue.ContraStream$B: Ty, 
          TypeDescriptorInDatatypeValue.ContraStream$D: Ty :: 
        { $IsAlloc(d, 
            Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
              TypeDescriptorInDatatypeValue.ContraStream$B, 
              TypeDescriptorInDatatypeValue.ContraStream$C, 
              TypeDescriptorInDatatypeValue.ContraStream$D), 
            $h) } 
        $IsAlloc(d, 
          Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
            TypeDescriptorInDatatypeValue.ContraStream$B, 
            TypeDescriptorInDatatypeValue.ContraStream$C, 
            TypeDescriptorInDatatypeValue.ContraStream$D), 
          $h))
     ==> $IsAllocBox(TypeDescriptorInDatatypeValue.ContraStream._h26(d), 
      TypeDescriptorInDatatypeValue.ContraStream$C, 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, TypeDescriptorInDatatypeValue.ContraStream$D: Ty, $h: Heap :: 
  { $IsAllocBox(TypeDescriptorInDatatypeValue.ContraStream._h27(d), 
      TypeDescriptorInDatatypeValue.ContraStream$D, 
      $h) } 
  $IsGoodHeap($h)
       && 
      TypeDescriptorInDatatypeValue.ContraStream.End_q(d)
       && (exists TypeDescriptorInDatatypeValue.ContraStream$A: Ty, 
          TypeDescriptorInDatatypeValue.ContraStream$B: Ty, 
          TypeDescriptorInDatatypeValue.ContraStream$C: Ty :: 
        { $IsAlloc(d, 
            Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
              TypeDescriptorInDatatypeValue.ContraStream$B, 
              TypeDescriptorInDatatypeValue.ContraStream$C, 
              TypeDescriptorInDatatypeValue.ContraStream$D), 
            $h) } 
        $IsAlloc(d, 
          Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
            TypeDescriptorInDatatypeValue.ContraStream$B, 
            TypeDescriptorInDatatypeValue.ContraStream$C, 
            TypeDescriptorInDatatypeValue.ContraStream$D), 
          $h))
     ==> $IsAllocBox(TypeDescriptorInDatatypeValue.ContraStream._h27(d), 
      TypeDescriptorInDatatypeValue.ContraStream$D, 
      $h));

function TypeDescriptorInDatatypeValue.ContraStream._h26(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#32#0#0: Box, a#32#1#0: Box :: 
  { #TypeDescriptorInDatatypeValue.ContraStream.End(a#32#0#0, a#32#1#0) } 
  TypeDescriptorInDatatypeValue.ContraStream._h26(#TypeDescriptorInDatatypeValue.ContraStream.End(a#32#0#0, a#32#1#0))
     == a#32#0#0);

function TypeDescriptorInDatatypeValue.ContraStream._h27(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#33#0#0: Box, a#33#1#0: Box :: 
  { #TypeDescriptorInDatatypeValue.ContraStream.End(a#33#0#0, a#33#1#0) } 
  TypeDescriptorInDatatypeValue.ContraStream._h27(#TypeDescriptorInDatatypeValue.ContraStream.End(a#33#0#0, a#33#1#0))
     == a#33#1#0);

// Constructor function declaration
function #TypeDescriptorInDatatypeValue.ContraStream.Next(DatatypeType) : DatatypeType;

const unique ##TypeDescriptorInDatatypeValue.ContraStream.Next: DtCtorId
uses {
// Constructor identifier
axiom (forall a#34#0#0: DatatypeType :: 
  { #TypeDescriptorInDatatypeValue.ContraStream.Next(a#34#0#0) } 
  DatatypeCtorId(#TypeDescriptorInDatatypeValue.ContraStream.Next(a#34#0#0))
     == ##TypeDescriptorInDatatypeValue.ContraStream.Next);
}

function TypeDescriptorInDatatypeValue.ContraStream.Next_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.ContraStream.Next_q(d) } 
  TypeDescriptorInDatatypeValue.ContraStream.Next_q(d)
     <==> DatatypeCtorId(d) == ##TypeDescriptorInDatatypeValue.ContraStream.Next);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.ContraStream.Next_q(d) } 
  TypeDescriptorInDatatypeValue.ContraStream.Next_q(d)
     ==> (exists a#35#0#0: DatatypeType :: 
      d == #TypeDescriptorInDatatypeValue.ContraStream.Next(a#35#0#0)));

// Constructor $Is
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D: Ty, 
    a#36#0#0: DatatypeType :: 
  { $Is(#TypeDescriptorInDatatypeValue.ContraStream.Next(a#36#0#0), 
      Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D)) } 
  $Is(#TypeDescriptorInDatatypeValue.ContraStream.Next(a#36#0#0), 
      Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D))
     <==> $Is(a#36#0#0, 
      Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D)));

// Constructor $IsAlloc
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D: Ty, 
    a#36#0#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#TypeDescriptorInDatatypeValue.ContraStream.Next(a#36#0#0), 
      Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#TypeDescriptorInDatatypeValue.ContraStream.Next(a#36#0#0), 
        Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
          TypeDescriptorInDatatypeValue.ContraStream$B, 
          TypeDescriptorInDatatypeValue.ContraStream$C, 
          TypeDescriptorInDatatypeValue.ContraStream$D), 
        $h)
       <==> $IsAlloc(a#36#0#0, 
        Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
          TypeDescriptorInDatatypeValue.ContraStream$B, 
          TypeDescriptorInDatatypeValue.ContraStream$C, 
          TypeDescriptorInDatatypeValue.ContraStream$D), 
        $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, 
    TypeDescriptorInDatatypeValue.ContraStream$A: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D: Ty, 
    $h: Heap :: 
  { $IsAlloc(TypeDescriptorInDatatypeValue.ContraStream.tail(d), 
      Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D), 
      $h) } 
  $IsGoodHeap($h)
       && 
      TypeDescriptorInDatatypeValue.ContraStream.Next_q(d)
       && $IsAlloc(d, 
        Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
          TypeDescriptorInDatatypeValue.ContraStream$B, 
          TypeDescriptorInDatatypeValue.ContraStream$C, 
          TypeDescriptorInDatatypeValue.ContraStream$D), 
        $h)
     ==> $IsAlloc(TypeDescriptorInDatatypeValue.ContraStream.tail(d), 
      Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D), 
      $h));

function TypeDescriptorInDatatypeValue.ContraStream.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#37#0#0: DatatypeType :: 
  { #TypeDescriptorInDatatypeValue.ContraStream.Next(a#37#0#0) } 
  TypeDescriptorInDatatypeValue.ContraStream.tail(#TypeDescriptorInDatatypeValue.ContraStream.Next(a#37#0#0))
     == a#37#0#0);

// Depth-one case-split function
function $IsA#TypeDescriptorInDatatypeValue.ContraStream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TypeDescriptorInDatatypeValue.ContraStream(d) } 
  $IsA#TypeDescriptorInDatatypeValue.ContraStream(d)
     ==> TypeDescriptorInDatatypeValue.ContraStream.End_q(d)
       || TypeDescriptorInDatatypeValue.ContraStream.Next_q(d));

// Questionmark data type disjunctivity
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D: Ty, 
    d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.ContraStream.Next_q(d), $Is(d, 
      Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D)) } 
    { TypeDescriptorInDatatypeValue.ContraStream.End_q(d), $Is(d, 
      Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D)) } 
  $Is(d, 
      Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A, 
        TypeDescriptorInDatatypeValue.ContraStream$B, 
        TypeDescriptorInDatatypeValue.ContraStream$C, 
        TypeDescriptorInDatatypeValue.ContraStream$D))
     ==> TypeDescriptorInDatatypeValue.ContraStream.End_q(d)
       || TypeDescriptorInDatatypeValue.ContraStream.Next_q(d));

function $Eq#TypeDescriptorInDatatypeValue.ContraStream(Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Is(d0, 
        Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
          TypeDescriptorInDatatypeValue.ContraStream$B#l, 
          TypeDescriptorInDatatypeValue.ContraStream$C#l, 
          TypeDescriptorInDatatypeValue.ContraStream$D#l))
       && $Is(d1, 
        Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#r, 
          TypeDescriptorInDatatypeValue.ContraStream$B#r, 
          TypeDescriptorInDatatypeValue.ContraStream$C#r, 
          TypeDescriptorInDatatypeValue.ContraStream$D#r))
     ==> ($Eq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
        TypeDescriptorInDatatypeValue.ContraStream$B#l, 
        TypeDescriptorInDatatypeValue.ContraStream$C#l, 
        TypeDescriptorInDatatypeValue.ContraStream$D#l, 
        TypeDescriptorInDatatypeValue.ContraStream$A#r, 
        TypeDescriptorInDatatypeValue.ContraStream$B#r, 
        TypeDescriptorInDatatypeValue.ContraStream$C#r, 
        TypeDescriptorInDatatypeValue.ContraStream$D#r, 
        $LS(ly), 
        d0, 
        d1)
       <==> (
          TypeDescriptorInDatatypeValue.ContraStream.End_q(d0)
           && TypeDescriptorInDatatypeValue.ContraStream.End_q(d1)
           && (TypeDescriptorInDatatypeValue.ContraStream.End_q(d0)
               && TypeDescriptorInDatatypeValue.ContraStream.End_q(d1)
             ==> TypeDescriptorInDatatypeValue.ContraStream._h26(d0)
                 == TypeDescriptorInDatatypeValue.ContraStream._h26(d1)
               && TypeDescriptorInDatatypeValue.ContraStream._h27(d0)
                 == TypeDescriptorInDatatypeValue.ContraStream._h27(d1)))
         || (
          TypeDescriptorInDatatypeValue.ContraStream.Next_q(d0)
           && TypeDescriptorInDatatypeValue.ContraStream.Next_q(d1)
           && (TypeDescriptorInDatatypeValue.ContraStream.Next_q(d0)
               && TypeDescriptorInDatatypeValue.ContraStream.Next_q(d1)
             ==> $Eq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
              TypeDescriptorInDatatypeValue.ContraStream$B#l, 
              TypeDescriptorInDatatypeValue.ContraStream$C#l, 
              TypeDescriptorInDatatypeValue.ContraStream$D#l, 
              TypeDescriptorInDatatypeValue.ContraStream$A#r, 
              TypeDescriptorInDatatypeValue.ContraStream$B#r, 
              TypeDescriptorInDatatypeValue.ContraStream$C#r, 
              TypeDescriptorInDatatypeValue.ContraStream$D#r, 
              ly, 
              TypeDescriptorInDatatypeValue.ContraStream.tail(d0), 
              TypeDescriptorInDatatypeValue.ContraStream.tail(d1))))));

// Unbump layer co-equality axiom
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Eq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      $LS(ly), 
      d0, 
      d1)
     <==> $Eq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      ly, 
      d0, 
      d1));

// Equality for codatatypes
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Eq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      $LS(ly), 
      d0, 
      d1)
     <==> d0 == d1);

function $PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Box, LayerType, DatatypeType, DatatypeType)
   : bool;

// Layered co-equality axiom
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      k, 
      $LS(ly), 
      d0, 
      d1) } 
  $Is(d0, 
        Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
          TypeDescriptorInDatatypeValue.ContraStream$B#l, 
          TypeDescriptorInDatatypeValue.ContraStream$C#l, 
          TypeDescriptorInDatatypeValue.ContraStream$D#l))
       && $Is(d1, 
        Tclass.TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#r, 
          TypeDescriptorInDatatypeValue.ContraStream$B#r, 
          TypeDescriptorInDatatypeValue.ContraStream$C#r, 
          TypeDescriptorInDatatypeValue.ContraStream$D#r))
     ==> ($PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
        TypeDescriptorInDatatypeValue.ContraStream$B#l, 
        TypeDescriptorInDatatypeValue.ContraStream$C#l, 
        TypeDescriptorInDatatypeValue.ContraStream$D#l, 
        TypeDescriptorInDatatypeValue.ContraStream$A#r, 
        TypeDescriptorInDatatypeValue.ContraStream$B#r, 
        TypeDescriptorInDatatypeValue.ContraStream$C#r, 
        TypeDescriptorInDatatypeValue.ContraStream$D#r, 
        k, 
        $LS(ly), 
        d0, 
        d1)
       <==> (0 < ORD#Offset(k)
           ==> (
              TypeDescriptorInDatatypeValue.ContraStream.End_q(d0)
               && TypeDescriptorInDatatypeValue.ContraStream.End_q(d1)
               && (TypeDescriptorInDatatypeValue.ContraStream.End_q(d0)
                   && TypeDescriptorInDatatypeValue.ContraStream.End_q(d1)
                 ==> TypeDescriptorInDatatypeValue.ContraStream._h26(d0)
                     == TypeDescriptorInDatatypeValue.ContraStream._h26(d1)
                   && TypeDescriptorInDatatypeValue.ContraStream._h27(d0)
                     == TypeDescriptorInDatatypeValue.ContraStream._h27(d1)))
             || (
              TypeDescriptorInDatatypeValue.ContraStream.Next_q(d0)
               && TypeDescriptorInDatatypeValue.ContraStream.Next_q(d1)
               && (TypeDescriptorInDatatypeValue.ContraStream.Next_q(d0)
                   && TypeDescriptorInDatatypeValue.ContraStream.Next_q(d1)
                 ==> $PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
                  TypeDescriptorInDatatypeValue.ContraStream$B#l, 
                  TypeDescriptorInDatatypeValue.ContraStream$C#l, 
                  TypeDescriptorInDatatypeValue.ContraStream$D#l, 
                  TypeDescriptorInDatatypeValue.ContraStream$A#r, 
                  TypeDescriptorInDatatypeValue.ContraStream$B#r, 
                  TypeDescriptorInDatatypeValue.ContraStream$C#r, 
                  TypeDescriptorInDatatypeValue.ContraStream$D#r, 
                  ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  TypeDescriptorInDatatypeValue.ContraStream.tail(d0), 
                  TypeDescriptorInDatatypeValue.ContraStream.tail(d1)))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
            TypeDescriptorInDatatypeValue.ContraStream$B#l, 
            TypeDescriptorInDatatypeValue.ContraStream$C#l, 
            TypeDescriptorInDatatypeValue.ContraStream$D#l, 
            TypeDescriptorInDatatypeValue.ContraStream$A#r, 
            TypeDescriptorInDatatypeValue.ContraStream$B#r, 
            TypeDescriptorInDatatypeValue.ContraStream$C#r, 
            TypeDescriptorInDatatypeValue.ContraStream$D#r, 
            ly, 
            d0, 
            d1))));

// Unbump layer co-equality axiom
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      k, 
      $LS(ly), 
      d0, 
      d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
        TypeDescriptorInDatatypeValue.ContraStream$B#l, 
        TypeDescriptorInDatatypeValue.ContraStream$C#l, 
        TypeDescriptorInDatatypeValue.ContraStream$D#l, 
        TypeDescriptorInDatatypeValue.ContraStream$A#r, 
        TypeDescriptorInDatatypeValue.ContraStream$B#r, 
        TypeDescriptorInDatatypeValue.ContraStream$C#r, 
        TypeDescriptorInDatatypeValue.ContraStream$D#r, 
        k, 
        $LS(ly), 
        d0, 
        d1)
       <==> $PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
        TypeDescriptorInDatatypeValue.ContraStream$B#l, 
        TypeDescriptorInDatatypeValue.ContraStream$C#l, 
        TypeDescriptorInDatatypeValue.ContraStream$D#l, 
        TypeDescriptorInDatatypeValue.ContraStream$A#r, 
        TypeDescriptorInDatatypeValue.ContraStream$B#r, 
        TypeDescriptorInDatatypeValue.ContraStream$C#r, 
        TypeDescriptorInDatatypeValue.ContraStream$D#r, 
        k, 
        ly, 
        d0, 
        d1)));

// Coequality and prefix equality connection
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Eq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      $LS(ly), 
      d0, 
      d1)
     <==> (forall k: Box :: 
      { $PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
          TypeDescriptorInDatatypeValue.ContraStream$B#l, 
          TypeDescriptorInDatatypeValue.ContraStream$C#l, 
          TypeDescriptorInDatatypeValue.ContraStream$D#l, 
          TypeDescriptorInDatatypeValue.ContraStream$A#r, 
          TypeDescriptorInDatatypeValue.ContraStream$B#r, 
          TypeDescriptorInDatatypeValue.ContraStream$C#r, 
          TypeDescriptorInDatatypeValue.ContraStream$D#r, 
          k, 
          $LS(ly), 
          d0, 
          d1) } 
      $PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
        TypeDescriptorInDatatypeValue.ContraStream$B#l, 
        TypeDescriptorInDatatypeValue.ContraStream$C#l, 
        TypeDescriptorInDatatypeValue.ContraStream$D#l, 
        TypeDescriptorInDatatypeValue.ContraStream$A#r, 
        TypeDescriptorInDatatypeValue.ContraStream$B#r, 
        TypeDescriptorInDatatypeValue.ContraStream$C#r, 
        TypeDescriptorInDatatypeValue.ContraStream$D#r, 
        k, 
        $LS(ly), 
        d0, 
        d1)));

// Coequality and prefix equality connection
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      $LS(ly), 
      d0, 
      d1) } 
  (forall k: int :: 
      { $PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
          TypeDescriptorInDatatypeValue.ContraStream$B#l, 
          TypeDescriptorInDatatypeValue.ContraStream$C#l, 
          TypeDescriptorInDatatypeValue.ContraStream$D#l, 
          TypeDescriptorInDatatypeValue.ContraStream$A#r, 
          TypeDescriptorInDatatypeValue.ContraStream$B#r, 
          TypeDescriptorInDatatypeValue.ContraStream$C#r, 
          TypeDescriptorInDatatypeValue.ContraStream$D#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1) } 
      0 <= k
         ==> $PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
          TypeDescriptorInDatatypeValue.ContraStream$B#l, 
          TypeDescriptorInDatatypeValue.ContraStream$C#l, 
          TypeDescriptorInDatatypeValue.ContraStream$D#l, 
          TypeDescriptorInDatatypeValue.ContraStream$A#r, 
          TypeDescriptorInDatatypeValue.ContraStream$B#r, 
          TypeDescriptorInDatatypeValue.ContraStream$C#r, 
          TypeDescriptorInDatatypeValue.ContraStream$D#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1))
     ==> $Eq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      $LS(ly), 
      d0, 
      d1));

// Prefix equality consequence
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      k, 
      $LS(ly), 
      d0, 
      d1), $PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      m, 
      $LS(ly), 
      d0, 
      d1) } 
  ORD#Less(k, m)
       && $PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
        TypeDescriptorInDatatypeValue.ContraStream$B#l, 
        TypeDescriptorInDatatypeValue.ContraStream$C#l, 
        TypeDescriptorInDatatypeValue.ContraStream$D#l, 
        TypeDescriptorInDatatypeValue.ContraStream$A#r, 
        TypeDescriptorInDatatypeValue.ContraStream$B#r, 
        TypeDescriptorInDatatypeValue.ContraStream$C#r, 
        TypeDescriptorInDatatypeValue.ContraStream$D#r, 
        m, 
        $LS(ly), 
        d0, 
        d1)
     ==> $PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      k, 
      $LS(ly), 
      d0, 
      d1));

// Prefix equality shortcut
axiom (forall TypeDescriptorInDatatypeValue.ContraStream$A#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#l: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$A#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$B#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$C#r: Ty, 
    TypeDescriptorInDatatypeValue.ContraStream$D#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      k, 
      $LS(ly), 
      d0, 
      d1) } 
  d0 == d1
     ==> $PrefixEq#TypeDescriptorInDatatypeValue.ContraStream(TypeDescriptorInDatatypeValue.ContraStream$A#l, 
      TypeDescriptorInDatatypeValue.ContraStream$B#l, 
      TypeDescriptorInDatatypeValue.ContraStream$C#l, 
      TypeDescriptorInDatatypeValue.ContraStream$D#l, 
      TypeDescriptorInDatatypeValue.ContraStream$A#r, 
      TypeDescriptorInDatatypeValue.ContraStream$B#r, 
      TypeDescriptorInDatatypeValue.ContraStream$C#r, 
      TypeDescriptorInDatatypeValue.ContraStream$D#r, 
      k, 
      $LS(ly), 
      d0, 
      d1));

const unique class.TypeDescriptorInDatatypeValue.ContraStream: ClassName;

// Constructor function declaration
function #TypeDescriptorInDatatypeValue.CoEnum.CoEnum(int) : DatatypeType;

const unique ##TypeDescriptorInDatatypeValue.CoEnum.CoEnum: DtCtorId
uses {
// Constructor identifier
axiom (forall a#38#0#0: int :: 
  { #TypeDescriptorInDatatypeValue.CoEnum.CoEnum(a#38#0#0) } 
  DatatypeCtorId(#TypeDescriptorInDatatypeValue.CoEnum.CoEnum(a#38#0#0))
     == ##TypeDescriptorInDatatypeValue.CoEnum.CoEnum);
}

function TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d) } 
  TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d)
     <==> DatatypeCtorId(d) == ##TypeDescriptorInDatatypeValue.CoEnum.CoEnum);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d) } 
  TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d)
     ==> (exists a#39#0#0: int :: 
      d == #TypeDescriptorInDatatypeValue.CoEnum.CoEnum(a#39#0#0)));

function Tclass.TypeDescriptorInDatatypeValue.CoEnum() : Ty
uses {
// Tclass.TypeDescriptorInDatatypeValue.CoEnum Tag
axiom Tag(Tclass.TypeDescriptorInDatatypeValue.CoEnum())
     == Tagclass.TypeDescriptorInDatatypeValue.CoEnum
   && TagFamily(Tclass.TypeDescriptorInDatatypeValue.CoEnum()) == tytagFamily$CoEnum;
}

const unique Tagclass.TypeDescriptorInDatatypeValue.CoEnum: TyTag;

// Box/unbox axiom for Tclass.TypeDescriptorInDatatypeValue.CoEnum
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeDescriptorInDatatypeValue.CoEnum()) } 
  $IsBox(bx, Tclass.TypeDescriptorInDatatypeValue.CoEnum())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.TypeDescriptorInDatatypeValue.CoEnum()));

// Constructor $Is
axiom (forall a#40#0#0: int :: 
  { $Is(#TypeDescriptorInDatatypeValue.CoEnum.CoEnum(a#40#0#0), 
      Tclass.TypeDescriptorInDatatypeValue.CoEnum()) } 
  $Is(#TypeDescriptorInDatatypeValue.CoEnum.CoEnum(a#40#0#0), 
      Tclass.TypeDescriptorInDatatypeValue.CoEnum())
     <==> $Is(a#40#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(TypeDescriptorInDatatypeValue.CoEnum._h28(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d)
       && $IsAlloc(d, Tclass.TypeDescriptorInDatatypeValue.CoEnum(), $h)
     ==> $IsAlloc(TypeDescriptorInDatatypeValue.CoEnum._h28(d), TInt, $h));

function TypeDescriptorInDatatypeValue.CoEnum._h28(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#41#0#0: int :: 
  { #TypeDescriptorInDatatypeValue.CoEnum.CoEnum(a#41#0#0) } 
  TypeDescriptorInDatatypeValue.CoEnum._h28(#TypeDescriptorInDatatypeValue.CoEnum.CoEnum(a#41#0#0))
     == a#41#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.TypeDescriptorInDatatypeValue.CoEnum(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.TypeDescriptorInDatatypeValue.CoEnum())
     ==> $IsAlloc(d, Tclass.TypeDescriptorInDatatypeValue.CoEnum(), $h));

// Depth-one case-split function
function $IsA#TypeDescriptorInDatatypeValue.CoEnum(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TypeDescriptorInDatatypeValue.CoEnum(d) } 
  $IsA#TypeDescriptorInDatatypeValue.CoEnum(d)
     ==> TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d), $Is(d, Tclass.TypeDescriptorInDatatypeValue.CoEnum()) } 
  $Is(d, Tclass.TypeDescriptorInDatatypeValue.CoEnum())
     ==> TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d));

function $Eq#TypeDescriptorInDatatypeValue.CoEnum(LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#TypeDescriptorInDatatypeValue.CoEnum($LS(ly), d0, d1) } 
  $Is(d0, Tclass.TypeDescriptorInDatatypeValue.CoEnum())
       && $Is(d1, Tclass.TypeDescriptorInDatatypeValue.CoEnum())
     ==> ($Eq#TypeDescriptorInDatatypeValue.CoEnum($LS(ly), d0, d1)
       <==> TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d0)
         && TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d1)
         && (TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d0)
             && TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d1)
           ==> TypeDescriptorInDatatypeValue.CoEnum._h28(d0)
             == TypeDescriptorInDatatypeValue.CoEnum._h28(d1))));

// Unbump layer co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#TypeDescriptorInDatatypeValue.CoEnum($LS(ly), d0, d1) } 
  $Eq#TypeDescriptorInDatatypeValue.CoEnum($LS(ly), d0, d1)
     <==> $Eq#TypeDescriptorInDatatypeValue.CoEnum(ly, d0, d1));

// Equality for codatatypes
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#TypeDescriptorInDatatypeValue.CoEnum($LS(ly), d0, d1) } 
  $Eq#TypeDescriptorInDatatypeValue.CoEnum($LS(ly), d0, d1) <==> d0 == d1);

function $PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass.TypeDescriptorInDatatypeValue.CoEnum())
       && $Is(d1, Tclass.TypeDescriptorInDatatypeValue.CoEnum())
     ==> ($PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d0)
             && TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d1)
             && (TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d0)
                 && TypeDescriptorInDatatypeValue.CoEnum.CoEnum_q(d1)
               ==> TypeDescriptorInDatatypeValue.CoEnum._h28(d0)
                 == TypeDescriptorInDatatypeValue.CoEnum._h28(d1)))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#TypeDescriptorInDatatypeValue.CoEnum(ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(k, $LS(ly), d0, d1)
       <==> $PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#TypeDescriptorInDatatypeValue.CoEnum($LS(ly), d0, d1) } 
  $Eq#TypeDescriptorInDatatypeValue.CoEnum($LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(k, $LS(ly), d0, d1) } 
      $PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#TypeDescriptorInDatatypeValue.CoEnum($LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#TypeDescriptorInDatatypeValue.CoEnum($LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType, m: Box :: 
  { $PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(k, $LS(ly), d0, d1), $PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(m, $LS(ly), d0, d1)
     ==> $PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(k, $LS(ly), d0, d1) } 
  d0 == d1 ==> $PrefixEq#TypeDescriptorInDatatypeValue.CoEnum(k, $LS(ly), d0, d1));

const unique class.TypeDescriptorInDatatypeValue.CoEnum: ClassName;

const unique class.DatatypeValues.__default: ClassName;

procedure {:verboseName "DatatypeValues.Test (well-formedness)"} CheckWellFormed$$DatatypeValues.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DatatypeValues.Test (call)"} Call$$DatatypeValues.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for DatatypeValues._default.CoCalls
function DatatypeValues.__default.CoCalls(DatatypeValues._default.CoCalls$G: Ty, $ly: LayerType, g#0: Box) : DatatypeType;

function DatatypeValues.__default.CoCalls#canCall(DatatypeValues._default.CoCalls$G: Ty, g#0: Box) : bool;

// layer synonym axiom
axiom (forall DatatypeValues._default.CoCalls$G: Ty, $ly: LayerType, g#0: Box :: 
  { DatatypeValues.__default.CoCalls(DatatypeValues._default.CoCalls$G, $LS($ly), g#0) } 
  DatatypeValues.__default.CoCalls(DatatypeValues._default.CoCalls$G, $LS($ly), g#0)
     == DatatypeValues.__default.CoCalls(DatatypeValues._default.CoCalls$G, $ly, g#0));

// fuel synonym axiom
axiom (forall DatatypeValues._default.CoCalls$G: Ty, $ly: LayerType, g#0: Box :: 
  { DatatypeValues.__default.CoCalls(DatatypeValues._default.CoCalls$G, AsFuelBottom($ly), g#0) } 
  DatatypeValues.__default.CoCalls(DatatypeValues._default.CoCalls$G, $ly, g#0)
     == DatatypeValues.__default.CoCalls(DatatypeValues._default.CoCalls$G, $LZ, g#0));

function Tclass.DatatypeValues.Stream(Ty) : Ty;

const unique Tagclass.DatatypeValues.Stream: TyTag;

// Tclass.DatatypeValues.Stream Tag
axiom (forall DatatypeValues.Stream$G: Ty :: 
  { Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G) } 
  Tag(Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G))
       == Tagclass.DatatypeValues.Stream
     && TagFamily(Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G))
       == tytagFamily$Stream);

function Tclass.DatatypeValues.Stream_0(Ty) : Ty;

// Tclass.DatatypeValues.Stream injectivity 0
axiom (forall DatatypeValues.Stream$G: Ty :: 
  { Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G) } 
  Tclass.DatatypeValues.Stream_0(Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G))
     == DatatypeValues.Stream$G);

// Box/unbox axiom for Tclass.DatatypeValues.Stream
axiom (forall DatatypeValues.Stream$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G)) } 
  $IsBox(bx, Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G)));

// consequence axiom for DatatypeValues.__default.CoCalls
axiom (forall DatatypeValues._default.CoCalls$G: Ty, $ly: LayerType, g#0: Box :: 
  { DatatypeValues.__default.CoCalls(DatatypeValues._default.CoCalls$G, $ly, g#0) } 
  DatatypeValues.__default.CoCalls#canCall(DatatypeValues._default.CoCalls$G, g#0)
       || $IsBox(g#0, DatatypeValues._default.CoCalls$G)
     ==> $Is(DatatypeValues.__default.CoCalls(DatatypeValues._default.CoCalls$G, $ly, g#0), 
      Tclass.DatatypeValues.Stream(DatatypeValues._default.CoCalls$G)));

// alloc consequence axiom for DatatypeValues.__default.CoCalls
axiom (forall $Heap: Heap, DatatypeValues._default.CoCalls$G: Ty, $ly: LayerType, g#0: Box :: 
  { $IsAlloc(DatatypeValues.__default.CoCalls(DatatypeValues._default.CoCalls$G, $ly, g#0), 
      Tclass.DatatypeValues.Stream(DatatypeValues._default.CoCalls$G), 
      $Heap) } 
  (DatatypeValues.__default.CoCalls#canCall(DatatypeValues._default.CoCalls$G, g#0)
         || ($IsBox(g#0, DatatypeValues._default.CoCalls$G)
           && $IsAllocBox(g#0, DatatypeValues._default.CoCalls$G, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(DatatypeValues.__default.CoCalls(DatatypeValues._default.CoCalls$G, $ly, g#0), 
      Tclass.DatatypeValues.Stream(DatatypeValues._default.CoCalls$G), 
      $Heap));

function DatatypeValues.__default.CoCalls#requires(Ty, LayerType, Box) : bool;

// #requires axiom for DatatypeValues.__default.CoCalls
axiom (forall DatatypeValues._default.CoCalls$G: Ty, $ly: LayerType, g#0: Box :: 
  { DatatypeValues.__default.CoCalls#requires(DatatypeValues._default.CoCalls$G, $ly, g#0) } 
  $IsBox(g#0, DatatypeValues._default.CoCalls$G)
     ==> DatatypeValues.__default.CoCalls#requires(DatatypeValues._default.CoCalls$G, $ly, g#0)
       == true);

// definition axiom for DatatypeValues.__default.CoCalls (revealed)
axiom {:id "id261"} (forall DatatypeValues._default.CoCalls$G: Ty, $ly: LayerType, g#0: Box :: 
  { DatatypeValues.__default.CoCalls(DatatypeValues._default.CoCalls$G, $LS($ly), g#0) } 
  DatatypeValues.__default.CoCalls#canCall(DatatypeValues._default.CoCalls$G, g#0)
       || $IsBox(g#0, DatatypeValues._default.CoCalls$G)
     ==> DatatypeValues.__default.CoCalls#canCall(DatatypeValues._default.CoCalls$G, g#0)
       && DatatypeValues.__default.CoCalls(DatatypeValues._default.CoCalls$G, $LS($ly), g#0)
         == #DatatypeValues.Stream.Next(g#0, 
          DatatypeValues.__default.CoCalls(DatatypeValues._default.CoCalls$G, $ly, g#0)));

// function declaration for DatatypeValues._default.AutoCoCalls
function DatatypeValues.__default.AutoCoCalls(DatatypeValues._default.AutoCoCalls$G: Ty, $ly: LayerType, g#0: Box)
   : DatatypeType;

function DatatypeValues.__default.AutoCoCalls#canCall(DatatypeValues._default.AutoCoCalls$G: Ty, g#0: Box) : bool;

// layer synonym axiom
axiom (forall DatatypeValues._default.AutoCoCalls$G: Ty, $ly: LayerType, g#0: Box :: 
  { DatatypeValues.__default.AutoCoCalls(DatatypeValues._default.AutoCoCalls$G, $LS($ly), g#0) } 
  DatatypeValues.__default.AutoCoCalls(DatatypeValues._default.AutoCoCalls$G, $LS($ly), g#0)
     == DatatypeValues.__default.AutoCoCalls(DatatypeValues._default.AutoCoCalls$G, $ly, g#0));

// fuel synonym axiom
axiom (forall DatatypeValues._default.AutoCoCalls$G: Ty, $ly: LayerType, g#0: Box :: 
  { DatatypeValues.__default.AutoCoCalls(DatatypeValues._default.AutoCoCalls$G, AsFuelBottom($ly), g#0) } 
  DatatypeValues.__default.AutoCoCalls(DatatypeValues._default.AutoCoCalls$G, $ly, g#0)
     == DatatypeValues.__default.AutoCoCalls(DatatypeValues._default.AutoCoCalls$G, $LZ, g#0));

function Tclass.DatatypeValues.AutoStream(Ty) : Ty;

const unique Tagclass.DatatypeValues.AutoStream: TyTag;

// Tclass.DatatypeValues.AutoStream Tag
axiom (forall DatatypeValues.AutoStream$G: Ty :: 
  { Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G) } 
  Tag(Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G))
       == Tagclass.DatatypeValues.AutoStream
     && TagFamily(Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G))
       == tytagFamily$AutoStream);

function Tclass.DatatypeValues.AutoStream_0(Ty) : Ty;

// Tclass.DatatypeValues.AutoStream injectivity 0
axiom (forall DatatypeValues.AutoStream$G: Ty :: 
  { Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G) } 
  Tclass.DatatypeValues.AutoStream_0(Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G))
     == DatatypeValues.AutoStream$G);

// Box/unbox axiom for Tclass.DatatypeValues.AutoStream
axiom (forall DatatypeValues.AutoStream$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G)) } 
  $IsBox(bx, Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G)));

// consequence axiom for DatatypeValues.__default.AutoCoCalls
axiom (forall DatatypeValues._default.AutoCoCalls$G: Ty, $ly: LayerType, g#0: Box :: 
  { DatatypeValues.__default.AutoCoCalls(DatatypeValues._default.AutoCoCalls$G, $ly, g#0) } 
  DatatypeValues.__default.AutoCoCalls#canCall(DatatypeValues._default.AutoCoCalls$G, g#0)
       || $IsBox(g#0, DatatypeValues._default.AutoCoCalls$G)
     ==> $Is(DatatypeValues.__default.AutoCoCalls(DatatypeValues._default.AutoCoCalls$G, $ly, g#0), 
      Tclass.DatatypeValues.AutoStream(DatatypeValues._default.AutoCoCalls$G)));

// alloc consequence axiom for DatatypeValues.__default.AutoCoCalls
axiom (forall $Heap: Heap, DatatypeValues._default.AutoCoCalls$G: Ty, $ly: LayerType, g#0: Box :: 
  { $IsAlloc(DatatypeValues.__default.AutoCoCalls(DatatypeValues._default.AutoCoCalls$G, $ly, g#0), 
      Tclass.DatatypeValues.AutoStream(DatatypeValues._default.AutoCoCalls$G), 
      $Heap) } 
  (DatatypeValues.__default.AutoCoCalls#canCall(DatatypeValues._default.AutoCoCalls$G, g#0)
         || ($IsBox(g#0, DatatypeValues._default.AutoCoCalls$G)
           && $IsAllocBox(g#0, DatatypeValues._default.AutoCoCalls$G, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(DatatypeValues.__default.AutoCoCalls(DatatypeValues._default.AutoCoCalls$G, $ly, g#0), 
      Tclass.DatatypeValues.AutoStream(DatatypeValues._default.AutoCoCalls$G), 
      $Heap));

function DatatypeValues.__default.AutoCoCalls#requires(Ty, LayerType, Box) : bool;

// #requires axiom for DatatypeValues.__default.AutoCoCalls
axiom (forall DatatypeValues._default.AutoCoCalls$G: Ty, $ly: LayerType, g#0: Box :: 
  { DatatypeValues.__default.AutoCoCalls#requires(DatatypeValues._default.AutoCoCalls$G, $ly, g#0) } 
  $IsBox(g#0, DatatypeValues._default.AutoCoCalls$G)
     ==> DatatypeValues.__default.AutoCoCalls#requires(DatatypeValues._default.AutoCoCalls$G, $ly, g#0)
       == true);

// definition axiom for DatatypeValues.__default.AutoCoCalls (revealed)
axiom {:id "id262"} (forall DatatypeValues._default.AutoCoCalls$G: Ty, $ly: LayerType, g#0: Box :: 
  { DatatypeValues.__default.AutoCoCalls(DatatypeValues._default.AutoCoCalls$G, $LS($ly), g#0) } 
  DatatypeValues.__default.AutoCoCalls#canCall(DatatypeValues._default.AutoCoCalls$G, g#0)
       || $IsBox(g#0, DatatypeValues._default.AutoCoCalls$G)
     ==> DatatypeValues.__default.AutoCoCalls#canCall(DatatypeValues._default.AutoCoCalls$G, g#0)
       && DatatypeValues.__default.AutoCoCalls(DatatypeValues._default.AutoCoCalls$G, $LS($ly), g#0)
         == #DatatypeValues.AutoStream.AutoNext(g#0, 
          DatatypeValues.__default.AutoCoCalls(DatatypeValues._default.AutoCoCalls$G, $ly, g#0)));

// Constructor function declaration
function #DatatypeValues.Stream.Next(Box, DatatypeType) : DatatypeType;

const unique ##DatatypeValues.Stream.Next: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: DatatypeType :: 
  { #DatatypeValues.Stream.Next(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#DatatypeValues.Stream.Next(a#0#0#0, a#0#1#0))
     == ##DatatypeValues.Stream.Next);
}

function DatatypeValues.Stream.Next_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeValues.Stream.Next_q(d) } 
  DatatypeValues.Stream.Next_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeValues.Stream.Next);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeValues.Stream.Next_q(d) } 
  DatatypeValues.Stream.Next_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: DatatypeType :: 
      d == #DatatypeValues.Stream.Next(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall DatatypeValues.Stream$G: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType :: 
  { $Is(#DatatypeValues.Stream.Next(a#2#0#0, a#2#1#0), 
      Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G)) } 
  $Is(#DatatypeValues.Stream.Next(a#2#0#0, a#2#1#0), 
      Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G))
     <==> $IsBox(a#2#0#0, DatatypeValues.Stream$G)
       && $Is(a#2#1#0, Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G)));

// Constructor $IsAlloc
axiom (forall DatatypeValues.Stream$G: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#DatatypeValues.Stream.Next(a#2#0#0, a#2#1#0), 
      Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DatatypeValues.Stream.Next(a#2#0#0, a#2#1#0), 
        Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G), 
        $h)
       <==> $IsAllocBox(a#2#0#0, DatatypeValues.Stream$G, $h)
         && $IsAlloc(a#2#1#0, Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DatatypeValues.Stream$G: Ty, $h: Heap :: 
  { $IsAllocBox(DatatypeValues.Stream.head(d), DatatypeValues.Stream$G, $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeValues.Stream.Next_q(d)
       && $IsAlloc(d, Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G), $h)
     ==> $IsAllocBox(DatatypeValues.Stream.head(d), DatatypeValues.Stream$G, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DatatypeValues.Stream$G: Ty, $h: Heap :: 
  { $IsAlloc(DatatypeValues.Stream.tail(d), 
      Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G), 
      $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeValues.Stream.Next_q(d)
       && $IsAlloc(d, Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G), $h)
     ==> $IsAlloc(DatatypeValues.Stream.tail(d), 
      Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G), 
      $h));

function DatatypeValues.Stream.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#3#0#0: Box, a#3#1#0: DatatypeType :: 
  { #DatatypeValues.Stream.Next(a#3#0#0, a#3#1#0) } 
  DatatypeValues.Stream.head(#DatatypeValues.Stream.Next(a#3#0#0, a#3#1#0))
     == a#3#0#0);

function DatatypeValues.Stream.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #DatatypeValues.Stream.Next(a#4#0#0, a#4#1#0) } 
  DatatypeValues.Stream.tail(#DatatypeValues.Stream.Next(a#4#0#0, a#4#1#0))
     == a#4#1#0);

// Depth-one case-split function
function $IsA#DatatypeValues.Stream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeValues.Stream(d) } 
  $IsA#DatatypeValues.Stream(d) ==> DatatypeValues.Stream.Next_q(d));

// Questionmark data type disjunctivity
axiom (forall DatatypeValues.Stream$G: Ty, d: DatatypeType :: 
  { DatatypeValues.Stream.Next_q(d), $Is(d, Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G)) } 
  $Is(d, Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G))
     ==> DatatypeValues.Stream.Next_q(d));

function $Eq#DatatypeValues.Stream(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall DatatypeValues.Stream$G#l: Ty, 
    DatatypeValues.Stream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G#l))
       && $Is(d1, Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G#r))
     ==> ($Eq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, $LS(ly), d0, d1)
       <==> DatatypeValues.Stream.Next_q(d0)
         && DatatypeValues.Stream.Next_q(d1)
         && (DatatypeValues.Stream.Next_q(d0) && DatatypeValues.Stream.Next_q(d1)
           ==> DatatypeValues.Stream.head(d0) == DatatypeValues.Stream.head(d1)
             && $Eq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, 
              DatatypeValues.Stream$G#r, 
              ly, 
              DatatypeValues.Stream.tail(d0), 
              DatatypeValues.Stream.tail(d1)))));

// Unbump layer co-equality axiom
axiom (forall DatatypeValues.Stream$G#l: Ty, 
    DatatypeValues.Stream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, $LS(ly), d0, d1) } 
  $Eq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, $LS(ly), d0, d1)
     <==> $Eq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall DatatypeValues.Stream$G#l: Ty, 
    DatatypeValues.Stream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, $LS(ly), d0, d1) } 
  $Eq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#DatatypeValues.Stream(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall DatatypeValues.Stream$G#l: Ty, 
    DatatypeValues.Stream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G#l))
       && $Is(d1, Tclass.DatatypeValues.Stream(DatatypeValues.Stream$G#r))
     ==> ($PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> DatatypeValues.Stream.Next_q(d0)
             && DatatypeValues.Stream.Next_q(d1)
             && (DatatypeValues.Stream.Next_q(d0) && DatatypeValues.Stream.Next_q(d1)
               ==> DatatypeValues.Stream.head(d0) == DatatypeValues.Stream.head(d1)
                 && $PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, 
                  DatatypeValues.Stream$G#r, 
                  ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  DatatypeValues.Stream.tail(d0), 
                  DatatypeValues.Stream.tail(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall DatatypeValues.Stream$G#l: Ty, 
    DatatypeValues.Stream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall DatatypeValues.Stream$G#l: Ty, 
    DatatypeValues.Stream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, $LS(ly), d0, d1) } 
  $Eq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall DatatypeValues.Stream$G#l: Ty, 
    DatatypeValues.Stream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, 
          DatatypeValues.Stream$G#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1) } 
      0 <= k
         ==> $PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, 
          DatatypeValues.Stream$G#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1))
     ==> $Eq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall DatatypeValues.Stream$G#l: Ty, 
    DatatypeValues.Stream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, k, $LS(ly), d0, d1), $PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall DatatypeValues.Stream$G#l: Ty, 
    DatatypeValues.Stream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#DatatypeValues.Stream(DatatypeValues.Stream$G#l, DatatypeValues.Stream$G#r, k, $LS(ly), d0, d1));

const unique class.DatatypeValues.Stream: ClassName;

// Constructor function declaration
function #DatatypeValues.AutoStream.AutoNext(Box, DatatypeType) : DatatypeType;

const unique ##DatatypeValues.AutoStream.AutoNext: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: Box, a#5#1#0: DatatypeType :: 
  { #DatatypeValues.AutoStream.AutoNext(a#5#0#0, a#5#1#0) } 
  DatatypeCtorId(#DatatypeValues.AutoStream.AutoNext(a#5#0#0, a#5#1#0))
     == ##DatatypeValues.AutoStream.AutoNext);
}

function DatatypeValues.AutoStream.AutoNext_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeValues.AutoStream.AutoNext_q(d) } 
  DatatypeValues.AutoStream.AutoNext_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeValues.AutoStream.AutoNext);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeValues.AutoStream.AutoNext_q(d) } 
  DatatypeValues.AutoStream.AutoNext_q(d)
     ==> (exists a#6#0#0: Box, a#6#1#0: DatatypeType :: 
      d == #DatatypeValues.AutoStream.AutoNext(a#6#0#0, a#6#1#0)));

// Constructor $Is
axiom (forall DatatypeValues.AutoStream$G: Ty, a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { $Is(#DatatypeValues.AutoStream.AutoNext(a#7#0#0, a#7#1#0), 
      Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G)) } 
  $Is(#DatatypeValues.AutoStream.AutoNext(a#7#0#0, a#7#1#0), 
      Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G))
     <==> $IsBox(a#7#0#0, DatatypeValues.AutoStream$G)
       && $Is(a#7#1#0, Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G)));

// Constructor $IsAlloc
axiom (forall DatatypeValues.AutoStream$G: Ty, a#7#0#0: Box, a#7#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#DatatypeValues.AutoStream.AutoNext(a#7#0#0, a#7#1#0), 
      Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DatatypeValues.AutoStream.AutoNext(a#7#0#0, a#7#1#0), 
        Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G), 
        $h)
       <==> $IsAllocBox(a#7#0#0, DatatypeValues.AutoStream$G, $h)
         && $IsAlloc(a#7#1#0, Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DatatypeValues.AutoStream$G: Ty, $h: Heap :: 
  { $IsAllocBox(DatatypeValues.AutoStream.head(d), DatatypeValues.AutoStream$G, $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeValues.AutoStream.AutoNext_q(d)
       && $IsAlloc(d, Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G), $h)
     ==> $IsAllocBox(DatatypeValues.AutoStream.head(d), DatatypeValues.AutoStream$G, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DatatypeValues.AutoStream$G: Ty, $h: Heap :: 
  { $IsAlloc(DatatypeValues.AutoStream.tail(d), 
      Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G), 
      $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeValues.AutoStream.AutoNext_q(d)
       && $IsAlloc(d, Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G), $h)
     ==> $IsAlloc(DatatypeValues.AutoStream.tail(d), 
      Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G), 
      $h));

function DatatypeValues.AutoStream.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #DatatypeValues.AutoStream.AutoNext(a#8#0#0, a#8#1#0) } 
  DatatypeValues.AutoStream.head(#DatatypeValues.AutoStream.AutoNext(a#8#0#0, a#8#1#0))
     == a#8#0#0);

function DatatypeValues.AutoStream.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #DatatypeValues.AutoStream.AutoNext(a#9#0#0, a#9#1#0) } 
  DatatypeValues.AutoStream.tail(#DatatypeValues.AutoStream.AutoNext(a#9#0#0, a#9#1#0))
     == a#9#1#0);

// Depth-one case-split function
function $IsA#DatatypeValues.AutoStream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeValues.AutoStream(d) } 
  $IsA#DatatypeValues.AutoStream(d) ==> DatatypeValues.AutoStream.AutoNext_q(d));

// Questionmark data type disjunctivity
axiom (forall DatatypeValues.AutoStream$G: Ty, d: DatatypeType :: 
  { DatatypeValues.AutoStream.AutoNext_q(d), $Is(d, Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G)) } 
  $Is(d, Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G))
     ==> DatatypeValues.AutoStream.AutoNext_q(d));

function $Eq#DatatypeValues.AutoStream(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall DatatypeValues.AutoStream$G#l: Ty, 
    DatatypeValues.AutoStream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l))
       && $Is(d1, Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#r))
     ==> ($Eq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, $LS(ly), d0, d1)
       <==> DatatypeValues.AutoStream.AutoNext_q(d0)
         && DatatypeValues.AutoStream.AutoNext_q(d1)
         && (DatatypeValues.AutoStream.AutoNext_q(d0)
             && DatatypeValues.AutoStream.AutoNext_q(d1)
           ==> DatatypeValues.AutoStream.head(d0) == DatatypeValues.AutoStream.head(d1)
             && $Eq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, 
              DatatypeValues.AutoStream$G#r, 
              ly, 
              DatatypeValues.AutoStream.tail(d0), 
              DatatypeValues.AutoStream.tail(d1)))));

// Unbump layer co-equality axiom
axiom (forall DatatypeValues.AutoStream$G#l: Ty, 
    DatatypeValues.AutoStream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, $LS(ly), d0, d1) } 
  $Eq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, $LS(ly), d0, d1)
     <==> $Eq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall DatatypeValues.AutoStream$G#l: Ty, 
    DatatypeValues.AutoStream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, $LS(ly), d0, d1) } 
  $Eq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#DatatypeValues.AutoStream(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall DatatypeValues.AutoStream$G#l: Ty, 
    DatatypeValues.AutoStream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l))
       && $Is(d1, Tclass.DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#r))
     ==> ($PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> DatatypeValues.AutoStream.AutoNext_q(d0)
             && DatatypeValues.AutoStream.AutoNext_q(d1)
             && (DatatypeValues.AutoStream.AutoNext_q(d0)
                 && DatatypeValues.AutoStream.AutoNext_q(d1)
               ==> DatatypeValues.AutoStream.head(d0) == DatatypeValues.AutoStream.head(d1)
                 && $PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, 
                  DatatypeValues.AutoStream$G#r, 
                  ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  DatatypeValues.AutoStream.tail(d0), 
                  DatatypeValues.AutoStream.tail(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall DatatypeValues.AutoStream$G#l: Ty, 
    DatatypeValues.AutoStream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall DatatypeValues.AutoStream$G#l: Ty, 
    DatatypeValues.AutoStream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, $LS(ly), d0, d1) } 
  $Eq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall DatatypeValues.AutoStream$G#l: Ty, 
    DatatypeValues.AutoStream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, 
          DatatypeValues.AutoStream$G#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1) } 
      0 <= k
         ==> $PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, 
          DatatypeValues.AutoStream$G#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1))
     ==> $Eq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall DatatypeValues.AutoStream$G#l: Ty, 
    DatatypeValues.AutoStream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, k, $LS(ly), d0, d1), $PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall DatatypeValues.AutoStream$G#l: Ty, 
    DatatypeValues.AutoStream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#DatatypeValues.AutoStream(DatatypeValues.AutoStream$G#l, DatatypeValues.AutoStream$G#r, k, $LS(ly), d0, d1));

const unique class.DatatypeValues.AutoStream: ClassName;

// type axiom for trait parent: Class? extends Trait?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.NilRegression.Class?()) } 
  $Is($o, Tclass.NilRegression.Class?())
     ==> $Is($o, Tclass.NilRegression.Trait?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NilRegression.Class?()) } 
  $IsBox(bx, Tclass.NilRegression.Class?())
     ==> $IsBox(bx, Tclass.NilRegression.Trait?()));

// allocation axiom for trait parent: Class? extends Trait?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.NilRegression.Class?(), $heap) } 
  $IsAlloc($o, Tclass.NilRegression.Class?(), $heap)
     ==> $IsAlloc($o, Tclass.NilRegression.Trait?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.NilRegression.Class?(), $h) } 
  $IsAllocBox(bx, Tclass.NilRegression.Class?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.NilRegression.Trait?(), $h));

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

const unique tytagFamily$_tuple#4: TyTagFamily;

const unique tytagFamily$_tuple#7: TyTagFamily;

const unique tytagFamily$array2: TyTagFamily;

const unique tytagFamily$WClass: TyTagFamily;

const unique tytagFamily$Class: TyTagFamily;

const unique tytagFamily$SomeObject: TyTagFamily;

const unique tytagFamily$Cell: TyTagFamily;

const unique tytagFamily$ThisOrThat: TyTagFamily;

const unique tytagFamily$OrThat: TyTagFamily;

const unique tytagFamily$pos: TyTagFamily;

const unique tytagFamily$OddByte: TyTagFamily;

const unique tytagFamily$OddNat: TyTagFamily;

const unique tytagFamily$Stream: TyTagFamily;

const unique tytagFamily$Trait: TyTagFamily;

const unique tytagFamily$GClass: TyTagFamily;

const unique tytagFamily$DaTy: TyTagFamily;

const unique tytagFamily$DaTy2: TyTagFamily;

const unique tytagFamily$MyClass: TyTagFamily;

const unique tytagFamily$EnumDatatype: TyTagFamily;

const unique tytagFamily$IntList: TyTagFamily;

const unique tytagFamily$GenericTree: TyTagFamily;

const unique tytagFamily$Complicated: TyTagFamily;

const unique tytagFamily$CellCell: TyTagFamily;

const unique tytagFamily$Difficult: TyTagFamily;

const unique tytagFamily$GenDifficult: TyTagFamily;

const unique tytagFamily$GenClass: TyTagFamily;

const unique tytagFamily$Color: TyTagFamily;

const unique tytagFamily$CoColor: TyTagFamily;

const unique tytagFamily$MoColor: TyTagFamily;

const unique tytagFamily$Nt: TyTagFamily;

const unique tytagFamily$Datatype: TyTagFamily;

const unique tytagFamily$Wrapper: TyTagFamily;

const unique tytagFamily$ContraStream: TyTagFamily;

const unique tytagFamily$CoEnum: TyTagFamily;

const unique tytagFamily$AutoStream: TyTagFamily;

const unique field$pair: NameFamily;

const unique field$cell: NameFamily;

const unique field$obj: NameFamily;

const unique field$u: NameFamily;

const unique field$v: NameFamily;

const unique field$w: NameFamily;

const unique field$u1: NameFamily;

const unique field$v1: NameFamily;

const unique field$w1: NameFamily;

const unique field$u2: NameFamily;

const unique field$v2: NameFamily;

const unique field$w2: NameFamily;
