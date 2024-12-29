// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy

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

function {:inline} and_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} or_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} xor_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} not_bv0(Bv0) : Bv0
{
  0
}

function {:inline} add_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} sub_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} mul_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} div_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} mod_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} lt_bv0(Bv0, Bv0) : bool
{
  false
}

function {:inline} le_bv0(Bv0, Bv0) : bool
{
  true
}

function {:inline} ge_bv0(Bv0, Bv0) : bool
{
  true
}

function {:inline} gt_bv0(Bv0, Bv0) : bool
{
  false
}

function {:inline} LeftShift_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} RightShift_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} LeftRotate_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} RightRotate_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} nat_to_bv0(int) : Bv0
{
  0
}

function {:inline} nat_from_bv0(Bv0) : int
{
  0
}

// Box/unbox axiom for bv1
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(1)) } 
  $IsBox(bx, TBitvector(1))
     ==> $Box($Unbox(bx): bv1) == bx && $Is($Unbox(bx): bv1, TBitvector(1)));

axiom (forall v: bv1 :: { $Is(v, TBitvector(1)) } $Is(v, TBitvector(1)));

axiom (forall v: bv1, heap: Heap :: 
  { $IsAlloc(v, TBitvector(1), heap) } 
  $IsAlloc(v, TBitvector(1), heap));

function {:bvbuiltin "bvand"} and_bv1(bv1, bv1) : bv1;

function {:bvbuiltin "bvor"} or_bv1(bv1, bv1) : bv1;

function {:bvbuiltin "bvxor"} xor_bv1(bv1, bv1) : bv1;

function {:bvbuiltin "bvnot"} not_bv1(bv1) : bv1;

function {:bvbuiltin "bvadd"} add_bv1(bv1, bv1) : bv1;

function {:bvbuiltin "bvsub"} sub_bv1(bv1, bv1) : bv1;

function {:bvbuiltin "bvmul"} mul_bv1(bv1, bv1) : bv1;

function {:bvbuiltin "bvudiv"} div_bv1(bv1, bv1) : bv1;

function {:bvbuiltin "bvurem"} mod_bv1(bv1, bv1) : bv1;

function {:bvbuiltin "bvult"} lt_bv1(bv1, bv1) : bool;

function {:bvbuiltin "bvule"} le_bv1(bv1, bv1) : bool;

function {:bvbuiltin "bvuge"} ge_bv1(bv1, bv1) : bool;

function {:bvbuiltin "bvugt"} gt_bv1(bv1, bv1) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv1(bv1, bv1) : bv1;

function {:bvbuiltin "bvlshr"} RightShift_bv1(bv1, bv1) : bv1;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv1(bv1, bv1) : bv1;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv1(bv1, bv1) : bv1;

function {:bvbuiltin "(_ int2bv 1)"} nat_to_bv1(int) : bv1;

function {:bvbuiltin "bv2int"} smt_nat_from_bv1(bv1) : int;

function nat_from_bv1(bv1) : int;

axiom (forall b: bv1 :: 
  { nat_from_bv1(b) } 
  0 <= nat_from_bv1(b)
     && nat_from_bv1(b) < 2
     && nat_from_bv1(b) == smt_nat_from_bv1(b));

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

// Box/unbox axiom for bv16
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(16)) } 
  $IsBox(bx, TBitvector(16))
     ==> $Box($Unbox(bx): bv16) == bx && $Is($Unbox(bx): bv16, TBitvector(16)));

axiom (forall v: bv16 :: { $Is(v, TBitvector(16)) } $Is(v, TBitvector(16)));

axiom (forall v: bv16, heap: Heap :: 
  { $IsAlloc(v, TBitvector(16), heap) } 
  $IsAlloc(v, TBitvector(16), heap));

function {:bvbuiltin "bvand"} and_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvor"} or_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvxor"} xor_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvnot"} not_bv16(bv16) : bv16;

function {:bvbuiltin "bvadd"} add_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvsub"} sub_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvmul"} mul_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvudiv"} div_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvurem"} mod_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvult"} lt_bv16(bv16, bv16) : bool;

function {:bvbuiltin "bvule"} le_bv16(bv16, bv16) : bool;

function {:bvbuiltin "bvuge"} ge_bv16(bv16, bv16) : bool;

function {:bvbuiltin "bvugt"} gt_bv16(bv16, bv16) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvlshr"} RightShift_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "(_ int2bv 16)"} nat_to_bv16(int) : bv16;

function {:bvbuiltin "bv2int"} smt_nat_from_bv16(bv16) : int;

function nat_from_bv16(bv16) : int;

axiom (forall b: bv16 :: 
  { nat_from_bv16(b) } 
  0 <= nat_from_bv16(b)
     && nat_from_bv16(b) < 65536
     && nat_from_bv16(b) == smt_nat_from_bv16(b));

// Box/unbox axiom for bv32
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(32)) } 
  $IsBox(bx, TBitvector(32))
     ==> $Box($Unbox(bx): bv32) == bx && $Is($Unbox(bx): bv32, TBitvector(32)));

axiom (forall v: bv32 :: { $Is(v, TBitvector(32)) } $Is(v, TBitvector(32)));

axiom (forall v: bv32, heap: Heap :: 
  { $IsAlloc(v, TBitvector(32), heap) } 
  $IsAlloc(v, TBitvector(32), heap));

function {:bvbuiltin "bvand"} and_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvor"} or_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvxor"} xor_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvnot"} not_bv32(bv32) : bv32;

function {:bvbuiltin "bvadd"} add_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvsub"} sub_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} mul_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvudiv"} div_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvurem"} mod_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvult"} lt_bv32(bv32, bv32) : bool;

function {:bvbuiltin "bvule"} le_bv32(bv32, bv32) : bool;

function {:bvbuiltin "bvuge"} ge_bv32(bv32, bv32) : bool;

function {:bvbuiltin "bvugt"} gt_bv32(bv32, bv32) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvlshr"} RightShift_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "(_ int2bv 32)"} nat_to_bv32(int) : bv32;

function {:bvbuiltin "bv2int"} smt_nat_from_bv32(bv32) : int;

function nat_from_bv32(bv32) : int;

axiom (forall b: bv32 :: 
  { nat_from_bv32(b) } 
  0 <= nat_from_bv32(b)
     && nat_from_bv32(b) < 4294967296
     && nat_from_bv32(b) == smt_nat_from_bv32(b));

// Box/unbox axiom for bv53
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(53)) } 
  $IsBox(bx, TBitvector(53))
     ==> $Box($Unbox(bx): bv53) == bx && $Is($Unbox(bx): bv53, TBitvector(53)));

axiom (forall v: bv53 :: { $Is(v, TBitvector(53)) } $Is(v, TBitvector(53)));

axiom (forall v: bv53, heap: Heap :: 
  { $IsAlloc(v, TBitvector(53), heap) } 
  $IsAlloc(v, TBitvector(53), heap));

function {:bvbuiltin "bvand"} and_bv53(bv53, bv53) : bv53;

function {:bvbuiltin "bvor"} or_bv53(bv53, bv53) : bv53;

function {:bvbuiltin "bvxor"} xor_bv53(bv53, bv53) : bv53;

function {:bvbuiltin "bvnot"} not_bv53(bv53) : bv53;

function {:bvbuiltin "bvadd"} add_bv53(bv53, bv53) : bv53;

function {:bvbuiltin "bvsub"} sub_bv53(bv53, bv53) : bv53;

function {:bvbuiltin "bvmul"} mul_bv53(bv53, bv53) : bv53;

function {:bvbuiltin "bvudiv"} div_bv53(bv53, bv53) : bv53;

function {:bvbuiltin "bvurem"} mod_bv53(bv53, bv53) : bv53;

function {:bvbuiltin "bvult"} lt_bv53(bv53, bv53) : bool;

function {:bvbuiltin "bvule"} le_bv53(bv53, bv53) : bool;

function {:bvbuiltin "bvuge"} ge_bv53(bv53, bv53) : bool;

function {:bvbuiltin "bvugt"} gt_bv53(bv53, bv53) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv53(bv53, bv53) : bv53;

function {:bvbuiltin "bvlshr"} RightShift_bv53(bv53, bv53) : bv53;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv53(bv53, bv53) : bv53;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv53(bv53, bv53) : bv53;

function {:bvbuiltin "(_ int2bv 53)"} nat_to_bv53(int) : bv53;

function {:bvbuiltin "bv2int"} smt_nat_from_bv53(bv53) : int;

function nat_from_bv53(bv53) : int;

axiom (forall b: bv53 :: 
  { nat_from_bv53(b) } 
  0 <= nat_from_bv53(b)
     && nat_from_bv53(b) < 9007199254740992
     && nat_from_bv53(b) == smt_nat_from_bv53(b));

// Box/unbox axiom for bv64
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(64)) } 
  $IsBox(bx, TBitvector(64))
     ==> $Box($Unbox(bx): bv64) == bx && $Is($Unbox(bx): bv64, TBitvector(64)));

axiom (forall v: bv64 :: { $Is(v, TBitvector(64)) } $Is(v, TBitvector(64)));

axiom (forall v: bv64, heap: Heap :: 
  { $IsAlloc(v, TBitvector(64), heap) } 
  $IsAlloc(v, TBitvector(64), heap));

function {:bvbuiltin "bvand"} and_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvor"} or_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvxor"} xor_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvnot"} not_bv64(bv64) : bv64;

function {:bvbuiltin "bvadd"} add_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvsub"} sub_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvmul"} mul_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvudiv"} div_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvurem"} mod_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvult"} lt_bv64(bv64, bv64) : bool;

function {:bvbuiltin "bvule"} le_bv64(bv64, bv64) : bool;

function {:bvbuiltin "bvuge"} ge_bv64(bv64, bv64) : bool;

function {:bvbuiltin "bvugt"} gt_bv64(bv64, bv64) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvlshr"} RightShift_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "(_ int2bv 64)"} nat_to_bv64(int) : bv64;

function {:bvbuiltin "bv2int"} smt_nat_from_bv64(bv64) : int;

function nat_from_bv64(bv64) : int;

axiom (forall b: bv64 :: 
  { nat_from_bv64(b) } 
  0 <= nat_from_bv64(b)
     && nat_from_bv64(b) < 18446744073709551616
     && nat_from_bv64(b) == smt_nat_from_bv64(b));

// Box/unbox axiom for bv100
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(100)) } 
  $IsBox(bx, TBitvector(100))
     ==> $Box($Unbox(bx): bv100) == bx && $Is($Unbox(bx): bv100, TBitvector(100)));

axiom (forall v: bv100 :: { $Is(v, TBitvector(100)) } $Is(v, TBitvector(100)));

axiom (forall v: bv100, heap: Heap :: 
  { $IsAlloc(v, TBitvector(100), heap) } 
  $IsAlloc(v, TBitvector(100), heap));

function {:bvbuiltin "bvand"} and_bv100(bv100, bv100) : bv100;

function {:bvbuiltin "bvor"} or_bv100(bv100, bv100) : bv100;

function {:bvbuiltin "bvxor"} xor_bv100(bv100, bv100) : bv100;

function {:bvbuiltin "bvnot"} not_bv100(bv100) : bv100;

function {:bvbuiltin "bvadd"} add_bv100(bv100, bv100) : bv100;

function {:bvbuiltin "bvsub"} sub_bv100(bv100, bv100) : bv100;

function {:bvbuiltin "bvmul"} mul_bv100(bv100, bv100) : bv100;

function {:bvbuiltin "bvudiv"} div_bv100(bv100, bv100) : bv100;

function {:bvbuiltin "bvurem"} mod_bv100(bv100, bv100) : bv100;

function {:bvbuiltin "bvult"} lt_bv100(bv100, bv100) : bool;

function {:bvbuiltin "bvule"} le_bv100(bv100, bv100) : bool;

function {:bvbuiltin "bvuge"} ge_bv100(bv100, bv100) : bool;

function {:bvbuiltin "bvugt"} gt_bv100(bv100, bv100) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv100(bv100, bv100) : bv100;

function {:bvbuiltin "bvlshr"} RightShift_bv100(bv100, bv100) : bv100;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv100(bv100, bv100) : bv100;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv100(bv100, bv100) : bv100;

function {:bvbuiltin "(_ int2bv 100)"} nat_to_bv100(int) : bv100;

function {:bvbuiltin "bv2int"} smt_nat_from_bv100(bv100) : int;

function nat_from_bv100(bv100) : int;

axiom (forall b: bv100 :: 
  { nat_from_bv100(b) } 
  0 <= nat_from_bv100(b)
     && nat_from_bv100(b) < 1267650600228229401496703205376
     && nat_from_bv100(b) == smt_nat_from_bv100(b));

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

const unique class._System.array3?: ClassName;

function Tclass._System.array3?(Ty) : Ty;

const unique Tagclass._System.array3?: TyTag;

// Tclass._System.array3? Tag
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3?(_System.array3$arg) } 
  Tag(Tclass._System.array3?(_System.array3$arg)) == Tagclass._System.array3?
     && TagFamily(Tclass._System.array3?(_System.array3$arg)) == tytagFamily$array3);

function Tclass._System.array3?_0(Ty) : Ty;

// Tclass._System.array3? injectivity 0
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3?(_System.array3$arg) } 
  Tclass._System.array3?_0(Tclass._System.array3?(_System.array3$arg))
     == _System.array3$arg);

// Box/unbox axiom for Tclass._System.array3?
axiom (forall _System.array3$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array3?(_System.array3$arg)) } 
  $IsBox(bx, Tclass._System.array3?(_System.array3$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array3?(_System.array3$arg)));

axiom (forall o: ref :: { _System.array3.Length0(o) } 0 <= _System.array3.Length0(o));

axiom (forall o: ref :: { _System.array3.Length1(o) } 0 <= _System.array3.Length1(o));

axiom (forall o: ref :: { _System.array3.Length2(o) } 0 <= _System.array3.Length2(o));

// array3.: Type axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int, $i2: int :: 
  { read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && 
      0 <= $i0
       && $i0 < _System.array3.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array3.Length1($o)
       && 
      0 <= $i2
       && $i2 < _System.array3.Length2($o)
     ==> $IsBox(read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), 
      _System.array3$arg));

// array3.: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int, $i2: int :: 
  { read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && 
      0 <= $i0
       && $i0 < _System.array3.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array3.Length1($o)
       && 
      0 <= $i2
       && $i2 < _System.array3.Length2($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), 
      _System.array3$arg, 
      $h));

// $Is axiom for array type array3
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array3?(_System.array3$arg)) } 
  $Is($o, Tclass._System.array3?(_System.array3$arg))
     <==> $o == null || dtype($o) == Tclass._System.array3?(_System.array3$arg));

// $IsAlloc axiom for array type array3
axiom (forall _System.array3$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array3?(_System.array3$arg), $h) } 
  $IsAlloc($o, Tclass._System.array3?(_System.array3$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _System.array3.Length0(ref) : int;

// array3.Length0: Type axiom
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { _System.array3.Length0($o), Tclass._System.array3?(_System.array3$arg) } 
  $o != null && dtype($o) == Tclass._System.array3?(_System.array3$arg)
     ==> $Is(_System.array3.Length0($o), TInt));

// array3.Length0: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array3.Length0($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array3.Length0($o), TInt, $h));

function _System.array3.Length1(ref) : int;

// array3.Length1: Type axiom
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { _System.array3.Length1($o), Tclass._System.array3?(_System.array3$arg) } 
  $o != null && dtype($o) == Tclass._System.array3?(_System.array3$arg)
     ==> $Is(_System.array3.Length1($o), TInt));

// array3.Length1: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array3.Length1($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array3.Length1($o), TInt, $h));

function _System.array3.Length2(ref) : int;

// array3.Length2: Type axiom
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { _System.array3.Length2($o), Tclass._System.array3?(_System.array3$arg) } 
  $o != null && dtype($o) == Tclass._System.array3?(_System.array3$arg)
     ==> $Is(_System.array3.Length2($o), TInt));

// array3.Length2: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array3.Length2($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array3.Length2($o), TInt, $h));

function Tclass._System.array3(Ty) : Ty;

const unique Tagclass._System.array3: TyTag;

// Tclass._System.array3 Tag
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3(_System.array3$arg) } 
  Tag(Tclass._System.array3(_System.array3$arg)) == Tagclass._System.array3
     && TagFamily(Tclass._System.array3(_System.array3$arg)) == tytagFamily$array3);

function Tclass._System.array3_0(Ty) : Ty;

// Tclass._System.array3 injectivity 0
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3(_System.array3$arg) } 
  Tclass._System.array3_0(Tclass._System.array3(_System.array3$arg))
     == _System.array3$arg);

// Box/unbox axiom for Tclass._System.array3
axiom (forall _System.array3$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array3(_System.array3$arg)) } 
  $IsBox(bx, Tclass._System.array3(_System.array3$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array3(_System.array3$arg)));

