// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy

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

procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 5 == $FunctionContextHeight;
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
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(4,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id14"} Call$$_module.__default.Sequences();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(5,7)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id15"} Call$$_module.__default.Sets();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(6,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id16"} Call$$_module.__default.Multisets();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(7,7)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id17"} Call$$_module.__default.Maps();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(8,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id18"} Call$$_module.__default.Downcasts();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(9,15)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id19"} Call$$_module.__default.DeepDowncast();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(10,29)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id20"} Call$$CovarianceRegressions.__default.Test();
    // TrCallStmt: After ProcessCallStmt
}



function Tclass._module.Number() : Ty
uses {
// Tclass._module.Number Tag
axiom Tag(Tclass._module.Number()) == Tagclass._module.Number
   && TagFamily(Tclass._module.Number()) == tytagFamily$Number;
}

const unique Tagclass._module.Number: TyTag;

// Box/unbox axiom for Tclass._module.Number
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Number()) } 
  $IsBox(bx, Tclass._module.Number())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Number()));

procedure {:verboseName "PrintSeq (well-formedness)"} CheckWellFormed$$_module.__default.PrintSeq(prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap), 
    s#0: Seq
       where $Is(s#0, TSeq(Tclass._module.Number()))
         && $IsAlloc(s#0, TSeq(Tclass._module.Number()), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintSeq (call)"} Call$$_module.__default.PrintSeq(prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap), 
    s#0: Seq
       where $Is(s#0, TSeq(Tclass._module.Number()))
         && $IsAlloc(s#0, TSeq(Tclass._module.Number()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintSeq (correctness)"} Impl$$_module.__default.PrintSeq(prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap), 
    s#0: Seq
       where $Is(s#0, TSeq(Tclass._module.Number()))
         && $IsAlloc(s#0, TSeq(Tclass._module.Number()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintSeq (correctness)"} Impl$$_module.__default.PrintSeq(prefix#0: Seq, s#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var sep#0: Seq where $Is(sep#0, TSeq(TChar)) && $IsAlloc(sep#0, TSeq(TChar), $Heap);
  var $rhs#0: int;
  var $rhs#1: Seq;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $rhs#0_0: int;
  var $rhs#0_1: Seq;

    // AddMethodImpl: PrintSeq, Impl$$_module.__default.PrintSeq
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(30,3)
    assume true;
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(31,14)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := Lit(Seq#Empty(): Seq);
    i#0 := $rhs#0;
    sep#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(32,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Seq#Length(s#0) - i#0;
    havoc $w$loop#0;
    while (true)
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
      free invariant Seq#Length(s#0) - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (Seq#Length(s#0) <= i#0)
        {
            break;
        }

        $decr$loop#00 := Seq#Length(s#0) - i#0;
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(33,5)
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(34,15)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id25"} 0 <= i#0 && i#0 < Seq#Length(s#0);
        assume true;
        assert {:id "id26"} $Unbox(Seq#Index(s#0, i#0)): ref != null;
        call {:id "id27"} Call$$_module.Number.Print($Unbox(Seq#Index(s#0, i#0)): ref);
        // TrCallStmt: After ProcessCallStmt
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(35,12)
        assume true;
        assume true;
        assume true;
        $rhs#0_0 := i#0 + 1;
        assume true;
        $rhs#0_1 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(44))), $Box(char#FromInt(32))));
        i#0 := $rhs#0_0;
        sep#0 := $rhs#0_1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(32,3)
        assert {:id "id32"} 0 <= $decr$loop#00 || Seq#Length(s#0) - i#0 == $decr$loop#00;
        assert {:id "id33"} Seq#Length(s#0) - i#0 < $decr$loop#00;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(37,3)
    assume true;
}



procedure {:verboseName "Sequences (well-formedness)"} CheckWellFormed$$_module.__default.Sequences();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Sequences (call)"} Call$$_module.__default.Sequences();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Sequences (correctness)"} Impl$$_module.__default.Sequences() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Integer() : Ty
uses {
// Tclass._module.Integer Tag
axiom Tag(Tclass._module.Integer()) == Tagclass._module.Integer
   && TagFamily(Tclass._module.Integer()) == tytagFamily$Integer;
}

const unique Tagclass._module.Integer: TyTag;

// Box/unbox axiom for Tclass._module.Integer
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Integer()) } 
  $IsBox(bx, Tclass._module.Integer())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Integer()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sequences (correctness)"} Impl$$_module.__default.Sequences() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#twelve#0: bool;
  var twelve#0: ref
     where defass#twelve#0
       ==> $Is(twelve#0, Tclass._module.Integer())
         && $IsAlloc(twelve#0, Tclass._module.Integer(), $Heap);
  var $nw: ref;
  var value##0: int;
  var defass#seventeen#0: bool;
  var seventeen#0: ref
     where defass#seventeen#0
       ==> $Is(seventeen#0, Tclass._module.Integer())
         && $IsAlloc(seventeen#0, Tclass._module.Integer(), $Heap);
  var value##1: int;
  var defass#fortyTwo#0: bool;
  var fortyTwo#0: ref
     where defass#fortyTwo#0
       ==> $Is(fortyTwo#0, Tclass._module.Integer())
         && $IsAlloc(fortyTwo#0, Tclass._module.Integer(), $Heap);
  var value##2: int;
  var defass#eightyTwo#0: bool;
  var eightyTwo#0: ref
     where defass#eightyTwo#0
       ==> $Is(eightyTwo#0, Tclass._module.Integer())
         && $IsAlloc(eightyTwo#0, Tclass._module.Integer(), $Heap);
  var value##3: int;
  var a#0: Seq
     where $Is(a#0, TSeq(Tclass._module.Number()))
       && $IsAlloc(a#0, TSeq(Tclass._module.Number()), $Heap);
  var b#0: Seq
     where $Is(b#0, TSeq(Tclass._module.Number()))
       && $IsAlloc(b#0, TSeq(Tclass._module.Number()), $Heap);
  var c#0: Seq
     where $Is(c#0, TSeq(Tclass._module.Integer()))
       && $IsAlloc(c#0, TSeq(Tclass._module.Integer()), $Heap);
  var prefix##0: Seq;
  var s##0: Seq;
  var prefix##1: Seq;
  var s##1: Seq;
  var prefix##2: Seq;
  var s##2: Seq;
  var prefix##3: Seq;
  var s##3: Seq;
  var prefix##4: Seq;
  var s##4: Seq;
  var prefix##5: Seq;
  var s##5: Seq;
  var prefix##6: Seq;
  var s##6: Seq;
  var prefix##7: Seq;
  var s##7: Seq;
  var prefix##8: Seq;
  var s##8: Seq;
  var prefix##9: Seq;
  var s##9: Seq;
  var prefix##10: Seq;
  var s##10: Seq;
  var prefix##11: Seq;
  var s##11: Seq;
  var prefix##12: Seq;
  var s##12: Seq;
  var prefix##13: Seq;
  var s##13: Seq;
  var prefix##14: Seq;
  var s##14: Seq;
  var prefix##15: Seq;
  var s##15: Seq;

    // AddMethodImpl: Sequences, Impl$$_module.__default.Sequences
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(41,14)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(41,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##0 := LitInt(12);
    call {:id "id34"} $nw := Call$$_module.Integer.__ctor(value##0);
    // TrCallStmt: After ProcessCallStmt
    twelve#0 := $nw;
    defass#twelve#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(42,17)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(42,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##1 := LitInt(17);
    call {:id "id36"} $nw := Call$$_module.Integer.__ctor(value##1);
    // TrCallStmt: After ProcessCallStmt
    seventeen#0 := $nw;
    defass#seventeen#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(43,16)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(43,19)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##2 := LitInt(42);
    call {:id "id38"} $nw := Call$$_module.Integer.__ctor(value##2);
    // TrCallStmt: After ProcessCallStmt
    fortyTwo#0 := $nw;
    defass#fortyTwo#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(44,17)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(44,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##3 := LitInt(82);
    call {:id "id40"} $nw := Call$$_module.Integer.__ctor(value##3);
    // TrCallStmt: After ProcessCallStmt
    eightyTwo#0 := $nw;
    defass#eightyTwo#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(46,9)
    assume true;
    assume true;
    a#0 := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(47,22)
    assume true;
    assert {:id "id43"} defass#seventeen#0;
    assert {:id "id44"} defass#eightyTwo#0;
    assert {:id "id45"} defass#seventeen#0;
    assert {:id "id46"} defass#eightyTwo#0;
    assume true;
    b#0 := Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(seventeen#0)), $Box(eightyTwo#0)), 
        $Box(seventeen#0)), 
      $Box(eightyTwo#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(48,9)
    assume true;
    assert {:id "id48"} defass#twelve#0;
    assert {:id "id49"} defass#seventeen#0;
    assume true;
    c#0 := Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(twelve#0)), $Box(seventeen#0));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(50,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(83))), $Box(char#FromInt(101))), 
                        $Box(char#FromInt(113))), 
                      $Box(char#FromInt(117))), 
                    $Box(char#FromInt(101))), 
                  $Box(char#FromInt(110))), 
                $Box(char#FromInt(99))), 
              $Box(char#FromInt(101))), 
            $Box(char#FromInt(115))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := a#0;
    call {:id "id51"} Call$$_module.__default.PrintSeq(prefix##0, s##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(51,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##1 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##1 := b#0;
    call {:id "id52"} Call$$_module.__default.PrintSeq(prefix##1, s##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(52,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##2 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##2 := c#0;
    call {:id "id53"} Call$$_module.__default.PrintSeq(prefix##2, s##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(53,3)
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(55,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(56,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##3 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                      $Box(char#FromInt(117))), 
                    $Box(char#FromInt(112))), 
                  $Box(char#FromInt(100))), 
                $Box(char#FromInt(97))), 
              $Box(char#FromInt(116))), 
            $Box(char#FromInt(101))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assert {:id "id54"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(b#0);
    assert {:id "id55"} defass#fortyTwo#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##3 := Seq#Update(b#0, LitInt(0), $Box(fortyTwo#0));
    call {:id "id56"} Call$$_module.__default.PrintSeq(prefix##3, s##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(57,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##4 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assert {:id "id57"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(c#0);
    assert {:id "id58"} defass#fortyTwo#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##4 := Seq#Update(c#0, LitInt(0), $Box(fortyTwo#0));
    call {:id "id59"} Call$$_module.__default.PrintSeq(prefix##4, s##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(58,3)
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(60,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(61,13)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id60"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(b#0);
    assume true;
    assert {:id "id61"} $Unbox(Seq#Index(b#0, LitInt(0))): ref != null;
    call {:id "id62"} Call$$_module.Number.Print($Unbox(Seq#Index(b#0, LitInt(0))): ref);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(62,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(63,13)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id63"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(c#0);
    assume true;
    assert {:id "id64"} $Unbox(Seq#Index(c#0, LitInt(0))): ref != null;
    call {:id "id65"} Call$$_module.Number.Print($Unbox(Seq#Index(c#0, LitInt(0))): ref);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(64,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(66,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##5 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                                                      $Box(char#FromInt(115))), 
                                                    $Box(char#FromInt(117))), 
                                                  $Box(char#FromInt(98))), 
                                                $Box(char#FromInt(115))), 
                                              $Box(char#FromInt(101))), 
                                            $Box(char#FromInt(113))), 
                                          $Box(char#FromInt(117))), 
                                        $Box(char#FromInt(101))), 
                                      $Box(char#FromInt(110))), 
                                    $Box(char#FromInt(99))), 
                                  $Box(char#FromInt(101))), 
                                $Box(char#FromInt(32))), 
                              $Box(char#FromInt(40))), 
                            $Box(char#FromInt(91))), 
                          $Box(char#FromInt(108))), 
                        $Box(char#FromInt(111))), 
                      $Box(char#FromInt(46))), 
                    $Box(char#FromInt(46))), 
                  $Box(char#FromInt(104))), 
                $Box(char#FromInt(105))), 
              $Box(char#FromInt(93))), 
            $Box(char#FromInt(41))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assert {:id "id66"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(b#0);
    assert {:id "id67"} LitInt(1) <= LitInt(3) && LitInt(3) <= Seq#Length(b#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##5 := Seq#Drop(Seq#Take(b#0, LitInt(3)), LitInt(1));
    call {:id "id68"} Call$$_module.__default.PrintSeq(prefix##5, s##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(67,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##6 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assert {:id "id69"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(c#0);
    assert {:id "id70"} LitInt(1) <= LitInt(2) && LitInt(2) <= Seq#Length(c#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##6 := Seq#Drop(Seq#Take(c#0, LitInt(2)), LitInt(1));
    call {:id "id71"} Call$$_module.__default.PrintSeq(prefix##6, s##6);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(68,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(70,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##7 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                                                  $Box(char#FromInt(115))), 
                                                $Box(char#FromInt(117))), 
                                              $Box(char#FromInt(98))), 
                                            $Box(char#FromInt(115))), 
                                          $Box(char#FromInt(101))), 
                                        $Box(char#FromInt(113))), 
                                      $Box(char#FromInt(117))), 
                                    $Box(char#FromInt(101))), 
                                  $Box(char#FromInt(110))), 
                                $Box(char#FromInt(99))), 
                              $Box(char#FromInt(101))), 
                            $Box(char#FromInt(32))), 
                          $Box(char#FromInt(40))), 
                        $Box(char#FromInt(91))), 
                      $Box(char#FromInt(108))), 
                    $Box(char#FromInt(111))), 
                  $Box(char#FromInt(46))), 
                $Box(char#FromInt(46))), 
              $Box(char#FromInt(93))), 
            $Box(char#FromInt(41))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assert {:id "id72"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(b#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##7 := Seq#Drop(b#0, LitInt(1));
    call {:id "id73"} Call$$_module.__default.PrintSeq(prefix##7, s##7);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(71,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##8 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assert {:id "id74"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(c#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##8 := Seq#Drop(c#0, LitInt(1));
    call {:id "id75"} Call$$_module.__default.PrintSeq(prefix##8, s##8);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(72,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(74,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##9 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                                                  $Box(char#FromInt(115))), 
                                                $Box(char#FromInt(117))), 
                                              $Box(char#FromInt(98))), 
                                            $Box(char#FromInt(115))), 
                                          $Box(char#FromInt(101))), 
                                        $Box(char#FromInt(113))), 
                                      $Box(char#FromInt(117))), 
                                    $Box(char#FromInt(101))), 
                                  $Box(char#FromInt(110))), 
                                $Box(char#FromInt(99))), 
                              $Box(char#FromInt(101))), 
                            $Box(char#FromInt(32))), 
                          $Box(char#FromInt(40))), 
                        $Box(char#FromInt(91))), 
                      $Box(char#FromInt(46))), 
                    $Box(char#FromInt(46))), 
                  $Box(char#FromInt(104))), 
                $Box(char#FromInt(105))), 
              $Box(char#FromInt(93))), 
            $Box(char#FromInt(41))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assert {:id "id76"} 0 <= LitInt(3) && LitInt(3) <= Seq#Length(b#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##9 := Seq#Take(b#0, LitInt(3));
    call {:id "id77"} Call$$_module.__default.PrintSeq(prefix##9, s##9);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(75,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##10 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assert {:id "id78"} 0 <= LitInt(2) && LitInt(2) <= Seq#Length(c#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##10 := Seq#Take(c#0, LitInt(2));
    call {:id "id79"} Call$$_module.__default.PrintSeq(prefix##10, s##10);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(76,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(78,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##11 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                                              $Box(char#FromInt(115))), 
                                            $Box(char#FromInt(117))), 
                                          $Box(char#FromInt(98))), 
                                        $Box(char#FromInt(115))), 
                                      $Box(char#FromInt(101))), 
                                    $Box(char#FromInt(113))), 
                                  $Box(char#FromInt(117))), 
                                $Box(char#FromInt(101))), 
                              $Box(char#FromInt(110))), 
                            $Box(char#FromInt(99))), 
                          $Box(char#FromInt(101))), 
                        $Box(char#FromInt(32))), 
                      $Box(char#FromInt(40))), 
                    $Box(char#FromInt(91))), 
                  $Box(char#FromInt(46))), 
                $Box(char#FromInt(46))), 
              $Box(char#FromInt(93))), 
            $Box(char#FromInt(41))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##11 := a#0;
    call {:id "id80"} Call$$_module.__default.PrintSeq(prefix##11, s##11);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(79,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##12 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##12 := b#0;
    call {:id "id81"} Call$$_module.__default.PrintSeq(prefix##12, s##12);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(80,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##13 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##13 := c#0;
    call {:id "id82"} Call$$_module.__default.PrintSeq(prefix##13, s##13);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(81,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(83,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##14 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                                    $Box(char#FromInt(99))), 
                                  $Box(char#FromInt(111))), 
                                $Box(char#FromInt(110))), 
                              $Box(char#FromInt(99))), 
                            $Box(char#FromInt(97))), 
                          $Box(char#FromInt(116))), 
                        $Box(char#FromInt(101))), 
                      $Box(char#FromInt(110))), 
                    $Box(char#FromInt(97))), 
                  $Box(char#FromInt(116))), 
                $Box(char#FromInt(105))), 
              $Box(char#FromInt(111))), 
            $Box(char#FromInt(110))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##14 := Seq#Append(a#0, b#0);
    call {:id "id83"} Call$$_module.__default.PrintSeq(prefix##14, s##14);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(84,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##15 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##15 := Seq#Append(b#0, c#0);
    call {:id "id84"} Call$$_module.__default.PrintSeq(prefix##15, s##15);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(85,3)
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(87,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(88,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(89,3)
    assume true;
    assert {:id "id85"} defass#seventeen#0;
    assume true;
    assume true;
    assert {:id "id86"} defass#seventeen#0;
    assume true;
    assume true;
    assert {:id "id87"} defass#seventeen#0;
    assume true;
    assume true;
}



procedure {:verboseName "PrintSet (well-formedness)"} CheckWellFormed$$_module.__default.PrintSet(prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Number()))
         && $IsAlloc(S#0, TSet(Tclass._module.Number()), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintSet (call)"} Call$$_module.__default.PrintSet(prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Number()))
         && $IsAlloc(S#0, TSet(Tclass._module.Number()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintSet (correctness)"} Impl$$_module.__default.PrintSet(prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Number()))
         && $IsAlloc(S#0, TSet(Tclass._module.Number()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function _module.Number.value(this: ref) : int
uses {
// Number.value: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: ref :: 
    { _module.Number.value($o) } 
    $o != null && $Is($o, Tclass._module.Number?())
       ==> $Is(_module.Number.value($o), TInt));
// Number.value: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: ref :: 
    { _module.Number.value($o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && $Is($o, Tclass._module.Number?())
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(_module.Number.value($o), TInt, $h));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintSet (correctness)"} Impl$$_module.__default.PrintSet(prefix#0: Seq, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(Tclass._module.Number()))
       && $IsAlloc(s#0, TSet(Tclass._module.Number()), $Heap);
  var sep#0: Seq where $Is(sep#0, TSeq(TChar)) && $IsAlloc(sep#0, TSeq(TChar), $Heap);
  var $rhs#0: Set;
  var $rhs#1: Seq;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var defass#m#0_0: bool;
  var m#0_0: ref
     where defass#m#0_0
       ==> $Is(m#0_0, Tclass._module.Number())
         && $IsAlloc(m#0_0, Tclass._module.Number(), $Heap);
  var $rhs##0_0: ref;
  var s##0_0: Set;
  var defass#x#0_0: bool;
  var x#0_0: ref
     where defass#x#0_0
       ==> $Is(x#0_0, Tclass._module.Number())
         && $IsAlloc(x#0_0, Tclass._module.Number(), $Heap);
  var x#0_1: ref;
  var y#0_0: ref;
  var $rhs#0_0: Set;
  var $rhs#0_1: Seq;

    // AddMethodImpl: PrintSet, Impl$$_module.__default.PrintSet
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(95,3)
    assume true;
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(96,27)
    assume true;
    assume true;
    assume true;
    $rhs#0 := S#0;
    assume true;
    $rhs#1 := Lit(Seq#Empty(): Seq);
    s#0 := $rhs#0;
    sep#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(97,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0);
    havoc $w$loop#0;
    while (true)
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
      free invariant (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0)
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (Set#Card(s#0) <= LitInt(0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (Set#Card(s#0) == 0)
        {
            break;
        }

        $decr$loop#00 := (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0);
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(98,5)
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(100,36)
        assume true;
        // TrCallStmt: Adding lhs with type Number
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_0 := s#0;
        call {:id "id92"} $rhs##0_0 := Call$$_module.__default.ThereIsASmallest(s##0_0);
        // TrCallStmt: After ProcessCallStmt
        m#0_0 := $rhs##0_0;
        defass#m#0_0 := true;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(101,11)
        havoc x#0_1;
        if ($Is(x#0_1, Tclass._module.Number())
           && $IsAlloc(x#0_1, Tclass._module.Number(), $Heap))
        {
            if (Set#IsMember(s#0, $Box(x#0_1)))
            {
                // Begin Comprehension WF check
                havoc y#0_0;
                if ($Is(y#0_0, Tclass._module.Number())
                   && $IsAlloc(y#0_0, Tclass._module.Number(), $Heap))
                {
                    if (Set#IsMember(s#0, $Box(y#0_0)))
                    {
                        assert {:id "id94"} {:subsumption 0} x#0_1 != null;
                        assert {:id "id95"} {:subsumption 0} y#0_0 != null;
                    }
                }

                // End Comprehension WF check
            }

            assume true;
        }

        assert {:id "id96"} ($Is(null, Tclass._module.Number())
             && 
            Set#IsMember(s#0, $Box(null))
             && (forall y#0_3: ref :: 
              { _module.Number.value(y#0_3) } { Set#IsMember(s#0, $Box(y#0_3)) } 
              $Is(y#0_3, Tclass._module.Number())
                 ==> 
                Set#IsMember(s#0, $Box(y#0_3))
                 ==> _module.Number.value(null) <= _module.Number.value(y#0_3)))
           || (exists $as#x0_0#0_0: ref :: 
            $Is($as#x0_0#0_0, Tclass._module.Number())
               && 
              Set#IsMember(s#0, $Box($as#x0_0#0_0))
               && (forall y#0_2: ref :: 
                { _module.Number.value(y#0_2) } { Set#IsMember(s#0, $Box(y#0_2)) } 
                $Is(y#0_2, Tclass._module.Number())
                   ==> 
                  Set#IsMember(s#0, $Box(y#0_2))
                   ==> _module.Number.value($as#x0_0#0_0) <= _module.Number.value(y#0_2)));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id97"} Set#IsMember(s#0, $Box(x#0_0))
           && (forall y#0_4: ref :: 
            { _module.Number.value(y#0_4) } { Set#IsMember(s#0, $Box(y#0_4)) } 
            $Is(y#0_4, Tclass._module.Number())
               ==> 
              Set#IsMember(s#0, $Box(y#0_4))
               ==> _module.Number.value(x#0_0) <= _module.Number.value(y#0_4));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(102,12)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id98"} defass#x#0_0;
        assume true;
        assert {:id "id99"} x#0_0 != null;
        call {:id "id100"} Call$$_module.Number.Print(x#0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(103,12)
        assume true;
        assume true;
        assert {:id "id101"} defass#x#0_0;
        assume true;
        $rhs#0_0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, $Box(x#0_0)));
        assume true;
        $rhs#0_1 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(44))), $Box(char#FromInt(32))));
        s#0 := $rhs#0_0;
        sep#0 := $rhs#0_1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(97,3)
        assert {:id "id106"} 0 <= $decr$loop#00
           || (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0)
             == $decr$loop#00;
        assert {:id "id107"} (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0)
           < $decr$loop#00;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(105,3)
    assume true;
}



procedure {:verboseName "ThereIsASmallest (well-formedness)"} CheckWellFormed$$_module.__default.ThereIsASmallest(s#0: Set
       where $Is(s#0, TSet(Tclass._module.Number()))
         && $IsAlloc(s#0, TSet(Tclass._module.Number()), $Heap))
   returns (m#0: ref
       where $Is(m#0, Tclass._module.Number())
         && $IsAlloc(m#0, Tclass._module.Number(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ThereIsASmallest (well-formedness)"} CheckWellFormed$$_module.__default.ThereIsASmallest(s#0: Set) returns (m#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var y#0: ref;


    // AddMethodImpl: ThereIsASmallest, CheckWellFormed$$_module.__default.ThereIsASmallest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id108"} !Set#Equal(s#0, Set#Empty(): Set);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc m#0;
    assume {:id "id109"} Set#IsMember(s#0, $Box(m#0));
    havoc y#0;
    assume $Is(y#0, Tclass._module.Number())
       && $IsAlloc(y#0, Tclass._module.Number(), $Heap);
    if (*)
    {
        assume {:id "id110"} Set#IsMember(s#0, $Box(y#0));
        assert {:id "id111"} m#0 != null;
        assert {:id "id112"} y#0 != null;
        assume {:id "id113"} _module.Number.value(m#0) <= _module.Number.value(y#0);
    }
    else
    {
        assume {:id "id114"} Set#IsMember(s#0, $Box(y#0))
           ==> _module.Number.value(m#0) <= _module.Number.value(y#0);
    }

    assume {:id "id115"} (forall y#1: ref :: 
      { _module.Number.value(y#1) } { Set#IsMember(s#0, $Box(y#1)) } 
      $Is(y#1, Tclass._module.Number())
         ==> 
        Set#IsMember(s#0, $Box(y#1))
         ==> _module.Number.value(m#0) <= _module.Number.value(y#1));
}



procedure {:verboseName "ThereIsASmallest (call)"} Call$$_module.__default.ThereIsASmallest(s#0: Set
       where $Is(s#0, TSet(Tclass._module.Number()))
         && $IsAlloc(s#0, TSet(Tclass._module.Number()), $Heap))
   returns (m#0: ref
       where $Is(m#0, Tclass._module.Number())
         && $IsAlloc(m#0, Tclass._module.Number(), $Heap));
  // user-defined preconditions
  requires {:id "id116"} !Set#Equal(s#0, Set#Empty(): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id117"} Set#IsMember(s#0, $Box(m#0));
  ensures {:id "id118"} (forall y#1: ref :: 
    { _module.Number.value(y#1) } { Set#IsMember(s#0, $Box(y#1)) } 
    $Is(y#1, Tclass._module.Number())
       ==> 
      Set#IsMember(s#0, $Box(y#1))
       ==> _module.Number.value(m#0) <= _module.Number.value(y#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ThereIsASmallest (correctness)"} Impl$$_module.__default.ThereIsASmallest(s#0: Set
       where $Is(s#0, TSet(Tclass._module.Number()))
         && $IsAlloc(s#0, TSet(Tclass._module.Number()), $Heap))
   returns (defass#m#0: bool, 
    m#0: ref
       where defass#m#0
         ==> $Is(m#0, Tclass._module.Number())
           && $IsAlloc(m#0, Tclass._module.Number(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id119"} !Set#Equal(s#0, Set#Empty(): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id120"} Set#IsMember(s#0, $Box(m#0));
  ensures {:id "id121"} (forall y#1: ref :: 
    { _module.Number.value(y#1) } { Set#IsMember(s#0, $Box(y#1)) } 
    $Is(y#1, Tclass._module.Number())
       ==> 
      Set#IsMember(s#0, $Box(y#1))
       ==> _module.Number.value(m#0) <= _module.Number.value(y#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ThereIsASmallest (correctness)"} Impl$$_module.__default.ThereIsASmallest(s#0: Set) returns (defass#m#0: bool, m#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#1: ref;
  var eg$y#0: ref;
  var y#0_0: ref
     where $Is(y#0_0, Tclass._module.Number())
       && $IsAlloc(y#0_0, Tclass._module.Number(), $Heap);
  var s'#1_0: Set
     where $Is(s'#1_0, TSet(Tclass._module.Number()))
       && $IsAlloc(s'#1_0, TSet(Tclass._module.Number()), $Heap);
  var $rhs##1_0: ref;
  var s##1_0: Set;

    // AddMethodImpl: ThereIsASmallest, Impl$$_module.__default.ThereIsASmallest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(112,5)
    havoc m#1;
    if ($Is(m#1, Tclass._module.Number())
       && $IsAlloc(m#1, Tclass._module.Number(), $Heap))
    {
        assume true;
    }

    assert {:id "id122"} ($Is(null, Tclass._module.Number()) && Set#IsMember(s#0, $Box(null)))
       || (exists $as#m0#0: ref :: 
        $Is($as#m0#0, Tclass._module.Number()) && Set#IsMember(s#0, $Box($as#m0#0)));
    defass#m#0 := true;
    havoc m#0;
    assume {:id "id123"} Set#IsMember(s#0, $Box(m#0));
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(113,3)
    // Begin Comprehension WF check
    havoc eg$y#0;
    if ($Is(eg$y#0, Tclass._module.Number())
       && $IsAlloc(eg$y#0, Tclass._module.Number(), $Heap))
    {
        if (Set#IsMember(s#0, $Box(eg$y#0)))
        {
            assert {:id "id124"} eg$y#0 != null;
            assert {:id "id125"} defass#m#0;
            assert {:id "id126"} m#0 != null;
        }
    }

    // End Comprehension WF check
    assume true;
    havoc y#0_0 /* where $Is(y#0_0, Tclass._module.Number())
       && $IsAlloc(y#0_0, Tclass._module.Number(), $Heap) */;
    if (*)
    {
        assume Set#IsMember(s#0, $Box(y#0_0))
           && _module.Number.value(y#0_0) < _module.Number.value(m#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(114,12)
        assume true;
        assert {:id "id127"} defass#m#0;
        assume true;
        s'#1_0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, $Box(m#0)));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(115,5)
        assume true;
        assert {:id "id129"} Set#IsMember(s'#1_0, $Box(y#0_0));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(116,26)
        assume true;
        // TrCallStmt: Adding lhs with type Number
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##1_0 := s'#1_0;
        assert {:id "id130"} Set#Subset(s##1_0, s#0) && !Set#Subset(s#0, s##1_0);
        call {:id "id131"} $rhs##1_0 := Call$$_module.__default.ThereIsASmallest(s##1_0);
        // TrCallStmt: After ProcessCallStmt
        m#0 := $rhs##1_0;
        defass#m#0 := true;
    }
    else
    {
        assume {:id "id133"} !(exists eg$y#1: ref :: 
          { _module.Number.value(eg$y#1) } { Set#IsMember(s#0, $Box(eg$y#1)) } 
          $Is(eg$y#1, Tclass._module.Number())
             && 
            Set#IsMember(s#0, $Box(eg$y#1))
             && _module.Number.value(eg$y#1) < _module.Number.value(m#0));
    }

    assert {:id "id134"} defass#m#0;
}



procedure {:verboseName "Sets (well-formedness)"} CheckWellFormed$$_module.__default.Sets();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Sets (call)"} Call$$_module.__default.Sets();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Sets (correctness)"} Impl$$_module.__default.Sets() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sets (correctness)"} Impl$$_module.__default.Sets() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#twelve#0: bool;
  var twelve#0: ref
     where defass#twelve#0
       ==> $Is(twelve#0, Tclass._module.Integer())
         && $IsAlloc(twelve#0, Tclass._module.Integer(), $Heap);
  var $nw: ref;
  var value##0: int;
  var defass#seventeen#0: bool;
  var seventeen#0: ref
     where defass#seventeen#0
       ==> $Is(seventeen#0, Tclass._module.Integer())
         && $IsAlloc(seventeen#0, Tclass._module.Integer(), $Heap);
  var value##1: int;
  var defass#fortyTwo#0: bool;
  var fortyTwo#0: ref
     where defass#fortyTwo#0
       ==> $Is(fortyTwo#0, Tclass._module.Integer())
         && $IsAlloc(fortyTwo#0, Tclass._module.Integer(), $Heap);
  var value##2: int;
  var defass#eightyTwo#0: bool;
  var eightyTwo#0: ref
     where defass#eightyTwo#0
       ==> $Is(eightyTwo#0, Tclass._module.Integer())
         && $IsAlloc(eightyTwo#0, Tclass._module.Integer(), $Heap);
  var value##3: int;
  var a#0: Set
     where $Is(a#0, TSet(Tclass._module.Number()))
       && $IsAlloc(a#0, TSet(Tclass._module.Number()), $Heap);
  var b#0: Set
     where $Is(b#0, TSet(Tclass._module.Number()))
       && $IsAlloc(b#0, TSet(Tclass._module.Number()), $Heap);
  var c#0: Set
     where $Is(c#0, TSet(Tclass._module.Integer()))
       && $IsAlloc(c#0, TSet(Tclass._module.Integer()), $Heap);
  var prefix##0: Seq;
  var S##0: Set;
  var prefix##1: Seq;
  var S##1: Set;
  var prefix##2: Seq;
  var S##2: Set;
  var comprehension#0: Set
     where $Is(comprehension#0, TSet(Tclass._module.Number()))
       && $IsAlloc(comprehension#0, TSet(Tclass._module.Number()), $Heap);
  var n#0: ref;
  var prefix##3: Seq;
  var S##3: Set;
  var prefix##4: Seq;
  var S##4: Set;
  var prefix##5: Seq;
  var S##5: Set;
  var prefix##6: Seq;
  var S##6: Set;
  var prefix##7: Seq;
  var S##7: Set;
  var prefix##8: Seq;
  var S##8: Set;
  var prefix##9: Seq;
  var S##9: Set;

    // AddMethodImpl: Sets, Impl$$_module.__default.Sets
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(121,14)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(121,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##0 := LitInt(12);
    call {:id "id135"} $nw := Call$$_module.Integer.__ctor(value##0);
    // TrCallStmt: After ProcessCallStmt
    twelve#0 := $nw;
    defass#twelve#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(122,17)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(122,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##1 := LitInt(17);
    call {:id "id137"} $nw := Call$$_module.Integer.__ctor(value##1);
    // TrCallStmt: After ProcessCallStmt
    seventeen#0 := $nw;
    defass#seventeen#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(123,16)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(123,19)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##2 := LitInt(42);
    call {:id "id139"} $nw := Call$$_module.Integer.__ctor(value##2);
    // TrCallStmt: After ProcessCallStmt
    fortyTwo#0 := $nw;
    defass#fortyTwo#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(124,17)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(124,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##3 := LitInt(82);
    call {:id "id141"} $nw := Call$$_module.Integer.__ctor(value##3);
    // TrCallStmt: After ProcessCallStmt
    eightyTwo#0 := $nw;
    defass#eightyTwo#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(126,9)
    assume true;
    assume true;
    a#0 := Lit(Set#Empty(): Set);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(127,22)
    assume true;
    assert {:id "id144"} defass#seventeen#0;
    assert {:id "id145"} defass#eightyTwo#0;
    assert {:id "id146"} defass#seventeen#0;
    assert {:id "id147"} defass#eightyTwo#0;
    assume true;
    b#0 := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(seventeen#0)), $Box(eightyTwo#0)), 
        $Box(seventeen#0)), 
      $Box(eightyTwo#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(128,9)
    assume true;
    assert {:id "id149"} defass#twelve#0;
    assert {:id "id150"} defass#seventeen#0;
    assume true;
    c#0 := Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(twelve#0)), $Box(seventeen#0));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(130,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(83))), $Box(char#FromInt(101))), 
              $Box(char#FromInt(116))), 
            $Box(char#FromInt(115))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##0 := a#0;
    call {:id "id152"} Call$$_module.__default.PrintSet(prefix##0, S##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(131,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##1 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##1 := b#0;
    call {:id "id153"} Call$$_module.__default.PrintSet(prefix##1, S##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(132,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##2 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##2 := c#0;
    call {:id "id154"} Call$$_module.__default.PrintSet(prefix##2, S##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(133,3)
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(135,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(137,21)
    assume true;
    // Begin Comprehension WF check
    havoc n#0;
    if ($Is(n#0, Tclass._module.Number())
       && $IsAlloc(n#0, Tclass._module.Number(), $Heap))
    {
        if (Set#IsMember(b#0, $Box(n#0)))
        {
            assert {:id "id155"} n#0 != null;
            assert {:id "id156"} LitInt(2) != 0;
        }

        if (Set#IsMember(b#0, $Box(n#0))
           && Mod(_module.Number.value(n#0), LitInt(2)) == LitInt(0))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    comprehension#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, Tclass._module.Number())
           && 
          Set#IsMember(b#0, $y#0)
           && Mod(_module.Number.value($Unbox($y#0): ref), LitInt(2)) == LitInt(0)));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(138,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##3 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                                    $Box(char#FromInt(99))), 
                                  $Box(char#FromInt(111))), 
                                $Box(char#FromInt(109))), 
                              $Box(char#FromInt(112))), 
                            $Box(char#FromInt(114))), 
                          $Box(char#FromInt(101))), 
                        $Box(char#FromInt(104))), 
                      $Box(char#FromInt(101))), 
                    $Box(char#FromInt(110))), 
                  $Box(char#FromInt(115))), 
                $Box(char#FromInt(105))), 
              $Box(char#FromInt(111))), 
            $Box(char#FromInt(110))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##3 := comprehension#0;
    call {:id "id158"} Call$$_module.__default.PrintSet(prefix##3, S##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(139,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(141,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##4 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                    $Box(char#FromInt(117))), 
                  $Box(char#FromInt(110))), 
                $Box(char#FromInt(105))), 
              $Box(char#FromInt(111))), 
            $Box(char#FromInt(110))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##4 := Set#Union(a#0, b#0);
    call {:id "id159"} Call$$_module.__default.PrintSet(prefix##4, S##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(142,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##5 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##5 := Set#Union(b#0, c#0);
    call {:id "id160"} Call$$_module.__default.PrintSet(prefix##5, S##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(143,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(145,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##6 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                                  $Box(char#FromInt(105))), 
                                $Box(char#FromInt(110))), 
                              $Box(char#FromInt(116))), 
                            $Box(char#FromInt(101))), 
                          $Box(char#FromInt(114))), 
                        $Box(char#FromInt(115))), 
                      $Box(char#FromInt(101))), 
                    $Box(char#FromInt(99))), 
                  $Box(char#FromInt(116))), 
                $Box(char#FromInt(105))), 
              $Box(char#FromInt(111))), 
            $Box(char#FromInt(110))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##6 := Set#Intersection(a#0, b#0);
    call {:id "id161"} Call$$_module.__default.PrintSet(prefix##6, S##6);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(146,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##7 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##7 := Set#Intersection(b#0, c#0);
    call {:id "id162"} Call$$_module.__default.PrintSet(prefix##7, S##7);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(147,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(149,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##8 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                              $Box(char#FromInt(100))), 
                            $Box(char#FromInt(105))), 
                          $Box(char#FromInt(102))), 
                        $Box(char#FromInt(102))), 
                      $Box(char#FromInt(101))), 
                    $Box(char#FromInt(114))), 
                  $Box(char#FromInt(101))), 
                $Box(char#FromInt(110))), 
              $Box(char#FromInt(99))), 
            $Box(char#FromInt(101))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##8 := Set#Difference(a#0, b#0);
    call {:id "id163"} Call$$_module.__default.PrintSet(prefix##8, S##8);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(150,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##9 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##9 := Set#Difference(b#0, c#0);
    call {:id "id164"} Call$$_module.__default.PrintSet(prefix##9, S##9);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(151,3)
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(153,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(154,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(155,3)
    assume true;
    assert {:id "id165"} defass#seventeen#0;
    assume true;
    assume true;
    assert {:id "id166"} defass#seventeen#0;
    assume true;
    assume true;
    assert {:id "id167"} defass#seventeen#0;
    assume true;
    assume true;
}



procedure {:verboseName "PrintMultiset (well-formedness)"} CheckWellFormed$$_module.__default.PrintMultiset(prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap), 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(Tclass._module.Number()))
         && $IsAlloc(S#0, TMultiSet(Tclass._module.Number()), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintMultiset (call)"} Call$$_module.__default.PrintMultiset(prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap), 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(Tclass._module.Number()))
         && $IsAlloc(S#0, TMultiSet(Tclass._module.Number()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintMultiset (correctness)"} Impl$$_module.__default.PrintMultiset(prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap), 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(Tclass._module.Number()))
         && $IsAlloc(S#0, TMultiSet(Tclass._module.Number()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintMultiset (correctness)"} Impl$$_module.__default.PrintMultiset(prefix#0: Seq, S#0: MultiSet) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(Tclass._module.Number()))
       && $IsAlloc(s#0, TMultiSet(Tclass._module.Number()), $Heap);
  var sep#0: Seq where $Is(sep#0, TSeq(TChar)) && $IsAlloc(sep#0, TSeq(TChar), $Heap);
  var $rhs#0: MultiSet;
  var $rhs#1: Seq;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var defass#m#0_0: bool;
  var m#0_0: ref
     where defass#m#0_0
       ==> $Is(m#0_0, Tclass._module.Number())
         && $IsAlloc(m#0_0, Tclass._module.Number(), $Heap);
  var $rhs##0_0: ref;
  var s##0_0: MultiSet;
  var defass#x#0_0: bool;
  var x#0_0: ref
     where defass#x#0_0
       ==> $Is(x#0_0, Tclass._module.Number())
         && $IsAlloc(x#0_0, Tclass._module.Number(), $Heap);
  var x#0_1: ref;
  var y#0_0: ref;
  var $rhs#0_0: MultiSet;
  var $rhs#0_1: Seq;

    // AddMethodImpl: PrintMultiset, Impl$$_module.__default.PrintMultiset
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(161,3)
    assume true;
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(162,32)
    assume true;
    assume true;
    assume true;
    $rhs#0 := S#0;
    assume true;
    $rhs#1 := Lit(Seq#Empty(): Seq);
    s#0 := $rhs#0;
    sep#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(163,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if MultiSet#Card(s#0) <= LitInt(0)
       then 0 - MultiSet#Card(s#0)
       else MultiSet#Card(s#0) - 0);
    havoc $w$loop#0;
    while (true)
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
      free invariant (if MultiSet#Card(s#0) <= LitInt(0)
           then 0 - MultiSet#Card(s#0)
           else MultiSet#Card(s#0) - 0)
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (MultiSet#Card(s#0) <= LitInt(0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (MultiSet#Card(s#0) == 0)
        {
            break;
        }

        $decr$loop#00 := (if MultiSet#Card(s#0) <= LitInt(0)
           then 0 - MultiSet#Card(s#0)
           else MultiSet#Card(s#0) - 0);
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(164,5)
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(166,46)
        assume true;
        // TrCallStmt: Adding lhs with type Number
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_0 := s#0;
        call {:id "id172"} $rhs##0_0 := Call$$_module.__default.ThereIsASmallestInMultiset(s##0_0);
        // TrCallStmt: After ProcessCallStmt
        m#0_0 := $rhs##0_0;
        defass#m#0_0 := true;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(167,11)
        havoc x#0_1;
        if ($Is(x#0_1, Tclass._module.Number())
           && $IsAlloc(x#0_1, Tclass._module.Number(), $Heap))
        {
            if (MultiSet#Multiplicity(s#0, $Box(x#0_1)) > 0)
            {
                // Begin Comprehension WF check
                havoc y#0_0;
                if ($Is(y#0_0, Tclass._module.Number())
                   && $IsAlloc(y#0_0, Tclass._module.Number(), $Heap))
                {
                    if (MultiSet#Multiplicity(s#0, $Box(y#0_0)) > 0)
                    {
                        assert {:id "id174"} {:subsumption 0} x#0_1 != null;
                        assert {:id "id175"} {:subsumption 0} y#0_0 != null;
                    }
                }

                // End Comprehension WF check
            }

            assume true;
        }

        assert {:id "id176"} ($Is(null, Tclass._module.Number())
             && 
            MultiSet#Multiplicity(s#0, $Box(null)) > 0
             && (forall y#0_3: ref :: 
              { _module.Number.value(y#0_3) } { MultiSet#Multiplicity(s#0, $Box(y#0_3)) } 
              $Is(y#0_3, Tclass._module.Number())
                 ==> 
                MultiSet#Multiplicity(s#0, $Box(y#0_3)) > 0
                 ==> _module.Number.value(null) <= _module.Number.value(y#0_3)))
           || (exists $as#x0_0#0_0: ref :: 
            $Is($as#x0_0#0_0, Tclass._module.Number())
               && 
              MultiSet#Multiplicity(s#0, $Box($as#x0_0#0_0)) > 0
               && (forall y#0_2: ref :: 
                { _module.Number.value(y#0_2) } { MultiSet#Multiplicity(s#0, $Box(y#0_2)) } 
                $Is(y#0_2, Tclass._module.Number())
                   ==> 
                  MultiSet#Multiplicity(s#0, $Box(y#0_2)) > 0
                   ==> _module.Number.value($as#x0_0#0_0) <= _module.Number.value(y#0_2)));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id177"} MultiSet#Multiplicity(s#0, $Box(x#0_0)) > 0
           && (forall y#0_4: ref :: 
            { _module.Number.value(y#0_4) } { MultiSet#Multiplicity(s#0, $Box(y#0_4)) } 
            $Is(y#0_4, Tclass._module.Number())
               ==> 
              MultiSet#Multiplicity(s#0, $Box(y#0_4)) > 0
               ==> _module.Number.value(x#0_0) <= _module.Number.value(y#0_4));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(168,12)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id178"} defass#x#0_0;
        assume true;
        assert {:id "id179"} x#0_0 != null;
        call {:id "id180"} Call$$_module.Number.Print(x#0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(169,12)
        assume true;
        assume true;
        assert {:id "id181"} defass#x#0_0;
        assume true;
        $rhs#0_0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(x#0_0)));
        assume true;
        $rhs#0_1 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(44))), $Box(char#FromInt(32))));
        s#0 := $rhs#0_0;
        sep#0 := $rhs#0_1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(163,3)
        assert {:id "id186"} 0 <= $decr$loop#00
           || (if MultiSet#Card(s#0) <= LitInt(0)
               then 0 - MultiSet#Card(s#0)
               else MultiSet#Card(s#0) - 0)
             == $decr$loop#00;
        assert {:id "id187"} (if MultiSet#Card(s#0) <= LitInt(0)
             then 0 - MultiSet#Card(s#0)
             else MultiSet#Card(s#0) - 0)
           < $decr$loop#00;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(171,3)
    assume true;
}



procedure {:verboseName "ThereIsASmallestInMultiset (well-formedness)"} CheckWellFormed$$_module.__default.ThereIsASmallestInMultiset(s#0: MultiSet
       where $Is(s#0, TMultiSet(Tclass._module.Number()))
         && $IsAlloc(s#0, TMultiSet(Tclass._module.Number()), $Heap))
   returns (m#0: ref
       where $Is(m#0, Tclass._module.Number())
         && $IsAlloc(m#0, Tclass._module.Number(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ThereIsASmallestInMultiset (well-formedness)"} CheckWellFormed$$_module.__default.ThereIsASmallestInMultiset(s#0: MultiSet) returns (m#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var y#0: ref;


    // AddMethodImpl: ThereIsASmallestInMultiset, CheckWellFormed$$_module.__default.ThereIsASmallestInMultiset
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id188"} !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc m#0;
    assume {:id "id189"} MultiSet#Multiplicity(s#0, $Box(m#0)) > 0;
    havoc y#0;
    assume $Is(y#0, Tclass._module.Number())
       && $IsAlloc(y#0, Tclass._module.Number(), $Heap);
    if (*)
    {
        assume {:id "id190"} MultiSet#Multiplicity(s#0, $Box(y#0)) > 0;
        assert {:id "id191"} m#0 != null;
        assert {:id "id192"} y#0 != null;
        assume {:id "id193"} _module.Number.value(m#0) <= _module.Number.value(y#0);
    }
    else
    {
        assume {:id "id194"} MultiSet#Multiplicity(s#0, $Box(y#0)) > 0
           ==> _module.Number.value(m#0) <= _module.Number.value(y#0);
    }

    assume {:id "id195"} (forall y#1: ref :: 
      { _module.Number.value(y#1) } { MultiSet#Multiplicity(s#0, $Box(y#1)) } 
      $Is(y#1, Tclass._module.Number())
         ==> 
        MultiSet#Multiplicity(s#0, $Box(y#1)) > 0
         ==> _module.Number.value(m#0) <= _module.Number.value(y#1));
}



procedure {:verboseName "ThereIsASmallestInMultiset (call)"} Call$$_module.__default.ThereIsASmallestInMultiset(s#0: MultiSet
       where $Is(s#0, TMultiSet(Tclass._module.Number()))
         && $IsAlloc(s#0, TMultiSet(Tclass._module.Number()), $Heap))
   returns (m#0: ref
       where $Is(m#0, Tclass._module.Number())
         && $IsAlloc(m#0, Tclass._module.Number(), $Heap));
  // user-defined preconditions
  requires {:id "id196"} !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id197"} MultiSet#Multiplicity(s#0, $Box(m#0)) > 0;
  ensures {:id "id198"} (forall y#1: ref :: 
    { _module.Number.value(y#1) } { MultiSet#Multiplicity(s#0, $Box(y#1)) } 
    $Is(y#1, Tclass._module.Number())
       ==> 
      MultiSet#Multiplicity(s#0, $Box(y#1)) > 0
       ==> _module.Number.value(m#0) <= _module.Number.value(y#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ThereIsASmallestInMultiset (correctness)"} Impl$$_module.__default.ThereIsASmallestInMultiset(s#0: MultiSet
       where $Is(s#0, TMultiSet(Tclass._module.Number()))
         && $IsAlloc(s#0, TMultiSet(Tclass._module.Number()), $Heap))
   returns (defass#m#0: bool, 
    m#0: ref
       where defass#m#0
         ==> $Is(m#0, Tclass._module.Number())
           && $IsAlloc(m#0, Tclass._module.Number(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id199"} !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id200"} MultiSet#Multiplicity(s#0, $Box(m#0)) > 0;
  ensures {:id "id201"} (forall y#1: ref :: 
    { _module.Number.value(y#1) } { MultiSet#Multiplicity(s#0, $Box(y#1)) } 
    $Is(y#1, Tclass._module.Number())
       ==> 
      MultiSet#Multiplicity(s#0, $Box(y#1)) > 0
       ==> _module.Number.value(m#0) <= _module.Number.value(y#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ThereIsASmallestInMultiset (correctness)"} Impl$$_module.__default.ThereIsASmallestInMultiset(s#0: MultiSet) returns (defass#m#0: bool, m#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#1: ref;
  var eg$y#0: ref;
  var y#0_0: ref
     where $Is(y#0_0, Tclass._module.Number())
       && $IsAlloc(y#0_0, Tclass._module.Number(), $Heap);
  var s'#1_0: MultiSet
     where $Is(s'#1_0, TMultiSet(Tclass._module.Number()))
       && $IsAlloc(s'#1_0, TMultiSet(Tclass._module.Number()), $Heap);
  var $rhs##1_0: ref;
  var s##1_0: MultiSet;

    // AddMethodImpl: ThereIsASmallestInMultiset, Impl$$_module.__default.ThereIsASmallestInMultiset
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(178,5)
    havoc m#1;
    if ($Is(m#1, Tclass._module.Number())
       && $IsAlloc(m#1, Tclass._module.Number(), $Heap))
    {
        assume true;
    }

    assert {:id "id202"} ($Is(null, Tclass._module.Number())
         && MultiSet#Multiplicity(s#0, $Box(null)) > 0)
       || (exists $as#m0#0: ref :: 
        $Is($as#m0#0, Tclass._module.Number())
           && MultiSet#Multiplicity(s#0, $Box($as#m0#0)) > 0);
    defass#m#0 := true;
    havoc m#0;
    assume {:id "id203"} MultiSet#Multiplicity(s#0, $Box(m#0)) > 0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(179,3)
    // Begin Comprehension WF check
    havoc eg$y#0;
    if ($Is(eg$y#0, Tclass._module.Number())
       && $IsAlloc(eg$y#0, Tclass._module.Number(), $Heap))
    {
        if (MultiSet#Multiplicity(s#0, $Box(eg$y#0)) > 0)
        {
            assert {:id "id204"} eg$y#0 != null;
            assert {:id "id205"} defass#m#0;
            assert {:id "id206"} m#0 != null;
        }
    }

    // End Comprehension WF check
    assume true;
    havoc y#0_0 /* where $Is(y#0_0, Tclass._module.Number())
       && $IsAlloc(y#0_0, Tclass._module.Number(), $Heap) */;
    if (*)
    {
        assume MultiSet#Multiplicity(s#0, $Box(y#0_0)) > 0
           && _module.Number.value(y#0_0) < _module.Number.value(m#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(180,12)
        assume true;
        assert {:id "id207"} defass#m#0;
        assume true;
        s'#1_0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(m#0)));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(181,5)
        assume true;
        assert {:id "id209"} MultiSet#Multiplicity(s'#1_0, $Box(y#0_0)) > 0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(182,36)
        assume true;
        // TrCallStmt: Adding lhs with type Number
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##1_0 := s'#1_0;
        assert {:id "id210"} MultiSet#Subset(s##1_0, s#0) && !MultiSet#Equal(s##1_0, s#0);
        call {:id "id211"} $rhs##1_0 := Call$$_module.__default.ThereIsASmallestInMultiset(s##1_0);
        // TrCallStmt: After ProcessCallStmt
        m#0 := $rhs##1_0;
        defass#m#0 := true;
    }
    else
    {
        assume {:id "id213"} !(exists eg$y#1: ref :: 
          { _module.Number.value(eg$y#1) } { MultiSet#Multiplicity(s#0, $Box(eg$y#1)) } 
          $Is(eg$y#1, Tclass._module.Number())
             && 
            MultiSet#Multiplicity(s#0, $Box(eg$y#1)) > 0
             && _module.Number.value(eg$y#1) < _module.Number.value(m#0));
    }

    assert {:id "id214"} defass#m#0;
}



procedure {:verboseName "Multisets (well-formedness)"} CheckWellFormed$$_module.__default.Multisets();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Multisets (call)"} Call$$_module.__default.Multisets();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Multisets (correctness)"} Impl$$_module.__default.Multisets() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Multisets (correctness)"} Impl$$_module.__default.Multisets() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#twelve#0: bool;
  var twelve#0: ref
     where defass#twelve#0
       ==> $Is(twelve#0, Tclass._module.Integer())
         && $IsAlloc(twelve#0, Tclass._module.Integer(), $Heap);
  var $nw: ref;
  var value##0: int;
  var defass#seventeen#0: bool;
  var seventeen#0: ref
     where defass#seventeen#0
       ==> $Is(seventeen#0, Tclass._module.Integer())
         && $IsAlloc(seventeen#0, Tclass._module.Integer(), $Heap);
  var value##1: int;
  var defass#fortyTwo#0: bool;
  var fortyTwo#0: ref
     where defass#fortyTwo#0
       ==> $Is(fortyTwo#0, Tclass._module.Integer())
         && $IsAlloc(fortyTwo#0, Tclass._module.Integer(), $Heap);
  var value##2: int;
  var defass#eightyTwo#0: bool;
  var eightyTwo#0: ref
     where defass#eightyTwo#0
       ==> $Is(eightyTwo#0, Tclass._module.Integer())
         && $IsAlloc(eightyTwo#0, Tclass._module.Integer(), $Heap);
  var value##3: int;
  var a#0: MultiSet
     where $Is(a#0, TMultiSet(Tclass._module.Number()))
       && $IsAlloc(a#0, TMultiSet(Tclass._module.Number()), $Heap);
  var b#0: MultiSet
     where $Is(b#0, TMultiSet(Tclass._module.Number()))
       && $IsAlloc(b#0, TMultiSet(Tclass._module.Number()), $Heap);
  var c#0: MultiSet
     where $Is(c#0, TMultiSet(Tclass._module.Integer()))
       && $IsAlloc(c#0, TMultiSet(Tclass._module.Integer()), $Heap);
  var prefix##0: Seq;
  var S##0: MultiSet;
  var prefix##1: Seq;
  var S##1: MultiSet;
  var prefix##2: Seq;
  var S##2: MultiSet;
  var prefix##3: Seq;
  var S##3: MultiSet;
  var prefix##4: Seq;
  var S##4: MultiSet;
  var prefix##5: Seq;
  var S##5: MultiSet;
  var prefix##6: Seq;
  var S##6: MultiSet;
  var prefix##7: Seq;
  var S##7: MultiSet;
  var prefix##8: Seq;
  var S##8: MultiSet;
  var prefix##9: Seq;
  var S##9: MultiSet;
  var prefix##10: Seq;
  var S##10: MultiSet;

    // AddMethodImpl: Multisets, Impl$$_module.__default.Multisets
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(187,14)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(187,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##0 := LitInt(12);
    call {:id "id215"} $nw := Call$$_module.Integer.__ctor(value##0);
    // TrCallStmt: After ProcessCallStmt
    twelve#0 := $nw;
    defass#twelve#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(188,17)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(188,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##1 := LitInt(17);
    call {:id "id217"} $nw := Call$$_module.Integer.__ctor(value##1);
    // TrCallStmt: After ProcessCallStmt
    seventeen#0 := $nw;
    defass#seventeen#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(189,16)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(189,19)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##2 := LitInt(42);
    call {:id "id219"} $nw := Call$$_module.Integer.__ctor(value##2);
    // TrCallStmt: After ProcessCallStmt
    fortyTwo#0 := $nw;
    defass#fortyTwo#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(190,17)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(190,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##3 := LitInt(82);
    call {:id "id221"} $nw := Call$$_module.Integer.__ctor(value##3);
    // TrCallStmt: After ProcessCallStmt
    eightyTwo#0 := $nw;
    defass#eightyTwo#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(192,9)
    assume true;
    assume true;
    a#0 := Lit(MultiSet#Empty(): MultiSet);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(193,27)
    assume true;
    assert {:id "id224"} defass#seventeen#0;
    assert {:id "id225"} defass#eightyTwo#0;
    assert {:id "id226"} defass#seventeen#0;
    assert {:id "id227"} defass#eightyTwo#0;
    assume true;
    b#0 := MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(seventeen#0)), 
          $Box(eightyTwo#0)), 
        $Box(seventeen#0)), 
      $Box(eightyTwo#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(194,9)
    assume true;
    assert {:id "id229"} defass#twelve#0;
    assert {:id "id230"} defass#seventeen#0;
    assume true;
    c#0 := MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(twelve#0)), $Box(seventeen#0));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(196,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(77))), $Box(char#FromInt(117))), 
                        $Box(char#FromInt(108))), 
                      $Box(char#FromInt(116))), 
                    $Box(char#FromInt(105))), 
                  $Box(char#FromInt(115))), 
                $Box(char#FromInt(101))), 
              $Box(char#FromInt(116))), 
            $Box(char#FromInt(115))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##0 := a#0;
    call {:id "id232"} Call$$_module.__default.PrintMultiset(prefix##0, S##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(197,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##1 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##1 := b#0;
    call {:id "id233"} Call$$_module.__default.PrintMultiset(prefix##1, S##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(198,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##2 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##2 := c#0;
    call {:id "id234"} Call$$_module.__default.PrintMultiset(prefix##2, S##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(199,3)
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(201,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(203,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##3 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                      $Box(char#FromInt(117))), 
                    $Box(char#FromInt(112))), 
                  $Box(char#FromInt(100))), 
                $Box(char#FromInt(97))), 
              $Box(char#FromInt(116))), 
            $Box(char#FromInt(101))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assert {:id "id235"} defass#fortyTwo#0;
    assert {:id "id236"} 0 <= LitInt(3);
    assert {:id "id237"} defass#eightyTwo#0;
    assert {:id "id238"} 0 <= LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##3 := MultiSet#UpdateMultiplicity(MultiSet#UpdateMultiplicity(b#0, $Box(fortyTwo#0), LitInt(3)), 
      $Box(eightyTwo#0), 
      LitInt(0));
    call {:id "id239"} Call$$_module.__default.PrintMultiset(prefix##3, S##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(204,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##4 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assert {:id "id240"} defass#fortyTwo#0;
    assert {:id "id241"} 0 <= LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##4 := MultiSet#UpdateMultiplicity(c#0, $Box(fortyTwo#0), LitInt(1));
    call {:id "id242"} Call$$_module.__default.PrintMultiset(prefix##4, S##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(205,3)
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(207,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assert {:id "id243"} defass#fortyTwo#0;
    assert {:id "id244"} {:subsumption 0} 0 <= LitInt(20);
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(209,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##5 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                    $Box(char#FromInt(117))), 
                  $Box(char#FromInt(110))), 
                $Box(char#FromInt(105))), 
              $Box(char#FromInt(111))), 
            $Box(char#FromInt(110))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##5 := MultiSet#Union(a#0, b#0);
    call {:id "id245"} Call$$_module.__default.PrintMultiset(prefix##5, S##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(210,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##6 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##6 := MultiSet#Union(b#0, c#0);
    call {:id "id246"} Call$$_module.__default.PrintMultiset(prefix##6, S##6);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(211,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(213,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##7 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                                  $Box(char#FromInt(105))), 
                                $Box(char#FromInt(110))), 
                              $Box(char#FromInt(116))), 
                            $Box(char#FromInt(101))), 
                          $Box(char#FromInt(114))), 
                        $Box(char#FromInt(115))), 
                      $Box(char#FromInt(101))), 
                    $Box(char#FromInt(99))), 
                  $Box(char#FromInt(116))), 
                $Box(char#FromInt(105))), 
              $Box(char#FromInt(111))), 
            $Box(char#FromInt(110))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##7 := MultiSet#Intersection(a#0, b#0);
    call {:id "id247"} Call$$_module.__default.PrintMultiset(prefix##7, S##7);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(214,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##8 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assert {:id "id248"} defass#eightyTwo#0;
    assert {:id "id249"} 0 <= LitInt(100);
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##8 := MultiSet#Intersection(b#0, MultiSet#UpdateMultiplicity(c#0, $Box(eightyTwo#0), LitInt(100)));
    call {:id "id250"} Call$$_module.__default.PrintMultiset(prefix##8, S##8);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(215,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(217,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##9 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                              $Box(char#FromInt(100))), 
                            $Box(char#FromInt(105))), 
                          $Box(char#FromInt(102))), 
                        $Box(char#FromInt(102))), 
                      $Box(char#FromInt(101))), 
                    $Box(char#FromInt(114))), 
                  $Box(char#FromInt(101))), 
                $Box(char#FromInt(110))), 
              $Box(char#FromInt(99))), 
            $Box(char#FromInt(101))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##9 := MultiSet#Difference(a#0, b#0);
    call {:id "id251"} Call$$_module.__default.PrintMultiset(prefix##9, S##9);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(218,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##10 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##10 := MultiSet#Difference(b#0, c#0);
    call {:id "id252"} Call$$_module.__default.PrintMultiset(prefix##10, S##10);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(219,3)
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(221,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(222,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(223,3)
    assume true;
    assert {:id "id253"} defass#seventeen#0;
    assume true;
    assume true;
    assert {:id "id254"} defass#seventeen#0;
    assume true;
    assume true;
    assert {:id "id255"} defass#seventeen#0;
    assume true;
    assume true;
}



procedure {:verboseName "PrintMap (well-formedness)"} CheckWellFormed$$_module.__default.PrintMap(prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap), 
    M#0: Map
       where $Is(M#0, TMap(Tclass._module.Number(), Tclass._module.Number()))
         && $IsAlloc(M#0, TMap(Tclass._module.Number(), Tclass._module.Number()), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintMap (call)"} Call$$_module.__default.PrintMap(prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap), 
    M#0: Map
       where $Is(M#0, TMap(Tclass._module.Number(), Tclass._module.Number()))
         && $IsAlloc(M#0, TMap(Tclass._module.Number(), Tclass._module.Number()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintMap (correctness)"} Impl$$_module.__default.PrintMap(prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap), 
    M#0: Map
       where $Is(M#0, TMap(Tclass._module.Number(), Tclass._module.Number()))
         && $IsAlloc(M#0, TMap(Tclass._module.Number(), Tclass._module.Number()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintMap (correctness)"} Impl$$_module.__default.PrintMap(prefix#0: Seq, M#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0: Map
     where $Is(m#0, TMap(Tclass._module.Number(), Tclass._module.Number()))
       && $IsAlloc(m#0, TMap(Tclass._module.Number(), Tclass._module.Number()), $Heap);
  var sep#0: Seq where $Is(sep#0, TSeq(TChar)) && $IsAlloc(sep#0, TSeq(TChar), $Heap);
  var $rhs#0: Map;
  var $rhs#1: Seq;
  var s#0: Set
     where $Is(s#0, TSet(Tclass._module.Number()))
       && $IsAlloc(s#0, TSet(Tclass._module.Number()), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var defass#min#0_0: bool;
  var min#0_0: ref
     where defass#min#0_0
       ==> $Is(min#0_0, Tclass._module.Number())
         && $IsAlloc(min#0_0, Tclass._module.Number(), $Heap);
  var $rhs##0_0: ref;
  var s##0_0: Set;
  var defass#x#0_0: bool;
  var x#0_0: ref
     where defass#x#0_0
       ==> $Is(x#0_0, Tclass._module.Number())
         && $IsAlloc(x#0_0, Tclass._module.Number(), $Heap);
  var x#0_1: ref;
  var y#0_0: ref;
  var $rhs#0_0: Set;
  var $rhs#0_1: Seq;

    // AddMethodImpl: PrintMap, Impl$$_module.__default.PrintMap
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(229,3)
    assume true;
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(230,35)
    assume true;
    assume true;
    assume true;
    $rhs#0 := M#0;
    assume true;
    $rhs#1 := Lit(Seq#Empty(): Seq);
    m#0 := $rhs#0;
    sep#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(231,9)
    assume true;
    assume true;
    s#0 := Map#Domain(m#0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(232,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0);
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id262"} $w$loop#0 ==> Set#Subset(s#0, Map#Domain(m#0));
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
      free invariant (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0)
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id261"} Set#Subset(s#0, Map#Domain(m#0));
            if (Set#Card(s#0) <= LitInt(0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (Set#Card(s#0) == 0)
        {
            break;
        }

        $decr$loop#00 := (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0);
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(235,5)
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(237,38)
        assume true;
        // TrCallStmt: Adding lhs with type Number
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_0 := s#0;
        call {:id "id263"} $rhs##0_0 := Call$$_module.__default.ThereIsASmallest(s##0_0);
        // TrCallStmt: After ProcessCallStmt
        min#0_0 := $rhs##0_0;
        defass#min#0_0 := true;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(238,11)
        havoc x#0_1;
        if ($Is(x#0_1, Tclass._module.Number())
           && $IsAlloc(x#0_1, Tclass._module.Number(), $Heap))
        {
            if (Set#IsMember(s#0, $Box(x#0_1)))
            {
                // Begin Comprehension WF check
                havoc y#0_0;
                if ($Is(y#0_0, Tclass._module.Number())
                   && $IsAlloc(y#0_0, Tclass._module.Number(), $Heap))
                {
                    if (Set#IsMember(s#0, $Box(y#0_0)))
                    {
                        assert {:id "id265"} {:subsumption 0} x#0_1 != null;
                        assert {:id "id266"} {:subsumption 0} y#0_0 != null;
                    }
                }

                // End Comprehension WF check
            }

            assume true;
        }

        assert {:id "id267"} ($Is(null, Tclass._module.Number())
             && 
            Set#IsMember(s#0, $Box(null))
             && (forall y#0_3: ref :: 
              { _module.Number.value(y#0_3) } { Set#IsMember(s#0, $Box(y#0_3)) } 
              $Is(y#0_3, Tclass._module.Number())
                 ==> 
                Set#IsMember(s#0, $Box(y#0_3))
                 ==> _module.Number.value(null) <= _module.Number.value(y#0_3)))
           || (exists $as#x0_0#0_0: ref :: 
            $Is($as#x0_0#0_0, Tclass._module.Number())
               && 
              Set#IsMember(s#0, $Box($as#x0_0#0_0))
               && (forall y#0_2: ref :: 
                { _module.Number.value(y#0_2) } { Set#IsMember(s#0, $Box(y#0_2)) } 
                $Is(y#0_2, Tclass._module.Number())
                   ==> 
                  Set#IsMember(s#0, $Box(y#0_2))
                   ==> _module.Number.value($as#x0_0#0_0) <= _module.Number.value(y#0_2)));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id268"} Set#IsMember(s#0, $Box(x#0_0))
           && (forall y#0_4: ref :: 
            { _module.Number.value(y#0_4) } { Set#IsMember(s#0, $Box(y#0_4)) } 
            $Is(y#0_4, Tclass._module.Number())
               ==> 
              Set#IsMember(s#0, $Box(y#0_4))
               ==> _module.Number.value(x#0_0) <= _module.Number.value(y#0_4));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(239,12)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id269"} defass#x#0_0;
        assume true;
        assert {:id "id270"} x#0_0 != null;
        call {:id "id271"} Call$$_module.Number.Print(x#0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(240,5)
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(241,15)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id272"} defass#x#0_0;
        assert {:id "id273"} Set#IsMember(Map#Domain(m#0), $Box(x#0_0));
        assume true;
        assert {:id "id274"} $Unbox(Map#Elements(m#0)[$Box(x#0_0)]): ref != null;
        call {:id "id275"} Call$$_module.Number.Print($Unbox(Map#Elements(m#0)[$Box(x#0_0)]): ref);
        // TrCallStmt: After ProcessCallStmt
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(242,12)
        assume true;
        assume true;
        assert {:id "id276"} defass#x#0_0;
        assume true;
        $rhs#0_0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, $Box(x#0_0)));
        assume true;
        $rhs#0_1 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(44))), $Box(char#FromInt(32))));
        s#0 := $rhs#0_0;
        sep#0 := $rhs#0_1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(232,3)
        assert {:id "id281"} 0 <= $decr$loop#00
           || (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0)
             == $decr$loop#00;
        assert {:id "id282"} (if Set#Card(s#0) <= LitInt(0) then 0 - Set#Card(s#0) else Set#Card(s#0) - 0)
           < $decr$loop#00;
        assume true;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(244,3)
    assume true;
}



procedure {:verboseName "Maps (well-formedness)"} CheckWellFormed$$_module.__default.Maps();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Maps (call)"} Call$$_module.__default.Maps();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Maps (correctness)"} Impl$$_module.__default.Maps() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function map$project$0#0#n#0(ref) : ref;

function map$project$0#0#p#0(ref) : ref;

function Tclass._module.Number?() : Ty
uses {
// Tclass._module.Number? Tag
axiom Tag(Tclass._module.Number?()) == Tagclass._module.Number?
   && TagFamily(Tclass._module.Number?()) == tytagFamily$Number;
}

const unique Tagclass._module.Number?: TyTag;

// Box/unbox axiom for Tclass._module.Number?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Number?()) } 
  $IsBox(bx, Tclass._module.Number?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Number?()));

function Tclass._module.Integer?() : Ty
uses {
// Tclass._module.Integer? Tag
axiom Tag(Tclass._module.Integer?()) == Tagclass._module.Integer?
   && TagFamily(Tclass._module.Integer?()) == tytagFamily$Integer;
axiom implements$_module.Number(Tclass._module.Integer?());
}

const unique Tagclass._module.Integer?: TyTag;

// Box/unbox axiom for Tclass._module.Integer?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Integer?()) } 
  $IsBox(bx, Tclass._module.Integer?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Integer?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Maps (correctness)"} Impl$$_module.__default.Maps() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#twelve#0: bool;
  var twelve#0: ref
     where defass#twelve#0
       ==> $Is(twelve#0, Tclass._module.Integer())
         && $IsAlloc(twelve#0, Tclass._module.Integer(), $Heap);
  var $nw: ref;
  var value##0: int;
  var defass#seventeen#0: bool;
  var seventeen#0: ref
     where defass#seventeen#0
       ==> $Is(seventeen#0, Tclass._module.Integer())
         && $IsAlloc(seventeen#0, Tclass._module.Integer(), $Heap);
  var value##1: int;
  var defass#fortyTwo#0: bool;
  var fortyTwo#0: ref
     where defass#fortyTwo#0
       ==> $Is(fortyTwo#0, Tclass._module.Integer())
         && $IsAlloc(fortyTwo#0, Tclass._module.Integer(), $Heap);
  var value##2: int;
  var defass#eightyTwo#0: bool;
  var eightyTwo#0: ref
     where defass#eightyTwo#0
       ==> $Is(eightyTwo#0, Tclass._module.Integer())
         && $IsAlloc(eightyTwo#0, Tclass._module.Integer(), $Heap);
  var value##3: int;
  var a#0: Map
     where $Is(a#0, TMap(Tclass._module.Number(), Tclass._module.Number()))
       && $IsAlloc(a#0, TMap(Tclass._module.Number(), Tclass._module.Number()), $Heap);
  var b#0: Map
     where $Is(b#0, TMap(Tclass._module.Number(), Tclass._module.Number()))
       && $IsAlloc(b#0, TMap(Tclass._module.Number(), Tclass._module.Number()), $Heap);
  var c#0: Map
     where $Is(c#0, TMap(Tclass._module.Integer(), Tclass._module.Integer()))
       && $IsAlloc(c#0, TMap(Tclass._module.Integer(), Tclass._module.Integer()), $Heap);
  var prefix##0: Seq;
  var M##0: Map;
  var prefix##1: Seq;
  var M##1: Map;
  var prefix##2: Seq;
  var M##2: Map;
  var prefix##3: Seq;
  var M##3: Map;
  var prefix##4: Seq;
  var M##4: Map;
  var comprehension#0: Map
     where $Is(comprehension#0, TMap(Tclass._module.Integer(), Tclass._module.Integer()))
       && $IsAlloc(comprehension#0, TMap(Tclass._module.Integer(), Tclass._module.Integer()), $Heap);
  var n#0: ref;
  var p#0: ref;
  var n#prime#0: ref;
  var p#prime#0: ref;
  var prefix##5: Seq;
  var M##5: Map;
  var prefix##6: Seq;
  var S##0: Set;
  var prefix##7: Seq;
  var S##1: Set;
  var m00#0: Map
     where $Is(m00#0, TMap(Tclass._module.Number(), Tclass._module.Number()))
       && $IsAlloc(m00#0, TMap(Tclass._module.Number(), Tclass._module.Number()), $Heap);
  var m01#0: Map
     where $Is(m01#0, TMap(Tclass._module.Number(), Tclass._module.Integer()))
       && $IsAlloc(m01#0, TMap(Tclass._module.Number(), Tclass._module.Integer()), $Heap);
  var m10#0: Map
     where $Is(m10#0, TMap(Tclass._module.Integer(), Tclass._module.Number()))
       && $IsAlloc(m10#0, TMap(Tclass._module.Integer(), Tclass._module.Number()), $Heap);
  var m11#0: Map
     where $Is(m11#0, TMap(Tclass._module.Integer(), Tclass._module.Integer()))
       && $IsAlloc(m11#0, TMap(Tclass._module.Integer(), Tclass._module.Integer()), $Heap);
  var n00#0: Map
     where $Is(n00#0, TMap(Tclass._module.Number?(), Tclass._module.Number()))
       && $IsAlloc(n00#0, TMap(Tclass._module.Number?(), Tclass._module.Number()), $Heap);
  var newtype$check#0: ref;
  var n01#0: Map
     where $Is(n01#0, TMap(Tclass._module.Number?(), Tclass._module.Integer()))
       && $IsAlloc(n01#0, TMap(Tclass._module.Number?(), Tclass._module.Integer()), $Heap);
  var newtype$check#1: ref;
  var n10#0: Map
     where $Is(n10#0, TMap(Tclass._module.Integer?(), Tclass._module.Number()))
       && $IsAlloc(n10#0, TMap(Tclass._module.Integer?(), Tclass._module.Number()), $Heap);
  var n11#0: Map
     where $Is(n11#0, TMap(Tclass._module.Integer?(), Tclass._module.Integer()))
       && $IsAlloc(n11#0, TMap(Tclass._module.Integer?(), Tclass._module.Integer()), $Heap);
  var newtype$check#2: ref;
  var newtype$check#3: ref;

    // AddMethodImpl: Maps, Impl$$_module.__default.Maps
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(248,14)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(248,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##0 := LitInt(12);
    call {:id "id283"} $nw := Call$$_module.Integer.__ctor(value##0);
    // TrCallStmt: After ProcessCallStmt
    twelve#0 := $nw;
    defass#twelve#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(249,17)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(249,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##1 := LitInt(17);
    call {:id "id285"} $nw := Call$$_module.Integer.__ctor(value##1);
    // TrCallStmt: After ProcessCallStmt
    seventeen#0 := $nw;
    defass#seventeen#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(250,16)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(250,19)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##2 := LitInt(42);
    call {:id "id287"} $nw := Call$$_module.Integer.__ctor(value##2);
    // TrCallStmt: After ProcessCallStmt
    fortyTwo#0 := $nw;
    defass#fortyTwo#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(251,17)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(251,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##3 := LitInt(82);
    call {:id "id289"} $nw := Call$$_module.Integer.__ctor(value##3);
    // TrCallStmt: After ProcessCallStmt
    eightyTwo#0 := $nw;
    defass#eightyTwo#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(253,9)
    assume true;
    assume true;
    a#0 := Lit(Map#Empty(): Map);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(254,30)
    assume true;
    assert {:id "id292"} defass#seventeen#0;
    assert {:id "id293"} defass#eightyTwo#0;
    assert {:id "id294"} defass#eightyTwo#0;
    assert {:id "id295"} defass#seventeen#0;
    assert {:id "id296"} defass#twelve#0;
    assert {:id "id297"} defass#seventeen#0;
    assume true;
    b#0 := Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(seventeen#0), $Box(eightyTwo#0)), 
        $Box(eightyTwo#0), 
        $Box(seventeen#0)), 
      $Box(twelve#0), 
      $Box(seventeen#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(255,9)
    assume true;
    assert {:id "id299"} defass#twelve#0;
    assert {:id "id300"} defass#seventeen#0;
    assert {:id "id301"} defass#seventeen#0;
    assert {:id "id302"} defass#seventeen#0;
    assume true;
    c#0 := Map#Build(Map#Build(Map#Empty(): Map, $Box(twelve#0), $Box(seventeen#0)), 
      $Box(seventeen#0), 
      $Box(seventeen#0));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(257,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(77))), $Box(char#FromInt(97))), 
              $Box(char#FromInt(112))), 
            $Box(char#FromInt(115))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    M##0 := a#0;
    call {:id "id304"} Call$$_module.__default.PrintMap(prefix##0, M##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(258,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##1 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    M##1 := b#0;
    call {:id "id305"} Call$$_module.__default.PrintMap(prefix##1, M##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(259,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##2 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    M##2 := c#0;
    call {:id "id306"} Call$$_module.__default.PrintMap(prefix##2, M##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(260,3)
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(262,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(264,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##3 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                      $Box(char#FromInt(117))), 
                    $Box(char#FromInt(112))), 
                  $Box(char#FromInt(100))), 
                $Box(char#FromInt(97))), 
              $Box(char#FromInt(116))), 
            $Box(char#FromInt(101))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assert {:id "id307"} defass#fortyTwo#0;
    assert {:id "id308"} defass#seventeen#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    M##3 := Map#Build(b#0, $Box(fortyTwo#0), $Box(seventeen#0));
    call {:id "id309"} Call$$_module.__default.PrintMap(prefix##3, M##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(265,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##4 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    assert {:id "id310"} defass#twelve#0;
    assert {:id "id311"} defass#fortyTwo#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    M##4 := Map#Build(c#0, $Box(twelve#0), $Box(fortyTwo#0));
    call {:id "id312"} Call$$_module.__default.PrintMap(prefix##4, M##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(266,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(268,44)
    assume true;
    // Begin Comprehension WF check
    havoc n#0;
    havoc p#0;
    if ($Is(n#0, Tclass._module.Integer())
       && $IsAlloc(n#0, Tclass._module.Integer(), $Heap)
       && 
      $Is(p#0, Tclass._module.Number?())
       && $IsAlloc(p#0, Tclass._module.Number?(), $Heap))
    {
        havoc n#prime#0;
        havoc p#prime#0;
        assume $Is(n#prime#0, Tclass._module.Integer())
           && $IsAlloc(n#prime#0, Tclass._module.Integer(), $Heap)
           && 
          $Is(p#prime#0, Tclass._module.Number?())
           && $IsAlloc(p#prime#0, Tclass._module.Number?(), $Heap);
        if (Set#IsMember(Map#Domain(b#0), $Box(n#0)))
        {
        }

        if (Set#IsMember(Map#Domain(b#0), $Box(n#0))
           && Set#IsMember(Map#Domain(b#0), $Box(p#0)))
        {
            assert {:id "id313"} Set#IsMember(Map#Domain(b#0), $Box(n#0));
        }

        if (Set#IsMember(Map#Domain(b#0), $Box(n#0))
           && Set#IsMember(Map#Domain(b#0), $Box(p#0))
           && $Unbox(Map#Elements(b#0)[$Box(n#0)]): ref == p#0)
        {
            assert {:id "id314"} Set#IsMember(Map#Domain(b#0), $Box(p#0));
        }

        if (Set#IsMember(Map#Domain(b#0), $Box(n#0))
           && Set#IsMember(Map#Domain(b#0), $Box(p#0))
           && $Unbox(Map#Elements(b#0)[$Box(n#0)]): ref == p#0
           && $Unbox(Map#Elements(b#0)[$Box(p#0)]): ref == n#0)
        {
        }

        if (Set#IsMember(Map#Domain(b#0), $Box(n#0))
           && Set#IsMember(Map#Domain(b#0), $Box(p#0))
           && $Unbox(Map#Elements(b#0)[$Box(n#0)]): ref == p#0
           && $Unbox(Map#Elements(b#0)[$Box(p#0)]): ref == n#0)
        {
            assert {:id "id315"} defass#twelve#0;
        }

        if (Set#IsMember(Map#Domain(b#0), $Box(n#0))
           && Set#IsMember(Map#Domain(b#0), $Box(p#0))
           && $Unbox(Map#Elements(b#0)[$Box(n#0)]): ref == p#0
           && $Unbox(Map#Elements(b#0)[$Box(p#0)]): ref == n#0
           && 
          Set#IsMember(Map#Domain(b#0), $Box(n#prime#0))
           && Set#IsMember(Map#Domain(b#0), $Box(p#prime#0))
           && $Unbox(Map#Elements(b#0)[$Box(n#prime#0)]): ref == p#prime#0
           && $Unbox(Map#Elements(b#0)[$Box(p#prime#0)]): ref == n#prime#0)
        {
            assert {:id "id316"} n#0 != n#prime#0 || twelve#0 == twelve#0;
        }
    }

    // End Comprehension WF check
    assume (forall a#2#0#0: ref, a#2#1#0: ref :: 
      { $Unbox(Map#Elements(b#0)[$Box(a#2#1#0)]): ref, $Unbox(Map#Elements(b#0)[$Box(a#2#0#0)]): ref } 
        { $Unbox(Map#Elements(b#0)[$Box(a#2#1#0)]): ref, Set#IsMember(Map#Domain(b#0), $Box(a#2#0#0)) } 
        { $Unbox(Map#Elements(b#0)[$Box(a#2#0#0)]): ref, Set#IsMember(Map#Domain(b#0), $Box(a#2#1#0)) } 
        { Set#IsMember(Map#Domain(b#0), $Box(a#2#1#0)), Set#IsMember(Map#Domain(b#0), $Box(a#2#0#0)) } 
      Set#IsMember(Map#Domain(b#0), $Box(a#2#0#0))
           && Set#IsMember(Map#Domain(b#0), $Box(a#2#1#0))
           && $Unbox(Map#Elements(b#0)[$Box(a#2#0#0)]): ref == a#2#1#0
           && $Unbox(Map#Elements(b#0)[$Box(a#2#1#0)]): ref == a#2#0#0
         ==> Set#IsMember(Map#Domain(b#0), $Box(map$project$0#0#n#0(a#2#0#0)))
           && Set#IsMember(Map#Domain(b#0), $Box(map$project$0#0#p#0(a#2#0#0)))
           && $Unbox(Map#Elements(b#0)[$Box(map$project$0#0#n#0(a#2#0#0))]): ref
             == map$project$0#0#p#0(a#2#0#0)
           && $Unbox(Map#Elements(b#0)[$Box(map$project$0#0#p#0(a#2#0#0))]): ref
             == map$project$0#0#n#0(a#2#0#0)
           && a#2#0#0 == map$project$0#0#n#0(a#2#0#0));
    comprehension#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, Tclass._module.Integer())
             && (exists a#1#0#0: ref, a#1#1#0: ref :: 
              Set#IsMember(Map#Domain(b#0), $Box(a#1#0#0))
                 && Set#IsMember(Map#Domain(b#0), $Box(a#1#1#0))
                 && $Unbox(Map#Elements(b#0)[$Box(a#1#0#0)]): ref == a#1#1#0
                 && $Unbox(Map#Elements(b#0)[$Box(a#1#1#0)]): ref == a#1#0#0
                 && $Unbox($w#0): ref == a#1#0#0))), 
      (lambda $w#0: Box :: $Box(twelve#0)), 
      TMap(Tclass._module.Integer(), Tclass._module.Integer()));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(269,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##5 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                                    $Box(char#FromInt(99))), 
                                  $Box(char#FromInt(111))), 
                                $Box(char#FromInt(109))), 
                              $Box(char#FromInt(112))), 
                            $Box(char#FromInt(114))), 
                          $Box(char#FromInt(101))), 
                        $Box(char#FromInt(104))), 
                      $Box(char#FromInt(101))), 
                    $Box(char#FromInt(110))), 
                  $Box(char#FromInt(115))), 
                $Box(char#FromInt(105))), 
              $Box(char#FromInt(111))), 
            $Box(char#FromInt(110))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    M##5 := comprehension#0;
    call {:id "id318"} Call$$_module.__default.PrintMap(prefix##5, M##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(270,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(272,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##6 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                  $Box(char#FromInt(75))), 
                $Box(char#FromInt(101))), 
              $Box(char#FromInt(121))), 
            $Box(char#FromInt(115))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##0 := Map#Domain(b#0);
    call {:id "id319"} Call$$_module.__default.PrintSet(prefix##6, S##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(272,33)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(273,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##7 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(32))), 
                      $Box(char#FromInt(86))), 
                    $Box(char#FromInt(97))), 
                  $Box(char#FromInt(108))), 
                $Box(char#FromInt(117))), 
              $Box(char#FromInt(101))), 
            $Box(char#FromInt(115))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##1 := Map#Values(b#0);
    call {:id "id320"} Call$$_module.__default.PrintSet(prefix##7, S##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(273,37)
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(275,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assert {:id "id321"} defass#seventeen#0;
    assert {:id "id322"} defass#seventeen#0;
    assert {:id "id323"} defass#twelve#0;
    assert {:id "id324"} defass#seventeen#0;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(278,32)
    assume true;
    assert {:id "id325"} defass#seventeen#0;
    assert {:id "id326"} defass#fortyTwo#0;
    assume true;
    m00#0 := Map#Build(Map#Empty(): Map, $Box(seventeen#0), $Box(fortyTwo#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(279,33)
    assume true;
    assert {:id "id328"} defass#seventeen#0;
    assert {:id "id329"} defass#fortyTwo#0;
    assume true;
    m01#0 := Map#Build(Map#Empty(): Map, $Box(seventeen#0), $Box(fortyTwo#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(280,33)
    assume true;
    assert {:id "id331"} defass#seventeen#0;
    assert {:id "id332"} defass#fortyTwo#0;
    assume true;
    m10#0 := Map#Build(Map#Empty(): Map, $Box(seventeen#0), $Box(fortyTwo#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(281,34)
    assume true;
    assert {:id "id334"} defass#seventeen#0;
    assert {:id "id335"} defass#fortyTwo#0;
    assume true;
    m11#0 := Map#Build(Map#Empty(): Map, $Box(seventeen#0), $Box(fortyTwo#0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(282,3)
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
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(283,3)
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
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(286,33)
    assume true;
    assert {:id "id337"} defass#seventeen#0;
    assert {:id "id338"} defass#fortyTwo#0;
    newtype$check#0 := null;
    assert {:id "id339"} defass#eightyTwo#0;
    assume true;
    n00#0 := Map#Build(Map#Build(Map#Empty(): Map, $Box(seventeen#0), $Box(fortyTwo#0)), 
      $Box(null), 
      $Box(eightyTwo#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(287,34)
    assume true;
    assert {:id "id341"} defass#seventeen#0;
    assert {:id "id342"} defass#fortyTwo#0;
    newtype$check#1 := null;
    assert {:id "id343"} defass#eightyTwo#0;
    assume true;
    n01#0 := Map#Build(Map#Build(Map#Empty(): Map, $Box(seventeen#0), $Box(fortyTwo#0)), 
      $Box(null), 
      $Box(eightyTwo#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(288,34)
    assume true;
    assert {:id "id345"} defass#seventeen#0;
    assert {:id "id346"} defass#fortyTwo#0;
    assume true;
    n10#0 := Map#Build(Map#Empty(): Map, $Box(seventeen#0), $Box(fortyTwo#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(289,35)
    assume true;
    assert {:id "id348"} defass#seventeen#0;
    assert {:id "id349"} defass#fortyTwo#0;
    newtype$check#2 := null;
    assert {:id "id350"} defass#eightyTwo#0;
    assume true;
    n11#0 := Map#Build(Map#Build(Map#Empty(): Map, $Box(seventeen#0), $Box(fortyTwo#0)), 
      $Box(null), 
      $Box(eightyTwo#0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(290,3)
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
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(291,3)
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
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(292,7)
    assume true;
    newtype$check#3 := null;
    assert {:id "id352"} defass#eightyTwo#0;
    assume true;
    n10#0 := Map#Build(n10#0, $Box(null), $Box(eightyTwo#0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(293,3)
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
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(294,3)
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
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "Downcasts (well-formedness)"} CheckWellFormed$$_module.__default.Downcasts();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Downcasts (call)"} Call$$_module.__default.Downcasts();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Downcasts (correctness)"} Impl$$_module.__default.Downcasts() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Downcasts (correctness)"} Impl$$_module.__default.Downcasts() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#a#0: bool;
  var a#0: ref
     where defass#a#0
       ==> $Is(a#0, Tclass._module.Integer())
         && $IsAlloc(a#0, Tclass._module.Integer(), $Heap);
  var $nw: ref;
  var value##0: int;
  var defass#b#0: bool;
  var b#0: ref
     where defass#b#0
       ==> $Is(b#0, Tclass._module.Integer())
         && $IsAlloc(b#0, Tclass._module.Integer(), $Heap);
  var value##1: int;
  var m#0: Set
     where $Is(m#0, TSet(Tclass._module.Number()))
       && $IsAlloc(m#0, TSet(Tclass._module.Number()), $Heap);
  var n#0: MultiSet
     where $Is(n#0, TMultiSet(Tclass._module.Number()))
       && $IsAlloc(n#0, TMultiSet(Tclass._module.Number()), $Heap);
  var o#0: Seq
     where $Is(o#0, TSeq(Tclass._module.Number()))
       && $IsAlloc(o#0, TSeq(Tclass._module.Number()), $Heap);
  var p#0: Map
     where $Is(p#0, TMap(Tclass._module.Number(), Tclass._module.Number()))
       && $IsAlloc(p#0, TMap(Tclass._module.Number(), Tclass._module.Number()), $Heap);
  var s#0: Set
     where $Is(s#0, TSet(Tclass._module.Integer()))
       && $IsAlloc(s#0, TSet(Tclass._module.Integer()), $Heap);
  var t#0: MultiSet
     where $Is(t#0, TMultiSet(Tclass._module.Integer()))
       && $IsAlloc(t#0, TMultiSet(Tclass._module.Integer()), $Heap);
  var u#0: Seq
     where $Is(u#0, TSeq(Tclass._module.Integer()))
       && $IsAlloc(u#0, TSeq(Tclass._module.Integer()), $Heap);
  var v#0: Map
     where $Is(v#0, TMap(Tclass._module.Integer(), Tclass._module.Integer()))
       && $IsAlloc(v#0, TMap(Tclass._module.Integer(), Tclass._module.Integer()), $Heap);
  var $rhs##0: Set;
  var $rhs##1: MultiSet;
  var $rhs##2: Seq;
  var $rhs##3: Map;
  var a##0: ref;
  var b##0: ref;
  var $rhs#0: Set;
  var $rhs#1: MultiSet;
  var $rhs#2: Seq;
  var $rhs#3: Map;
  var $rhs#4: Set;
  var $rhs#5: MultiSet;
  var $rhs#6: Seq;
  var $rhs#7: Map;
  var $rhs#8: Set;
  var $rhs#9: MultiSet;
  var $rhs#10: Seq;
  var $rhs#11: Map;
  var $rhs#12: Set;
  var $rhs#13: MultiSet;
  var $rhs#14: Seq;
  var $rhs#15: Map;
  var prefix##0: Seq;
  var S##0: Set;
  var prefix##1: Seq;
  var S##1: MultiSet;
  var prefix##2: Seq;
  var s##0: Seq;
  var prefix##3: Seq;
  var M##0: Map;
  var ##s#0: Set;
  var $rhs##4: Set;
  var s##1: Set;
  var s'#0: Set
     where $Is(s'#0, TSet(Tclass._module.Integer()))
       && $IsAlloc(s'#0, TSet(Tclass._module.Integer()), $Heap);
  var $rhs##5: Set;
  var $rhs##6: Set;
  var s##2: Set;
  var v#Z#0: Set;
  var let#0#0#0: Set;
  var u#Z#0: Set;
  var let#1#0#0: Set;
  var v#Z#1: Set;
  var let#2#0#0: Set;
  var s''#0: Set
     where $Is(s''#0, TSet(Tclass._module.Integer()))
       && $IsAlloc(s''#0, TSet(Tclass._module.Integer()), $Heap);
  var ##a#0: ref;
  var ##b#0: ref;
  var eq#0: bool;
  var ##s#1: Set;
  var ##s#2: Set;
  var $rhs##7: Set;
  var s##3: Set;
  var $rhs##8: Set;
  var s##4: Set;
  var $rhs##9: Set;
  var $rhs##10: Set;
  var s##5: Set;
  var $rhs##11: Set;
  var $rhs##12: Set;
  var s##6: Set;
  var x##0: int;
  var u##0: int;
  var s##7: Set;
  var f16#0: int;
  var ##x#0: int;
  var ##u#0: int;
  var ##s#3: Set;

    // AddMethodImpl: Downcasts, Impl$$_module.__default.Downcasts
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(323,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(323,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##0 := LitInt(20);
    call {:id "id354"} $nw := Call$$_module.Integer.__ctor(value##0);
    // TrCallStmt: After ProcessCallStmt
    a#0 := $nw;
    defass#a#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(324,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(324,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##1 := LitInt(30);
    call {:id "id356"} $nw := Call$$_module.Integer.__ctor(value##1);
    // TrCallStmt: After ProcessCallStmt
    b#0 := $nw;
    defass#b#0 := true;
    havoc m#0 /* where $Is(m#0, TSet(Tclass._module.Number()))
       && $IsAlloc(m#0, TSet(Tclass._module.Number()), $Heap) */, n#0 /* where $Is(n#0, TMultiSet(Tclass._module.Number()))
       && $IsAlloc(n#0, TMultiSet(Tclass._module.Number()), $Heap) */, o#0 /* where $Is(o#0, TSeq(Tclass._module.Number()))
       && $IsAlloc(o#0, TSeq(Tclass._module.Number()), $Heap) */, p#0 /* where $Is(p#0, TMap(Tclass._module.Number(), Tclass._module.Number()))
       && $IsAlloc(p#0, TMap(Tclass._module.Number(), Tclass._module.Number()), $Heap) */;
    havoc s#0 /* where $Is(s#0, TSet(Tclass._module.Integer()))
       && $IsAlloc(s#0, TSet(Tclass._module.Integer()), $Heap) */, t#0 /* where $Is(t#0, TMultiSet(Tclass._module.Integer()))
       && $IsAlloc(t#0, TMultiSet(Tclass._module.Integer()), $Heap) */, u#0 /* where $Is(u#0, TSeq(Tclass._module.Integer()))
       && $IsAlloc(u#0, TSeq(Tclass._module.Integer()), $Heap) */, v#0 /* where $Is(v#0, TMap(Tclass._module.Integer(), Tclass._module.Integer()))
       && $IsAlloc(v#0, TMap(Tclass._module.Integer(), Tclass._module.Integer()), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(328,31)
    assume true;
    assume true;
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type set<Number>
    // TrCallStmt: Adding lhs with type multiset<Number>
    // TrCallStmt: Adding lhs with type seq<Number>
    // TrCallStmt: Adding lhs with type map<Number, Number>
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id358"} defass#a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assert {:id "id359"} defass#b#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := b#0;
    call {:id "id360"} $rhs##0, $rhs##1, $rhs##2, $rhs##3 := Call$$_module.__default.Create(Tclass._module.Number(), $Box(a##0), $Box(b##0));
    // TrCallStmt: After ProcessCallStmt
    m#0 := $rhs##0;
    n#0 := $rhs##1;
    o#0 := $rhs##2;
    p#0 := $rhs##3;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(329,14)
    assume true;
    assume true;
    assume true;
    assume true;
    assert {:id "id365"} $Is(m#0, TSet(Tclass._module.Integer()));
    assume true;
    $rhs#0 := m#0;
    assert {:id "id367"} $Is(n#0, TMultiSet(Tclass._module.Integer()));
    assume true;
    $rhs#1 := n#0;
    assert {:id "id369"} $Is(o#0, TSeq(Tclass._module.Integer()));
    assume true;
    $rhs#2 := o#0;
    assert {:id "id371"} $Is(p#0, TMap(Tclass._module.Integer(), Tclass._module.Integer()));
    assume true;
    $rhs#3 := p#0;
    s#0 := $rhs#0;
    t#0 := $rhs#1;
    u#0 := $rhs#2;
    v#0 := $rhs#3;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(330,14)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#4 := s#0;
    assume true;
    $rhs#5 := t#0;
    assume true;
    $rhs#6 := u#0;
    assume true;
    $rhs#7 := v#0;
    m#0 := $rhs#4;
    n#0 := $rhs#5;
    o#0 := $rhs#6;
    p#0 := $rhs#7;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(331,14)
    assume true;
    assume true;
    assume true;
    assume true;
    assert {:id "id385"} $Is(m#0, TSet(Tclass._module.Integer()));
    assume true;
    $rhs#8 := m#0;
    assert {:id "id387"} $Is(n#0, TMultiSet(Tclass._module.Integer()));
    assume true;
    $rhs#9 := n#0;
    assert {:id "id389"} $Is(o#0, TSeq(Tclass._module.Integer()));
    assume true;
    $rhs#10 := o#0;
    assert {:id "id391"} $Is(p#0, TMap(Tclass._module.Integer(), Tclass._module.Integer()));
    assume true;
    $rhs#11 := p#0;
    s#0 := $rhs#8;
    t#0 := $rhs#9;
    u#0 := $rhs#10;
    v#0 := $rhs#11;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(332,14)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#12 := s#0;
    assume true;
    $rhs#13 := t#0;
    assume true;
    $rhs#14 := u#0;
    assume true;
    $rhs#15 := v#0;
    m#0 := $rhs#12;
    n#0 := $rhs#13;
    o#0 := $rhs#14;
    p#0 := $rhs#15;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(334,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(115))), $Box(char#FromInt(101))), 
            $Box(char#FromInt(116))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##0 := m#0;
    call {:id "id405"} Call$$_module.__default.PrintSet(prefix##0, S##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(334,25)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(335,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##1 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(109))), $Box(char#FromInt(117))), 
                      $Box(char#FromInt(108))), 
                    $Box(char#FromInt(116))), 
                  $Box(char#FromInt(105))), 
                $Box(char#FromInt(115))), 
              $Box(char#FromInt(101))), 
            $Box(char#FromInt(116))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##1 := n#0;
    call {:id "id406"} Call$$_module.__default.PrintMultiset(prefix##1, S##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(335,35)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(336,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##2 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(115))), $Box(char#FromInt(101))), 
            $Box(char#FromInt(113))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := o#0;
    call {:id "id407"} Call$$_module.__default.PrintSeq(prefix##2, s##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(336,25)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(337,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##3 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(109))), $Box(char#FromInt(97))), 
            $Box(char#FromInt(112))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    M##0 := p#0;
    call {:id "id408"} Call$$_module.__default.PrintMap(prefix##3, M##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(337,25)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(339,5)
    assume true;
    assert {:id "id409"} $Is(m#0, TSet(Tclass._module.Integer()));
    ##s#0 := m#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, TSet(Tclass._module.Integer()), $Heap);
    assume _module.__default.DowncastF#canCall(m#0);
    assert {:id "id410"} $Is(_module.__default.DowncastF(m#0), TSet(Tclass._module.Integer()));
    assume _module.__default.DowncastF#canCall(m#0);
    s#0 := _module.__default.DowncastF(m#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(340,17)
    assume true;
    // TrCallStmt: Adding lhs with type set<Integer>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id412"} $Is(m#0, TSet(Tclass._module.Integer()));
    s##1 := m#0;
    call {:id "id413"} $rhs##4 := Call$$_module.__default.DowncastM(s##1);
    // TrCallStmt: After ProcessCallStmt
    assert {:id "id414"} $Is($rhs##4, TSet(Tclass._module.Integer()));
    s#0 := $rhs##4;
    havoc s'#0 /* where $Is(s'#0, TSet(Tclass._module.Integer()))
       && $IsAlloc(s'#0, TSet(Tclass._module.Integer()), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(342,22)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type set<Integer>
    // TrCallStmt: Adding lhs with type set<Integer>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id416"} $Is(m#0, TSet(Tclass._module.Integer()));
    s##2 := m#0;
    call {:id "id417"} $rhs##5, $rhs##6 := Call$$_module.__default.DowncastM2(s##2);
    // TrCallStmt: After ProcessCallStmt
    assert {:id "id418"} $Is($rhs##5, TSet(Tclass._module.Integer()));
    s#0 := $rhs##5;
    assert {:id "id420"} $Is($rhs##6, TSet(Tclass._module.Integer()));
    s'#0 := $rhs##6;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(343,5)
    assume true;
    havoc v#Z#0;
    assert {:id "id422"} $Is(m#0, TSet(Tclass._module.Integer()));
    assume {:id "id423"} let#0#0#0 == m#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, TSet(Tclass._module.Integer()));
    assume {:id "id424"} v#Z#0 == let#0#0#0;
    assume true;
    s#0 := (var v#1 := m#0; v#1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(344,6)
    assume true;
    havoc u#Z#0;
    havoc v#Z#1;
    assert {:id "id426"} $Is(m#0, TSet(Tclass._module.Integer()));
    assume {:id "id427"} let#2#0#0 == m#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#2#0#0, TSet(Tclass._module.Integer()));
    assume {:id "id428"} v#Z#1 == let#2#0#0;
    assume {:id "id429"} let#1#0#0 == v#Z#1;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#1#0#0, TSet(Tclass._module.Number()));
    assume {:id "id430"} u#Z#0 == let#1#0#0;
    assert {:id "id431"} $Is((var u#1 := (var v#2 := m#0; v#2); u#1), TSet(Tclass._module.Integer()));
    assume true;
    s'#0 := (var u#1 := (var v#2 := m#0; v#2); u#1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(345,11)
    assume true;
    assert {:id "id433"} defass#a#0;
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._module.Integer(), $Heap);
    assert {:id "id434"} defass#b#0;
    ##b#0 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, Tclass._module.Integer(), $Heap);
    assume _module.__default.DowncastFunction#canCall(a#0, b#0);
    assume _module.__default.DowncastFunction#canCall(a#0, b#0);
    s''#0 := _module.__default.DowncastFunction(a#0, b#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(346,10)
    assume true;
    if (Set#Equal(s#0, m#0))
    {
    }

    if (Set#Equal(s#0, m#0) && Set#Equal(m#0, s#0))
    {
    }

    assume true;
    eq#0 := Set#Equal(s#0, m#0) && Set#Equal(m#0, s#0) && Set#Equal(s#0, s''#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(347,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(349,5)
    assume true;
    assert {:id "id437"} $Is(m#0, TSet(Tclass._module.Integer()));
    ##s#1 := m#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, TSet(Tclass._module.Integer()), $Heap);
    assume _module.__default.FId#canCall(Tclass._module.Integer(), m#0);
    assume _module.__default.FId#canCall(Tclass._module.Integer(), m#0);
    s#0 := _module.__default.FId(Tclass._module.Integer(), m#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(350,5)
    assume true;
    ##s#2 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#2, TSet(Tclass._module.Number()), $Heap);
    assume _module.__default.FId#canCall(Tclass._module.Number(), s#0);
    assert {:id "id439"} $Is(_module.__default.FId(Tclass._module.Number(), s#0), 
      TSet(Tclass._module.Integer()));
    assume _module.__default.FId#canCall(Tclass._module.Number(), s#0);
    s#0 := _module.__default.FId(Tclass._module.Number(), s#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(351,20)
    assume true;
    // TrCallStmt: Adding lhs with type set<Integer>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id441"} $Is(m#0, TSet(Tclass._module.Integer()));
    s##3 := m#0;
    call {:id "id442"} $rhs##7 := Call$$_module.__default.MId(Tclass._module.Integer(), s##3);
    // TrCallStmt: After ProcessCallStmt
    s#0 := $rhs##7;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(352,19)
    assume true;
    // TrCallStmt: Adding lhs with type set<Integer>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##4 := s#0;
    call {:id "id444"} $rhs##8 := Call$$_module.__default.MId(Tclass._module.Number(), s##4);
    // TrCallStmt: After ProcessCallStmt
    assert {:id "id445"} $Is($rhs##8, TSet(Tclass._module.Integer()));
    s#0 := $rhs##8;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(353,25)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type set<Integer>
    // TrCallStmt: Adding lhs with type set<Integer>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id447"} $Is(m#0, TSet(Tclass._module.Integer()));
    s##5 := m#0;
    call {:id "id448"} $rhs##9, $rhs##10 := Call$$_module.__default.MId2(Tclass._module.Integer(), s##5);
    // TrCallStmt: After ProcessCallStmt
    s#0 := $rhs##9;
    s'#0 := $rhs##10;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(354,24)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type set<Integer>
    // TrCallStmt: Adding lhs with type set<Integer>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##6 := m#0;
    call {:id "id451"} $rhs##11, $rhs##12 := Call$$_module.__default.MId2(Tclass._module.Number(), s##6);
    // TrCallStmt: After ProcessCallStmt
    assert {:id "id452"} $Is($rhs##11, TSet(Tclass._module.Integer()));
    s#0 := $rhs##11;
    assert {:id "id454"} $Is($rhs##12, TSet(Tclass._module.Integer()));
    s'#0 := $rhs##12;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(355,6)
    assume true;
    if (Set#Equal(s#0, m#0))
    {
    }

    assume true;
    eq#0 := Set#Equal(s#0, m#0) && Set#Equal(m#0, s#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(356,3)
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(358,22)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id457"} $Is(LitInt(12), Tclass._System.nat());
    x##0 := LitInt(12);
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##0 := LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##7 := s#0;
    call {:id "id458"} Call$$_module.__default.TailRecursiveMethod(x##0, u##0, s##7);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(359,11)
    assume true;
    assert {:id "id459"} $Is(LitInt(12), Tclass._System.nat());
    ##x#0 := LitInt(12);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, Tclass._System.nat(), $Heap);
    ##u#0 := LitInt(1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##u#0, TInt, $Heap);
    ##s#3 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#3, TSet(Tclass._module.Integer()), $Heap);
    assume _module.__default.TailRecursiveFunction#canCall(LitInt(12), LitInt(1), s#0);
    assume _module.__default.TailRecursiveFunction#canCall(LitInt(12), LitInt(1), s#0);
    f16#0 := _module.__default.TailRecursiveFunction($LS($LZ), LitInt(12), LitInt(1), s#0);
}



procedure {:verboseName "Create (well-formedness)"} CheckWellFormed$$_module.__default.Create(_module._default.Create$T: Ty, 
    a#0: Box
       where $IsBox(a#0, _module._default.Create$T)
         && $IsAllocBox(a#0, _module._default.Create$T, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.Create$T)
         && $IsAllocBox(b#0, _module._default.Create$T, $Heap))
   returns (m#0: Set
       where $Is(m#0, TSet(_module._default.Create$T))
         && $IsAlloc(m#0, TSet(_module._default.Create$T), $Heap), 
    n#0: MultiSet
       where $Is(n#0, TMultiSet(_module._default.Create$T))
         && $IsAlloc(n#0, TMultiSet(_module._default.Create$T), $Heap), 
    o#0: Seq
       where $Is(o#0, TSeq(_module._default.Create$T))
         && $IsAlloc(o#0, TSeq(_module._default.Create$T), $Heap), 
    p#0: Map
       where $Is(p#0, TMap(_module._default.Create$T, _module._default.Create$T))
         && $IsAlloc(p#0, TMap(_module._default.Create$T, _module._default.Create$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Create (call)"} Call$$_module.__default.Create(_module._default.Create$T: Ty, 
    a#0: Box
       where $IsBox(a#0, _module._default.Create$T)
         && $IsAllocBox(a#0, _module._default.Create$T, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.Create$T)
         && $IsAllocBox(b#0, _module._default.Create$T, $Heap))
   returns (m#0: Set
       where $Is(m#0, TSet(_module._default.Create$T))
         && $IsAlloc(m#0, TSet(_module._default.Create$T), $Heap), 
    n#0: MultiSet
       where $Is(n#0, TMultiSet(_module._default.Create$T))
         && $IsAlloc(n#0, TMultiSet(_module._default.Create$T), $Heap), 
    o#0: Seq
       where $Is(o#0, TSeq(_module._default.Create$T))
         && $IsAlloc(o#0, TSeq(_module._default.Create$T), $Heap), 
    p#0: Map
       where $Is(p#0, TMap(_module._default.Create$T, _module._default.Create$T))
         && $IsAlloc(p#0, TMap(_module._default.Create$T, _module._default.Create$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id465"} Set#Equal(m#0, Set#UnionOne(Set#UnionOne(Set#Empty(): Set, a#0), b#0));
  ensures {:id "id466"} MultiSet#Equal(n#0, MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, a#0), b#0));
  ensures {:id "id467"} Seq#Equal(o#0, Seq#Build(Seq#Build(Seq#Empty(): Seq, a#0), b#0));
  free ensures true;
  ensures {:id "id468"} Map#Equal(p#0, Map#Build(Map#Build(Map#Empty(): Map, a#0, b#0), b#0, a#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Create (correctness)"} Impl$$_module.__default.Create(_module._default.Create$T: Ty, 
    a#0: Box
       where $IsBox(a#0, _module._default.Create$T)
         && $IsAllocBox(a#0, _module._default.Create$T, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.Create$T)
         && $IsAllocBox(b#0, _module._default.Create$T, $Heap))
   returns (m#0: Set
       where $Is(m#0, TSet(_module._default.Create$T))
         && $IsAlloc(m#0, TSet(_module._default.Create$T), $Heap), 
    n#0: MultiSet
       where $Is(n#0, TMultiSet(_module._default.Create$T))
         && $IsAlloc(n#0, TMultiSet(_module._default.Create$T), $Heap), 
    o#0: Seq
       where $Is(o#0, TSeq(_module._default.Create$T))
         && $IsAlloc(o#0, TSeq(_module._default.Create$T), $Heap), 
    p#0: Map
       where $Is(p#0, TMap(_module._default.Create$T, _module._default.Create$T))
         && $IsAlloc(p#0, TMap(_module._default.Create$T, _module._default.Create$T), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id469"} Set#Equal(m#0, Set#UnionOne(Set#UnionOne(Set#Empty(): Set, a#0), b#0));
  ensures {:id "id470"} MultiSet#Equal(n#0, MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, a#0), b#0));
  ensures {:id "id471"} Seq#Equal(o#0, Seq#Build(Seq#Build(Seq#Empty(): Seq, a#0), b#0));
  free ensures true;
  ensures {:id "id472"} Map#Equal(p#0, Map#Build(Map#Build(Map#Empty(): Map, a#0, b#0), b#0, a#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Create (correctness)"} Impl$$_module.__default.Create(_module._default.Create$T: Ty, a#0: Box, b#0: Box)
   returns (m#0: Set, n#0: MultiSet, o#0: Seq, p#0: Map, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Set;
  var $rhs#1: MultiSet;
  var $rhs#2: Seq;

    // AddMethodImpl: Create, Impl$$_module.__default.Create
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(367,11)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := Set#UnionOne(Set#UnionOne(Set#Empty(): Set, a#0), b#0);
    assume true;
    $rhs#1 := MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, a#0), b#0);
    assume true;
    $rhs#2 := Seq#Build(Seq#Build(Seq#Empty(): Seq, a#0), b#0);
    m#0 := $rhs#0;
    n#0 := $rhs#1;
    o#0 := $rhs#2;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(368,5)
    assume true;
    assume true;
    p#0 := Map#Build(Map#Build(Map#Empty(): Map, a#0, b#0), b#0, a#0);
}



// function declaration for _module._default.DowncastFunction
function _module.__default.DowncastFunction(a#0: ref, b#0: ref) : Set
uses {
// consequence axiom for _module.__default.DowncastFunction
axiom 1 <= $FunctionContextHeight
   ==> (forall a#0: ref, b#0: ref :: 
    { _module.__default.DowncastFunction(a#0, b#0) } 
    _module.__default.DowncastFunction#canCall(a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.Integer())
           && $Is(b#0, Tclass._module.Integer()))
       ==> $Is(_module.__default.DowncastFunction(a#0, b#0), TSet(Tclass._module.Integer())));
// alloc consequence axiom for _module.__default.DowncastFunction
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, a#0: ref, b#0: ref :: 
    { $IsAlloc(_module.__default.DowncastFunction(a#0, b#0), 
        TSet(Tclass._module.Integer()), 
        $Heap) } 
    (_module.__default.DowncastFunction#canCall(a#0, b#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(a#0, Tclass._module.Integer())
             && $IsAlloc(a#0, Tclass._module.Integer(), $Heap)
             && 
            $Is(b#0, Tclass._module.Integer())
             && $IsAlloc(b#0, Tclass._module.Integer(), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.DowncastFunction(a#0, b#0), 
        TSet(Tclass._module.Integer()), 
        $Heap));
// definition axiom for _module.__default.DowncastFunction (revealed)
axiom {:id "id480"} 1 <= $FunctionContextHeight
   ==> (forall a#0: ref, b#0: ref :: 
    { _module.__default.DowncastFunction(a#0, b#0) } 
    _module.__default.DowncastFunction#canCall(a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.Integer())
           && $Is(b#0, Tclass._module.Integer()))
       ==> _module.__default.DowncastFunction(a#0, b#0)
         == (var m#0 := Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(a#0)), $Box(b#0)); 
          (var v#0 := m#0; v#0)));
// definition axiom for _module.__default.DowncastFunction for all literals (revealed)
axiom {:id "id481"} 1 <= $FunctionContextHeight
   ==> (forall a#0: ref, b#0: ref :: 
    {:weight 3} { _module.__default.DowncastFunction(Lit(a#0), Lit(b#0)) } 
    _module.__default.DowncastFunction#canCall(Lit(a#0), Lit(b#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.Integer())
           && $Is(b#0, Tclass._module.Integer()))
       ==> _module.__default.DowncastFunction(Lit(a#0), Lit(b#0))
         == (var m#1 := Lit(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(Lit(a#0))), $Box(Lit(b#0)))); 
          (var v#1 := m#1; v#1)));
}

function _module.__default.DowncastFunction#canCall(a#0: ref, b#0: ref) : bool;

function _module.__default.DowncastFunction#requires(ref, ref) : bool;

// #requires axiom for _module.__default.DowncastFunction
axiom (forall a#0: ref, b#0: ref :: 
  { _module.__default.DowncastFunction#requires(a#0, b#0) } 
  $Is(a#0, Tclass._module.Integer()) && $Is(b#0, Tclass._module.Integer())
     ==> _module.__default.DowncastFunction#requires(a#0, b#0) == true);

procedure {:verboseName "DowncastFunction (well-formedness)"} CheckWellformed$$_module.__default.DowncastFunction(a#0: ref where $Is(a#0, Tclass._module.Integer()), 
    b#0: ref where $Is(b#0, Tclass._module.Integer()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DowncastFunction (well-formedness)"} CheckWellformed$$_module.__default.DowncastFunction(a#0: ref, b#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var m#Z#0: Set;
  var let#0#0#0: Set;
  var v#Z#0: Set;
  var let#1#0#0: Set;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.DowncastFunction(a#0, b#0), TSet(Tclass._module.Integer()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc m#Z#0;
        assume {:id "id482"} let#0#0#0 == Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(a#0)), $Box(b#0));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TSet(Tclass._module.Number()));
        assume {:id "id483"} m#Z#0 == let#0#0#0;
        havoc v#Z#0;
        assert {:id "id484"} $Is(m#Z#0, TSet(Tclass._module.Integer()));
        assume {:id "id485"} let#1#0#0 == m#Z#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1#0#0, TSet(Tclass._module.Integer()));
        assume {:id "id486"} v#Z#0 == let#1#0#0;
        assume {:id "id487"} _module.__default.DowncastFunction(a#0, b#0) == v#Z#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.DowncastFunction(a#0, b#0), TSet(Tclass._module.Integer()));
        return;

        assume false;
    }
}



// function declaration for _module._default.DowncastF
function _module.__default.DowncastF(s#0: Set) : Set
uses {
// consequence axiom for _module.__default.DowncastF
axiom 1 <= $FunctionContextHeight
   ==> (forall s#0: Set :: 
    { _module.__default.DowncastF(s#0) } 
    _module.__default.DowncastF#canCall(s#0)
         || (1 < $FunctionContextHeight && $Is(s#0, TSet(Tclass._module.Integer())))
       ==> $Is(_module.__default.DowncastF(s#0), TSet(Tclass._module.Number())));
// alloc consequence axiom for _module.__default.DowncastF
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, s#0: Set :: 
    { $IsAlloc(_module.__default.DowncastF(s#0), TSet(Tclass._module.Number()), $Heap) } 
    (_module.__default.DowncastF#canCall(s#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(s#0, TSet(Tclass._module.Integer()))
             && $IsAlloc(s#0, TSet(Tclass._module.Integer()), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.DowncastF(s#0), TSet(Tclass._module.Number()), $Heap));
// definition axiom for _module.__default.DowncastF (revealed)
axiom {:id "id488"} 1 <= $FunctionContextHeight
   ==> (forall s#0: Set :: 
    { _module.__default.DowncastF(s#0) } 
    _module.__default.DowncastF#canCall(s#0)
         || (1 < $FunctionContextHeight && $Is(s#0, TSet(Tclass._module.Integer())))
       ==> _module.__default.DowncastF(s#0) == s#0);
// definition axiom for _module.__default.DowncastF for all literals (revealed)
axiom {:id "id489"} 1 <= $FunctionContextHeight
   ==> (forall s#0: Set :: 
    {:weight 3} { _module.__default.DowncastF(Lit(s#0)) } 
    _module.__default.DowncastF#canCall(Lit(s#0))
         || (1 < $FunctionContextHeight && $Is(s#0, TSet(Tclass._module.Integer())))
       ==> _module.__default.DowncastF(Lit(s#0)) == Lit(s#0));
}

function _module.__default.DowncastF#canCall(s#0: Set) : bool;

function _module.__default.DowncastF#requires(Set) : bool;

// #requires axiom for _module.__default.DowncastF
axiom (forall s#0: Set :: 
  { _module.__default.DowncastF#requires(s#0) } 
  $Is(s#0, TSet(Tclass._module.Integer()))
     ==> _module.__default.DowncastF#requires(s#0) == true);

procedure {:verboseName "DowncastF (well-formedness)"} CheckWellformed$$_module.__default.DowncastF(s#0: Set where $Is(s#0, TSet(Tclass._module.Integer())));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DowncastM (well-formedness)"} CheckWellFormed$$_module.__default.DowncastM(s#0: Set
       where $Is(s#0, TSet(Tclass._module.Integer()))
         && $IsAlloc(s#0, TSet(Tclass._module.Integer()), $Heap))
   returns (r#0: Set
       where $Is(r#0, TSet(Tclass._module.Number()))
         && $IsAlloc(r#0, TSet(Tclass._module.Number()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DowncastM (call)"} Call$$_module.__default.DowncastM(s#0: Set
       where $Is(s#0, TSet(Tclass._module.Integer()))
         && $IsAlloc(s#0, TSet(Tclass._module.Integer()), $Heap))
   returns (r#0: Set
       where $Is(r#0, TSet(Tclass._module.Number()))
         && $IsAlloc(r#0, TSet(Tclass._module.Number()), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id492"} Set#Equal(r#0, s#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DowncastM (correctness)"} Impl$$_module.__default.DowncastM(s#0: Set
       where $Is(s#0, TSet(Tclass._module.Integer()))
         && $IsAlloc(s#0, TSet(Tclass._module.Integer()), $Heap))
   returns (r#0: Set
       where $Is(r#0, TSet(Tclass._module.Number()))
         && $IsAlloc(r#0, TSet(Tclass._module.Number()), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id493"} Set#Equal(r#0, s#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DowncastM (correctness)"} Impl$$_module.__default.DowncastM(s#0: Set) returns (r#0: Set, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: DowncastM, Impl$$_module.__default.DowncastM
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(381,5)
    assume true;
    assume true;
    r#0 := s#0;
}



procedure {:verboseName "DowncastM2 (well-formedness)"} CheckWellFormed$$_module.__default.DowncastM2(s#0: Set
       where $Is(s#0, TSet(Tclass._module.Integer()))
         && $IsAlloc(s#0, TSet(Tclass._module.Integer()), $Heap))
   returns (r0#0: Set
       where $Is(r0#0, TSet(Tclass._module.Number()))
         && $IsAlloc(r0#0, TSet(Tclass._module.Number()), $Heap), 
    r1#0: Set
       where $Is(r1#0, TSet(Tclass._module.Number()))
         && $IsAlloc(r1#0, TSet(Tclass._module.Number()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DowncastM2 (call)"} Call$$_module.__default.DowncastM2(s#0: Set
       where $Is(s#0, TSet(Tclass._module.Integer()))
         && $IsAlloc(s#0, TSet(Tclass._module.Integer()), $Heap))
   returns (r0#0: Set
       where $Is(r0#0, TSet(Tclass._module.Number()))
         && $IsAlloc(r0#0, TSet(Tclass._module.Number()), $Heap), 
    r1#0: Set
       where $Is(r1#0, TSet(Tclass._module.Number()))
         && $IsAlloc(r1#0, TSet(Tclass._module.Number()), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id496"} Set#Equal(r0#0, r1#0);
  ensures {:id "id497"} Set#Equal(r1#0, s#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DowncastM2 (correctness)"} Impl$$_module.__default.DowncastM2(s#0: Set
       where $Is(s#0, TSet(Tclass._module.Integer()))
         && $IsAlloc(s#0, TSet(Tclass._module.Integer()), $Heap))
   returns (r0#0: Set
       where $Is(r0#0, TSet(Tclass._module.Number()))
         && $IsAlloc(r0#0, TSet(Tclass._module.Number()), $Heap), 
    r1#0: Set
       where $Is(r1#0, TSet(Tclass._module.Number()))
         && $IsAlloc(r1#0, TSet(Tclass._module.Number()), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id498"} Set#Equal(r0#0, r1#0);
  ensures {:id "id499"} Set#Equal(r1#0, s#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DowncastM2 (correctness)"} Impl$$_module.__default.DowncastM2(s#0: Set) returns (r0#0: Set, r1#0: Set, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Set;
  var $rhs#1: Set;

    // AddMethodImpl: DowncastM2, Impl$$_module.__default.DowncastM2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(386,10)
    assume true;
    assume true;
    assume true;
    $rhs#0 := s#0;
    assume true;
    $rhs#1 := s#0;
    r0#0 := $rhs#0;
    r1#0 := $rhs#1;
}



// function declaration for _module._default.FId
function _module.__default.FId(_module._default.FId$T: Ty, s#0: Set) : Set
uses {
// consequence axiom for _module.__default.FId
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.FId$T: Ty, s#0: Set :: 
    { _module.__default.FId(_module._default.FId$T, s#0) } 
    _module.__default.FId#canCall(_module._default.FId$T, s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(_module._default.FId$T)))
       ==> $Is(_module.__default.FId(_module._default.FId$T, s#0), TSet(_module._default.FId$T)));
// alloc consequence axiom for _module.__default.FId
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.FId$T: Ty, s#0: Set :: 
    { $IsAlloc(_module.__default.FId(_module._default.FId$T, s#0), 
        TSet(_module._default.FId$T), 
        $Heap) } 
    (_module.__default.FId#canCall(_module._default.FId$T, s#0)
           || (0 < $FunctionContextHeight
             && 
            $Is(s#0, TSet(_module._default.FId$T))
             && $IsAlloc(s#0, TSet(_module._default.FId$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.FId(_module._default.FId$T, s#0), 
        TSet(_module._default.FId$T), 
        $Heap));
// definition axiom for _module.__default.FId (revealed)
axiom {:id "id504"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.FId$T: Ty, s#0: Set :: 
    { _module.__default.FId(_module._default.FId$T, s#0) } 
    _module.__default.FId#canCall(_module._default.FId$T, s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(_module._default.FId$T)))
       ==> _module.__default.FId(_module._default.FId$T, s#0) == s#0);
// definition axiom for _module.__default.FId for all literals (revealed)
axiom {:id "id505"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.FId$T: Ty, s#0: Set :: 
    {:weight 3} { _module.__default.FId(_module._default.FId$T, Lit(s#0)) } 
    _module.__default.FId#canCall(_module._default.FId$T, Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(_module._default.FId$T)))
       ==> _module.__default.FId(_module._default.FId$T, Lit(s#0)) == Lit(s#0));
}

function _module.__default.FId#canCall(_module._default.FId$T: Ty, s#0: Set) : bool;

function _module.__default.FId#requires(Ty, Set) : bool;

// #requires axiom for _module.__default.FId
axiom (forall _module._default.FId$T: Ty, s#0: Set :: 
  { _module.__default.FId#requires(_module._default.FId$T, s#0) } 
  $Is(s#0, TSet(_module._default.FId$T))
     ==> _module.__default.FId#requires(_module._default.FId$T, s#0) == true);

procedure {:verboseName "FId (well-formedness)"} CheckWellformed$$_module.__default.FId(_module._default.FId$T: Ty, 
    s#0: Set where $Is(s#0, TSet(_module._default.FId$T)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MId (well-formedness)"} CheckWellFormed$$_module.__default.MId(_module._default.MId$T: Ty, 
    s#0: Set
       where $Is(s#0, TSet(_module._default.MId$T))
         && $IsAlloc(s#0, TSet(_module._default.MId$T), $Heap))
   returns (r#0: Set
       where $Is(r#0, TSet(_module._default.MId$T))
         && $IsAlloc(r#0, TSet(_module._default.MId$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MId (call)"} Call$$_module.__default.MId(_module._default.MId$T: Ty, 
    s#0: Set
       where $Is(s#0, TSet(_module._default.MId$T))
         && $IsAlloc(s#0, TSet(_module._default.MId$T), $Heap))
   returns (r#0: Set
       where $Is(r#0, TSet(_module._default.MId$T))
         && $IsAlloc(r#0, TSet(_module._default.MId$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id508"} Set#Equal(r#0, s#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MId (correctness)"} Impl$$_module.__default.MId(_module._default.MId$T: Ty, 
    s#0: Set
       where $Is(s#0, TSet(_module._default.MId$T))
         && $IsAlloc(s#0, TSet(_module._default.MId$T), $Heap))
   returns (r#0: Set
       where $Is(r#0, TSet(_module._default.MId$T))
         && $IsAlloc(r#0, TSet(_module._default.MId$T), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id509"} Set#Equal(r#0, s#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MId (correctness)"} Impl$$_module.__default.MId(_module._default.MId$T: Ty, s#0: Set) returns (r#0: Set, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: MId, Impl$$_module.__default.MId
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(393,5)
    assume true;
    assume true;
    r#0 := s#0;
}



procedure {:verboseName "MId2 (well-formedness)"} CheckWellFormed$$_module.__default.MId2(_module._default.MId2$T: Ty, 
    s#0: Set
       where $Is(s#0, TSet(_module._default.MId2$T))
         && $IsAlloc(s#0, TSet(_module._default.MId2$T), $Heap))
   returns (r0#0: Set
       where $Is(r0#0, TSet(_module._default.MId2$T))
         && $IsAlloc(r0#0, TSet(_module._default.MId2$T), $Heap), 
    r1#0: Set
       where $Is(r1#0, TSet(_module._default.MId2$T))
         && $IsAlloc(r1#0, TSet(_module._default.MId2$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MId2 (call)"} Call$$_module.__default.MId2(_module._default.MId2$T: Ty, 
    s#0: Set
       where $Is(s#0, TSet(_module._default.MId2$T))
         && $IsAlloc(s#0, TSet(_module._default.MId2$T), $Heap))
   returns (r0#0: Set
       where $Is(r0#0, TSet(_module._default.MId2$T))
         && $IsAlloc(r0#0, TSet(_module._default.MId2$T), $Heap), 
    r1#0: Set
       where $Is(r1#0, TSet(_module._default.MId2$T))
         && $IsAlloc(r1#0, TSet(_module._default.MId2$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id512"} Set#Equal(r0#0, r1#0);
  ensures {:id "id513"} Set#Equal(r1#0, s#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MId2 (correctness)"} Impl$$_module.__default.MId2(_module._default.MId2$T: Ty, 
    s#0: Set
       where $Is(s#0, TSet(_module._default.MId2$T))
         && $IsAlloc(s#0, TSet(_module._default.MId2$T), $Heap))
   returns (r0#0: Set
       where $Is(r0#0, TSet(_module._default.MId2$T))
         && $IsAlloc(r0#0, TSet(_module._default.MId2$T), $Heap), 
    r1#0: Set
       where $Is(r1#0, TSet(_module._default.MId2$T))
         && $IsAlloc(r1#0, TSet(_module._default.MId2$T), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id514"} Set#Equal(r0#0, r1#0);
  ensures {:id "id515"} Set#Equal(r1#0, s#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MId2 (correctness)"} Impl$$_module.__default.MId2(_module._default.MId2$T: Ty, s#0: Set)
   returns (r0#0: Set, r1#0: Set, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Set;
  var $rhs#1: Set;

    // AddMethodImpl: MId2, Impl$$_module.__default.MId2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(398,10)
    assume true;
    assume true;
    assume true;
    $rhs#0 := s#0;
    assume true;
    $rhs#1 := s#0;
    r0#0 := $rhs#0;
    r1#0 := $rhs#1;
}



procedure {:verboseName "TailRecursiveMethod (well-formedness)"} CheckWellFormed$$_module.__default.TailRecursiveMethod(x#0: int where LitInt(0) <= x#0, 
    u#0: int, 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.Integer()))
         && $IsAlloc(s#0, TSet(Tclass._module.Integer()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TailRecursiveMethod (call)"} Call$$_module.__default.TailRecursiveMethod(x#0: int where LitInt(0) <= x#0, 
    u#0: int, 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.Integer()))
         && $IsAlloc(s#0, TSet(Tclass._module.Integer()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TailRecursiveMethod (correctness)"} Impl$$_module.__default.TailRecursiveMethod(x#0: int where LitInt(0) <= x#0, 
    u#0: int, 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.Integer()))
         && $IsAlloc(s#0, TSet(Tclass._module.Integer()), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TailRecursiveMethod (correctness)"} Impl$$_module.__default.TailRecursiveMethod(x#0: int, u#0: int, s#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: Set
     where $Is(n#0, TSet(Tclass._module.Number()))
       && $IsAlloc(n#0, TSet(Tclass._module.Number()), $Heap);
  var x##0_0: int;
  var u##0_0: int;
  var s##0_0: Set;

    // AddMethodImpl: TailRecursiveMethod, Impl$$_module.__default.TailRecursiveMethod
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(402,22)
    assume true;
    assume true;
    n#0 := s#0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(403,3)
    assume true;
    if (x#0 != 0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(404,24)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id521"} $Is(x#0 - 1, Tclass._System.nat());
        x##0_0 := x#0 - 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        u##0_0 := Mul(LitInt(100), u#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id522"} $Is(n#0, TSet(Tclass._module.Integer()));
        s##0_0 := n#0;
        assert {:id "id523"} 0 <= x#0 || x##0_0 == x#0;
        assert {:id "id524"} 0 <= u#0 || x##0_0 < x#0 || u##0_0 == u#0;
        assert {:id "id525"} x##0_0 < x#0
           || (x##0_0 == x#0
             && (u##0_0 < u#0
               || (u##0_0 == u#0 && Set#Subset(s##0_0, s#0) && !Set#Subset(s#0, s##0_0))));
        call {:id "id526"} Call$$_module.__default.TailRecursiveMethod(x##0_0, u##0_0, s##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



// function declaration for _module._default.TailRecursiveFunction
function _module.__default.TailRecursiveFunction($ly: LayerType, x#0: int, u#0: int, s#0: Set) : int
uses {
// definition axiom for _module.__default.TailRecursiveFunction (revealed)
axiom {:id "id527"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: int, u#0: int, s#0: Set :: 
    { _module.__default.TailRecursiveFunction($LS($ly), x#0, u#0, s#0) } 
    _module.__default.TailRecursiveFunction#canCall(x#0, u#0, s#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= x#0
           && $Is(s#0, TSet(Tclass._module.Integer())))
       ==> (var n#0 := s#0; 
          x#0 != LitInt(0)
             ==> _module.__default.TailRecursiveFunction#canCall(x#0 - 1, Mul(LitInt(100), u#0), n#0))
         && _module.__default.TailRecursiveFunction($LS($ly), x#0, u#0, s#0)
           == (var n#0 := s#0; 
            (if x#0 == LitInt(0)
               then 16
               else _module.__default.TailRecursiveFunction($ly, x#0 - 1, Mul(LitInt(100), u#0), n#0))));
// definition axiom for _module.__default.TailRecursiveFunction for all literals (revealed)
axiom {:id "id528"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: int, u#0: int, s#0: Set :: 
    {:weight 3} { _module.__default.TailRecursiveFunction($LS($ly), LitInt(x#0), LitInt(u#0), Lit(s#0)) } 
    _module.__default.TailRecursiveFunction#canCall(LitInt(x#0), LitInt(u#0), Lit(s#0))
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= x#0
           && $Is(s#0, TSet(Tclass._module.Integer())))
       ==> (var n#1 := Lit(s#0); 
          LitInt(x#0) != LitInt(0)
             ==> _module.__default.TailRecursiveFunction#canCall(LitInt(x#0 - 1), LitInt(Mul(LitInt(100), LitInt(u#0))), n#1))
         && _module.__default.TailRecursiveFunction($LS($ly), LitInt(x#0), LitInt(u#0), Lit(s#0))
           == (var n#1 := Lit(s#0); 
            (if LitInt(x#0) == LitInt(0)
               then 16
               else _module.__default.TailRecursiveFunction($LS($ly), LitInt(x#0 - 1), LitInt(Mul(LitInt(100), LitInt(u#0))), n#1))));
}

function _module.__default.TailRecursiveFunction#canCall(x#0: int, u#0: int, s#0: Set) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: int, u#0: int, s#0: Set :: 
  { _module.__default.TailRecursiveFunction($LS($ly), x#0, u#0, s#0) } 
  _module.__default.TailRecursiveFunction($LS($ly), x#0, u#0, s#0)
     == _module.__default.TailRecursiveFunction($ly, x#0, u#0, s#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: int, u#0: int, s#0: Set :: 
  { _module.__default.TailRecursiveFunction(AsFuelBottom($ly), x#0, u#0, s#0) } 
  _module.__default.TailRecursiveFunction($ly, x#0, u#0, s#0)
     == _module.__default.TailRecursiveFunction($LZ, x#0, u#0, s#0));

function _module.__default.TailRecursiveFunction#requires(LayerType, int, int, Set) : bool;

// #requires axiom for _module.__default.TailRecursiveFunction
axiom (forall $ly: LayerType, x#0: int, u#0: int, s#0: Set :: 
  { _module.__default.TailRecursiveFunction#requires($ly, x#0, u#0, s#0) } 
  LitInt(0) <= x#0 && $Is(s#0, TSet(Tclass._module.Integer()))
     ==> _module.__default.TailRecursiveFunction#requires($ly, x#0, u#0, s#0) == true);

procedure {:verboseName "TailRecursiveFunction (well-formedness)"} CheckWellformed$$_module.__default.TailRecursiveFunction(x#0: int where LitInt(0) <= x#0, 
    u#0: int, 
    s#0: Set where $Is(s#0, TSet(Tclass._module.Integer())));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TailRecursiveFunction (well-formedness)"} CheckWellformed$$_module.__default.TailRecursiveFunction(x#0: int, u#0: int, s#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var n#Z#0: Set;
  var let#0#0#0: Set;
  var ##x#0: int;
  var ##u#0: int;
  var ##s#0: Set;


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
        havoc n#Z#0;
        assume {:id "id529"} let#0#0#0 == s#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TSet(Tclass._module.Number()));
        assume {:id "id530"} n#Z#0 == let#0#0#0;
        if (x#0 == LitInt(0))
        {
            assume {:id "id531"} _module.__default.TailRecursiveFunction($LS($LZ), x#0, u#0, s#0) == LitInt(16);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TailRecursiveFunction($LS($LZ), x#0, u#0, s#0), TInt);
            return;
        }
        else
        {
            assert {:id "id532"} $Is(x#0 - 1, Tclass._System.nat());
            ##x#0 := x#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, Tclass._System.nat(), $Heap);
            ##u#0 := Mul(LitInt(100), u#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##u#0, TInt, $Heap);
            assert {:id "id533"} $Is(n#Z#0, TSet(Tclass._module.Integer()));
            ##s#0 := n#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, TSet(Tclass._module.Integer()), $Heap);
            assert {:id "id534"} 0 <= x#0 || ##x#0 == x#0;
            assert {:id "id535"} 0 <= u#0 || ##x#0 < x#0 || ##u#0 == u#0;
            assert {:id "id536"} ##x#0 < x#0
               || (##x#0 == x#0
                 && (##u#0 < u#0
                   || (##u#0 == u#0 && Set#Subset(##s#0, s#0) && !Set#Subset(s#0, ##s#0))));
            assume _module.__default.TailRecursiveFunction#canCall(x#0 - 1, Mul(LitInt(100), u#0), n#Z#0);
            assume {:id "id537"} _module.__default.TailRecursiveFunction($LS($LZ), x#0, u#0, s#0)
               == _module.__default.TailRecursiveFunction($LS($LZ), x#0 - 1, Mul(LitInt(100), u#0), n#Z#0);
            assume _module.__default.TailRecursiveFunction#canCall(x#0 - 1, Mul(LitInt(100), u#0), n#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TailRecursiveFunction($LS($LZ), x#0, u#0, s#0), TInt);
            return;
        }

        assume false;
    }
}



procedure {:verboseName "HeapAssignmentDowncasts (well-formedness)"} CheckWellFormed$$_module.__default.HeapAssignmentDowncasts();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "HeapAssignmentDowncasts (call)"} Call$$_module.__default.HeapAssignmentDowncasts();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "HeapAssignmentDowncasts (correctness)"} Impl$$_module.__default.HeapAssignmentDowncasts() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



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

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "HeapAssignmentDowncasts (correctness)"} Impl$$_module.__default.HeapAssignmentDowncasts() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#n#0: bool;
  var n#0: ref
     where defass#n#0
       ==> $Is(n#0, Tclass._module.Number())
         && $IsAlloc(n#0, Tclass._module.Number(), $Heap);
  var $nw: ref;
  var value##0: int;
  var ns#0: Set
     where $Is(ns#0, TSet(Tclass._module.Number()))
       && $IsAlloc(ns#0, TSet(Tclass._module.Number()), $Heap);
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.Class()) && $IsAlloc(c#0, Tclass._module.Class(), $Heap);
  var s##0: Set;
  var $rhs#0: Set;
  var $rhs#1: Set;
  var prefix##0: Seq;
  var S##0: Set;
  var a#0: ref
     where $Is(a#0, Tclass._System.array(TSet(Tclass._module.Integer())))
       && $IsAlloc(a#0, Tclass._System.array(TSet(Tclass._module.Integer())), $Heap);
  var m#0: ref
     where $Is(m#0, Tclass._System.array2(TSet(Tclass._module.Integer())))
       && $IsAlloc(m#0, Tclass._System.array2(TSet(Tclass._module.Integer())), $Heap);
  var $rhs#2: Set;
  var prefix##1: Seq;
  var S##1: Set;

    // AddMethodImpl: HeapAssignmentDowncasts, Impl$$_module.__default.HeapAssignmentDowncasts
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(422,17)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(422,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##0 := LitInt(22);
    call {:id "id538"} $nw := Call$$_module.Integer.__ctor(value##0);
    // TrCallStmt: After ProcessCallStmt
    n#0 := $nw;
    defass#n#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(423,23)
    assume true;
    assert {:id "id540"} defass#n#0;
    assume true;
    ns#0 := Set#UnionOne(Set#Empty(): Set, $Box(n#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(424,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(424,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id542"} $Is(ns#0, TSet(Tclass._module.Integer()));
    s##0 := ns#0;
    call {:id "id543"} $nw := Call$$_module.Class.__ctor(s##0);
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(425,8)
    assert {:id "id545"} defass#c#0;
    assert {:id "id546"} c#0 != null;
    assume true;
    assert {:id "id547"} $_ModifiesFrame[c#0, _module.Class.ns];
    assert {:id "id548"} defass#c#0;
    assert {:id "id549"} c#0 != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, c#0, _module.Class.js)): Set;
    $Heap := update($Heap, c#0, _module.Class.ns, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(426,8)
    assert {:id "id552"} defass#c#0;
    assert {:id "id553"} c#0 != null;
    assume true;
    assert {:id "id554"} $_ModifiesFrame[c#0, _module.Class.js];
    assert {:id "id555"} defass#c#0;
    assert {:id "id556"} c#0 != null;
    assert {:id "id557"} $Is($Unbox(read($Heap, c#0, _module.Class.ns)): Set, TSet(Tclass._module.Integer()));
    assume true;
    $rhs#1 := $Unbox(read($Heap, c#0, _module.Class.ns)): Set;
    $Heap := update($Heap, c#0, _module.Class.js, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(427,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(99))), $Box(char#FromInt(46))), 
              $Box(char#FromInt(106))), 
            $Box(char#FromInt(115))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assert {:id "id560"} defass#c#0;
    assert {:id "id561"} c#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##0 := $Unbox(read($Heap, c#0, _module.Class.js)): Set;
    call {:id "id562"} Call$$_module.__default.PrintSet(prefix##0, S##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(427,29)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(429,9)
    assume true;
    assert {:id "id563"} 0 <= LitInt(20);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TSet(Tclass._module.Integer())));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(20);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(430,9)
    assume true;
    assert {:id "id565"} 0 <= LitInt(18);
    assert {:id "id566"} 0 <= LitInt(18);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(TSet(Tclass._module.Integer())));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == LitInt(18);
    assume _System.array2.Length1($nw) == LitInt(18);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    m#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(431,8)
    assert {:id "id568"} a#0 != null;
    assert {:id "id569"} 0 <= LitInt(7) && LitInt(7) < _System.array.Length(a#0);
    assume true;
    assert {:id "id570"} $_ModifiesFrame[a#0, IndexField(LitInt(7))];
    assert {:id "id571"} $Is(ns#0, TSet(Tclass._module.Integer()));
    assume true;
    $rhs#2 := ns#0;
    $Heap := update($Heap, a#0, IndexField(LitInt(7)), $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(433,6)
    assume true;
    assert {:id "id574"} a#0 != null;
    assert {:id "id575"} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(a#0);
    assume true;
    ns#0 := $Unbox(read($Heap, a#0, IndexField(LitInt(1)))): Set;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(434,6)
    assume true;
    assert {:id "id577"} m#0 != null;
    assert {:id "id578"} 0 <= LitInt(3) && LitInt(3) < _System.array2.Length0(m#0);
    assert {:id "id579"} 0 <= LitInt(3) && LitInt(3) < _System.array2.Length1(m#0);
    assume true;
    ns#0 := $Unbox(read($Heap, m#0, MultiIndexField(IndexField(LitInt(3)), LitInt(3)))): Set;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(435,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##1 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(97))), 
                $Box(char#FromInt(91))), 
              $Box(char#FromInt(55))), 
            $Box(char#FromInt(93))), 
          $Box(char#FromInt(58))), 
        $Box(char#FromInt(32))));
    assert {:id "id581"} a#0 != null;
    assert {:id "id582"} 0 <= LitInt(7) && LitInt(7) < _System.array.Length(a#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##1 := $Unbox(read($Heap, a#0, IndexField(LitInt(7)))): Set;
    call {:id "id583"} Call$$_module.__default.PrintSet(prefix##1, S##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(435,30)
    assume true;
}



procedure {:verboseName "DeepDowncast (well-formedness)"} CheckWellFormed$$_module.__default.DeepDowncast();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DeepDowncast (call)"} Call$$_module.__default.DeepDowncast();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DeepDowncast (correctness)"} Impl$$_module.__default.DeepDowncast() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DeepDowncast (correctness)"} Impl$$_module.__default.DeepDowncast() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#t#0: bool;
  var t#0: ref
     where defass#t#0
       ==> $Is(t#0, Tclass._module.Number())
         && $IsAlloc(t#0, Tclass._module.Number(), $Heap);
  var $nw: ref;
  var value##0: int;
  var ttt#0: Set
     where $Is(ttt#0, TSet(TSeq(Tclass._module.Number())))
       && $IsAlloc(ttt#0, TSet(TSeq(Tclass._module.Number())), $Heap);
  var ##t#0: ref;
  var ccc#0: Set
     where $Is(ccc#0, TSet(TSeq(Tclass._module.Integer())))
       && $IsAlloc(ccc#0, TSet(TSeq(Tclass._module.Integer())), $Heap);
  var defass#o#0: bool;
  var o#0: ref
     where defass#o#0
       ==> $Is(o#0, Tclass._System.object())
         && $IsAlloc(o#0, Tclass._System.object(), $Heap);
  var mtt#0: Map
     where $Is(mtt#0, TMap(TSeq(Tclass._module.Number()), Tclass._System.object()))
       && $IsAlloc(mtt#0, TMap(TSeq(Tclass._module.Number()), Tclass._System.object()), $Heap);
  var ##t#1: ref;
  var ##u#0: ref;
  var mcc#0: Map
     where $Is(mcc#0, TMap(TSeq(Tclass._module.Integer()), Tclass._System.object()))
       && $IsAlloc(mcc#0, TMap(TSeq(Tclass._module.Integer()), Tclass._System.object()), $Heap);

    // AddMethodImpl: DeepDowncast, Impl$$_module.__default.DeepDowncast
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(442,17)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(442,20)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    value##0 := LitInt(4);
    call {:id "id584"} $nw := Call$$_module.Integer.__ctor(value##0);
    // TrCallStmt: After ProcessCallStmt
    t#0 := $nw;
    defass#t#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(443,29)
    assume true;
    assert {:id "id586"} defass#t#0;
    ##t#0 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#0, Tclass._module.Number(), $Heap);
    assume _module.__default.SetOfSeqOf#canCall(Tclass._module.Number(), $Box(t#0));
    assume _module.__default.SetOfSeqOf#canCall(Tclass._module.Number(), $Box(t#0));
    ttt#0 := _module.__default.SetOfSeqOf(Tclass._module.Number(), $Box(t#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(444,30)
    assume true;
    assert {:id "id588"} $Is(ttt#0, TSet(TSeq(Tclass._module.Integer())));
    assume true;
    ccc#0 := ttt#0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(445,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(447,9)
    assume true;
    havoc $nw;
    assume $nw != null;
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    o#0 := $nw;
    defass#o#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(448,37)
    assume true;
    assert {:id "id591"} defass#t#0;
    ##t#1 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#1, Tclass._module.Number(), $Heap);
    assert {:id "id592"} defass#o#0;
    ##u#0 := o#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##u#0, Tclass._System.object(), $Heap);
    assume _module.__default.MapOfSeqOf#canCall(Tclass._module.Number(), Tclass._System.object(), $Box(t#0), $Box(o#0));
    assume _module.__default.MapOfSeqOf#canCall(Tclass._module.Number(), Tclass._System.object(), $Box(t#0), $Box(o#0));
    mtt#0 := _module.__default.MapOfSeqOf(Tclass._module.Number(), Tclass._System.object(), $Box(t#0), $Box(o#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(449,38)
    assume true;
    assert {:id "id594"} $Is(mtt#0, TMap(TSeq(Tclass._module.Integer()), Tclass._System.object()));
    assume true;
    mcc#0 := mtt#0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/CovariantCollections.dfy(450,3)
    assume true;
    assume true;
    assume true;
    assume true;
}



// function declaration for _module._default.SetOfSeqOf
function _module.__default.SetOfSeqOf(_module._default.SetOfSeqOf$T: Ty, t#0: Box) : Set
uses {
// consequence axiom for _module.__default.SetOfSeqOf
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.SetOfSeqOf$T: Ty, t#0: Box :: 
    { _module.__default.SetOfSeqOf(_module._default.SetOfSeqOf$T, t#0) } 
    _module.__default.SetOfSeqOf#canCall(_module._default.SetOfSeqOf$T, t#0)
         || (0 < $FunctionContextHeight && $IsBox(t#0, _module._default.SetOfSeqOf$T))
       ==> $Is(_module.__default.SetOfSeqOf(_module._default.SetOfSeqOf$T, t#0), 
        TSet(TSeq(_module._default.SetOfSeqOf$T))));
// alloc consequence axiom for _module.__default.SetOfSeqOf
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.SetOfSeqOf$T: Ty, t#0: Box :: 
    { $IsAlloc(_module.__default.SetOfSeqOf(_module._default.SetOfSeqOf$T, t#0), 
        TSet(TSeq(_module._default.SetOfSeqOf$T)), 
        $Heap) } 
    (_module.__default.SetOfSeqOf#canCall(_module._default.SetOfSeqOf$T, t#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(t#0, _module._default.SetOfSeqOf$T)
             && $IsAllocBox(t#0, _module._default.SetOfSeqOf$T, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.SetOfSeqOf(_module._default.SetOfSeqOf$T, t#0), 
        TSet(TSeq(_module._default.SetOfSeqOf$T)), 
        $Heap));
// definition axiom for _module.__default.SetOfSeqOf (revealed)
axiom {:id "id596"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.SetOfSeqOf$T: Ty, t#0: Box :: 
    { _module.__default.SetOfSeqOf(_module._default.SetOfSeqOf$T, t#0) } 
    _module.__default.SetOfSeqOf#canCall(_module._default.SetOfSeqOf$T, t#0)
         || (0 < $FunctionContextHeight && $IsBox(t#0, _module._default.SetOfSeqOf$T))
       ==> _module.__default.SetOfSeqOf(_module._default.SetOfSeqOf$T, t#0)
         == Set#UnionOne(Set#Empty(): Set, $Box(Seq#Build(Seq#Empty(): Seq, t#0))));
// definition axiom for _module.__default.SetOfSeqOf for all literals (revealed)
axiom {:id "id597"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.SetOfSeqOf$T: Ty, t#0: Box :: 
    {:weight 3} { _module.__default.SetOfSeqOf(_module._default.SetOfSeqOf$T, Lit(t#0)) } 
    _module.__default.SetOfSeqOf#canCall(_module._default.SetOfSeqOf$T, Lit(t#0))
         || (0 < $FunctionContextHeight && $IsBox(t#0, _module._default.SetOfSeqOf$T))
       ==> _module.__default.SetOfSeqOf(_module._default.SetOfSeqOf$T, Lit(t#0))
         == Lit(Set#UnionOne(Set#Empty(): Set, $Box(Lit(Seq#Build(Seq#Empty(): Seq, Lit(t#0)))))));
}

function _module.__default.SetOfSeqOf#canCall(_module._default.SetOfSeqOf$T: Ty, t#0: Box) : bool;

function _module.__default.SetOfSeqOf#requires(Ty, Box) : bool;

// #requires axiom for _module.__default.SetOfSeqOf
axiom (forall _module._default.SetOfSeqOf$T: Ty, t#0: Box :: 
  { _module.__default.SetOfSeqOf#requires(_module._default.SetOfSeqOf$T, t#0) } 
  $IsBox(t#0, _module._default.SetOfSeqOf$T)
     ==> _module.__default.SetOfSeqOf#requires(_module._default.SetOfSeqOf$T, t#0)
       == true);

procedure {:verboseName "SetOfSeqOf (well-formedness)"} CheckWellformed$$_module.__default.SetOfSeqOf(_module._default.SetOfSeqOf$T: Ty, 
    t#0: Box where $IsBox(t#0, _module._default.SetOfSeqOf$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.MapOfSeqOf
function _module.__default.MapOfSeqOf(_module._default.MapOfSeqOf$T: Ty, 
    _module._default.MapOfSeqOf$U: Ty, 
    t#0: Box, 
    u#0: Box)
   : Map
uses {
// consequence axiom for _module.__default.MapOfSeqOf
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.MapOfSeqOf$T: Ty, 
      _module._default.MapOfSeqOf$U: Ty, 
      t#0: Box, 
      u#0: Box :: 
    { _module.__default.MapOfSeqOf(_module._default.MapOfSeqOf$T, _module._default.MapOfSeqOf$U, t#0, u#0) } 
    _module.__default.MapOfSeqOf#canCall(_module._default.MapOfSeqOf$T, _module._default.MapOfSeqOf$U, t#0, u#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(t#0, _module._default.MapOfSeqOf$T)
           && $IsBox(u#0, _module._default.MapOfSeqOf$U))
       ==> $Is(_module.__default.MapOfSeqOf(_module._default.MapOfSeqOf$T, _module._default.MapOfSeqOf$U, t#0, u#0), 
        TMap(TSeq(_module._default.MapOfSeqOf$T), _module._default.MapOfSeqOf$U)));
// alloc consequence axiom for _module.__default.MapOfSeqOf
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.MapOfSeqOf$T: Ty, 
      _module._default.MapOfSeqOf$U: Ty, 
      t#0: Box, 
      u#0: Box :: 
    { $IsAlloc(_module.__default.MapOfSeqOf(_module._default.MapOfSeqOf$T, _module._default.MapOfSeqOf$U, t#0, u#0), 
        TMap(TSeq(_module._default.MapOfSeqOf$T), _module._default.MapOfSeqOf$U), 
        $Heap) } 
    (_module.__default.MapOfSeqOf#canCall(_module._default.MapOfSeqOf$T, _module._default.MapOfSeqOf$U, t#0, u#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(t#0, _module._default.MapOfSeqOf$T)
             && $IsAllocBox(t#0, _module._default.MapOfSeqOf$T, $Heap)
             && 
            $IsBox(u#0, _module._default.MapOfSeqOf$U)
             && $IsAllocBox(u#0, _module._default.MapOfSeqOf$U, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.MapOfSeqOf(_module._default.MapOfSeqOf$T, _module._default.MapOfSeqOf$U, t#0, u#0), 
        TMap(TSeq(_module._default.MapOfSeqOf$T), _module._default.MapOfSeqOf$U), 
        $Heap));
// definition axiom for _module.__default.MapOfSeqOf (revealed)
axiom {:id "id599"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.MapOfSeqOf$T: Ty, 
      _module._default.MapOfSeqOf$U: Ty, 
      t#0: Box, 
      u#0: Box :: 
    { _module.__default.MapOfSeqOf(_module._default.MapOfSeqOf$T, _module._default.MapOfSeqOf$U, t#0, u#0) } 
    _module.__default.MapOfSeqOf#canCall(_module._default.MapOfSeqOf$T, _module._default.MapOfSeqOf$U, t#0, u#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(t#0, _module._default.MapOfSeqOf$T)
           && $IsBox(u#0, _module._default.MapOfSeqOf$U))
       ==> _module.__default.MapOfSeqOf(_module._default.MapOfSeqOf$T, _module._default.MapOfSeqOf$U, t#0, u#0)
         == Map#Build(Map#Empty(): Map, $Box(Seq#Build(Seq#Empty(): Seq, t#0)), u#0));
// definition axiom for _module.__default.MapOfSeqOf for all literals (revealed)
axiom {:id "id600"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.MapOfSeqOf$T: Ty, 
      _module._default.MapOfSeqOf$U: Ty, 
      t#0: Box, 
      u#0: Box :: 
    {:weight 3} { _module.__default.MapOfSeqOf(_module._default.MapOfSeqOf$T, _module._default.MapOfSeqOf$U, Lit(t#0), Lit(u#0)) } 
    _module.__default.MapOfSeqOf#canCall(_module._default.MapOfSeqOf$T, _module._default.MapOfSeqOf$U, Lit(t#0), Lit(u#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(t#0, _module._default.MapOfSeqOf$T)
           && $IsBox(u#0, _module._default.MapOfSeqOf$U))
       ==> _module.__default.MapOfSeqOf(_module._default.MapOfSeqOf$T, _module._default.MapOfSeqOf$U, Lit(t#0), Lit(u#0))
         == Lit(Map#Build(Map#Empty(): Map, $Box(Lit(Seq#Build(Seq#Empty(): Seq, Lit(t#0)))), Lit(u#0))));
}

function _module.__default.MapOfSeqOf#canCall(_module._default.MapOfSeqOf$T: Ty, 
    _module._default.MapOfSeqOf$U: Ty, 
    t#0: Box, 
    u#0: Box)
   : bool;

function _module.__default.MapOfSeqOf#requires(Ty, Ty, Box, Box) : bool;

// #requires axiom for _module.__default.MapOfSeqOf
axiom (forall _module._default.MapOfSeqOf$T: Ty, 
    _module._default.MapOfSeqOf$U: Ty, 
    t#0: Box, 
    u#0: Box :: 
  { _module.__default.MapOfSeqOf#requires(_module._default.MapOfSeqOf$T, _module._default.MapOfSeqOf$U, t#0, u#0) } 
  $IsBox(t#0, _module._default.MapOfSeqOf$T)
       && $IsBox(u#0, _module._default.MapOfSeqOf$U)
     ==> _module.__default.MapOfSeqOf#requires(_module._default.MapOfSeqOf$T, _module._default.MapOfSeqOf$U, t#0, u#0)
       == true);

procedure {:verboseName "MapOfSeqOf (well-formedness)"} CheckWellformed$$_module.__default.MapOfSeqOf(_module._default.MapOfSeqOf$T: Ty, 
    _module._default.MapOfSeqOf$U: Ty, 
    t#0: Box where $IsBox(t#0, _module._default.MapOfSeqOf$T), 
    u#0: Box where $IsBox(u#0, _module._default.MapOfSeqOf$U));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



const unique class._module.Number?: ClassName;

// $Is axiom for trait Number
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Number?()) } 
  $Is($o, Tclass._module.Number?())
     <==> $o == null || implements$_module.Number(dtype($o)));

// $IsAlloc axiom for trait Number
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Number?(), $h) } 
  $IsAlloc($o, Tclass._module.Number?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.Number(ty: Ty) : bool;

procedure {:verboseName "Number.Print (well-formedness)"} CheckWellFormed$$_module.Number.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Number())
         && $IsAlloc(this, Tclass._module.Number(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Number.Print (call)"} Call$$_module.Number.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Number())
         && $IsAlloc(this, Tclass._module.Number(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.Number
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Number()) } { $Is(c#0, Tclass._module.Number?()) } 
  $Is(c#0, Tclass._module.Number())
     <==> $Is(c#0, Tclass._module.Number?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Number
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Number(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Number?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Number(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Number?(), $h));

const unique class._module.Integer?: ClassName;

// $Is axiom for class Integer
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Integer?()) } 
  $Is($o, Tclass._module.Integer?())
     <==> $o == null || dtype($o) == Tclass._module.Integer?());

// $IsAlloc axiom for class Integer
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Integer?(), $h) } 
  $IsAlloc($o, Tclass._module.Integer?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

procedure {:verboseName "Integer._ctor (well-formedness)"} CheckWellFormed$$_module.Integer.__ctor(value#0: int) returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Integer._ctor (call)"} Call$$_module.Integer.__ctor(value#0: int)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Integer())
         && $IsAlloc(this, Tclass._module.Integer(), $Heap));
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



procedure {:verboseName "Integer._ctor (correctness)"} Impl$$_module.Integer.__ctor(value#0: int) returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Integer.Print (well-formedness)"} CheckWellFormed$$_module.Integer.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Integer())
         && $IsAlloc(this, Tclass._module.Integer(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Integer.Print (override check)"} OverrideCheck$$_module.Integer.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Integer())
         && $IsAlloc(this, Tclass._module.Integer(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Integer.Print (override check)"} OverrideCheck$$_module.Integer.Print(this: ref)
{
    assert {:id "id603"} true;
    assert {:id "id604"} (forall $o: ref, $f: Field :: true);
    assert {:id "id605"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "Integer.Print (call)"} Call$$_module.Integer.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Integer())
         && $IsAlloc(this, Tclass._module.Integer(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Integer.Print (correctness)"} Impl$$_module.Integer.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Integer())
         && $IsAlloc(this, Tclass._module.Integer(), $Heap))
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



// $Is axiom for non-null type _module.Integer
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Integer()) } { $Is(c#0, Tclass._module.Integer?()) } 
  $Is(c#0, Tclass._module.Integer())
     <==> $Is(c#0, Tclass._module.Integer?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Integer
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Integer(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Integer?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Integer(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Integer?(), $h));

const unique class._module.Class?: ClassName;

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

procedure {:verboseName "Class._ctor (well-formedness)"} CheckWellFormed$$_module.Class.__ctor(s#0: Set
       where $Is(s#0, TSet(Tclass._module.Integer()))
         && $IsAlloc(s#0, TSet(Tclass._module.Integer()), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Class._ctor (call)"} Call$$_module.Class.__ctor(s#0: Set
       where $Is(s#0, TSet(Tclass._module.Integer()))
         && $IsAlloc(s#0, TSet(Tclass._module.Integer()), $Heap))
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



procedure {:verboseName "Class._ctor (correctness)"} Impl$$_module.Class.__ctor(s#0: Set
       where $Is(s#0, TSet(Tclass._module.Integer()))
         && $IsAlloc(s#0, TSet(Tclass._module.Integer()), $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const _module.Class.ns: Field
uses {
axiom FDim(_module.Class.ns) == 0
   && FieldOfDecl(class._module.Class?, field$ns) == _module.Class.ns
   && !$IsGhostField(_module.Class.ns);
}

// Class.ns: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Class.ns)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Class?()
     ==> $Is($Unbox(read($h, $o, _module.Class.ns)): Set, TSet(Tclass._module.Number())));

// Class.ns: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Class.ns)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Class?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Class.ns)): Set, TSet(Tclass._module.Number()), $h));

const _module.Class.js: Field
uses {
axiom FDim(_module.Class.js) == 0
   && FieldOfDecl(class._module.Class?, field$js) == _module.Class.js
   && !$IsGhostField(_module.Class.js);
}

// Class.js: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Class.js)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Class?()
     ==> $Is($Unbox(read($h, $o, _module.Class.js)): Set, TSet(Tclass._module.Integer())));

// Class.js: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Class.js)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Class?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Class.js)): Set, TSet(Tclass._module.Integer()), $h));

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

const unique class.CovarianceRegressions.__default: ClassName;

procedure {:verboseName "CovarianceRegressions.Test (well-formedness)"} CheckWellFormed$$CovarianceRegressions.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CovarianceRegressions.Test (call)"} Call$$CovarianceRegressions.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.CovarianceRegressions.Trait?: ClassName;

function Tclass.CovarianceRegressions.Trait?() : Ty
uses {
// Tclass.CovarianceRegressions.Trait? Tag
axiom Tag(Tclass.CovarianceRegressions.Trait?())
     == Tagclass.CovarianceRegressions.Trait?
   && TagFamily(Tclass.CovarianceRegressions.Trait?()) == tytagFamily$Trait;
}

const unique Tagclass.CovarianceRegressions.Trait?: TyTag;

// Box/unbox axiom for Tclass.CovarianceRegressions.Trait?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.CovarianceRegressions.Trait?()) } 
  $IsBox(bx, Tclass.CovarianceRegressions.Trait?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.CovarianceRegressions.Trait?()));

// $Is axiom for trait Trait
axiom (forall $o: ref :: 
  { $Is($o, Tclass.CovarianceRegressions.Trait?()) } 
  $Is($o, Tclass.CovarianceRegressions.Trait?())
     <==> $o == null || implements$CovarianceRegressions.Trait(dtype($o)));

// $IsAlloc axiom for trait Trait
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.CovarianceRegressions.Trait?(), $h) } 
  $IsAlloc($o, Tclass.CovarianceRegressions.Trait?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$CovarianceRegressions.Trait(ty: Ty) : bool;

function Tclass.CovarianceRegressions.Trait() : Ty
uses {
// Tclass.CovarianceRegressions.Trait Tag
axiom Tag(Tclass.CovarianceRegressions.Trait())
     == Tagclass.CovarianceRegressions.Trait
   && TagFamily(Tclass.CovarianceRegressions.Trait()) == tytagFamily$Trait;
}

const unique Tagclass.CovarianceRegressions.Trait: TyTag;

// Box/unbox axiom for Tclass.CovarianceRegressions.Trait
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.CovarianceRegressions.Trait()) } 
  $IsBox(bx, Tclass.CovarianceRegressions.Trait())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.CovarianceRegressions.Trait()));

// $Is axiom for non-null type CovarianceRegressions.Trait
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.CovarianceRegressions.Trait()) } 
    { $Is(c#0, Tclass.CovarianceRegressions.Trait?()) } 
  $Is(c#0, Tclass.CovarianceRegressions.Trait())
     <==> $Is(c#0, Tclass.CovarianceRegressions.Trait?()) && c#0 != null);

// $IsAlloc axiom for non-null type CovarianceRegressions.Trait
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.CovarianceRegressions.Trait(), $h) } 
    { $IsAlloc(c#0, Tclass.CovarianceRegressions.Trait?(), $h) } 
  $IsAlloc(c#0, Tclass.CovarianceRegressions.Trait(), $h)
     <==> $IsAlloc(c#0, Tclass.CovarianceRegressions.Trait?(), $h));

const unique class.CovarianceRegressions.Class?: ClassName;

function Tclass.CovarianceRegressions.Class?() : Ty
uses {
// Tclass.CovarianceRegressions.Class? Tag
axiom Tag(Tclass.CovarianceRegressions.Class?())
     == Tagclass.CovarianceRegressions.Class?
   && TagFamily(Tclass.CovarianceRegressions.Class?()) == tytagFamily$Class;
axiom implements$CovarianceRegressions.Trait(Tclass.CovarianceRegressions.Class?());
}

const unique Tagclass.CovarianceRegressions.Class?: TyTag;

// Box/unbox axiom for Tclass.CovarianceRegressions.Class?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.CovarianceRegressions.Class?()) } 
  $IsBox(bx, Tclass.CovarianceRegressions.Class?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.CovarianceRegressions.Class?()));

// $Is axiom for class Class
axiom (forall $o: ref :: 
  { $Is($o, Tclass.CovarianceRegressions.Class?()) } 
  $Is($o, Tclass.CovarianceRegressions.Class?())
     <==> $o == null || dtype($o) == Tclass.CovarianceRegressions.Class?());

// $IsAlloc axiom for class Class
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.CovarianceRegressions.Class?(), $h) } 
  $IsAlloc($o, Tclass.CovarianceRegressions.Class?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.CovarianceRegressions.Class() : Ty
uses {
// Tclass.CovarianceRegressions.Class Tag
axiom Tag(Tclass.CovarianceRegressions.Class())
     == Tagclass.CovarianceRegressions.Class
   && TagFamily(Tclass.CovarianceRegressions.Class()) == tytagFamily$Class;
}

const unique Tagclass.CovarianceRegressions.Class: TyTag;

// Box/unbox axiom for Tclass.CovarianceRegressions.Class
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.CovarianceRegressions.Class()) } 
  $IsBox(bx, Tclass.CovarianceRegressions.Class())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.CovarianceRegressions.Class()));

// $Is axiom for non-null type CovarianceRegressions.Class
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.CovarianceRegressions.Class()) } 
    { $Is(c#0, Tclass.CovarianceRegressions.Class?()) } 
  $Is(c#0, Tclass.CovarianceRegressions.Class())
     <==> $Is(c#0, Tclass.CovarianceRegressions.Class?()) && c#0 != null);

// $IsAlloc axiom for non-null type CovarianceRegressions.Class
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.CovarianceRegressions.Class(), $h) } 
    { $IsAlloc(c#0, Tclass.CovarianceRegressions.Class?(), $h) } 
  $IsAlloc(c#0, Tclass.CovarianceRegressions.Class(), $h)
     <==> $IsAlloc(c#0, Tclass.CovarianceRegressions.Class?(), $h));

// type axiom for trait parent: Trait? extends object?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.CovarianceRegressions.Trait?()) } 
  $Is($o, Tclass.CovarianceRegressions.Trait?())
     ==> $Is($o, Tclass._System.object?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.CovarianceRegressions.Trait?()) } 
  $IsBox(bx, Tclass.CovarianceRegressions.Trait?())
     ==> $IsBox(bx, Tclass._System.object?()));

// allocation axiom for trait parent: Trait? extends object?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.CovarianceRegressions.Trait?(), $heap) } 
  $IsAlloc($o, Tclass.CovarianceRegressions.Trait?(), $heap)
     ==> $IsAlloc($o, Tclass._System.object?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.CovarianceRegressions.Trait?(), $h) } 
  $IsAllocBox(bx, Tclass.CovarianceRegressions.Trait?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._System.object?(), $h));

// type axiom for trait parent: Class? extends Trait?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.CovarianceRegressions.Class?()) } 
  $Is($o, Tclass.CovarianceRegressions.Class?())
     ==> $Is($o, Tclass.CovarianceRegressions.Trait?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.CovarianceRegressions.Class?()) } 
  $IsBox(bx, Tclass.CovarianceRegressions.Class?())
     ==> $IsBox(bx, Tclass.CovarianceRegressions.Trait?()));

// allocation axiom for trait parent: Class? extends Trait?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.CovarianceRegressions.Class?(), $heap) } 
  $IsAlloc($o, Tclass.CovarianceRegressions.Class?(), $heap)
     ==> $IsAlloc($o, Tclass.CovarianceRegressions.Trait?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.CovarianceRegressions.Class?(), $h) } 
  $IsAllocBox(bx, Tclass.CovarianceRegressions.Class?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.CovarianceRegressions.Trait?(), $h));

// type axiom for trait parent: Number? extends object?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Number?()) } 
  $Is($o, Tclass._module.Number?()) ==> $Is($o, Tclass._System.object?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Number?()) } 
  $IsBox(bx, Tclass._module.Number?()) ==> $IsBox(bx, Tclass._System.object?()));

// allocation axiom for trait parent: Number? extends object?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.Number?(), $heap) } 
  $IsAlloc($o, Tclass._module.Number?(), $heap)
     ==> $IsAlloc($o, Tclass._System.object?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.Number?(), $h) } 
  $IsAllocBox(bx, Tclass._module.Number?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._System.object?(), $h));

// type axiom for trait parent: Integer? extends Number?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Integer?()) } 
  $Is($o, Tclass._module.Integer?()) ==> $Is($o, Tclass._module.Number?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Integer?()) } 
  $IsBox(bx, Tclass._module.Integer?()) ==> $IsBox(bx, Tclass._module.Number?()));

// allocation axiom for trait parent: Integer? extends Number?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.Integer?(), $heap) } 
  $IsAlloc($o, Tclass._module.Integer?(), $heap)
     ==> $IsAlloc($o, Tclass._module.Number?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.Integer?(), $h) } 
  $IsAllocBox(bx, Tclass._module.Integer?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.Number?(), $h));

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

const unique tytagFamily$array2: TyTagFamily;

const unique tytagFamily$Number: TyTagFamily;

const unique tytagFamily$Integer: TyTagFamily;

const unique tytagFamily$Class: TyTagFamily;

const unique tytagFamily$Trait: TyTagFamily;

const unique field$ns: NameFamily;

const unique field$js: NameFamily;
