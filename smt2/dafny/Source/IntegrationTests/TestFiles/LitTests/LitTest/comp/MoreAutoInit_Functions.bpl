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

const unique class.Functions.__default: ClassName;

procedure {:verboseName "Functions.TestStart (well-formedness)"} CheckWellFormed$$Functions.__default.TestStart();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Functions.TestStart (call)"} Call$$Functions.__default.TestStart();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Functions.TestStart (correctness)"} Impl$$Functions.__default.TestStart() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.Functions.Uni() : Ty
uses {
// Tclass.Functions.Uni Tag
axiom Tag(Tclass.Functions.Uni()) == Tagclass.Functions.Uni
   && TagFamily(Tclass.Functions.Uni()) == tytagFamily$Uni;
}

const unique Tagclass.Functions.Uni: TyTag;

// Box/unbox axiom for Tclass.Functions.Uni
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Functions.Uni()) } 
  $IsBox(bx, Tclass.Functions.Uni())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Functions.Uni()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Functions.TestStart (correctness)"} Impl$$Functions.__default.TestStart() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x##0: DatatypeType;
  var y##0: DatatypeType;
  var x##1: Seq;
  var y##1: Set;

    // AddMethodImpl: TestStart, Impl$$Functions.__default.TestStart
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(164,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := Lit(#Functions.Uni.Uni());
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := Lit(#Functions.Uni.Uni());
    call {:id "id148"} Call$$Functions.__default.Test(Tclass.Functions.Uni(), Tclass.Functions.Uni(), $Box(x##0), $Box(y##0));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(165,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(Lit(#Functions.Uni.Uni()))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##1 := Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(2))));
    call {:id "id149"} Call$$Functions.__default.Test(TSeq(Tclass.Functions.Uni()), TSet(TInt), $Box(x##1), $Box(y##1));
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Functions.Test (well-formedness)"} CheckWellFormed$$Functions.__default.Test(Functions._default.Test$X: Ty, 
    Functions._default.Test$Y: Ty, 
    x#0: Box
       where $IsBox(x#0, Functions._default.Test$X)
         && $IsAllocBox(x#0, Functions._default.Test$X, $Heap), 
    y#0: Box
       where $IsBox(y#0, Functions._default.Test$Y)
         && $IsAllocBox(y#0, Functions._default.Test$Y, $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Functions.Test (call)"} Call$$Functions.__default.Test(Functions._default.Test$X: Ty, 
    Functions._default.Test$Y: Ty, 
    x#0: Box
       where $IsBox(x#0, Functions._default.Test$X)
         && $IsAllocBox(x#0, Functions._default.Test$X, $Heap), 
    y#0: Box
       where $IsBox(y#0, Functions._default.Test$Y)
         && $IsAllocBox(y#0, Functions._default.Test$Y, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Functions.Test (correctness)"} Impl$$Functions.__default.Test(Functions._default.Test$X: Ty, 
    Functions._default.Test$Y: Ty, 
    x#0: Box
       where $IsBox(x#0, Functions._default.Test$X)
         && $IsAllocBox(x#0, Functions._default.Test$X, $Heap), 
    y#0: Box
       where $IsBox(y#0, Functions._default.Test$Y)
         && $IsAllocBox(y#0, Functions._default.Test$Y, $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.Functions.Class(Ty) : Ty;

const unique Tagclass.Functions.Class: TyTag;

// Tclass.Functions.Class Tag
axiom (forall Functions.Class$Ac: Ty :: 
  { Tclass.Functions.Class(Functions.Class$Ac) } 
  Tag(Tclass.Functions.Class(Functions.Class$Ac)) == Tagclass.Functions.Class
     && TagFamily(Tclass.Functions.Class(Functions.Class$Ac)) == tytagFamily$Class);

function Tclass.Functions.Class_0(Ty) : Ty;

// Tclass.Functions.Class injectivity 0
axiom (forall Functions.Class$Ac: Ty :: 
  { Tclass.Functions.Class(Functions.Class$Ac) } 
  Tclass.Functions.Class_0(Tclass.Functions.Class(Functions.Class$Ac))
     == Functions.Class$Ac);

// Box/unbox axiom for Tclass.Functions.Class
axiom (forall Functions.Class$Ac: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Functions.Class(Functions.Class$Ac)) } 
  $IsBox(bx, Tclass.Functions.Class(Functions.Class$Ac))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.Functions.Class(Functions.Class$Ac)));

function Tclass.Functions.Class?(Ty) : Ty
uses {
axiom (forall Functions.Class$Ac: Ty :: 
  implements$Functions.Trait(Tclass.Functions.Class?(Functions.Class$Ac), Functions.Class$Ac));
}

const unique Tagclass.Functions.Class?: TyTag;

// Tclass.Functions.Class? Tag
axiom (forall Functions.Class$Ac: Ty :: 
  { Tclass.Functions.Class?(Functions.Class$Ac) } 
  Tag(Tclass.Functions.Class?(Functions.Class$Ac)) == Tagclass.Functions.Class?
     && TagFamily(Tclass.Functions.Class?(Functions.Class$Ac)) == tytagFamily$Class);

function Tclass.Functions.Class?_0(Ty) : Ty;

// Tclass.Functions.Class? injectivity 0
axiom (forall Functions.Class$Ac: Ty :: 
  { Tclass.Functions.Class?(Functions.Class$Ac) } 
  Tclass.Functions.Class?_0(Tclass.Functions.Class?(Functions.Class$Ac))
     == Functions.Class$Ac);

// Box/unbox axiom for Tclass.Functions.Class?
axiom (forall Functions.Class$Ac: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Functions.Class?(Functions.Class$Ac)) } 
  $IsBox(bx, Tclass.Functions.Class?(Functions.Class$Ac))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.Functions.Class?(Functions.Class$Ac)));

function Tclass.Functions.Trait(Ty) : Ty;

const unique Tagclass.Functions.Trait: TyTag;

// Tclass.Functions.Trait Tag
axiom (forall Functions.Trait$At: Ty :: 
  { Tclass.Functions.Trait(Functions.Trait$At) } 
  Tag(Tclass.Functions.Trait(Functions.Trait$At)) == Tagclass.Functions.Trait
     && TagFamily(Tclass.Functions.Trait(Functions.Trait$At)) == tytagFamily$Trait);

function Tclass.Functions.Trait_0(Ty) : Ty;

// Tclass.Functions.Trait injectivity 0
axiom (forall Functions.Trait$At: Ty :: 
  { Tclass.Functions.Trait(Functions.Trait$At) } 
  Tclass.Functions.Trait_0(Tclass.Functions.Trait(Functions.Trait$At))
     == Functions.Trait$At);

// Box/unbox axiom for Tclass.Functions.Trait
axiom (forall Functions.Trait$At: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Functions.Trait(Functions.Trait$At)) } 
  $IsBox(bx, Tclass.Functions.Trait(Functions.Trait$At))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.Functions.Trait(Functions.Trait$At)));

function Tclass.Functions.UberTrait(Ty) : Ty;

const unique Tagclass.Functions.UberTrait: TyTag;

// Tclass.Functions.UberTrait Tag
axiom (forall Functions.UberTrait$Au: Ty :: 
  { Tclass.Functions.UberTrait(Functions.UberTrait$Au) } 
  Tag(Tclass.Functions.UberTrait(Functions.UberTrait$Au))
       == Tagclass.Functions.UberTrait
     && TagFamily(Tclass.Functions.UberTrait(Functions.UberTrait$Au))
       == tytagFamily$UberTrait);

function Tclass.Functions.UberTrait_0(Ty) : Ty;

// Tclass.Functions.UberTrait injectivity 0
axiom (forall Functions.UberTrait$Au: Ty :: 
  { Tclass.Functions.UberTrait(Functions.UberTrait$Au) } 
  Tclass.Functions.UberTrait_0(Tclass.Functions.UberTrait(Functions.UberTrait$Au))
     == Functions.UberTrait$Au);

// Box/unbox axiom for Tclass.Functions.UberTrait
axiom (forall Functions.UberTrait$Au: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Functions.UberTrait(Functions.UberTrait$Au)) } 
  $IsBox(bx, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.Functions.UberTrait(Functions.UberTrait$Au)));

function Tclass.Functions.InBetween(Ty) : Ty;

const unique Tagclass.Functions.InBetween: TyTag;

// Tclass.Functions.InBetween Tag
axiom (forall Functions.InBetween$Ai: Ty :: 
  { Tclass.Functions.InBetween(Functions.InBetween$Ai) } 
  Tag(Tclass.Functions.InBetween(Functions.InBetween$Ai))
       == Tagclass.Functions.InBetween
     && TagFamily(Tclass.Functions.InBetween(Functions.InBetween$Ai))
       == tytagFamily$InBetween);

function Tclass.Functions.InBetween_0(Ty) : Ty;

// Tclass.Functions.InBetween injectivity 0
axiom (forall Functions.InBetween$Ai: Ty :: 
  { Tclass.Functions.InBetween(Functions.InBetween$Ai) } 
  Tclass.Functions.InBetween_0(Tclass.Functions.InBetween(Functions.InBetween$Ai))
     == Functions.InBetween$Ai);

// Box/unbox axiom for Tclass.Functions.InBetween
axiom (forall Functions.InBetween$Ai: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Functions.InBetween(Functions.InBetween$Ai)) } 
  $IsBox(bx, Tclass.Functions.InBetween(Functions.InBetween$Ai))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.Functions.InBetween(Functions.InBetween$Ai)));

function Tclass.Functions.Datatype(Ty) : Ty;

const unique Tagclass.Functions.Datatype: TyTag;

// Tclass.Functions.Datatype Tag
axiom (forall Functions.Datatype$Ad: Ty :: 
  { Tclass.Functions.Datatype(Functions.Datatype$Ad) } 
  Tag(Tclass.Functions.Datatype(Functions.Datatype$Ad))
       == Tagclass.Functions.Datatype
     && TagFamily(Tclass.Functions.Datatype(Functions.Datatype$Ad))
       == tytagFamily$Datatype);

function Tclass.Functions.Datatype_0(Ty) : Ty;

// Tclass.Functions.Datatype injectivity 0
axiom (forall Functions.Datatype$Ad: Ty :: 
  { Tclass.Functions.Datatype(Functions.Datatype$Ad) } 
  Tclass.Functions.Datatype_0(Tclass.Functions.Datatype(Functions.Datatype$Ad))
     == Functions.Datatype$Ad);

// Box/unbox axiom for Tclass.Functions.Datatype
axiom (forall Functions.Datatype$Ad: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Functions.Datatype(Functions.Datatype$Ad)) } 
  $IsBox(bx, Tclass.Functions.Datatype(Functions.Datatype$Ad))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Functions.Datatype(Functions.Datatype$Ad)));

function Tclass.Functions.Newtype() : Ty
uses {
// Tclass.Functions.Newtype Tag
axiom Tag(Tclass.Functions.Newtype()) == Tagclass.Functions.Newtype
   && TagFamily(Tclass.Functions.Newtype()) == tytagFamily$Newtype;
}

const unique Tagclass.Functions.Newtype: TyTag;

// Box/unbox axiom for Tclass.Functions.Newtype
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Functions.Newtype()) } 
  $IsBox(bx, Tclass.Functions.Newtype())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.Functions.Newtype()));

function Tclass.Functions.UberTrait?(Ty) : Ty;

const unique Tagclass.Functions.UberTrait?: TyTag;

// Tclass.Functions.UberTrait? Tag
axiom (forall Functions.UberTrait$Au: Ty :: 
  { Tclass.Functions.UberTrait?(Functions.UberTrait$Au) } 
  Tag(Tclass.Functions.UberTrait?(Functions.UberTrait$Au))
       == Tagclass.Functions.UberTrait?
     && TagFamily(Tclass.Functions.UberTrait?(Functions.UberTrait$Au))
       == tytagFamily$UberTrait);

function Tclass.Functions.UberTrait?_0(Ty) : Ty;

// Tclass.Functions.UberTrait? injectivity 0
axiom (forall Functions.UberTrait$Au: Ty :: 
  { Tclass.Functions.UberTrait?(Functions.UberTrait$Au) } 
  Tclass.Functions.UberTrait?_0(Tclass.Functions.UberTrait?(Functions.UberTrait$Au))
     == Functions.UberTrait$Au);

// Box/unbox axiom for Tclass.Functions.UberTrait?
axiom (forall Functions.UberTrait$Au: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Functions.UberTrait?(Functions.UberTrait$Au)) } 
  $IsBox(bx, Tclass.Functions.UberTrait?(Functions.UberTrait$Au))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.Functions.UberTrait?(Functions.UberTrait$Au)));

function Tclass.Functions.InBetween?(Ty) : Ty;

const unique Tagclass.Functions.InBetween?: TyTag;

// Tclass.Functions.InBetween? Tag
axiom (forall Functions.InBetween$Ai: Ty :: 
  { Tclass.Functions.InBetween?(Functions.InBetween$Ai) } 
  Tag(Tclass.Functions.InBetween?(Functions.InBetween$Ai))
       == Tagclass.Functions.InBetween?
     && TagFamily(Tclass.Functions.InBetween?(Functions.InBetween$Ai))
       == tytagFamily$InBetween);

function Tclass.Functions.InBetween?_0(Ty) : Ty;

// Tclass.Functions.InBetween? injectivity 0
axiom (forall Functions.InBetween$Ai: Ty :: 
  { Tclass.Functions.InBetween?(Functions.InBetween$Ai) } 
  Tclass.Functions.InBetween?_0(Tclass.Functions.InBetween?(Functions.InBetween$Ai))
     == Functions.InBetween$Ai);

// Box/unbox axiom for Tclass.Functions.InBetween?
axiom (forall Functions.InBetween$Ai: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Functions.InBetween?(Functions.InBetween$Ai)) } 
  $IsBox(bx, Tclass.Functions.InBetween?(Functions.InBetween$Ai))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.Functions.InBetween?(Functions.InBetween$Ai)));

function Tclass.Functions.Trait?(Ty) : Ty;

const unique Tagclass.Functions.Trait?: TyTag;

// Tclass.Functions.Trait? Tag
axiom (forall Functions.Trait$At: Ty :: 
  { Tclass.Functions.Trait?(Functions.Trait$At) } 
  Tag(Tclass.Functions.Trait?(Functions.Trait$At)) == Tagclass.Functions.Trait?
     && TagFamily(Tclass.Functions.Trait?(Functions.Trait$At)) == tytagFamily$Trait);

function Tclass.Functions.Trait?_0(Ty) : Ty;

// Tclass.Functions.Trait? injectivity 0
axiom (forall Functions.Trait$At: Ty :: 
  { Tclass.Functions.Trait?(Functions.Trait$At) } 
  Tclass.Functions.Trait?_0(Tclass.Functions.Trait?(Functions.Trait$At))
     == Functions.Trait$At);