// $Is axiom for non-null type _System.array3
axiom (forall _System.array3$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array3(_System.array3$arg)) } 
    { $Is(c#0, Tclass._System.array3?(_System.array3$arg)) } 
  $Is(c#0, Tclass._System.array3(_System.array3$arg))
     <==> $Is(c#0, Tclass._System.array3?(_System.array3$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array3
axiom (forall _System.array3$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array3(_System.array3$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array3?(_System.array3$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array3(_System.array3$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array3?(_System.array3$arg), $h));

// Constructor function declaration
function #_System._tuple#3._#Make3(Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#3._#Make3: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: Box, a#12#1#0: Box, a#12#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#12#0#0, a#12#1#0, a#12#2#0) } 
  DatatypeCtorId(#_System._tuple#3._#Make3(a#12#0#0, a#12#1#0, a#12#2#0))
     == ##_System._tuple#3._#Make3);
}

function _System.Tuple3.___hMake3_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d) } 
  _System.Tuple3.___hMake3_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#3._#Make3);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d) } 
  _System.Tuple3.___hMake3_q(d)
     ==> (exists a#13#0#0: Box, a#13#1#0: Box, a#13#2#0: Box :: 
      d == #_System._tuple#3._#Make3(a#13#0#0, a#13#1#0, a#13#2#0)));

function Tclass._System.Tuple3(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple3: TyTag;

// Tclass._System.Tuple3 Tag
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tag(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
       == Tagclass._System.Tuple3
     && TagFamily(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
       == tytagFamily$_tuple#3);

function Tclass._System.Tuple3_0(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 0
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_0(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T0);

function Tclass._System.Tuple3_1(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 1
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_1(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T1);

function Tclass._System.Tuple3_2(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 2
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_2(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T2);

// Box/unbox axiom for Tclass._System.Tuple3
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $IsBox(bx, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)));

// Constructor $Is
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box :: 
  { $Is(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $Is(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     <==> $IsBox(a#14#0#0, _System._tuple#3$T0)
       && $IsBox(a#14#1#0, _System._tuple#3$T1)
       && $IsBox(a#14#2#0, _System._tuple#3$T2));

// Constructor $IsAlloc
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
        Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
        $h)
       <==> $IsAllocBox(a#14#0#0, _System._tuple#3$T0, $h)
         && $IsAllocBox(a#14#1#0, _System._tuple#3$T1, $h)
         && $IsAllocBox(a#14#2#0, _System._tuple#3$T2, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._0(d), _System._tuple#3$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._0(d), _System._tuple#3$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._1(d), _System._tuple#3$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T0: Ty, _System._tuple#3$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._1(d), _System._tuple#3$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._2(d), _System._tuple#3$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._2(d), _System._tuple#3$T2, $h));

// Constructor literal
axiom (forall a#15#0#0: Box, a#15#1#0: Box, a#15#2#0: Box :: 
  { #_System._tuple#3._#Make3(Lit(a#15#0#0), Lit(a#15#1#0), Lit(a#15#2#0)) } 
  #_System._tuple#3._#Make3(Lit(a#15#0#0), Lit(a#15#1#0), Lit(a#15#2#0))
     == Lit(#_System._tuple#3._#Make3(a#15#0#0, a#15#1#0, a#15#2#0)));

function _System.Tuple3._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#16#0#0: Box, a#16#1#0: Box, a#16#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#16#0#0, a#16#1#0, a#16#2#0) } 
  _System.Tuple3._0(#_System._tuple#3._#Make3(a#16#0#0, a#16#1#0, a#16#2#0))
     == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: Box, a#17#1#0: Box, a#17#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#17#0#0, a#17#1#0, a#17#2#0) } 
  BoxRank(a#17#0#0)
     < DtRank(#_System._tuple#3._#Make3(a#17#0#0, a#17#1#0, a#17#2#0)));

function _System.Tuple3._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#18#0#0: Box, a#18#1#0: Box, a#18#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#18#0#0, a#18#1#0, a#18#2#0) } 
  _System.Tuple3._1(#_System._tuple#3._#Make3(a#18#0#0, a#18#1#0, a#18#2#0))
     == a#18#1#0);

// Inductive rank
axiom (forall a#19#0#0: Box, a#19#1#0: Box, a#19#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#19#0#0, a#19#1#0, a#19#2#0) } 
  BoxRank(a#19#1#0)
     < DtRank(#_System._tuple#3._#Make3(a#19#0#0, a#19#1#0, a#19#2#0)));

function _System.Tuple3._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#20#0#0: Box, a#20#1#0: Box, a#20#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#20#0#0, a#20#1#0, a#20#2#0) } 
  _System.Tuple3._2(#_System._tuple#3._#Make3(a#20#0#0, a#20#1#0, a#20#2#0))
     == a#20#2#0);

// Inductive rank
axiom (forall a#21#0#0: Box, a#21#1#0: Box, a#21#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#21#0#0, a#21#1#0, a#21#2#0) } 
  BoxRank(a#21#2#0)
     < DtRank(#_System._tuple#3._#Make3(a#21#0#0, a#21#1#0, a#21#2#0)));

// Depth-one case-split function
function $IsA#_System.Tuple3(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple3(d) } 
  $IsA#_System.Tuple3(d) ==> _System.Tuple3.___hMake3_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d), $Is(d, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $Is(d, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     ==> _System.Tuple3.___hMake3_q(d));

// Datatype extensional equality declaration
function _System.Tuple3#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#3._#Make3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3#Equal(a, b) } 
  _System.Tuple3#Equal(a, b)
     <==> _System.Tuple3._0(a) == _System.Tuple3._0(b)
       && _System.Tuple3._1(a) == _System.Tuple3._1(b)
       && _System.Tuple3._2(a) == _System.Tuple3._2(b));

// Datatype extensionality axiom: _System._tuple#3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3#Equal(a, b) } 
  _System.Tuple3#Equal(a, b) <==> a == b);

const unique class._System.Tuple3: ClassName;

const unique class.DefaultValuedExpressions.__default: ClassName;

procedure {:verboseName "DefaultValuedExpressions.TestStart (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.__default.TestStart();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DefaultValuedExpressions.TestStart (call)"} Call$$DefaultValuedExpressions.__default.TestStart();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DefaultValuedExpressions.TestStart (correctness)"} Impl$$DefaultValuedExpressions.__default.TestStart() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.TestStart (correctness)"} Impl$$DefaultValuedExpressions.__default.TestStart() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestStart, Impl$$DefaultValuedExpressions.__default.TestStart
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(349,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id338"} Call$$DefaultValuedExpressions.__default.DoIt(TInt);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "DefaultValuedExpressions.Print (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.__default.Print(DefaultValuedExpressions._default.Print$X: Ty, 
    x#0: Box
       where $IsBox(x#0, DefaultValuedExpressions._default.Print$X)
         && $IsAllocBox(x#0, DefaultValuedExpressions._default.Print$X, $Heap), 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DefaultValuedExpressions.Print (call)"} Call$$DefaultValuedExpressions.__default.Print(DefaultValuedExpressions._default.Print$X: Ty, 
    x#0: Box
       where $IsBox(x#0, DefaultValuedExpressions._default.Print$X)
         && $IsAllocBox(x#0, DefaultValuedExpressions._default.Print$X, $Heap), 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DefaultValuedExpressions.Print (correctness)"} Impl$$DefaultValuedExpressions.__default.Print(DefaultValuedExpressions._default.Print$X: Ty, 
    x#0: Box
       where $IsBox(x#0, DefaultValuedExpressions._default.Print$X)
         && $IsAllocBox(x#0, DefaultValuedExpressions._default.Print$X, $Heap), 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DefaultValuedExpressions.DoIt (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.__default.DoIt(DefaultValuedExpressions._default.DoIt$X: Ty);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DefaultValuedExpressions.DoIt (call)"} Call$$DefaultValuedExpressions.__default.DoIt(DefaultValuedExpressions._default.DoIt$X: Ty);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DefaultValuedExpressions.DoIt (correctness)"} Impl$$DefaultValuedExpressions.__default.DoIt(DefaultValuedExpressions._default.DoIt$X: Ty) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.DefaultValuedExpressions.NT0() : Ty
uses {
// Tclass.DefaultValuedExpressions.NT0 Tag
axiom Tag(Tclass.DefaultValuedExpressions.NT0())
     == Tagclass.DefaultValuedExpressions.NT0
   && TagFamily(Tclass.DefaultValuedExpressions.NT0()) == tytagFamily$NT0;
}

const unique Tagclass.DefaultValuedExpressions.NT0: TyTag;

// Box/unbox axiom for Tclass.DefaultValuedExpressions.NT0
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.NT0()) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.NT0())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.DefaultValuedExpressions.NT0()));

function Tclass.DefaultValuedExpressions.NT1() : Ty
uses {
// Tclass.DefaultValuedExpressions.NT1 Tag
axiom Tag(Tclass.DefaultValuedExpressions.NT1())
     == Tagclass.DefaultValuedExpressions.NT1
   && TagFamily(Tclass.DefaultValuedExpressions.NT1()) == tytagFamily$NT1;
}

const unique Tagclass.DefaultValuedExpressions.NT1: TyTag;

// Box/unbox axiom for Tclass.DefaultValuedExpressions.NT1
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.NT1()) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.NT1())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.DefaultValuedExpressions.NT1()));

function Tclass.DefaultValuedExpressions.NT2() : Ty
uses {
// Tclass.DefaultValuedExpressions.NT2 Tag
axiom Tag(Tclass.DefaultValuedExpressions.NT2())
     == Tagclass.DefaultValuedExpressions.NT2
   && TagFamily(Tclass.DefaultValuedExpressions.NT2()) == tytagFamily$NT2;
}

const unique Tagclass.DefaultValuedExpressions.NT2: TyTag;

// Box/unbox axiom for Tclass.DefaultValuedExpressions.NT2
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.NT2()) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.NT2())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.DefaultValuedExpressions.NT2()));

function Tclass.DefaultValuedExpressions.NT3() : Ty
uses {
// Tclass.DefaultValuedExpressions.NT3 Tag
axiom Tag(Tclass.DefaultValuedExpressions.NT3())
     == Tagclass.DefaultValuedExpressions.NT3
   && TagFamily(Tclass.DefaultValuedExpressions.NT3()) == tytagFamily$NT3;
}

const unique Tagclass.DefaultValuedExpressions.NT3: TyTag;

// Box/unbox axiom for Tclass.DefaultValuedExpressions.NT3
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.NT3()) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.NT3())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.DefaultValuedExpressions.NT3()));

function Tclass.DefaultValuedExpressions.NR0() : Ty
uses {
// Tclass.DefaultValuedExpressions.NR0 Tag
axiom Tag(Tclass.DefaultValuedExpressions.NR0())
     == Tagclass.DefaultValuedExpressions.NR0
   && TagFamily(Tclass.DefaultValuedExpressions.NR0()) == tytagFamily$NR0;
}

const unique Tagclass.DefaultValuedExpressions.NR0: TyTag;

// Box/unbox axiom for Tclass.DefaultValuedExpressions.NR0
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.NR0()) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.NR0())
     ==> $Box($Unbox(bx): real) == bx
       && $Is($Unbox(bx): real, Tclass.DefaultValuedExpressions.NR0()));

function Tclass.DefaultValuedExpressions.Class?(Ty, Ty) : Ty;

const unique Tagclass.DefaultValuedExpressions.Class?: TyTag;

// Tclass.DefaultValuedExpressions.Class? Tag
axiom (forall DefaultValuedExpressions.Class$T: Ty, DefaultValuedExpressions.Class$U: Ty :: 
  { Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U) } 
  Tag(Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U))
       == Tagclass.DefaultValuedExpressions.Class?
     && TagFamily(Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U))
       == tytagFamily$Class);

function Tclass.DefaultValuedExpressions.Class?_0(Ty) : Ty;

// Tclass.DefaultValuedExpressions.Class? injectivity 0
axiom (forall DefaultValuedExpressions.Class$T: Ty, DefaultValuedExpressions.Class$U: Ty :: 
  { Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U) } 
  Tclass.DefaultValuedExpressions.Class?_0(Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U))
     == DefaultValuedExpressions.Class$T);

function Tclass.DefaultValuedExpressions.Class?_1(Ty) : Ty;

// Tclass.DefaultValuedExpressions.Class? injectivity 1
axiom (forall DefaultValuedExpressions.Class$T: Ty, DefaultValuedExpressions.Class$U: Ty :: 
  { Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U) } 
  Tclass.DefaultValuedExpressions.Class?_1(Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U))
     == DefaultValuedExpressions.Class$U);

// Box/unbox axiom for Tclass.DefaultValuedExpressions.Class?
axiom (forall DefaultValuedExpressions.Class$T: Ty, 
    DefaultValuedExpressions.Class$U: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U)) } 
  $IsBox(bx, 
      Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U)));

function Tclass.DefaultValuedExpressions.Trait?(Ty, Ty) : Ty;

const unique Tagclass.DefaultValuedExpressions.Trait?: TyTag;

// Tclass.DefaultValuedExpressions.Trait? Tag
axiom (forall DefaultValuedExpressions.Trait$T: Ty, DefaultValuedExpressions.Trait$U: Ty :: 
  { Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U) } 
  Tag(Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U))
       == Tagclass.DefaultValuedExpressions.Trait?
     && TagFamily(Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U))
       == tytagFamily$Trait);

function Tclass.DefaultValuedExpressions.Trait?_0(Ty) : Ty;

// Tclass.DefaultValuedExpressions.Trait? injectivity 0
axiom (forall DefaultValuedExpressions.Trait$T: Ty, DefaultValuedExpressions.Trait$U: Ty :: 
  { Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U) } 
  Tclass.DefaultValuedExpressions.Trait?_0(Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U))
     == DefaultValuedExpressions.Trait$T);

function Tclass.DefaultValuedExpressions.Trait?_1(Ty) : Ty;

// Tclass.DefaultValuedExpressions.Trait? injectivity 1
axiom (forall DefaultValuedExpressions.Trait$T: Ty, DefaultValuedExpressions.Trait$U: Ty :: 
  { Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U) } 
  Tclass.DefaultValuedExpressions.Trait?_1(Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U))
     == DefaultValuedExpressions.Trait$U);

// Box/unbox axiom for Tclass.DefaultValuedExpressions.Trait?
axiom (forall DefaultValuedExpressions.Trait$T: Ty, 
    DefaultValuedExpressions.Trait$U: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U)) } 
  $IsBox(bx, 
      Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U)));

function Tclass.DefaultValuedExpressions.Stream(Ty) : Ty;

const unique Tagclass.DefaultValuedExpressions.Stream: TyTag;

// Tclass.DefaultValuedExpressions.Stream Tag
axiom (forall DefaultValuedExpressions.Stream$T: Ty :: 
  { Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T) } 
  Tag(Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T))
       == Tagclass.DefaultValuedExpressions.Stream
     && TagFamily(Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T))
       == tytagFamily$Stream);

function Tclass.DefaultValuedExpressions.Stream_0(Ty) : Ty;

// Tclass.DefaultValuedExpressions.Stream injectivity 0
axiom (forall DefaultValuedExpressions.Stream$T: Ty :: 
  { Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T) } 
  Tclass.DefaultValuedExpressions.Stream_0(Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T))
     == DefaultValuedExpressions.Stream$T);

// Box/unbox axiom for Tclass.DefaultValuedExpressions.Stream
axiom (forall DefaultValuedExpressions.Stream$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T)) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T)));

function Tclass.DefaultValuedExpressions.PossiblyFiniteStream(Ty) : Ty;

const unique Tagclass.DefaultValuedExpressions.PossiblyFiniteStream: TyTag;

// Tclass.DefaultValuedExpressions.PossiblyFiniteStream Tag
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T: Ty :: 
  { Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T) } 
  Tag(Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T))
       == Tagclass.DefaultValuedExpressions.PossiblyFiniteStream
     && TagFamily(Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T))
       == tytagFamily$PossiblyFiniteStream);

function Tclass.DefaultValuedExpressions.PossiblyFiniteStream_0(Ty) : Ty;

// Tclass.DefaultValuedExpressions.PossiblyFiniteStream injectivity 0
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T: Ty :: 
  { Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T) } 
  Tclass.DefaultValuedExpressions.PossiblyFiniteStream_0(Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T))
     == DefaultValuedExpressions.PossiblyFiniteStream$T);

// Box/unbox axiom for Tclass.DefaultValuedExpressions.PossiblyFiniteStream
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T)) } 
  $IsBox(bx, 
      Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T)));

function Tclass.DefaultValuedExpressions.Color() : Ty
uses {
// Tclass.DefaultValuedExpressions.Color Tag
axiom Tag(Tclass.DefaultValuedExpressions.Color())
     == Tagclass.DefaultValuedExpressions.Color
   && TagFamily(Tclass.DefaultValuedExpressions.Color()) == tytagFamily$Color;
}

const unique Tagclass.DefaultValuedExpressions.Color: TyTag;

// Box/unbox axiom for Tclass.DefaultValuedExpressions.Color
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.Color()) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.Color())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DefaultValuedExpressions.Color()));

function Tclass.DefaultValuedExpressions.Class(Ty, Ty) : Ty;

const unique Tagclass.DefaultValuedExpressions.Class: TyTag;

// Tclass.DefaultValuedExpressions.Class Tag
axiom (forall DefaultValuedExpressions.Class$T: Ty, DefaultValuedExpressions.Class$U: Ty :: 
  { Tclass.DefaultValuedExpressions.Class(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U) } 
  Tag(Tclass.DefaultValuedExpressions.Class(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U))
       == Tagclass.DefaultValuedExpressions.Class
     && TagFamily(Tclass.DefaultValuedExpressions.Class(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U))
       == tytagFamily$Class);

function Tclass.DefaultValuedExpressions.Class_0(Ty) : Ty;

// Tclass.DefaultValuedExpressions.Class injectivity 0
axiom (forall DefaultValuedExpressions.Class$T: Ty, DefaultValuedExpressions.Class$U: Ty :: 
  { Tclass.DefaultValuedExpressions.Class(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U) } 
  Tclass.DefaultValuedExpressions.Class_0(Tclass.DefaultValuedExpressions.Class(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U))
     == DefaultValuedExpressions.Class$T);

function Tclass.DefaultValuedExpressions.Class_1(Ty) : Ty;

// Tclass.DefaultValuedExpressions.Class injectivity 1
axiom (forall DefaultValuedExpressions.Class$T: Ty, DefaultValuedExpressions.Class$U: Ty :: 
  { Tclass.DefaultValuedExpressions.Class(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U) } 
  Tclass.DefaultValuedExpressions.Class_1(Tclass.DefaultValuedExpressions.Class(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U))
     == DefaultValuedExpressions.Class$U);

// Box/unbox axiom for Tclass.DefaultValuedExpressions.Class
axiom (forall DefaultValuedExpressions.Class$T: Ty, 
    DefaultValuedExpressions.Class$U: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.DefaultValuedExpressions.Class(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U)) } 
  $IsBox(bx, 
      Tclass.DefaultValuedExpressions.Class(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.DefaultValuedExpressions.Class(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U)));

function Tclass.DefaultValuedExpressions.PossibleCell(Ty, Ty) : Ty;

const unique Tagclass.DefaultValuedExpressions.PossibleCell: TyTag;

// Tclass.DefaultValuedExpressions.PossibleCell Tag
axiom (forall DefaultValuedExpressions.PossibleCell$T: Ty, 
    DefaultValuedExpressions.PossibleCell$U: Ty :: 
  { Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U) } 
  Tag(Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U))
       == Tagclass.DefaultValuedExpressions.PossibleCell
     && TagFamily(Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U))
       == tytagFamily$PossibleCell);

function Tclass.DefaultValuedExpressions.PossibleCell_0(Ty) : Ty;

// Tclass.DefaultValuedExpressions.PossibleCell injectivity 0
axiom (forall DefaultValuedExpressions.PossibleCell$T: Ty, 
    DefaultValuedExpressions.PossibleCell$U: Ty :: 
  { Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U) } 
  Tclass.DefaultValuedExpressions.PossibleCell_0(Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U))
     == DefaultValuedExpressions.PossibleCell$T);

function Tclass.DefaultValuedExpressions.PossibleCell_1(Ty) : Ty;

// Tclass.DefaultValuedExpressions.PossibleCell injectivity 1
axiom (forall DefaultValuedExpressions.PossibleCell$T: Ty, 
    DefaultValuedExpressions.PossibleCell$U: Ty :: 
  { Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U) } 
  Tclass.DefaultValuedExpressions.PossibleCell_1(Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U))
     == DefaultValuedExpressions.PossibleCell$U);

// Box/unbox axiom for Tclass.DefaultValuedExpressions.PossibleCell
axiom (forall DefaultValuedExpressions.PossibleCell$T: Ty, 
    DefaultValuedExpressions.PossibleCell$U: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U)) } 
  $IsBox(bx, 
      Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U)));

function Tclass.DefaultValuedExpressions.Cell(Ty, Ty) : Ty;

const unique Tagclass.DefaultValuedExpressions.Cell: TyTag;

// Tclass.DefaultValuedExpressions.Cell Tag
axiom (forall DefaultValuedExpressions.Cell$T: Ty, DefaultValuedExpressions.Cell$U: Ty :: 
  { Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U) } 
  Tag(Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U))
       == Tagclass.DefaultValuedExpressions.Cell
     && TagFamily(Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U))
       == tytagFamily$Cell);

function Tclass.DefaultValuedExpressions.Cell_0(Ty) : Ty;

// Tclass.DefaultValuedExpressions.Cell injectivity 0
axiom (forall DefaultValuedExpressions.Cell$T: Ty, DefaultValuedExpressions.Cell$U: Ty :: 
  { Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U) } 
  Tclass.DefaultValuedExpressions.Cell_0(Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U))
     == DefaultValuedExpressions.Cell$T);

function Tclass.DefaultValuedExpressions.Cell_1(Ty) : Ty;

// Tclass.DefaultValuedExpressions.Cell injectivity 1
axiom (forall DefaultValuedExpressions.Cell$T: Ty, DefaultValuedExpressions.Cell$U: Ty :: 
  { Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U) } 
  Tclass.DefaultValuedExpressions.Cell_1(Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U))
     == DefaultValuedExpressions.Cell$U);

// Box/unbox axiom for Tclass.DefaultValuedExpressions.Cell
axiom (forall DefaultValuedExpressions.Cell$T: Ty, 
    DefaultValuedExpressions.Cell$U: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U)) } 
  $IsBox(bx, 
      Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U)));

function Tclass.DefaultValuedExpressions.S0() : Ty
uses {
// Tclass.DefaultValuedExpressions.S0 Tag
axiom Tag(Tclass.DefaultValuedExpressions.S0())
     == Tagclass.DefaultValuedExpressions.S0
   && TagFamily(Tclass.DefaultValuedExpressions.S0()) == tytagFamily$S0;
}

const unique Tagclass.DefaultValuedExpressions.S0: TyTag;

// Box/unbox axiom for Tclass.DefaultValuedExpressions.S0
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.S0()) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.S0())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.DefaultValuedExpressions.S0()));

function Tclass.DefaultValuedExpressions.S1() : Ty
uses {
// Tclass.DefaultValuedExpressions.S1 Tag
axiom Tag(Tclass.DefaultValuedExpressions.S1())
     == Tagclass.DefaultValuedExpressions.S1
   && TagFamily(Tclass.DefaultValuedExpressions.S1()) == tytagFamily$S1;
}

const unique Tagclass.DefaultValuedExpressions.S1: TyTag;

// Box/unbox axiom for Tclass.DefaultValuedExpressions.S1
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.S1()) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.S1())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.DefaultValuedExpressions.S1()));

function Tclass.DefaultValuedExpressions.S2() : Ty
uses {
// Tclass.DefaultValuedExpressions.S2 Tag
axiom Tag(Tclass.DefaultValuedExpressions.S2())
     == Tagclass.DefaultValuedExpressions.S2
   && TagFamily(Tclass.DefaultValuedExpressions.S2()) == tytagFamily$S2;
}

const unique Tagclass.DefaultValuedExpressions.S2: TyTag;

// Box/unbox axiom for Tclass.DefaultValuedExpressions.S2
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.S2()) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.S2())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.DefaultValuedExpressions.S2()));

function Tclass.DefaultValuedExpressions.ST0(Ty, Ty) : Ty;

const unique Tagclass.DefaultValuedExpressions.ST0: TyTag;

// Tclass.DefaultValuedExpressions.ST0 Tag
axiom (forall DefaultValuedExpressions.ST0$T: Ty, DefaultValuedExpressions.ST0$U: Ty :: 
  { Tclass.DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T, DefaultValuedExpressions.ST0$U) } 
  Tag(Tclass.DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T, DefaultValuedExpressions.ST0$U))
       == Tagclass.DefaultValuedExpressions.ST0
     && TagFamily(Tclass.DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T, DefaultValuedExpressions.ST0$U))
       == tytagFamily$ST0);

function Tclass.DefaultValuedExpressions.ST0_0(Ty) : Ty;

// Tclass.DefaultValuedExpressions.ST0 injectivity 0
axiom (forall DefaultValuedExpressions.ST0$T: Ty, DefaultValuedExpressions.ST0$U: Ty :: 
  { Tclass.DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T, DefaultValuedExpressions.ST0$U) } 
  Tclass.DefaultValuedExpressions.ST0_0(Tclass.DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T, DefaultValuedExpressions.ST0$U))
     == DefaultValuedExpressions.ST0$T);

function Tclass.DefaultValuedExpressions.ST0_1(Ty) : Ty;

// Tclass.DefaultValuedExpressions.ST0 injectivity 1
axiom (forall DefaultValuedExpressions.ST0$T: Ty, DefaultValuedExpressions.ST0$U: Ty :: 
  { Tclass.DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T, DefaultValuedExpressions.ST0$U) } 
  Tclass.DefaultValuedExpressions.ST0_1(Tclass.DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T, DefaultValuedExpressions.ST0$U))
     == DefaultValuedExpressions.ST0$U);

// Box/unbox axiom for Tclass.DefaultValuedExpressions.ST0
axiom (forall DefaultValuedExpressions.ST0$T: Ty, DefaultValuedExpressions.ST0$U: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T, DefaultValuedExpressions.ST0$U)) } 
  $IsBox(bx, 
      Tclass.DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T, DefaultValuedExpressions.ST0$U))
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, 
        Tclass.DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T, DefaultValuedExpressions.ST0$U)));

function Tclass.DefaultValuedExpressions.ST2(Ty, Ty) : Ty;

const unique Tagclass.DefaultValuedExpressions.ST2: TyTag;

// Tclass.DefaultValuedExpressions.ST2 Tag
axiom (forall DefaultValuedExpressions.ST2$T: Ty, DefaultValuedExpressions.ST2$U: Ty :: 
  { Tclass.DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T, DefaultValuedExpressions.ST2$U) } 
  Tag(Tclass.DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T, DefaultValuedExpressions.ST2$U))
       == Tagclass.DefaultValuedExpressions.ST2
     && TagFamily(Tclass.DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T, DefaultValuedExpressions.ST2$U))
       == tytagFamily$ST2);

function Tclass.DefaultValuedExpressions.ST2_0(Ty) : Ty;

// Tclass.DefaultValuedExpressions.ST2 injectivity 0
axiom (forall DefaultValuedExpressions.ST2$T: Ty, DefaultValuedExpressions.ST2$U: Ty :: 
  { Tclass.DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T, DefaultValuedExpressions.ST2$U) } 
  Tclass.DefaultValuedExpressions.ST2_0(Tclass.DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T, DefaultValuedExpressions.ST2$U))
     == DefaultValuedExpressions.ST2$T);

function Tclass.DefaultValuedExpressions.ST2_1(Ty) : Ty;

// Tclass.DefaultValuedExpressions.ST2 injectivity 1
axiom (forall DefaultValuedExpressions.ST2$T: Ty, DefaultValuedExpressions.ST2$U: Ty :: 
  { Tclass.DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T, DefaultValuedExpressions.ST2$U) } 
  Tclass.DefaultValuedExpressions.ST2_1(Tclass.DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T, DefaultValuedExpressions.ST2$U))
     == DefaultValuedExpressions.ST2$U);