// Box/unbox axiom for Tclass.Functions.Trait?
axiom (forall Functions.Trait$At: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Functions.Trait?(Functions.Trait$At)) } 
  $IsBox(bx, Tclass.Functions.Trait?(Functions.Trait$At))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.Functions.Trait?(Functions.Trait$At)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Functions.Test (correctness)"} Impl$$Functions.__default.Test(Functions._default.Test$X: Ty, Functions._default.Test$Y: Ty, x#0: Box, y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass.Functions.Class(Functions._default.Test$X))
         && $IsAlloc(c#0, Tclass.Functions.Class(Functions._default.Test$X), $Heap);
  var $nw: ref;
  var defass#t#0: bool;
  var t#0: ref
     where defass#t#0
       ==> $Is(t#0, Tclass.Functions.Trait(Functions._default.Test$X))
         && $IsAlloc(t#0, Tclass.Functions.Trait(Functions._default.Test$X), $Heap);
  var defass#u#0: bool;
  var u#0: ref
     where defass#u#0
       ==> $Is(u#0, Tclass.Functions.UberTrait(Functions._default.Test$X))
         && $IsAlloc(u#0, Tclass.Functions.UberTrait(Functions._default.Test$X), $Heap);
  var defass#v#0: bool;
  var v#0: ref
     where defass#v#0
       ==> $Is(v#0, Tclass.Functions.InBetween(Functions._default.Test$X))
         && $IsAlloc(v#0, Tclass.Functions.InBetween(Functions._default.Test$X), $Heap);
  var d#0: DatatypeType
     where $Is(d#0, Tclass.Functions.Datatype(Functions._default.Test$X))
       && $IsAlloc(d#0, Tclass.Functions.Datatype(Functions._default.Test$X), $Heap);
  var n#0: int where LitInt(0) <= n#0 && n#0 < 500;
  var newtype$check#0: int;
  var b#0: Box
     where $IsBox(b#0, Functions._default.Test$Y)
       && $IsAllocBox(b#0, Functions._default.Test$Y, $Heap);
  var p#0: DatatypeType
     where $Is(p#0, Tclass._System.Tuple2(Functions._default.Test$X, Functions._default.Test$Y))
       && $IsAlloc(p#0, 
        Tclass._System.Tuple2(Functions._default.Test$X, Functions._default.Test$Y), 
        $Heap);
  var ##b#0: Box;
  var ##b#1: Box;
  var ##a#0: Box;
  var ##b#2: Box;
  var ##a#1: Box;
  var ##b#3: Box;
  var ##a#2: Box;
  var ##b#4: Box;
  var ##a#3: Box;
  var ##b#5: Box;
  var ##a#4: Box;
  var ##b#6: Box;
  var ##a#5: Box;
  var ##b#7: Box;
  var ##a#6: Box;
  var ##b#8: Box;
  var ##a#7: Box;
  var ##b#9: Box;
  var ##a#8: Box;
  var ##b#10: Box;
  var ##a#9: Box;
  var ##b#11: Box;
  var ##a#10: Box;
  var ##b#12: Box;
  var ##a#11: Box;
  var ##b#13: Box;
  var ##a#12: Box;
  var ##b#14: Box;
  var ##a#13: Box;
  var ##b#15: Box;
  var ##a#14: Box;
  var ##b#16: Box;
  var ##a#15: Box;
  var ##b#17: Box;
  var ##a#16: Box;
  var ##b#18: Box;
  var ##a#17: Box;
  var ##b#19: Box;
  var ##a#18: Box;
  var ##b#20: Box;
  var ##a#19: Box;
  var ##b#21: Box;
  var ##a#20: Box;
  var ##b#22: Box;
  var ##a#21: Box;
  var ##b#23: Box;
  var ##a#22: Box;
  var ##b#24: Box;
  var ##a#23: Box;
  var ##b#25: Box;
  var ##a#24: Box;
  var ##b#26: Box;

    // AddMethodImpl: Test, Impl$$Functions.__default.Test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(169,21)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass.Functions.Class?(Functions._default.Test$X));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(170,21)
    assume true;
    assert {:id "id151"} defass#c#0;
    assume true;
    t#0 := c#0;
    defass#t#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(171,25)
    assume true;
    assert {:id "id153"} defass#c#0;
    assume true;
    u#0 := c#0;
    defass#u#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(172,25)
    assume true;
    assert {:id "id155"} defass#c#0;
    assume true;
    v#0 := c#0;
    defass#v#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(173,24)
    assume true;
    assume true;
    d#0 := Lit(#Functions.Datatype.Dt0());
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(174,20)
    assume true;
    newtype$check#0 := LitInt(100);
    assert {:id "id158"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 500;
    assume true;
    n#0 := LitInt(100);
    havoc b#0 /* where $IsBox(b#0, Functions._default.Test$Y)
       && $IsAllocBox(b#0, Functions._default.Test$Y, $Heap) */, p#0 /* where $Is(p#0, Tclass._System.Tuple2(Functions._default.Test$X, Functions._default.Test$Y))
       && $IsAlloc(p#0, 
        Tclass._System.Tuple2(Functions._default.Test$X, Functions._default.Test$Y), 
        $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(177,7)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(n#0), Tclass.Functions.Newtype(), $Heap);
    ##b#0 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#0, Functions._default.Test$Y, $Heap);
    assume Functions.Newtype.InstanceN#canCall(Functions._default.Test$Y, n#0, y#0);
    assume Functions.Newtype.InstanceN#canCall(Functions._default.Test$Y, n#0, y#0);
    b#0 := Functions.Newtype.InstanceN(Functions._default.Test$Y, n#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(178,5)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(179,7)
    assume true;
    ##b#1 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#1, Functions._default.Test$Y, $Heap);
    assume Functions.Newtype.StaticN#canCall(Functions._default.Test$Y, y#0);
    assume Functions.Newtype.StaticN#canCall(Functions._default.Test$Y, y#0);
    b#0 := Functions.Newtype.StaticN(Functions._default.Test$Y, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(180,5)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(182,7)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(d#0), Tclass.Functions.Datatype(Functions._default.Test$X), $Heap);
    ##a#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#0, Functions._default.Test$X, $Heap);
    ##b#2 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#2, Functions._default.Test$Y, $Heap);
    assume Functions.Datatype.InstanceD#canCall(Functions._default.Test$X, Functions._default.Test$Y, d#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.Datatype.InstanceD(Functions._default.Test$X, Functions._default.Test$Y, d#0, x#0, y#0));
    assume Functions.Datatype.InstanceD#canCall(Functions._default.Test$X, Functions._default.Test$Y, d#0, x#0, y#0);
    p#0 := Functions.Datatype.InstanceD(Functions._default.Test$X, Functions._default.Test$Y, d#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(183,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(184,7)
    assume true;
    ##a#1 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#1, Functions._default.Test$X, $Heap);
    ##b#3 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#3, Functions._default.Test$Y, $Heap);
    assume Functions.Datatype.StaticD#canCall(Functions._default.Test$X, Functions._default.Test$Y, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.Datatype.StaticD(Functions._default.Test$X, Functions._default.Test$Y, x#0, y#0));
    assume Functions.Datatype.StaticD#canCall(Functions._default.Test$X, Functions._default.Test$Y, x#0, y#0);
    p#0 := Functions.Datatype.StaticD(Functions._default.Test$X, Functions._default.Test$Y, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(185,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(187,7)
    assume true;
    assert {:id "id164"} defass#u#0;
    assert {:id "id165"} u#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(u#0), Tclass.Functions.UberTrait?(Functions._default.Test$X), $Heap);
    ##a#2 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#2, Functions._default.Test$X, $Heap);
    ##b#4 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#4, Functions._default.Test$Y, $Heap);
    assume Functions.UberTrait.InstanceU0#canCall(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.UberTrait.InstanceU0(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0));
    assume Functions.UberTrait.InstanceU0#canCall(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0);
    p#0 := Functions.UberTrait.InstanceU0(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(188,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(189,7)
    assume true;
    assert {:id "id167"} defass#u#0;
    assert {:id "id168"} u#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(u#0), Tclass.Functions.UberTrait?(Functions._default.Test$X), $Heap);
    ##a#3 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#3, Functions._default.Test$X, $Heap);
    ##b#5 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#5, Functions._default.Test$Y, $Heap);
    assume Functions.UberTrait.InstanceU1#canCall(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.UberTrait.InstanceU1(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0));
    assume Functions.UberTrait.InstanceU1#canCall(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0);
    p#0 := Functions.UberTrait.InstanceU1(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(190,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(191,7)
    assume true;
    assert {:id "id170"} defass#u#0;
    assert {:id "id171"} u#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(u#0), Tclass.Functions.UberTrait?(Functions._default.Test$X), $Heap);
    ##a#4 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#4, Functions._default.Test$X, $Heap);
    ##b#6 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#6, Functions._default.Test$Y, $Heap);
    assume Functions.UberTrait.InstanceU2#canCall(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.UberTrait.InstanceU2(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0));
    assume Functions.UberTrait.InstanceU2#canCall(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0);
    p#0 := Functions.UberTrait.InstanceU2(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(192,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(193,7)
    assume true;
    assert {:id "id173"} defass#u#0;
    assert {:id "id174"} u#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(u#0), Tclass.Functions.UberTrait?(Functions._default.Test$X), $Heap);
    ##a#5 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#5, Functions._default.Test$X, $Heap);
    ##b#7 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#7, Functions._default.Test$Y, $Heap);
    assume Functions.UberTrait.InstanceU3#canCall(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.UberTrait.InstanceU3(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0));
    assume Functions.UberTrait.InstanceU3#canCall(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0);
    p#0 := Functions.UberTrait.InstanceU3(Functions._default.Test$X, Functions._default.Test$Y, u#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(194,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(196,7)
    assume true;
    assert {:id "id176"} defass#v#0;
    assert {:id "id177"} v#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(v#0), Tclass.Functions.UberTrait?(Functions._default.Test$X), $Heap);
    ##a#6 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#6, Functions._default.Test$X, $Heap);
    ##b#8 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#8, Functions._default.Test$Y, $Heap);
    assume Functions.UberTrait.InstanceU0#canCall(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.UberTrait.InstanceU0(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0));
    assume Functions.UberTrait.InstanceU0#canCall(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0);
    p#0 := Functions.UberTrait.InstanceU0(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(197,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(198,7)
    assume true;
    assert {:id "id179"} defass#v#0;
    assert {:id "id180"} v#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(v#0), Tclass.Functions.InBetween?(Functions._default.Test$X), $Heap);
    ##a#7 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#7, Functions._default.Test$X, $Heap);
    ##b#9 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#9, Functions._default.Test$Y, $Heap);
    assume Functions.InBetween.InstanceU1#canCall(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.InBetween.InstanceU1(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0));
    assume Functions.InBetween.InstanceU1#canCall(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0);
    p#0 := Functions.InBetween.InstanceU1(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(199,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(200,7)
    assume true;
    assert {:id "id182"} defass#v#0;
    assert {:id "id183"} v#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(v#0), Tclass.Functions.UberTrait?(Functions._default.Test$X), $Heap);
    ##a#8 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#8, Functions._default.Test$X, $Heap);
    ##b#10 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#10, Functions._default.Test$Y, $Heap);
    assume Functions.UberTrait.InstanceU2#canCall(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.UberTrait.InstanceU2(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0));
    assume Functions.UberTrait.InstanceU2#canCall(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0);
    p#0 := Functions.UberTrait.InstanceU2(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(201,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(202,7)
    assume true;
    assert {:id "id185"} defass#v#0;
    assert {:id "id186"} v#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(v#0), Tclass.Functions.UberTrait?(Functions._default.Test$X), $Heap);
    ##a#9 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#9, Functions._default.Test$X, $Heap);
    ##b#11 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#11, Functions._default.Test$Y, $Heap);
    assume Functions.UberTrait.InstanceU3#canCall(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.UberTrait.InstanceU3(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0));
    assume Functions.UberTrait.InstanceU3#canCall(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0);
    p#0 := Functions.UberTrait.InstanceU3(Functions._default.Test$X, Functions._default.Test$Y, v#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(203,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(205,7)
    assume true;
    assert {:id "id188"} defass#t#0;
    assert {:id "id189"} t#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(t#0), Tclass.Functions.UberTrait?(Functions._default.Test$X), $Heap);
    ##a#10 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#10, Functions._default.Test$X, $Heap);
    ##b#12 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#12, Functions._default.Test$Y, $Heap);
    assume Functions.UberTrait.InstanceU0#canCall(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.UberTrait.InstanceU0(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0));
    assume Functions.UberTrait.InstanceU0#canCall(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    p#0 := Functions.UberTrait.InstanceU0(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(206,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(207,7)
    assume true;
    assert {:id "id191"} defass#t#0;
    assert {:id "id192"} t#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(t#0), Tclass.Functions.InBetween?(Functions._default.Test$X), $Heap);
    ##a#11 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#11, Functions._default.Test$X, $Heap);
    ##b#13 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#13, Functions._default.Test$Y, $Heap);
    assume Functions.InBetween.InstanceU1#canCall(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.InBetween.InstanceU1(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0));
    assume Functions.InBetween.InstanceU1#canCall(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    p#0 := Functions.InBetween.InstanceU1(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(208,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(209,7)
    assume true;
    assert {:id "id194"} defass#t#0;
    assert {:id "id195"} t#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(t#0), Tclass.Functions.Trait?(Functions._default.Test$X), $Heap);
    ##a#12 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#12, Functions._default.Test$X, $Heap);
    ##b#14 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#14, Functions._default.Test$Y, $Heap);
    assume Functions.Trait.InstanceU2#canCall(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.Trait.InstanceU2(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0));
    assume Functions.Trait.InstanceU2#canCall(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    p#0 := Functions.Trait.InstanceU2(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(210,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(211,7)
    assume true;
    assert {:id "id197"} defass#t#0;
    assert {:id "id198"} t#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(t#0), Tclass.Functions.UberTrait?(Functions._default.Test$X), $Heap);
    ##a#13 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#13, Functions._default.Test$X, $Heap);
    ##b#15 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#15, Functions._default.Test$Y, $Heap);
    assume Functions.UberTrait.InstanceU3#canCall(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.UberTrait.InstanceU3(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0));
    assume Functions.UberTrait.InstanceU3#canCall(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    p#0 := Functions.UberTrait.InstanceU3(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(212,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(213,7)
    assume true;
    assert {:id "id200"} defass#t#0;
    assert {:id "id201"} t#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(t#0), Tclass.Functions.Trait?(Functions._default.Test$X), $Heap);
    ##a#14 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#14, Functions._default.Test$X, $Heap);
    ##b#16 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#16, Functions._default.Test$Y, $Heap);
    assume Functions.Trait.InstanceT#canCall(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.Trait.InstanceT(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0));
    assume Functions.Trait.InstanceT#canCall(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    p#0 := Functions.Trait.InstanceT(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(214,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(215,7)
    assume true;
    assert {:id "id203"} defass#t#0;
    assert {:id "id204"} t#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(t#0), Tclass.Functions.Trait?(Functions._default.Test$X), $Heap);
    ##a#15 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#15, Functions._default.Test$X, $Heap);
    ##b#17 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#17, Functions._default.Test$Y, $Heap);
    assume Functions.Trait.InstanceTBody#canCall(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.Trait.InstanceTBody(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0));
    assume Functions.Trait.InstanceTBody#canCall(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    p#0 := Functions.Trait.InstanceTBody(Functions._default.Test$X, Functions._default.Test$Y, t#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(216,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(217,7)
    assume true;
    ##a#16 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#16, Functions._default.Test$X, $Heap);
    ##b#18 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#18, Functions._default.Test$Y, $Heap);
    assume Functions.Trait.StaticT#canCall(Functions._default.Test$X, Functions._default.Test$Y, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.Trait.StaticT(Functions._default.Test$X, Functions._default.Test$Y, x#0, y#0));
    assume Functions.Trait.StaticT#canCall(Functions._default.Test$X, Functions._default.Test$Y, x#0, y#0);
    p#0 := Functions.Trait.StaticT(Functions._default.Test$X, Functions._default.Test$Y, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(218,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(220,7)
    assume true;
    assert {:id "id207"} defass#c#0;
    assert {:id "id208"} c#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c#0), Tclass.Functions.UberTrait?(Functions._default.Test$X), $Heap);
    ##a#17 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#17, Functions._default.Test$X, $Heap);
    ##b#19 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#19, Functions._default.Test$Y, $Heap);
    assume Functions.UberTrait.InstanceU0#canCall(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.UberTrait.InstanceU0(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0));
    assume Functions.UberTrait.InstanceU0#canCall(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    p#0 := Functions.UberTrait.InstanceU0(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(221,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(222,7)
    assume true;
    assert {:id "id210"} defass#c#0;
    assert {:id "id211"} c#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c#0), Tclass.Functions.InBetween?(Functions._default.Test$X), $Heap);
    ##a#18 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#18, Functions._default.Test$X, $Heap);
    ##b#20 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#20, Functions._default.Test$Y, $Heap);
    assume Functions.InBetween.InstanceU1#canCall(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.InBetween.InstanceU1(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0));
    assume Functions.InBetween.InstanceU1#canCall(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    p#0 := Functions.InBetween.InstanceU1(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(223,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(224,7)
    assume true;
    assert {:id "id213"} defass#c#0;
    assert {:id "id214"} c#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c#0), Tclass.Functions.Trait?(Functions._default.Test$X), $Heap);
    ##a#19 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#19, Functions._default.Test$X, $Heap);
    ##b#21 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#21, Functions._default.Test$Y, $Heap);
    assume Functions.Trait.InstanceU2#canCall(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.Trait.InstanceU2(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0));
    assume Functions.Trait.InstanceU2#canCall(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    p#0 := Functions.Trait.InstanceU2(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(225,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(226,7)
    assume true;
    assert {:id "id216"} defass#c#0;
    assert {:id "id217"} c#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c#0), Tclass.Functions.Class?(Functions._default.Test$X), $Heap);
    ##a#20 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#20, Functions._default.Test$X, $Heap);
    ##b#22 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#22, Functions._default.Test$Y, $Heap);
    assume Functions.Class.InstanceU3#canCall(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.Class.InstanceU3(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0));
    assume Functions.Class.InstanceU3#canCall(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    p#0 := Functions.Class.InstanceU3(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(227,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(228,7)
    assume true;
    assert {:id "id219"} defass#c#0;
    assert {:id "id220"} c#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c#0), Tclass.Functions.Class?(Functions._default.Test$X), $Heap);
    ##a#21 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#21, Functions._default.Test$X, $Heap);
    ##b#23 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#23, Functions._default.Test$Y, $Heap);
    assume Functions.Class.InstanceT#canCall(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.Class.InstanceT(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0));
    assume Functions.Class.InstanceT#canCall(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    p#0 := Functions.Class.InstanceT(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(229,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(230,7)
    assume true;
    assert {:id "id222"} defass#c#0;
    assert {:id "id223"} c#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c#0), Tclass.Functions.Trait?(Functions._default.Test$X), $Heap);
    ##a#22 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#22, Functions._default.Test$X, $Heap);
    ##b#24 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#24, Functions._default.Test$Y, $Heap);
    assume Functions.Trait.InstanceTBody#canCall(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.Trait.InstanceTBody(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0));
    assume Functions.Trait.InstanceTBody#canCall(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    p#0 := Functions.Trait.InstanceTBody(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(231,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(232,7)
    assume true;
    assert {:id "id225"} defass#c#0;
    assert {:id "id226"} c#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c#0), Tclass.Functions.Class?(Functions._default.Test$X), $Heap);
    ##a#23 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#23, Functions._default.Test$X, $Heap);
    ##b#25 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#25, Functions._default.Test$Y, $Heap);
    assume Functions.Class.InstanceC#canCall(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.Class.InstanceC(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0));
    assume Functions.Class.InstanceC#canCall(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    p#0 := Functions.Class.InstanceC(Functions._default.Test$X, Functions._default.Test$Y, c#0, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(233,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(234,7)
    assume true;
    ##a#24 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##a#24, Functions._default.Test$X, $Heap);
    ##b#26 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##b#26, Functions._default.Test$Y, $Heap);
    assume Functions.Class.StaticC#canCall(Functions._default.Test$X, Functions._default.Test$Y, x#0, y#0);
    assume _System.Tuple2.___hMake2_q(Functions.Class.StaticC(Functions._default.Test$X, Functions._default.Test$Y, x#0, y#0));
    assume Functions.Class.StaticC#canCall(Functions._default.Test$X, Functions._default.Test$Y, x#0, y#0);
    p#0 := Functions.Class.StaticC(Functions._default.Test$X, Functions._default.Test$Y, x#0, y#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/MoreAutoInit.dfy(235,5)
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
    assume _System.Tuple2.___hMake2_q(p#0);
    assume _System.Tuple2.___hMake2_q(p#0);
    assume true;
}



procedure {:verboseName "Functions.Newtype (well-formedness)"} CheckWellFormed$$Functions.Newtype(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Functions.Newtype (well-formedness)"} CheckWellFormed$$Functions.Newtype(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype Newtype
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id229"} LitInt(0) <= x#0 && x#0 < 500;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id230"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id231"} {:subsumption 0} Lit(0 < 500);
        assume false;
    }
}



// $Is axiom for newtype Functions.Newtype
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.Functions.Newtype()) } 
  $Is(x#0, Tclass.Functions.Newtype()) <==> LitInt(0) <= x#0 && x#0 < 500);

// $IsAlloc axiom for newtype Functions.Newtype
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.Functions.Newtype(), $h) } 
  $IsAlloc(x#0, Tclass.Functions.Newtype(), $h));

const unique class.Functions.Newtype: ClassName;

// function declaration for Functions.Newtype.InstanceN
function Functions.Newtype.InstanceN(Functions.Newtype.InstanceN$Bn: Ty, this: int, b#0: Box) : Box
uses {
// consequence axiom for Functions.Newtype.InstanceN
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.Newtype.InstanceN$Bn: Ty, this: int, b#0: Box :: 
    { Functions.Newtype.InstanceN(Functions.Newtype.InstanceN$Bn, this, b#0) } 
    Functions.Newtype.InstanceN#canCall(Functions.Newtype.InstanceN$Bn, this, b#0)
         || (0 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 500
           && $IsBox(b#0, Functions.Newtype.InstanceN$Bn))
       ==> $IsBox(Functions.Newtype.InstanceN(Functions.Newtype.InstanceN$Bn, this, b#0), 
        Functions.Newtype.InstanceN$Bn));
// alloc consequence axiom for Functions.Newtype.InstanceN
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, Functions.Newtype.InstanceN$Bn: Ty, this: int, b#0: Box :: 
    { $IsAllocBox(Functions.Newtype.InstanceN(Functions.Newtype.InstanceN$Bn, this, b#0), 
        Functions.Newtype.InstanceN$Bn, 
        $Heap) } 
    (Functions.Newtype.InstanceN#canCall(Functions.Newtype.InstanceN$Bn, this, b#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(b#0, Functions.Newtype.InstanceN$Bn)
             && $IsAllocBox(b#0, Functions.Newtype.InstanceN$Bn, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(Functions.Newtype.InstanceN(Functions.Newtype.InstanceN$Bn, this, b#0), 
        Functions.Newtype.InstanceN$Bn, 
        $Heap));
// definition axiom for Functions.Newtype.InstanceN (revealed)
axiom {:id "id232"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Newtype.InstanceN$Bn: Ty, this: int, b#0: Box :: 
    { Functions.Newtype.InstanceN(Functions.Newtype.InstanceN$Bn, this, b#0) } 
    Functions.Newtype.InstanceN#canCall(Functions.Newtype.InstanceN$Bn, this, b#0)
         || (0 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 500
           && $IsBox(b#0, Functions.Newtype.InstanceN$Bn))
       ==> Functions.Newtype.InstanceN(Functions.Newtype.InstanceN$Bn, this, b#0) == b#0);
// definition axiom for Functions.Newtype.InstanceN for decreasing-related literals (revealed)
axiom {:id "id233"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Newtype.InstanceN$Bn: Ty, this: int, b#0: Box :: 
    {:weight 3} { Functions.Newtype.InstanceN(Functions.Newtype.InstanceN$Bn, LitInt(this), b#0) } 
    Functions.Newtype.InstanceN#canCall(Functions.Newtype.InstanceN$Bn, LitInt(this), b#0)
         || (0 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 500
           && $IsBox(b#0, Functions.Newtype.InstanceN$Bn))
       ==> Functions.Newtype.InstanceN(Functions.Newtype.InstanceN$Bn, LitInt(this), b#0)
         == b#0);
// definition axiom for Functions.Newtype.InstanceN for all literals (revealed)
axiom {:id "id234"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Newtype.InstanceN$Bn: Ty, this: int, b#0: Box :: 
    {:weight 3} { Functions.Newtype.InstanceN(Functions.Newtype.InstanceN$Bn, LitInt(this), Lit(b#0)) } 
    Functions.Newtype.InstanceN#canCall(Functions.Newtype.InstanceN$Bn, LitInt(this), Lit(b#0))
         || (0 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 500
           && $IsBox(b#0, Functions.Newtype.InstanceN$Bn))
       ==> Functions.Newtype.InstanceN(Functions.Newtype.InstanceN$Bn, LitInt(this), Lit(b#0))
         == Lit(b#0));
}

function Functions.Newtype.InstanceN#canCall(Functions.Newtype.InstanceN$Bn: Ty, this: int, b#0: Box) : bool;

function Functions.Newtype.InstanceN#requires(Ty, int, Box) : bool;

// #requires axiom for Functions.Newtype.InstanceN
axiom (forall Functions.Newtype.InstanceN$Bn: Ty, this: int, b#0: Box :: 
  { Functions.Newtype.InstanceN#requires(Functions.Newtype.InstanceN$Bn, this, b#0) } 
  LitInt(0) <= this && this < 500 && $IsBox(b#0, Functions.Newtype.InstanceN$Bn)
     ==> Functions.Newtype.InstanceN#requires(Functions.Newtype.InstanceN$Bn, this, b#0)
       == true);

procedure {:verboseName "Functions.Newtype.InstanceN (well-formedness)"} CheckWellformed$$Functions.Newtype.InstanceN(Functions.Newtype.InstanceN$Bn: Ty, 
    this: int where LitInt(0) <= this && this < 500, 
    b#0: Box where $IsBox(b#0, Functions.Newtype.InstanceN$Bn));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Functions.Newtype.StaticN
function Functions.Newtype.StaticN(Functions.Newtype.StaticN$Bn: Ty, b#0: Box) : Box
uses {
// consequence axiom for Functions.Newtype.StaticN
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.Newtype.StaticN$Bn: Ty, b#0: Box :: 
    { Functions.Newtype.StaticN(Functions.Newtype.StaticN$Bn, b#0) } 
    Functions.Newtype.StaticN#canCall(Functions.Newtype.StaticN$Bn, b#0)
         || (0 < $FunctionContextHeight && $IsBox(b#0, Functions.Newtype.StaticN$Bn))
       ==> $IsBox(Functions.Newtype.StaticN(Functions.Newtype.StaticN$Bn, b#0), 
        Functions.Newtype.StaticN$Bn));
// alloc consequence axiom for Functions.Newtype.StaticN
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, Functions.Newtype.StaticN$Bn: Ty, b#0: Box :: 
    { $IsAllocBox(Functions.Newtype.StaticN(Functions.Newtype.StaticN$Bn, b#0), 
        Functions.Newtype.StaticN$Bn, 
        $Heap) } 
    (Functions.Newtype.StaticN#canCall(Functions.Newtype.StaticN$Bn, b#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(b#0, Functions.Newtype.StaticN$Bn)
             && $IsAllocBox(b#0, Functions.Newtype.StaticN$Bn, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(Functions.Newtype.StaticN(Functions.Newtype.StaticN$Bn, b#0), 
        Functions.Newtype.StaticN$Bn, 
        $Heap));
// definition axiom for Functions.Newtype.StaticN (revealed)
axiom {:id "id236"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Newtype.StaticN$Bn: Ty, b#0: Box :: 
    { Functions.Newtype.StaticN(Functions.Newtype.StaticN$Bn, b#0) } 
    Functions.Newtype.StaticN#canCall(Functions.Newtype.StaticN$Bn, b#0)
         || (0 < $FunctionContextHeight && $IsBox(b#0, Functions.Newtype.StaticN$Bn))
       ==> Functions.Newtype.StaticN(Functions.Newtype.StaticN$Bn, b#0) == b#0);
// definition axiom for Functions.Newtype.StaticN for all literals (revealed)
axiom {:id "id237"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Newtype.StaticN$Bn: Ty, b#0: Box :: 
    {:weight 3} { Functions.Newtype.StaticN(Functions.Newtype.StaticN$Bn, Lit(b#0)) } 
    Functions.Newtype.StaticN#canCall(Functions.Newtype.StaticN$Bn, Lit(b#0))
         || (0 < $FunctionContextHeight && $IsBox(b#0, Functions.Newtype.StaticN$Bn))
       ==> Functions.Newtype.StaticN(Functions.Newtype.StaticN$Bn, Lit(b#0)) == Lit(b#0));
}

function Functions.Newtype.StaticN#canCall(Functions.Newtype.StaticN$Bn: Ty, b#0: Box) : bool;

function Functions.Newtype.StaticN#requires(Ty, Box) : bool;

// #requires axiom for Functions.Newtype.StaticN
axiom (forall Functions.Newtype.StaticN$Bn: Ty, b#0: Box :: 
  { Functions.Newtype.StaticN#requires(Functions.Newtype.StaticN$Bn, b#0) } 
  $IsBox(b#0, Functions.Newtype.StaticN$Bn)
     ==> Functions.Newtype.StaticN#requires(Functions.Newtype.StaticN$Bn, b#0) == true);

procedure {:verboseName "Functions.Newtype.StaticN (well-formedness)"} CheckWellformed$$Functions.Newtype.StaticN(Functions.Newtype.StaticN$Bn: Ty, 
    b#0: Box where $IsBox(b#0, Functions.Newtype.StaticN$Bn));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// Constructor function declaration
function #Functions.Datatype.Dt0() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Functions.Datatype.Dt0()) == ##Functions.Datatype.Dt0;
// Constructor literal
axiom #Functions.Datatype.Dt0() == Lit(#Functions.Datatype.Dt0());
}

const unique ##Functions.Datatype.Dt0: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Functions.Datatype.Dt0()) == ##Functions.Datatype.Dt0;
}

function Functions.Datatype.Dt0_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Functions.Datatype.Dt0_q(d) } 
  Functions.Datatype.Dt0_q(d) <==> DatatypeCtorId(d) == ##Functions.Datatype.Dt0);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Functions.Datatype.Dt0_q(d) } 
  Functions.Datatype.Dt0_q(d) ==> d == #Functions.Datatype.Dt0());

// Constructor $Is
axiom (forall Functions.Datatype$Ad: Ty :: 
  { $Is(#Functions.Datatype.Dt0(), Tclass.Functions.Datatype(Functions.Datatype$Ad)) } 
  $Is(#Functions.Datatype.Dt0(), Tclass.Functions.Datatype(Functions.Datatype$Ad)));

// Constructor $IsAlloc
axiom (forall Functions.Datatype$Ad: Ty, $h: Heap :: 
  { $IsAlloc(#Functions.Datatype.Dt0(), Tclass.Functions.Datatype(Functions.Datatype$Ad), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Functions.Datatype.Dt0(), Tclass.Functions.Datatype(Functions.Datatype$Ad), $h));

// Constructor function declaration
function #Functions.Datatype.Dt1() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Functions.Datatype.Dt1()) == ##Functions.Datatype.Dt1;
// Constructor literal
axiom #Functions.Datatype.Dt1() == Lit(#Functions.Datatype.Dt1());
}

const unique ##Functions.Datatype.Dt1: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Functions.Datatype.Dt1()) == ##Functions.Datatype.Dt1;
}

function Functions.Datatype.Dt1_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Functions.Datatype.Dt1_q(d) } 
  Functions.Datatype.Dt1_q(d) <==> DatatypeCtorId(d) == ##Functions.Datatype.Dt1);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Functions.Datatype.Dt1_q(d) } 
  Functions.Datatype.Dt1_q(d) ==> d == #Functions.Datatype.Dt1());

// Constructor $Is
axiom (forall Functions.Datatype$Ad: Ty :: 
  { $Is(#Functions.Datatype.Dt1(), Tclass.Functions.Datatype(Functions.Datatype$Ad)) } 
  $Is(#Functions.Datatype.Dt1(), Tclass.Functions.Datatype(Functions.Datatype$Ad)));

// Constructor $IsAlloc
axiom (forall Functions.Datatype$Ad: Ty, $h: Heap :: 
  { $IsAlloc(#Functions.Datatype.Dt1(), Tclass.Functions.Datatype(Functions.Datatype$Ad), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Functions.Datatype.Dt1(), Tclass.Functions.Datatype(Functions.Datatype$Ad), $h));

// Depth-one case-split function
function $IsA#Functions.Datatype(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Functions.Datatype(d) } 
  $IsA#Functions.Datatype(d)
     ==> Functions.Datatype.Dt0_q(d) || Functions.Datatype.Dt1_q(d));

// Questionmark data type disjunctivity
axiom (forall Functions.Datatype$Ad: Ty, d: DatatypeType :: 
  { Functions.Datatype.Dt1_q(d), $Is(d, Tclass.Functions.Datatype(Functions.Datatype$Ad)) } 
    { Functions.Datatype.Dt0_q(d), $Is(d, Tclass.Functions.Datatype(Functions.Datatype$Ad)) } 
  $Is(d, Tclass.Functions.Datatype(Functions.Datatype$Ad))
     ==> Functions.Datatype.Dt0_q(d) || Functions.Datatype.Dt1_q(d));

// Datatype extensional equality declaration
function Functions.Datatype#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Functions.Datatype.Dt0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Functions.Datatype#Equal(a, b), Functions.Datatype.Dt0_q(a) } 
    { Functions.Datatype#Equal(a, b), Functions.Datatype.Dt0_q(b) } 
  Functions.Datatype.Dt0_q(a) && Functions.Datatype.Dt0_q(b)
     ==> Functions.Datatype#Equal(a, b));

// Datatype extensional equality definition: #Functions.Datatype.Dt1
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Functions.Datatype#Equal(a, b), Functions.Datatype.Dt1_q(a) } 
    { Functions.Datatype#Equal(a, b), Functions.Datatype.Dt1_q(b) } 
  Functions.Datatype.Dt1_q(a) && Functions.Datatype.Dt1_q(b)
     ==> Functions.Datatype#Equal(a, b));

// Datatype extensionality axiom: Functions.Datatype
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Functions.Datatype#Equal(a, b) } 
  Functions.Datatype#Equal(a, b) <==> a == b);

const unique class.Functions.Datatype: ClassName;

// function declaration for Functions.Datatype.InstanceD
function Functions.Datatype.InstanceD(Functions.Datatype$Ad: Ty, 
    Functions.Datatype.InstanceD$Bd: Ty, 
    this: DatatypeType, 
    a#0: Box, 
    b#0: Box)
   : DatatypeType
uses {
// consequence axiom for Functions.Datatype.InstanceD
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.Datatype$Ad: Ty, 
      Functions.Datatype.InstanceD$Bd: Ty, 
      this: DatatypeType, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.Datatype.InstanceD(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd, this, a#0, b#0) } 
    Functions.Datatype.InstanceD#canCall(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Functions.Datatype(Functions.Datatype$Ad))
           && $IsBox(a#0, Functions.Datatype$Ad)
           && $IsBox(b#0, Functions.Datatype.InstanceD$Bd))
       ==> $Is(Functions.Datatype.InstanceD(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd)));
// alloc consequence axiom for Functions.Datatype.InstanceD
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Functions.Datatype$Ad: Ty, 
      Functions.Datatype.InstanceD$Bd: Ty, 
      this: DatatypeType, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(Functions.Datatype.InstanceD(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd), 
        $Heap) } 
    (Functions.Datatype.InstanceD#canCall(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd, this, a#0, b#0)
           || (0 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass.Functions.Datatype(Functions.Datatype$Ad), $Heap)
             && 
            $IsBox(a#0, Functions.Datatype$Ad)
             && $IsAllocBox(a#0, Functions.Datatype$Ad, $Heap)
             && 
            $IsBox(b#0, Functions.Datatype.InstanceD$Bd)
             && $IsAllocBox(b#0, Functions.Datatype.InstanceD$Bd, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Functions.Datatype.InstanceD(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd), 
        $Heap));
// definition axiom for Functions.Datatype.InstanceD (revealed)
axiom {:id "id239"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Datatype$Ad: Ty, 
      Functions.Datatype.InstanceD$Bd: Ty, 
      this: DatatypeType, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.Datatype.InstanceD(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd, this, a#0, b#0) } 
    Functions.Datatype.InstanceD#canCall(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Functions.Datatype(Functions.Datatype$Ad))
           && $IsBox(a#0, Functions.Datatype$Ad)
           && $IsBox(b#0, Functions.Datatype.InstanceD$Bd))
       ==> Functions.Datatype.InstanceD(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd, this, a#0, b#0)
         == #_System._tuple#2._#Make2(a#0, b#0));
// definition axiom for Functions.Datatype.InstanceD for decreasing-related literals (revealed)
axiom {:id "id240"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Datatype$Ad: Ty, 
      Functions.Datatype.InstanceD$Bd: Ty, 
      this: DatatypeType, 
      a#0: Box, 
      b#0: Box :: 
    {:weight 3} { Functions.Datatype.InstanceD(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd, Lit(this), a#0, b#0) } 
    Functions.Datatype.InstanceD#canCall(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd, Lit(this), a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Functions.Datatype(Functions.Datatype$Ad))
           && $IsBox(a#0, Functions.Datatype$Ad)
           && $IsBox(b#0, Functions.Datatype.InstanceD$Bd))
       ==> Functions.Datatype.InstanceD(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd, Lit(this), a#0, b#0)
         == #_System._tuple#2._#Make2(a#0, b#0));
// definition axiom for Functions.Datatype.InstanceD for all literals (revealed)
axiom {:id "id241"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Datatype$Ad: Ty, 
      Functions.Datatype.InstanceD$Bd: Ty, 
      this: DatatypeType, 
      a#0: Box, 
      b#0: Box :: 
    {:weight 3} { Functions.Datatype.InstanceD(Functions.Datatype$Ad, 
        Functions.Datatype.InstanceD$Bd, 
        Lit(this), 
        Lit(a#0), 
        Lit(b#0)) } 
    Functions.Datatype.InstanceD#canCall(Functions.Datatype$Ad, 
          Functions.Datatype.InstanceD$Bd, 
          Lit(this), 
          Lit(a#0), 
          Lit(b#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass.Functions.Datatype(Functions.Datatype$Ad))
           && $IsBox(a#0, Functions.Datatype$Ad)
           && $IsBox(b#0, Functions.Datatype.InstanceD$Bd))
       ==> Functions.Datatype.InstanceD(Functions.Datatype$Ad, 
          Functions.Datatype.InstanceD$Bd, 
          Lit(this), 
          Lit(a#0), 
          Lit(b#0))
         == Lit(#_System._tuple#2._#Make2(Lit(a#0), Lit(b#0))));
}

function Functions.Datatype.InstanceD#canCall(Functions.Datatype$Ad: Ty, 
    Functions.Datatype.InstanceD$Bd: Ty, 
    this: DatatypeType, 
    a#0: Box, 
    b#0: Box)
   : bool;

function Functions.Datatype.InstanceD#requires(Ty, Ty, DatatypeType, Box, Box) : bool;

// #requires axiom for Functions.Datatype.InstanceD
axiom (forall Functions.Datatype$Ad: Ty, 
    Functions.Datatype.InstanceD$Bd: Ty, 
    this: DatatypeType, 
    a#0: Box, 
    b#0: Box :: 
  { Functions.Datatype.InstanceD#requires(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd, this, a#0, b#0) } 
  $Is(this, Tclass.Functions.Datatype(Functions.Datatype$Ad))
       && $IsBox(a#0, Functions.Datatype$Ad)
       && $IsBox(b#0, Functions.Datatype.InstanceD$Bd)
     ==> Functions.Datatype.InstanceD#requires(Functions.Datatype$Ad, Functions.Datatype.InstanceD$Bd, this, a#0, b#0)
       == true);

procedure {:verboseName "Functions.Datatype.InstanceD (well-formedness)"} CheckWellformed$$Functions.Datatype.InstanceD(Functions.Datatype$Ad: Ty, 
    Functions.Datatype.InstanceD$Bd: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.Functions.Datatype(Functions.Datatype$Ad))
         && $IsAlloc(this, Tclass.Functions.Datatype(Functions.Datatype$Ad), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.Datatype$Ad), 
    b#0: Box where $IsBox(b#0, Functions.Datatype.InstanceD$Bd));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Functions.Datatype.StaticD
function Functions.Datatype.StaticD(Functions.Datatype$Ad: Ty, Functions.Datatype.StaticD$Bd: Ty, a#0: Box, b#0: Box)
   : DatatypeType
uses {
// consequence axiom for Functions.Datatype.StaticD
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.Datatype$Ad: Ty, Functions.Datatype.StaticD$Bd: Ty, a#0: Box, b#0: Box :: 
    { Functions.Datatype.StaticD(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd, a#0, b#0) } 
    Functions.Datatype.StaticD#canCall(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a#0, Functions.Datatype$Ad)
           && $IsBox(b#0, Functions.Datatype.StaticD$Bd))
       ==> $Is(Functions.Datatype.StaticD(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd)));
// alloc consequence axiom for Functions.Datatype.StaticD
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Functions.Datatype$Ad: Ty, 
      Functions.Datatype.StaticD$Bd: Ty, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(Functions.Datatype.StaticD(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd), 
        $Heap) } 
    (Functions.Datatype.StaticD#canCall(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd, a#0, b#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(a#0, Functions.Datatype$Ad)
             && $IsAllocBox(a#0, Functions.Datatype$Ad, $Heap)
             && 
            $IsBox(b#0, Functions.Datatype.StaticD$Bd)
             && $IsAllocBox(b#0, Functions.Datatype.StaticD$Bd, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Functions.Datatype.StaticD(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd), 
        $Heap));
// definition axiom for Functions.Datatype.StaticD (revealed)
axiom {:id "id243"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Datatype$Ad: Ty, Functions.Datatype.StaticD$Bd: Ty, a#0: Box, b#0: Box :: 
    { Functions.Datatype.StaticD(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd, a#0, b#0) } 
    Functions.Datatype.StaticD#canCall(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a#0, Functions.Datatype$Ad)
           && $IsBox(b#0, Functions.Datatype.StaticD$Bd))
       ==> Functions.Datatype.StaticD(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd, a#0, b#0)
         == #_System._tuple#2._#Make2(a#0, b#0));
// definition axiom for Functions.Datatype.StaticD for all literals (revealed)
axiom {:id "id244"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Datatype$Ad: Ty, Functions.Datatype.StaticD$Bd: Ty, a#0: Box, b#0: Box :: 
    {:weight 3} { Functions.Datatype.StaticD(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd, Lit(a#0), Lit(b#0)) } 
    Functions.Datatype.StaticD#canCall(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd, Lit(a#0), Lit(b#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a#0, Functions.Datatype$Ad)
           && $IsBox(b#0, Functions.Datatype.StaticD$Bd))
       ==> Functions.Datatype.StaticD(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd, Lit(a#0), Lit(b#0))
         == Lit(#_System._tuple#2._#Make2(Lit(a#0), Lit(b#0))));
}

function Functions.Datatype.StaticD#canCall(Functions.Datatype$Ad: Ty, Functions.Datatype.StaticD$Bd: Ty, a#0: Box, b#0: Box)
   : bool;

function Functions.Datatype.StaticD#requires(Ty, Ty, Box, Box) : bool;

// #requires axiom for Functions.Datatype.StaticD
axiom (forall Functions.Datatype$Ad: Ty, Functions.Datatype.StaticD$Bd: Ty, a#0: Box, b#0: Box :: 
  { Functions.Datatype.StaticD#requires(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd, a#0, b#0) } 
  $IsBox(a#0, Functions.Datatype$Ad) && $IsBox(b#0, Functions.Datatype.StaticD$Bd)
     ==> Functions.Datatype.StaticD#requires(Functions.Datatype$Ad, Functions.Datatype.StaticD$Bd, a#0, b#0)
       == true);

procedure {:verboseName "Functions.Datatype.StaticD (well-formedness)"} CheckWellformed$$Functions.Datatype.StaticD(Functions.Datatype$Ad: Ty, 
    Functions.Datatype.StaticD$Bd: Ty, 
    a#0: Box where $IsBox(a#0, Functions.Datatype$Ad), 
    b#0: Box where $IsBox(b#0, Functions.Datatype.StaticD$Bd));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



const unique class.Functions.UberTrait?: ClassName;

// $Is axiom for trait UberTrait
axiom (forall Functions.UberTrait$Au: Ty, $o: ref :: 
  { $Is($o, Tclass.Functions.UberTrait?(Functions.UberTrait$Au)) } 
  $Is($o, Tclass.Functions.UberTrait?(Functions.UberTrait$Au))
     <==> $o == null || implements$Functions.UberTrait(dtype($o), Functions.UberTrait$Au));

// $IsAlloc axiom for trait UberTrait
axiom (forall Functions.UberTrait$Au: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Functions.UberTrait?(Functions.UberTrait$Au), $h) } 
  $IsAlloc($o, Tclass.Functions.UberTrait?(Functions.UberTrait$Au), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$Functions.UberTrait(ty: Ty, Functions.UberTrait$Au: Ty) : bool;

// function declaration for Functions.UberTrait.InstanceU0
function Functions.UberTrait.InstanceU0(Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU0$Bu: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : DatatypeType
uses {
// consequence axiom for Functions.UberTrait.InstanceU0
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.UberTrait$Au: Ty, 
      Functions.UberTrait.InstanceU0$Bu: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.UberTrait.InstanceU0(Functions.UberTrait$Au, Functions.UberTrait.InstanceU0$Bu, this, a#0, b#0) } 
    Functions.UberTrait.InstanceU0#canCall(Functions.UberTrait$Au, Functions.UberTrait.InstanceU0$Bu, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
           && $IsBox(a#0, Functions.UberTrait$Au)
           && $IsBox(b#0, Functions.UberTrait.InstanceU0$Bu))
       ==> $Is(Functions.UberTrait.InstanceU0(Functions.UberTrait$Au, Functions.UberTrait.InstanceU0$Bu, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU0$Bu)));
// alloc consequence axiom for Functions.UberTrait.InstanceU0
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Functions.UberTrait$Au: Ty, 
      Functions.UberTrait.InstanceU0$Bu: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(Functions.UberTrait.InstanceU0(Functions.UberTrait$Au, Functions.UberTrait.InstanceU0$Bu, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU0$Bu), 
        $Heap) } 
    (Functions.UberTrait.InstanceU0#canCall(Functions.UberTrait$Au, Functions.UberTrait.InstanceU0$Bu, this, a#0, b#0)
           || (0 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au), $Heap)
             && 
            $IsBox(a#0, Functions.UberTrait$Au)
             && $IsAllocBox(a#0, Functions.UberTrait$Au, $Heap)
             && 
            $IsBox(b#0, Functions.UberTrait.InstanceU0$Bu)
             && $IsAllocBox(b#0, Functions.UberTrait.InstanceU0$Bu, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Functions.UberTrait.InstanceU0(Functions.UberTrait$Au, Functions.UberTrait.InstanceU0$Bu, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU0$Bu), 
        $Heap));
// definition axiom for Functions.UberTrait.InstanceU0 (revealed)
axiom {:id "id246"} 0 <= $FunctionContextHeight
   ==> (forall Functions.UberTrait$Au: Ty, 
      Functions.UberTrait.InstanceU0$Bu: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.UberTrait.InstanceU0(Functions.UberTrait$Au, Functions.UberTrait.InstanceU0$Bu, this, a#0, b#0) } 
    Functions.UberTrait.InstanceU0#canCall(Functions.UberTrait$Au, Functions.UberTrait.InstanceU0$Bu, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
           && $IsBox(a#0, Functions.UberTrait$Au)
           && $IsBox(b#0, Functions.UberTrait.InstanceU0$Bu))
       ==> Functions.UberTrait.InstanceU0(Functions.UberTrait$Au, Functions.UberTrait.InstanceU0$Bu, this, a#0, b#0)
         == #_System._tuple#2._#Make2(a#0, b#0));
// definition axiom for Functions.UberTrait.InstanceU0 for all literals (revealed)
axiom {:id "id247"} 0 <= $FunctionContextHeight
   ==> (forall Functions.UberTrait$Au: Ty, 
      Functions.UberTrait.InstanceU0$Bu: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    {:weight 3} { Functions.UberTrait.InstanceU0(Functions.UberTrait$Au, 
        Functions.UberTrait.InstanceU0$Bu, 
        Lit(this), 
        Lit(a#0), 
        Lit(b#0)) } 
    Functions.UberTrait.InstanceU0#canCall(Functions.UberTrait$Au, 
          Functions.UberTrait.InstanceU0$Bu, 
          Lit(this), 
          Lit(a#0), 
          Lit(b#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
           && $IsBox(a#0, Functions.UberTrait$Au)
           && $IsBox(b#0, Functions.UberTrait.InstanceU0$Bu))
       ==> Functions.UberTrait.InstanceU0(Functions.UberTrait$Au, 
          Functions.UberTrait.InstanceU0$Bu, 
          Lit(this), 
          Lit(a#0), 
          Lit(b#0))
         == Lit(#_System._tuple#2._#Make2(Lit(a#0), Lit(b#0))));
}

function Functions.UberTrait.InstanceU0#canCall(Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU0$Bu: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : bool;

function Functions.UberTrait.InstanceU0#requires(Ty, Ty, ref, Box, Box) : bool;

// #requires axiom for Functions.UberTrait.InstanceU0
axiom (forall Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU0$Bu: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box :: 
  { Functions.UberTrait.InstanceU0#requires(Functions.UberTrait$Au, Functions.UberTrait.InstanceU0$Bu, this, a#0, b#0) } 
  this != null
       && $Is(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
       && $IsBox(a#0, Functions.UberTrait$Au)
       && $IsBox(b#0, Functions.UberTrait.InstanceU0$Bu)
     ==> Functions.UberTrait.InstanceU0#requires(Functions.UberTrait$Au, Functions.UberTrait.InstanceU0$Bu, this, a#0, b#0)
       == true);

procedure {:verboseName "Functions.UberTrait.InstanceU0 (well-formedness)"} CheckWellformed$$Functions.UberTrait.InstanceU0(Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU0$Bu: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
         && $IsAlloc(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.UberTrait$Au), 
    b#0: Box where $IsBox(b#0, Functions.UberTrait.InstanceU0$Bu));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Functions.UberTrait.InstanceU1
function Functions.UberTrait.InstanceU1(Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU1$Bu: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : DatatypeType
uses {
// consequence axiom for Functions.UberTrait.InstanceU1
axiom 1 <= $FunctionContextHeight
   ==> (forall Functions.UberTrait$Au: Ty, 
      Functions.UberTrait.InstanceU1$Bu: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.UberTrait.InstanceU1(Functions.UberTrait$Au, Functions.UberTrait.InstanceU1$Bu, this, a#0, b#0) } 
    Functions.UberTrait.InstanceU1#canCall(Functions.UberTrait$Au, Functions.UberTrait.InstanceU1$Bu, this, a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
           && $IsBox(a#0, Functions.UberTrait$Au)
           && $IsBox(b#0, Functions.UberTrait.InstanceU1$Bu))
       ==> $Is(Functions.UberTrait.InstanceU1(Functions.UberTrait$Au, Functions.UberTrait.InstanceU1$Bu, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU1$Bu)));
// alloc consequence axiom for Functions.UberTrait.InstanceU1
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Functions.UberTrait$Au: Ty, 
      Functions.UberTrait.InstanceU1$Bu: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(Functions.UberTrait.InstanceU1(Functions.UberTrait$Au, Functions.UberTrait.InstanceU1$Bu, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU1$Bu), 
        $Heap) } 
    (Functions.UberTrait.InstanceU1#canCall(Functions.UberTrait$Au, Functions.UberTrait.InstanceU1$Bu, this, a#0, b#0)
           || (1 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au), $Heap)
             && 
            $IsBox(a#0, Functions.UberTrait$Au)
             && $IsAllocBox(a#0, Functions.UberTrait$Au, $Heap)
             && 
            $IsBox(b#0, Functions.UberTrait.InstanceU1$Bu)
             && $IsAllocBox(b#0, Functions.UberTrait.InstanceU1$Bu, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Functions.UberTrait.InstanceU1(Functions.UberTrait$Au, Functions.UberTrait.InstanceU1$Bu, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU1$Bu), 
        $Heap));
}

function Functions.UberTrait.InstanceU1#canCall(Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU1$Bu: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : bool;

function Functions.UberTrait.InstanceU1#requires(Ty, Ty, ref, Box, Box) : bool;

// #requires axiom for Functions.UberTrait.InstanceU1
axiom (forall Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU1$Bu: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box :: 
  { Functions.UberTrait.InstanceU1#requires(Functions.UberTrait$Au, Functions.UberTrait.InstanceU1$Bu, this, a#0, b#0) } 
  this != null
       && $Is(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
       && $IsBox(a#0, Functions.UberTrait$Au)
       && $IsBox(b#0, Functions.UberTrait.InstanceU1$Bu)
     ==> Functions.UberTrait.InstanceU1#requires(Functions.UberTrait$Au, Functions.UberTrait.InstanceU1$Bu, this, a#0, b#0)
       == true);

procedure {:verboseName "Functions.UberTrait.InstanceU1 (well-formedness)"} CheckWellformed$$Functions.UberTrait.InstanceU1(Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU1$Bu: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
         && $IsAlloc(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.UberTrait$Au), 
    b#0: Box where $IsBox(b#0, Functions.UberTrait.InstanceU1$Bu));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Functions.UberTrait.InstanceU2
function Functions.UberTrait.InstanceU2(Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU2$Bu: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : DatatypeType
uses {
// consequence axiom for Functions.UberTrait.InstanceU2
axiom 1 <= $FunctionContextHeight
   ==> (forall Functions.UberTrait$Au: Ty, 
      Functions.UberTrait.InstanceU2$Bu: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.UberTrait.InstanceU2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU2$Bu, this, a#0, b#0) } 
    Functions.UberTrait.InstanceU2#canCall(Functions.UberTrait$Au, Functions.UberTrait.InstanceU2$Bu, this, a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
           && $IsBox(a#0, Functions.UberTrait$Au)
           && $IsBox(b#0, Functions.UberTrait.InstanceU2$Bu))
       ==> $Is(Functions.UberTrait.InstanceU2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU2$Bu, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU2$Bu)));
// alloc consequence axiom for Functions.UberTrait.InstanceU2
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Functions.UberTrait$Au: Ty, 
      Functions.UberTrait.InstanceU2$Bu: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(Functions.UberTrait.InstanceU2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU2$Bu, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU2$Bu), 
        $Heap) } 
    (Functions.UberTrait.InstanceU2#canCall(Functions.UberTrait$Au, Functions.UberTrait.InstanceU2$Bu, this, a#0, b#0)
           || (1 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au), $Heap)
             && 
            $IsBox(a#0, Functions.UberTrait$Au)
             && $IsAllocBox(a#0, Functions.UberTrait$Au, $Heap)
             && 
            $IsBox(b#0, Functions.UberTrait.InstanceU2$Bu)
             && $IsAllocBox(b#0, Functions.UberTrait.InstanceU2$Bu, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Functions.UberTrait.InstanceU2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU2$Bu, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU2$Bu), 
        $Heap));
}

function Functions.UberTrait.InstanceU2#canCall(Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU2$Bu: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : bool;

function Functions.UberTrait.InstanceU2#requires(Ty, Ty, ref, Box, Box) : bool;

// #requires axiom for Functions.UberTrait.InstanceU2
axiom (forall Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU2$Bu: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box :: 
  { Functions.UberTrait.InstanceU2#requires(Functions.UberTrait$Au, Functions.UberTrait.InstanceU2$Bu, this, a#0, b#0) } 
  this != null
       && $Is(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
       && $IsBox(a#0, Functions.UberTrait$Au)
       && $IsBox(b#0, Functions.UberTrait.InstanceU2$Bu)
     ==> Functions.UberTrait.InstanceU2#requires(Functions.UberTrait$Au, Functions.UberTrait.InstanceU2$Bu, this, a#0, b#0)
       == true);

procedure {:verboseName "Functions.UberTrait.InstanceU2 (well-formedness)"} CheckWellformed$$Functions.UberTrait.InstanceU2(Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU2$Bu: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
         && $IsAlloc(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.UberTrait$Au), 
    b#0: Box where $IsBox(b#0, Functions.UberTrait.InstanceU2$Bu));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Functions.UberTrait.InstanceU3
function Functions.UberTrait.InstanceU3(Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU3$Bu: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : DatatypeType
uses {
// consequence axiom for Functions.UberTrait.InstanceU3
axiom 1 <= $FunctionContextHeight
   ==> (forall Functions.UberTrait$Au: Ty, 
      Functions.UberTrait.InstanceU3$Bu: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.UberTrait.InstanceU3(Functions.UberTrait$Au, Functions.UberTrait.InstanceU3$Bu, this, a#0, b#0) } 
    Functions.UberTrait.InstanceU3#canCall(Functions.UberTrait$Au, Functions.UberTrait.InstanceU3$Bu, this, a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
           && $IsBox(a#0, Functions.UberTrait$Au)
           && $IsBox(b#0, Functions.UberTrait.InstanceU3$Bu))
       ==> $Is(Functions.UberTrait.InstanceU3(Functions.UberTrait$Au, Functions.UberTrait.InstanceU3$Bu, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU3$Bu)));
// alloc consequence axiom for Functions.UberTrait.InstanceU3
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Functions.UberTrait$Au: Ty, 
      Functions.UberTrait.InstanceU3$Bu: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(Functions.UberTrait.InstanceU3(Functions.UberTrait$Au, Functions.UberTrait.InstanceU3$Bu, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU3$Bu), 
        $Heap) } 
    (Functions.UberTrait.InstanceU3#canCall(Functions.UberTrait$Au, Functions.UberTrait.InstanceU3$Bu, this, a#0, b#0)
           || (1 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au), $Heap)
             && 
            $IsBox(a#0, Functions.UberTrait$Au)
             && $IsAllocBox(a#0, Functions.UberTrait$Au, $Heap)
             && 
            $IsBox(b#0, Functions.UberTrait.InstanceU3$Bu)
             && $IsAllocBox(b#0, Functions.UberTrait.InstanceU3$Bu, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Functions.UberTrait.InstanceU3(Functions.UberTrait$Au, Functions.UberTrait.InstanceU3$Bu, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.UberTrait$Au, Functions.UberTrait.InstanceU3$Bu), 
        $Heap));
}

function Functions.UberTrait.InstanceU3#canCall(Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU3$Bu: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : bool;

function Functions.UberTrait.InstanceU3#requires(Ty, Ty, ref, Box, Box) : bool;

// #requires axiom for Functions.UberTrait.InstanceU3
axiom (forall Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU3$Bu: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box :: 
  { Functions.UberTrait.InstanceU3#requires(Functions.UberTrait$Au, Functions.UberTrait.InstanceU3$Bu, this, a#0, b#0) } 
  this != null
       && $Is(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
       && $IsBox(a#0, Functions.UberTrait$Au)
       && $IsBox(b#0, Functions.UberTrait.InstanceU3$Bu)
     ==> Functions.UberTrait.InstanceU3#requires(Functions.UberTrait$Au, Functions.UberTrait.InstanceU3$Bu, this, a#0, b#0)
       == true);

procedure {:verboseName "Functions.UberTrait.InstanceU3 (well-formedness)"} CheckWellformed$$Functions.UberTrait.InstanceU3(Functions.UberTrait$Au: Ty, 
    Functions.UberTrait.InstanceU3$Bu: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
         && $IsAlloc(this, Tclass.Functions.UberTrait(Functions.UberTrait$Au), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.UberTrait$Au), 
    b#0: Box where $IsBox(b#0, Functions.UberTrait.InstanceU3$Bu));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for non-null type Functions.UberTrait
axiom (forall Functions.UberTrait$Au: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.Functions.UberTrait(Functions.UberTrait$Au)) } 
    { $Is(c#0, Tclass.Functions.UberTrait?(Functions.UberTrait$Au)) } 
  $Is(c#0, Tclass.Functions.UberTrait(Functions.UberTrait$Au))
     <==> $Is(c#0, Tclass.Functions.UberTrait?(Functions.UberTrait$Au)) && c#0 != null);

// $IsAlloc axiom for non-null type Functions.UberTrait
axiom (forall Functions.UberTrait$Au: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Functions.UberTrait(Functions.UberTrait$Au), $h) } 
    { $IsAlloc(c#0, Tclass.Functions.UberTrait?(Functions.UberTrait$Au), $h) } 
  $IsAlloc(c#0, Tclass.Functions.UberTrait(Functions.UberTrait$Au), $h)
     <==> $IsAlloc(c#0, Tclass.Functions.UberTrait?(Functions.UberTrait$Au), $h));

const unique class.Functions.InBetween?: ClassName;

// $Is axiom for trait InBetween
axiom (forall Functions.InBetween$Ai: Ty, $o: ref :: 
  { $Is($o, Tclass.Functions.InBetween?(Functions.InBetween$Ai)) } 
  $Is($o, Tclass.Functions.InBetween?(Functions.InBetween$Ai))
     <==> $o == null || implements$Functions.InBetween(dtype($o), Functions.InBetween$Ai));

// $IsAlloc axiom for trait InBetween
axiom (forall Functions.InBetween$Ai: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Functions.InBetween?(Functions.InBetween$Ai), $h) } 
  $IsAlloc($o, Tclass.Functions.InBetween?(Functions.InBetween$Ai), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$Functions.InBetween(ty: Ty, Functions.InBetween$Ai: Ty) : bool;

// function declaration for Functions.InBetween.InstanceU1
function Functions.InBetween.InstanceU1(Functions.InBetween$Ai: Ty, 
    Functions.InBetween.InstanceU1$Bi: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : DatatypeType
uses {
// consequence axiom for Functions.InBetween.InstanceU1
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.InBetween$Ai: Ty, 
      Functions.InBetween.InstanceU1$Bi: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.InBetween.InstanceU1(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0) } 
    Functions.InBetween.InstanceU1#canCall(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.InBetween(Functions.InBetween$Ai))
           && $IsBox(a#0, Functions.InBetween$Ai)
           && $IsBox(b#0, Functions.InBetween.InstanceU1$Bi))
       ==> $Is(Functions.InBetween.InstanceU1(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi)));
// alloc consequence axiom for Functions.InBetween.InstanceU1
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Functions.InBetween$Ai: Ty, 
      Functions.InBetween.InstanceU1$Bi: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(Functions.InBetween.InstanceU1(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi), 
        $Heap) } 
    (Functions.InBetween.InstanceU1#canCall(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0)
           || (0 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass.Functions.InBetween(Functions.InBetween$Ai), $Heap)
             && 
            $IsBox(a#0, Functions.InBetween$Ai)
             && $IsAllocBox(a#0, Functions.InBetween$Ai, $Heap)
             && 
            $IsBox(b#0, Functions.InBetween.InstanceU1$Bi)
             && $IsAllocBox(b#0, Functions.InBetween.InstanceU1$Bi, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Functions.InBetween.InstanceU1(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi), 
        $Heap));
// definition axiom for Functions.InBetween.InstanceU1 (revealed)
axiom {:id "id249"} 0 <= $FunctionContextHeight
   ==> (forall Functions.InBetween$Ai: Ty, 
      Functions.InBetween.InstanceU1$Bi: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.InBetween.InstanceU1(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0) } 
    Functions.InBetween.InstanceU1#canCall(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.InBetween(Functions.InBetween$Ai))
           && $IsBox(a#0, Functions.InBetween$Ai)
           && $IsBox(b#0, Functions.InBetween.InstanceU1$Bi))
       ==> Functions.InBetween.InstanceU1(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0)
         == #_System._tuple#2._#Make2(a#0, b#0));
// definition axiom for Functions.InBetween.InstanceU1 for all literals (revealed)
axiom {:id "id250"} 0 <= $FunctionContextHeight
   ==> (forall Functions.InBetween$Ai: Ty, 
      Functions.InBetween.InstanceU1$Bi: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    {:weight 3} { Functions.InBetween.InstanceU1(Functions.InBetween$Ai, 
        Functions.InBetween.InstanceU1$Bi, 
        Lit(this), 
        Lit(a#0), 
        Lit(b#0)) } 
    Functions.InBetween.InstanceU1#canCall(Functions.InBetween$Ai, 
          Functions.InBetween.InstanceU1$Bi, 
          Lit(this), 
          Lit(a#0), 
          Lit(b#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.InBetween(Functions.InBetween$Ai))
           && $IsBox(a#0, Functions.InBetween$Ai)
           && $IsBox(b#0, Functions.InBetween.InstanceU1$Bi))
       ==> Functions.InBetween.InstanceU1(Functions.InBetween$Ai, 
          Functions.InBetween.InstanceU1$Bi, 
          Lit(this), 
          Lit(a#0), 
          Lit(b#0))
         == Lit(#_System._tuple#2._#Make2(Lit(a#0), Lit(b#0))));
}

function Functions.InBetween.InstanceU1#canCall(Functions.InBetween$Ai: Ty, 
    Functions.InBetween.InstanceU1$Bi: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : bool;

function Functions.InBetween.InstanceU1#requires(Ty, Ty, ref, Box, Box) : bool;

// #requires axiom for Functions.InBetween.InstanceU1
axiom (forall Functions.InBetween$Ai: Ty, 
    Functions.InBetween.InstanceU1$Bi: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box :: 
  { Functions.InBetween.InstanceU1#requires(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0) } 
  this != null
       && $Is(this, Tclass.Functions.InBetween(Functions.InBetween$Ai))
       && $IsBox(a#0, Functions.InBetween$Ai)
       && $IsBox(b#0, Functions.InBetween.InstanceU1$Bi)
     ==> Functions.InBetween.InstanceU1#requires(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0)
       == true);

// override axiom for Functions.UberTrait.InstanceU1 in class Functions.InBetween
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.InBetween$Ai: Ty, 
      Functions.InBetween.InstanceU1$Bi: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.UberTrait.InstanceU1(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0), $Is(this, Tclass.Functions.InBetween(Functions.InBetween$Ai)) } 
      { Functions.UberTrait.InstanceU1(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0), Functions.InBetween.InstanceU1(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0) } 
    Functions.InBetween.InstanceU1#canCall(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.InBetween(Functions.InBetween$Ai)))
       ==> Functions.UberTrait.InstanceU1(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0)
         == Functions.InBetween.InstanceU1(Functions.InBetween$Ai, Functions.InBetween.InstanceU1$Bi, this, a#0, b#0));

procedure {:verboseName "Functions.InBetween.InstanceU1 (well-formedness)"} CheckWellformed$$Functions.InBetween.InstanceU1(Functions.InBetween$Ai: Ty, 
    Functions.InBetween.InstanceU1$Bi: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.Functions.InBetween(Functions.InBetween$Ai))
         && $IsAlloc(this, Tclass.Functions.InBetween(Functions.InBetween$Ai), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.InBetween$Ai), 
    b#0: Box where $IsBox(b#0, Functions.InBetween.InstanceU1$Bi));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Functions.InBetween.InstanceU1 (override check)"} OverrideCheck$$Functions.InBetween.InstanceU1(Functions.InBetween$Ai: Ty, 
    Functions.InBetween.InstanceU1$Bi: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.Functions.InBetween(Functions.InBetween$Ai))
         && $IsAlloc(this, Tclass.Functions.InBetween(Functions.InBetween$Ai), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.InBetween$Ai), 
    b#0: Box where $IsBox(b#0, Functions.InBetween.InstanceU1$Bi));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Functions.InBetween.InstanceU1 (override check)"} OverrideCheck$$Functions.InBetween.InstanceU1(Functions.InBetween$Ai: Ty, 
    Functions.InBetween.InstanceU1$Bi: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
{
  var Functions.UberTrait$Au: Ty;
  var Functions.UberTrait.InstanceU1$Bu: Ty;
  var InBetween_$_ReadsFrame: [ref,Field]bool;

    assume Functions.UberTrait$Au == Functions.InBetween$Ai;
    assume Functions.UberTrait.InstanceU1$Bu == Functions.InBetween.InstanceU1$Bi;
    assert {:id "id252"} true;
    InBetween_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id253"} (forall $o: ref, $f: Field :: true);
}



// $Is axiom for non-null type Functions.InBetween
axiom (forall Functions.InBetween$Ai: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.Functions.InBetween(Functions.InBetween$Ai)) } 
    { $Is(c#0, Tclass.Functions.InBetween?(Functions.InBetween$Ai)) } 
  $Is(c#0, Tclass.Functions.InBetween(Functions.InBetween$Ai))
     <==> $Is(c#0, Tclass.Functions.InBetween?(Functions.InBetween$Ai)) && c#0 != null);

// $IsAlloc axiom for non-null type Functions.InBetween
axiom (forall Functions.InBetween$Ai: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Functions.InBetween(Functions.InBetween$Ai), $h) } 
    { $IsAlloc(c#0, Tclass.Functions.InBetween?(Functions.InBetween$Ai), $h) } 
  $IsAlloc(c#0, Tclass.Functions.InBetween(Functions.InBetween$Ai), $h)
     <==> $IsAlloc(c#0, Tclass.Functions.InBetween?(Functions.InBetween$Ai), $h));

const unique class.Functions.Trait?: ClassName;

// $Is axiom for trait Trait
axiom (forall Functions.Trait$At: Ty, $o: ref :: 
  { $Is($o, Tclass.Functions.Trait?(Functions.Trait$At)) } 
  $Is($o, Tclass.Functions.Trait?(Functions.Trait$At))
     <==> $o == null || implements$Functions.Trait(dtype($o), Functions.Trait$At));

// $IsAlloc axiom for trait Trait
axiom (forall Functions.Trait$At: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Functions.Trait?(Functions.Trait$At), $h) } 
  $IsAlloc($o, Tclass.Functions.Trait?(Functions.Trait$At), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$Functions.Trait(ty: Ty, Functions.Trait$At: Ty) : bool;

// function declaration for Functions.Trait.InstanceU2
function Functions.Trait.InstanceU2(Functions.Trait$At: Ty, 
    Functions.Trait.InstanceU2$Bt: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : DatatypeType
uses {
// consequence axiom for Functions.Trait.InstanceU2
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.Trait$At: Ty, 
      Functions.Trait.InstanceU2$Bt: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.Trait.InstanceU2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0) } 
    Functions.Trait.InstanceU2#canCall(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Trait(Functions.Trait$At))
           && $IsBox(a#0, Functions.Trait$At)
           && $IsBox(b#0, Functions.Trait.InstanceU2$Bt))
       ==> $Is(Functions.Trait.InstanceU2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt)));
// alloc consequence axiom for Functions.Trait.InstanceU2
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Functions.Trait$At: Ty, 
      Functions.Trait.InstanceU2$Bt: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(Functions.Trait.InstanceU2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt), 
        $Heap) } 
    (Functions.Trait.InstanceU2#canCall(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0)
           || (0 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass.Functions.Trait(Functions.Trait$At), $Heap)
             && 
            $IsBox(a#0, Functions.Trait$At)
             && $IsAllocBox(a#0, Functions.Trait$At, $Heap)
             && 
            $IsBox(b#0, Functions.Trait.InstanceU2$Bt)
             && $IsAllocBox(b#0, Functions.Trait.InstanceU2$Bt, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Functions.Trait.InstanceU2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt), 
        $Heap));
// definition axiom for Functions.Trait.InstanceU2 (revealed)
axiom {:id "id254"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Trait$At: Ty, 
      Functions.Trait.InstanceU2$Bt: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.Trait.InstanceU2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0) } 
    Functions.Trait.InstanceU2#canCall(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Trait(Functions.Trait$At))
           && $IsBox(a#0, Functions.Trait$At)
           && $IsBox(b#0, Functions.Trait.InstanceU2$Bt))
       ==> Functions.Trait.InstanceU2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0)
         == #_System._tuple#2._#Make2(a#0, b#0));
// definition axiom for Functions.Trait.InstanceU2 for all literals (revealed)
axiom {:id "id255"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Trait$At: Ty, 
      Functions.Trait.InstanceU2$Bt: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    {:weight 3} { Functions.Trait.InstanceU2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, Lit(this), Lit(a#0), Lit(b#0)) } 
    Functions.Trait.InstanceU2#canCall(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, Lit(this), Lit(a#0), Lit(b#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Trait(Functions.Trait$At))
           && $IsBox(a#0, Functions.Trait$At)
           && $IsBox(b#0, Functions.Trait.InstanceU2$Bt))
       ==> Functions.Trait.InstanceU2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, Lit(this), Lit(a#0), Lit(b#0))
         == Lit(#_System._tuple#2._#Make2(Lit(a#0), Lit(b#0))));
}

function Functions.Trait.InstanceU2#canCall(Functions.Trait$At: Ty, 
    Functions.Trait.InstanceU2$Bt: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : bool;

function Functions.Trait.InstanceU2#requires(Ty, Ty, ref, Box, Box) : bool;

// #requires axiom for Functions.Trait.InstanceU2
axiom (forall Functions.Trait$At: Ty, 
    Functions.Trait.InstanceU2$Bt: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box :: 
  { Functions.Trait.InstanceU2#requires(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0) } 
  this != null
       && $Is(this, Tclass.Functions.Trait(Functions.Trait$At))
       && $IsBox(a#0, Functions.Trait$At)
       && $IsBox(b#0, Functions.Trait.InstanceU2$Bt)
     ==> Functions.Trait.InstanceU2#requires(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0)
       == true);

// override axiom for Functions.UberTrait.InstanceU2 in class Functions.Trait
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.Trait$At: Ty, 
      Functions.Trait.InstanceU2$Bt: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.UberTrait.InstanceU2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0), $Is(this, Tclass.Functions.Trait(Functions.Trait$At)) } 
      { Functions.UberTrait.InstanceU2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0), Functions.Trait.InstanceU2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0) } 
    Functions.Trait.InstanceU2#canCall(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Trait(Functions.Trait$At)))
       ==> Functions.UberTrait.InstanceU2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0)
         == Functions.Trait.InstanceU2(Functions.Trait$At, Functions.Trait.InstanceU2$Bt, this, a#0, b#0));

procedure {:verboseName "Functions.Trait.InstanceU2 (well-formedness)"} CheckWellformed$$Functions.Trait.InstanceU2(Functions.Trait$At: Ty, 
    Functions.Trait.InstanceU2$Bt: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.Functions.Trait(Functions.Trait$At))
         && $IsAlloc(this, Tclass.Functions.Trait(Functions.Trait$At), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.Trait$At), 
    b#0: Box where $IsBox(b#0, Functions.Trait.InstanceU2$Bt));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Functions.Trait.InstanceU2 (override check)"} OverrideCheck$$Functions.Trait.InstanceU2(Functions.Trait$At: Ty, 
    Functions.Trait.InstanceU2$Bt: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.Functions.Trait(Functions.Trait$At))
         && $IsAlloc(this, Tclass.Functions.Trait(Functions.Trait$At), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.Trait$At), 
    b#0: Box where $IsBox(b#0, Functions.Trait.InstanceU2$Bt));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Functions.Trait.InstanceU2 (override check)"} OverrideCheck$$Functions.Trait.InstanceU2(Functions.Trait$At: Ty, 
    Functions.Trait.InstanceU2$Bt: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
{
  var Functions.UberTrait$Au: Ty;
  var Functions.UberTrait.InstanceU2$Bu: Ty;
  var Trait_$_ReadsFrame: [ref,Field]bool;

    assume Functions.UberTrait$Au == Functions.Trait$At;
    assume Functions.UberTrait.InstanceU2$Bu == Functions.Trait.InstanceU2$Bt;
    assert {:id "id257"} true;
    Trait_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id258"} (forall $o: ref, $f: Field :: true);
}



// function declaration for Functions.Trait.InstanceT
function Functions.Trait.InstanceT(Functions.Trait$At: Ty, 
    Functions.Trait.InstanceT$Bt: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : DatatypeType
uses {
// consequence axiom for Functions.Trait.InstanceT
axiom 1 <= $FunctionContextHeight
   ==> (forall Functions.Trait$At: Ty, 
      Functions.Trait.InstanceT$Bt: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.Trait.InstanceT(Functions.Trait$At, Functions.Trait.InstanceT$Bt, this, a#0, b#0) } 
    Functions.Trait.InstanceT#canCall(Functions.Trait$At, Functions.Trait.InstanceT$Bt, this, a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Trait(Functions.Trait$At))
           && $IsBox(a#0, Functions.Trait$At)
           && $IsBox(b#0, Functions.Trait.InstanceT$Bt))
       ==> $Is(Functions.Trait.InstanceT(Functions.Trait$At, Functions.Trait.InstanceT$Bt, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Trait$At, Functions.Trait.InstanceT$Bt)));
// alloc consequence axiom for Functions.Trait.InstanceT
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Functions.Trait$At: Ty, 
      Functions.Trait.InstanceT$Bt: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(Functions.Trait.InstanceT(Functions.Trait$At, Functions.Trait.InstanceT$Bt, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Trait$At, Functions.Trait.InstanceT$Bt), 
        $Heap) } 
    (Functions.Trait.InstanceT#canCall(Functions.Trait$At, Functions.Trait.InstanceT$Bt, this, a#0, b#0)
           || (1 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass.Functions.Trait(Functions.Trait$At), $Heap)
             && 
            $IsBox(a#0, Functions.Trait$At)
             && $IsAllocBox(a#0, Functions.Trait$At, $Heap)
             && 
            $IsBox(b#0, Functions.Trait.InstanceT$Bt)
             && $IsAllocBox(b#0, Functions.Trait.InstanceT$Bt, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Functions.Trait.InstanceT(Functions.Trait$At, Functions.Trait.InstanceT$Bt, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Trait$At, Functions.Trait.InstanceT$Bt), 
        $Heap));
}

function Functions.Trait.InstanceT#canCall(Functions.Trait$At: Ty, 
    Functions.Trait.InstanceT$Bt: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : bool;

function Functions.Trait.InstanceT#requires(Ty, Ty, ref, Box, Box) : bool;

// #requires axiom for Functions.Trait.InstanceT
axiom (forall Functions.Trait$At: Ty, 
    Functions.Trait.InstanceT$Bt: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box :: 
  { Functions.Trait.InstanceT#requires(Functions.Trait$At, Functions.Trait.InstanceT$Bt, this, a#0, b#0) } 
  this != null
       && $Is(this, Tclass.Functions.Trait(Functions.Trait$At))
       && $IsBox(a#0, Functions.Trait$At)
       && $IsBox(b#0, Functions.Trait.InstanceT$Bt)
     ==> Functions.Trait.InstanceT#requires(Functions.Trait$At, Functions.Trait.InstanceT$Bt, this, a#0, b#0)
       == true);

procedure {:verboseName "Functions.Trait.InstanceT (well-formedness)"} CheckWellformed$$Functions.Trait.InstanceT(Functions.Trait$At: Ty, 
    Functions.Trait.InstanceT$Bt: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.Functions.Trait(Functions.Trait$At))
         && $IsAlloc(this, Tclass.Functions.Trait(Functions.Trait$At), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.Trait$At), 
    b#0: Box where $IsBox(b#0, Functions.Trait.InstanceT$Bt));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Functions.Trait.InstanceTBody
function Functions.Trait.InstanceTBody(Functions.Trait$At: Ty, 
    Functions.Trait.InstanceTBody$Bt: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : DatatypeType
uses {
// consequence axiom for Functions.Trait.InstanceTBody
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.Trait$At: Ty, 
      Functions.Trait.InstanceTBody$Bt: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.Trait.InstanceTBody(Functions.Trait$At, Functions.Trait.InstanceTBody$Bt, this, a#0, b#0) } 
    Functions.Trait.InstanceTBody#canCall(Functions.Trait$At, Functions.Trait.InstanceTBody$Bt, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Trait(Functions.Trait$At))
           && $IsBox(a#0, Functions.Trait$At)
           && $IsBox(b#0, Functions.Trait.InstanceTBody$Bt))
       ==> $Is(Functions.Trait.InstanceTBody(Functions.Trait$At, Functions.Trait.InstanceTBody$Bt, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Trait$At, Functions.Trait.InstanceTBody$Bt)));
// alloc consequence axiom for Functions.Trait.InstanceTBody
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Functions.Trait$At: Ty, 
      Functions.Trait.InstanceTBody$Bt: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(Functions.Trait.InstanceTBody(Functions.Trait$At, Functions.Trait.InstanceTBody$Bt, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Trait$At, Functions.Trait.InstanceTBody$Bt), 
        $Heap) } 
    (Functions.Trait.InstanceTBody#canCall(Functions.Trait$At, Functions.Trait.InstanceTBody$Bt, this, a#0, b#0)
           || (0 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass.Functions.Trait(Functions.Trait$At), $Heap)
             && 
            $IsBox(a#0, Functions.Trait$At)
             && $IsAllocBox(a#0, Functions.Trait$At, $Heap)
             && 
            $IsBox(b#0, Functions.Trait.InstanceTBody$Bt)
             && $IsAllocBox(b#0, Functions.Trait.InstanceTBody$Bt, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Functions.Trait.InstanceTBody(Functions.Trait$At, Functions.Trait.InstanceTBody$Bt, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Trait$At, Functions.Trait.InstanceTBody$Bt), 
        $Heap));
// definition axiom for Functions.Trait.InstanceTBody (revealed)
axiom {:id "id259"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Trait$At: Ty, 
      Functions.Trait.InstanceTBody$Bt: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.Trait.InstanceTBody(Functions.Trait$At, Functions.Trait.InstanceTBody$Bt, this, a#0, b#0) } 
    Functions.Trait.InstanceTBody#canCall(Functions.Trait$At, Functions.Trait.InstanceTBody$Bt, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Trait(Functions.Trait$At))
           && $IsBox(a#0, Functions.Trait$At)
           && $IsBox(b#0, Functions.Trait.InstanceTBody$Bt))
       ==> Functions.Trait.InstanceTBody(Functions.Trait$At, Functions.Trait.InstanceTBody$Bt, this, a#0, b#0)
         == #_System._tuple#2._#Make2(a#0, b#0));
// definition axiom for Functions.Trait.InstanceTBody for all literals (revealed)
axiom {:id "id260"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Trait$At: Ty, 
      Functions.Trait.InstanceTBody$Bt: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    {:weight 3} { Functions.Trait.InstanceTBody(Functions.Trait$At, 
        Functions.Trait.InstanceTBody$Bt, 
        Lit(this), 
        Lit(a#0), 
        Lit(b#0)) } 
    Functions.Trait.InstanceTBody#canCall(Functions.Trait$At, 
          Functions.Trait.InstanceTBody$Bt, 
          Lit(this), 
          Lit(a#0), 
          Lit(b#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Trait(Functions.Trait$At))
           && $IsBox(a#0, Functions.Trait$At)
           && $IsBox(b#0, Functions.Trait.InstanceTBody$Bt))
       ==> Functions.Trait.InstanceTBody(Functions.Trait$At, 
          Functions.Trait.InstanceTBody$Bt, 
          Lit(this), 
          Lit(a#0), 
          Lit(b#0))
         == Lit(#_System._tuple#2._#Make2(Lit(a#0), Lit(b#0))));
}

function Functions.Trait.InstanceTBody#canCall(Functions.Trait$At: Ty, 
    Functions.Trait.InstanceTBody$Bt: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : bool;

function Functions.Trait.InstanceTBody#requires(Ty, Ty, ref, Box, Box) : bool;

// #requires axiom for Functions.Trait.InstanceTBody
axiom (forall Functions.Trait$At: Ty, 
    Functions.Trait.InstanceTBody$Bt: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box :: 
  { Functions.Trait.InstanceTBody#requires(Functions.Trait$At, Functions.Trait.InstanceTBody$Bt, this, a#0, b#0) } 
  this != null
       && $Is(this, Tclass.Functions.Trait(Functions.Trait$At))
       && $IsBox(a#0, Functions.Trait$At)
       && $IsBox(b#0, Functions.Trait.InstanceTBody$Bt)
     ==> Functions.Trait.InstanceTBody#requires(Functions.Trait$At, Functions.Trait.InstanceTBody$Bt, this, a#0, b#0)
       == true);

procedure {:verboseName "Functions.Trait.InstanceTBody (well-formedness)"} CheckWellformed$$Functions.Trait.InstanceTBody(Functions.Trait$At: Ty, 
    Functions.Trait.InstanceTBody$Bt: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.Functions.Trait(Functions.Trait$At))
         && $IsAlloc(this, Tclass.Functions.Trait(Functions.Trait$At), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.Trait$At), 
    b#0: Box where $IsBox(b#0, Functions.Trait.InstanceTBody$Bt));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Functions.Trait.StaticT
function Functions.Trait.StaticT(Functions.Trait$At: Ty, Functions.Trait.StaticT$Bt: Ty, a#0: Box, b#0: Box)
   : DatatypeType
uses {
// consequence axiom for Functions.Trait.StaticT
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.Trait$At: Ty, Functions.Trait.StaticT$Bt: Ty, a#0: Box, b#0: Box :: 
    { Functions.Trait.StaticT(Functions.Trait$At, Functions.Trait.StaticT$Bt, a#0, b#0) } 
    Functions.Trait.StaticT#canCall(Functions.Trait$At, Functions.Trait.StaticT$Bt, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a#0, Functions.Trait$At)
           && $IsBox(b#0, Functions.Trait.StaticT$Bt))
       ==> $Is(Functions.Trait.StaticT(Functions.Trait$At, Functions.Trait.StaticT$Bt, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Trait$At, Functions.Trait.StaticT$Bt)));
// alloc consequence axiom for Functions.Trait.StaticT
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Functions.Trait$At: Ty, 
      Functions.Trait.StaticT$Bt: Ty, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(Functions.Trait.StaticT(Functions.Trait$At, Functions.Trait.StaticT$Bt, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Trait$At, Functions.Trait.StaticT$Bt), 
        $Heap) } 
    (Functions.Trait.StaticT#canCall(Functions.Trait$At, Functions.Trait.StaticT$Bt, a#0, b#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(a#0, Functions.Trait$At)
             && $IsAllocBox(a#0, Functions.Trait$At, $Heap)
             && 
            $IsBox(b#0, Functions.Trait.StaticT$Bt)
             && $IsAllocBox(b#0, Functions.Trait.StaticT$Bt, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Functions.Trait.StaticT(Functions.Trait$At, Functions.Trait.StaticT$Bt, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Trait$At, Functions.Trait.StaticT$Bt), 
        $Heap));
// definition axiom for Functions.Trait.StaticT (revealed)
axiom {:id "id262"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Trait$At: Ty, Functions.Trait.StaticT$Bt: Ty, a#0: Box, b#0: Box :: 
    { Functions.Trait.StaticT(Functions.Trait$At, Functions.Trait.StaticT$Bt, a#0, b#0) } 
    Functions.Trait.StaticT#canCall(Functions.Trait$At, Functions.Trait.StaticT$Bt, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a#0, Functions.Trait$At)
           && $IsBox(b#0, Functions.Trait.StaticT$Bt))
       ==> Functions.Trait.StaticT(Functions.Trait$At, Functions.Trait.StaticT$Bt, a#0, b#0)
         == #_System._tuple#2._#Make2(a#0, b#0));
// definition axiom for Functions.Trait.StaticT for all literals (revealed)
axiom {:id "id263"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Trait$At: Ty, Functions.Trait.StaticT$Bt: Ty, a#0: Box, b#0: Box :: 
    {:weight 3} { Functions.Trait.StaticT(Functions.Trait$At, Functions.Trait.StaticT$Bt, Lit(a#0), Lit(b#0)) } 
    Functions.Trait.StaticT#canCall(Functions.Trait$At, Functions.Trait.StaticT$Bt, Lit(a#0), Lit(b#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a#0, Functions.Trait$At)
           && $IsBox(b#0, Functions.Trait.StaticT$Bt))
       ==> Functions.Trait.StaticT(Functions.Trait$At, Functions.Trait.StaticT$Bt, Lit(a#0), Lit(b#0))
         == Lit(#_System._tuple#2._#Make2(Lit(a#0), Lit(b#0))));
}

function Functions.Trait.StaticT#canCall(Functions.Trait$At: Ty, Functions.Trait.StaticT$Bt: Ty, a#0: Box, b#0: Box)
   : bool;

function Functions.Trait.StaticT#requires(Ty, Ty, Box, Box) : bool;

// #requires axiom for Functions.Trait.StaticT
axiom (forall Functions.Trait$At: Ty, Functions.Trait.StaticT$Bt: Ty, a#0: Box, b#0: Box :: 
  { Functions.Trait.StaticT#requires(Functions.Trait$At, Functions.Trait.StaticT$Bt, a#0, b#0) } 
  $IsBox(a#0, Functions.Trait$At) && $IsBox(b#0, Functions.Trait.StaticT$Bt)
     ==> Functions.Trait.StaticT#requires(Functions.Trait$At, Functions.Trait.StaticT$Bt, a#0, b#0)
       == true);

procedure {:verboseName "Functions.Trait.StaticT (well-formedness)"} CheckWellformed$$Functions.Trait.StaticT(Functions.Trait$At: Ty, 
    Functions.Trait.StaticT$Bt: Ty, 
    a#0: Box where $IsBox(a#0, Functions.Trait$At), 
    b#0: Box where $IsBox(b#0, Functions.Trait.StaticT$Bt));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for non-null type Functions.Trait
axiom (forall Functions.Trait$At: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.Functions.Trait(Functions.Trait$At)) } 
    { $Is(c#0, Tclass.Functions.Trait?(Functions.Trait$At)) } 
  $Is(c#0, Tclass.Functions.Trait(Functions.Trait$At))
     <==> $Is(c#0, Tclass.Functions.Trait?(Functions.Trait$At)) && c#0 != null);

// $IsAlloc axiom for non-null type Functions.Trait
axiom (forall Functions.Trait$At: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Functions.Trait(Functions.Trait$At), $h) } 
    { $IsAlloc(c#0, Tclass.Functions.Trait?(Functions.Trait$At), $h) } 
  $IsAlloc(c#0, Tclass.Functions.Trait(Functions.Trait$At), $h)
     <==> $IsAlloc(c#0, Tclass.Functions.Trait?(Functions.Trait$At), $h));

const unique class.Functions.Class?: ClassName;

// $Is axiom for class Class
axiom (forall Functions.Class$Ac: Ty, $o: ref :: 
  { $Is($o, Tclass.Functions.Class?(Functions.Class$Ac)) } 
  $Is($o, Tclass.Functions.Class?(Functions.Class$Ac))
     <==> $o == null || dtype($o) == Tclass.Functions.Class?(Functions.Class$Ac));

// $IsAlloc axiom for class Class
axiom (forall Functions.Class$Ac: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Functions.Class?(Functions.Class$Ac), $h) } 
  $IsAlloc($o, Tclass.Functions.Class?(Functions.Class$Ac), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for Functions.Class.InstanceU3
function Functions.Class.InstanceU3(Functions.Class$Ac: Ty, 
    Functions.Class.InstanceU3$Bc: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : DatatypeType
uses {
// consequence axiom for Functions.Class.InstanceU3
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.Class$Ac: Ty, 
      Functions.Class.InstanceU3$Bc: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.Class.InstanceU3(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0) } 
    Functions.Class.InstanceU3#canCall(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
           && $IsBox(a#0, Functions.Class$Ac)
           && $IsBox(b#0, Functions.Class.InstanceU3$Bc))
       ==> $Is(Functions.Class.InstanceU3(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Class$Ac, Functions.Class.InstanceU3$Bc)));
// alloc consequence axiom for Functions.Class.InstanceU3
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Functions.Class$Ac: Ty, 
      Functions.Class.InstanceU3$Bc: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(Functions.Class.InstanceU3(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Class$Ac, Functions.Class.InstanceU3$Bc), 
        $Heap) } 
    (Functions.Class.InstanceU3#canCall(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0)
           || (0 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass.Functions.Class(Functions.Class$Ac), $Heap)
             && 
            $IsBox(a#0, Functions.Class$Ac)
             && $IsAllocBox(a#0, Functions.Class$Ac, $Heap)
             && 
            $IsBox(b#0, Functions.Class.InstanceU3$Bc)
             && $IsAllocBox(b#0, Functions.Class.InstanceU3$Bc, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Functions.Class.InstanceU3(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Class$Ac, Functions.Class.InstanceU3$Bc), 
        $Heap));
// definition axiom for Functions.Class.InstanceU3 (revealed)
axiom {:id "id265"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Class$Ac: Ty, 
      Functions.Class.InstanceU3$Bc: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.Class.InstanceU3(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0) } 
    Functions.Class.InstanceU3#canCall(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
           && $IsBox(a#0, Functions.Class$Ac)
           && $IsBox(b#0, Functions.Class.InstanceU3$Bc))
       ==> Functions.Class.InstanceU3(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0)
         == #_System._tuple#2._#Make2(a#0, b#0));
// definition axiom for Functions.Class.InstanceU3 for all literals (revealed)
axiom {:id "id266"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Class$Ac: Ty, 
      Functions.Class.InstanceU3$Bc: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    {:weight 3} { Functions.Class.InstanceU3(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, Lit(this), Lit(a#0), Lit(b#0)) } 
    Functions.Class.InstanceU3#canCall(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, Lit(this), Lit(a#0), Lit(b#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
           && $IsBox(a#0, Functions.Class$Ac)
           && $IsBox(b#0, Functions.Class.InstanceU3$Bc))
       ==> Functions.Class.InstanceU3(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, Lit(this), Lit(a#0), Lit(b#0))
         == Lit(#_System._tuple#2._#Make2(Lit(a#0), Lit(b#0))));
}

function Functions.Class.InstanceU3#canCall(Functions.Class$Ac: Ty, 
    Functions.Class.InstanceU3$Bc: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : bool;

function Functions.Class.InstanceU3#requires(Ty, Ty, ref, Box, Box) : bool;

// #requires axiom for Functions.Class.InstanceU3
axiom (forall Functions.Class$Ac: Ty, 
    Functions.Class.InstanceU3$Bc: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box :: 
  { Functions.Class.InstanceU3#requires(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0) } 
  this != null
       && $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
       && $IsBox(a#0, Functions.Class$Ac)
       && $IsBox(b#0, Functions.Class.InstanceU3$Bc)
     ==> Functions.Class.InstanceU3#requires(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0)
       == true);

// override axiom for Functions.UberTrait.InstanceU3 in class Functions.Class
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.Class$Ac: Ty, 
      Functions.Class.InstanceU3$Bc: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.UberTrait.InstanceU3(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0), $Is(this, Tclass.Functions.Class(Functions.Class$Ac)) } 
      { Functions.UberTrait.InstanceU3(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0), Functions.Class.InstanceU3(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0) } 
    Functions.Class.InstanceU3#canCall(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Class(Functions.Class$Ac)))
       ==> Functions.UberTrait.InstanceU3(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0)
         == Functions.Class.InstanceU3(Functions.Class$Ac, Functions.Class.InstanceU3$Bc, this, a#0, b#0));

procedure {:verboseName "Functions.Class.InstanceU3 (well-formedness)"} CheckWellformed$$Functions.Class.InstanceU3(Functions.Class$Ac: Ty, 
    Functions.Class.InstanceU3$Bc: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
         && $IsAlloc(this, Tclass.Functions.Class(Functions.Class$Ac), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.Class$Ac), 
    b#0: Box where $IsBox(b#0, Functions.Class.InstanceU3$Bc));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Functions.Class.InstanceU3 (override check)"} OverrideCheck$$Functions.Class.InstanceU3(Functions.Class$Ac: Ty, 
    Functions.Class.InstanceU3$Bc: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
         && $IsAlloc(this, Tclass.Functions.Class(Functions.Class$Ac), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.Class$Ac), 
    b#0: Box where $IsBox(b#0, Functions.Class.InstanceU3$Bc));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Functions.Class.InstanceU3 (override check)"} OverrideCheck$$Functions.Class.InstanceU3(Functions.Class$Ac: Ty, 
    Functions.Class.InstanceU3$Bc: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
{
  var Functions.UberTrait$Au: Ty;
  var Functions.UberTrait.InstanceU3$Bu: Ty;
  var Class_$_ReadsFrame: [ref,Field]bool;

    assume Functions.UberTrait$Au == Functions.Class$Ac;
    assume Functions.UberTrait.InstanceU3$Bu == Functions.Class.InstanceU3$Bc;
    assert {:id "id268"} true;
    Class_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id269"} (forall $o: ref, $f: Field :: true);
}



// function declaration for Functions.Class.InstanceT
function Functions.Class.InstanceT(Functions.Class$Ac: Ty, 
    Functions.Class.InstanceT$Bc: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : DatatypeType
uses {
// consequence axiom for Functions.Class.InstanceT
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.Class$Ac: Ty, 
      Functions.Class.InstanceT$Bc: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.Class.InstanceT(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0) } 
    Functions.Class.InstanceT#canCall(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
           && $IsBox(a#0, Functions.Class$Ac)
           && $IsBox(b#0, Functions.Class.InstanceT$Bc))
       ==> $Is(Functions.Class.InstanceT(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Class$Ac, Functions.Class.InstanceT$Bc)));
// alloc consequence axiom for Functions.Class.InstanceT
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Functions.Class$Ac: Ty, 
      Functions.Class.InstanceT$Bc: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(Functions.Class.InstanceT(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Class$Ac, Functions.Class.InstanceT$Bc), 
        $Heap) } 
    (Functions.Class.InstanceT#canCall(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0)
           || (0 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass.Functions.Class(Functions.Class$Ac), $Heap)
             && 
            $IsBox(a#0, Functions.Class$Ac)
             && $IsAllocBox(a#0, Functions.Class$Ac, $Heap)
             && 
            $IsBox(b#0, Functions.Class.InstanceT$Bc)
             && $IsAllocBox(b#0, Functions.Class.InstanceT$Bc, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Functions.Class.InstanceT(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Class$Ac, Functions.Class.InstanceT$Bc), 
        $Heap));
// definition axiom for Functions.Class.InstanceT (revealed)
axiom {:id "id270"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Class$Ac: Ty, 
      Functions.Class.InstanceT$Bc: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.Class.InstanceT(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0) } 
    Functions.Class.InstanceT#canCall(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
           && $IsBox(a#0, Functions.Class$Ac)
           && $IsBox(b#0, Functions.Class.InstanceT$Bc))
       ==> Functions.Class.InstanceT(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0)
         == #_System._tuple#2._#Make2(a#0, b#0));
// definition axiom for Functions.Class.InstanceT for all literals (revealed)
axiom {:id "id271"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Class$Ac: Ty, 
      Functions.Class.InstanceT$Bc: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    {:weight 3} { Functions.Class.InstanceT(Functions.Class$Ac, Functions.Class.InstanceT$Bc, Lit(this), Lit(a#0), Lit(b#0)) } 
    Functions.Class.InstanceT#canCall(Functions.Class$Ac, Functions.Class.InstanceT$Bc, Lit(this), Lit(a#0), Lit(b#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
           && $IsBox(a#0, Functions.Class$Ac)
           && $IsBox(b#0, Functions.Class.InstanceT$Bc))
       ==> Functions.Class.InstanceT(Functions.Class$Ac, Functions.Class.InstanceT$Bc, Lit(this), Lit(a#0), Lit(b#0))
         == Lit(#_System._tuple#2._#Make2(Lit(a#0), Lit(b#0))));
}

function Functions.Class.InstanceT#canCall(Functions.Class$Ac: Ty, 
    Functions.Class.InstanceT$Bc: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : bool;

function Functions.Class.InstanceT#requires(Ty, Ty, ref, Box, Box) : bool;

// #requires axiom for Functions.Class.InstanceT
axiom (forall Functions.Class$Ac: Ty, 
    Functions.Class.InstanceT$Bc: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box :: 
  { Functions.Class.InstanceT#requires(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0) } 
  this != null
       && $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
       && $IsBox(a#0, Functions.Class$Ac)
       && $IsBox(b#0, Functions.Class.InstanceT$Bc)
     ==> Functions.Class.InstanceT#requires(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0)
       == true);

// override axiom for Functions.Trait.InstanceT in class Functions.Class
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.Class$Ac: Ty, 
      Functions.Class.InstanceT$Bc: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.Trait.InstanceT(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0), $Is(this, Tclass.Functions.Class(Functions.Class$Ac)) } 
      { Functions.Trait.InstanceT(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0), Functions.Class.InstanceT(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0) } 
    Functions.Class.InstanceT#canCall(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Class(Functions.Class$Ac)))
       ==> Functions.Trait.InstanceT(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0)
         == Functions.Class.InstanceT(Functions.Class$Ac, Functions.Class.InstanceT$Bc, this, a#0, b#0));

procedure {:verboseName "Functions.Class.InstanceT (well-formedness)"} CheckWellformed$$Functions.Class.InstanceT(Functions.Class$Ac: Ty, 
    Functions.Class.InstanceT$Bc: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
         && $IsAlloc(this, Tclass.Functions.Class(Functions.Class$Ac), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.Class$Ac), 
    b#0: Box where $IsBox(b#0, Functions.Class.InstanceT$Bc));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Functions.Class.InstanceT (override check)"} OverrideCheck$$Functions.Class.InstanceT(Functions.Class$Ac: Ty, 
    Functions.Class.InstanceT$Bc: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
         && $IsAlloc(this, Tclass.Functions.Class(Functions.Class$Ac), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.Class$Ac), 
    b#0: Box where $IsBox(b#0, Functions.Class.InstanceT$Bc));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Functions.Class.InstanceT (override check)"} OverrideCheck$$Functions.Class.InstanceT(Functions.Class$Ac: Ty, 
    Functions.Class.InstanceT$Bc: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
{
  var Functions.Trait$At: Ty;
  var Functions.Trait.InstanceT$Bt: Ty;
  var Class_$_ReadsFrame: [ref,Field]bool;

    assume Functions.Trait$At == Functions.Class$Ac;
    assume Functions.Trait.InstanceT$Bt == Functions.Class.InstanceT$Bc;
    assert {:id "id273"} true;
    Class_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id274"} (forall $o: ref, $f: Field :: true);
}



// function declaration for Functions.Class.InstanceC
function Functions.Class.InstanceC(Functions.Class$Ac: Ty, 
    Functions.Class.InstanceC$Bc: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : DatatypeType
uses {
// consequence axiom for Functions.Class.InstanceC
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.Class$Ac: Ty, 
      Functions.Class.InstanceC$Bc: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.Class.InstanceC(Functions.Class$Ac, Functions.Class.InstanceC$Bc, this, a#0, b#0) } 
    Functions.Class.InstanceC#canCall(Functions.Class$Ac, Functions.Class.InstanceC$Bc, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
           && $IsBox(a#0, Functions.Class$Ac)
           && $IsBox(b#0, Functions.Class.InstanceC$Bc))
       ==> $Is(Functions.Class.InstanceC(Functions.Class$Ac, Functions.Class.InstanceC$Bc, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Class$Ac, Functions.Class.InstanceC$Bc)));
// alloc consequence axiom for Functions.Class.InstanceC
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Functions.Class$Ac: Ty, 
      Functions.Class.InstanceC$Bc: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(Functions.Class.InstanceC(Functions.Class$Ac, Functions.Class.InstanceC$Bc, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Class$Ac, Functions.Class.InstanceC$Bc), 
        $Heap) } 
    (Functions.Class.InstanceC#canCall(Functions.Class$Ac, Functions.Class.InstanceC$Bc, this, a#0, b#0)
           || (0 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass.Functions.Class(Functions.Class$Ac), $Heap)
             && 
            $IsBox(a#0, Functions.Class$Ac)
             && $IsAllocBox(a#0, Functions.Class$Ac, $Heap)
             && 
            $IsBox(b#0, Functions.Class.InstanceC$Bc)
             && $IsAllocBox(b#0, Functions.Class.InstanceC$Bc, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Functions.Class.InstanceC(Functions.Class$Ac, Functions.Class.InstanceC$Bc, this, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Class$Ac, Functions.Class.InstanceC$Bc), 
        $Heap));
// definition axiom for Functions.Class.InstanceC (revealed)
axiom {:id "id275"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Class$Ac: Ty, 
      Functions.Class.InstanceC$Bc: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    { Functions.Class.InstanceC(Functions.Class$Ac, Functions.Class.InstanceC$Bc, this, a#0, b#0) } 
    Functions.Class.InstanceC#canCall(Functions.Class$Ac, Functions.Class.InstanceC$Bc, this, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
           && $IsBox(a#0, Functions.Class$Ac)
           && $IsBox(b#0, Functions.Class.InstanceC$Bc))
       ==> Functions.Class.InstanceC(Functions.Class$Ac, Functions.Class.InstanceC$Bc, this, a#0, b#0)
         == #_System._tuple#2._#Make2(a#0, b#0));
// definition axiom for Functions.Class.InstanceC for all literals (revealed)
axiom {:id "id276"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Class$Ac: Ty, 
      Functions.Class.InstanceC$Bc: Ty, 
      this: ref, 
      a#0: Box, 
      b#0: Box :: 
    {:weight 3} { Functions.Class.InstanceC(Functions.Class$Ac, Functions.Class.InstanceC$Bc, Lit(this), Lit(a#0), Lit(b#0)) } 
    Functions.Class.InstanceC#canCall(Functions.Class$Ac, Functions.Class.InstanceC$Bc, Lit(this), Lit(a#0), Lit(b#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
           && $IsBox(a#0, Functions.Class$Ac)
           && $IsBox(b#0, Functions.Class.InstanceC$Bc))
       ==> Functions.Class.InstanceC(Functions.Class$Ac, Functions.Class.InstanceC$Bc, Lit(this), Lit(a#0), Lit(b#0))
         == Lit(#_System._tuple#2._#Make2(Lit(a#0), Lit(b#0))));
}

function Functions.Class.InstanceC#canCall(Functions.Class$Ac: Ty, 
    Functions.Class.InstanceC$Bc: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box)
   : bool;

function Functions.Class.InstanceC#requires(Ty, Ty, ref, Box, Box) : bool;

// #requires axiom for Functions.Class.InstanceC
axiom (forall Functions.Class$Ac: Ty, 
    Functions.Class.InstanceC$Bc: Ty, 
    this: ref, 
    a#0: Box, 
    b#0: Box :: 
  { Functions.Class.InstanceC#requires(Functions.Class$Ac, Functions.Class.InstanceC$Bc, this, a#0, b#0) } 
  this != null
       && $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
       && $IsBox(a#0, Functions.Class$Ac)
       && $IsBox(b#0, Functions.Class.InstanceC$Bc)
     ==> Functions.Class.InstanceC#requires(Functions.Class$Ac, Functions.Class.InstanceC$Bc, this, a#0, b#0)
       == true);

procedure {:verboseName "Functions.Class.InstanceC (well-formedness)"} CheckWellformed$$Functions.Class.InstanceC(Functions.Class$Ac: Ty, 
    Functions.Class.InstanceC$Bc: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.Functions.Class(Functions.Class$Ac))
         && $IsAlloc(this, Tclass.Functions.Class(Functions.Class$Ac), $Heap), 
    a#0: Box where $IsBox(a#0, Functions.Class$Ac), 
    b#0: Box where $IsBox(b#0, Functions.Class.InstanceC$Bc));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Functions.Class.StaticC
function Functions.Class.StaticC(Functions.Class$Ac: Ty, Functions.Class.StaticC$Bc: Ty, a#0: Box, b#0: Box)
   : DatatypeType
uses {
// consequence axiom for Functions.Class.StaticC
axiom 0 <= $FunctionContextHeight
   ==> (forall Functions.Class$Ac: Ty, Functions.Class.StaticC$Bc: Ty, a#0: Box, b#0: Box :: 
    { Functions.Class.StaticC(Functions.Class$Ac, Functions.Class.StaticC$Bc, a#0, b#0) } 
    Functions.Class.StaticC#canCall(Functions.Class$Ac, Functions.Class.StaticC$Bc, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a#0, Functions.Class$Ac)
           && $IsBox(b#0, Functions.Class.StaticC$Bc))
       ==> $Is(Functions.Class.StaticC(Functions.Class$Ac, Functions.Class.StaticC$Bc, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Class$Ac, Functions.Class.StaticC$Bc)));
// alloc consequence axiom for Functions.Class.StaticC
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      Functions.Class$Ac: Ty, 
      Functions.Class.StaticC$Bc: Ty, 
      a#0: Box, 
      b#0: Box :: 
    { $IsAlloc(Functions.Class.StaticC(Functions.Class$Ac, Functions.Class.StaticC$Bc, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Class$Ac, Functions.Class.StaticC$Bc), 
        $Heap) } 
    (Functions.Class.StaticC#canCall(Functions.Class$Ac, Functions.Class.StaticC$Bc, a#0, b#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(a#0, Functions.Class$Ac)
             && $IsAllocBox(a#0, Functions.Class$Ac, $Heap)
             && 
            $IsBox(b#0, Functions.Class.StaticC$Bc)
             && $IsAllocBox(b#0, Functions.Class.StaticC$Bc, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(Functions.Class.StaticC(Functions.Class$Ac, Functions.Class.StaticC$Bc, a#0, b#0), 
        Tclass._System.Tuple2(Functions.Class$Ac, Functions.Class.StaticC$Bc), 
        $Heap));
// definition axiom for Functions.Class.StaticC (revealed)
axiom {:id "id278"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Class$Ac: Ty, Functions.Class.StaticC$Bc: Ty, a#0: Box, b#0: Box :: 
    { Functions.Class.StaticC(Functions.Class$Ac, Functions.Class.StaticC$Bc, a#0, b#0) } 
    Functions.Class.StaticC#canCall(Functions.Class$Ac, Functions.Class.StaticC$Bc, a#0, b#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a#0, Functions.Class$Ac)
           && $IsBox(b#0, Functions.Class.StaticC$Bc))
       ==> Functions.Class.StaticC(Functions.Class$Ac, Functions.Class.StaticC$Bc, a#0, b#0)
         == #_System._tuple#2._#Make2(a#0, b#0));
// definition axiom for Functions.Class.StaticC for all literals (revealed)
axiom {:id "id279"} 0 <= $FunctionContextHeight
   ==> (forall Functions.Class$Ac: Ty, Functions.Class.StaticC$Bc: Ty, a#0: Box, b#0: Box :: 
    {:weight 3} { Functions.Class.StaticC(Functions.Class$Ac, Functions.Class.StaticC$Bc, Lit(a#0), Lit(b#0)) } 
    Functions.Class.StaticC#canCall(Functions.Class$Ac, Functions.Class.StaticC$Bc, Lit(a#0), Lit(b#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(a#0, Functions.Class$Ac)
           && $IsBox(b#0, Functions.Class.StaticC$Bc))
       ==> Functions.Class.StaticC(Functions.Class$Ac, Functions.Class.StaticC$Bc, Lit(a#0), Lit(b#0))
         == Lit(#_System._tuple#2._#Make2(Lit(a#0), Lit(b#0))));
}

function Functions.Class.StaticC#canCall(Functions.Class$Ac: Ty, Functions.Class.StaticC$Bc: Ty, a#0: Box, b#0: Box)
   : bool;

function Functions.Class.StaticC#requires(Ty, Ty, Box, Box) : bool;

// #requires axiom for Functions.Class.StaticC
axiom (forall Functions.Class$Ac: Ty, Functions.Class.StaticC$Bc: Ty, a#0: Box, b#0: Box :: 
  { Functions.Class.StaticC#requires(Functions.Class$Ac, Functions.Class.StaticC$Bc, a#0, b#0) } 
  $IsBox(a#0, Functions.Class$Ac) && $IsBox(b#0, Functions.Class.StaticC$Bc)
     ==> Functions.Class.StaticC#requires(Functions.Class$Ac, Functions.Class.StaticC$Bc, a#0, b#0)
       == true);

procedure {:verboseName "Functions.Class.StaticC (well-formedness)"} CheckWellformed$$Functions.Class.StaticC(Functions.Class$Ac: Ty, 
    Functions.Class.StaticC$Bc: Ty, 
    a#0: Box where $IsBox(a#0, Functions.Class$Ac), 
    b#0: Box where $IsBox(b#0, Functions.Class.StaticC$Bc));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for non-null type Functions.Class
axiom (forall Functions.Class$Ac: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.Functions.Class(Functions.Class$Ac)) } 
    { $Is(c#0, Tclass.Functions.Class?(Functions.Class$Ac)) } 
  $Is(c#0, Tclass.Functions.Class(Functions.Class$Ac))
     <==> $Is(c#0, Tclass.Functions.Class?(Functions.Class$Ac)) && c#0 != null);

// $IsAlloc axiom for non-null type Functions.Class
axiom (forall Functions.Class$Ac: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Functions.Class(Functions.Class$Ac), $h) } 
    { $IsAlloc(c#0, Tclass.Functions.Class?(Functions.Class$Ac), $h) } 
  $IsAlloc(c#0, Tclass.Functions.Class(Functions.Class$Ac), $h)
     <==> $IsAlloc(c#0, Tclass.Functions.Class?(Functions.Class$Ac), $h));

// Constructor function declaration
function #Functions.Uni.Uni() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Functions.Uni.Uni()) == ##Functions.Uni.Uni;
// Constructor $Is
axiom $Is(#Functions.Uni.Uni(), Tclass.Functions.Uni());
// Constructor literal
axiom #Functions.Uni.Uni() == Lit(#Functions.Uni.Uni());
}

const unique ##Functions.Uni.Uni: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Functions.Uni.Uni()) == ##Functions.Uni.Uni;
}

function Functions.Uni.Uni_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Functions.Uni.Uni_q(d) } 
  Functions.Uni.Uni_q(d) <==> DatatypeCtorId(d) == ##Functions.Uni.Uni);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Functions.Uni.Uni_q(d) } 
  Functions.Uni.Uni_q(d) ==> d == #Functions.Uni.Uni());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.Functions.Uni(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.Functions.Uni())
     ==> $IsAlloc(d, Tclass.Functions.Uni(), $h));

// Depth-one case-split function
function $IsA#Functions.Uni(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Functions.Uni(d) } 
  $IsA#Functions.Uni(d) ==> Functions.Uni.Uni_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { Functions.Uni.Uni_q(d), $Is(d, Tclass.Functions.Uni()) } 
  $Is(d, Tclass.Functions.Uni()) ==> Functions.Uni.Uni_q(d));

// Datatype extensional equality declaration
function Functions.Uni#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Functions.Uni.Uni
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Functions.Uni#Equal(a, b) } 
  Functions.Uni#Equal(a, b));

// Datatype extensionality axiom: Functions.Uni
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Functions.Uni#Equal(a, b) } 
  Functions.Uni#Equal(a, b) <==> a == b);

const unique class.Functions.Uni: ClassName;

// type axiom for trait parent: InBetween? extends UberTrait?<Ai>
axiom (forall Functions.InBetween$Ai: Ty, $o: ref :: 
  { $Is($o, Tclass.Functions.InBetween?(Functions.InBetween$Ai)) } 
  $Is($o, Tclass.Functions.InBetween?(Functions.InBetween$Ai))
     ==> $Is($o, Tclass.Functions.UberTrait?(Functions.InBetween$Ai)));

axiom (forall Functions.InBetween$Ai: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Functions.InBetween?(Functions.InBetween$Ai)) } 
  $IsBox(bx, Tclass.Functions.InBetween?(Functions.InBetween$Ai))
     ==> $IsBox(bx, Tclass.Functions.UberTrait?(Functions.InBetween$Ai)));

// allocation axiom for trait parent: InBetween? extends UberTrait?<Ai>
axiom (forall Functions.InBetween$Ai: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.Functions.InBetween?(Functions.InBetween$Ai), $heap) } 
  $IsAlloc($o, Tclass.Functions.InBetween?(Functions.InBetween$Ai), $heap)
     ==> $IsAlloc($o, Tclass.Functions.UberTrait?(Functions.InBetween$Ai), $heap));

axiom (forall Functions.InBetween$Ai: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.Functions.InBetween?(Functions.InBetween$Ai), $h) } 
  $IsAllocBox(bx, Tclass.Functions.InBetween?(Functions.InBetween$Ai), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.Functions.UberTrait?(Functions.InBetween$Ai), $h));

// type axiom for trait parent: Trait? extends InBetween?<At>
axiom (forall Functions.Trait$At: Ty, $o: ref :: 
  { $Is($o, Tclass.Functions.Trait?(Functions.Trait$At)) } 
  $Is($o, Tclass.Functions.Trait?(Functions.Trait$At))
     ==> $Is($o, Tclass.Functions.InBetween?(Functions.Trait$At)));

axiom (forall Functions.Trait$At: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Functions.Trait?(Functions.Trait$At)) } 
  $IsBox(bx, Tclass.Functions.Trait?(Functions.Trait$At))
     ==> $IsBox(bx, Tclass.Functions.InBetween?(Functions.Trait$At)));

// allocation axiom for trait parent: Trait? extends InBetween?<At>
axiom (forall Functions.Trait$At: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.Functions.Trait?(Functions.Trait$At), $heap) } 
  $IsAlloc($o, Tclass.Functions.Trait?(Functions.Trait$At), $heap)
     ==> $IsAlloc($o, Tclass.Functions.InBetween?(Functions.Trait$At), $heap));

axiom (forall Functions.Trait$At: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.Functions.Trait?(Functions.Trait$At), $h) } 
  $IsAllocBox(bx, Tclass.Functions.Trait?(Functions.Trait$At), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.Functions.InBetween?(Functions.Trait$At), $h));

// type axiom for trait parent: Class? extends Trait?<Ac>
axiom (forall Functions.Class$Ac: Ty, $o: ref :: 
  { $Is($o, Tclass.Functions.Class?(Functions.Class$Ac)) } 
  $Is($o, Tclass.Functions.Class?(Functions.Class$Ac))
     ==> $Is($o, Tclass.Functions.Trait?(Functions.Class$Ac)));

axiom (forall Functions.Class$Ac: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Functions.Class?(Functions.Class$Ac)) } 
  $IsBox(bx, Tclass.Functions.Class?(Functions.Class$Ac))
     ==> $IsBox(bx, Tclass.Functions.Trait?(Functions.Class$Ac)));

// allocation axiom for trait parent: Class? extends Trait?<Ac>
axiom (forall Functions.Class$Ac: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.Functions.Class?(Functions.Class$Ac), $heap) } 
  $IsAlloc($o, Tclass.Functions.Class?(Functions.Class$Ac), $heap)
     ==> $IsAlloc($o, Tclass.Functions.Trait?(Functions.Class$Ac), $heap));

axiom (forall Functions.Class$Ac: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.Functions.Class?(Functions.Class$Ac), $h) } 
  $IsAllocBox(bx, Tclass.Functions.Class?(Functions.Class$Ac), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.Functions.Trait?(Functions.Class$Ac), $h));

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

const unique tytagFamily$Uni: TyTagFamily;

const unique tytagFamily$Class: TyTagFamily;

const unique tytagFamily$Trait: TyTagFamily;

const unique tytagFamily$UberTrait: TyTagFamily;

const unique tytagFamily$InBetween: TyTagFamily;

const unique tytagFamily$Datatype: TyTagFamily;

const unique tytagFamily$Newtype: TyTagFamily;