// Box/unbox axiom for Tclass.DefaultValuedExpressions.ST2
axiom (forall DefaultValuedExpressions.ST2$T: Ty, DefaultValuedExpressions.ST2$U: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T, DefaultValuedExpressions.ST2$U)) } 
  $IsBox(bx, 
      Tclass.DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T, DefaultValuedExpressions.ST2$U))
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, 
        Tclass.DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T, DefaultValuedExpressions.ST2$U)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.DoIt (correctness)"} Impl$$DefaultValuedExpressions.__default.DoIt(DefaultValuedExpressions._default.DoIt$X: Ty) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var r#0: real;
  var b#0: bool;
  var ch#0: char where $Is(ch#0, TChar);
  var ord#0: Box;
  var x##0: int;
  var suffix##0: Seq;
  var x##1: real;
  var suffix##1: Seq;
  var x##2: bool;
  var suffix##2: Seq;
  var x##3: char;
  var suffix##3: Seq;
  var b0#0: Bv0 where 0 == b0#0;
  var b1#0: bv1;
  var b8#0: bv8;
  var b16#0: bv16;
  var b32#0: bv32;
  var b53#0: bv53;
  var b64#0: bv64;
  var b100#0: bv100;
  var x##4: Bv0;
  var suffix##4: Seq;
  var x##5: bv1;
  var suffix##5: Seq;
  var x##6: bv8;
  var suffix##6: Seq;
  var x##7: bv16;
  var suffix##7: Seq;
  var x##8: bv32;
  var suffix##8: Seq;
  var x##9: bv53;
  var suffix##9: Seq;
  var x##10: bv64;
  var suffix##10: Seq;
  var x##11: bv100;
  var suffix##11: Seq;
  var nt0#0: int where Lit(true);
  var nt1#0: int where Lit(true);
  var nt2#0: int where Mod(nt2#0, LitInt(2)) == LitInt(0);
  var nt3#0: int where LitInt(0) <= nt3#0 && nt3#0 < 500;
  var nt4#0: int where Mod(nt4#0, LitInt(2)) == LitInt(1);
  var nt5#0: int
     where LitInt(0) <= nt5#0 && nt5#0 < 500 && Mod(nt5#0, LitInt(2)) == LitInt(1);
  var x##12: int;
  var suffix##12: Seq;
  var x##13: int;
  var suffix##13: Seq;
  var x##14: int;
  var suffix##14: Seq;
  var x##15: int;
  var suffix##15: Seq;
  var nr0#0: real where LitReal(0e0) <= nr0#0 && nr0#0 <= LitReal(1e2);
  var nr1#0: real where LitReal(32e0) <= nr1#0 && nr1#0 <= LitReal(212e0);
  var x##16: real;
  var suffix##16: Seq;
  var arr#0: ref
     where $Is(arr#0, Tclass._System.array?(TInt))
       && $IsAlloc(arr#0, Tclass._System.array?(TInt), $Heap);
  var mat#0: ref
     where $Is(mat#0, Tclass._System.array3?(TInt))
       && $IsAlloc(mat#0, Tclass._System.array3?(TInt), $Heap);
  var c#0: ref
     where $Is(c#0, Tclass.DefaultValuedExpressions.Class?(TInt, TInt))
       && $IsAlloc(c#0, Tclass.DefaultValuedExpressions.Class?(TInt, TInt), $Heap);
  var t#0: ref
     where $Is(t#0, Tclass.DefaultValuedExpressions.Trait?(TInt, TInt))
       && $IsAlloc(t#0, Tclass.DefaultValuedExpressions.Trait?(TInt, TInt), $Heap);
  var x##17: ref;
  var suffix##17: Seq;
  var x##18: ref;
  var suffix##18: Seq;
  var x##19: ref;
  var suffix##19: Seq;
  var x##20: ref;
  var suffix##20: Seq;
  var Arr#0: ref
     where $Is(Arr#0, Tclass._System.array(TInt))
       && $IsAlloc(Arr#0, Tclass._System.array(TInt), $Heap);
  var Mat#0: ref
     where $Is(Mat#0, Tclass._System.array3(TInt))
       && $IsAlloc(Mat#0, Tclass._System.array3(TInt), $Heap);
  var x#0: Box
     where $IsBox(x#0, DefaultValuedExpressions._default.DoIt$X)
       && $IsAllocBox(x#0, DefaultValuedExpressions._default.DoIt$X, $Heap);
  var x##21: Box;
  var suffix##21: Seq;
  var st0#0: Set where $Is(st0#0, TSet(TInt)) && $IsAlloc(st0#0, TSet(TInt), $Heap);
  var st1#0: ISet where $Is(st1#0, TISet(TInt)) && $IsAlloc(st1#0, TISet(TInt), $Heap);
  var ms#0: MultiSet
     where $Is(ms#0, TMultiSet(TInt)) && $IsAlloc(ms#0, TMultiSet(TInt), $Heap);
  var sq#0: Seq where $Is(sq#0, TSeq(TInt)) && $IsAlloc(sq#0, TSeq(TInt), $Heap);
  var m0#0: Map
     where $Is(m0#0, TMap(TInt, TInt)) && $IsAlloc(m0#0, TMap(TInt, TInt), $Heap);
  var m1#0: IMap
     where $Is(m1#0, TIMap(TInt, TInt)) && $IsAlloc(m1#0, TIMap(TInt, TInt), $Heap);
  var x##22: Set;
  var suffix##22: Seq;
  var x##23: ISet;
  var suffix##23: Seq;
  var x##24: MultiSet;
  var suffix##24: Seq;
  var x##25: Seq;
  var suffix##25: Seq;
  var x##26: Map;
  var suffix##26: Seq;
  var x##27: IMap;
  var suffix##27: Seq;
  var stream#0: DatatypeType
     where $Is(stream#0, Tclass.DefaultValuedExpressions.Stream(TInt))
       && $IsAlloc(stream#0, Tclass.DefaultValuedExpressions.Stream(TInt), $Heap);
  var pstream#0: DatatypeType
     where $Is(pstream#0, Tclass.DefaultValuedExpressions.PossiblyFiniteStream(TInt))
       && $IsAlloc(pstream#0, Tclass.DefaultValuedExpressions.PossiblyFiniteStream(TInt), $Heap);
  var color#0: DatatypeType
     where $Is(color#0, Tclass.DefaultValuedExpressions.Color())
       && $IsAlloc(color#0, Tclass.DefaultValuedExpressions.Color(), $Heap);
  var pc#0: DatatypeType
     where $Is(pc#0, 
        Tclass.DefaultValuedExpressions.PossibleCell(Tclass.DefaultValuedExpressions.Class(TInt, TInt), TInt))
       && $IsAlloc(pc#0, 
        Tclass.DefaultValuedExpressions.PossibleCell(Tclass.DefaultValuedExpressions.Class(TInt, TInt), TInt), 
        $Heap);
  var cell#0: DatatypeType
     where $Is(cell#0, 
        Tclass.DefaultValuedExpressions.Cell(TInt, Tclass.DefaultValuedExpressions.Class(TInt, TInt)))
       && $IsAlloc(cell#0, 
        Tclass.DefaultValuedExpressions.Cell(TInt, Tclass.DefaultValuedExpressions.Class(TInt, TInt)), 
        $Heap);
  var x##28: DatatypeType;
  var suffix##28: Seq;
  var x##29: DatatypeType;
  var suffix##29: Seq;
  var x##30: DatatypeType;
  var suffix##30: Seq;
  var tup0#0: DatatypeType
     where $Is(tup0#0, Tclass._System.Tuple0())
       && $IsAlloc(tup0#0, Tclass._System.Tuple0(), $Heap);
  var tup2#0: DatatypeType
     where $Is(tup2#0, Tclass._System.Tuple2(TInt, TReal))
       && $IsAlloc(tup2#0, Tclass._System.Tuple2(TInt, TReal), $Heap);
  var tup3#0: DatatypeType
     where $Is(tup3#0, 
        Tclass._System.Tuple3(Tclass.DefaultValuedExpressions.Color(), 
          Tclass._System.Tuple2(TInt, TReal), 
          Tclass._System.Tuple0()))
       && $IsAlloc(tup3#0, 
        Tclass._System.Tuple3(Tclass.DefaultValuedExpressions.Color(), 
          Tclass._System.Tuple2(TInt, TReal), 
          Tclass._System.Tuple0()), 
        $Heap);
  var x##31: DatatypeType;
  var suffix##31: Seq;
  var x##32: DatatypeType;
  var suffix##32: Seq;
  var x##33: DatatypeType;
  var suffix##33: Seq;
  var f0#0: HandleType
     where $Is(f0#0, Tclass._System.___hFunc1(TInt, TInt))
       && $IsAlloc(f0#0, Tclass._System.___hFunc1(TInt, TInt), $Heap);
  var f1#0: HandleType
     where $Is(f1#0, Tclass._System.___hPartialFunc1(TInt, TInt))
       && $IsAlloc(f1#0, Tclass._System.___hPartialFunc1(TInt, TInt), $Heap);
  var x##34: HandleType;
  var suffix##34: Seq;
  var x##35: HandleType;
  var suffix##35: Seq;
  var s0#0: int where Lit(true);
  var s1#0: int where LitInt(0) <= s1#0 && s1#0 < 10;
  var s2#0: int where LitInt(0) <= s2#0 && s2#0 < 10;
  var s3#0: int where LitInt(2) <= s3#0 && s3#0 < 10;
  var s4#0: int where LitInt(2) <= s4#0 && s4#0 < 10;
  var s5#0: int
     where LitInt(2) <= s5#0 && s5#0 < 10 && Mod(s5#0, LitInt(5)) == LitInt(0);
  var x##36: int;
  var suffix##36: Seq;
  var x##37: int;
  var suffix##37: Seq;
  var x##38: int;
  var suffix##38: Seq;
  var t0#0: int where Mod(t0#0, LitInt(5)) == LitInt(0);
  var t1#0: int where Mod(t1#0, LitInt(5)) == LitInt(1);
  var t2#0: int
     where (if (var m#0 := Lit(Map#Empty(): Map); Map#Equal(m#0, Map#Empty(): Map))
         then 0
         else 8)
       <= t2#0;
  var t3#0: int
     where (if (var m#1 := Lit(Map#Empty(): Map); Map#Equal(m#1, Map#Empty(): Map))
         then 8
         else 0)
       <= t3#0;
  var x##39: int;
  var suffix##39: Seq;
  var x##40: int;
  var suffix##40: Seq;

    // AddMethodImpl: DoIt, Impl$$DefaultValuedExpressions.__default.DoIt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc i#0, r#0, b#0, ch#0 /* where $Is(ch#0, TChar) */, ord#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(362,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := i#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##0 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id339"} Call$$DefaultValuedExpressions.__default.Print(TInt, $Box(x##0), suffix##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(363,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := r#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##1 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id340"} Call$$DefaultValuedExpressions.__default.Print(TReal, $Box(x##1), suffix##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(364,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##2 := b#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##2 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id341"} Call$$DefaultValuedExpressions.__default.Print(TBool, $Box(x##2), suffix##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(365,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##3 := ch#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##3 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id342"} Call$$DefaultValuedExpressions.__default.Print(TChar, $Box(x##3), suffix##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(366,5)
    assume true;
    assume true;
    havoc b0#0 /* where 0 == b0#0 */, b1#0, b8#0, b16#0, b32#0, b53#0, b64#0, b100#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(370,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##4 := b0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##4 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id343"} Call$$DefaultValuedExpressions.__default.Print(TBitvector(0), $Box(x##4), suffix##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(371,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##5 := b1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##5 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id344"} Call$$DefaultValuedExpressions.__default.Print(TBitvector(1), $Box(x##5), suffix##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(372,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##6 := b8#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##6 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id345"} Call$$DefaultValuedExpressions.__default.Print(TBitvector(8), $Box(x##6), suffix##6);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(373,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##7 := b16#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##7 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id346"} Call$$DefaultValuedExpressions.__default.Print(TBitvector(16), $Box(x##7), suffix##7);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(374,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##8 := b32#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##8 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id347"} Call$$DefaultValuedExpressions.__default.Print(TBitvector(32), $Box(x##8), suffix##8);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(375,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##9 := b53#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##9 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id348"} Call$$DefaultValuedExpressions.__default.Print(TBitvector(53), $Box(x##9), suffix##9);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(376,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##10 := b64#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##10 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id349"} Call$$DefaultValuedExpressions.__default.Print(TBitvector(64), $Box(x##10), suffix##10);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(377,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##11 := b100#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##11 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id350"} Call$$DefaultValuedExpressions.__default.Print(TBitvector(100), $Box(x##11), suffix##11);
    // TrCallStmt: After ProcessCallStmt
    havoc nt0#0 /* where Lit(true) */, nt1#0 /* where Lit(true) */, nt2#0 /* where Mod(nt2#0, LitInt(2)) == LitInt(0) */, nt3#0 /* where LitInt(0) <= nt3#0 && nt3#0 < 500 */, nt4#0 /* where Mod(nt4#0, LitInt(2)) == LitInt(1) */, nt5#0 /* where LitInt(0) <= nt5#0 && nt5#0 < 500 && Mod(nt5#0, LitInt(2)) == LitInt(1) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(381,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##12 := nt0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##12 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id351"} Call$$DefaultValuedExpressions.__default.Print(Tclass.DefaultValuedExpressions.NT0(), $Box(x##12), suffix##12);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(382,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##13 := nt1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##13 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id352"} Call$$DefaultValuedExpressions.__default.Print(Tclass.DefaultValuedExpressions.NT1(), $Box(x##13), suffix##13);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(383,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##14 := nt2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##14 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id353"} Call$$DefaultValuedExpressions.__default.Print(Tclass.DefaultValuedExpressions.NT2(), $Box(x##14), suffix##14);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(384,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##15 := nt3#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##15 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id354"} Call$$DefaultValuedExpressions.__default.Print(Tclass.DefaultValuedExpressions.NT3(), $Box(x##15), suffix##15);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(385,5)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(386,5)
    assume true;
    assume true;
    havoc nr0#0 /* where LitReal(0e0) <= nr0#0 && nr0#0 <= LitReal(1e2) */, nr1#0 /* where LitReal(32e0) <= nr1#0 && nr1#0 <= LitReal(212e0) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(389,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##16 := nr0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##16 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id355"} Call$$DefaultValuedExpressions.__default.Print(Tclass.DefaultValuedExpressions.NR0(), $Box(x##16), suffix##16);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(390,5)
    assume true;
    assume true;
    havoc arr#0 /* where $Is(arr#0, Tclass._System.array?(TInt))
       && $IsAlloc(arr#0, Tclass._System.array?(TInt), $Heap) */, mat#0 /* where $Is(mat#0, Tclass._System.array3?(TInt))
       && $IsAlloc(mat#0, Tclass._System.array3?(TInt), $Heap) */, c#0 /* where $Is(c#0, Tclass.DefaultValuedExpressions.Class?(TInt, TInt))
       && $IsAlloc(c#0, Tclass.DefaultValuedExpressions.Class?(TInt, TInt), $Heap) */, t#0 /* where $Is(t#0, Tclass.DefaultValuedExpressions.Trait?(TInt, TInt))
       && $IsAlloc(t#0, Tclass.DefaultValuedExpressions.Trait?(TInt, TInt), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(394,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##17 := arr#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##17 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id356"} Call$$DefaultValuedExpressions.__default.Print(Tclass._System.array?(TInt), $Box(x##17), suffix##17);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(395,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##18 := mat#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##18 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id357"} Call$$DefaultValuedExpressions.__default.Print(Tclass._System.array3?(TInt), $Box(x##18), suffix##18);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(396,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##19 := c#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##19 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id358"} Call$$DefaultValuedExpressions.__default.Print(Tclass.DefaultValuedExpressions.Class?(TInt, TInt), $Box(x##19), suffix##19);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(397,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##20 := t#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##20 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id359"} Call$$DefaultValuedExpressions.__default.Print(Tclass.DefaultValuedExpressions.Trait?(TInt, TInt), $Box(x##20), suffix##20);
    // TrCallStmt: After ProcessCallStmt
    havoc Arr#0 /* where $Is(Arr#0, Tclass._System.array(TInt))
       && $IsAlloc(Arr#0, Tclass._System.array(TInt), $Heap) */, Mat#0 /* where $Is(Mat#0, Tclass._System.array3(TInt))
       && $IsAlloc(Mat#0, Tclass._System.array3(TInt), $Heap) */;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(401,5)
    assert {:id "id360"} {:subsumption 0} Arr#0 != null;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(402,5)
    assert {:id "id361"} {:subsumption 0} Mat#0 != null;
    assume true;
    assume true;
    assert {:id "id362"} {:subsumption 0} Mat#0 != null;
    assume true;
    assume true;
    assert {:id "id363"} {:subsumption 0} Mat#0 != null;
    assume true;
    assume true;
    havoc x#0 /* where $IsBox(x#0, DefaultValuedExpressions._default.DoIt$X)
       && $IsAllocBox(x#0, DefaultValuedExpressions._default.DoIt$X, $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(406,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##21 := x#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##21 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id364"} Call$$DefaultValuedExpressions.__default.Print(DefaultValuedExpressions._default.DoIt$X, x##21, suffix##21);
    // TrCallStmt: After ProcessCallStmt
    havoc st0#0 /* where $Is(st0#0, TSet(TInt)) && $IsAlloc(st0#0, TSet(TInt), $Heap) */, st1#0 /* where $Is(st1#0, TISet(TInt)) && $IsAlloc(st1#0, TISet(TInt), $Heap) */, ms#0 /* where $Is(ms#0, TMultiSet(TInt)) && $IsAlloc(ms#0, TMultiSet(TInt), $Heap) */, sq#0 /* where $Is(sq#0, TSeq(TInt)) && $IsAlloc(sq#0, TSeq(TInt), $Heap) */, m0#0 /* where $Is(m0#0, TMap(TInt, TInt)) && $IsAlloc(m0#0, TMap(TInt, TInt), $Heap) */, m1#0 /* where $Is(m1#0, TIMap(TInt, TInt)) && $IsAlloc(m1#0, TIMap(TInt, TInt), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(410,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##22 := st0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##22 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id365"} Call$$DefaultValuedExpressions.__default.Print(TSet(TInt), $Box(x##22), suffix##22);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(411,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##23 := st1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##23 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id366"} Call$$DefaultValuedExpressions.__default.Print(TISet(TInt), $Box(x##23), suffix##23);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(412,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##24 := ms#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##24 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id367"} Call$$DefaultValuedExpressions.__default.Print(TMultiSet(TInt), $Box(x##24), suffix##24);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(413,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##25 := sq#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##25 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id368"} Call$$DefaultValuedExpressions.__default.Print(TSeq(TInt), $Box(x##25), suffix##25);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(414,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##26 := m0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##26 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id369"} Call$$DefaultValuedExpressions.__default.Print(TMap(TInt, TInt), $Box(x##26), suffix##26);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(415,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##27 := m1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##27 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id370"} Call$$DefaultValuedExpressions.__default.Print(TIMap(TInt, TInt), $Box(x##27), suffix##27);
    // TrCallStmt: After ProcessCallStmt
    havoc stream#0 /* where $Is(stream#0, Tclass.DefaultValuedExpressions.Stream(TInt))
       && $IsAlloc(stream#0, Tclass.DefaultValuedExpressions.Stream(TInt), $Heap) */, pstream#0 /* where $Is(pstream#0, Tclass.DefaultValuedExpressions.PossiblyFiniteStream(TInt))
       && $IsAlloc(pstream#0, Tclass.DefaultValuedExpressions.PossiblyFiniteStream(TInt), $Heap) */;
    havoc color#0 /* where $Is(color#0, Tclass.DefaultValuedExpressions.Color())
       && $IsAlloc(color#0, Tclass.DefaultValuedExpressions.Color(), $Heap) */, pc#0 /* where $Is(pc#0, 
        Tclass.DefaultValuedExpressions.PossibleCell(Tclass.DefaultValuedExpressions.Class(TInt, TInt), TInt))
       && $IsAlloc(pc#0, 
        Tclass.DefaultValuedExpressions.PossibleCell(Tclass.DefaultValuedExpressions.Class(TInt, TInt), TInt), 
        $Heap) */, cell#0 /* where $Is(cell#0, 
        Tclass.DefaultValuedExpressions.Cell(TInt, Tclass.DefaultValuedExpressions.Class(TInt, TInt)))
       && $IsAlloc(cell#0, 
        Tclass.DefaultValuedExpressions.Cell(TInt, Tclass.DefaultValuedExpressions.Class(TInt, TInt)), 
        $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(421,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##28 := color#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##28 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id371"} Call$$DefaultValuedExpressions.__default.Print(Tclass.DefaultValuedExpressions.Color(), $Box(x##28), suffix##28);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(422,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##29 := pc#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##29 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id372"} Call$$DefaultValuedExpressions.__default.Print(Tclass.DefaultValuedExpressions.PossibleCell(Tclass.DefaultValuedExpressions.Class(TInt, TInt), TInt), $Box(x##29), suffix##29);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(423,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##30 := cell#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##30 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id373"} Call$$DefaultValuedExpressions.__default.Print(Tclass.DefaultValuedExpressions.Cell(TInt, Tclass.DefaultValuedExpressions.Class(TInt, TInt)), $Box(x##30), suffix##30);
    // TrCallStmt: After ProcessCallStmt
    havoc tup0#0 /* where $Is(tup0#0, Tclass._System.Tuple0())
       && $IsAlloc(tup0#0, Tclass._System.Tuple0(), $Heap) */, tup2#0 /* where $Is(tup2#0, Tclass._System.Tuple2(TInt, TReal))
       && $IsAlloc(tup2#0, Tclass._System.Tuple2(TInt, TReal), $Heap) */, tup3#0 /* where $Is(tup3#0, 
        Tclass._System.Tuple3(Tclass.DefaultValuedExpressions.Color(), 
          Tclass._System.Tuple2(TInt, TReal), 
          Tclass._System.Tuple0()))
       && $IsAlloc(tup3#0, 
        Tclass._System.Tuple3(Tclass.DefaultValuedExpressions.Color(), 
          Tclass._System.Tuple2(TInt, TReal), 
          Tclass._System.Tuple0()), 
        $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(426,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##31 := tup0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##31 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id374"} Call$$DefaultValuedExpressions.__default.Print(Tclass._System.Tuple0(), $Box(x##31), suffix##31);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(427,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##32 := tup2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##32 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id375"} Call$$DefaultValuedExpressions.__default.Print(Tclass._System.Tuple2(TInt, TReal), $Box(x##32), suffix##32);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(428,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##33 := tup3#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##33 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id376"} Call$$DefaultValuedExpressions.__default.Print(Tclass._System.Tuple3(Tclass.DefaultValuedExpressions.Color(), 
      Tclass._System.Tuple2(TInt, TReal), 
      Tclass._System.Tuple0()), $Box(x##33), suffix##33);
    // TrCallStmt: After ProcessCallStmt
    havoc f0#0 /* where $Is(f0#0, Tclass._System.___hFunc1(TInt, TInt))
       && $IsAlloc(f0#0, Tclass._System.___hFunc1(TInt, TInt), $Heap) */, f1#0 /* where $Is(f1#0, Tclass._System.___hPartialFunc1(TInt, TInt))
       && $IsAlloc(f1#0, Tclass._System.___hPartialFunc1(TInt, TInt), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(432,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##34 := f0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##34 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id377"} Call$$DefaultValuedExpressions.__default.Print(Tclass._System.___hFunc1(TInt, TInt), $Box(x##34), suffix##34);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(433,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##35 := f1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##35 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id378"} Call$$DefaultValuedExpressions.__default.Print(Tclass._System.___hPartialFunc1(TInt, TInt), $Box(x##35), suffix##35);
    // TrCallStmt: After ProcessCallStmt
    havoc s0#0 /* where Lit(true) */, s1#0 /* where LitInt(0) <= s1#0 && s1#0 < 10 */, s2#0 /* where LitInt(0) <= s2#0 && s2#0 < 10 */, s3#0 /* where LitInt(2) <= s3#0 && s3#0 < 10 */, s4#0 /* where LitInt(2) <= s4#0 && s4#0 < 10 */, s5#0 /* where LitInt(2) <= s5#0 && s5#0 < 10 && Mod(s5#0, LitInt(5)) == LitInt(0) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(437,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##36 := s0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##36 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id379"} Call$$DefaultValuedExpressions.__default.Print(Tclass.DefaultValuedExpressions.S0(), $Box(x##36), suffix##36);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(438,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##37 := s1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##37 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id380"} Call$$DefaultValuedExpressions.__default.Print(Tclass.DefaultValuedExpressions.S1(), $Box(x##37), suffix##37);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(439,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##38 := s2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##38 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id381"} Call$$DefaultValuedExpressions.__default.Print(Tclass.DefaultValuedExpressions.S2(), $Box(x##38), suffix##38);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(440,5)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(441,5)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(442,5)
    assume true;
    assume true;
    havoc t0#0 /* where Mod(t0#0, LitInt(5)) == LitInt(0) */, t1#0 /* where Mod(t1#0, LitInt(5)) == LitInt(1) */, t2#0 /* where (if (var m#0 := Lit(Map#Empty(): Map); Map#Equal(m#0, Map#Empty(): Map))
         then 0
         else 8)
       <= t2#0 */, t3#0 /* where (if (var m#1 := Lit(Map#Empty(): Map); Map#Equal(m#1, Map#Empty(): Map))
         then 8
         else 0)
       <= t3#0 */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(445,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##39 := t0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##39 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id382"} Call$$DefaultValuedExpressions.__default.Print(Tclass.DefaultValuedExpressions.ST0(TInt, TInt), $Box(x##39), suffix##39);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(446,5)
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(447,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##40 := t2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##40 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id383"} Call$$DefaultValuedExpressions.__default.Print(Tclass.DefaultValuedExpressions.ST2(TInt, TInt), $Box(x##40), suffix##40);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(448,5)
    assume true;
    assume true;
}



procedure {:verboseName "DefaultValuedExpressions.NT0 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.NT0();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for newtype DefaultValuedExpressions.NT0
axiom (forall c0#0: int :: 
  { $Is(c0#0, Tclass.DefaultValuedExpressions.NT0()) } 
  $Is(c0#0, Tclass.DefaultValuedExpressions.NT0()) <==> Lit(true));

// $IsAlloc axiom for newtype DefaultValuedExpressions.NT0
axiom (forall c1#0: int, $h: Heap :: 
  { $IsAlloc(c1#0, Tclass.DefaultValuedExpressions.NT0(), $h) } 
  $IsAlloc(c1#0, Tclass.DefaultValuedExpressions.NT0(), $h));

const unique class.DefaultValuedExpressions.NT0: ClassName;

procedure {:verboseName "DefaultValuedExpressions.NT1 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.NT1(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.NT1 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.NT1(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype NT1
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assume {:id "id384"} true;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id385"} Lit(true);
        assume false;
    }
}



// $Is axiom for newtype DefaultValuedExpressions.NT1
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.DefaultValuedExpressions.NT1()) } 
  $Is(x#0, Tclass.DefaultValuedExpressions.NT1()) <==> Lit(true));

// $IsAlloc axiom for newtype DefaultValuedExpressions.NT1
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.DefaultValuedExpressions.NT1(), $h) } 
  $IsAlloc(x#0, Tclass.DefaultValuedExpressions.NT1(), $h));

const unique class.DefaultValuedExpressions.NT1: ClassName;

procedure {:verboseName "DefaultValuedExpressions.NT2 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.NT2(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.NT2 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.NT2(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype NT2
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assert {:id "id386"} LitInt(2) != 0;
        assume {:id "id387"} Mod(x#0, LitInt(2)) == LitInt(0);
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id388"} LitInt(Mod(0, LitInt(2))) == LitInt(0);
        assume false;
    }
}



// $Is axiom for newtype DefaultValuedExpressions.NT2
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.DefaultValuedExpressions.NT2()) } 
  $Is(x#0, Tclass.DefaultValuedExpressions.NT2())
     <==> Mod(x#0, LitInt(2)) == LitInt(0));

// $IsAlloc axiom for newtype DefaultValuedExpressions.NT2
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.DefaultValuedExpressions.NT2(), $h) } 
  $IsAlloc(x#0, Tclass.DefaultValuedExpressions.NT2(), $h));

const unique class.DefaultValuedExpressions.NT2: ClassName;

procedure {:verboseName "DefaultValuedExpressions.NT3 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.NT3(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.NT3 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.NT3(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype NT3
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id389"} LitInt(0) <= x#0 && x#0 < 500;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id390"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id391"} {:subsumption 0} Lit(0 < 500);
        assume false;
    }
}



// $Is axiom for newtype DefaultValuedExpressions.NT3
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.DefaultValuedExpressions.NT3()) } 
  $Is(x#0, Tclass.DefaultValuedExpressions.NT3())
     <==> LitInt(0) <= x#0 && x#0 < 500);

// $IsAlloc axiom for newtype DefaultValuedExpressions.NT3
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.DefaultValuedExpressions.NT3(), $h) } 
  $IsAlloc(x#0, Tclass.DefaultValuedExpressions.NT3(), $h));

const unique class.DefaultValuedExpressions.NT3: ClassName;

procedure {:verboseName "DefaultValuedExpressions.NT4 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.NT4(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.NT4 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.NT4(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype NT4
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assert {:id "id392"} LitInt(2) != 0;
        assume {:id "id393"} Mod(x#0, LitInt(2)) == LitInt(1);
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id394"} LitInt(Mod(1, LitInt(2))) == LitInt(1);
        assume false;
    }
}



function Tclass.DefaultValuedExpressions.NT4() : Ty
uses {
// Tclass.DefaultValuedExpressions.NT4 Tag
axiom Tag(Tclass.DefaultValuedExpressions.NT4())
     == Tagclass.DefaultValuedExpressions.NT4
   && TagFamily(Tclass.DefaultValuedExpressions.NT4()) == tytagFamily$NT4;
}

const unique Tagclass.DefaultValuedExpressions.NT4: TyTag;

// Box/unbox axiom for Tclass.DefaultValuedExpressions.NT4
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.NT4()) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.NT4())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.DefaultValuedExpressions.NT4()));

// $Is axiom for newtype DefaultValuedExpressions.NT4
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.DefaultValuedExpressions.NT4()) } 
  $Is(x#0, Tclass.DefaultValuedExpressions.NT4())
     <==> Mod(x#0, LitInt(2)) == LitInt(1));

// $IsAlloc axiom for newtype DefaultValuedExpressions.NT4
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.DefaultValuedExpressions.NT4(), $h) } 
  $IsAlloc(x#0, Tclass.DefaultValuedExpressions.NT4(), $h));

const unique class.DefaultValuedExpressions.NT4: ClassName;

procedure {:verboseName "DefaultValuedExpressions.NT5 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.NT5(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.NT5 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.NT5(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype NT5
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id395"} LitInt(0) <= x#0 && x#0 < 500;
        assert {:id "id396"} LitInt(2) != 0;
        assume {:id "id397"} Mod(x#0, LitInt(2)) == LitInt(1);
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id398"} {:subsumption 0} LitInt(0) <= LitInt(1);
        assert {:id "id399"} {:subsumption 0} Lit(1 < 500);
        assert {:id "id400"} {:subsumption 0} LitInt(Mod(1, LitInt(2))) == LitInt(1);
        assume false;
    }
}



function Tclass.DefaultValuedExpressions.NT5() : Ty
uses {
// Tclass.DefaultValuedExpressions.NT5 Tag
axiom Tag(Tclass.DefaultValuedExpressions.NT5())
     == Tagclass.DefaultValuedExpressions.NT5
   && TagFamily(Tclass.DefaultValuedExpressions.NT5()) == tytagFamily$NT5;
}

const unique Tagclass.DefaultValuedExpressions.NT5: TyTag;

// Box/unbox axiom for Tclass.DefaultValuedExpressions.NT5
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.NT5()) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.NT5())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.DefaultValuedExpressions.NT5()));

// $Is axiom for newtype DefaultValuedExpressions.NT5
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.DefaultValuedExpressions.NT5()) } 
  $Is(x#0, Tclass.DefaultValuedExpressions.NT5())
     <==> LitInt(0) <= x#0 && x#0 < 500 && Mod(x#0, LitInt(2)) == LitInt(1));

// $IsAlloc axiom for newtype DefaultValuedExpressions.NT5
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.DefaultValuedExpressions.NT5(), $h) } 
  $IsAlloc(x#0, Tclass.DefaultValuedExpressions.NT5(), $h));

const unique class.DefaultValuedExpressions.NT5: ClassName;

procedure {:verboseName "DefaultValuedExpressions.NR0 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.NR0(r#0: real);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.NR0 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.NR0(r#0: real)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype NR0
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitReal(0e0) <= r#0)
        {
        }

        assume {:id "id401"} LitReal(0e0) <= r#0 && r#0 <= LitReal(1e2);
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id402"} {:subsumption 0} LitReal(0e0) <= LitReal(0e0);
        assert {:id "id403"} {:subsumption 0} LitReal(0e0) <= LitReal(1e2);
        assume false;
    }
}



// $Is axiom for newtype DefaultValuedExpressions.NR0
axiom (forall r#0: real :: 
  { $Is(r#0, Tclass.DefaultValuedExpressions.NR0()) } 
  $Is(r#0, Tclass.DefaultValuedExpressions.NR0())
     <==> LitReal(0e0) <= r#0 && r#0 <= LitReal(1e2));

// $IsAlloc axiom for newtype DefaultValuedExpressions.NR0
axiom (forall r#0: real, $h: Heap :: 
  { $IsAlloc(r#0, Tclass.DefaultValuedExpressions.NR0(), $h) } 
  $IsAlloc(r#0, Tclass.DefaultValuedExpressions.NR0(), $h));

const unique class.DefaultValuedExpressions.NR0: ClassName;

procedure {:verboseName "DefaultValuedExpressions.NR1 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.NR1(r#0: real);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.NR1 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.NR1(r#0: real)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype NR1
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitReal(32e0) <= r#0)
        {
        }

        assume {:id "id404"} LitReal(32e0) <= r#0 && r#0 <= LitReal(212e0);
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id405"} {:subsumption 0} LitReal(32e0) <= LitReal(68e0);
        assert {:id "id406"} {:subsumption 0} LitReal(68e0) <= LitReal(212e0);
        assume false;
    }
}



function Tclass.DefaultValuedExpressions.NR1() : Ty
uses {
// Tclass.DefaultValuedExpressions.NR1 Tag
axiom Tag(Tclass.DefaultValuedExpressions.NR1())
     == Tagclass.DefaultValuedExpressions.NR1
   && TagFamily(Tclass.DefaultValuedExpressions.NR1()) == tytagFamily$NR1;
}

const unique Tagclass.DefaultValuedExpressions.NR1: TyTag;

// Box/unbox axiom for Tclass.DefaultValuedExpressions.NR1
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.NR1()) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.NR1())
     ==> $Box($Unbox(bx): real) == bx
       && $Is($Unbox(bx): real, Tclass.DefaultValuedExpressions.NR1()));

// $Is axiom for newtype DefaultValuedExpressions.NR1
axiom (forall r#0: real :: 
  { $Is(r#0, Tclass.DefaultValuedExpressions.NR1()) } 
  $Is(r#0, Tclass.DefaultValuedExpressions.NR1())
     <==> LitReal(32e0) <= r#0 && r#0 <= LitReal(212e0));

// $IsAlloc axiom for newtype DefaultValuedExpressions.NR1
axiom (forall r#0: real, $h: Heap :: 
  { $IsAlloc(r#0, Tclass.DefaultValuedExpressions.NR1(), $h) } 
  $IsAlloc(r#0, Tclass.DefaultValuedExpressions.NR1(), $h));

const unique class.DefaultValuedExpressions.NR1: ClassName;

const unique class.DefaultValuedExpressions.Class?: ClassName;

// $Is axiom for class Class
axiom (forall DefaultValuedExpressions.Class$T: Ty, 
    DefaultValuedExpressions.Class$U: Ty, 
    $o: ref :: 
  { $Is($o, 
      Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U)) } 
  $Is($o, 
      Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U))
     <==> $o == null
       || dtype($o)
         == Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U));

// $IsAlloc axiom for class Class
axiom (forall DefaultValuedExpressions.Class$T: Ty, 
    DefaultValuedExpressions.Class$U: Ty, 
    $o: ref, 
    $h: Heap :: 
  { $IsAlloc($o, 
      Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U), 
      $h) } 
  $IsAlloc($o, 
      Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U), 
      $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// $Is axiom for non-null type DefaultValuedExpressions.Class
axiom (forall DefaultValuedExpressions.Class$T: Ty, 
    DefaultValuedExpressions.Class$U: Ty, 
    c#0: ref :: 
  { $Is(c#0, 
      Tclass.DefaultValuedExpressions.Class(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U)) } 
    { $Is(c#0, 
      Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U)) } 
  $Is(c#0, 
      Tclass.DefaultValuedExpressions.Class(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U))
     <==> $Is(c#0, 
        Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U))
       && c#0 != null);

// $IsAlloc axiom for non-null type DefaultValuedExpressions.Class
axiom (forall DefaultValuedExpressions.Class$T: Ty, 
    DefaultValuedExpressions.Class$U: Ty, 
    c#0: ref, 
    $h: Heap :: 
  { $IsAlloc(c#0, 
      Tclass.DefaultValuedExpressions.Class(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U), 
      $h) } 
    { $IsAlloc(c#0, 
      Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U), 
      $h) } 
  $IsAlloc(c#0, 
      Tclass.DefaultValuedExpressions.Class(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U), 
      $h)
     <==> $IsAlloc(c#0, 
      Tclass.DefaultValuedExpressions.Class?(DefaultValuedExpressions.Class$T, DefaultValuedExpressions.Class$U), 
      $h));

const unique class.DefaultValuedExpressions.Trait?: ClassName;

// $Is axiom for class Trait
axiom (forall DefaultValuedExpressions.Trait$T: Ty, 
    DefaultValuedExpressions.Trait$U: Ty, 
    $o: ref :: 
  { $Is($o, 
      Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U)) } 
  $Is($o, 
      Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U))
     <==> $o == null
       || dtype($o)
         == Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U));

// $IsAlloc axiom for class Trait
axiom (forall DefaultValuedExpressions.Trait$T: Ty, 
    DefaultValuedExpressions.Trait$U: Ty, 
    $o: ref, 
    $h: Heap :: 
  { $IsAlloc($o, 
      Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U), 
      $h) } 
  $IsAlloc($o, 
      Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U), 
      $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.DefaultValuedExpressions.Trait(Ty, Ty) : Ty;

const unique Tagclass.DefaultValuedExpressions.Trait: TyTag;

// Tclass.DefaultValuedExpressions.Trait Tag
axiom (forall DefaultValuedExpressions.Trait$T: Ty, DefaultValuedExpressions.Trait$U: Ty :: 
  { Tclass.DefaultValuedExpressions.Trait(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U) } 
  Tag(Tclass.DefaultValuedExpressions.Trait(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U))
       == Tagclass.DefaultValuedExpressions.Trait
     && TagFamily(Tclass.DefaultValuedExpressions.Trait(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U))
       == tytagFamily$Trait);

function Tclass.DefaultValuedExpressions.Trait_0(Ty) : Ty;

// Tclass.DefaultValuedExpressions.Trait injectivity 0
axiom (forall DefaultValuedExpressions.Trait$T: Ty, DefaultValuedExpressions.Trait$U: Ty :: 
  { Tclass.DefaultValuedExpressions.Trait(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U) } 
  Tclass.DefaultValuedExpressions.Trait_0(Tclass.DefaultValuedExpressions.Trait(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U))
     == DefaultValuedExpressions.Trait$T);

function Tclass.DefaultValuedExpressions.Trait_1(Ty) : Ty;

// Tclass.DefaultValuedExpressions.Trait injectivity 1
axiom (forall DefaultValuedExpressions.Trait$T: Ty, DefaultValuedExpressions.Trait$U: Ty :: 
  { Tclass.DefaultValuedExpressions.Trait(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U) } 
  Tclass.DefaultValuedExpressions.Trait_1(Tclass.DefaultValuedExpressions.Trait(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U))
     == DefaultValuedExpressions.Trait$U);

// Box/unbox axiom for Tclass.DefaultValuedExpressions.Trait
axiom (forall DefaultValuedExpressions.Trait$T: Ty, 
    DefaultValuedExpressions.Trait$U: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass.DefaultValuedExpressions.Trait(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U)) } 
  $IsBox(bx, 
      Tclass.DefaultValuedExpressions.Trait(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.DefaultValuedExpressions.Trait(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U)));

// $Is axiom for non-null type DefaultValuedExpressions.Trait
axiom (forall DefaultValuedExpressions.Trait$T: Ty, 
    DefaultValuedExpressions.Trait$U: Ty, 
    c#0: ref :: 
  { $Is(c#0, 
      Tclass.DefaultValuedExpressions.Trait(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U)) } 
    { $Is(c#0, 
      Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U)) } 
  $Is(c#0, 
      Tclass.DefaultValuedExpressions.Trait(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U))
     <==> $Is(c#0, 
        Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U))
       && c#0 != null);

// $IsAlloc axiom for non-null type DefaultValuedExpressions.Trait
axiom (forall DefaultValuedExpressions.Trait$T: Ty, 
    DefaultValuedExpressions.Trait$U: Ty, 
    c#0: ref, 
    $h: Heap :: 
  { $IsAlloc(c#0, 
      Tclass.DefaultValuedExpressions.Trait(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U), 
      $h) } 
    { $IsAlloc(c#0, 
      Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U), 
      $h) } 
  $IsAlloc(c#0, 
      Tclass.DefaultValuedExpressions.Trait(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U), 
      $h)
     <==> $IsAlloc(c#0, 
      Tclass.DefaultValuedExpressions.Trait?(DefaultValuedExpressions.Trait$T, DefaultValuedExpressions.Trait$U), 
      $h));

// Constructor function declaration
function #DefaultValuedExpressions.Stream.More(Box, DatatypeType) : DatatypeType;

const unique ##DefaultValuedExpressions.Stream.More: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: DatatypeType :: 
  { #DefaultValuedExpressions.Stream.More(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#DefaultValuedExpressions.Stream.More(a#0#0#0, a#0#1#0))
     == ##DefaultValuedExpressions.Stream.More);
}

function DefaultValuedExpressions.Stream.More_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.Stream.More_q(d) } 
  DefaultValuedExpressions.Stream.More_q(d)
     <==> DatatypeCtorId(d) == ##DefaultValuedExpressions.Stream.More);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.Stream.More_q(d) } 
  DefaultValuedExpressions.Stream.More_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: DatatypeType :: 
      d == #DefaultValuedExpressions.Stream.More(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall DefaultValuedExpressions.Stream$T: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType :: 
  { $Is(#DefaultValuedExpressions.Stream.More(a#2#0#0, a#2#1#0), 
      Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T)) } 
  $Is(#DefaultValuedExpressions.Stream.More(a#2#0#0, a#2#1#0), 
      Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T))
     <==> $IsBox(a#2#0#0, DefaultValuedExpressions.Stream$T)
       && $Is(a#2#1#0, 
        Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T)));

// Constructor $IsAlloc
axiom (forall DefaultValuedExpressions.Stream$T: Ty, 
    a#2#0#0: Box, 
    a#2#1#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#DefaultValuedExpressions.Stream.More(a#2#0#0, a#2#1#0), 
      Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DefaultValuedExpressions.Stream.More(a#2#0#0, a#2#1#0), 
        Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T), 
        $h)
       <==> $IsAllocBox(a#2#0#0, DefaultValuedExpressions.Stream$T, $h)
         && $IsAlloc(a#2#1#0, 
          Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T), 
          $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DefaultValuedExpressions.Stream$T: Ty, $h: Heap :: 
  { $IsAllocBox(DefaultValuedExpressions.Stream._h0(d), DefaultValuedExpressions.Stream$T, $h) } 
  $IsGoodHeap($h)
       && 
      DefaultValuedExpressions.Stream.More_q(d)
       && $IsAlloc(d, Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T), $h)
     ==> $IsAllocBox(DefaultValuedExpressions.Stream._h0(d), DefaultValuedExpressions.Stream$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DefaultValuedExpressions.Stream$T: Ty, $h: Heap :: 
  { $IsAlloc(DefaultValuedExpressions.Stream._h1(d), 
      Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      DefaultValuedExpressions.Stream.More_q(d)
       && $IsAlloc(d, Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T), $h)
     ==> $IsAlloc(DefaultValuedExpressions.Stream._h1(d), 
      Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T), 
      $h));

function DefaultValuedExpressions.Stream._h0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#3#0#0: Box, a#3#1#0: DatatypeType :: 
  { #DefaultValuedExpressions.Stream.More(a#3#0#0, a#3#1#0) } 
  DefaultValuedExpressions.Stream._h0(#DefaultValuedExpressions.Stream.More(a#3#0#0, a#3#1#0))
     == a#3#0#0);

function DefaultValuedExpressions.Stream._h1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #DefaultValuedExpressions.Stream.More(a#4#0#0, a#4#1#0) } 
  DefaultValuedExpressions.Stream._h1(#DefaultValuedExpressions.Stream.More(a#4#0#0, a#4#1#0))
     == a#4#1#0);

// Depth-one case-split function
function $IsA#DefaultValuedExpressions.Stream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DefaultValuedExpressions.Stream(d) } 
  $IsA#DefaultValuedExpressions.Stream(d)
     ==> DefaultValuedExpressions.Stream.More_q(d));

// Questionmark data type disjunctivity
axiom (forall DefaultValuedExpressions.Stream$T: Ty, d: DatatypeType :: 
  { DefaultValuedExpressions.Stream.More_q(d), $Is(d, Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T)) } 
  $Is(d, Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T))
     ==> DefaultValuedExpressions.Stream.More_q(d));

function $Eq#DefaultValuedExpressions.Stream(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall DefaultValuedExpressions.Stream$T#l: Ty, 
    DefaultValuedExpressions.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Is(d0, Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l))
       && $Is(d1, Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#r))
     ==> ($Eq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
        DefaultValuedExpressions.Stream$T#r, 
        $LS(ly), 
        d0, 
        d1)
       <==> DefaultValuedExpressions.Stream.More_q(d0)
         && DefaultValuedExpressions.Stream.More_q(d1)
         && (DefaultValuedExpressions.Stream.More_q(d0)
             && DefaultValuedExpressions.Stream.More_q(d1)
           ==> DefaultValuedExpressions.Stream._h0(d0)
               == DefaultValuedExpressions.Stream._h0(d1)
             && $Eq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
              DefaultValuedExpressions.Stream$T#r, 
              ly, 
              DefaultValuedExpressions.Stream._h1(d0), 
              DefaultValuedExpressions.Stream._h1(d1)))));

// Unbump layer co-equality axiom
axiom (forall DefaultValuedExpressions.Stream$T#l: Ty, 
    DefaultValuedExpressions.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Eq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      $LS(ly), 
      d0, 
      d1)
     <==> $Eq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      ly, 
      d0, 
      d1));

// Equality for codatatypes
axiom (forall DefaultValuedExpressions.Stream$T#l: Ty, 
    DefaultValuedExpressions.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Eq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      $LS(ly), 
      d0, 
      d1)
     <==> d0 == d1);

function $PrefixEq#DefaultValuedExpressions.Stream(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall DefaultValuedExpressions.Stream$T#l: Ty, 
    DefaultValuedExpressions.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      k, 
      $LS(ly), 
      d0, 
      d1) } 
  $Is(d0, Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l))
       && $Is(d1, Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#r))
     ==> ($PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
        DefaultValuedExpressions.Stream$T#r, 
        k, 
        $LS(ly), 
        d0, 
        d1)
       <==> (0 < ORD#Offset(k)
           ==> DefaultValuedExpressions.Stream.More_q(d0)
             && DefaultValuedExpressions.Stream.More_q(d1)
             && (DefaultValuedExpressions.Stream.More_q(d0)
                 && DefaultValuedExpressions.Stream.More_q(d1)
               ==> DefaultValuedExpressions.Stream._h0(d0)
                   == DefaultValuedExpressions.Stream._h0(d1)
                 && $PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
                  DefaultValuedExpressions.Stream$T#r, 
                  ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  DefaultValuedExpressions.Stream._h1(d0), 
                  DefaultValuedExpressions.Stream._h1(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
            DefaultValuedExpressions.Stream$T#r, 
            ly, 
            d0, 
            d1))));

// Unbump layer co-equality axiom
axiom (forall DefaultValuedExpressions.Stream$T#l: Ty, 
    DefaultValuedExpressions.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      k, 
      $LS(ly), 
      d0, 
      d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
        DefaultValuedExpressions.Stream$T#r, 
        k, 
        $LS(ly), 
        d0, 
        d1)
       <==> $PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
        DefaultValuedExpressions.Stream$T#r, 
        k, 
        ly, 
        d0, 
        d1)));

// Coequality and prefix equality connection
axiom (forall DefaultValuedExpressions.Stream$T#l: Ty, 
    DefaultValuedExpressions.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Eq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      $LS(ly), 
      d0, 
      d1)
     <==> (forall k: Box :: 
      { $PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
          DefaultValuedExpressions.Stream$T#r, 
          k, 
          $LS(ly), 
          d0, 
          d1) } 
      $PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
        DefaultValuedExpressions.Stream$T#r, 
        k, 
        $LS(ly), 
        d0, 
        d1)));

// Coequality and prefix equality connection
axiom (forall DefaultValuedExpressions.Stream$T#l: Ty, 
    DefaultValuedExpressions.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      $LS(ly), 
      d0, 
      d1) } 
  (forall k: int :: 
      { $PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
          DefaultValuedExpressions.Stream$T#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1) } 
      0 <= k
         ==> $PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
          DefaultValuedExpressions.Stream$T#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1))
     ==> $Eq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      $LS(ly), 
      d0, 
      d1));

// Prefix equality consequence
axiom (forall DefaultValuedExpressions.Stream$T#l: Ty, 
    DefaultValuedExpressions.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      k, 
      $LS(ly), 
      d0, 
      d1), $PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      m, 
      $LS(ly), 
      d0, 
      d1) } 
  ORD#Less(k, m)
       && $PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
        DefaultValuedExpressions.Stream$T#r, 
        m, 
        $LS(ly), 
        d0, 
        d1)
     ==> $PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      k, 
      $LS(ly), 
      d0, 
      d1));

// Prefix equality shortcut
axiom (forall DefaultValuedExpressions.Stream$T#l: Ty, 
    DefaultValuedExpressions.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      k, 
      $LS(ly), 
      d0, 
      d1) } 
  d0 == d1
     ==> $PrefixEq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.Stream$T#l, 
      DefaultValuedExpressions.Stream$T#r, 
      k, 
      $LS(ly), 
      d0, 
      d1));

const unique class.DefaultValuedExpressions.Stream: ClassName;

// Constructor function declaration
function #DefaultValuedExpressions.EmptyOrInfinite.EmptyStream() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DefaultValuedExpressions.EmptyOrInfinite.EmptyStream())
   == ##DefaultValuedExpressions.EmptyOrInfinite.EmptyStream;
}

const unique ##DefaultValuedExpressions.EmptyOrInfinite.EmptyStream: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DefaultValuedExpressions.EmptyOrInfinite.EmptyStream())
   == ##DefaultValuedExpressions.EmptyOrInfinite.EmptyStream;
}

function DefaultValuedExpressions.EmptyOrInfinite.EmptyStream_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.EmptyOrInfinite.EmptyStream_q(d) } 
  DefaultValuedExpressions.EmptyOrInfinite.EmptyStream_q(d)
     <==> DatatypeCtorId(d) == ##DefaultValuedExpressions.EmptyOrInfinite.EmptyStream);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.EmptyOrInfinite.EmptyStream_q(d) } 
  DefaultValuedExpressions.EmptyOrInfinite.EmptyStream_q(d)
     ==> d == #DefaultValuedExpressions.EmptyOrInfinite.EmptyStream());

function Tclass.DefaultValuedExpressions.EmptyOrInfinite(Ty) : Ty;

const unique Tagclass.DefaultValuedExpressions.EmptyOrInfinite: TyTag;

// Tclass.DefaultValuedExpressions.EmptyOrInfinite Tag
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U: Ty :: 
  { Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U) } 
  Tag(Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U))
       == Tagclass.DefaultValuedExpressions.EmptyOrInfinite
     && TagFamily(Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U))
       == tytagFamily$EmptyOrInfinite);

function Tclass.DefaultValuedExpressions.EmptyOrInfinite_0(Ty) : Ty;

// Tclass.DefaultValuedExpressions.EmptyOrInfinite injectivity 0
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U: Ty :: 
  { Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U) } 
  Tclass.DefaultValuedExpressions.EmptyOrInfinite_0(Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U))
     == DefaultValuedExpressions.EmptyOrInfinite$U);

// Box/unbox axiom for Tclass.DefaultValuedExpressions.EmptyOrInfinite
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U)) } 
  $IsBox(bx, 
      Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U)));

// Constructor $Is
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U: Ty :: 
  { $Is(#DefaultValuedExpressions.EmptyOrInfinite.EmptyStream(), 
      Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U)) } 
  $Is(#DefaultValuedExpressions.EmptyOrInfinite.EmptyStream(), 
    Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U)));

// Constructor $IsAlloc
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U: Ty, $h: Heap :: 
  { $IsAlloc(#DefaultValuedExpressions.EmptyOrInfinite.EmptyStream(), 
      Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#DefaultValuedExpressions.EmptyOrInfinite.EmptyStream(), 
      Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U), 
      $h));

// Constructor function declaration
function #DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream(Box, DatatypeType) : DatatypeType;

const unique ##DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream: DtCtorId
uses {
// Constructor identifier
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream(a#8#0#0, a#8#1#0) } 
  DatatypeCtorId(#DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream(a#8#0#0, a#8#1#0))
     == ##DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream);
}

function DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d) } 
  DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d)
     <==> DatatypeCtorId(d) == ##DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d) } 
  DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d)
     ==> (exists a#9#0#0: Box, a#9#1#0: DatatypeType :: 
      d == #DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream(a#9#0#0, a#9#1#0)));

// Constructor $Is
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U: Ty, 
    a#10#0#0: Box, 
    a#10#1#0: DatatypeType :: 
  { $Is(#DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream(a#10#0#0, a#10#1#0), 
      Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U)) } 
  $Is(#DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream(a#10#0#0, a#10#1#0), 
      Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U))
     <==> $IsBox(a#10#0#0, DefaultValuedExpressions.EmptyOrInfinite$U)
       && $Is(a#10#1#0, 
        Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.EmptyOrInfinite$U)));

// Constructor $IsAlloc
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U: Ty, 
    a#10#0#0: Box, 
    a#10#1#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream(a#10#0#0, a#10#1#0), 
      Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream(a#10#0#0, a#10#1#0), 
        Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U), 
        $h)
       <==> $IsAllocBox(a#10#0#0, DefaultValuedExpressions.EmptyOrInfinite$U, $h)
         && $IsAlloc(a#10#1#0, 
          Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.EmptyOrInfinite$U), 
          $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DefaultValuedExpressions.EmptyOrInfinite$U: Ty, $h: Heap :: 
  { $IsAllocBox(DefaultValuedExpressions.EmptyOrInfinite._h2(d), 
      DefaultValuedExpressions.EmptyOrInfinite$U, 
      $h) } 
  $IsGoodHeap($h)
       && 
      DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d)
       && $IsAlloc(d, 
        Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U), 
        $h)
     ==> $IsAllocBox(DefaultValuedExpressions.EmptyOrInfinite._h2(d), 
      DefaultValuedExpressions.EmptyOrInfinite$U, 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DefaultValuedExpressions.EmptyOrInfinite$U: Ty, $h: Heap :: 
  { $IsAlloc(DefaultValuedExpressions.EmptyOrInfinite._h3(d), 
      Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.EmptyOrInfinite$U), 
      $h) } 
  $IsGoodHeap($h)
       && 
      DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d)
       && $IsAlloc(d, 
        Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U), 
        $h)
     ==> $IsAlloc(DefaultValuedExpressions.EmptyOrInfinite._h3(d), 
      Tclass.DefaultValuedExpressions.Stream(DefaultValuedExpressions.EmptyOrInfinite$U), 
      $h));

function DefaultValuedExpressions.EmptyOrInfinite._h2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream(a#11#0#0, a#11#1#0) } 
  DefaultValuedExpressions.EmptyOrInfinite._h2(#DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream(a#11#0#0, a#11#1#0))
     == a#11#0#0);

function DefaultValuedExpressions.EmptyOrInfinite._h3(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#12#0#0: Box, a#12#1#0: DatatypeType :: 
  { #DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream(a#12#0#0, a#12#1#0) } 
  DefaultValuedExpressions.EmptyOrInfinite._h3(#DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream(a#12#0#0, a#12#1#0))
     == a#12#1#0);

// Depth-one case-split function
function $IsA#DefaultValuedExpressions.EmptyOrInfinite(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DefaultValuedExpressions.EmptyOrInfinite(d) } 
  $IsA#DefaultValuedExpressions.EmptyOrInfinite(d)
     ==> DefaultValuedExpressions.EmptyOrInfinite.EmptyStream_q(d)
       || DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d));

// Questionmark data type disjunctivity
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U: Ty, d: DatatypeType :: 
  { DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d), $Is(d, 
      Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U)) } 
    { DefaultValuedExpressions.EmptyOrInfinite.EmptyStream_q(d), $Is(d, 
      Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U)) } 
  $Is(d, 
      Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U))
     ==> DefaultValuedExpressions.EmptyOrInfinite.EmptyStream_q(d)
       || DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d));

function $Eq#DefaultValuedExpressions.EmptyOrInfinite(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U#l: Ty, 
    DefaultValuedExpressions.EmptyOrInfinite$U#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Is(d0, 
        Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l))
       && $Is(d1, 
        Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#r))
     ==> ($Eq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
        DefaultValuedExpressions.EmptyOrInfinite$U#r, 
        $LS(ly), 
        d0, 
        d1)
       <==> (DefaultValuedExpressions.EmptyOrInfinite.EmptyStream_q(d0)
           && DefaultValuedExpressions.EmptyOrInfinite.EmptyStream_q(d1))
         || (
          DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d0)
           && DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d1)
           && (DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d0)
               && DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d1)
             ==> DefaultValuedExpressions.EmptyOrInfinite._h2(d0)
                 == DefaultValuedExpressions.EmptyOrInfinite._h2(d1)
               && $Eq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
                DefaultValuedExpressions.EmptyOrInfinite$U#r, 
                $LS($LS($LZ)), 
                DefaultValuedExpressions.EmptyOrInfinite._h3(d0), 
                DefaultValuedExpressions.EmptyOrInfinite._h3(d1))))));

// Unbump layer co-equality axiom
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U#l: Ty, 
    DefaultValuedExpressions.EmptyOrInfinite$U#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Eq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      $LS(ly), 
      d0, 
      d1)
     <==> $Eq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      ly, 
      d0, 
      d1));

// Equality for codatatypes
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U#l: Ty, 
    DefaultValuedExpressions.EmptyOrInfinite$U#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Eq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      $LS(ly), 
      d0, 
      d1)
     <==> d0 == d1);

function $PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U#l: Ty, 
    DefaultValuedExpressions.EmptyOrInfinite$U#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      k, 
      $LS(ly), 
      d0, 
      d1) } 
  $Is(d0, 
        Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l))
       && $Is(d1, 
        Tclass.DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#r))
     ==> ($PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
        DefaultValuedExpressions.EmptyOrInfinite$U#r, 
        k, 
        $LS(ly), 
        d0, 
        d1)
       <==> (0 < ORD#Offset(k)
           ==> (DefaultValuedExpressions.EmptyOrInfinite.EmptyStream_q(d0)
               && DefaultValuedExpressions.EmptyOrInfinite.EmptyStream_q(d1))
             || (
              DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d0)
               && DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d1)
               && (DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d0)
                   && DefaultValuedExpressions.EmptyOrInfinite.InfiniteStream_q(d1)
                 ==> DefaultValuedExpressions.EmptyOrInfinite._h2(d0)
                     == DefaultValuedExpressions.EmptyOrInfinite._h2(d1)
                   && $Eq#DefaultValuedExpressions.Stream(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
                    DefaultValuedExpressions.EmptyOrInfinite$U#r, 
                    $LS($LS($LZ)), 
                    DefaultValuedExpressions.EmptyOrInfinite._h3(d0), 
                    DefaultValuedExpressions.EmptyOrInfinite._h3(d1)))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
            DefaultValuedExpressions.EmptyOrInfinite$U#r, 
            ly, 
            d0, 
            d1))));

// Unbump layer co-equality axiom
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U#l: Ty, 
    DefaultValuedExpressions.EmptyOrInfinite$U#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      k, 
      $LS(ly), 
      d0, 
      d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
        DefaultValuedExpressions.EmptyOrInfinite$U#r, 
        k, 
        $LS(ly), 
        d0, 
        d1)
       <==> $PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
        DefaultValuedExpressions.EmptyOrInfinite$U#r, 
        k, 
        ly, 
        d0, 
        d1)));

// Coequality and prefix equality connection
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U#l: Ty, 
    DefaultValuedExpressions.EmptyOrInfinite$U#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Eq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      $LS(ly), 
      d0, 
      d1)
     <==> (forall k: Box :: 
      { $PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
          DefaultValuedExpressions.EmptyOrInfinite$U#r, 
          k, 
          $LS(ly), 
          d0, 
          d1) } 
      $PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
        DefaultValuedExpressions.EmptyOrInfinite$U#r, 
        k, 
        $LS(ly), 
        d0, 
        d1)));

// Coequality and prefix equality connection
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U#l: Ty, 
    DefaultValuedExpressions.EmptyOrInfinite$U#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      $LS(ly), 
      d0, 
      d1) } 
  (forall k: int :: 
      { $PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
          DefaultValuedExpressions.EmptyOrInfinite$U#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1) } 
      0 <= k
         ==> $PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
          DefaultValuedExpressions.EmptyOrInfinite$U#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1))
     ==> $Eq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      $LS(ly), 
      d0, 
      d1));

// Prefix equality consequence
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U#l: Ty, 
    DefaultValuedExpressions.EmptyOrInfinite$U#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      k, 
      $LS(ly), 
      d0, 
      d1), $PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      m, 
      $LS(ly), 
      d0, 
      d1) } 
  ORD#Less(k, m)
       && $PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
        DefaultValuedExpressions.EmptyOrInfinite$U#r, 
        m, 
        $LS(ly), 
        d0, 
        d1)
     ==> $PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      k, 
      $LS(ly), 
      d0, 
      d1));

// Prefix equality shortcut
axiom (forall DefaultValuedExpressions.EmptyOrInfinite$U#l: Ty, 
    DefaultValuedExpressions.EmptyOrInfinite$U#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      k, 
      $LS(ly), 
      d0, 
      d1) } 
  d0 == d1
     ==> $PrefixEq#DefaultValuedExpressions.EmptyOrInfinite(DefaultValuedExpressions.EmptyOrInfinite$U#l, 
      DefaultValuedExpressions.EmptyOrInfinite$U#r, 
      k, 
      $LS(ly), 
      d0, 
      d1));

const unique class.DefaultValuedExpressions.EmptyOrInfinite: ClassName;

// Constructor function declaration
function #DefaultValuedExpressions.PossiblyFiniteStream.Stop() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DefaultValuedExpressions.PossiblyFiniteStream.Stop())
   == ##DefaultValuedExpressions.PossiblyFiniteStream.Stop;
}

const unique ##DefaultValuedExpressions.PossiblyFiniteStream.Stop: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DefaultValuedExpressions.PossiblyFiniteStream.Stop())
   == ##DefaultValuedExpressions.PossiblyFiniteStream.Stop;
}

function DefaultValuedExpressions.PossiblyFiniteStream.Stop_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.PossiblyFiniteStream.Stop_q(d) } 
  DefaultValuedExpressions.PossiblyFiniteStream.Stop_q(d)
     <==> DatatypeCtorId(d) == ##DefaultValuedExpressions.PossiblyFiniteStream.Stop);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.PossiblyFiniteStream.Stop_q(d) } 
  DefaultValuedExpressions.PossiblyFiniteStream.Stop_q(d)
     ==> d == #DefaultValuedExpressions.PossiblyFiniteStream.Stop());

// Constructor $Is
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T: Ty :: 
  { $Is(#DefaultValuedExpressions.PossiblyFiniteStream.Stop(), 
      Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T)) } 
  $Is(#DefaultValuedExpressions.PossiblyFiniteStream.Stop(), 
    Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T)));

// Constructor $IsAlloc
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T: Ty, $h: Heap :: 
  { $IsAlloc(#DefaultValuedExpressions.PossiblyFiniteStream.Stop(), 
      Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#DefaultValuedExpressions.PossiblyFiniteStream.Stop(), 
      Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T), 
      $h));

// Constructor function declaration
function #DefaultValuedExpressions.PossiblyFiniteStream.GoOn(Box, DatatypeType) : DatatypeType;

const unique ##DefaultValuedExpressions.PossiblyFiniteStream.GoOn: DtCtorId
uses {
// Constructor identifier
axiom (forall a#16#0#0: Box, a#16#1#0: DatatypeType :: 
  { #DefaultValuedExpressions.PossiblyFiniteStream.GoOn(a#16#0#0, a#16#1#0) } 
  DatatypeCtorId(#DefaultValuedExpressions.PossiblyFiniteStream.GoOn(a#16#0#0, a#16#1#0))
     == ##DefaultValuedExpressions.PossiblyFiniteStream.GoOn);
}

function DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d) } 
  DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d)
     <==> DatatypeCtorId(d) == ##DefaultValuedExpressions.PossiblyFiniteStream.GoOn);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d) } 
  DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d)
     ==> (exists a#17#0#0: Box, a#17#1#0: DatatypeType :: 
      d == #DefaultValuedExpressions.PossiblyFiniteStream.GoOn(a#17#0#0, a#17#1#0)));

// Constructor $Is
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T: Ty, 
    a#18#0#0: Box, 
    a#18#1#0: DatatypeType :: 
  { $Is(#DefaultValuedExpressions.PossiblyFiniteStream.GoOn(a#18#0#0, a#18#1#0), 
      Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T)) } 
  $Is(#DefaultValuedExpressions.PossiblyFiniteStream.GoOn(a#18#0#0, a#18#1#0), 
      Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T))
     <==> $IsBox(a#18#0#0, DefaultValuedExpressions.PossiblyFiniteStream$T)
       && $Is(a#18#1#0, 
        Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T)));

// Constructor $IsAlloc
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T: Ty, 
    a#18#0#0: Box, 
    a#18#1#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#DefaultValuedExpressions.PossiblyFiniteStream.GoOn(a#18#0#0, a#18#1#0), 
      Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DefaultValuedExpressions.PossiblyFiniteStream.GoOn(a#18#0#0, a#18#1#0), 
        Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T), 
        $h)
       <==> $IsAllocBox(a#18#0#0, DefaultValuedExpressions.PossiblyFiniteStream$T, $h)
         && $IsAlloc(a#18#1#0, 
          Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T), 
          $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DefaultValuedExpressions.PossiblyFiniteStream$T: Ty, $h: Heap :: 
  { $IsAllocBox(DefaultValuedExpressions.PossiblyFiniteStream._h4(d), 
      DefaultValuedExpressions.PossiblyFiniteStream$T, 
      $h) } 
  $IsGoodHeap($h)
       && 
      DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d)
       && $IsAlloc(d, 
        Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T), 
        $h)
     ==> $IsAllocBox(DefaultValuedExpressions.PossiblyFiniteStream._h4(d), 
      DefaultValuedExpressions.PossiblyFiniteStream$T, 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DefaultValuedExpressions.PossiblyFiniteStream$T: Ty, $h: Heap :: 
  { $IsAlloc(DefaultValuedExpressions.PossiblyFiniteStream._h5(d), 
      Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d)
       && $IsAlloc(d, 
        Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T), 
        $h)
     ==> $IsAlloc(DefaultValuedExpressions.PossiblyFiniteStream._h5(d), 
      Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T), 
      $h));

function DefaultValuedExpressions.PossiblyFiniteStream._h4(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#19#0#0: Box, a#19#1#0: DatatypeType :: 
  { #DefaultValuedExpressions.PossiblyFiniteStream.GoOn(a#19#0#0, a#19#1#0) } 
  DefaultValuedExpressions.PossiblyFiniteStream._h4(#DefaultValuedExpressions.PossiblyFiniteStream.GoOn(a#19#0#0, a#19#1#0))
     == a#19#0#0);

function DefaultValuedExpressions.PossiblyFiniteStream._h5(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#20#0#0: Box, a#20#1#0: DatatypeType :: 
  { #DefaultValuedExpressions.PossiblyFiniteStream.GoOn(a#20#0#0, a#20#1#0) } 
  DefaultValuedExpressions.PossiblyFiniteStream._h5(#DefaultValuedExpressions.PossiblyFiniteStream.GoOn(a#20#0#0, a#20#1#0))
     == a#20#1#0);

// Depth-one case-split function
function $IsA#DefaultValuedExpressions.PossiblyFiniteStream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DefaultValuedExpressions.PossiblyFiniteStream(d) } 
  $IsA#DefaultValuedExpressions.PossiblyFiniteStream(d)
     ==> DefaultValuedExpressions.PossiblyFiniteStream.Stop_q(d)
       || DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d));

// Questionmark data type disjunctivity
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T: Ty, d: DatatypeType :: 
  { DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d), $Is(d, 
      Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T)) } 
    { DefaultValuedExpressions.PossiblyFiniteStream.Stop_q(d), $Is(d, 
      Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T)) } 
  $Is(d, 
      Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T))
     ==> DefaultValuedExpressions.PossiblyFiniteStream.Stop_q(d)
       || DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d));

function $Eq#DefaultValuedExpressions.PossiblyFiniteStream(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T#l: Ty, 
    DefaultValuedExpressions.PossiblyFiniteStream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Is(d0, 
        Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l))
       && $Is(d1, 
        Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#r))
     ==> ($Eq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
        DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
        $LS(ly), 
        d0, 
        d1)
       <==> (DefaultValuedExpressions.PossiblyFiniteStream.Stop_q(d0)
           && DefaultValuedExpressions.PossiblyFiniteStream.Stop_q(d1))
         || (
          DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d0)
           && DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d1)
           && (DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d0)
               && DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d1)
             ==> DefaultValuedExpressions.PossiblyFiniteStream._h4(d0)
                 == DefaultValuedExpressions.PossiblyFiniteStream._h4(d1)
               && $Eq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
                DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
                ly, 
                DefaultValuedExpressions.PossiblyFiniteStream._h5(d0), 
                DefaultValuedExpressions.PossiblyFiniteStream._h5(d1))))));

// Unbump layer co-equality axiom
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T#l: Ty, 
    DefaultValuedExpressions.PossiblyFiniteStream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Eq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      $LS(ly), 
      d0, 
      d1)
     <==> $Eq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      ly, 
      d0, 
      d1));

// Equality for codatatypes
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T#l: Ty, 
    DefaultValuedExpressions.PossiblyFiniteStream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Eq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      $LS(ly), 
      d0, 
      d1)
     <==> d0 == d1);

function $PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T#l: Ty, 
    DefaultValuedExpressions.PossiblyFiniteStream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      k, 
      $LS(ly), 
      d0, 
      d1) } 
  $Is(d0, 
        Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l))
       && $Is(d1, 
        Tclass.DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#r))
     ==> ($PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
        DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
        k, 
        $LS(ly), 
        d0, 
        d1)
       <==> (0 < ORD#Offset(k)
           ==> (DefaultValuedExpressions.PossiblyFiniteStream.Stop_q(d0)
               && DefaultValuedExpressions.PossiblyFiniteStream.Stop_q(d1))
             || (
              DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d0)
               && DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d1)
               && (DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d0)
                   && DefaultValuedExpressions.PossiblyFiniteStream.GoOn_q(d1)
                 ==> DefaultValuedExpressions.PossiblyFiniteStream._h4(d0)
                     == DefaultValuedExpressions.PossiblyFiniteStream._h4(d1)
                   && $PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
                    DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
                    ORD#Minus(k, ORD#FromNat(1)), 
                    ly, 
                    DefaultValuedExpressions.PossiblyFiniteStream._h5(d0), 
                    DefaultValuedExpressions.PossiblyFiniteStream._h5(d1)))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
            DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
            ly, 
            d0, 
            d1))));

// Unbump layer co-equality axiom
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T#l: Ty, 
    DefaultValuedExpressions.PossiblyFiniteStream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      k, 
      $LS(ly), 
      d0, 
      d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
        DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
        k, 
        $LS(ly), 
        d0, 
        d1)
       <==> $PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
        DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
        k, 
        ly, 
        d0, 
        d1)));

// Coequality and prefix equality connection
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T#l: Ty, 
    DefaultValuedExpressions.PossiblyFiniteStream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      $LS(ly), 
      d0, 
      d1) } 
  $Eq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      $LS(ly), 
      d0, 
      d1)
     <==> (forall k: Box :: 
      { $PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
          DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
          k, 
          $LS(ly), 
          d0, 
          d1) } 
      $PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
        DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
        k, 
        $LS(ly), 
        d0, 
        d1)));

// Coequality and prefix equality connection
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T#l: Ty, 
    DefaultValuedExpressions.PossiblyFiniteStream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      $LS(ly), 
      d0, 
      d1) } 
  (forall k: int :: 
      { $PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
          DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1) } 
      0 <= k
         ==> $PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
          DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1))
     ==> $Eq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      $LS(ly), 
      d0, 
      d1));

// Prefix equality consequence
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T#l: Ty, 
    DefaultValuedExpressions.PossiblyFiniteStream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      k, 
      $LS(ly), 
      d0, 
      d1), $PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      m, 
      $LS(ly), 
      d0, 
      d1) } 
  ORD#Less(k, m)
       && $PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
        DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
        m, 
        $LS(ly), 
        d0, 
        d1)
     ==> $PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      k, 
      $LS(ly), 
      d0, 
      d1));

// Prefix equality shortcut
axiom (forall DefaultValuedExpressions.PossiblyFiniteStream$T#l: Ty, 
    DefaultValuedExpressions.PossiblyFiniteStream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      k, 
      $LS(ly), 
      d0, 
      d1) } 
  d0 == d1
     ==> $PrefixEq#DefaultValuedExpressions.PossiblyFiniteStream(DefaultValuedExpressions.PossiblyFiniteStream$T#l, 
      DefaultValuedExpressions.PossiblyFiniteStream$T#r, 
      k, 
      $LS(ly), 
      d0, 
      d1));

const unique class.DefaultValuedExpressions.PossiblyFiniteStream: ClassName;

// Constructor function declaration
function #DefaultValuedExpressions.Color.Red() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DefaultValuedExpressions.Color.Red())
   == ##DefaultValuedExpressions.Color.Red;
// Constructor $Is
axiom $Is(#DefaultValuedExpressions.Color.Red(), Tclass.DefaultValuedExpressions.Color());
// Constructor literal
axiom #DefaultValuedExpressions.Color.Red()
   == Lit(#DefaultValuedExpressions.Color.Red());
}

const unique ##DefaultValuedExpressions.Color.Red: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DefaultValuedExpressions.Color.Red())
   == ##DefaultValuedExpressions.Color.Red;
}

function DefaultValuedExpressions.Color.Red_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.Color.Red_q(d) } 
  DefaultValuedExpressions.Color.Red_q(d)
     <==> DatatypeCtorId(d) == ##DefaultValuedExpressions.Color.Red);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.Color.Red_q(d) } 
  DefaultValuedExpressions.Color.Red_q(d)
     ==> d == #DefaultValuedExpressions.Color.Red());

// Constructor function declaration
function #DefaultValuedExpressions.Color.Green() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DefaultValuedExpressions.Color.Green())
   == ##DefaultValuedExpressions.Color.Green;
// Constructor $Is
axiom $Is(#DefaultValuedExpressions.Color.Green(), Tclass.DefaultValuedExpressions.Color());
// Constructor literal
axiom #DefaultValuedExpressions.Color.Green()
   == Lit(#DefaultValuedExpressions.Color.Green());
}

const unique ##DefaultValuedExpressions.Color.Green: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DefaultValuedExpressions.Color.Green())
   == ##DefaultValuedExpressions.Color.Green;
}

function DefaultValuedExpressions.Color.Green_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.Color.Green_q(d) } 
  DefaultValuedExpressions.Color.Green_q(d)
     <==> DatatypeCtorId(d) == ##DefaultValuedExpressions.Color.Green);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.Color.Green_q(d) } 
  DefaultValuedExpressions.Color.Green_q(d)
     ==> d == #DefaultValuedExpressions.Color.Green());

// Constructor function declaration
function #DefaultValuedExpressions.Color.Blue() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DefaultValuedExpressions.Color.Blue())
   == ##DefaultValuedExpressions.Color.Blue;
// Constructor $Is
axiom $Is(#DefaultValuedExpressions.Color.Blue(), Tclass.DefaultValuedExpressions.Color());
// Constructor literal
axiom #DefaultValuedExpressions.Color.Blue()
   == Lit(#DefaultValuedExpressions.Color.Blue());
}

const unique ##DefaultValuedExpressions.Color.Blue: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DefaultValuedExpressions.Color.Blue())
   == ##DefaultValuedExpressions.Color.Blue;
}

function DefaultValuedExpressions.Color.Blue_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.Color.Blue_q(d) } 
  DefaultValuedExpressions.Color.Blue_q(d)
     <==> DatatypeCtorId(d) == ##DefaultValuedExpressions.Color.Blue);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.Color.Blue_q(d) } 
  DefaultValuedExpressions.Color.Blue_q(d)
     ==> d == #DefaultValuedExpressions.Color.Blue());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DefaultValuedExpressions.Color(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DefaultValuedExpressions.Color())
     ==> $IsAlloc(d, Tclass.DefaultValuedExpressions.Color(), $h));

// Depth-one case-split function
function $IsA#DefaultValuedExpressions.Color(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DefaultValuedExpressions.Color(d) } 
  $IsA#DefaultValuedExpressions.Color(d)
     ==> DefaultValuedExpressions.Color.Red_q(d)
       || DefaultValuedExpressions.Color.Green_q(d)
       || DefaultValuedExpressions.Color.Blue_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.Color.Blue_q(d), $Is(d, Tclass.DefaultValuedExpressions.Color()) } 
    { DefaultValuedExpressions.Color.Green_q(d), $Is(d, Tclass.DefaultValuedExpressions.Color()) } 
    { DefaultValuedExpressions.Color.Red_q(d), $Is(d, Tclass.DefaultValuedExpressions.Color()) } 
  $Is(d, Tclass.DefaultValuedExpressions.Color())
     ==> DefaultValuedExpressions.Color.Red_q(d)
       || DefaultValuedExpressions.Color.Green_q(d)
       || DefaultValuedExpressions.Color.Blue_q(d));

// Datatype extensional equality declaration
function DefaultValuedExpressions.Color#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DefaultValuedExpressions.Color.Red
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DefaultValuedExpressions.Color#Equal(a, b), DefaultValuedExpressions.Color.Red_q(a) } 
    { DefaultValuedExpressions.Color#Equal(a, b), DefaultValuedExpressions.Color.Red_q(b) } 
  DefaultValuedExpressions.Color.Red_q(a)
       && DefaultValuedExpressions.Color.Red_q(b)
     ==> DefaultValuedExpressions.Color#Equal(a, b));

// Datatype extensional equality definition: #DefaultValuedExpressions.Color.Green
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DefaultValuedExpressions.Color#Equal(a, b), DefaultValuedExpressions.Color.Green_q(a) } 
    { DefaultValuedExpressions.Color#Equal(a, b), DefaultValuedExpressions.Color.Green_q(b) } 
  DefaultValuedExpressions.Color.Green_q(a)
       && DefaultValuedExpressions.Color.Green_q(b)
     ==> DefaultValuedExpressions.Color#Equal(a, b));

// Datatype extensional equality definition: #DefaultValuedExpressions.Color.Blue
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DefaultValuedExpressions.Color#Equal(a, b), DefaultValuedExpressions.Color.Blue_q(a) } 
    { DefaultValuedExpressions.Color#Equal(a, b), DefaultValuedExpressions.Color.Blue_q(b) } 
  DefaultValuedExpressions.Color.Blue_q(a)
       && DefaultValuedExpressions.Color.Blue_q(b)
     ==> DefaultValuedExpressions.Color#Equal(a, b));

// Datatype extensionality axiom: DefaultValuedExpressions.Color
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DefaultValuedExpressions.Color#Equal(a, b) } 
  DefaultValuedExpressions.Color#Equal(a, b) <==> a == b);

const unique class.DefaultValuedExpressions.Color: ClassName;

// Constructor function declaration
function #DefaultValuedExpressions.PossibleCell.Nothing() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DefaultValuedExpressions.PossibleCell.Nothing())
   == ##DefaultValuedExpressions.PossibleCell.Nothing;
// Constructor literal
axiom #DefaultValuedExpressions.PossibleCell.Nothing()
   == Lit(#DefaultValuedExpressions.PossibleCell.Nothing());
}

const unique ##DefaultValuedExpressions.PossibleCell.Nothing: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DefaultValuedExpressions.PossibleCell.Nothing())
   == ##DefaultValuedExpressions.PossibleCell.Nothing;
}

function DefaultValuedExpressions.PossibleCell.Nothing_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.PossibleCell.Nothing_q(d) } 
  DefaultValuedExpressions.PossibleCell.Nothing_q(d)
     <==> DatatypeCtorId(d) == ##DefaultValuedExpressions.PossibleCell.Nothing);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.PossibleCell.Nothing_q(d) } 
  DefaultValuedExpressions.PossibleCell.Nothing_q(d)
     ==> d == #DefaultValuedExpressions.PossibleCell.Nothing());

// Constructor $Is
axiom (forall DefaultValuedExpressions.PossibleCell$T: Ty, 
    DefaultValuedExpressions.PossibleCell$U: Ty :: 
  { $Is(#DefaultValuedExpressions.PossibleCell.Nothing(), 
      Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U)) } 
  $Is(#DefaultValuedExpressions.PossibleCell.Nothing(), 
    Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U)));

// Constructor $IsAlloc
axiom (forall DefaultValuedExpressions.PossibleCell$T: Ty, 
    DefaultValuedExpressions.PossibleCell$U: Ty, 
    $h: Heap :: 
  { $IsAlloc(#DefaultValuedExpressions.PossibleCell.Nothing(), 
      Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#DefaultValuedExpressions.PossibleCell.Nothing(), 
      Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U), 
      $h));

// Constructor function declaration
function #DefaultValuedExpressions.PossibleCell.YesCell(Box) : DatatypeType;

const unique ##DefaultValuedExpressions.PossibleCell.YesCell: DtCtorId
uses {
// Constructor identifier
axiom (forall a#37#0#0: Box :: 
  { #DefaultValuedExpressions.PossibleCell.YesCell(a#37#0#0) } 
  DatatypeCtorId(#DefaultValuedExpressions.PossibleCell.YesCell(a#37#0#0))
     == ##DefaultValuedExpressions.PossibleCell.YesCell);
}

function DefaultValuedExpressions.PossibleCell.YesCell_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.PossibleCell.YesCell_q(d) } 
  DefaultValuedExpressions.PossibleCell.YesCell_q(d)
     <==> DatatypeCtorId(d) == ##DefaultValuedExpressions.PossibleCell.YesCell);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.PossibleCell.YesCell_q(d) } 
  DefaultValuedExpressions.PossibleCell.YesCell_q(d)
     ==> (exists a#38#0#0: Box :: 
      d == #DefaultValuedExpressions.PossibleCell.YesCell(a#38#0#0)));

// Constructor $Is
axiom (forall DefaultValuedExpressions.PossibleCell$T: Ty, 
    DefaultValuedExpressions.PossibleCell$U: Ty, 
    a#39#0#0: Box :: 
  { $Is(#DefaultValuedExpressions.PossibleCell.YesCell(a#39#0#0), 
      Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U)) } 
  $Is(#DefaultValuedExpressions.PossibleCell.YesCell(a#39#0#0), 
      Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U))
     <==> $IsBox(a#39#0#0, DefaultValuedExpressions.PossibleCell$T));

// Constructor $IsAlloc
axiom (forall DefaultValuedExpressions.PossibleCell$T: Ty, 
    DefaultValuedExpressions.PossibleCell$U: Ty, 
    a#39#0#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#DefaultValuedExpressions.PossibleCell.YesCell(a#39#0#0), 
      Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DefaultValuedExpressions.PossibleCell.YesCell(a#39#0#0), 
        Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U), 
        $h)
       <==> $IsAllocBox(a#39#0#0, DefaultValuedExpressions.PossibleCell$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DefaultValuedExpressions.PossibleCell$T: Ty, $h: Heap :: 
  { $IsAllocBox(DefaultValuedExpressions.PossibleCell._h6(d), 
      DefaultValuedExpressions.PossibleCell$T, 
      $h) } 
  $IsGoodHeap($h)
       && 
      DefaultValuedExpressions.PossibleCell.YesCell_q(d)
       && (exists DefaultValuedExpressions.PossibleCell$U: Ty :: 
        { $IsAlloc(d, 
            Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U), 
            $h) } 
        $IsAlloc(d, 
          Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U), 
          $h))
     ==> $IsAllocBox(DefaultValuedExpressions.PossibleCell._h6(d), 
      DefaultValuedExpressions.PossibleCell$T, 
      $h));

// Constructor literal
axiom (forall a#40#0#0: Box :: 
  { #DefaultValuedExpressions.PossibleCell.YesCell(Lit(a#40#0#0)) } 
  #DefaultValuedExpressions.PossibleCell.YesCell(Lit(a#40#0#0))
     == Lit(#DefaultValuedExpressions.PossibleCell.YesCell(a#40#0#0)));

function DefaultValuedExpressions.PossibleCell._h6(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#41#0#0: Box :: 
  { #DefaultValuedExpressions.PossibleCell.YesCell(a#41#0#0) } 
  DefaultValuedExpressions.PossibleCell._h6(#DefaultValuedExpressions.PossibleCell.YesCell(a#41#0#0))
     == a#41#0#0);

// Inductive rank
axiom (forall a#42#0#0: Box :: 
  { #DefaultValuedExpressions.PossibleCell.YesCell(a#42#0#0) } 
  BoxRank(a#42#0#0)
     < DtRank(#DefaultValuedExpressions.PossibleCell.YesCell(a#42#0#0)));

// Constructor function declaration
function #DefaultValuedExpressions.PossibleCell.OrThisCell(Box) : DatatypeType;

const unique ##DefaultValuedExpressions.PossibleCell.OrThisCell: DtCtorId
uses {
// Constructor identifier
axiom (forall a#43#0#0: Box :: 
  { #DefaultValuedExpressions.PossibleCell.OrThisCell(a#43#0#0) } 
  DatatypeCtorId(#DefaultValuedExpressions.PossibleCell.OrThisCell(a#43#0#0))
     == ##DefaultValuedExpressions.PossibleCell.OrThisCell);
}

function DefaultValuedExpressions.PossibleCell.OrThisCell_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.PossibleCell.OrThisCell_q(d) } 
  DefaultValuedExpressions.PossibleCell.OrThisCell_q(d)
     <==> DatatypeCtorId(d) == ##DefaultValuedExpressions.PossibleCell.OrThisCell);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.PossibleCell.OrThisCell_q(d) } 
  DefaultValuedExpressions.PossibleCell.OrThisCell_q(d)
     ==> (exists a#44#0#0: Box :: 
      d == #DefaultValuedExpressions.PossibleCell.OrThisCell(a#44#0#0)));

// Constructor $Is
axiom (forall DefaultValuedExpressions.PossibleCell$T: Ty, 
    DefaultValuedExpressions.PossibleCell$U: Ty, 
    a#45#0#0: Box :: 
  { $Is(#DefaultValuedExpressions.PossibleCell.OrThisCell(a#45#0#0), 
      Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U)) } 
  $Is(#DefaultValuedExpressions.PossibleCell.OrThisCell(a#45#0#0), 
      Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U))
     <==> $IsBox(a#45#0#0, DefaultValuedExpressions.PossibleCell$U));

// Constructor $IsAlloc
axiom (forall DefaultValuedExpressions.PossibleCell$T: Ty, 
    DefaultValuedExpressions.PossibleCell$U: Ty, 
    a#45#0#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#DefaultValuedExpressions.PossibleCell.OrThisCell(a#45#0#0), 
      Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DefaultValuedExpressions.PossibleCell.OrThisCell(a#45#0#0), 
        Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U), 
        $h)
       <==> $IsAllocBox(a#45#0#0, DefaultValuedExpressions.PossibleCell$U, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DefaultValuedExpressions.PossibleCell$U: Ty, $h: Heap :: 
  { $IsAllocBox(DefaultValuedExpressions.PossibleCell._h7(d), 
      DefaultValuedExpressions.PossibleCell$U, 
      $h) } 
  $IsGoodHeap($h)
       && 
      DefaultValuedExpressions.PossibleCell.OrThisCell_q(d)
       && (exists DefaultValuedExpressions.PossibleCell$T: Ty :: 
        { $IsAlloc(d, 
            Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U), 
            $h) } 
        $IsAlloc(d, 
          Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U), 
          $h))
     ==> $IsAllocBox(DefaultValuedExpressions.PossibleCell._h7(d), 
      DefaultValuedExpressions.PossibleCell$U, 
      $h));

// Constructor literal
axiom (forall a#46#0#0: Box :: 
  { #DefaultValuedExpressions.PossibleCell.OrThisCell(Lit(a#46#0#0)) } 
  #DefaultValuedExpressions.PossibleCell.OrThisCell(Lit(a#46#0#0))
     == Lit(#DefaultValuedExpressions.PossibleCell.OrThisCell(a#46#0#0)));

function DefaultValuedExpressions.PossibleCell._h7(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#47#0#0: Box :: 
  { #DefaultValuedExpressions.PossibleCell.OrThisCell(a#47#0#0) } 
  DefaultValuedExpressions.PossibleCell._h7(#DefaultValuedExpressions.PossibleCell.OrThisCell(a#47#0#0))
     == a#47#0#0);

// Inductive rank
axiom (forall a#48#0#0: Box :: 
  { #DefaultValuedExpressions.PossibleCell.OrThisCell(a#48#0#0) } 
  BoxRank(a#48#0#0)
     < DtRank(#DefaultValuedExpressions.PossibleCell.OrThisCell(a#48#0#0)));

// Depth-one case-split function
function $IsA#DefaultValuedExpressions.PossibleCell(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DefaultValuedExpressions.PossibleCell(d) } 
  $IsA#DefaultValuedExpressions.PossibleCell(d)
     ==> DefaultValuedExpressions.PossibleCell.Nothing_q(d)
       || DefaultValuedExpressions.PossibleCell.YesCell_q(d)
       || DefaultValuedExpressions.PossibleCell.OrThisCell_q(d));

// Questionmark data type disjunctivity
axiom (forall DefaultValuedExpressions.PossibleCell$T: Ty, 
    DefaultValuedExpressions.PossibleCell$U: Ty, 
    d: DatatypeType :: 
  { DefaultValuedExpressions.PossibleCell.OrThisCell_q(d), $Is(d, 
      Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U)) } 
    { DefaultValuedExpressions.PossibleCell.YesCell_q(d), $Is(d, 
      Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U)) } 
    { DefaultValuedExpressions.PossibleCell.Nothing_q(d), $Is(d, 
      Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U)) } 
  $Is(d, 
      Tclass.DefaultValuedExpressions.PossibleCell(DefaultValuedExpressions.PossibleCell$T, DefaultValuedExpressions.PossibleCell$U))
     ==> DefaultValuedExpressions.PossibleCell.Nothing_q(d)
       || DefaultValuedExpressions.PossibleCell.YesCell_q(d)
       || DefaultValuedExpressions.PossibleCell.OrThisCell_q(d));

// Datatype extensional equality declaration
function DefaultValuedExpressions.PossibleCell#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DefaultValuedExpressions.PossibleCell.Nothing
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DefaultValuedExpressions.PossibleCell#Equal(a, b), DefaultValuedExpressions.PossibleCell.Nothing_q(a) } 
    { DefaultValuedExpressions.PossibleCell#Equal(a, b), DefaultValuedExpressions.PossibleCell.Nothing_q(b) } 
  DefaultValuedExpressions.PossibleCell.Nothing_q(a)
       && DefaultValuedExpressions.PossibleCell.Nothing_q(b)
     ==> DefaultValuedExpressions.PossibleCell#Equal(a, b));

// Datatype extensional equality definition: #DefaultValuedExpressions.PossibleCell.YesCell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DefaultValuedExpressions.PossibleCell#Equal(a, b), DefaultValuedExpressions.PossibleCell.YesCell_q(a) } 
    { DefaultValuedExpressions.PossibleCell#Equal(a, b), DefaultValuedExpressions.PossibleCell.YesCell_q(b) } 
  DefaultValuedExpressions.PossibleCell.YesCell_q(a)
       && DefaultValuedExpressions.PossibleCell.YesCell_q(b)
     ==> (DefaultValuedExpressions.PossibleCell#Equal(a, b)
       <==> DefaultValuedExpressions.PossibleCell._h6(a)
         == DefaultValuedExpressions.PossibleCell._h6(b)));

// Datatype extensional equality definition: #DefaultValuedExpressions.PossibleCell.OrThisCell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DefaultValuedExpressions.PossibleCell#Equal(a, b), DefaultValuedExpressions.PossibleCell.OrThisCell_q(a) } 
    { DefaultValuedExpressions.PossibleCell#Equal(a, b), DefaultValuedExpressions.PossibleCell.OrThisCell_q(b) } 
  DefaultValuedExpressions.PossibleCell.OrThisCell_q(a)
       && DefaultValuedExpressions.PossibleCell.OrThisCell_q(b)
     ==> (DefaultValuedExpressions.PossibleCell#Equal(a, b)
       <==> DefaultValuedExpressions.PossibleCell._h7(a)
         == DefaultValuedExpressions.PossibleCell._h7(b)));

// Datatype extensionality axiom: DefaultValuedExpressions.PossibleCell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DefaultValuedExpressions.PossibleCell#Equal(a, b) } 
  DefaultValuedExpressions.PossibleCell#Equal(a, b) <==> a == b);

const unique class.DefaultValuedExpressions.PossibleCell: ClassName;

// Constructor function declaration
function #DefaultValuedExpressions.Cell.LittleCell(Box) : DatatypeType;

const unique ##DefaultValuedExpressions.Cell.LittleCell: DtCtorId
uses {
// Constructor identifier
axiom (forall a#49#0#0: Box :: 
  { #DefaultValuedExpressions.Cell.LittleCell(a#49#0#0) } 
  DatatypeCtorId(#DefaultValuedExpressions.Cell.LittleCell(a#49#0#0))
     == ##DefaultValuedExpressions.Cell.LittleCell);
}

function DefaultValuedExpressions.Cell.LittleCell_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.Cell.LittleCell_q(d) } 
  DefaultValuedExpressions.Cell.LittleCell_q(d)
     <==> DatatypeCtorId(d) == ##DefaultValuedExpressions.Cell.LittleCell);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.Cell.LittleCell_q(d) } 
  DefaultValuedExpressions.Cell.LittleCell_q(d)
     ==> (exists a#50#0#0: Box :: 
      d == #DefaultValuedExpressions.Cell.LittleCell(a#50#0#0)));

// Constructor $Is
axiom (forall DefaultValuedExpressions.Cell$T: Ty, 
    DefaultValuedExpressions.Cell$U: Ty, 
    a#51#0#0: Box :: 
  { $Is(#DefaultValuedExpressions.Cell.LittleCell(a#51#0#0), 
      Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U)) } 
  $Is(#DefaultValuedExpressions.Cell.LittleCell(a#51#0#0), 
      Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U))
     <==> $IsBox(a#51#0#0, DefaultValuedExpressions.Cell$T));

// Constructor $IsAlloc
axiom (forall DefaultValuedExpressions.Cell$T: Ty, 
    DefaultValuedExpressions.Cell$U: Ty, 
    a#51#0#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#DefaultValuedExpressions.Cell.LittleCell(a#51#0#0), 
      Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DefaultValuedExpressions.Cell.LittleCell(a#51#0#0), 
        Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U), 
        $h)
       <==> $IsAllocBox(a#51#0#0, DefaultValuedExpressions.Cell$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DefaultValuedExpressions.Cell$T: Ty, $h: Heap :: 
  { $IsAllocBox(DefaultValuedExpressions.Cell._h8(d), DefaultValuedExpressions.Cell$T, $h) } 
  $IsGoodHeap($h)
       && 
      DefaultValuedExpressions.Cell.LittleCell_q(d)
       && (exists DefaultValuedExpressions.Cell$U: Ty :: 
        { $IsAlloc(d, 
            Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U), 
            $h) } 
        $IsAlloc(d, 
          Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U), 
          $h))
     ==> $IsAllocBox(DefaultValuedExpressions.Cell._h8(d), DefaultValuedExpressions.Cell$T, $h));

// Constructor literal
axiom (forall a#52#0#0: Box :: 
  { #DefaultValuedExpressions.Cell.LittleCell(Lit(a#52#0#0)) } 
  #DefaultValuedExpressions.Cell.LittleCell(Lit(a#52#0#0))
     == Lit(#DefaultValuedExpressions.Cell.LittleCell(a#52#0#0)));

function DefaultValuedExpressions.Cell._h8(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#53#0#0: Box :: 
  { #DefaultValuedExpressions.Cell.LittleCell(a#53#0#0) } 
  DefaultValuedExpressions.Cell._h8(#DefaultValuedExpressions.Cell.LittleCell(a#53#0#0))
     == a#53#0#0);

// Inductive rank
axiom (forall a#54#0#0: Box :: 
  { #DefaultValuedExpressions.Cell.LittleCell(a#54#0#0) } 
  BoxRank(a#54#0#0) < DtRank(#DefaultValuedExpressions.Cell.LittleCell(a#54#0#0)));

// Constructor function declaration
function #DefaultValuedExpressions.Cell.BiggerCell(DatatypeType) : DatatypeType;

const unique ##DefaultValuedExpressions.Cell.BiggerCell: DtCtorId
uses {
// Constructor identifier
axiom (forall a#55#0#0: DatatypeType :: 
  { #DefaultValuedExpressions.Cell.BiggerCell(a#55#0#0) } 
  DatatypeCtorId(#DefaultValuedExpressions.Cell.BiggerCell(a#55#0#0))
     == ##DefaultValuedExpressions.Cell.BiggerCell);
}

function DefaultValuedExpressions.Cell.BiggerCell_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.Cell.BiggerCell_q(d) } 
  DefaultValuedExpressions.Cell.BiggerCell_q(d)
     <==> DatatypeCtorId(d) == ##DefaultValuedExpressions.Cell.BiggerCell);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DefaultValuedExpressions.Cell.BiggerCell_q(d) } 
  DefaultValuedExpressions.Cell.BiggerCell_q(d)
     ==> (exists a#56#0#0: DatatypeType :: 
      d == #DefaultValuedExpressions.Cell.BiggerCell(a#56#0#0)));

// Constructor $Is
axiom (forall DefaultValuedExpressions.Cell$T: Ty, 
    DefaultValuedExpressions.Cell$U: Ty, 
    a#57#0#0: DatatypeType :: 
  { $Is(#DefaultValuedExpressions.Cell.BiggerCell(a#57#0#0), 
      Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U)) } 
  $Is(#DefaultValuedExpressions.Cell.BiggerCell(a#57#0#0), 
      Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U))
     <==> $Is(a#57#0#0, 
      Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U)));

// Constructor $IsAlloc
axiom (forall DefaultValuedExpressions.Cell$T: Ty, 
    DefaultValuedExpressions.Cell$U: Ty, 
    a#57#0#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#DefaultValuedExpressions.Cell.BiggerCell(a#57#0#0), 
      Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DefaultValuedExpressions.Cell.BiggerCell(a#57#0#0), 
        Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U), 
        $h)
       <==> $IsAlloc(a#57#0#0, 
        Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U), 
        $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, 
    DefaultValuedExpressions.Cell$T: Ty, 
    DefaultValuedExpressions.Cell$U: Ty, 
    $h: Heap :: 
  { $IsAlloc(DefaultValuedExpressions.Cell._h9(d), 
      Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U), 
      $h) } 
  $IsGoodHeap($h)
       && 
      DefaultValuedExpressions.Cell.BiggerCell_q(d)
       && $IsAlloc(d, 
        Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U), 
        $h)
     ==> $IsAlloc(DefaultValuedExpressions.Cell._h9(d), 
      Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U), 
      $h));

// Constructor literal
axiom (forall a#58#0#0: DatatypeType :: 
  { #DefaultValuedExpressions.Cell.BiggerCell(Lit(a#58#0#0)) } 
  #DefaultValuedExpressions.Cell.BiggerCell(Lit(a#58#0#0))
     == Lit(#DefaultValuedExpressions.Cell.BiggerCell(a#58#0#0)));

function DefaultValuedExpressions.Cell._h9(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#59#0#0: DatatypeType :: 
  { #DefaultValuedExpressions.Cell.BiggerCell(a#59#0#0) } 
  DefaultValuedExpressions.Cell._h9(#DefaultValuedExpressions.Cell.BiggerCell(a#59#0#0))
     == a#59#0#0);

// Inductive rank
axiom (forall a#60#0#0: DatatypeType :: 
  { #DefaultValuedExpressions.Cell.BiggerCell(a#60#0#0) } 
  DtRank(a#60#0#0) < DtRank(#DefaultValuedExpressions.Cell.BiggerCell(a#60#0#0)));

// Depth-one case-split function
function $IsA#DefaultValuedExpressions.Cell(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DefaultValuedExpressions.Cell(d) } 
  $IsA#DefaultValuedExpressions.Cell(d)
     ==> DefaultValuedExpressions.Cell.LittleCell_q(d)
       || DefaultValuedExpressions.Cell.BiggerCell_q(d));

// Questionmark data type disjunctivity
axiom (forall DefaultValuedExpressions.Cell$T: Ty, 
    DefaultValuedExpressions.Cell$U: Ty, 
    d: DatatypeType :: 
  { DefaultValuedExpressions.Cell.BiggerCell_q(d), $Is(d, 
      Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U)) } 
    { DefaultValuedExpressions.Cell.LittleCell_q(d), $Is(d, 
      Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U)) } 
  $Is(d, 
      Tclass.DefaultValuedExpressions.Cell(DefaultValuedExpressions.Cell$T, DefaultValuedExpressions.Cell$U))
     ==> DefaultValuedExpressions.Cell.LittleCell_q(d)
       || DefaultValuedExpressions.Cell.BiggerCell_q(d));

// Datatype extensional equality declaration
function DefaultValuedExpressions.Cell#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DefaultValuedExpressions.Cell.LittleCell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DefaultValuedExpressions.Cell#Equal(a, b), DefaultValuedExpressions.Cell.LittleCell_q(a) } 
    { DefaultValuedExpressions.Cell#Equal(a, b), DefaultValuedExpressions.Cell.LittleCell_q(b) } 
  DefaultValuedExpressions.Cell.LittleCell_q(a)
       && DefaultValuedExpressions.Cell.LittleCell_q(b)
     ==> (DefaultValuedExpressions.Cell#Equal(a, b)
       <==> DefaultValuedExpressions.Cell._h8(a) == DefaultValuedExpressions.Cell._h8(b)));

// Datatype extensional equality definition: #DefaultValuedExpressions.Cell.BiggerCell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DefaultValuedExpressions.Cell#Equal(a, b), DefaultValuedExpressions.Cell.BiggerCell_q(a) } 
    { DefaultValuedExpressions.Cell#Equal(a, b), DefaultValuedExpressions.Cell.BiggerCell_q(b) } 
  DefaultValuedExpressions.Cell.BiggerCell_q(a)
       && DefaultValuedExpressions.Cell.BiggerCell_q(b)
     ==> (DefaultValuedExpressions.Cell#Equal(a, b)
       <==> DefaultValuedExpressions.Cell#Equal(DefaultValuedExpressions.Cell._h9(a), DefaultValuedExpressions.Cell._h9(b))));

// Datatype extensionality axiom: DefaultValuedExpressions.Cell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DefaultValuedExpressions.Cell#Equal(a, b) } 
  DefaultValuedExpressions.Cell#Equal(a, b) <==> a == b);

const unique class.DefaultValuedExpressions.Cell: ClassName;

procedure {:verboseName "DefaultValuedExpressions.S0 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.S0(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.S0 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.S0(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type S0
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume {:id "id407"} true;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id408"} Lit(true);
        assume false;
    }
}



// $Is axiom for subset type DefaultValuedExpressions.S0
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.DefaultValuedExpressions.S0()) } 
  $Is(x#0, Tclass.DefaultValuedExpressions.S0()) <==> Lit(true));

// $IsAlloc axiom for subset type DefaultValuedExpressions.S0
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.DefaultValuedExpressions.S0(), $h) } 
  $IsAlloc(x#0, Tclass.DefaultValuedExpressions.S0(), $h));

procedure {:verboseName "DefaultValuedExpressions.S1 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.S1(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.S1 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.S1(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type S1
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id409"} LitInt(0) <= x#0 && x#0 < 10;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id410"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id411"} {:subsumption 0} Lit(0 < 10);
        assume false;
    }
}



// $Is axiom for subset type DefaultValuedExpressions.S1
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.DefaultValuedExpressions.S1()) } 
  $Is(x#0, Tclass.DefaultValuedExpressions.S1()) <==> LitInt(0) <= x#0 && x#0 < 10);

// $IsAlloc axiom for subset type DefaultValuedExpressions.S1
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.DefaultValuedExpressions.S1(), $h) } 
  $IsAlloc(x#0, Tclass.DefaultValuedExpressions.S1(), $h));

procedure {:verboseName "DefaultValuedExpressions.S2 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.S2(x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.S2 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.S2(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;


    // AddWellformednessCheck for subset type S2
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume LitInt(0) <= x#0 && x#0 < 10;
        assume {:id "id412"} true;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        newtype$check#0 := LitInt(0);
        assert {:id "id413"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 10;
        assume true;
        assert {:id "id414"} Lit(true);
        assume false;
    }
}



// $Is axiom for subset type DefaultValuedExpressions.S2
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.DefaultValuedExpressions.S2()) } 
  $Is(x#0, Tclass.DefaultValuedExpressions.S2()) <==> LitInt(0) <= x#0 && x#0 < 10);

// $IsAlloc axiom for subset type DefaultValuedExpressions.S2
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.DefaultValuedExpressions.S2(), $h) } 
  $IsAlloc(x#0, Tclass.DefaultValuedExpressions.S2(), $h));

procedure {:verboseName "DefaultValuedExpressions.S3 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.S3(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.S3 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.S3(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type S3
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        if (LitInt(2) <= x#0)
        {
        }

        assume {:id "id415"} LitInt(2) <= x#0 && x#0 < 10;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id416"} {:subsumption 0} LitInt(2) <= LitInt(3);
        assert {:id "id417"} {:subsumption 0} Lit(3 < 10);
        assume false;
    }
}



function Tclass.DefaultValuedExpressions.S3() : Ty
uses {
// Tclass.DefaultValuedExpressions.S3 Tag
axiom Tag(Tclass.DefaultValuedExpressions.S3())
     == Tagclass.DefaultValuedExpressions.S3
   && TagFamily(Tclass.DefaultValuedExpressions.S3()) == tytagFamily$S3;
}

const unique Tagclass.DefaultValuedExpressions.S3: TyTag;

// Box/unbox axiom for Tclass.DefaultValuedExpressions.S3
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.S3()) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.S3())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.DefaultValuedExpressions.S3()));

// $Is axiom for subset type DefaultValuedExpressions.S3
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.DefaultValuedExpressions.S3()) } 
  $Is(x#0, Tclass.DefaultValuedExpressions.S3()) <==> LitInt(2) <= x#0 && x#0 < 10);

// $IsAlloc axiom for subset type DefaultValuedExpressions.S3
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.DefaultValuedExpressions.S3(), $h) } 
  $IsAlloc(x#0, Tclass.DefaultValuedExpressions.S3(), $h));

procedure {:verboseName "DefaultValuedExpressions.S4 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.S4(x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.S4 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.S4(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    // AddWellformednessCheck for subset type S4
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume LitInt(2) <= x#0 && x#0 < 10;
        assume {:id "id418"} true;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        newtype$check#0 := LitInt(4);
        assert {:id "id419"} LitInt(2) <= newtype$check#0 && newtype$check#0 < 10;
        newtype$check#1 := LitInt(4);
        assert {:id "id420"} LitInt(2) <= newtype$check#1 && newtype$check#1 < 10;
        assume true;
        assert {:id "id421"} Lit(true);
        assume false;
    }
}



function Tclass.DefaultValuedExpressions.S4() : Ty
uses {
// Tclass.DefaultValuedExpressions.S4 Tag
axiom Tag(Tclass.DefaultValuedExpressions.S4())
     == Tagclass.DefaultValuedExpressions.S4
   && TagFamily(Tclass.DefaultValuedExpressions.S4()) == tytagFamily$S4;
}

const unique Tagclass.DefaultValuedExpressions.S4: TyTag;

// Box/unbox axiom for Tclass.DefaultValuedExpressions.S4
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.S4()) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.S4())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.DefaultValuedExpressions.S4()));

// $Is axiom for subset type DefaultValuedExpressions.S4
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.DefaultValuedExpressions.S4()) } 
  $Is(x#0, Tclass.DefaultValuedExpressions.S4()) <==> LitInt(2) <= x#0 && x#0 < 10);

// $IsAlloc axiom for subset type DefaultValuedExpressions.S4
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.DefaultValuedExpressions.S4(), $h) } 
  $IsAlloc(x#0, Tclass.DefaultValuedExpressions.S4(), $h));

procedure {:verboseName "DefaultValuedExpressions.S5 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.S5(x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.S5 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.S5(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    // AddWellformednessCheck for subset type S5
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume LitInt(2) <= x#0 && x#0 < 10;
        assert {:id "id422"} LitInt(5) != 0;
        assume {:id "id423"} Mod(x#0, LitInt(5)) == LitInt(0);
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        newtype$check#0 := LitInt(5);
        assert {:id "id424"} LitInt(2) <= newtype$check#0 && newtype$check#0 < 10;
        newtype$check#1 := LitInt(5);
        assert {:id "id425"} LitInt(2) <= newtype$check#1 && newtype$check#1 < 10;
        assume true;
        assert {:id "id426"} LitInt(Mod(5, LitInt(5))) == LitInt(0);
        assume false;
    }
}



function Tclass.DefaultValuedExpressions.S5() : Ty
uses {
// Tclass.DefaultValuedExpressions.S5 Tag
axiom Tag(Tclass.DefaultValuedExpressions.S5())
     == Tagclass.DefaultValuedExpressions.S5
   && TagFamily(Tclass.DefaultValuedExpressions.S5()) == tytagFamily$S5;
}

const unique Tagclass.DefaultValuedExpressions.S5: TyTag;

// Box/unbox axiom for Tclass.DefaultValuedExpressions.S5
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DefaultValuedExpressions.S5()) } 
  $IsBox(bx, Tclass.DefaultValuedExpressions.S5())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.DefaultValuedExpressions.S5()));

// $Is axiom for subset type DefaultValuedExpressions.S5
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.DefaultValuedExpressions.S5()) } 
  $Is(x#0, Tclass.DefaultValuedExpressions.S5())
     <==> LitInt(2) <= x#0 && x#0 < 10 && Mod(x#0, LitInt(5)) == LitInt(0));

// $IsAlloc axiom for subset type DefaultValuedExpressions.S5
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.DefaultValuedExpressions.S5(), $h) } 
  $IsAlloc(x#0, Tclass.DefaultValuedExpressions.S5(), $h));

procedure {:verboseName "DefaultValuedExpressions.ST0 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T: Ty, DefaultValuedExpressions.ST0$U: Ty, x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.ST0 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T: Ty, DefaultValuedExpressions.ST0$U: Ty, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type ST0
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assert {:id "id427"} LitInt(5) != 0;
        assume {:id "id428"} Mod(x#0, LitInt(5)) == LitInt(0);
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id429"} LitInt(Mod(0, LitInt(5))) == LitInt(0);
        assume false;
    }
}



// $Is axiom for subset type DefaultValuedExpressions.ST0
axiom (forall DefaultValuedExpressions.ST0$T: Ty, DefaultValuedExpressions.ST0$U: Ty, x#0: int :: 
  { $Is(x#0, 
      Tclass.DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T, DefaultValuedExpressions.ST0$U)) } 
  $Is(x#0, 
      Tclass.DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T, DefaultValuedExpressions.ST0$U))
     <==> Mod(x#0, LitInt(5)) == LitInt(0));

// $IsAlloc axiom for subset type DefaultValuedExpressions.ST0
axiom (forall DefaultValuedExpressions.ST0$T: Ty, 
    DefaultValuedExpressions.ST0$U: Ty, 
    x#0: int, 
    $h: Heap :: 
  { $IsAlloc(x#0, 
      Tclass.DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T, DefaultValuedExpressions.ST0$U), 
      $h) } 
  $IsAlloc(x#0, 
    Tclass.DefaultValuedExpressions.ST0(DefaultValuedExpressions.ST0$T, DefaultValuedExpressions.ST0$U), 
    $h));

procedure {:verboseName "DefaultValuedExpressions.ST1 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T: Ty, DefaultValuedExpressions.ST1$U: Ty, x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.ST1 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T: Ty, DefaultValuedExpressions.ST1$U: Ty, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type ST1
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assert {:id "id430"} LitInt(5) != 0;
        assume {:id "id431"} Mod(x#0, LitInt(5)) == LitInt(1);
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id432"} LitInt(Mod(11, LitInt(5))) == LitInt(1);
        assume false;
    }
}



function Tclass.DefaultValuedExpressions.ST1(Ty, Ty) : Ty;

const unique Tagclass.DefaultValuedExpressions.ST1: TyTag;

// Tclass.DefaultValuedExpressions.ST1 Tag
axiom (forall DefaultValuedExpressions.ST1$T: Ty, DefaultValuedExpressions.ST1$U: Ty :: 
  { Tclass.DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T, DefaultValuedExpressions.ST1$U) } 
  Tag(Tclass.DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T, DefaultValuedExpressions.ST1$U))
       == Tagclass.DefaultValuedExpressions.ST1
     && TagFamily(Tclass.DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T, DefaultValuedExpressions.ST1$U))
       == tytagFamily$ST1);

function Tclass.DefaultValuedExpressions.ST1_0(Ty) : Ty;

// Tclass.DefaultValuedExpressions.ST1 injectivity 0
axiom (forall DefaultValuedExpressions.ST1$T: Ty, DefaultValuedExpressions.ST1$U: Ty :: 
  { Tclass.DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T, DefaultValuedExpressions.ST1$U) } 
  Tclass.DefaultValuedExpressions.ST1_0(Tclass.DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T, DefaultValuedExpressions.ST1$U))
     == DefaultValuedExpressions.ST1$T);

function Tclass.DefaultValuedExpressions.ST1_1(Ty) : Ty;

// Tclass.DefaultValuedExpressions.ST1 injectivity 1
axiom (forall DefaultValuedExpressions.ST1$T: Ty, DefaultValuedExpressions.ST1$U: Ty :: 
  { Tclass.DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T, DefaultValuedExpressions.ST1$U) } 
  Tclass.DefaultValuedExpressions.ST1_1(Tclass.DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T, DefaultValuedExpressions.ST1$U))
     == DefaultValuedExpressions.ST1$U);

// Box/unbox axiom for Tclass.DefaultValuedExpressions.ST1
axiom (forall DefaultValuedExpressions.ST1$T: Ty, DefaultValuedExpressions.ST1$U: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T, DefaultValuedExpressions.ST1$U)) } 
  $IsBox(bx, 
      Tclass.DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T, DefaultValuedExpressions.ST1$U))
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, 
        Tclass.DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T, DefaultValuedExpressions.ST1$U)));

// $Is axiom for subset type DefaultValuedExpressions.ST1
axiom (forall DefaultValuedExpressions.ST1$T: Ty, DefaultValuedExpressions.ST1$U: Ty, x#0: int :: 
  { $Is(x#0, 
      Tclass.DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T, DefaultValuedExpressions.ST1$U)) } 
  $Is(x#0, 
      Tclass.DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T, DefaultValuedExpressions.ST1$U))
     <==> Mod(x#0, LitInt(5)) == LitInt(1));

// $IsAlloc axiom for subset type DefaultValuedExpressions.ST1
axiom (forall DefaultValuedExpressions.ST1$T: Ty, 
    DefaultValuedExpressions.ST1$U: Ty, 
    x#0: int, 
    $h: Heap :: 
  { $IsAlloc(x#0, 
      Tclass.DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T, DefaultValuedExpressions.ST1$U), 
      $h) } 
  $IsAlloc(x#0, 
    Tclass.DefaultValuedExpressions.ST1(DefaultValuedExpressions.ST1$T, DefaultValuedExpressions.ST1$U), 
    $h));

procedure {:verboseName "DefaultValuedExpressions.ST2 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T: Ty, DefaultValuedExpressions.ST2$U: Ty, x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.ST2 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T: Ty, DefaultValuedExpressions.ST2$U: Ty, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var m#Z#0: Map;
  var let#0#0#0: Map;


    // AddWellformednessCheck for subset type ST2
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        havoc m#Z#0;
        assume {:id "id433"} let#0#0#0 == Lit(Map#Empty(): Map);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TMap(DefaultValuedExpressions.ST2$T, DefaultValuedExpressions.ST2$U));
        assume {:id "id434"} m#Z#0 == let#0#0#0;
        if ((var m#0 := Lit(Map#Empty(): Map); Map#Equal(m#0, Map#Empty(): Map)))
        {
        }
        else
        {
        }

        assume {:id "id435"} (if (var m#0 := Lit(Map#Empty(): Map); Map#Equal(m#0, Map#Empty(): Map))
             then 0
             else 8)
           <= x#0;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id436"} (if (var m#1 := Lit(Map#Empty(): Map); Map#Equal(m#1, Map#Empty(): Map))
             then 0
             else 8)
           <= LitInt(0);
        assume false;
    }
}



// $Is axiom for subset type DefaultValuedExpressions.ST2
axiom (forall DefaultValuedExpressions.ST2$T: Ty, DefaultValuedExpressions.ST2$U: Ty, x#0: int :: 
  { $Is(x#0, 
      Tclass.DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T, DefaultValuedExpressions.ST2$U)) } 
  $Is(x#0, 
      Tclass.DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T, DefaultValuedExpressions.ST2$U))
     <==> (if (var m#2 := Lit(Map#Empty(): Map); Map#Equal(m#2, Map#Empty(): Map))
         then 0
         else 8)
       <= x#0);

// $IsAlloc axiom for subset type DefaultValuedExpressions.ST2
axiom (forall DefaultValuedExpressions.ST2$T: Ty, 
    DefaultValuedExpressions.ST2$U: Ty, 
    x#0: int, 
    $h: Heap :: 
  { $IsAlloc(x#0, 
      Tclass.DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T, DefaultValuedExpressions.ST2$U), 
      $h) } 
  $IsAlloc(x#0, 
    Tclass.DefaultValuedExpressions.ST2(DefaultValuedExpressions.ST2$T, DefaultValuedExpressions.ST2$U), 
    $h));

procedure {:verboseName "DefaultValuedExpressions.ST3 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T: Ty, DefaultValuedExpressions.ST3$U: Ty, x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultValuedExpressions.ST3 (well-formedness)"} CheckWellFormed$$DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T: Ty, DefaultValuedExpressions.ST3$U: Ty, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var m#Z#0: Map;
  var let#0#0#0: Map;


    // AddWellformednessCheck for subset type ST3
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        havoc m#Z#0;
        assume {:id "id437"} let#0#0#0 == Lit(Map#Empty(): Map);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TMap(DefaultValuedExpressions.ST3$T, DefaultValuedExpressions.ST3$U));
        assume {:id "id438"} m#Z#0 == let#0#0#0;
        if ((var m#0 := Lit(Map#Empty(): Map); Map#Equal(m#0, Map#Empty(): Map)))
        {
        }
        else
        {
        }

        assume {:id "id439"} (if (var m#0 := Lit(Map#Empty(): Map); Map#Equal(m#0, Map#Empty(): Map))
             then 8
             else 0)
           <= x#0;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id440"} (if (var m#1 := Lit(Map#Empty(): Map); Map#Equal(m#1, Map#Empty(): Map))
             then 8
             else 0)
           <= LitInt(8);
        assume false;
    }
}



function Tclass.DefaultValuedExpressions.ST3(Ty, Ty) : Ty;

const unique Tagclass.DefaultValuedExpressions.ST3: TyTag;

// Tclass.DefaultValuedExpressions.ST3 Tag
axiom (forall DefaultValuedExpressions.ST3$T: Ty, DefaultValuedExpressions.ST3$U: Ty :: 
  { Tclass.DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T, DefaultValuedExpressions.ST3$U) } 
  Tag(Tclass.DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T, DefaultValuedExpressions.ST3$U))
       == Tagclass.DefaultValuedExpressions.ST3
     && TagFamily(Tclass.DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T, DefaultValuedExpressions.ST3$U))
       == tytagFamily$ST3);

function Tclass.DefaultValuedExpressions.ST3_0(Ty) : Ty;

// Tclass.DefaultValuedExpressions.ST3 injectivity 0
axiom (forall DefaultValuedExpressions.ST3$T: Ty, DefaultValuedExpressions.ST3$U: Ty :: 
  { Tclass.DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T, DefaultValuedExpressions.ST3$U) } 
  Tclass.DefaultValuedExpressions.ST3_0(Tclass.DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T, DefaultValuedExpressions.ST3$U))
     == DefaultValuedExpressions.ST3$T);

function Tclass.DefaultValuedExpressions.ST3_1(Ty) : Ty;

// Tclass.DefaultValuedExpressions.ST3 injectivity 1
axiom (forall DefaultValuedExpressions.ST3$T: Ty, DefaultValuedExpressions.ST3$U: Ty :: 
  { Tclass.DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T, DefaultValuedExpressions.ST3$U) } 
  Tclass.DefaultValuedExpressions.ST3_1(Tclass.DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T, DefaultValuedExpressions.ST3$U))
     == DefaultValuedExpressions.ST3$U);

// Box/unbox axiom for Tclass.DefaultValuedExpressions.ST3
axiom (forall DefaultValuedExpressions.ST3$T: Ty, DefaultValuedExpressions.ST3$U: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T, DefaultValuedExpressions.ST3$U)) } 
  $IsBox(bx, 
      Tclass.DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T, DefaultValuedExpressions.ST3$U))
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, 
        Tclass.DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T, DefaultValuedExpressions.ST3$U)));

// $Is axiom for subset type DefaultValuedExpressions.ST3
axiom (forall DefaultValuedExpressions.ST3$T: Ty, DefaultValuedExpressions.ST3$U: Ty, x#0: int :: 
  { $Is(x#0, 
      Tclass.DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T, DefaultValuedExpressions.ST3$U)) } 
  $Is(x#0, 
      Tclass.DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T, DefaultValuedExpressions.ST3$U))
     <==> (if (var m#2 := Lit(Map#Empty(): Map); Map#Equal(m#2, Map#Empty(): Map))
         then 8
         else 0)
       <= x#0);

// $IsAlloc axiom for subset type DefaultValuedExpressions.ST3
axiom (forall DefaultValuedExpressions.ST3$T: Ty, 
    DefaultValuedExpressions.ST3$U: Ty, 
    x#0: int, 
    $h: Heap :: 
  { $IsAlloc(x#0, 
      Tclass.DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T, DefaultValuedExpressions.ST3$U), 
      $h) } 
  $IsAlloc(x#0, 
    Tclass.DefaultValuedExpressions.ST3(DefaultValuedExpressions.ST3$T, DefaultValuedExpressions.ST3$U), 
    $h));

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

const unique tytagFamily$array3: TyTagFamily;

const unique tytagFamily$_tuple#3: TyTagFamily;

const unique tytagFamily$NT0: TyTagFamily;

const unique tytagFamily$NT1: TyTagFamily;

const unique tytagFamily$NT2: TyTagFamily;

const unique tytagFamily$NT3: TyTagFamily;

const unique tytagFamily$NR0: TyTagFamily;

const unique tytagFamily$Class: TyTagFamily;

const unique tytagFamily$Trait: TyTagFamily;

const unique tytagFamily$Stream: TyTagFamily;

const unique tytagFamily$PossiblyFiniteStream: TyTagFamily;

const unique tytagFamily$Color: TyTagFamily;

const unique tytagFamily$PossibleCell: TyTagFamily;

const unique tytagFamily$Cell: TyTagFamily;

const unique tytagFamily$S0: TyTagFamily;

const unique tytagFamily$S1: TyTagFamily;

const unique tytagFamily$S2: TyTagFamily;

const unique tytagFamily$ST0: TyTagFamily;

const unique tytagFamily$ST2: TyTagFamily;

const unique tytagFamily$NT4: TyTagFamily;

const unique tytagFamily$NT5: TyTagFamily;

const unique tytagFamily$NR1: TyTagFamily;

const unique tytagFamily$EmptyOrInfinite: TyTagFamily;

const unique tytagFamily$S3: TyTagFamily;

const unique tytagFamily$S4: TyTagFamily;

const unique tytagFamily$S5: TyTagFamily;

const unique tytagFamily$ST1: TyTagFamily;

const unique tytagFamily$ST3: TyTagFamily;
