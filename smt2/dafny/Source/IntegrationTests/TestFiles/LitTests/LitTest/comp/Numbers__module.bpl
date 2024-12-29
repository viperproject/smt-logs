// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy

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

// Box/unbox axiom for bv68
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(68)) } 
  $IsBox(bx, TBitvector(68))
     ==> $Box($Unbox(bx): bv68) == bx && $Is($Unbox(bx): bv68, TBitvector(68)));

axiom (forall v: bv68 :: { $Is(v, TBitvector(68)) } $Is(v, TBitvector(68)));

axiom (forall v: bv68, heap: Heap :: 
  { $IsAlloc(v, TBitvector(68), heap) } 
  $IsAlloc(v, TBitvector(68), heap));

function {:bvbuiltin "bvand"} and_bv68(bv68, bv68) : bv68;

function {:bvbuiltin "bvor"} or_bv68(bv68, bv68) : bv68;

function {:bvbuiltin "bvxor"} xor_bv68(bv68, bv68) : bv68;

function {:bvbuiltin "bvnot"} not_bv68(bv68) : bv68;

function {:bvbuiltin "bvadd"} add_bv68(bv68, bv68) : bv68;

function {:bvbuiltin "bvsub"} sub_bv68(bv68, bv68) : bv68;

function {:bvbuiltin "bvmul"} mul_bv68(bv68, bv68) : bv68;

function {:bvbuiltin "bvudiv"} div_bv68(bv68, bv68) : bv68;

function {:bvbuiltin "bvurem"} mod_bv68(bv68, bv68) : bv68;

function {:bvbuiltin "bvult"} lt_bv68(bv68, bv68) : bool;

function {:bvbuiltin "bvule"} le_bv68(bv68, bv68) : bool;

function {:bvbuiltin "bvuge"} ge_bv68(bv68, bv68) : bool;

function {:bvbuiltin "bvugt"} gt_bv68(bv68, bv68) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv68(bv68, bv68) : bv68;

function {:bvbuiltin "bvlshr"} RightShift_bv68(bv68, bv68) : bv68;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv68(bv68, bv68) : bv68;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv68(bv68, bv68) : bv68;

function {:bvbuiltin "(_ int2bv 68)"} nat_to_bv68(int) : bv68;

function {:bvbuiltin "bv2int"} smt_nat_from_bv68(bv68) : int;

function nat_from_bv68(bv68) : int;

axiom (forall b: bv68 :: 
  { nat_from_bv68(b) } 
  0 <= nat_from_bv68(b)
     && nat_from_bv68(b) < 295147905179352825856
     && nat_from_bv68(b) == smt_nat_from_bv68(b));

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

// Box/unbox axiom for bv129
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(129)) } 
  $IsBox(bx, TBitvector(129))
     ==> $Box($Unbox(bx): bv129) == bx && $Is($Unbox(bx): bv129, TBitvector(129)));

axiom (forall v: bv129 :: { $Is(v, TBitvector(129)) } $Is(v, TBitvector(129)));

axiom (forall v: bv129, heap: Heap :: 
  { $IsAlloc(v, TBitvector(129), heap) } 
  $IsAlloc(v, TBitvector(129), heap));

function {:bvbuiltin "bvand"} and_bv129(bv129, bv129) : bv129;

function {:bvbuiltin "bvor"} or_bv129(bv129, bv129) : bv129;

function {:bvbuiltin "bvxor"} xor_bv129(bv129, bv129) : bv129;

function {:bvbuiltin "bvnot"} not_bv129(bv129) : bv129;

function {:bvbuiltin "bvadd"} add_bv129(bv129, bv129) : bv129;

function {:bvbuiltin "bvsub"} sub_bv129(bv129, bv129) : bv129;

function {:bvbuiltin "bvmul"} mul_bv129(bv129, bv129) : bv129;

function {:bvbuiltin "bvudiv"} div_bv129(bv129, bv129) : bv129;

function {:bvbuiltin "bvurem"} mod_bv129(bv129, bv129) : bv129;

function {:bvbuiltin "bvult"} lt_bv129(bv129, bv129) : bool;

function {:bvbuiltin "bvule"} le_bv129(bv129, bv129) : bool;

function {:bvbuiltin "bvuge"} ge_bv129(bv129, bv129) : bool;

function {:bvbuiltin "bvugt"} gt_bv129(bv129, bv129) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv129(bv129, bv129) : bv129;

function {:bvbuiltin "bvlshr"} RightShift_bv129(bv129, bv129) : bv129;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv129(bv129, bv129) : bv129;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv129(bv129, bv129) : bv129;

function {:bvbuiltin "(_ int2bv 129)"} nat_to_bv129(int) : bv129;

function {:bvbuiltin "bv2int"} smt_nat_from_bv129(bv129) : int;

function nat_from_bv129(bv129) : int;

axiom (forall b: bv129 :: 
  { nat_from_bv129(b) } 
  0 <= nat_from_bv129(b)
     && nat_from_bv129(b) < 680564733841876926926749214863536422912
     && nat_from_bv129(b) == smt_nat_from_bv129(b));

// Box/unbox axiom for bv4
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(4)) } 
  $IsBox(bx, TBitvector(4))
     ==> $Box($Unbox(bx): bv4) == bx && $Is($Unbox(bx): bv4, TBitvector(4)));

axiom (forall v: bv4 :: { $Is(v, TBitvector(4)) } $Is(v, TBitvector(4)));

axiom (forall v: bv4, heap: Heap :: 
  { $IsAlloc(v, TBitvector(4), heap) } 
  $IsAlloc(v, TBitvector(4), heap));

function {:bvbuiltin "bvand"} and_bv4(bv4, bv4) : bv4;

function {:bvbuiltin "bvor"} or_bv4(bv4, bv4) : bv4;

function {:bvbuiltin "bvxor"} xor_bv4(bv4, bv4) : bv4;

function {:bvbuiltin "bvnot"} not_bv4(bv4) : bv4;

function {:bvbuiltin "bvadd"} add_bv4(bv4, bv4) : bv4;

function {:bvbuiltin "bvsub"} sub_bv4(bv4, bv4) : bv4;

function {:bvbuiltin "bvmul"} mul_bv4(bv4, bv4) : bv4;

function {:bvbuiltin "bvudiv"} div_bv4(bv4, bv4) : bv4;

function {:bvbuiltin "bvurem"} mod_bv4(bv4, bv4) : bv4;

function {:bvbuiltin "bvult"} lt_bv4(bv4, bv4) : bool;

function {:bvbuiltin "bvule"} le_bv4(bv4, bv4) : bool;

function {:bvbuiltin "bvuge"} ge_bv4(bv4, bv4) : bool;

function {:bvbuiltin "bvugt"} gt_bv4(bv4, bv4) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv4(bv4, bv4) : bv4;

function {:bvbuiltin "bvlshr"} RightShift_bv4(bv4, bv4) : bv4;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv4(bv4, bv4) : bv4;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv4(bv4, bv4) : bv4;

function {:bvbuiltin "(_ int2bv 4)"} nat_to_bv4(int) : bv4;

function {:bvbuiltin "bv2int"} smt_nat_from_bv4(bv4) : int;

function nat_from_bv4(bv4) : int;

axiom (forall b: bv4 :: 
  { nat_from_bv4(b) } 
  0 <= nat_from_bv4(b)
     && nat_from_bv4(b) < 16
     && nat_from_bv4(b) == smt_nat_from_bv4(b));

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

// Box/unbox axiom for bv2
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(2)) } 
  $IsBox(bx, TBitvector(2))
     ==> $Box($Unbox(bx): bv2) == bx && $Is($Unbox(bx): bv2, TBitvector(2)));

axiom (forall v: bv2 :: { $Is(v, TBitvector(2)) } $Is(v, TBitvector(2)));

axiom (forall v: bv2, heap: Heap :: 
  { $IsAlloc(v, TBitvector(2), heap) } 
  $IsAlloc(v, TBitvector(2), heap));

function {:bvbuiltin "bvand"} and_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvor"} or_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvxor"} xor_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvnot"} not_bv2(bv2) : bv2;

function {:bvbuiltin "bvadd"} add_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvsub"} sub_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvmul"} mul_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvudiv"} div_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvurem"} mod_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvult"} lt_bv2(bv2, bv2) : bool;

function {:bvbuiltin "bvule"} le_bv2(bv2, bv2) : bool;

function {:bvbuiltin "bvuge"} ge_bv2(bv2, bv2) : bool;

function {:bvbuiltin "bvugt"} gt_bv2(bv2, bv2) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvlshr"} RightShift_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "(_ int2bv 2)"} nat_to_bv2(int) : bv2;

function {:bvbuiltin "bv2int"} smt_nat_from_bv2(bv2) : int;

function nat_from_bv2(bv2) : int;

axiom (forall b: bv2 :: 
  { nat_from_bv2(b) } 
  0 <= nat_from_bv2(b)
     && nat_from_bv2(b) < 4
     && nat_from_bv2(b) == smt_nat_from_bv2(b));

// Box/unbox axiom for bv15
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(15)) } 
  $IsBox(bx, TBitvector(15))
     ==> $Box($Unbox(bx): bv15) == bx && $Is($Unbox(bx): bv15, TBitvector(15)));

axiom (forall v: bv15 :: { $Is(v, TBitvector(15)) } $Is(v, TBitvector(15)));

axiom (forall v: bv15, heap: Heap :: 
  { $IsAlloc(v, TBitvector(15), heap) } 
  $IsAlloc(v, TBitvector(15), heap));

function {:bvbuiltin "bvand"} and_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvor"} or_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvxor"} xor_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvnot"} not_bv15(bv15) : bv15;

function {:bvbuiltin "bvadd"} add_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvsub"} sub_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvmul"} mul_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvudiv"} div_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvurem"} mod_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvult"} lt_bv15(bv15, bv15) : bool;

function {:bvbuiltin "bvule"} le_bv15(bv15, bv15) : bool;

function {:bvbuiltin "bvuge"} ge_bv15(bv15, bv15) : bool;

function {:bvbuiltin "bvugt"} gt_bv15(bv15, bv15) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvlshr"} RightShift_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "(_ int2bv 15)"} nat_to_bv15(int) : bv15;

function {:bvbuiltin "bv2int"} smt_nat_from_bv15(bv15) : int;

function nat_from_bv15(bv15) : int;

axiom (forall b: bv15 :: 
  { nat_from_bv15(b) } 
  0 <= nat_from_bv15(b)
     && nat_from_bv15(b) < 32768
     && nat_from_bv15(b) == smt_nat_from_bv15(b));

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

const unique class._module.__default: ClassName;

procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 4 == $FunctionContextHeight;
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
  free requires 4 == $FunctionContextHeight;
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
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(5,11)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id228"} Call$$_module.__default.Literals();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(6,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id229"} Call$$_module.__default.Arithmetic();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(7,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id230"} Call$$_module.__default.PrintReals();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(8,16)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id231"} Call$$_module.__default.SimpleReality();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(9,17)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id232"} Call$$_module.__default.BitVectorTests();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(10,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id233"} Call$$_module.__default.MoreBvTests();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(11,17)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id234"} Call$$_module.__default.NativeTypeTest();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(12,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id235"} Call$$_module.__default.NewTypeTest();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(13,15)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id236"} Call$$_module.__default.OrdinalTests();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(14,22)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id237"} Call$$_module.__default.ZeroComparisonTests();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(15,18)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id238"} Call$$_module.__default.TestConversions();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(16,24)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id239"} Call$$_module.__default.ComparisonRegressions();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(17,18)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id240"} Call$$_module.__default.CastRegressions();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(18,36)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id241"} Call$$EuclideanDivisionRegressions.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(19,17)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id242"} Call$$TypeTests.__default.Test();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Print (well-formedness)"} CheckWellFormed$$_module.__default.Print(description#0: Seq
       where $Is(description#0, TSeq(TChar)) && $IsAlloc(description#0, TSeq(TChar), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Print (call)"} Call$$_module.__default.Print(description#0: Seq
       where $Is(description#0, TSeq(TChar)) && $IsAlloc(description#0, TSeq(TChar), $Heap), 
    x#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Print (correctness)"} Impl$$_module.__default.Print(description#0: Seq
       where $Is(description#0, TSeq(TChar)) && $IsAlloc(description#0, TSeq(TChar), $Heap), 
    x#0: int)
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



procedure {:verboseName "PrintReal (well-formedness)"} CheckWellFormed$$_module.__default.PrintReal(description#0: Seq
       where $Is(description#0, TSeq(TChar)) && $IsAlloc(description#0, TSeq(TChar), $Heap), 
    x#0: real);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintReal (call)"} Call$$_module.__default.PrintReal(description#0: Seq
       where $Is(description#0, TSeq(TChar)) && $IsAlloc(description#0, TSeq(TChar), $Heap), 
    x#0: real);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintReal (correctness)"} Impl$$_module.__default.PrintReal(description#0: Seq
       where $Is(description#0, TSeq(TChar)) && $IsAlloc(description#0, TSeq(TChar), $Heap), 
    x#0: real)
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



procedure {:verboseName "PrintSeq (well-formedness)"} CheckWellFormed$$_module.__default.PrintSeq(_module._default.PrintSeq$_T0: Ty, 
    s#0: Seq
       where $Is(s#0, TSeq(_module._default.PrintSeq$_T0))
         && $IsAlloc(s#0, TSeq(_module._default.PrintSeq$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintSeq (call)"} Call$$_module.__default.PrintSeq(_module._default.PrintSeq$_T0: Ty, 
    s#0: Seq
       where $Is(s#0, TSeq(_module._default.PrintSeq$_T0))
         && $IsAlloc(s#0, TSeq(_module._default.PrintSeq$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintSeq (correctness)"} Impl$$_module.__default.PrintSeq(_module._default.PrintSeq$_T0: Ty, 
    s#0: Seq
       where $Is(s#0, TSeq(_module._default.PrintSeq$_T0))
         && $IsAlloc(s#0, TSeq(_module._default.PrintSeq$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintSeq (correctness)"} Impl$$_module.__default.PrintSeq(_module._default.PrintSeq$_T0: Ty, s#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var sep#0: Seq where $Is(sep#0, TSeq(TChar)) && $IsAlloc(sep#0, TSeq(TChar), $Heap);
  var i#0: int;
  var $rhs#0: Seq;
  var $rhs#1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: PrintSeq, Impl$$_module.__default.PrintSeq
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(39,14)
    assume true;
    assume true;
    assume true;
    $rhs#0 := Lit(Seq#Empty(): Seq);
    assume true;
    $rhs#1 := LitInt(0);
    sep#0 := $rhs#0;
    i#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(40,3)
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
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(41,5)
        assume true;
        assert {:id "id247"} {:subsumption 0} 0 <= i#0 && i#0 < Seq#Length(s#0);
        assume true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(42,9)
        assume true;
        assume true;
        sep#0 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(43,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(40,3)
        assert {:id "id250"} 0 <= $decr$loop#00 || Seq#Length(s#0) - i#0 == $decr$loop#00;
        assert {:id "id251"} Seq#Length(s#0) - i#0 < $decr$loop#00;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(45,3)
    assume true;
}



procedure {:verboseName "Literals (well-formedness)"} CheckWellFormed$$_module.__default.Literals();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Literals (call)"} Call$$_module.__default.Literals();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Literals (correctness)"} Impl$$_module.__default.Literals() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Literals (correctness)"} Impl$$_module.__default.Literals() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var description##0: Seq;
  var x##0: int;
  var description##1: Seq;
  var x##1: int;
  var description##2: Seq;
  var x##2: int;
  var description##3: Seq;
  var x##3: int;
  var description##4: Seq;
  var x##4: int;
  var description##5: Seq;
  var x##5: int;
  var description##6: Seq;
  var x##6: int;
  var description##7: Seq;
  var x##7: int;
  var description##8: Seq;
  var x##8: int;
  var description##9: Seq;
  var x##9: int;
  var description##10: Seq;
  var x##10: int;
  var description##11: Seq;
  var x##11: int;
  var description##12: Seq;
  var x##12: int;
  var description##13: Seq;
  var x##13: int;
  var description##14: Seq;
  var x##14: int;
  var description##15: Seq;
  var x##15: int;
  var description##16: Seq;
  var x##16: int;
  var description##17: Seq;
  var x##17: int;
  var description##18: Seq;
  var x##18: int;
  var description##19: Seq;
  var x##19: int;
  var description##20: Seq;
  var x##20: real;
  var description##21: Seq;
  var x##21: real;
  var description##22: Seq;
  var x##22: real;
  var description##23: Seq;
  var x##23: real;
  var description##24: Seq;
  var x##24: real;
  var description##25: Seq;
  var x##25: real;
  var description##26: Seq;
  var x##26: real;
  var description##27: Seq;
  var x##27: real;
  var description##28: Seq;
  var x##28: real;
  var description##29: Seq;
  var x##29: real;
  var description##30: Seq;
  var x##30: real;
  var description##31: Seq;
  var x##31: real;

    // AddMethodImpl: Literals, Impl$$_module.__default.Literals
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(49,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##0 := Lit(Seq#Empty(): Seq);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(0);
    call {:id "id252"} Call$$_module.__default.Print(description##0, x##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(50,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##1 := Lit(Seq#Empty(): Seq);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitInt(0);
    call {:id "id253"} Call$$_module.__default.Print(description##1, x##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(51,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##2 := Lit(Seq#Empty(): Seq);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##2 := LitInt(3);
    call {:id "id254"} Call$$_module.__default.Print(description##2, x##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(52,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##3 := Lit(Seq#Empty(): Seq);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##3 := LitInt(-5);
    call {:id "id255"} Call$$_module.__default.Print(description##3, x##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(54,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##4 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(67))), $Box(char#FromInt(35))), 
                                $Box(char#FromInt(32))), 
                              $Box(char#FromInt(105))), 
                            $Box(char#FromInt(110))), 
                          $Box(char#FromInt(116))), 
                        $Box(char#FromInt(46))), 
                      $Box(char#FromInt(77))), 
                    $Box(char#FromInt(97))), 
                  $Box(char#FromInt(120))), 
                $Box(char#FromInt(86))), 
              $Box(char#FromInt(97))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(117))), 
        $Box(char#FromInt(101))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##4 := LitInt(2147483647);
    call {:id "id256"} Call$$_module.__default.Print(description##4, x##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(55,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##5 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(50))), $Box(char#FromInt(94))), 
          $Box(char#FromInt(51))), 
        $Box(char#FromInt(49))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##5 := LitInt(2147483648);
    call {:id "id257"} Call$$_module.__default.Print(description##5, x##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(56,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##6 := Lit(Seq#Empty(): Seq);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##6 := LitInt(2147483649);
    call {:id "id258"} Call$$_module.__default.Print(description##6, x##6);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(57,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##7 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(67))), $Box(char#FromInt(35))), 
                                  $Box(char#FromInt(32))), 
                                $Box(char#FromInt(117))), 
                              $Box(char#FromInt(105))), 
                            $Box(char#FromInt(110))), 
                          $Box(char#FromInt(116))), 
                        $Box(char#FromInt(46))), 
                      $Box(char#FromInt(77))), 
                    $Box(char#FromInt(97))), 
                  $Box(char#FromInt(120))), 
                $Box(char#FromInt(86))), 
              $Box(char#FromInt(97))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(117))), 
        $Box(char#FromInt(101))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##7 := LitInt(4294967295);
    call {:id "id259"} Call$$_module.__default.Print(description##7, x##7);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(58,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##8 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(50))), $Box(char#FromInt(94))), 
          $Box(char#FromInt(51))), 
        $Box(char#FromInt(50))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##8 := LitInt(4294967296);
    call {:id "id260"} Call$$_module.__default.Print(description##8, x##8);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(60,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##9 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(74))), $Box(char#FromInt(97))), 
                                                                      $Box(char#FromInt(118))), 
                                                                    $Box(char#FromInt(97))), 
                                                                  $Box(char#FromInt(83))), 
                                                                $Box(char#FromInt(99))), 
                                                              $Box(char#FromInt(114))), 
                                                            $Box(char#FromInt(105))), 
                                                          $Box(char#FromInt(112))), 
                                                        $Box(char#FromInt(116))), 
                                                      $Box(char#FromInt(32))), 
                                                    $Box(char#FromInt(78))), 
                                                  $Box(char#FromInt(117))), 
                                                $Box(char#FromInt(109))), 
                                              $Box(char#FromInt(98))), 
                                            $Box(char#FromInt(101))), 
                                          $Box(char#FromInt(114))), 
                                        $Box(char#FromInt(46))), 
                                      $Box(char#FromInt(77))), 
                                    $Box(char#FromInt(65))), 
                                  $Box(char#FromInt(88))), 
                                $Box(char#FromInt(95))), 
                              $Box(char#FromInt(83))), 
                            $Box(char#FromInt(65))), 
                          $Box(char#FromInt(70))), 
                        $Box(char#FromInt(69))), 
                      $Box(char#FromInt(95))), 
                    $Box(char#FromInt(73))), 
                  $Box(char#FromInt(78))), 
                $Box(char#FromInt(84))), 
              $Box(char#FromInt(69))), 
            $Box(char#FromInt(71))), 
          $Box(char#FromInt(69))), 
        $Box(char#FromInt(82))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##9 := LitInt(9007199254740991);
    call {:id "id261"} Call$$_module.__default.Print(description##9, x##9);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(61,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##10 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(50))), $Box(char#FromInt(94))), 
          $Box(char#FromInt(53))), 
        $Box(char#FromInt(51))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##10 := LitInt(9007199254740992);
    call {:id "id262"} Call$$_module.__default.Print(description##10, x##10);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(62,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##11 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(74))), $Box(char#FromInt(97))), 
                                                                      $Box(char#FromInt(118))), 
                                                                    $Box(char#FromInt(97))), 
                                                                  $Box(char#FromInt(83))), 
                                                                $Box(char#FromInt(99))), 
                                                              $Box(char#FromInt(114))), 
                                                            $Box(char#FromInt(105))), 
                                                          $Box(char#FromInt(112))), 
                                                        $Box(char#FromInt(116))), 
                                                      $Box(char#FromInt(32))), 
                                                    $Box(char#FromInt(78))), 
                                                  $Box(char#FromInt(117))), 
                                                $Box(char#FromInt(109))), 
                                              $Box(char#FromInt(98))), 
                                            $Box(char#FromInt(101))), 
                                          $Box(char#FromInt(114))), 
                                        $Box(char#FromInt(46))), 
                                      $Box(char#FromInt(77))), 
                                    $Box(char#FromInt(73))), 
                                  $Box(char#FromInt(78))), 
                                $Box(char#FromInt(95))), 
                              $Box(char#FromInt(83))), 
                            $Box(char#FromInt(65))), 
                          $Box(char#FromInt(70))), 
                        $Box(char#FromInt(69))), 
                      $Box(char#FromInt(95))), 
                    $Box(char#FromInt(73))), 
                  $Box(char#FromInt(78))), 
                $Box(char#FromInt(84))), 
              $Box(char#FromInt(69))), 
            $Box(char#FromInt(71))), 
          $Box(char#FromInt(69))), 
        $Box(char#FromInt(82))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##11 := LitInt(-9007199254740991);
    call {:id "id263"} Call$$_module.__default.Print(description##11, x##11);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(63,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##12 := Lit(Seq#Empty(): Seq);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##12 := LitInt(-9007199254740992);
    call {:id "id264"} Call$$_module.__default.Print(description##12, x##12);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(65,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##13 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(67))), $Box(char#FromInt(35))), 
                                  $Box(char#FromInt(32))), 
                                $Box(char#FromInt(108))), 
                              $Box(char#FromInt(111))), 
                            $Box(char#FromInt(110))), 
                          $Box(char#FromInt(103))), 
                        $Box(char#FromInt(46))), 
                      $Box(char#FromInt(77))), 
                    $Box(char#FromInt(97))), 
                  $Box(char#FromInt(120))), 
                $Box(char#FromInt(86))), 
              $Box(char#FromInt(97))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(117))), 
        $Box(char#FromInt(101))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##13 := LitInt(9223372036854775807);
    call {:id "id265"} Call$$_module.__default.Print(description##13, x##13);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(66,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##14 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(50))), $Box(char#FromInt(94))), 
          $Box(char#FromInt(54))), 
        $Box(char#FromInt(51))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##14 := LitInt(9223372036854775808);
    call {:id "id266"} Call$$_module.__default.Print(description##14, x##14);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(67,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##15 := Lit(Seq#Empty(): Seq);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##15 := LitInt(9223372036854775809);
    call {:id "id267"} Call$$_module.__default.Print(description##15, x##15);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(68,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##16 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(67))), $Box(char#FromInt(35))), 
                                    $Box(char#FromInt(32))), 
                                  $Box(char#FromInt(117))), 
                                $Box(char#FromInt(108))), 
                              $Box(char#FromInt(111))), 
                            $Box(char#FromInt(110))), 
                          $Box(char#FromInt(103))), 
                        $Box(char#FromInt(46))), 
                      $Box(char#FromInt(77))), 
                    $Box(char#FromInt(97))), 
                  $Box(char#FromInt(120))), 
                $Box(char#FromInt(86))), 
              $Box(char#FromInt(97))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(117))), 
        $Box(char#FromInt(101))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##16 := LitInt(18446744073709551615);
    call {:id "id268"} Call$$_module.__default.Print(description##16, x##16);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(69,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##17 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(50))), $Box(char#FromInt(94))), 
          $Box(char#FromInt(54))), 
        $Box(char#FromInt(52))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##17 := LitInt(18446744073709551616);
    call {:id "id269"} Call$$_module.__default.Print(description##17, x##17);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(71,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##18 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(50))), $Box(char#FromInt(94))), 
            $Box(char#FromInt(49))), 
          $Box(char#FromInt(48))), 
        $Box(char#FromInt(48))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##18 := LitInt(1267650600228229401496703205376);
    call {:id "id270"} Call$$_module.__default.Print(description##18, x##18);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(72,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##19 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(77))), $Box(char#FromInt(95))), 
          $Box(char#FromInt(51))), 
        $Box(char#FromInt(57))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##19 := LitInt(170141183460469231731687303715884105727);
    call {:id "id271"} Call$$_module.__default.Print(description##19, x##19);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(74,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##20 := Lit(Seq#Empty(): Seq);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##20 := LitReal(0e0);
    call {:id "id272"} Call$$_module.__default.PrintReal(description##20, x##20);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(75,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##21 := Lit(Seq#Empty(): Seq);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##21 := LitReal(0e0);
    call {:id "id273"} Call$$_module.__default.PrintReal(description##21, x##21);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(76,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##22 := Lit(Seq#Empty(): Seq);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##22 := LitReal(3e0);
    call {:id "id274"} Call$$_module.__default.PrintReal(description##22, x##22);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(77,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##23 := Lit(Seq#Empty(): Seq);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##23 := LitReal(-5e0);
    call {:id "id275"} Call$$_module.__default.PrintReal(description##23, x##23);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(78,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##24 := Lit(Seq#Empty(): Seq);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##24 := LitReal(314e-2);
    call {:id "id276"} Call$$_module.__default.PrintReal(description##24, x##24);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(79,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##25 := Lit(Seq#Empty(): Seq);
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##25 := LitReal(-271e-2);
    call {:id "id277"} Call$$_module.__default.PrintReal(description##25, x##25);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(80,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##26 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(97))), $Box(char#FromInt(32))), 
                    $Box(char#FromInt(98))), 
                  $Box(char#FromInt(105))), 
                $Box(char#FromInt(108))), 
              $Box(char#FromInt(108))), 
            $Box(char#FromInt(105))), 
          $Box(char#FromInt(111))), 
        $Box(char#FromInt(110))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##26 := LitReal(1e9);
    call {:id "id278"} Call$$_module.__default.PrintReal(description##26, x##26);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(81,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##27 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(71))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##27 := LitReal(667408e-16);
    call {:id "id279"} Call$$_module.__default.PrintReal(description##27, x##27);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(82,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##28 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(71))));
    assert {:id "id280"} LitReal(1e11) != 0e0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##28 := LitReal(667408e-5 / 1e11);
    call {:id "id281"} Call$$_module.__default.PrintReal(description##28, x##28);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(83,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##29 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(71))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##29 := LitReal(667408e-5 * 1e-11);
    call {:id "id282"} Call$$_module.__default.PrintReal(description##29, x##29);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(84,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##30 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(49))), $Box(char#FromInt(47))), 
                          $Box(char#FromInt(49))), 
                        $Box(char#FromInt(48))), 
                      $Box(char#FromInt(32))), 
                    $Box(char#FromInt(111))), 
                  $Box(char#FromInt(102))), 
                $Box(char#FromInt(32))), 
              $Box(char#FromInt(77))), 
            $Box(char#FromInt(95))), 
          $Box(char#FromInt(51))), 
        $Box(char#FromInt(57))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##30 := LitReal(170141183460469231731687303715884105727e-1);
    call {:id "id283"} Call$$_module.__default.PrintReal(description##30, x##30);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(85,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    description##31 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(49))), $Box(char#FromInt(47))), 
                  $Box(char#FromInt(103))), 
                $Box(char#FromInt(111))), 
              $Box(char#FromInt(111))), 
            $Box(char#FromInt(103))), 
          $Box(char#FromInt(111))), 
        $Box(char#FromInt(108))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##31 := LitReal(1e-100);
    call {:id "id284"} Call$$_module.__default.PrintReal(description##31, x##31);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Arithmetic (well-formedness)"} CheckWellFormed$$_module.__default.Arithmetic();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Arithmetic (call)"} Call$$_module.__default.Arithmetic();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Arithmetic (correctness)"} Impl$$_module.__default.Arithmetic() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Arithmetic (correctness)"} Impl$$_module.__default.Arithmetic() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s##0: Seq;
  var s##1: Seq;
  var s##2: Seq;
  var s##3: Seq;
  var dividend##0: int;
  var divisor##0: int;
  var dividend##1: int;
  var divisor##1: int;
  var dividend##2: int;
  var divisor##2: int;
  var dividend##3: int;
  var divisor##3: int;
  var dividend##4: int;
  var divisor##4: int;
  var dividend##5: int;
  var divisor##5: int;
  var s##4: Seq;
  var s##5: Seq;
  var s##6: Seq;
  var s##7: Seq;
  var dividend##6: real;
  var divisor##6: real;
  var dividend##7: real;
  var divisor##7: real;
  var dividend##8: real;
  var divisor##8: real;
  var dividend##9: real;
  var divisor##9: real;

    // AddMethodImpl: Arithmetic, Impl$$_module.__default.Arithmetic
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(89,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(31 + 4))), $Box(LitInt(31 - 4))), 
        $Box(LitInt(4 - 31))));
    call {:id "id285"} Call$$_module.__default.PrintSeq(TInt, s##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(91,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##1 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(Mul(LitInt(31), LitInt(4))))), 
        $Box(LitInt(Mul(LitInt(31), LitInt(-4))))));
    call {:id "id286"} Call$$_module.__default.PrintSeq(TInt, s##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(92,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##2 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(Mul(LitInt(-31), LitInt(4))))), 
        $Box(LitInt(Mul(LitInt(-31), LitInt(-4))))));
    call {:id "id287"} Call$$_module.__default.PrintSeq(TInt, s##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(94,11)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id288"} char#IsChar(char#ToInt(Lit(char#FromInt(51))) + char#ToInt(Lit(char#FromInt(52))));
    assert {:id "id289"} char#IsChar(char#ToInt(Lit(char#FromInt(55))) - char#ToInt(Lit(char#FromInt(52))));
    assert {:id "id290"} char#IsChar(char#ToInt(Lit(char#Minus(char#FromInt(55), char#FromInt(52))))
         + char#ToInt(Lit(char#FromInt(78))));
    assert {:id "id291"} char#IsChar(char#ToInt(Lit(char#FromInt(52))) - char#ToInt(Lit(char#FromInt(51))));
    assert {:id "id292"} char#IsChar(char#ToInt(Lit(char#Minus(char#FromInt(52), char#FromInt(51))))
         + char#ToInt(Lit(char#FromInt(49))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##3 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(Lit(char#Plus(char#FromInt(51), char#FromInt(52))))), 
          $Box(Lit(char#Plus(char#Minus(char#FromInt(55), char#FromInt(52)), char#FromInt(78))))), 
        $Box(Lit(char#Plus(char#Minus(char#FromInt(52), char#FromInt(51)), char#FromInt(49))))));
    call {:id "id293"} Call$$_module.__default.PrintSeq(TChar, s##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(96,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    dividend##0 := LitInt(31);
    assume true;
    // ProcessCallStmt: CheckSubrange
    divisor##0 := LitInt(4);
    call {:id "id294"} Call$$_module.__default.DivMod(dividend##0, divisor##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(97,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    dividend##1 := LitInt(-31);
    assume true;
    // ProcessCallStmt: CheckSubrange
    divisor##1 := LitInt(4);
    call {:id "id295"} Call$$_module.__default.DivMod(dividend##1, divisor##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(98,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    dividend##2 := LitInt(31);
    assume true;
    // ProcessCallStmt: CheckSubrange
    divisor##2 := LitInt(-4);
    call {:id "id296"} Call$$_module.__default.DivMod(dividend##2, divisor##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(99,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    dividend##3 := LitInt(-31);
    assume true;
    // ProcessCallStmt: CheckSubrange
    divisor##3 := LitInt(-4);
    call {:id "id297"} Call$$_module.__default.DivMod(dividend##3, divisor##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(100,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    dividend##4 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    divisor##4 := LitInt(4);
    call {:id "id298"} Call$$_module.__default.DivMod(dividend##4, divisor##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(101,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    dividend##5 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    divisor##5 := LitInt(-4);
    call {:id "id299"} Call$$_module.__default.DivMod(dividend##5, divisor##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(102,15)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id300"} Call$$_module.__default.DivModNative();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(104,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##4 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitReal(3e-1 - 1e-1))));
    call {:id "id301"} Call$$_module.__default.PrintSeq(TReal, s##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(105,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##5 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitReal(312e-1 + 4e0))), 
          $Box(LitReal(312e-1 - 4e0))), 
        $Box(LitReal(4e0 - 312e-1))));
    call {:id "id302"} Call$$_module.__default.PrintSeq(TReal, s##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(107,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##6 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitReal(312e-1 * 4e0))), 
        $Box(LitReal(312e-1 * -4e0))));
    call {:id "id303"} Call$$_module.__default.PrintSeq(TReal, s##6);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(108,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##7 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitReal(-312e-1 * 4e0))), 
        $Box(LitReal(-312e-1 * -4e0))));
    call {:id "id304"} Call$$_module.__default.PrintSeq(TReal, s##7);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(110,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    dividend##6 := LitReal(312e-1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    divisor##6 := LitReal(4e0);
    call {:id "id305"} Call$$_module.__default.DivModReal(dividend##6, divisor##6);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(111,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    dividend##7 := LitReal(-312e-1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    divisor##7 := LitReal(4e0);
    call {:id "id306"} Call$$_module.__default.DivModReal(dividend##7, divisor##7);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(112,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    dividend##8 := LitReal(312e-1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    divisor##8 := LitReal(-4e0);
    call {:id "id307"} Call$$_module.__default.DivModReal(dividend##8, divisor##8);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(113,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    dividend##9 := LitReal(-312e-1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    divisor##9 := LitReal(-4e0);
    call {:id "id308"} Call$$_module.__default.DivModReal(dividend##9, divisor##9);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "DivMod (well-formedness)"} CheckWellFormed$$_module.__default.DivMod(dividend#0: int, divisor#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DivMod (call)"} Call$$_module.__default.DivMod(dividend#0: int, divisor#0: int);
  // user-defined preconditions
  requires {:id "id310"} divisor#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DivMod (correctness)"} Impl$$_module.__default.DivMod(dividend#0: int, divisor#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id311"} divisor#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DivMod (correctness)"} Impl$$_module.__default.DivMod(dividend#0: int, divisor#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var quotient#0: int;
  var remainder#0: int;

    // AddMethodImpl: DivMod, Impl$$_module.__default.DivMod
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(120,16)
    assume true;
    assert {:id "id312"} divisor#0 != 0;
    assume true;
    quotient#0 := Div(dividend#0, divisor#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(121,17)
    assume true;
    assert {:id "id314"} divisor#0 != 0;
    assume true;
    remainder#0 := Mod(dividend#0, divisor#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(122,3)
    assume true;
    assert {:id "id316"} LitInt(0) <= remainder#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(123,3)
    assume true;
    assert {:id "id317"} Mul(quotient#0, divisor#0) + remainder#0 == dividend#0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(124,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "DivModNative (well-formedness)"} CheckWellFormed$$_module.__default.DivModNative();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DivModNative (call)"} Call$$_module.__default.DivModNative();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DivModNative (correctness)"} Impl$$_module.__default.DivModNative() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DivModNative (correctness)"} Impl$$_module.__default.DivModNative() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a##0: int;
  var newtype$check#0: int;
  var b##0: int;
  var newtype$check#1: int;
  var suffix##0: Seq;
  var a##1: int;
  var newtype$check#2: int;
  var b##1: int;
  var newtype$check#3: int;
  var suffix##1: Seq;
  var a##2: int;
  var newtype$check#4: int;
  var b##2: int;
  var newtype$check#5: int;
  var suffix##2: Seq;
  var a##3: int;
  var newtype$check#6: int;
  var b##3: int;
  var newtype$check#7: int;
  var suffix##3: Seq;
  var a##4: int;
  var newtype$check#8: int;
  var b##4: int;
  var newtype$check#9: int;
  var suffix##4: Seq;
  var a##5: int;
  var newtype$check#10: int;
  var b##5: int;
  var newtype$check#11: int;
  var suffix##5: Seq;
  var a##6: int;
  var newtype$check#12: int;
  var b##6: int;
  var newtype$check#13: int;
  var suffix##6: Seq;
  var a##7: int;
  var newtype$check#14: int;
  var b##7: int;
  var newtype$check#15: int;
  var suffix##7: Seq;
  var i#0: int;
  var j#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var i##0: int;
  var j##0: int;
  var suffix##8: Seq;
  var i##1: int;
  var j##1: int;
  var suffix##9: Seq;
  var i##2: int;
  var j##2: int;
  var suffix##10: Seq;
  var i##3: int;
  var j##3: int;
  var suffix##11: Seq;
  var a##8: int;
  var b##8: int;
  var suffix##12: Seq;
  var a##9: int;
  var b##9: int;
  var suffix##13: Seq;
  var a##10: int;
  var b##10: int;
  var suffix##14: Seq;
  var a##11: int;
  var b##11: int;
  var suffix##15: Seq;
  var a##12: int;
  var b##12: int;
  var suffix##16: Seq;
  var a##13: int;
  var b##13: int;
  var suffix##17: Seq;
  var i8#0: int where LitInt(-128) <= i8#0 && i8#0 < 128;
  var j8#0: int where LitInt(-128) <= j8#0 && j8#0 < 128;
  var $rhs#2: int;
  var newtype$check#16: int;
  var $rhs#3: int;
  var newtype$check#17: int;
  var i16#0: int where LitInt(-32768) <= i16#0 && i16#0 < 32768;
  var j16#0: int where LitInt(-32768) <= j16#0 && j16#0 < 32768;
  var $rhs#4: int;
  var newtype$check#18: int;
  var $rhs#5: int;
  var newtype$check#19: int;
  var i32#0: int where LitInt(-2147483648) <= i32#0 && i32#0 < 2147483648;
  var j32#0: int where LitInt(-2147483648) <= j32#0 && j32#0 < 2147483648;
  var $rhs#6: int;
  var newtype$check#20: int;
  var $rhs#7: int;
  var newtype$check#21: int;
  var i64#0: int
     where LitInt(-9223372036854775808) <= i64#0 && i64#0 < 9223372036854775808;
  var j64#0: int
     where LitInt(-9223372036854775808) <= j64#0 && j64#0 < 9223372036854775808;
  var $rhs#8: int;
  var newtype$check#22: int;
  var $rhs#9: int;
  var newtype$check#23: int;
  var a##14: int;
  var b##14: int;
  var suffix##18: Seq;
  var a##15: int;
  var newtype$check#24: int;
  var newtype$check#25: int;
  var b##15: int;
  var suffix##19: Seq;
  var a##16: int;
  var b##16: int;
  var newtype$check#26: int;
  var newtype$check#27: int;
  var suffix##20: Seq;
  var a##17: int;
  var newtype$check#28: int;
  var newtype$check#29: int;
  var b##17: int;
  var newtype$check#30: int;
  var newtype$check#31: int;
  var suffix##21: Seq;
  var a##18: int;
  var newtype$check#32: int;
  var b##18: int;
  var newtype$check#33: int;
  var suffix##22: Seq;
  var a##19: int;
  var newtype$check#34: int;
  var b##19: int;
  var newtype$check#35: int;
  var suffix##23: Seq;
  var a##20: int;
  var b##20: int;
  var suffix##24: Seq;
  var a##21: int;
  var newtype$check#36: int;
  var newtype$check#37: int;
  var b##21: int;
  var suffix##25: Seq;
  var a##22: int;
  var b##22: int;
  var newtype$check#38: int;
  var newtype$check#39: int;
  var suffix##26: Seq;
  var a##23: int;
  var newtype$check#40: int;
  var newtype$check#41: int;
  var b##23: int;
  var newtype$check#42: int;
  var newtype$check#43: int;
  var suffix##27: Seq;
  var a##24: int;
  var newtype$check#44: int;
  var b##24: int;
  var newtype$check#45: int;
  var suffix##28: Seq;
  var a##25: int;
  var newtype$check#46: int;
  var b##25: int;
  var newtype$check#47: int;
  var suffix##29: Seq;
  var a##26: int;
  var b##26: int;
  var suffix##30: Seq;
  var a##27: int;
  var newtype$check#48: int;
  var newtype$check#49: int;
  var b##27: int;
  var suffix##31: Seq;
  var a##28: int;
  var b##28: int;
  var newtype$check#50: int;
  var newtype$check#51: int;
  var suffix##32: Seq;
  var a##29: int;
  var newtype$check#52: int;
  var newtype$check#53: int;
  var b##29: int;
  var newtype$check#54: int;
  var newtype$check#55: int;
  var suffix##33: Seq;
  var a##30: int;
  var newtype$check#56: int;
  var b##30: int;
  var newtype$check#57: int;
  var suffix##34: Seq;
  var a##31: int;
  var newtype$check#58: int;
  var b##31: int;
  var newtype$check#59: int;
  var suffix##35: Seq;
  var a##32: int;
  var b##32: int;
  var suffix##36: Seq;
  var a##33: int;
  var newtype$check#60: int;
  var newtype$check#61: int;
  var b##33: int;
  var suffix##37: Seq;
  var a##34: int;
  var b##34: int;
  var newtype$check#62: int;
  var newtype$check#63: int;
  var suffix##38: Seq;
  var a##35: int;
  var newtype$check#64: int;
  var newtype$check#65: int;
  var b##35: int;
  var newtype$check#66: int;
  var newtype$check#67: int;
  var suffix##39: Seq;
  var a##36: int;
  var newtype$check#68: int;
  var b##36: int;
  var newtype$check#69: int;
  var suffix##40: Seq;
  var a##37: int;
  var newtype$check#70: int;
  var b##37: int;
  var newtype$check#71: int;
  var suffix##41: Seq;

    // AddMethodImpl: DivModNative, Impl$$_module.__default.DivModNative
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(140,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(141,18)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#0 := LitInt(231);
    assert {:id "id318"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 256;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := LitInt(231);
    newtype$check#1 := LitInt(23);
    assert {:id "id319"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 256;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := LitInt(23);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##0 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id320"} Call$$_module.__default.TestDivModUint8(a##0, b##0, suffix##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(142,18)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#2 := LitInt(231);
    assert {:id "id321"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 256;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := LitInt(231);
    newtype$check#3 := LitInt(255);
    assert {:id "id322"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 256;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##1 := LitInt(255);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##1 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id323"} Call$$_module.__default.TestDivModUint8(a##1, b##1, suffix##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(143,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(144,19)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#4 := LitInt(65511);
    assert {:id "id324"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 65536;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##2 := LitInt(65511);
    newtype$check#5 := LitInt(23);
    assert {:id "id325"} LitInt(0) <= newtype$check#5 && newtype$check#5 < 65536;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##2 := LitInt(23);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##2 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id326"} Call$$_module.__default.TestDivModUint16(a##2, b##2, suffix##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(145,19)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#6 := LitInt(65511);
    assert {:id "id327"} LitInt(0) <= newtype$check#6 && newtype$check#6 < 65536;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##3 := LitInt(65511);
    newtype$check#7 := LitInt(65535);
    assert {:id "id328"} LitInt(0) <= newtype$check#7 && newtype$check#7 < 65536;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##3 := LitInt(65535);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##3 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id329"} Call$$_module.__default.TestDivModUint16(a##3, b##3, suffix##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(146,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(147,19)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#8 := LitInt(4294967271);
    assert {:id "id330"} LitInt(0) <= newtype$check#8 && newtype$check#8 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##4 := LitInt(4294967271);
    newtype$check#9 := LitInt(23);
    assert {:id "id331"} LitInt(0) <= newtype$check#9 && newtype$check#9 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##4 := LitInt(23);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##4 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id332"} Call$$_module.__default.TestDivModUint32(a##4, b##4, suffix##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(148,19)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#10 := LitInt(4294967271);
    assert {:id "id333"} LitInt(0) <= newtype$check#10 && newtype$check#10 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##5 := LitInt(4294967271);
    newtype$check#11 := LitInt(4294967295);
    assert {:id "id334"} LitInt(0) <= newtype$check#11 && newtype$check#11 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##5 := LitInt(4294967295);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##5 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id335"} Call$$_module.__default.TestDivModUint32(a##5, b##5, suffix##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(149,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(150,19)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#12 := LitInt(18446744073709551591);
    assert {:id "id336"} LitInt(0) <= newtype$check#12 && newtype$check#12 < 18446744073709551616;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##6 := LitInt(18446744073709551591);
    newtype$check#13 := LitInt(23);
    assert {:id "id337"} LitInt(0) <= newtype$check#13 && newtype$check#13 < 18446744073709551616;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##6 := LitInt(23);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##6 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id338"} Call$$_module.__default.TestDivModUint64(a##6, b##6, suffix##6);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(151,19)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#14 := LitInt(18446744073709551591);
    assert {:id "id339"} LitInt(0) <= newtype$check#14 && newtype$check#14 < 18446744073709551616;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##7 := LitInt(18446744073709551591);
    newtype$check#15 := LitInt(18446744073709551615);
    assert {:id "id340"} LitInt(0) <= newtype$check#15 && newtype$check#15 < 18446744073709551616;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##7 := LitInt(18446744073709551615);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##7 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id341"} Call$$_module.__default.TestDivModUint64(a##7, b##7, suffix##7);
    // TrCallStmt: After ProcessCallStmt
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(154,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(103);
    assume true;
    $rhs#1 := LitInt(13);
    i#0 := $rhs#0;
    j#0 := $rhs#1;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(155,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(156,23)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    i##0 := i#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    j##0 := j#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##8 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id346"} Call$$_module.__default.EuclideanDefinitions(i##0, j##0, suffix##8);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(157,23)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    i##1 := 0 - i#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    j##1 := j#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##9 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id347"} Call$$_module.__default.EuclideanDefinitions(i##1, j##1, suffix##9);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(158,23)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    i##2 := i#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    j##2 := 0 - j#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##10 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id348"} Call$$_module.__default.EuclideanDefinitions(i##2, j##2, suffix##10);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(159,23)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    i##3 := 0 - i#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    j##3 := 0 - j#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##11 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id349"} Call$$_module.__default.EuclideanDefinitions(i##3, j##3, suffix##11);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(162,3)
    assert {:id "id350"} {:subsumption 0} j#0 != 0;
    if (Div(i#0, j#0) == LitInt(7))
    {
        assert {:id "id351"} {:subsumption 0} j#0 != 0;
    }

    assume true;
    assert {:id "id352"} {:subsumption 0} Div(i#0, j#0) == LitInt(7);
    assert {:id "id353"} {:subsumption 0} Mod(i#0, j#0) == LitInt(12);
    assume {:id "id354"} Div(i#0, j#0) == LitInt(7) && Mod(i#0, j#0) == LitInt(12);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(163,3)
    assert {:id "id355"} {:subsumption 0} j#0 != 0;
    if (Div(0 - i#0, j#0) == LitInt(-8))
    {
        assert {:id "id356"} {:subsumption 0} j#0 != 0;
    }

    assume true;
    assert {:id "id357"} {:subsumption 0} Div(0 - i#0, j#0) == LitInt(-8);
    assert {:id "id358"} {:subsumption 0} Mod(0 - i#0, j#0) == LitInt(1);
    assume {:id "id359"} Div(0 - i#0, j#0) == LitInt(-8) && Mod(0 - i#0, j#0) == LitInt(1);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(164,3)
    assert {:id "id360"} {:subsumption 0} 0 - j#0 != 0;
    if (Div(i#0, 0 - j#0) == LitInt(-7))
    {
        assert {:id "id361"} {:subsumption 0} 0 - j#0 != 0;
    }

    assume true;
    assert {:id "id362"} {:subsumption 0} Div(i#0, 0 - j#0) == LitInt(-7);
    assert {:id "id363"} {:subsumption 0} Mod(i#0, 0 - j#0) == LitInt(12);
    assume {:id "id364"} Div(i#0, 0 - j#0) == LitInt(-7) && Mod(i#0, 0 - j#0) == LitInt(12);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(165,3)
    assert {:id "id365"} {:subsumption 0} 0 - j#0 != 0;
    if (Div(-103, 0 - j#0) == LitInt(8))
    {
        assert {:id "id366"} {:subsumption 0} 0 - j#0 != 0;
    }

    assume true;
    assert {:id "id367"} {:subsumption 0} Div(-103, 0 - j#0) == LitInt(8);
    assert {:id "id368"} {:subsumption 0} Mod(0 - i#0, 0 - j#0) == LitInt(1);
    assume {:id "id369"} Div(-103, 0 - j#0) == LitInt(8) && Mod(0 - i#0, 0 - j#0) == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(173,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(174,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##8 := i#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##8 := j#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##12 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id370"} Call$$_module.__default.TestDivModInt(a##8, b##8, suffix##12);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(175,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##9 := 0 - i#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##9 := j#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##13 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id371"} Call$$_module.__default.TestDivModInt(a##9, b##9, suffix##13);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(176,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##10 := i#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##10 := 0 - j#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##14 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id372"} Call$$_module.__default.TestDivModInt(a##10, b##10, suffix##14);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(177,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##11 := 0 - i#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##11 := 0 - j#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##15 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id373"} Call$$_module.__default.TestDivModInt(a##11, b##11, suffix##15);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(178,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##12 := LitInt(-108);
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##12 := LitInt(9);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##16 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id374"} Call$$_module.__default.TestDivModInt(a##12, b##12, suffix##16);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(179,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##13 := LitInt(-108);
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##13 := LitInt(-9);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##17 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id375"} Call$$_module.__default.TestDivModInt(a##13, b##13, suffix##17);
    // TrCallStmt: After ProcessCallStmt
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(182,26)
    assume true;
    assume true;
    newtype$check#16 := LitInt(103);
    assert {:id "id376"} LitInt(-128) <= newtype$check#16 && newtype$check#16 < 128;
    assume true;
    $rhs#2 := LitInt(103);
    newtype$check#17 := LitInt(13);
    assert {:id "id378"} LitInt(-128) <= newtype$check#17 && newtype$check#17 < 128;
    assume true;
    $rhs#3 := LitInt(13);
    i8#0 := $rhs#2;
    j8#0 := $rhs#3;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(183,30)
    assume true;
    assume true;
    newtype$check#18 := LitInt(103);
    assert {:id "id382"} LitInt(-32768) <= newtype$check#18 && newtype$check#18 < 32768;
    assume true;
    $rhs#4 := LitInt(103);
    newtype$check#19 := LitInt(13);
    assert {:id "id384"} LitInt(-32768) <= newtype$check#19 && newtype$check#19 < 32768;
    assume true;
    $rhs#5 := LitInt(13);
    i16#0 := $rhs#4;
    j16#0 := $rhs#5;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(184,30)
    assume true;
    assume true;
    newtype$check#20 := LitInt(103);
    assert {:id "id388"} LitInt(-2147483648) <= newtype$check#20 && newtype$check#20 < 2147483648;
    assume true;
    $rhs#6 := LitInt(103);
    newtype$check#21 := LitInt(13);
    assert {:id "id390"} LitInt(-2147483648) <= newtype$check#21 && newtype$check#21 < 2147483648;
    assume true;
    $rhs#7 := LitInt(13);
    i32#0 := $rhs#6;
    j32#0 := $rhs#7;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(185,30)
    assume true;
    assume true;
    newtype$check#22 := LitInt(103);
    assert {:id "id394"} LitInt(-9223372036854775808) <= newtype$check#22
       && newtype$check#22 < 9223372036854775808;
    assume true;
    $rhs#8 := LitInt(103);
    newtype$check#23 := LitInt(13);
    assert {:id "id396"} LitInt(-9223372036854775808) <= newtype$check#23
       && newtype$check#23 < 9223372036854775808;
    assume true;
    $rhs#9 := LitInt(13);
    i64#0 := $rhs#8;
    j64#0 := $rhs#9;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(186,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(187,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##14 := i8#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##14 := j8#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##18 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id400"} Call$$_module.__default.TestDivModInt8(a##14, b##14, suffix##18);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(188,17)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#24 := LitInt(0);
    assert {:id "id401"} LitInt(-128) <= newtype$check#24 && newtype$check#24 < 128;
    newtype$check#25 := 0 - i8#0;
    assert {:id "id402"} LitInt(-128) <= newtype$check#25 && newtype$check#25 < 128;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##15 := 0 - i8#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##15 := j8#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##19 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id403"} Call$$_module.__default.TestDivModInt8(a##15, b##15, suffix##19);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(189,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##16 := i8#0;
    newtype$check#26 := LitInt(0);
    assert {:id "id404"} LitInt(-128) <= newtype$check#26 && newtype$check#26 < 128;
    newtype$check#27 := 0 - j8#0;
    assert {:id "id405"} LitInt(-128) <= newtype$check#27 && newtype$check#27 < 128;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##16 := 0 - j8#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##20 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id406"} Call$$_module.__default.TestDivModInt8(a##16, b##16, suffix##20);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(190,17)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#28 := LitInt(0);
    assert {:id "id407"} LitInt(-128) <= newtype$check#28 && newtype$check#28 < 128;
    newtype$check#29 := 0 - i8#0;
    assert {:id "id408"} LitInt(-128) <= newtype$check#29 && newtype$check#29 < 128;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##17 := 0 - i8#0;
    newtype$check#30 := LitInt(0);
    assert {:id "id409"} LitInt(-128) <= newtype$check#30 && newtype$check#30 < 128;
    newtype$check#31 := 0 - j8#0;
    assert {:id "id410"} LitInt(-128) <= newtype$check#31 && newtype$check#31 < 128;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##17 := 0 - j8#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##21 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id411"} Call$$_module.__default.TestDivModInt8(a##17, b##17, suffix##21);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(191,17)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#32 := LitInt(-108);
    assert {:id "id412"} LitInt(-128) <= newtype$check#32 && newtype$check#32 < 128;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##18 := LitInt(-108);
    newtype$check#33 := LitInt(9);
    assert {:id "id413"} LitInt(-128) <= newtype$check#33 && newtype$check#33 < 128;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##18 := LitInt(9);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##22 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id414"} Call$$_module.__default.TestDivModInt8(a##18, b##18, suffix##22);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(192,17)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#34 := LitInt(-108);
    assert {:id "id415"} LitInt(-128) <= newtype$check#34 && newtype$check#34 < 128;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##19 := LitInt(-108);
    newtype$check#35 := LitInt(-9);
    assert {:id "id416"} LitInt(-128) <= newtype$check#35 && newtype$check#35 < 128;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##19 := LitInt(-9);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##23 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id417"} Call$$_module.__default.TestDivModInt8(a##19, b##19, suffix##23);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(193,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(194,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##20 := i16#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##20 := j16#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##24 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id418"} Call$$_module.__default.TestDivModInt16(a##20, b##20, suffix##24);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(195,18)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#36 := LitInt(0);
    assert {:id "id419"} LitInt(-32768) <= newtype$check#36 && newtype$check#36 < 32768;
    newtype$check#37 := 0 - i16#0;
    assert {:id "id420"} LitInt(-32768) <= newtype$check#37 && newtype$check#37 < 32768;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##21 := 0 - i16#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##21 := j16#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##25 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id421"} Call$$_module.__default.TestDivModInt16(a##21, b##21, suffix##25);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(196,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##22 := i16#0;
    newtype$check#38 := LitInt(0);
    assert {:id "id422"} LitInt(-32768) <= newtype$check#38 && newtype$check#38 < 32768;
    newtype$check#39 := 0 - j16#0;
    assert {:id "id423"} LitInt(-32768) <= newtype$check#39 && newtype$check#39 < 32768;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##22 := 0 - j16#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##26 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id424"} Call$$_module.__default.TestDivModInt16(a##22, b##22, suffix##26);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(197,18)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#40 := LitInt(0);
    assert {:id "id425"} LitInt(-32768) <= newtype$check#40 && newtype$check#40 < 32768;
    newtype$check#41 := 0 - i16#0;
    assert {:id "id426"} LitInt(-32768) <= newtype$check#41 && newtype$check#41 < 32768;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##23 := 0 - i16#0;
    newtype$check#42 := LitInt(0);
    assert {:id "id427"} LitInt(-32768) <= newtype$check#42 && newtype$check#42 < 32768;
    newtype$check#43 := 0 - j16#0;
    assert {:id "id428"} LitInt(-32768) <= newtype$check#43 && newtype$check#43 < 32768;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##23 := 0 - j16#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##27 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id429"} Call$$_module.__default.TestDivModInt16(a##23, b##23, suffix##27);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(198,18)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#44 := LitInt(-108);
    assert {:id "id430"} LitInt(-32768) <= newtype$check#44 && newtype$check#44 < 32768;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##24 := LitInt(-108);
    newtype$check#45 := LitInt(9);
    assert {:id "id431"} LitInt(-32768) <= newtype$check#45 && newtype$check#45 < 32768;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##24 := LitInt(9);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##28 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id432"} Call$$_module.__default.TestDivModInt16(a##24, b##24, suffix##28);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(199,18)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#46 := LitInt(-108);
    assert {:id "id433"} LitInt(-32768) <= newtype$check#46 && newtype$check#46 < 32768;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##25 := LitInt(-108);
    newtype$check#47 := LitInt(-9);
    assert {:id "id434"} LitInt(-32768) <= newtype$check#47 && newtype$check#47 < 32768;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##25 := LitInt(-9);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##29 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id435"} Call$$_module.__default.TestDivModInt16(a##25, b##25, suffix##29);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(200,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(201,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##26 := i32#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##26 := j32#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##30 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id436"} Call$$_module.__default.TestDivModInt32(a##26, b##26, suffix##30);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(202,18)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#48 := LitInt(0);
    assert {:id "id437"} LitInt(-2147483648) <= newtype$check#48 && newtype$check#48 < 2147483648;
    newtype$check#49 := 0 - i32#0;
    assert {:id "id438"} LitInt(-2147483648) <= newtype$check#49 && newtype$check#49 < 2147483648;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##27 := 0 - i32#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##27 := j32#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##31 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id439"} Call$$_module.__default.TestDivModInt32(a##27, b##27, suffix##31);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(203,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##28 := i32#0;
    newtype$check#50 := LitInt(0);
    assert {:id "id440"} LitInt(-2147483648) <= newtype$check#50 && newtype$check#50 < 2147483648;
    newtype$check#51 := 0 - j32#0;
    assert {:id "id441"} LitInt(-2147483648) <= newtype$check#51 && newtype$check#51 < 2147483648;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##28 := 0 - j32#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##32 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id442"} Call$$_module.__default.TestDivModInt32(a##28, b##28, suffix##32);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(204,18)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#52 := LitInt(0);
    assert {:id "id443"} LitInt(-2147483648) <= newtype$check#52 && newtype$check#52 < 2147483648;
    newtype$check#53 := 0 - i32#0;
    assert {:id "id444"} LitInt(-2147483648) <= newtype$check#53 && newtype$check#53 < 2147483648;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##29 := 0 - i32#0;
    newtype$check#54 := LitInt(0);
    assert {:id "id445"} LitInt(-2147483648) <= newtype$check#54 && newtype$check#54 < 2147483648;
    newtype$check#55 := 0 - j32#0;
    assert {:id "id446"} LitInt(-2147483648) <= newtype$check#55 && newtype$check#55 < 2147483648;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##29 := 0 - j32#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##33 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id447"} Call$$_module.__default.TestDivModInt32(a##29, b##29, suffix##33);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(205,18)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#56 := LitInt(-108);
    assert {:id "id448"} LitInt(-2147483648) <= newtype$check#56 && newtype$check#56 < 2147483648;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##30 := LitInt(-108);
    newtype$check#57 := LitInt(9);
    assert {:id "id449"} LitInt(-2147483648) <= newtype$check#57 && newtype$check#57 < 2147483648;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##30 := LitInt(9);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##34 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id450"} Call$$_module.__default.TestDivModInt32(a##30, b##30, suffix##34);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(206,18)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#58 := LitInt(-108);
    assert {:id "id451"} LitInt(-2147483648) <= newtype$check#58 && newtype$check#58 < 2147483648;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##31 := LitInt(-108);
    newtype$check#59 := LitInt(-9);
    assert {:id "id452"} LitInt(-2147483648) <= newtype$check#59 && newtype$check#59 < 2147483648;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##31 := LitInt(-9);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##35 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id453"} Call$$_module.__default.TestDivModInt32(a##31, b##31, suffix##35);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(207,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(208,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##32 := i64#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##32 := j64#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##36 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id454"} Call$$_module.__default.TestDivModInt64(a##32, b##32, suffix##36);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(209,18)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#60 := LitInt(0);
    assert {:id "id455"} LitInt(-9223372036854775808) <= newtype$check#60
       && newtype$check#60 < 9223372036854775808;
    newtype$check#61 := 0 - i64#0;
    assert {:id "id456"} LitInt(-9223372036854775808) <= newtype$check#61
       && newtype$check#61 < 9223372036854775808;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##33 := 0 - i64#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##33 := j64#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##37 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id457"} Call$$_module.__default.TestDivModInt64(a##33, b##33, suffix##37);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(210,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##34 := i64#0;
    newtype$check#62 := LitInt(0);
    assert {:id "id458"} LitInt(-9223372036854775808) <= newtype$check#62
       && newtype$check#62 < 9223372036854775808;
    newtype$check#63 := 0 - j64#0;
    assert {:id "id459"} LitInt(-9223372036854775808) <= newtype$check#63
       && newtype$check#63 < 9223372036854775808;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##34 := 0 - j64#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##38 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id460"} Call$$_module.__default.TestDivModInt64(a##34, b##34, suffix##38);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(211,18)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#64 := LitInt(0);
    assert {:id "id461"} LitInt(-9223372036854775808) <= newtype$check#64
       && newtype$check#64 < 9223372036854775808;
    newtype$check#65 := 0 - i64#0;
    assert {:id "id462"} LitInt(-9223372036854775808) <= newtype$check#65
       && newtype$check#65 < 9223372036854775808;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##35 := 0 - i64#0;
    newtype$check#66 := LitInt(0);
    assert {:id "id463"} LitInt(-9223372036854775808) <= newtype$check#66
       && newtype$check#66 < 9223372036854775808;
    newtype$check#67 := 0 - j64#0;
    assert {:id "id464"} LitInt(-9223372036854775808) <= newtype$check#67
       && newtype$check#67 < 9223372036854775808;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##35 := 0 - j64#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##39 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id465"} Call$$_module.__default.TestDivModInt64(a##35, b##35, suffix##39);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(212,18)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#68 := LitInt(-108);
    assert {:id "id466"} LitInt(-9223372036854775808) <= newtype$check#68
       && newtype$check#68 < 9223372036854775808;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##36 := LitInt(-108);
    newtype$check#69 := LitInt(9);
    assert {:id "id467"} LitInt(-9223372036854775808) <= newtype$check#69
       && newtype$check#69 < 9223372036854775808;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##36 := LitInt(9);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##40 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id468"} Call$$_module.__default.TestDivModInt64(a##36, b##36, suffix##40);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(213,18)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#70 := LitInt(-108);
    assert {:id "id469"} LitInt(-9223372036854775808) <= newtype$check#70
       && newtype$check#70 < 9223372036854775808;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##37 := LitInt(-108);
    newtype$check#71 := LitInt(-9);
    assert {:id "id470"} LitInt(-9223372036854775808) <= newtype$check#71
       && newtype$check#71 < 9223372036854775808;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##37 := LitInt(-9);
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##41 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id471"} Call$$_module.__default.TestDivModInt64(a##37, b##37, suffix##41);
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for _module._default.Sign
function _module.__default.Sign(n#0: int) : int
uses {
// definition axiom for _module.__default.Sign (revealed)
axiom {:id "id472"} 0 <= $FunctionContextHeight
   ==> (forall n#0: int :: 
    { _module.__default.Sign(n#0) } 
    _module.__default.Sign#canCall(n#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Sign(n#0)
         == (if n#0 < 0 then -1 else (if n#0 == LitInt(0) then 0 else 1)));
// definition axiom for _module.__default.Sign for all literals (revealed)
axiom {:id "id473"} 0 <= $FunctionContextHeight
   ==> (forall n#0: int :: 
    {:weight 3} { _module.__default.Sign(LitInt(n#0)) } 
    _module.__default.Sign#canCall(LitInt(n#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.Sign(LitInt(n#0))
         == (if n#0 < 0 then -1 else (if LitInt(n#0) == LitInt(0) then 0 else 1)));
}

function _module.__default.Sign#canCall(n#0: int) : bool;

function _module.__default.Sign#requires(int) : bool;

// #requires axiom for _module.__default.Sign
axiom (forall n#0: int :: 
  { _module.__default.Sign#requires(n#0) } 
  _module.__default.Sign#requires(n#0) == true);

procedure {:verboseName "Sign (well-formedness)"} CheckWellformed$$_module.__default.Sign(n#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Abs
function _module.__default.Abs(n#0: int) : int
uses {
// consequence axiom for _module.__default.Abs
axiom 0 <= $FunctionContextHeight
   ==> (forall n#0: int :: 
    { _module.__default.Abs(n#0) } 
    _module.__default.Abs#canCall(n#0) || 0 < $FunctionContextHeight
       ==> LitInt(0) <= _module.__default.Abs(n#0));
// definition axiom for _module.__default.Abs (revealed)
axiom {:id "id477"} 0 <= $FunctionContextHeight
   ==> (forall n#0: int :: 
    { _module.__default.Abs(n#0) } 
    _module.__default.Abs#canCall(n#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Abs(n#0) == (if n#0 < 0 then 0 - n#0 else n#0));
// definition axiom for _module.__default.Abs for all literals (revealed)
axiom {:id "id478"} 0 <= $FunctionContextHeight
   ==> (forall n#0: int :: 
    {:weight 3} { _module.__default.Abs(LitInt(n#0)) } 
    _module.__default.Abs#canCall(LitInt(n#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.Abs(LitInt(n#0)) == (if n#0 < 0 then 0 - n#0 else n#0));
}

function _module.__default.Abs#canCall(n#0: int) : bool;

function _module.__default.Abs#requires(int) : bool;

// #requires axiom for _module.__default.Abs
axiom (forall n#0: int :: 
  { _module.__default.Abs#requires(n#0) } 
  _module.__default.Abs#requires(n#0) == true);

procedure {:verboseName "Abs (well-formedness)"} CheckWellformed$$_module.__default.Abs(n#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Abs (well-formedness)"} CheckWellformed$$_module.__default.Abs(n#0: int)
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
        assume LitInt(0) <= _module.__default.Abs(n#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 < 0)
        {
            assert {:id "id479"} $Is(0 - n#0, Tclass._System.nat());
            assume {:id "id480"} _module.__default.Abs(n#0) == 0 - n#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Abs(n#0), Tclass._System.nat());
            return;
        }
        else
        {
            assert {:id "id481"} $Is(n#0, Tclass._System.nat());
            assume {:id "id482"} _module.__default.Abs(n#0) == n#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Abs(n#0), Tclass._System.nat());
            return;
        }

        assume false;
    }
}



procedure {:verboseName "EuclideanDefinitions (well-formedness)"} CheckWellFormed$$_module.__default.EuclideanDefinitions(i#0: int, 
    j#0: int, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EuclideanDefinitions (call)"} Call$$_module.__default.EuclideanDefinitions(i#0: int, 
    j#0: int, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  // user-defined preconditions
  requires {:id "id484"} j#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "EuclideanDefinitions (correctness)"} Impl$$_module.__default.EuclideanDefinitions(i#0: int, 
    j#0: int, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id485"} j#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EuclideanDefinitions (correctness)"} Impl$$_module.__default.EuclideanDefinitions(i#0: int, j#0: int, suffix#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var div#0: int;
  var ##n#0: int;
  var ##n#1: int;
  var mod#0: int;
  var ##n#2: int;
  var ##n#3: int;

    // AddMethodImpl: EuclideanDefinitions, Impl$$_module.__default.EuclideanDefinitions
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(227,11)
    assume true;
    ##n#0 := j#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, TInt, $Heap);
    assume _module.__default.Sign#canCall(j#0);
    ##n#1 := j#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, TInt, $Heap);
    assume _module.__default.Abs#canCall(j#0);
    assert {:id "id486"} Real(_module.__default.Abs(j#0)) != 0e0;
    assume _module.__default.Sign#canCall(j#0) && _module.__default.Abs#canCall(j#0);
    div#0 := Mul(_module.__default.Sign(j#0), 
      _System.real.Floor(Real(i#0) / Real(_module.__default.Abs(j#0))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(228,11)
    assume true;
    ##n#2 := j#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, TInt, $Heap);
    assume _module.__default.Abs#canCall(j#0);
    ##n#3 := j#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#3, TInt, $Heap);
    assume _module.__default.Abs#canCall(j#0);
    assert {:id "id488"} Real(_module.__default.Abs(j#0)) != 0e0;
    assume _module.__default.Abs#canCall(j#0) && _module.__default.Abs#canCall(j#0);
    mod#0 := i#0
       - Mul(_module.__default.Abs(j#0), 
        _System.real.Floor(Real(i#0) / Real(_module.__default.Abs(j#0))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(229,3)
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "TestDivModInt (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModInt(a#0: int, 
    b#0: int, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestDivModInt (call)"} Call$$_module.__default.TestDivModInt(a#0: int, 
    b#0: int, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  // user-defined preconditions
  requires {:id "id491"} b#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestDivModInt (correctness)"} Impl$$_module.__default.TestDivModInt(a#0: int, 
    b#0: int, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id492"} b#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModInt (correctness)"} Impl$$_module.__default.TestDivModInt(a#0: int, b#0: int, suffix#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestDivModInt, Impl$$_module.__default.TestDivModInt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(232,3)
    assert {:id "id493"} {:subsumption 0} b#0 != 0;
    assume true;
    assume true;
    assert {:id "id494"} {:subsumption 0} b#0 != 0;
    assume true;
    assume true;
}



procedure {:verboseName "TestDivModUint8 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModUint8(a#0: int where LitInt(0) <= a#0 && a#0 < 256, 
    b#0: int where LitInt(0) <= b#0 && b#0 < 256, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModUint8 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModUint8(a#0: int, b#0: int, suffix#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;


    // AddMethodImpl: TestDivModUint8, CheckWellFormed$$_module.__default.TestDivModUint8
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := LitInt(0);
    assert {:id "id495"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 256;
    assume {:id "id496"} b#0 != 0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "TestDivModUint8 (call)"} Call$$_module.__default.TestDivModUint8(a#0: int where LitInt(0) <= a#0 && a#0 < 256, 
    b#0: int where LitInt(0) <= b#0 && b#0 < 256, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  // user-defined preconditions
  requires {:id "id497"} b#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestDivModUint8 (correctness)"} Impl$$_module.__default.TestDivModUint8(a#0: int where LitInt(0) <= a#0 && a#0 < 256, 
    b#0: int where LitInt(0) <= b#0 && b#0 < 256, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id498"} b#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModUint8 (correctness)"} Impl$$_module.__default.TestDivModUint8(a#0: int, b#0: int, suffix#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#1: int;
  var newtype$check#2: int;

    // AddMethodImpl: TestDivModUint8, Impl$$_module.__default.TestDivModUint8
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(235,3)
    assert {:id "id499"} {:subsumption 0} b#0 != 0;
    newtype$check#1 := Div(a#0, b#0);
    assert {:id "id500"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 256;
    assume true;
    assume true;
    assert {:id "id501"} {:subsumption 0} b#0 != 0;
    newtype$check#2 := Mod(a#0, b#0);
    assert {:id "id502"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 256;
    assume true;
    assume true;
}



procedure {:verboseName "TestDivModUint16 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModUint16(a#0: int where LitInt(0) <= a#0 && a#0 < 65536, 
    b#0: int where LitInt(0) <= b#0 && b#0 < 65536, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModUint16 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModUint16(a#0: int, b#0: int, suffix#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;


    // AddMethodImpl: TestDivModUint16, CheckWellFormed$$_module.__default.TestDivModUint16
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := LitInt(0);
    assert {:id "id503"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 65536;
    assume {:id "id504"} b#0 != 0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "TestDivModUint16 (call)"} Call$$_module.__default.TestDivModUint16(a#0: int where LitInt(0) <= a#0 && a#0 < 65536, 
    b#0: int where LitInt(0) <= b#0 && b#0 < 65536, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  // user-defined preconditions
  requires {:id "id505"} b#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestDivModUint16 (correctness)"} Impl$$_module.__default.TestDivModUint16(a#0: int where LitInt(0) <= a#0 && a#0 < 65536, 
    b#0: int where LitInt(0) <= b#0 && b#0 < 65536, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id506"} b#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModUint16 (correctness)"} Impl$$_module.__default.TestDivModUint16(a#0: int, b#0: int, suffix#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#1: int;
  var newtype$check#2: int;

    // AddMethodImpl: TestDivModUint16, Impl$$_module.__default.TestDivModUint16
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(238,3)
    assert {:id "id507"} {:subsumption 0} b#0 != 0;
    newtype$check#1 := Div(a#0, b#0);
    assert {:id "id508"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 65536;
    assume true;
    assume true;
    assert {:id "id509"} {:subsumption 0} b#0 != 0;
    newtype$check#2 := Mod(a#0, b#0);
    assert {:id "id510"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 65536;
    assume true;
    assume true;
}



procedure {:verboseName "TestDivModUint32 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModUint32(a#0: int where LitInt(0) <= a#0 && a#0 < 4294967296, 
    b#0: int where LitInt(0) <= b#0 && b#0 < 4294967296, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModUint32 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModUint32(a#0: int, b#0: int, suffix#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;


    // AddMethodImpl: TestDivModUint32, CheckWellFormed$$_module.__default.TestDivModUint32
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := LitInt(0);
    assert {:id "id511"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    assume {:id "id512"} b#0 != 0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "TestDivModUint32 (call)"} Call$$_module.__default.TestDivModUint32(a#0: int where LitInt(0) <= a#0 && a#0 < 4294967296, 
    b#0: int where LitInt(0) <= b#0 && b#0 < 4294967296, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  // user-defined preconditions
  requires {:id "id513"} b#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestDivModUint32 (correctness)"} Impl$$_module.__default.TestDivModUint32(a#0: int where LitInt(0) <= a#0 && a#0 < 4294967296, 
    b#0: int where LitInt(0) <= b#0 && b#0 < 4294967296, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id514"} b#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModUint32 (correctness)"} Impl$$_module.__default.TestDivModUint32(a#0: int, b#0: int, suffix#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#1: int;
  var newtype$check#2: int;

    // AddMethodImpl: TestDivModUint32, Impl$$_module.__default.TestDivModUint32
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(241,3)
    assert {:id "id515"} {:subsumption 0} b#0 != 0;
    newtype$check#1 := Div(a#0, b#0);
    assert {:id "id516"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    assume true;
    assume true;
    assert {:id "id517"} {:subsumption 0} b#0 != 0;
    newtype$check#2 := Mod(a#0, b#0);
    assert {:id "id518"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 4294967296;
    assume true;
    assume true;
}



procedure {:verboseName "TestDivModUint64 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModUint64(a#0: int where LitInt(0) <= a#0 && a#0 < 18446744073709551616, 
    b#0: int where LitInt(0) <= b#0 && b#0 < 18446744073709551616, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModUint64 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModUint64(a#0: int, b#0: int, suffix#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;


    // AddMethodImpl: TestDivModUint64, CheckWellFormed$$_module.__default.TestDivModUint64
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := LitInt(0);
    assert {:id "id519"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 18446744073709551616;
    assume {:id "id520"} b#0 != 0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "TestDivModUint64 (call)"} Call$$_module.__default.TestDivModUint64(a#0: int where LitInt(0) <= a#0 && a#0 < 18446744073709551616, 
    b#0: int where LitInt(0) <= b#0 && b#0 < 18446744073709551616, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  // user-defined preconditions
  requires {:id "id521"} b#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestDivModUint64 (correctness)"} Impl$$_module.__default.TestDivModUint64(a#0: int where LitInt(0) <= a#0 && a#0 < 18446744073709551616, 
    b#0: int where LitInt(0) <= b#0 && b#0 < 18446744073709551616, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id522"} b#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModUint64 (correctness)"} Impl$$_module.__default.TestDivModUint64(a#0: int, b#0: int, suffix#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#1: int;
  var newtype$check#2: int;

    // AddMethodImpl: TestDivModUint64, Impl$$_module.__default.TestDivModUint64
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(244,3)
    assert {:id "id523"} {:subsumption 0} b#0 != 0;
    newtype$check#1 := Div(a#0, b#0);
    assert {:id "id524"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 18446744073709551616;
    assume true;
    assume true;
    assert {:id "id525"} {:subsumption 0} b#0 != 0;
    newtype$check#2 := Mod(a#0, b#0);
    assert {:id "id526"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 18446744073709551616;
    assume true;
    assume true;
}



procedure {:verboseName "TestDivModInt8 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModInt8(a#0: int where LitInt(-128) <= a#0 && a#0 < 128, 
    b#0: int where LitInt(-128) <= b#0 && b#0 < 128, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModInt8 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModInt8(a#0: int, b#0: int, suffix#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    // AddMethodImpl: TestDivModInt8, CheckWellFormed$$_module.__default.TestDivModInt8
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := LitInt(0);
    assert {:id "id527"} LitInt(-128) <= newtype$check#0 && newtype$check#0 < 128;
    assume {:id "id528"} b#0 != 0;
    newtype$check#1 := LitInt(-127);
    assert {:id "id529"} LitInt(-128) <= newtype$check#1 && newtype$check#1 < 128;
    assume {:id "id530"} LitInt(-127) <= a#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "TestDivModInt8 (call)"} Call$$_module.__default.TestDivModInt8(a#0: int where LitInt(-128) <= a#0 && a#0 < 128, 
    b#0: int where LitInt(-128) <= b#0 && b#0 < 128, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  // user-defined preconditions
  requires {:id "id531"} b#0 != 0;
  requires {:id "id532"} LitInt(-127) <= a#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestDivModInt8 (correctness)"} Impl$$_module.__default.TestDivModInt8(a#0: int where LitInt(-128) <= a#0 && a#0 < 128, 
    b#0: int where LitInt(-128) <= b#0 && b#0 < 128, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id533"} b#0 != 0;
  requires {:id "id534"} LitInt(-127) <= a#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModInt8 (correctness)"} Impl$$_module.__default.TestDivModInt8(a#0: int, b#0: int, suffix#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#2: int;
  var newtype$check#3: int;

    // AddMethodImpl: TestDivModInt8, Impl$$_module.__default.TestDivModInt8
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(247,3)
    assert {:id "id535"} {:subsumption 0} b#0 != 0;
    newtype$check#2 := Div(a#0, b#0);
    assert {:id "id536"} LitInt(-128) <= newtype$check#2 && newtype$check#2 < 128;
    assume true;
    assume true;
    assert {:id "id537"} {:subsumption 0} b#0 != 0;
    newtype$check#3 := Mod(a#0, b#0);
    assert {:id "id538"} LitInt(-128) <= newtype$check#3 && newtype$check#3 < 128;
    assume true;
    assume true;
}



procedure {:verboseName "TestDivModInt16 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModInt16(a#0: int where LitInt(-32768) <= a#0 && a#0 < 32768, 
    b#0: int where LitInt(-32768) <= b#0 && b#0 < 32768, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModInt16 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModInt16(a#0: int, b#0: int, suffix#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    // AddMethodImpl: TestDivModInt16, CheckWellFormed$$_module.__default.TestDivModInt16
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := LitInt(0);
    assert {:id "id539"} LitInt(-32768) <= newtype$check#0 && newtype$check#0 < 32768;
    assume {:id "id540"} b#0 != 0;
    newtype$check#1 := LitInt(-32767);
    assert {:id "id541"} LitInt(-32768) <= newtype$check#1 && newtype$check#1 < 32768;
    assume {:id "id542"} LitInt(-32767) <= a#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "TestDivModInt16 (call)"} Call$$_module.__default.TestDivModInt16(a#0: int where LitInt(-32768) <= a#0 && a#0 < 32768, 
    b#0: int where LitInt(-32768) <= b#0 && b#0 < 32768, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  // user-defined preconditions
  requires {:id "id543"} b#0 != 0;
  requires {:id "id544"} LitInt(-32767) <= a#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestDivModInt16 (correctness)"} Impl$$_module.__default.TestDivModInt16(a#0: int where LitInt(-32768) <= a#0 && a#0 < 32768, 
    b#0: int where LitInt(-32768) <= b#0 && b#0 < 32768, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id545"} b#0 != 0;
  requires {:id "id546"} LitInt(-32767) <= a#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModInt16 (correctness)"} Impl$$_module.__default.TestDivModInt16(a#0: int, b#0: int, suffix#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#2: int;
  var newtype$check#3: int;

    // AddMethodImpl: TestDivModInt16, Impl$$_module.__default.TestDivModInt16
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(250,3)
    assert {:id "id547"} {:subsumption 0} b#0 != 0;
    newtype$check#2 := Div(a#0, b#0);
    assert {:id "id548"} LitInt(-32768) <= newtype$check#2 && newtype$check#2 < 32768;
    assume true;
    assume true;
    assert {:id "id549"} {:subsumption 0} b#0 != 0;
    newtype$check#3 := Mod(a#0, b#0);
    assert {:id "id550"} LitInt(-32768) <= newtype$check#3 && newtype$check#3 < 32768;
    assume true;
    assume true;
}



procedure {:verboseName "TestDivModInt32 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModInt32(a#0: int where LitInt(-2147483648) <= a#0 && a#0 < 2147483648, 
    b#0: int where LitInt(-2147483648) <= b#0 && b#0 < 2147483648, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModInt32 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModInt32(a#0: int, b#0: int, suffix#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    // AddMethodImpl: TestDivModInt32, CheckWellFormed$$_module.__default.TestDivModInt32
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := LitInt(0);
    assert {:id "id551"} LitInt(-2147483648) <= newtype$check#0 && newtype$check#0 < 2147483648;
    assume {:id "id552"} b#0 != 0;
    newtype$check#1 := LitInt(-2147483647);
    assert {:id "id553"} LitInt(-2147483648) <= newtype$check#1 && newtype$check#1 < 2147483648;
    assume {:id "id554"} LitInt(-2147483647) <= a#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "TestDivModInt32 (call)"} Call$$_module.__default.TestDivModInt32(a#0: int where LitInt(-2147483648) <= a#0 && a#0 < 2147483648, 
    b#0: int where LitInt(-2147483648) <= b#0 && b#0 < 2147483648, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  // user-defined preconditions
  requires {:id "id555"} b#0 != 0;
  requires {:id "id556"} LitInt(-2147483647) <= a#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestDivModInt32 (correctness)"} Impl$$_module.__default.TestDivModInt32(a#0: int where LitInt(-2147483648) <= a#0 && a#0 < 2147483648, 
    b#0: int where LitInt(-2147483648) <= b#0 && b#0 < 2147483648, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id557"} b#0 != 0;
  requires {:id "id558"} LitInt(-2147483647) <= a#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModInt32 (correctness)"} Impl$$_module.__default.TestDivModInt32(a#0: int, b#0: int, suffix#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#2: int;
  var newtype$check#3: int;

    // AddMethodImpl: TestDivModInt32, Impl$$_module.__default.TestDivModInt32
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(253,3)
    assert {:id "id559"} {:subsumption 0} b#0 != 0;
    newtype$check#2 := Div(a#0, b#0);
    assert {:id "id560"} LitInt(-2147483648) <= newtype$check#2 && newtype$check#2 < 2147483648;
    assume true;
    assume true;
    assert {:id "id561"} {:subsumption 0} b#0 != 0;
    newtype$check#3 := Mod(a#0, b#0);
    assert {:id "id562"} LitInt(-2147483648) <= newtype$check#3 && newtype$check#3 < 2147483648;
    assume true;
    assume true;
}



procedure {:verboseName "TestDivModInt64 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModInt64(a#0: int where LitInt(-9223372036854775808) <= a#0 && a#0 < 9223372036854775808, 
    b#0: int where LitInt(-9223372036854775808) <= b#0 && b#0 < 9223372036854775808, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModInt64 (well-formedness)"} CheckWellFormed$$_module.__default.TestDivModInt64(a#0: int, b#0: int, suffix#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    // AddMethodImpl: TestDivModInt64, CheckWellFormed$$_module.__default.TestDivModInt64
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := LitInt(0);
    assert {:id "id563"} LitInt(-9223372036854775808) <= newtype$check#0
       && newtype$check#0 < 9223372036854775808;
    assume {:id "id564"} b#0 != 0;
    newtype$check#1 := LitInt(-9223372036854775807);
    assert {:id "id565"} LitInt(-9223372036854775808) <= newtype$check#1
       && newtype$check#1 < 9223372036854775808;
    assume {:id "id566"} LitInt(-9223372036854775807) <= a#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "TestDivModInt64 (call)"} Call$$_module.__default.TestDivModInt64(a#0: int where LitInt(-9223372036854775808) <= a#0 && a#0 < 9223372036854775808, 
    b#0: int where LitInt(-9223372036854775808) <= b#0 && b#0 < 9223372036854775808, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  // user-defined preconditions
  requires {:id "id567"} b#0 != 0;
  requires {:id "id568"} LitInt(-9223372036854775807) <= a#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestDivModInt64 (correctness)"} Impl$$_module.__default.TestDivModInt64(a#0: int where LitInt(-9223372036854775808) <= a#0 && a#0 < 9223372036854775808, 
    b#0: int where LitInt(-9223372036854775808) <= b#0 && b#0 < 9223372036854775808, 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id569"} b#0 != 0;
  requires {:id "id570"} LitInt(-9223372036854775807) <= a#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDivModInt64 (correctness)"} Impl$$_module.__default.TestDivModInt64(a#0: int, b#0: int, suffix#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#2: int;
  var newtype$check#3: int;

    // AddMethodImpl: TestDivModInt64, Impl$$_module.__default.TestDivModInt64
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(256,3)
    assert {:id "id571"} {:subsumption 0} b#0 != 0;
    newtype$check#2 := Div(a#0, b#0);
    assert {:id "id572"} LitInt(-9223372036854775808) <= newtype$check#2
       && newtype$check#2 < 9223372036854775808;
    assume true;
    assume true;
    assert {:id "id573"} {:subsumption 0} b#0 != 0;
    newtype$check#3 := Mod(a#0, b#0);
    assert {:id "id574"} LitInt(-9223372036854775808) <= newtype$check#3
       && newtype$check#3 < 9223372036854775808;
    assume true;
    assume true;
}



procedure {:verboseName "DivModReal (well-formedness)"} CheckWellFormed$$_module.__default.DivModReal(dividend#0: real, divisor#0: real);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DivModReal (call)"} Call$$_module.__default.DivModReal(dividend#0: real, divisor#0: real);
  // user-defined preconditions
  requires {:id "id576"} divisor#0 != 0e0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DivModReal (correctness)"} Impl$$_module.__default.DivModReal(dividend#0: real, divisor#0: real) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id577"} divisor#0 != 0e0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DivModReal (correctness)"} Impl$$_module.__default.DivModReal(dividend#0: real, divisor#0: real) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var quotient#0: real;

    // AddMethodImpl: DivModReal, Impl$$_module.__default.DivModReal
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(262,16)
    assume true;
    assert {:id "id578"} divisor#0 != 0e0;
    assume true;
    quotient#0 := dividend#0 / divisor#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(263,3)
    assume true;
    assert {:id "id580"} quotient#0 * divisor#0 == dividend#0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(264,3)
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "PrintReals (well-formedness)"} CheckWellFormed$$_module.__default.PrintReals();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintReals (call)"} Call$$_module.__default.PrintReals();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintReals (correctness)"} Impl$$_module.__default.PrintReals() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintReals (correctness)"} Impl$$_module.__default.PrintReals() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var r##0: real;
  var r##1: real;
  var r#0: real;
  var r##2: real;
  var r##3: real;
  var r##4: real;
  var r##5: real;
  var r##6: real;
  var r##7: real;
  var r##8: real;
  var r##9: real;
  var r##10: real;
  var r##11: real;
  var r##12: real;
  var r##13: real;
  var r##14: real;
  var r##15: real;
  var r##16: real;
  var r##17: real;
  var r##18: real;
  var r##19: real;
  var r##20: real;
  var r##21: real;

    // AddMethodImpl: PrintReals, Impl$$_module.__default.PrintReals
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(269,4)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##0 := LitReal(0e0);
    call {:id "id581"} Call$$_module.__default.P(r##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(270,4)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##1 := LitReal(2e-1 + 4e-1 - 6e-1);
    call {:id "id582"} Call$$_module.__default.P(r##1);
    // TrCallStmt: After ProcessCallStmt
    havoc r#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(272,4)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##2 := r#0;
    call {:id "id583"} Call$$_module.__default.P(r##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(273,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(276,4)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##3 := LitReal(12e1);
    call {:id "id584"} Call$$_module.__default.P(r##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(277,4)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##4 := LitReal(12e1);
    call {:id "id585"} Call$$_module.__default.P(r##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(278,4)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id586"} LitReal(3e0) != 0e0;
    assert {:id "id587"} LitReal(3e0) != 0e0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##5 := LitReal(2e1 / 3e0 + 4e0 / 3e0);
    call {:id "id588"} Call$$_module.__default.P(r##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(279,4)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id589"} LitReal(3e0) != 0e0;
    assert {:id "id590"} LitReal(3e0) != 0e0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##6 := LitReal(0e0 - (2e1 / 3e0 + 4e0 / 3e0));
    call {:id "id591"} Call$$_module.__default.P(r##6);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(280,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(283,4)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##7 := LitReal(1234567e-4);
    call {:id "id592"} Call$$_module.__default.P(r##7);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(284,4)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##8 := LitReal(-1234567e-4);
    call {:id "id593"} Call$$_module.__default.P(r##8);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(285,4)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##9 := LitReal(1234e-4);
    call {:id "id594"} Call$$_module.__default.P(r##9);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(286,4)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##10 := LitReal(-1234e-4);
    call {:id "id595"} Call$$_module.__default.P(r##10);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(287,4)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id596"} LitReal(3e0) != 0e0;
    assert {:id "id597"} LitReal(3e0) != 0e0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##11 := LitReal(2e0 / 3e0 + 4e-1 / 3e0);
    call {:id "id598"} Call$$_module.__default.P(r##11);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(288,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(289,4)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##12 := LitReal(2e-1);
    call {:id "id599"} Call$$_module.__default.P(r##12);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(290,4)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##13 := LitReal(2e-2);
    call {:id "id600"} Call$$_module.__default.P(r##13);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(291,4)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##14 := LitReal(2e-5);
    call {:id "id601"} Call$$_module.__default.P(r##14);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(292,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(293,4)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##15 := LitReal(-2e-1);
    call {:id "id602"} Call$$_module.__default.P(r##15);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(294,4)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##16 := LitReal(-2e-2);
    call {:id "id603"} Call$$_module.__default.P(r##16);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(295,4)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##17 := LitReal(-2e-5);
    call {:id "id604"} Call$$_module.__default.P(r##17);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(296,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(299,4)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id605"} LitReal(3e0) != 0e0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##18 := LitReal(2e1 / 3e0);
    call {:id "id606"} Call$$_module.__default.P(r##18);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(300,4)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id607"} LitReal(3e0) != 0e0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##19 := LitReal(-2e1 / 3e0);
    call {:id "id608"} Call$$_module.__default.P(r##19);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(301,4)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id609"} LitReal(-3e0) != 0e0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##20 := LitReal(2e1 / -3e0);
    call {:id "id610"} Call$$_module.__default.P(r##20);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(302,4)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id611"} LitReal(-3e0) != 0e0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    r##21 := LitReal(-2e1 / -3e0);
    call {:id "id612"} Call$$_module.__default.P(r##21);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(303,3)
    assume true;
}



procedure {:verboseName "P (well-formedness)"} CheckWellFormed$$_module.__default.P(r#0: real);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P (call)"} Call$$_module.__default.P(r#0: real);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "P (correctness)"} Impl$$_module.__default.P(r#0: real) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SimpleReality (well-formedness)"} CheckWellFormed$$_module.__default.SimpleReality();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SimpleReality (call)"} Call$$_module.__default.SimpleReality();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SimpleReality (correctness)"} Impl$$_module.__default.SimpleReality() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SimpleReality (correctness)"} Impl$$_module.__default.SimpleReality() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var r#0: real;
  var z#0: real;
  var s#0: real;
  var t#0: real;
  var u#0: real;

    // AddMethodImpl: SimpleReality, Impl$$_module.__default.SimpleReality
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc r#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(312,9)
    assume true;
    assume true;
    z#0 := r#0 - r#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(313,9)
    assume true;
    assume true;
    s#0 := LitReal(81e-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(314,9)
    assume true;
    assume true;
    t#0 := 2e0 * s#0 + z#0 - s#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(315,9)
    assume true;
    assert {:id "id616"} t#0 != 0e0;
    assume true;
    u#0 := s#0 / t#0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(316,3)
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
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(317,3)
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "BitVectorTests (well-formedness)"} CheckWellFormed$$_module.__default.BitVectorTests();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BitVectorTests (call)"} Call$$_module.__default.BitVectorTests();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "BitVectorTests (correctness)"} Impl$$_module.__default.BitVectorTests() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BitVectorTests (correctness)"} Impl$$_module.__default.BitVectorTests() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Bv0 where 0 == a#0;
  var b#0: bv1;
  var c#0: bv2;
  var d#0: bv7;
  var e#0: bv8;
  var f#0: bv15;
  var g#0: bv16;
  var h#0: bv53;
  var i#0: bv100;
  var $rhs#0: Bv0;
  var $rhs#1: bv2;
  var $rhs#2: bv53;
  var $rhs#3: bv100;
  var $rhs#4: Bv0;
  var $rhs#5: bv2;
  var $rhs#6: bv53;
  var $rhs#7: bv100;
  var $rhs#8: Bv0;
  var $rhs#9: bv2;
  var $rhs#10: bv53;
  var $rhs#11: bv100;

    // AddMethodImpl: BitVectorTests, Impl$$_module.__default.BitVectorTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(321,14)
    assume true;
    assume true;
    a#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(322,14)
    assume true;
    assume true;
    b#0 := Lit(0bv1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(323,14)
    assume true;
    assume true;
    c#0 := Lit(2bv2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(324,14)
    assume true;
    assume true;
    d#0 := Lit(2bv7);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(325,14)
    assume true;
    assume true;
    e#0 := Lit(2bv8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(326,15)
    assume true;
    assume true;
    f#0 := Lit(2bv15);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(327,15)
    assume true;
    assume true;
    g#0 := Lit(2bv16);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(328,15)
    assume true;
    assume true;
    h#0 := Lit(2bv53);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(329,16)
    assume true;
    assume true;
    i#0 := Lit(2bv100);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(330,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(331,14)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := add_bv0(a#0, a#0);
    assume true;
    $rhs#1 := add_bv2(c#0, 1bv2);
    assume true;
    $rhs#2 := mul_bv53(3bv53, h#0);
    assume true;
    $rhs#3 := mul_bv100(i#0, 23bv100);
    a#0 := $rhs#0;
    c#0 := $rhs#1;
    h#0 := $rhs#2;
    i#0 := $rhs#3;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(332,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(333,14)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#4 := mul_bv0(a#0, a#0);
    assume true;
    $rhs#5 := mul_bv2(c#0, c#0);
    assume true;
    $rhs#6 := mul_bv53(h#0, h#0);
    assume true;
    $rhs#7 := mul_bv100(i#0, i#0);
    a#0 := $rhs#4;
    c#0 := $rhs#5;
    h#0 := $rhs#6;
    i#0 := $rhs#7;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(334,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(335,14)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#8 := sub_bv0(a#0, a#0);
    assume true;
    $rhs#9 := sub_bv2(c#0, c#0);
    assume true;
    $rhs#10 := sub_bv53(h#0, h#0);
    assume true;
    $rhs#11 := sub_bv100(i#0, i#0);
    a#0 := $rhs#8;
    c#0 := $rhs#9;
    h#0 := $rhs#10;
    i#0 := $rhs#11;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(336,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(338,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id651"} Call$$_module.__default.NativeBv32();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(339,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id652"} Call$$_module.__default.NativeBv53();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "NativeBv32 (well-formedness)"} CheckWellFormed$$_module.__default.NativeBv32();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NativeBv32 (call)"} Call$$_module.__default.NativeBv32();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NativeBv32 (correctness)"} Impl$$_module.__default.NativeBv32() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NativeBv32 (correctness)"} Impl$$_module.__default.NativeBv32() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: bv32;
  var y#0: bv32;
  var z#0: bv32;
  var w0#0: bv32;
  var w1#0: bv32;

    // AddMethodImpl: NativeBv32, Impl$$_module.__default.NativeBv32
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(343,15)
    assume true;
    assume true;
    x#0 := Lit(0bv32);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(344,15)
    assume true;
    assume true;
    y#0 := Lit(15bv32);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(345,5)
    assume true;
    assume true;
    x#0 := add_bv32(sub_bv32(add_bv32(add_bv32(x#0, y#0), y#0), x#0), 1bv32);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(346,5)
    assume true;
    assert {:id "id656"} y#0 != 0bv32;
    assume true;
    y#0 := div_bv32(x#0, y#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(347,5)
    assume true;
    assume true;
    x#0 := sub_bv32(x#0, y#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(348,15)
    assume true;
    assume true;
    z#0 := Lit(17bv32);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(349,5)
    assume true;
    assert {:id "id660"} Lit(3bv32) != 0bv32;
    assume true;
    z#0 := mod_bv32(z#0, 3bv32);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(350,16)
    assume true;
    assume true;
    w0#0 := Lit(sub_bv32(0bv32, 13bv32));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(351,10)
    assume true;
    assume true;
    w1#0 := add_bv32(w0#0, 15bv32);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(352,3)
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



procedure {:verboseName "NativeBv53 (well-formedness)"} CheckWellFormed$$_module.__default.NativeBv53();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NativeBv53 (call)"} Call$$_module.__default.NativeBv53();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NativeBv53 (correctness)"} Impl$$_module.__default.NativeBv53() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NativeBv53 (correctness)"} Impl$$_module.__default.NativeBv53() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: bv53;
  var y#0: bv53;
  var z#0: bv53;
  var w0#0: bv53;
  var w1#0: bv53;

    // AddMethodImpl: NativeBv53, Impl$$_module.__default.NativeBv53
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(356,15)
    assume true;
    assume true;
    x#0 := Lit(0bv53);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(357,15)
    assume true;
    assume true;
    y#0 := Lit(15bv53);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(358,5)
    assume true;
    assume true;
    x#0 := add_bv53(sub_bv53(add_bv53(add_bv53(x#0, y#0), y#0), x#0), 1bv53);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(359,5)
    assume true;
    assert {:id "id667"} y#0 != 0bv53;
    assume true;
    y#0 := div_bv53(x#0, y#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(360,5)
    assume true;
    assume true;
    x#0 := sub_bv53(x#0, y#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(361,15)
    assume true;
    assume true;
    z#0 := Lit(17bv53);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(362,5)
    assume true;
    assert {:id "id671"} Lit(3bv53) != 0bv53;
    assume true;
    z#0 := mod_bv53(z#0, 3bv53);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(363,16)
    assume true;
    assume true;
    w0#0 := Lit(sub_bv53(0bv53, 13bv53));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(364,10)
    assume true;
    assume true;
    w1#0 := add_bv53(w0#0, 15bv53);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(365,3)
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



procedure {:verboseName "MoreBvTests (well-formedness)"} CheckWellFormed$$_module.__default.MoreBvTests();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MoreBvTests (call)"} Call$$_module.__default.MoreBvTests();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MoreBvTests (correctness)"} Impl$$_module.__default.MoreBvTests() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.MyBv() : Ty
uses {
// Tclass._module.MyBv Tag
axiom Tag(Tclass._module.MyBv()) == Tagclass._module.MyBv
   && TagFamily(Tclass._module.MyBv()) == tytagFamily$MyBv;
}

const unique Tagclass._module.MyBv: TyTag;

// Box/unbox axiom for Tclass._module.MyBv
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyBv()) } 
  $IsBox(bx, Tclass._module.MyBv())
     ==> $Box($Unbox(bx): bv4) == bx && $Is($Unbox(bx): bv4, Tclass._module.MyBv()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MoreBvTests (correctness)"} Impl$$_module.__default.MoreBvTests() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var u#0: Bv0 where 0 == u#0;
  var w#0: bv32;
  var B#0: bv100;
  var m#0: bv4 where le_bv4(2bv4, m#0) && lt_bv4(m#0, 10bv4);
  var $rhs#0: Bv0;
  var $rhs#1: bv32;
  var $rhs#2: bv100;
  var $rhs#3: bv4;
  var $rhs#4: Bv0;
  var $rhs#5: bv32;
  var $rhs#6: bv100;
  var $rhs#7: bv4;
  var $rhs#8: Bv0;
  var $rhs#9: bv32;
  var $rhs#10: bv100;
  var $rhs#11: bv4;
  var newtype$check#0: bv4;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var newtype$check#4: int;
  var B'#0: bv100;

    // AddMethodImpl: MoreBvTests, Impl$$_module.__default.MoreBvTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc u#0 /* where 0 == u#0 */;
    havoc w#0;
    havoc B#0;
    havoc m#0 /* where le_bv4(2bv4, m#0) && lt_bv4(m#0, 10bv4) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(375,5)
    assume true;
    assume true;
    u#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(376,5)
    assume true;
    assume true;
    w#0 := Lit(0bv32);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(377,5)
    assume true;
    assume true;
    B#0 := Lit(0bv100);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(378,5)
    assume true;
    assert {:id "id678"} $Is(Lit(9bv4), Tclass._module.MyBv());
    assume true;
    m#0 := Lit(9bv4);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(379,5)
    assume true;
    assume true;
    u#0 := add_bv0(u#0, and_bv0(u#0, u#0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(380,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(381,14)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := or_bv0(u#0, 0);
    assume true;
    $rhs#1 := or_bv32(w#0, 0bv32);
    assume true;
    $rhs#2 := or_bv100(B#0, 0bv100);
    assert {:id "id684"} $Is(or_bv4(m#0, 0bv4), Tclass._module.MyBv());
    assume true;
    $rhs#3 := or_bv4(m#0, 0bv4);
    u#0 := $rhs#0;
    w#0 := $rhs#1;
    B#0 := $rhs#2;
    m#0 := $rhs#3;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(382,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(383,14)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#4 := xor_bv0(u#0, 0);
    assume true;
    $rhs#5 := xor_bv32(w#0, 0bv32);
    assume true;
    $rhs#6 := xor_bv100(B#0, 0bv100);
    assert {:id "id693"} $Is(xor_bv4(m#0, 0bv4), Tclass._module.MyBv());
    assume true;
    $rhs#7 := xor_bv4(m#0, 0bv4);
    u#0 := $rhs#4;
    w#0 := $rhs#5;
    B#0 := $rhs#6;
    m#0 := $rhs#7;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(384,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(385,14)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#8 := not_bv0(u#0);
    assume true;
    $rhs#9 := not_bv32(w#0);
    assume true;
    $rhs#10 := not_bv100(B#0);
    newtype$check#0 := not_bv4(m#0);
    assert {:id "id702"} le_bv4(2bv4, newtype$check#0) && lt_bv4(newtype$check#0, 10bv4);
    assume true;
    $rhs#11 := not_bv4(m#0);
    u#0 := $rhs#8;
    w#0 := $rhs#9;
    B#0 := $rhs#10;
    m#0 := $rhs#11;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(386,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(388,5)
    assume true;
    assume true;
    B#0 := Lit(32bv100);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(389,5)
    assume true;
    newtype$check#1 := LitInt(2);
    assert {:id "id709"} 0 <= newtype$check#1 && newtype$check#1 < 128;
    assert {:id "id710"} le_bv7(2bv7, 100bv7);
    assume true;
    B#0 := LeftShift_bv100(B#0, (0bv93 ++ 2bv7): bv100);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(390,5)
    assume true;
    newtype$check#2 := LitInt(4);
    assert {:id "id712"} 0 <= newtype$check#2 && newtype$check#2 < 128;
    assert {:id "id713"} le_bv7(4bv7, 100bv7);
    assume true;
    B#0 := RightShift_bv100(B#0, (0bv93 ++ 4bv7): bv100);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(391,5)
    assume true;
    assert {:id "id715"} $Is(Lit(2bv4), Tclass._module.MyBv());
    assume true;
    m#0 := Lit(2bv4);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(392,5)
    assume true;
    newtype$check#3 := LitInt(2);
    assert {:id "id717"} 0 <= newtype$check#3 && newtype$check#3 < 8;
    assert {:id "id718"} le_bv3(2bv3, 4bv3);
    assert {:id "id719"} $Is(LeftShift_bv4(m#0, (0bv1 ++ 2bv3): bv4), Tclass._module.MyBv());
    assume true;
    m#0 := LeftShift_bv4(m#0, (0bv1 ++ 2bv3): bv4);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(393,5)
    assume true;
    newtype$check#4 := LitInt(1);
    assert {:id "id721"} 0 <= newtype$check#4 && newtype$check#4 < 8;
    assert {:id "id722"} le_bv3(1bv3, 4bv3);
    assert {:id "id723"} $Is(RightShift_bv4(m#0, (0bv1 ++ 1bv3): bv4), Tclass._module.MyBv());
    assume true;
    m#0 := RightShift_bv4(m#0, (0bv1 ++ 1bv3): bv4);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(394,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(396,5)
    assume true;
    assume true;
    B#0 := Lit(or_bv100(32bv100, 4bv100));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(397,5)
    assume true;
    assert {:id "id726"} 0 <= LitInt(99);
    assert {:id "id727"} LitInt(99) <= 100;
    assume true;
    B#0 := LeftRotate_bv100(B#0, 99bv100);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(398,10)
    assume true;
    assume true;
    B'#0 := B#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(399,5)
    assume true;
    assert {:id "id730"} 0 <= LitInt(98);
    assert {:id "id731"} LitInt(98) <= 100;
    assume true;
    B#0 := RightRotate_bv100(B#0, 98bv100);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(400,5)
    assume true;
    assert {:id "id733"} $Is(Lit(2bv4), Tclass._module.MyBv());
    assume true;
    m#0 := Lit(2bv4);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(401,5)
    assume true;
    assert {:id "id735"} 0 <= LitInt(2);
    assert {:id "id736"} LitInt(2) <= 4;
    assert {:id "id737"} $Is(LeftRotate_bv4(m#0, 2bv4), Tclass._module.MyBv());
    assume true;
    m#0 := LeftRotate_bv4(m#0, 2bv4);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(402,5)
    assume true;
    assert {:id "id739"} 0 <= LitInt(1);
    assert {:id "id740"} LitInt(1) <= 4;
    assert {:id "id741"} $Is(RightRotate_bv4(m#0, 1bv4), Tclass._module.MyBv());
    assume true;
    m#0 := RightRotate_bv4(m#0, 1bv4);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(403,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(405,5)
    assume true;
    assert {:id "id743"} 0 <= LitInt(0);
    assert {:id "id744"} LitInt(0) <= 0;
    assert {:id "id745"} 0 <= LitInt(0);
    assert {:id "id746"} LitInt(0) <= 0;
    assume true;
    u#0 := RightRotate_bv0(LeftRotate_bv0(u#0, 0), 0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(406,3)
    assume true;
    assume true;
}



procedure {:verboseName "NativeTypeTest (well-formedness)"} CheckWellFormed$$_module.__default.NativeTypeTest();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NativeTypeTest (call)"} Call$$_module.__default.NativeTypeTest();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NativeTypeTest (correctness)"} Impl$$_module.__default.NativeTypeTest() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NativeTypeTest (correctness)"} Impl$$_module.__default.NativeTypeTest() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int where LitInt(-100) <= a#0 && a#0 < 68719476736;
  var b#0: int where LitInt(-100) <= b#0 && b#0 < 68719476736;
  var $rhs#0: int;
  var newtype$check#0: int;
  var $rhs#1: int;
  var newtype$check#1: int;
  var r0#0: int where LitInt(-100) <= r0#0 && r0#0 < 68719476736;
  var $rhs##0: int;
  var m##0: int;
  var n##0: int;
  var r1#0: int where LitInt(-100) <= r1#0 && r1#0 < 68719476736;
  var $rhs##1: int;
  var m##1: int;
  var n##1: int;
  var r2#0: int where LitInt(-100) <= r2#0 && r2#0 < 68719476736;
  var $rhs##2: int;
  var m##2: int;
  var newtype$check#2: int;
  var n##2: int;

    // AddMethodImpl: NativeTypeTest, Impl$$_module.__default.NativeTypeTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(412,12)
    assume true;
    assume true;
    newtype$check#0 := LitInt(200);
    assert {:id "id748"} LitInt(-100) <= newtype$check#0 && newtype$check#0 < 68719476736;
    assume true;
    $rhs#0 := LitInt(200);
    newtype$check#1 := LitInt(300);
    assert {:id "id750"} LitInt(-100) <= newtype$check#1 && newtype$check#1 < 68719476736;
    assume true;
    $rhs#1 := LitInt(300);
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(413,14)
    assume true;
    // TrCallStmt: Adding lhs with type NativeType
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := b#0;
    call {:id "id754"} $rhs##0 := Call$$_module.__default.M(m##0, n##0);
    // TrCallStmt: After ProcessCallStmt
    r0#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(414,14)
    assume true;
    // TrCallStmt: Adding lhs with type NativeType
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##1 := b#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##1 := a#0;
    call {:id "id756"} $rhs##1 := Call$$_module.__default.M(m##1, n##1);
    // TrCallStmt: After ProcessCallStmt
    r1#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(415,14)
    assume true;
    // TrCallStmt: Adding lhs with type NativeType
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#2 := LitInt(-2);
    assert {:id "id758"} LitInt(-100) <= newtype$check#2 && newtype$check#2 < 68719476736;
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##2 := LitInt(-2);
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##2 := b#0;
    call {:id "id759"} $rhs##2 := Call$$_module.__default.M(m##2, n##2);
    // TrCallStmt: After ProcessCallStmt
    r2#0 := $rhs##2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(416,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(417,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "M (well-formedness)"} CheckWellFormed$$_module.__default.M(m#0: int where LitInt(-100) <= m#0 && m#0 < 68719476736, 
    n#0: int where LitInt(-100) <= n#0 && n#0 < 68719476736)
   returns (r#0: int where LitInt(-100) <= r#0 && r#0 < 68719476736);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M (call)"} Call$$_module.__default.M(m#0: int where LitInt(-100) <= m#0 && m#0 < 68719476736, 
    n#0: int where LitInt(-100) <= n#0 && n#0 < 68719476736)
   returns (r#0: int where LitInt(-100) <= r#0 && r#0 < 68719476736);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M (correctness)"} Impl$$_module.__default.M(m#0: int where LitInt(-100) <= m#0 && m#0 < 68719476736, 
    n#0: int where LitInt(-100) <= n#0 && n#0 < 68719476736)
   returns (r#0: int where LitInt(-100) <= r#0 && r#0 < 68719476736, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M (correctness)"} Impl$$_module.__default.M(m#0: int, n#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#0_0: int;
  var newtype$check#1_0_0: int;
  var newtype$check#1_1_0: int;

    // AddMethodImpl: M, Impl$$_module.__default.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(421,3)
    newtype$check#0 := LitInt(0);
    assert {:id "id761"} LitInt(-100) <= newtype$check#0 && newtype$check#0 < 68719476736;
    if (0 <= m#0)
    {
        newtype$check#1 := LitInt(0);
        assert {:id "id762"} LitInt(-100) <= newtype$check#1 && newtype$check#1 < 68719476736;
    }

    assume true;
    if (m#0 < 0 || n#0 < 0)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(422,7)
        assume true;
        newtype$check#0_0 := LitInt(18);
        assert {:id "id763"} LitInt(-100) <= newtype$check#0_0 && newtype$check#0_0 < 68719476736;
        assume true;
        r#0 := LitInt(18);
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(423,10)
        assume true;
        if (m#0 < n#0)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(424,7)
            assume true;
            newtype$check#1_0_0 := n#0 - m#0;
            assert {:id "id765"} LitInt(-100) <= newtype$check#1_0_0 && newtype$check#1_0_0 < 68719476736;
            assume true;
            r#0 := n#0 - m#0;
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(426,7)
            assume true;
            newtype$check#1_1_0 := m#0 - n#0;
            assert {:id "id767"} LitInt(-100) <= newtype$check#1_1_0 && newtype$check#1_1_0 < 68719476736;
            assume true;
            r#0 := m#0 - n#0;
        }
    }
}



procedure {:verboseName "NewTypeTest (well-formedness)"} CheckWellFormed$$_module.__default.NewTypeTest();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NewTypeTest (call)"} Call$$_module.__default.NewTypeTest();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NewTypeTest (correctness)"} Impl$$_module.__default.NewTypeTest() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.NewType() : Ty
uses {
// Tclass._module.NewType Tag
axiom Tag(Tclass._module.NewType()) == Tagclass._module.NewType
   && TagFamily(Tclass._module.NewType()) == tytagFamily$NewType;
}

const unique Tagclass._module.NewType: TyTag;

// Box/unbox axiom for Tclass._module.NewType
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NewType()) } 
  $IsBox(bx, Tclass._module.NewType())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.NewType()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NewTypeTest (correctness)"} Impl$$_module.__default.NewTypeTest() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#Z#0: int;
  var let#0#0#0: int;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var n#Z#1: int;
  var let#1#0#0: int;
  var newtype$check#3: int;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var n#Z#2: int;
  var let#2#0#0: int;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var newtype$check#8: int;
  var n#Z#3: int;
  var let#3#0#0: int;
  var newtype$check#9: int;
  var newtype$check#10: int;
  var newtype$check#11: int;

    // AddMethodImpl: NewTypeTest, Impl$$_module.__default.NewTypeTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(433,3)
    havoc n#Z#0;
    newtype$check#0 := LitInt(-4);
    assert {:id "id769"} Lit(true);
    newtype$check#1 := LitInt(-2);
    assert {:id "id770"} Lit(true);
    assert {:id "id771"} {:subsumption 0} LitInt(-2) != 0;
    newtype$check#2 := LitInt(Div(-4, LitInt(-2)));
    assert {:id "id772"} Lit(true);
    assume {:id "id773"} let#0#0#0 == LitInt(Div(-4, LitInt(-2)));
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass._module.NewType());
    assume {:id "id774"} n#Z#0 == let#0#0#0;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(434,3)
    havoc n#Z#1;
    newtype$check#3 := LitInt(4);
    assert {:id "id775"} Lit(true);
    newtype$check#4 := LitInt(-2);
    assert {:id "id776"} Lit(true);
    assert {:id "id777"} {:subsumption 0} LitInt(-2) != 0;
    newtype$check#5 := LitInt(Div(4, LitInt(-2)));
    assert {:id "id778"} Lit(true);
    assume {:id "id779"} let#1#0#0 == LitInt(Div(4, LitInt(-2)));
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#1#0#0, Tclass._module.NewType());
    assume {:id "id780"} n#Z#1 == let#1#0#0;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(435,3)
    havoc n#Z#2;
    newtype$check#6 := LitInt(-4);
    assert {:id "id781"} Lit(true);
    newtype$check#7 := LitInt(2);
    assert {:id "id782"} Lit(true);
    assert {:id "id783"} {:subsumption 0} LitInt(2) != 0;
    newtype$check#8 := LitInt(Div(-4, LitInt(2)));
    assert {:id "id784"} Lit(true);
    assume {:id "id785"} let#2#0#0 == LitInt(Div(-4, LitInt(2)));
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#2#0#0, Tclass._module.NewType());
    assume {:id "id786"} n#Z#2 == let#2#0#0;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(436,3)
    havoc n#Z#3;
    newtype$check#9 := LitInt(4);
    assert {:id "id787"} Lit(true);
    newtype$check#10 := LitInt(2);
    assert {:id "id788"} Lit(true);
    assert {:id "id789"} {:subsumption 0} LitInt(2) != 0;
    newtype$check#11 := LitInt(Div(4, LitInt(2)));
    assert {:id "id790"} Lit(true);
    assume {:id "id791"} let#3#0#0 == LitInt(Div(4, LitInt(2)));
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#3#0#0, Tclass._module.NewType());
    assume {:id "id792"} n#Z#3 == let#3#0#0;
    assume true;
    assume true;
}



procedure {:verboseName "OrdinalTests (well-formedness)"} CheckWellFormed$$_module.__default.OrdinalTests();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OrdinalTests (call)"} Call$$_module.__default.OrdinalTests();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OrdinalTests (correctness)"} Impl$$_module.__default.OrdinalTests() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OrdinalTests (correctness)"} Impl$$_module.__default.OrdinalTests() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var o##0: Box;
  var o##1: Box;
  var o##2: Box;

    // AddMethodImpl: OrdinalTests, Impl$$_module.__default.OrdinalTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(440,19)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##0 := Lit(ORD#FromNat(0));
    call {:id "id793"} Call$$_module.__default.PrintOrdinalInfo(o##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(441,19)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##1 := Lit(ORD#FromNat(1));
    call {:id "id794"} Call$$_module.__default.PrintOrdinalInfo(o##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(442,19)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##2 := Lit(ORD#FromNat(42));
    call {:id "id795"} Call$$_module.__default.PrintOrdinalInfo(o##2);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "PrintOrdinalInfo (well-formedness)"} CheckWellFormed$$_module.__default.PrintOrdinalInfo(o#0: Box);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintOrdinalInfo (call)"} Call$$_module.__default.PrintOrdinalInfo(o#0: Box);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintOrdinalInfo (correctness)"} Impl$$_module.__default.PrintOrdinalInfo(o#0: Box) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ZeroComparisonTests (well-formedness)"} CheckWellFormed$$_module.__default.ZeroComparisonTests();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZeroComparisonTests (call)"} Call$$_module.__default.ZeroComparisonTests();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ZeroComparisonTests (correctness)"} Impl$$_module.__default.ZeroComparisonTests() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZeroComparisonTests (correctness)"} Impl$$_module.__default.ZeroComparisonTests() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n##0: int;
  var n##1: int;
  var n##2: int;
  var n##3: int;
  var n##4: int;
  var newtype$check#0: int;
  var n##5: int;
  var newtype$check#1: int;
  var n##6: int;
  var newtype$check#2: int;
  var n##7: int;
  var newtype$check#3: int;

    // AddMethodImpl: ZeroComparisonTests, Impl$$_module.__default.ZeroComparisonTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(454,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(455,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := LitInt(-42);
    call {:id "id796"} Call$$_module.__default.ZCIntTests(n##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(456,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##1 := LitInt(0);
    call {:id "id797"} Call$$_module.__default.ZCIntTests(n##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(457,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##2 := LitInt(0);
    call {:id "id798"} Call$$_module.__default.ZCIntTests(n##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(458,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##3 := LitInt(23);
    call {:id "id799"} Call$$_module.__default.ZCIntTests(n##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(460,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(461,20)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#0 := LitInt(-42);
    assert {:id "id800"} LitInt(-100) <= newtype$check#0 && newtype$check#0 < 68719476736;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##4 := LitInt(-42);
    call {:id "id801"} Call$$_module.__default.ZCNativeTypeTests(n##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(462,20)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#1 := LitInt(0);
    assert {:id "id802"} LitInt(-100) <= newtype$check#1 && newtype$check#1 < 68719476736;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##5 := LitInt(0);
    call {:id "id803"} Call$$_module.__default.ZCNativeTypeTests(n##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(463,20)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#2 := LitInt(0);
    assert {:id "id804"} LitInt(-100) <= newtype$check#2 && newtype$check#2 < 68719476736;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##6 := LitInt(0);
    call {:id "id805"} Call$$_module.__default.ZCNativeTypeTests(n##6);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(464,20)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#3 := LitInt(23);
    assert {:id "id806"} LitInt(-100) <= newtype$check#3 && newtype$check#3 < 68719476736;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##7 := LitInt(23);
    call {:id "id807"} Call$$_module.__default.ZCNativeTypeTests(n##7);
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for _module._default.YN
function _module.__default.YN(b#0: bool) : Seq
uses {
// consequence axiom for _module.__default.YN
axiom 0 <= $FunctionContextHeight
   ==> (forall b#0: bool :: 
    { _module.__default.YN(b#0) } 
    _module.__default.YN#canCall(b#0) || 0 < $FunctionContextHeight
       ==> $Is(_module.__default.YN(b#0), TSeq(TChar)));
// definition axiom for _module.__default.YN (revealed)
axiom {:id "id808"} 0 <= $FunctionContextHeight
   ==> (forall b#0: bool :: 
    { _module.__default.YN(b#0) } 
    _module.__default.YN#canCall(b#0) || 0 < $FunctionContextHeight
       ==> _module.__default.YN(b#0)
         == (if b#0
           then Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(89)))
           else Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(78)))));
// definition axiom for _module.__default.YN for all literals (revealed)
axiom {:id "id809"} 0 <= $FunctionContextHeight
   ==> (forall b#0: bool :: 
    {:weight 3} { _module.__default.YN(Lit(b#0)) } 
    _module.__default.YN#canCall(Lit(b#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.YN(Lit(b#0))
         == (if b#0
           then Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(89)))
           else Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(78)))));
}

function _module.__default.YN#canCall(b#0: bool) : bool;

function _module.__default.YN#requires(bool) : bool;

// #requires axiom for _module.__default.YN
axiom (forall b#0: bool :: 
  { _module.__default.YN#requires(b#0) } 
  _module.__default.YN#requires(b#0) == true);

procedure {:verboseName "YN (well-formedness)"} CheckWellformed$$_module.__default.YN(b#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZCIntTests (well-formedness)"} CheckWellFormed$$_module.__default.ZCIntTests(n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZCIntTests (call)"} Call$$_module.__default.ZCIntTests(n#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ZCIntTests (correctness)"} Impl$$_module.__default.ZCIntTests(n#0: int) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ZCNativeTypeTests (well-formedness)"} CheckWellFormed$$_module.__default.ZCNativeTypeTests(n#0: int where LitInt(-100) <= n#0 && n#0 < 68719476736);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZCNativeTypeTests (call)"} Call$$_module.__default.ZCNativeTypeTests(n#0: int where LitInt(-100) <= n#0 && n#0 < 68719476736);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ZCNativeTypeTests (correctness)"} Impl$$_module.__default.ZCNativeTypeTests(n#0: int where LitInt(-100) <= n#0 && n#0 < 68719476736)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZCNativeTypeTests (correctness)"} Impl$$_module.__default.ZCNativeTypeTests(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##b#0: bool;
  var newtype$check#0: int;
  var ##b#1: bool;
  var newtype$check#1: int;
  var ##b#2: bool;
  var newtype$check#2: int;
  var ##b#3: bool;
  var newtype$check#3: int;
  var ##b#4: bool;
  var newtype$check#4: int;
  var ##b#5: bool;
  var newtype$check#5: int;
  var ##b#6: bool;
  var newtype$check#6: int;
  var ##b#7: bool;
  var newtype$check#7: int;
  var ##b#8: bool;
  var newtype$check#8: int;
  var ##b#9: bool;
  var newtype$check#9: int;
  var ##b#10: bool;
  var newtype$check#10: int;
  var ##b#11: bool;
  var newtype$check#11: int;

    // AddMethodImpl: ZCNativeTypeTests, Impl$$_module.__default.ZCNativeTypeTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(483,3)
    assume true;
    assume true;
    assume true;
    newtype$check#0 := LitInt(0);
    assert {:id "id812"} LitInt(-100) <= newtype$check#0 && newtype$check#0 < 68719476736;
    ##b#0 := n#0 < 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume true;
    newtype$check#1 := LitInt(0);
    assert {:id "id813"} LitInt(-100) <= newtype$check#1 && newtype$check#1 < 68719476736;
    ##b#1 := n#0 <= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume true;
    newtype$check#2 := LitInt(0);
    assert {:id "id814"} LitInt(-100) <= newtype$check#2 && newtype$check#2 < 68719476736;
    ##b#2 := n#0 == LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume true;
    newtype$check#3 := LitInt(0);
    assert {:id "id815"} LitInt(-100) <= newtype$check#3 && newtype$check#3 < 68719476736;
    ##b#3 := n#0 != 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume true;
    newtype$check#4 := LitInt(0);
    assert {:id "id816"} LitInt(-100) <= newtype$check#4 && newtype$check#4 < 68719476736;
    ##b#4 := n#0 > 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume true;
    newtype$check#5 := LitInt(0);
    assert {:id "id817"} LitInt(-100) <= newtype$check#5 && newtype$check#5 < 68719476736;
    ##b#5 := n#0 >= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#5, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume true;
    newtype$check#6 := LitInt(0);
    assert {:id "id818"} LitInt(-100) <= newtype$check#6 && newtype$check#6 < 68719476736;
    ##b#6 := 0 < n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#6, TBool, $Heap);
    assume _module.__default.YN#canCall(0 < n#0);
    assume _module.__default.YN#canCall(0 < n#0);
    assume true;
    newtype$check#7 := LitInt(0);
    assert {:id "id819"} LitInt(-100) <= newtype$check#7 && newtype$check#7 < 68719476736;
    ##b#7 := LitInt(0) <= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#7, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume true;
    newtype$check#8 := LitInt(0);
    assert {:id "id820"} LitInt(-100) <= newtype$check#8 && newtype$check#8 < 68719476736;
    ##b#8 := LitInt(0) == n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#8, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume true;
    newtype$check#9 := LitInt(0);
    assert {:id "id821"} LitInt(-100) <= newtype$check#9 && newtype$check#9 < 68719476736;
    ##b#9 := 0 != n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#9, TBool, $Heap);
    assume _module.__default.YN#canCall(0 != n#0);
    assume _module.__default.YN#canCall(0 != n#0);
    assume true;
    newtype$check#10 := LitInt(0);
    assert {:id "id822"} LitInt(-100) <= newtype$check#10 && newtype$check#10 < 68719476736;
    ##b#10 := 0 > n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#10, TBool, $Heap);
    assume _module.__default.YN#canCall(0 > n#0);
    assume _module.__default.YN#canCall(0 > n#0);
    assume true;
    newtype$check#11 := LitInt(0);
    assert {:id "id823"} LitInt(-100) <= newtype$check#11 && newtype$check#11 < 68719476736;
    ##b#11 := LitInt(0) >= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#11, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume true;
}



procedure {:verboseName "TestConversions (well-formedness)"} CheckWellFormed$$_module.__default.TestConversions();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestConversions (call)"} Call$$_module.__default.TestConversions();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestConversions (correctness)"} Impl$$_module.__default.TestConversions() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestConversions (correctness)"} Impl$$_module.__default.TestConversions() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x##0: int;
  var x##1: real;
  var x##2: Box;
  var x##3: bv7;
  var x##4: int;
  var newtype$check#0: int;
  var x##5: char;

    // AddMethodImpl: TestConversions, Impl$$_module.__default.TestConversions
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(494,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(120);
    call {:id "id824"} Call$$_module.__default.ConvertFromInt(x##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(495,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitReal(12e1);
    call {:id "id825"} Call$$_module.__default.ConvertFromReal(x##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(496,21)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##2 := Lit(ORD#FromNat(120));
    call {:id "id826"} Call$$_module.__default.ConvertFromORDINAL(x##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(497,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##3 := Lit(120bv7);
    call {:id "id827"} Call$$_module.__default.ConvertFromBv(x##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(498,20)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#0 := LitInt(120);
    assert {:id "id828"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##4 := LitInt(120);
    call {:id "id829"} Call$$_module.__default.ConvertFromUInt32(x##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(499,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##5 := Lit(char#FromInt(120));
    call {:id "id830"} Call$$_module.__default.ConvertFromChar(x##5);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "ConvertFromInt (well-formedness)"} CheckWellFormed$$_module.__default.ConvertFromInt(x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ConvertFromInt (call)"} Call$$_module.__default.ConvertFromInt(x#0: int);
  // user-defined preconditions
  requires {:id "id832"} LitInt(0) <= x#0;
  requires {:id "id833"} x#0 < 128;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ConvertFromInt (correctness)"} Impl$$_module.__default.ConvertFromInt(x#0: int) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id834"} LitInt(0) <= x#0;
  requires {:id "id835"} x#0 < 128;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ConvertFromInt (correctness)"} Impl$$_module.__default.ConvertFromInt(x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var newtype$check#4: int;

    // AddMethodImpl: ConvertFromInt, Impl$$_module.__default.ConvertFromInt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(505,3)
    assume true;
    assume true;
    assume true;
    assume true;
    newtype$check#0 := x#0;
    assert {:id "id836"} 0 <= newtype$check#0;
    assume true;
    assume true;
    newtype$check#1 := x#0;
    assert {:id "id837"} 0 <= newtype$check#1 && newtype$check#1 < 128;
    assume true;
    assume true;
    newtype$check#2 := x#0;
    assert {:id "id838"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 4294967296;
    newtype$check#3 := x#0;
    assert {:id "id839"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 4294967296;
    assume true;
    assume true;
    newtype$check#4 := x#0;
    assert {:id "id840"} char#IsChar(newtype$check#4);
    assume true;
    assume true;
}



procedure {:verboseName "ConvertFromReal (well-formedness)"} CheckWellFormed$$_module.__default.ConvertFromReal(x#0: real);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ConvertFromReal (call)"} Call$$_module.__default.ConvertFromReal(x#0: real);
  // user-defined preconditions
  requires {:id "id843"} Real(_System.real.Floor(x#0)) == x#0;
  requires {:id "id844"} LitInt(0) <= _System.real.Floor(x#0);
  requires {:id "id845"} _System.real.Floor(x#0) < 128;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ConvertFromReal (correctness)"} Impl$$_module.__default.ConvertFromReal(x#0: real) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id846"} Real(_System.real.Floor(x#0)) == x#0;
  requires {:id "id847"} LitInt(0) <= _System.real.Floor(x#0);
  requires {:id "id848"} _System.real.Floor(x#0) < 128;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ConvertFromReal (correctness)"} Impl$$_module.__default.ConvertFromReal(x#0: real) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: real;
  var newtype$check#1: real;
  var newtype$check#2: real;
  var newtype$check#3: real;
  var newtype$check#4: int;
  var newtype$check#5: real;

    // AddMethodImpl: ConvertFromReal, Impl$$_module.__default.ConvertFromReal
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(512,3)
    newtype$check#0 := x#0;
    assert {:id "id849"} Real(Int(newtype$check#0)) == newtype$check#0;
    assume true;
    assume true;
    assume true;
    assume true;
    newtype$check#1 := x#0;
    assert {:id "id850"} Real(Int(newtype$check#1)) == newtype$check#1;
    assert {:id "id851"} 0 <= Int(newtype$check#1);
    assume true;
    assume true;
    newtype$check#2 := x#0;
    assert {:id "id852"} Real(Int(newtype$check#2)) == newtype$check#2;
    assert {:id "id853"} 0 <= Int(newtype$check#2) && Int(newtype$check#2) < 128;
    assume true;
    assume true;
    newtype$check#3 := x#0;
    assert {:id "id854"} Real(Int(newtype$check#3)) == newtype$check#3;
    assert {:id "id855"} LitInt(0) <= Int(newtype$check#3) && Int(newtype$check#3) < 4294967296;
    newtype$check#4 := Int(x#0);
    assert {:id "id856"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 4294967296;
    assume true;
    assume true;
    newtype$check#5 := x#0;
    assert {:id "id857"} Real(Int(newtype$check#5)) == newtype$check#5;
    assert {:id "id858"} char#IsChar(Int(newtype$check#5));
    assume true;
    assume true;
}



procedure {:verboseName "ConvertFromORDINAL (well-formedness)"} CheckWellFormed$$_module.__default.ConvertFromORDINAL(x#0: Box);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ConvertFromORDINAL (call)"} Call$$_module.__default.ConvertFromORDINAL(x#0: Box);
  // user-defined preconditions
  requires {:id "id860"} ORD#FromNat(0) == x#0 || ORD#Less(ORD#FromNat(0), x#0);
  requires {:id "id861"} ORD#Less(x#0, ORD#FromNat(128));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ConvertFromORDINAL (correctness)"} Impl$$_module.__default.ConvertFromORDINAL(x#0: Box) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id862"} ORD#FromNat(0) == x#0 || ORD#Less(ORD#FromNat(0), x#0);
  requires {:id "id863"} ORD#Less(x#0, ORD#FromNat(128));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ConvertFromORDINAL (correctness)"} Impl$$_module.__default.ConvertFromORDINAL(x#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: Box;
  var newtype$check#1: Box;
  var newtype$check#2: int;

    // AddMethodImpl: ConvertFromORDINAL, Impl$$_module.__default.ConvertFromORDINAL
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(519,3)
    newtype$check#0 := x#0;
    assert {:id "id864"} ORD#IsNat(newtype$check#0);
    assume true;
    assume true;
    newtype$check#1 := x#0;
    assert {:id "id865"} ORD#IsNat(newtype$check#1);
    assert {:id "id866"} LitInt(0) <= ORD#Offset(newtype$check#1)
       && ORD#Offset(newtype$check#1) < 4294967296;
    newtype$check#2 := ORD#Offset(x#0);
    assert {:id "id867"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 4294967296;
    assume true;
    assume true;
}



procedure {:verboseName "ConvertFromBv (well-formedness)"} CheckWellFormed$$_module.__default.ConvertFromBv(x#0: bv7);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ConvertFromBv (call)"} Call$$_module.__default.ConvertFromBv(x#0: bv7);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ConvertFromBv (correctness)"} Impl$$_module.__default.ConvertFromBv(x#0: bv7) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ConvertFromBv (correctness)"} Impl$$_module.__default.ConvertFromBv(x#0: bv7) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: bv7;
  var newtype$check#1: int;
  var newtype$check#2: bv7;

    // AddMethodImpl: ConvertFromBv, Impl$$_module.__default.ConvertFromBv
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(524,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    newtype$check#0 := x#0;
    assert {:id "id868"} LitInt(0) <= nat_from_bv7(newtype$check#0)
       && nat_from_bv7(newtype$check#0) < 4294967296;
    newtype$check#1 := nat_from_bv7(x#0);
    assert {:id "id869"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    assume true;
    assume true;
    newtype$check#2 := x#0;
    assume true;
    assume true;
}



procedure {:verboseName "ConvertFromUInt32 (well-formedness)"} CheckWellFormed$$_module.__default.ConvertFromUInt32(x#0: int where LitInt(0) <= x#0 && x#0 < 4294967296);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ConvertFromUInt32 (well-formedness)"} CheckWellFormed$$_module.__default.ConvertFromUInt32(x#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    // AddMethodImpl: ConvertFromUInt32, CheckWellFormed$$_module.__default.ConvertFromUInt32
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := LitInt(0);
    assert {:id "id870"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    if (LitInt(0) <= x#0)
    {
        newtype$check#1 := LitInt(128);
        assert {:id "id871"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    }

    assume {:id "id872"} LitInt(0) <= x#0 && x#0 < 128;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "ConvertFromUInt32 (call)"} Call$$_module.__default.ConvertFromUInt32(x#0: int where LitInt(0) <= x#0 && x#0 < 4294967296);
  // user-defined preconditions
  requires {:id "id873"} LitInt(0) <= x#0;
  requires {:id "id874"} x#0 < 128;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ConvertFromUInt32 (correctness)"} Impl$$_module.__default.ConvertFromUInt32(x#0: int where LitInt(0) <= x#0 && x#0 < 4294967296)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id875"} LitInt(0) <= x#0;
  requires {:id "id876"} x#0 < 128;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ConvertFromUInt32 (correctness)"} Impl$$_module.__default.ConvertFromUInt32(x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var newtype$check#6: int;

    // AddMethodImpl: ConvertFromUInt32, Impl$$_module.__default.ConvertFromUInt32
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(530,3)
    assume true;
    assume true;
    assume true;
    assume true;
    newtype$check#2 := x#0;
    assert {:id "id877"} 0 <= newtype$check#2;
    assume true;
    assume true;
    newtype$check#3 := x#0;
    assert {:id "id878"} 0 <= newtype$check#3 && newtype$check#3 < 128;
    assume true;
    assume true;
    newtype$check#4 := x#0;
    assert {:id "id879"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 4294967296;
    newtype$check#5 := x#0;
    assert {:id "id880"} LitInt(0) <= newtype$check#5 && newtype$check#5 < 4294967296;
    assume true;
    assume true;
    newtype$check#6 := x#0;
    assert {:id "id881"} char#IsChar(newtype$check#6);
    assume true;
    assume true;
}



procedure {:verboseName "ConvertFromChar (well-formedness)"} CheckWellFormed$$_module.__default.ConvertFromChar(x#0: char where $Is(x#0, TChar));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ConvertFromChar (well-formedness)"} CheckWellFormed$$_module.__default.ConvertFromChar(x#0: char)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    // AddMethodImpl: ConvertFromChar, CheckWellFormed$$_module.__default.ConvertFromChar
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := LitInt(0);
    assert {:id "id882"} char#IsChar(newtype$check#0);
    if (char#ToInt(char#FromInt(LitInt(0))) <= char#ToInt(x#0))
    {
        newtype$check#1 := LitInt(128);
        assert {:id "id883"} char#IsChar(newtype$check#1);
    }

    assume {:id "id884"} char#ToInt(char#FromInt(LitInt(0))) <= char#ToInt(x#0)
       && char#ToInt(x#0) < char#ToInt(char#FromInt(LitInt(128)));
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "ConvertFromChar (call)"} Call$$_module.__default.ConvertFromChar(x#0: char where $Is(x#0, TChar));
  // user-defined preconditions
  requires {:id "id885"} char#ToInt(char#FromInt(LitInt(0))) <= char#ToInt(x#0);
  requires {:id "id886"} char#ToInt(x#0) < char#ToInt(char#FromInt(LitInt(128)));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ConvertFromChar (correctness)"} Impl$$_module.__default.ConvertFromChar(x#0: char where $Is(x#0, TChar)) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id887"} char#ToInt(char#FromInt(LitInt(0))) <= char#ToInt(x#0);
  requires {:id "id888"} char#ToInt(x#0) < char#ToInt(char#FromInt(LitInt(128)));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ConvertFromChar (correctness)"} Impl$$_module.__default.ConvertFromChar(x#0: char) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#2: int;
  var newtype$check#3: int;

    // AddMethodImpl: ConvertFromChar, Impl$$_module.__default.ConvertFromChar
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(537,3)
    assume true;
    assume true;
    newtype$check#2 := char#ToInt(x#0);
    assert {:id "id889"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 4294967296;
    newtype$check#3 := char#ToInt(x#0);
    assert {:id "id890"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 4294967296;
    assume true;
    assume true;
}



procedure {:verboseName "ComparisonRegressions (well-formedness)"} CheckWellFormed$$_module.__default.ComparisonRegressions();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ComparisonRegressions (call)"} Call$$_module.__default.ComparisonRegressions();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ComparisonRegressions (correctness)"} Impl$$_module.__default.ComparisonRegressions() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CastRegressions (well-formedness)"} CheckWellFormed$$_module.__default.CastRegressions();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CastRegressions (call)"} Call$$_module.__default.CastRegressions();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CastRegressions (correctness)"} Impl$$_module.__default.CastRegressions() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CastRegressions (correctness)"} Impl$$_module.__default.CastRegressions() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var bt#0: int where LitInt(0) <= bt#0 && bt#0 < 256;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var bu#0: int where LitInt(0) <= bu#0 && bu#0 < 256;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var b#0: bool;
  var bv#0: int where LitInt(0) <= bv#0 && bv#0 < 256;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var u#0: int where LitInt(0) <= u#0 && u#0 < 4294967296;
  var newtype$check#6: int;
  var newtype$check#7: int;

    // AddMethodImpl: CastRegressions, Impl$$_module.__default.CastRegressions
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(559,14)
    assume true;
    assume true;
    i#0 := LitInt(20);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(560,17)
    assume true;
    newtype$check#0 := i#0 + 3;
    assert {:id "id896"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 256;
    newtype$check#1 := i#0 + 3;
    assert {:id "id897"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 256;
    assume true;
    bt#0 := i#0 + 3;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(561,10)
    assume true;
    newtype$check#2 := 3 + i#0;
    assert {:id "id899"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 256;
    newtype$check#3 := 3 + i#0;
    assert {:id "id900"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 256;
    assume true;
    bu#0 := 3 + i#0;
    havoc b#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(563,17)
    assume true;
    if (b#0)
    {
        newtype$check#4 := LitInt(89);
        assert {:id "id902"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 256;
    }
    else
    {
        newtype$check#5 := LitInt(88);
        assert {:id "id903"} LitInt(0) <= newtype$check#5 && newtype$check#5 < 256;
    }

    assume true;
    bv#0 := (if b#0 then 89 else 88);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(564,17)
    assume true;
    if (b#0)
    {
        newtype$check#6 := LitInt(890);
        assert {:id "id905"} LitInt(0) <= newtype$check#6 && newtype$check#6 < 4294967296;
    }
    else
    {
        newtype$check#7 := LitInt(880);
        assert {:id "id906"} LitInt(0) <= newtype$check#7 && newtype$check#7 < 4294967296;
    }

    assume true;
    u#0 := (if b#0 then 890 else 880);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Numbers.dfy(565,3)
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



procedure {:verboseName "uint8 (well-formedness)"} CheckWellFormed$$_module.uint8(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint8 (well-formedness)"} CheckWellFormed$$_module.uint8(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype uint8
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id908"} LitInt(0) <= x#0 && x#0 < 256;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id909"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id910"} {:subsumption 0} Lit(0 < 256);
        assume false;
    }
}



function Tclass._module.uint8() : Ty
uses {
// Tclass._module.uint8 Tag
axiom Tag(Tclass._module.uint8()) == Tagclass._module.uint8
   && TagFamily(Tclass._module.uint8()) == tytagFamily$uint8;
}

const unique Tagclass._module.uint8: TyTag;

// Box/unbox axiom for Tclass._module.uint8
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.uint8()) } 
  $IsBox(bx, Tclass._module.uint8())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.uint8()));

// $Is axiom for newtype _module.uint8
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.uint8()) } 
  $Is(x#0, Tclass._module.uint8()) <==> LitInt(0) <= x#0 && x#0 < 256);

// $IsAlloc axiom for newtype _module.uint8
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint8(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint8(), $h));

const unique class._module.uint8: ClassName;

procedure {:verboseName "uint16 (well-formedness)"} CheckWellFormed$$_module.uint16(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint16 (well-formedness)"} CheckWellFormed$$_module.uint16(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype uint16
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id911"} LitInt(0) <= x#0 && x#0 < 65536;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id912"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id913"} {:subsumption 0} Lit(0 < 65536);
        assume false;
    }
}



function Tclass._module.uint16() : Ty
uses {
// Tclass._module.uint16 Tag
axiom Tag(Tclass._module.uint16()) == Tagclass._module.uint16
   && TagFamily(Tclass._module.uint16()) == tytagFamily$uint16;
}

const unique Tagclass._module.uint16: TyTag;

// Box/unbox axiom for Tclass._module.uint16
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.uint16()) } 
  $IsBox(bx, Tclass._module.uint16())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.uint16()));

// $Is axiom for newtype _module.uint16
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.uint16()) } 
  $Is(x#0, Tclass._module.uint16()) <==> LitInt(0) <= x#0 && x#0 < 65536);

// $IsAlloc axiom for newtype _module.uint16
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint16(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint16(), $h));

const unique class._module.uint16: ClassName;

procedure {:verboseName "uint32 (well-formedness)"} CheckWellFormed$$_module.uint32(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint32 (well-formedness)"} CheckWellFormed$$_module.uint32(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype uint32
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id914"} LitInt(0) <= x#0 && x#0 < 4294967296;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id915"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id916"} {:subsumption 0} Lit(0 < 4294967296);
        assume false;
    }
}



function Tclass._module.uint32() : Ty
uses {
// Tclass._module.uint32 Tag
axiom Tag(Tclass._module.uint32()) == Tagclass._module.uint32
   && TagFamily(Tclass._module.uint32()) == tytagFamily$uint32;
}

const unique Tagclass._module.uint32: TyTag;

// Box/unbox axiom for Tclass._module.uint32
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.uint32()) } 
  $IsBox(bx, Tclass._module.uint32())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.uint32()));

// $Is axiom for newtype _module.uint32
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.uint32()) } 
  $Is(x#0, Tclass._module.uint32()) <==> LitInt(0) <= x#0 && x#0 < 4294967296);

// $IsAlloc axiom for newtype _module.uint32
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint32(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint32(), $h));

const unique class._module.uint32: ClassName;

procedure {:verboseName "uint64 (well-formedness)"} CheckWellFormed$$_module.uint64(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint64 (well-formedness)"} CheckWellFormed$$_module.uint64(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype uint64
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id917"} LitInt(0) <= x#0 && x#0 < 18446744073709551616;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id918"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id919"} {:subsumption 0} Lit(0 < 18446744073709551616);
        assume false;
    }
}



function Tclass._module.uint64() : Ty
uses {
// Tclass._module.uint64 Tag
axiom Tag(Tclass._module.uint64()) == Tagclass._module.uint64
   && TagFamily(Tclass._module.uint64()) == tytagFamily$uint64;
}

const unique Tagclass._module.uint64: TyTag;

// Box/unbox axiom for Tclass._module.uint64
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.uint64()) } 
  $IsBox(bx, Tclass._module.uint64())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.uint64()));

// $Is axiom for newtype _module.uint64
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.uint64()) } 
  $Is(x#0, Tclass._module.uint64())
     <==> LitInt(0) <= x#0 && x#0 < 18446744073709551616);

// $IsAlloc axiom for newtype _module.uint64
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint64(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint64(), $h));

const unique class._module.uint64: ClassName;

procedure {:verboseName "int8 (well-formedness)"} CheckWellFormed$$_module.int8(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "int8 (well-formedness)"} CheckWellFormed$$_module.int8(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype int8
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-128) <= x#0)
        {
        }

        assume {:id "id920"} LitInt(-128) <= x#0 && x#0 < 128;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id921"} {:subsumption 0} LitInt(-128) <= LitInt(0);
        assert {:id "id922"} {:subsumption 0} Lit(0 < 128);
        assume false;
    }
}



function Tclass._module.int8() : Ty
uses {
// Tclass._module.int8 Tag
axiom Tag(Tclass._module.int8()) == Tagclass._module.int8
   && TagFamily(Tclass._module.int8()) == tytagFamily$int8;
}

const unique Tagclass._module.int8: TyTag;

// Box/unbox axiom for Tclass._module.int8
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.int8()) } 
  $IsBox(bx, Tclass._module.int8())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.int8()));

// $Is axiom for newtype _module.int8
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.int8()) } 
  $Is(x#0, Tclass._module.int8()) <==> LitInt(-128) <= x#0 && x#0 < 128);

// $IsAlloc axiom for newtype _module.int8
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.int8(), $h) } 
  $IsAlloc(x#0, Tclass._module.int8(), $h));

const unique class._module.int8: ClassName;

procedure {:verboseName "int16 (well-formedness)"} CheckWellFormed$$_module.int16(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "int16 (well-formedness)"} CheckWellFormed$$_module.int16(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype int16
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-32768) <= x#0)
        {
        }

        assume {:id "id923"} LitInt(-32768) <= x#0 && x#0 < 32768;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id924"} {:subsumption 0} LitInt(-32768) <= LitInt(0);
        assert {:id "id925"} {:subsumption 0} Lit(0 < 32768);
        assume false;
    }
}



function Tclass._module.int16() : Ty
uses {
// Tclass._module.int16 Tag
axiom Tag(Tclass._module.int16()) == Tagclass._module.int16
   && TagFamily(Tclass._module.int16()) == tytagFamily$int16;
}

const unique Tagclass._module.int16: TyTag;

// Box/unbox axiom for Tclass._module.int16
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.int16()) } 
  $IsBox(bx, Tclass._module.int16())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.int16()));

// $Is axiom for newtype _module.int16
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.int16()) } 
  $Is(x#0, Tclass._module.int16()) <==> LitInt(-32768) <= x#0 && x#0 < 32768);

// $IsAlloc axiom for newtype _module.int16
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.int16(), $h) } 
  $IsAlloc(x#0, Tclass._module.int16(), $h));

const unique class._module.int16: ClassName;

procedure {:verboseName "int32 (well-formedness)"} CheckWellFormed$$_module.int32(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "int32 (well-formedness)"} CheckWellFormed$$_module.int32(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype int32
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-2147483648) <= x#0)
        {
        }

        assume {:id "id926"} LitInt(-2147483648) <= x#0 && x#0 < 2147483648;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id927"} {:subsumption 0} LitInt(-2147483648) <= LitInt(0);
        assert {:id "id928"} {:subsumption 0} Lit(0 < 2147483648);
        assume false;
    }
}



function Tclass._module.int32() : Ty
uses {
// Tclass._module.int32 Tag
axiom Tag(Tclass._module.int32()) == Tagclass._module.int32
   && TagFamily(Tclass._module.int32()) == tytagFamily$int32;
}

const unique Tagclass._module.int32: TyTag;

// Box/unbox axiom for Tclass._module.int32
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.int32()) } 
  $IsBox(bx, Tclass._module.int32())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.int32()));

// $Is axiom for newtype _module.int32
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.int32()) } 
  $Is(x#0, Tclass._module.int32())
     <==> LitInt(-2147483648) <= x#0 && x#0 < 2147483648);

// $IsAlloc axiom for newtype _module.int32
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.int32(), $h) } 
  $IsAlloc(x#0, Tclass._module.int32(), $h));

const unique class._module.int32: ClassName;

procedure {:verboseName "int64 (well-formedness)"} CheckWellFormed$$_module.int64(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "int64 (well-formedness)"} CheckWellFormed$$_module.int64(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype int64
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-9223372036854775808) <= x#0)
        {
        }

        assume {:id "id929"} LitInt(-9223372036854775808) <= x#0 && x#0 < 9223372036854775808;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id930"} {:subsumption 0} LitInt(-9223372036854775808) <= LitInt(0);
        assert {:id "id931"} {:subsumption 0} Lit(0 < 9223372036854775808);
        assume false;
    }
}



function Tclass._module.int64() : Ty
uses {
// Tclass._module.int64 Tag
axiom Tag(Tclass._module.int64()) == Tagclass._module.int64
   && TagFamily(Tclass._module.int64()) == tytagFamily$int64;
}

const unique Tagclass._module.int64: TyTag;

// Box/unbox axiom for Tclass._module.int64
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.int64()) } 
  $IsBox(bx, Tclass._module.int64())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.int64()));

// $Is axiom for newtype _module.int64
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.int64()) } 
  $Is(x#0, Tclass._module.int64())
     <==> LitInt(-9223372036854775808) <= x#0 && x#0 < 9223372036854775808);

// $IsAlloc axiom for newtype _module.int64
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.int64(), $h) } 
  $IsAlloc(x#0, Tclass._module.int64(), $h));

const unique class._module.int64: ClassName;

procedure {:verboseName "MyBv (well-formedness)"} CheckWellFormed$$_module.MyBv(x#0: bv4);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MyBv (well-formedness)"} CheckWellFormed$$_module.MyBv(x#0: bv4)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type MyBv
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        if (le_bv4(2bv4, x#0))
        {
        }

        assume {:id "id932"} le_bv4(2bv4, x#0) && lt_bv4(x#0, 10bv4);
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id933"} {:subsumption 0} le_bv4(2bv4, 7bv4);
        assert {:id "id934"} {:subsumption 0} Lit(lt_bv4(7bv4, 10bv4));
        assume false;
    }
}



// $Is axiom for subset type _module.MyBv
axiom (forall x#0: bv4 :: 
  { $Is(x#0, Tclass._module.MyBv()) } 
  $Is(x#0, Tclass._module.MyBv()) <==> le_bv4(2bv4, x#0) && lt_bv4(x#0, 10bv4));

// $IsAlloc axiom for subset type _module.MyBv
axiom (forall x#0: bv4, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.MyBv(), $h) } 
  $IsAlloc(x#0, Tclass._module.MyBv(), $h));

procedure {:verboseName "NativeType (well-formedness)"} CheckWellFormed$$_module.NativeType(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NativeType (well-formedness)"} CheckWellFormed$$_module.NativeType(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype NativeType
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-100) <= x#0)
        {
        }

        assume {:id "id935"} LitInt(-100) <= x#0 && x#0 < 68719476736;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id936"} {:subsumption 0} LitInt(-100) <= LitInt(0);
        assert {:id "id937"} {:subsumption 0} Lit(0 < 68719476736);
        assume false;
    }
}



function Tclass._module.NativeType() : Ty
uses {
// Tclass._module.NativeType Tag
axiom Tag(Tclass._module.NativeType()) == Tagclass._module.NativeType
   && TagFamily(Tclass._module.NativeType()) == tytagFamily$NativeType;
}

const unique Tagclass._module.NativeType: TyTag;

// Box/unbox axiom for Tclass._module.NativeType
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NativeType()) } 
  $IsBox(bx, Tclass._module.NativeType())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.NativeType()));

// $Is axiom for newtype _module.NativeType
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.NativeType()) } 
  $Is(x#0, Tclass._module.NativeType())
     <==> LitInt(-100) <= x#0 && x#0 < 68719476736);

// $IsAlloc axiom for newtype _module.NativeType
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.NativeType(), $h) } 
  $IsAlloc(x#0, Tclass._module.NativeType(), $h));

const unique class._module.NativeType: ClassName;

procedure {:verboseName "NewType (well-formedness)"} CheckWellFormed$$_module.NewType(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NewType (well-formedness)"} CheckWellFormed$$_module.NewType(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype NewType
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assume {:id "id938"} true;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id939"} Lit(true);
        assume false;
    }
}



// $Is axiom for newtype _module.NewType
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.NewType()) } 
  $Is(x#0, Tclass._module.NewType()) <==> Lit(true));

// $IsAlloc axiom for newtype _module.NewType
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.NewType(), $h) } 
  $IsAlloc(x#0, Tclass._module.NewType(), $h));

const unique class._module.NewType: ClassName;

procedure {:verboseName "MyInt (well-formedness)"} CheckWellFormed$$_module.MyInt();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.MyInt() : Ty
uses {
// Tclass._module.MyInt Tag
axiom Tag(Tclass._module.MyInt()) == Tagclass._module.MyInt
   && TagFamily(Tclass._module.MyInt()) == tytagFamily$MyInt;
}

const unique Tagclass._module.MyInt: TyTag;

// Box/unbox axiom for Tclass._module.MyInt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyInt()) } 
  $IsBox(bx, Tclass._module.MyInt())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.MyInt()));

// $Is axiom for newtype _module.MyInt
axiom (forall c0#0: int :: 
  { $Is(c0#0, Tclass._module.MyInt()) } 
  $Is(c0#0, Tclass._module.MyInt()) <==> Lit(true));

// $IsAlloc axiom for newtype _module.MyInt
axiom (forall c1#0: int, $h: Heap :: 
  { $IsAlloc(c1#0, Tclass._module.MyInt(), $h) } 
  $IsAlloc(c1#0, Tclass._module.MyInt(), $h));

const unique class._module.MyInt: ClassName;

const unique class.EuclideanDivisionRegressions.__default: ClassName;

procedure {:verboseName "EuclideanDivisionRegressions.Test (well-formedness)"} CheckWellFormed$$EuclideanDivisionRegressions.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EuclideanDivisionRegressions.Test (call)"} Call$$EuclideanDivisionRegressions.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.EuclideanDivisionRegressions.MyReal() : Ty
uses {
// Tclass.EuclideanDivisionRegressions.MyReal Tag
axiom Tag(Tclass.EuclideanDivisionRegressions.MyReal())
     == Tagclass.EuclideanDivisionRegressions.MyReal
   && TagFamily(Tclass.EuclideanDivisionRegressions.MyReal()) == tytagFamily$MyReal;
}

const unique Tagclass.EuclideanDivisionRegressions.MyReal: TyTag;

// Box/unbox axiom for Tclass.EuclideanDivisionRegressions.MyReal
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.EuclideanDivisionRegressions.MyReal()) } 
  $IsBox(bx, Tclass.EuclideanDivisionRegressions.MyReal())
     ==> $Box($Unbox(bx): real) == bx
       && $Is($Unbox(bx): real, Tclass.EuclideanDivisionRegressions.MyReal()));

// $Is axiom for newtype EuclideanDivisionRegressions.MyReal
axiom (forall c0#1: real :: 
  { $Is(c0#1, Tclass.EuclideanDivisionRegressions.MyReal()) } 
  $Is(c0#1, Tclass.EuclideanDivisionRegressions.MyReal()) <==> Lit(true));

// $IsAlloc axiom for newtype EuclideanDivisionRegressions.MyReal
axiom (forall c1#1: real, $h: Heap :: 
  { $IsAlloc(c1#1, Tclass.EuclideanDivisionRegressions.MyReal(), $h) } 
  $IsAlloc(c1#1, Tclass.EuclideanDivisionRegressions.MyReal(), $h));

const unique class.EuclideanDivisionRegressions.MyReal: ClassName;

function Tclass.EuclideanDivisionRegressions.MyRealWithConstraint() : Ty
uses {
// Tclass.EuclideanDivisionRegressions.MyRealWithConstraint Tag
axiom Tag(Tclass.EuclideanDivisionRegressions.MyRealWithConstraint())
     == Tagclass.EuclideanDivisionRegressions.MyRealWithConstraint
   && TagFamily(Tclass.EuclideanDivisionRegressions.MyRealWithConstraint())
     == tytagFamily$MyRealWithConstraint;
}

const unique Tagclass.EuclideanDivisionRegressions.MyRealWithConstraint: TyTag;

// Box/unbox axiom for Tclass.EuclideanDivisionRegressions.MyRealWithConstraint
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.EuclideanDivisionRegressions.MyRealWithConstraint()) } 
  $IsBox(bx, Tclass.EuclideanDivisionRegressions.MyRealWithConstraint())
     ==> $Box($Unbox(bx): real) == bx
       && $Is($Unbox(bx): real, Tclass.EuclideanDivisionRegressions.MyRealWithConstraint()));

// $Is axiom for newtype EuclideanDivisionRegressions.MyRealWithConstraint
axiom (forall r#0: real :: 
  { $Is(r#0, Tclass.EuclideanDivisionRegressions.MyRealWithConstraint()) } 
  $Is(r#0, Tclass.EuclideanDivisionRegressions.MyRealWithConstraint())
     <==> LitReal(0e0) <= r#0);

// $IsAlloc axiom for newtype EuclideanDivisionRegressions.MyRealWithConstraint
axiom (forall r#0: real, $h: Heap :: 
  { $IsAlloc(r#0, Tclass.EuclideanDivisionRegressions.MyRealWithConstraint(), $h) } 
  $IsAlloc(r#0, Tclass.EuclideanDivisionRegressions.MyRealWithConstraint(), $h));

const unique class.EuclideanDivisionRegressions.MyRealWithConstraint: ClassName;

function Tclass.EuclideanDivisionRegressions.MyInt() : Ty
uses {
// Tclass.EuclideanDivisionRegressions.MyInt Tag
axiom Tag(Tclass.EuclideanDivisionRegressions.MyInt())
     == Tagclass.EuclideanDivisionRegressions.MyInt
   && TagFamily(Tclass.EuclideanDivisionRegressions.MyInt()) == tytagFamily$MyInt;
}

const unique Tagclass.EuclideanDivisionRegressions.MyInt: TyTag;

// Box/unbox axiom for Tclass.EuclideanDivisionRegressions.MyInt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.EuclideanDivisionRegressions.MyInt()) } 
  $IsBox(bx, Tclass.EuclideanDivisionRegressions.MyInt())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.EuclideanDivisionRegressions.MyInt()));

// $Is axiom for newtype EuclideanDivisionRegressions.MyInt
axiom (forall c4#0: int :: 
  { $Is(c4#0, Tclass.EuclideanDivisionRegressions.MyInt()) } 
  $Is(c4#0, Tclass.EuclideanDivisionRegressions.MyInt()) <==> Lit(true));

// $IsAlloc axiom for newtype EuclideanDivisionRegressions.MyInt
axiom (forall c5#0: int, $h: Heap :: 
  { $IsAlloc(c5#0, Tclass.EuclideanDivisionRegressions.MyInt(), $h) } 
  $IsAlloc(c5#0, Tclass.EuclideanDivisionRegressions.MyInt(), $h));

const unique class.EuclideanDivisionRegressions.MyInt: ClassName;

function Tclass.EuclideanDivisionRegressions.MyIntWithConstraint() : Ty
uses {
// Tclass.EuclideanDivisionRegressions.MyIntWithConstraint Tag
axiom Tag(Tclass.EuclideanDivisionRegressions.MyIntWithConstraint())
     == Tagclass.EuclideanDivisionRegressions.MyIntWithConstraint
   && TagFamily(Tclass.EuclideanDivisionRegressions.MyIntWithConstraint())
     == tytagFamily$MyIntWithConstraint;
}

const unique Tagclass.EuclideanDivisionRegressions.MyIntWithConstraint: TyTag;

// Box/unbox axiom for Tclass.EuclideanDivisionRegressions.MyIntWithConstraint
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.EuclideanDivisionRegressions.MyIntWithConstraint()) } 
  $IsBox(bx, Tclass.EuclideanDivisionRegressions.MyIntWithConstraint())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.EuclideanDivisionRegressions.MyIntWithConstraint()));

// $Is axiom for newtype EuclideanDivisionRegressions.MyIntWithConstraint
axiom (forall i#0: int :: 
  { $Is(i#0, Tclass.EuclideanDivisionRegressions.MyIntWithConstraint()) } 
  $Is(i#0, Tclass.EuclideanDivisionRegressions.MyIntWithConstraint())
     <==> LitInt(-200) <= i#0);

// $IsAlloc axiom for newtype EuclideanDivisionRegressions.MyIntWithConstraint
axiom (forall i#0: int, $h: Heap :: 
  { $IsAlloc(i#0, Tclass.EuclideanDivisionRegressions.MyIntWithConstraint(), $h) } 
  $IsAlloc(i#0, Tclass.EuclideanDivisionRegressions.MyIntWithConstraint(), $h));

const unique class.EuclideanDivisionRegressions.MyIntWithConstraint: ClassName;

function Tclass.EuclideanDivisionRegressions.byte() : Ty
uses {
// Tclass.EuclideanDivisionRegressions.byte Tag
axiom Tag(Tclass.EuclideanDivisionRegressions.byte())
     == Tagclass.EuclideanDivisionRegressions.byte
   && TagFamily(Tclass.EuclideanDivisionRegressions.byte()) == tytagFamily$byte;
}

const unique Tagclass.EuclideanDivisionRegressions.byte: TyTag;

// Box/unbox axiom for Tclass.EuclideanDivisionRegressions.byte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.EuclideanDivisionRegressions.byte()) } 
  $IsBox(bx, Tclass.EuclideanDivisionRegressions.byte())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.EuclideanDivisionRegressions.byte()));

// $Is axiom for newtype EuclideanDivisionRegressions.byte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.EuclideanDivisionRegressions.byte()) } 
  $Is(x#0, Tclass.EuclideanDivisionRegressions.byte())
     <==> LitInt(0) <= x#0 && x#0 < 256);

// $IsAlloc axiom for newtype EuclideanDivisionRegressions.byte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.EuclideanDivisionRegressions.byte(), $h) } 
  $IsAlloc(x#0, Tclass.EuclideanDivisionRegressions.byte(), $h));

const unique class.EuclideanDivisionRegressions.byte: ClassName;

function Tclass.EuclideanDivisionRegressions.sbyte() : Ty
uses {
// Tclass.EuclideanDivisionRegressions.sbyte Tag
axiom Tag(Tclass.EuclideanDivisionRegressions.sbyte())
     == Tagclass.EuclideanDivisionRegressions.sbyte
   && TagFamily(Tclass.EuclideanDivisionRegressions.sbyte()) == tytagFamily$sbyte;
}

const unique Tagclass.EuclideanDivisionRegressions.sbyte: TyTag;

// Box/unbox axiom for Tclass.EuclideanDivisionRegressions.sbyte
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.EuclideanDivisionRegressions.sbyte()) } 
  $IsBox(bx, Tclass.EuclideanDivisionRegressions.sbyte())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.EuclideanDivisionRegressions.sbyte()));

// $Is axiom for newtype EuclideanDivisionRegressions.sbyte
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.EuclideanDivisionRegressions.sbyte()) } 
  $Is(x#0, Tclass.EuclideanDivisionRegressions.sbyte())
     <==> LitInt(-128) <= x#0 && x#0 < 128);

// $IsAlloc axiom for newtype EuclideanDivisionRegressions.sbyte
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.EuclideanDivisionRegressions.sbyte(), $h) } 
  $IsAlloc(x#0, Tclass.EuclideanDivisionRegressions.sbyte(), $h));

const unique class.EuclideanDivisionRegressions.sbyte: ClassName;

function Tclass.EuclideanDivisionRegressions.uint32() : Ty
uses {
// Tclass.EuclideanDivisionRegressions.uint32 Tag
axiom Tag(Tclass.EuclideanDivisionRegressions.uint32())
     == Tagclass.EuclideanDivisionRegressions.uint32
   && TagFamily(Tclass.EuclideanDivisionRegressions.uint32()) == tytagFamily$uint32;
}

const unique Tagclass.EuclideanDivisionRegressions.uint32: TyTag;

// Box/unbox axiom for Tclass.EuclideanDivisionRegressions.uint32
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.EuclideanDivisionRegressions.uint32()) } 
  $IsBox(bx, Tclass.EuclideanDivisionRegressions.uint32())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.EuclideanDivisionRegressions.uint32()));

// $Is axiom for newtype EuclideanDivisionRegressions.uint32
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.EuclideanDivisionRegressions.uint32()) } 
  $Is(x#0, Tclass.EuclideanDivisionRegressions.uint32())
     <==> LitInt(0) <= x#0 && x#0 < 4294967296);

// $IsAlloc axiom for newtype EuclideanDivisionRegressions.uint32
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.EuclideanDivisionRegressions.uint32(), $h) } 
  $IsAlloc(x#0, Tclass.EuclideanDivisionRegressions.uint32(), $h));

const unique class.EuclideanDivisionRegressions.uint32: ClassName;

function Tclass.EuclideanDivisionRegressions.int32() : Ty
uses {
// Tclass.EuclideanDivisionRegressions.int32 Tag
axiom Tag(Tclass.EuclideanDivisionRegressions.int32())
     == Tagclass.EuclideanDivisionRegressions.int32
   && TagFamily(Tclass.EuclideanDivisionRegressions.int32()) == tytagFamily$int32;
}

const unique Tagclass.EuclideanDivisionRegressions.int32: TyTag;

// Box/unbox axiom for Tclass.EuclideanDivisionRegressions.int32
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.EuclideanDivisionRegressions.int32()) } 
  $IsBox(bx, Tclass.EuclideanDivisionRegressions.int32())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.EuclideanDivisionRegressions.int32()));

// $Is axiom for newtype EuclideanDivisionRegressions.int32
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.EuclideanDivisionRegressions.int32()) } 
  $Is(x#0, Tclass.EuclideanDivisionRegressions.int32())
     <==> LitInt(-2147483648) <= x#0 && x#0 < 2147483648);

// $IsAlloc axiom for newtype EuclideanDivisionRegressions.int32
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.EuclideanDivisionRegressions.int32(), $h) } 
  $IsAlloc(x#0, Tclass.EuclideanDivisionRegressions.int32(), $h));

const unique class.EuclideanDivisionRegressions.int32: ClassName;

const unique class.TypeTests.__default: ClassName;

procedure {:verboseName "TypeTests.Test (well-formedness)"} CheckWellFormed$$TypeTests.__default.Test();
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeTests.Test (call)"} Call$$TypeTests.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for TypeTests._default.GoodChar
function TypeTests.__default.GoodChar(ch#0: char) : bool;

function TypeTests.__default.GoodChar#canCall(ch#0: char) : bool;

function TypeTests.__default.GoodChar#requires(char) : bool;

// #requires axiom for TypeTests.__default.GoodChar
axiom (forall ch#0: char :: 
  { TypeTests.__default.GoodChar#requires(ch#0) } 
  $Is(ch#0, TChar) ==> TypeTests.__default.GoodChar#requires(ch#0) == true);

// definition axiom for TypeTests.__default.GoodChar (revealed)
axiom {:id "id940"} (forall ch#0: char :: 
  { TypeTests.__default.GoodChar(ch#0) } 
  TypeTests.__default.GoodChar#canCall(ch#0) || $Is(ch#0, TChar)
     ==> TypeTests.__default.GoodChar(ch#0) == Lit(true));

// definition axiom for TypeTests.__default.GoodChar for all literals (revealed)
axiom {:id "id941"} (forall ch#0: char :: 
  {:weight 3} { TypeTests.__default.GoodChar(Lit(ch#0)) } 
  TypeTests.__default.GoodChar#canCall(Lit(ch#0)) || $Is(ch#0, TChar)
     ==> TypeTests.__default.GoodChar(Lit(ch#0)) == Lit(true));

// function declaration for TypeTests._default.EmptySequence
function TypeTests.__default.EmptySequence(TypeTests._default.EmptySequence$Y: Ty) : Seq;

function TypeTests.__default.EmptySequence#canCall(TypeTests._default.EmptySequence$Y: Ty) : bool;

// consequence axiom for TypeTests.__default.EmptySequence
axiom (forall TypeTests._default.EmptySequence$Y: Ty :: 
  { TypeTests.__default.EmptySequence(TypeTests._default.EmptySequence$Y) } 
  $Is(TypeTests.__default.EmptySequence(TypeTests._default.EmptySequence$Y), 
    TSeq(TypeTests._default.EmptySequence$Y)));

// alloc consequence axiom for TypeTests.__default.EmptySequence
axiom (forall $Heap: Heap, TypeTests._default.EmptySequence$Y: Ty :: 
  { $IsAlloc(TypeTests.__default.EmptySequence(TypeTests._default.EmptySequence$Y), 
      TSeq(TypeTests._default.EmptySequence$Y), 
      $Heap) } 
  $IsGoodHeap($Heap)
     ==> $IsAlloc(TypeTests.__default.EmptySequence(TypeTests._default.EmptySequence$Y), 
      TSeq(TypeTests._default.EmptySequence$Y), 
      $Heap));

function TypeTests.__default.EmptySequence#requires(Ty) : bool;

// #requires axiom for TypeTests.__default.EmptySequence
axiom (forall TypeTests._default.EmptySequence$Y: Ty :: 
  { TypeTests.__default.EmptySequence#requires(TypeTests._default.EmptySequence$Y) } 
  TypeTests.__default.EmptySequence#requires(TypeTests._default.EmptySequence$Y)
     == true);

// definition axiom for TypeTests.__default.EmptySequence (revealed)
axiom {:id "id942"} (forall TypeTests._default.EmptySequence$Y: Ty :: 
  { TypeTests.__default.EmptySequence(TypeTests._default.EmptySequence$Y) } 
  TypeTests.__default.EmptySequence(TypeTests._default.EmptySequence$Y)
     == Lit(Seq#Empty(): Seq));

// definition axiom for TypeTests.__default.EmptySequence for all literals (revealed)
axiom {:id "id943"} (forall TypeTests._default.EmptySequence$Y: Ty :: 
  {:weight 3} { TypeTests.__default.EmptySequence(TypeTests._default.EmptySequence$Y) } 
  TypeTests.__default.EmptySequence(TypeTests._default.EmptySequence$Y)
     == Lit(Seq#Empty(): Seq));

function Tclass.TypeTests.MyChar() : Ty
uses {
// Tclass.TypeTests.MyChar Tag
axiom Tag(Tclass.TypeTests.MyChar()) == Tagclass.TypeTests.MyChar
   && TagFamily(Tclass.TypeTests.MyChar()) == tytagFamily$MyChar;
}

const unique Tagclass.TypeTests.MyChar: TyTag;

// Box/unbox axiom for Tclass.TypeTests.MyChar
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeTests.MyChar()) } 
  $IsBox(bx, Tclass.TypeTests.MyChar())
     ==> $Box($Unbox(bx): char) == bx && $Is($Unbox(bx): char, Tclass.TypeTests.MyChar()));

// $Is axiom for subset type TypeTests.MyChar
axiom (forall chr#0: char :: 
  { $Is(chr#0, Tclass.TypeTests.MyChar()) } 
  $Is(chr#0, Tclass.TypeTests.MyChar())
     <==> char#ToInt(Lit(char#FromInt(65))) <= char#ToInt(chr#0)
       && char#ToInt(chr#0) <= char#ToInt(Lit(char#FromInt(90))));

// $IsAlloc axiom for subset type TypeTests.MyChar
axiom (forall chr#0: char, $h: Heap :: 
  { $IsAlloc(chr#0, Tclass.TypeTests.MyChar(), $h) } 
  $IsAlloc(chr#0, Tclass.TypeTests.MyChar(), $h));

function Tclass.TypeTests.Big() : Ty
uses {
// Tclass.TypeTests.Big Tag
axiom Tag(Tclass.TypeTests.Big()) == Tagclass.TypeTests.Big
   && TagFamily(Tclass.TypeTests.Big()) == tytagFamily$Big;
}

const unique Tagclass.TypeTests.Big: TyTag;

// Box/unbox axiom for Tclass.TypeTests.Big
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeTests.Big()) } 
  $IsBox(bx, Tclass.TypeTests.Big())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.TypeTests.Big()));

// $Is axiom for newtype TypeTests.Big
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.TypeTests.Big()) } 
  $Is(x#0, Tclass.TypeTests.Big())
     <==> LitInt(0) <= x#0 && x#0 < 10000 && x#0 != 22);

// $IsAlloc axiom for newtype TypeTests.Big
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.TypeTests.Big(), $h) } 
  $IsAlloc(x#0, Tclass.TypeTests.Big(), $h));

const unique class.TypeTests.Big: ClassName;

function Tclass.TypeTests.AnotherInBetween(Ty, Ty) : Ty;

const unique Tagclass.TypeTests.AnotherInBetween: TyTag;

// Tclass.TypeTests.AnotherInBetween Tag
axiom (forall TypeTests.AnotherInBetween$HH: Ty, TypeTests.AnotherInBetween$GG: Ty :: 
  { Tclass.TypeTests.AnotherInBetween(TypeTests.AnotherInBetween$HH, TypeTests.AnotherInBetween$GG) } 
  Tag(Tclass.TypeTests.AnotherInBetween(TypeTests.AnotherInBetween$HH, TypeTests.AnotherInBetween$GG))
       == Tagclass.TypeTests.AnotherInBetween
     && TagFamily(Tclass.TypeTests.AnotherInBetween(TypeTests.AnotherInBetween$HH, TypeTests.AnotherInBetween$GG))
       == tytagFamily$AnotherInBetween);

function Tclass.TypeTests.AnotherInBetween_0(Ty) : Ty;

// Tclass.TypeTests.AnotherInBetween injectivity 0
axiom (forall TypeTests.AnotherInBetween$HH: Ty, TypeTests.AnotherInBetween$GG: Ty :: 
  { Tclass.TypeTests.AnotherInBetween(TypeTests.AnotherInBetween$HH, TypeTests.AnotherInBetween$GG) } 
  Tclass.TypeTests.AnotherInBetween_0(Tclass.TypeTests.AnotherInBetween(TypeTests.AnotherInBetween$HH, TypeTests.AnotherInBetween$GG))
     == TypeTests.AnotherInBetween$HH);

function Tclass.TypeTests.AnotherInBetween_1(Ty) : Ty;

// Tclass.TypeTests.AnotherInBetween injectivity 1
axiom (forall TypeTests.AnotherInBetween$HH: Ty, TypeTests.AnotherInBetween$GG: Ty :: 
  { Tclass.TypeTests.AnotherInBetween(TypeTests.AnotherInBetween$HH, TypeTests.AnotherInBetween$GG) } 
  Tclass.TypeTests.AnotherInBetween_1(Tclass.TypeTests.AnotherInBetween(TypeTests.AnotherInBetween$HH, TypeTests.AnotherInBetween$GG))
     == TypeTests.AnotherInBetween$GG);

// Box/unbox axiom for Tclass.TypeTests.AnotherInBetween
axiom (forall TypeTests.AnotherInBetween$HH: Ty, TypeTests.AnotherInBetween$GG: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeTests.AnotherInBetween(TypeTests.AnotherInBetween$HH, TypeTests.AnotherInBetween$GG)) } 
  $IsBox(bx, 
      Tclass.TypeTests.AnotherInBetween(TypeTests.AnotherInBetween$HH, TypeTests.AnotherInBetween$GG))
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, 
        Tclass.TypeTests.AnotherInBetween(TypeTests.AnotherInBetween$HH, TypeTests.AnotherInBetween$GG)));

// $Is axiom for subset type TypeTests.AnotherInBetween
axiom (forall TypeTests.AnotherInBetween$HH: Ty, TypeTests.AnotherInBetween$GG: Ty, y#0: int :: 
  { $Is(y#0, 
      Tclass.TypeTests.AnotherInBetween(TypeTests.AnotherInBetween$HH, TypeTests.AnotherInBetween$GG)) } 
  $Is(y#0, 
      Tclass.TypeTests.AnotherInBetween(TypeTests.AnotherInBetween$HH, TypeTests.AnotherInBetween$GG))
     <==> LitInt(0) <= y#0 && y#0 < 10000 && y#0 != 22 && y#0 != 10);

// $IsAlloc axiom for subset type TypeTests.AnotherInBetween
axiom (forall TypeTests.AnotherInBetween$HH: Ty, 
    TypeTests.AnotherInBetween$GG: Ty, 
    y#0: int, 
    $h: Heap :: 
  { $IsAlloc(y#0, 
      Tclass.TypeTests.AnotherInBetween(TypeTests.AnotherInBetween$HH, TypeTests.AnotherInBetween$GG), 
      $h) } 
  $IsAlloc(y#0, 
    Tclass.TypeTests.AnotherInBetween(TypeTests.AnotherInBetween$HH, TypeTests.AnotherInBetween$GG), 
    $h));

function Tclass.TypeTests.SubsetInBetween(Ty, Ty) : Ty;

const unique Tagclass.TypeTests.SubsetInBetween: TyTag;

// Tclass.TypeTests.SubsetInBetween Tag
axiom (forall TypeTests.SubsetInBetween$G: Ty, TypeTests.SubsetInBetween$H: Ty :: 
  { Tclass.TypeTests.SubsetInBetween(TypeTests.SubsetInBetween$G, TypeTests.SubsetInBetween$H) } 
  Tag(Tclass.TypeTests.SubsetInBetween(TypeTests.SubsetInBetween$G, TypeTests.SubsetInBetween$H))
       == Tagclass.TypeTests.SubsetInBetween
     && TagFamily(Tclass.TypeTests.SubsetInBetween(TypeTests.SubsetInBetween$G, TypeTests.SubsetInBetween$H))
       == tytagFamily$SubsetInBetween);

function Tclass.TypeTests.SubsetInBetween_0(Ty) : Ty;

// Tclass.TypeTests.SubsetInBetween injectivity 0
axiom (forall TypeTests.SubsetInBetween$G: Ty, TypeTests.SubsetInBetween$H: Ty :: 
  { Tclass.TypeTests.SubsetInBetween(TypeTests.SubsetInBetween$G, TypeTests.SubsetInBetween$H) } 
  Tclass.TypeTests.SubsetInBetween_0(Tclass.TypeTests.SubsetInBetween(TypeTests.SubsetInBetween$G, TypeTests.SubsetInBetween$H))
     == TypeTests.SubsetInBetween$G);

function Tclass.TypeTests.SubsetInBetween_1(Ty) : Ty;

// Tclass.TypeTests.SubsetInBetween injectivity 1
axiom (forall TypeTests.SubsetInBetween$G: Ty, TypeTests.SubsetInBetween$H: Ty :: 
  { Tclass.TypeTests.SubsetInBetween(TypeTests.SubsetInBetween$G, TypeTests.SubsetInBetween$H) } 
  Tclass.TypeTests.SubsetInBetween_1(Tclass.TypeTests.SubsetInBetween(TypeTests.SubsetInBetween$G, TypeTests.SubsetInBetween$H))
     == TypeTests.SubsetInBetween$H);

// Box/unbox axiom for Tclass.TypeTests.SubsetInBetween
axiom (forall TypeTests.SubsetInBetween$G: Ty, TypeTests.SubsetInBetween$H: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeTests.SubsetInBetween(TypeTests.SubsetInBetween$G, TypeTests.SubsetInBetween$H)) } 
  $IsBox(bx, 
      Tclass.TypeTests.SubsetInBetween(TypeTests.SubsetInBetween$G, TypeTests.SubsetInBetween$H))
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, 
        Tclass.TypeTests.SubsetInBetween(TypeTests.SubsetInBetween$G, TypeTests.SubsetInBetween$H)));

// $Is axiom for subset type TypeTests.SubsetInBetween
axiom (forall TypeTests.SubsetInBetween$G: Ty, TypeTests.SubsetInBetween$H: Ty, y#0: int :: 
  { $Is(y#0, 
      Tclass.TypeTests.SubsetInBetween(TypeTests.SubsetInBetween$G, TypeTests.SubsetInBetween$H)) } 
  $Is(y#0, 
      Tclass.TypeTests.SubsetInBetween(TypeTests.SubsetInBetween$G, TypeTests.SubsetInBetween$H))
     <==> LitInt(0) <= y#0
       && y#0 < 10000
       && y#0 != 22
       && y#0 != 10
       && 
      y#0 != 34
       && Seq#Length(Lit(TypeTests.__default.EmptySequence(TypeTests.SubsetInBetween$G)))
         == Seq#Length(Lit(TypeTests.__default.EmptySequence(TypeTests.SubsetInBetween$H))));

// $IsAlloc axiom for subset type TypeTests.SubsetInBetween
axiom (forall TypeTests.SubsetInBetween$G: Ty, 
    TypeTests.SubsetInBetween$H: Ty, 
    y#0: int, 
    $h: Heap :: 
  { $IsAlloc(y#0, 
      Tclass.TypeTests.SubsetInBetween(TypeTests.SubsetInBetween$G, TypeTests.SubsetInBetween$H), 
      $h) } 
  $IsAlloc(y#0, 
    Tclass.TypeTests.SubsetInBetween(TypeTests.SubsetInBetween$G, TypeTests.SubsetInBetween$H), 
    $h));

function Tclass.TypeTests.Middle() : Ty
uses {
// Tclass.TypeTests.Middle Tag
axiom Tag(Tclass.TypeTests.Middle()) == Tagclass.TypeTests.Middle
   && TagFamily(Tclass.TypeTests.Middle()) == tytagFamily$Middle;
}

const unique Tagclass.TypeTests.Middle: TyTag;

// Box/unbox axiom for Tclass.TypeTests.Middle
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeTests.Middle()) } 
  $IsBox(bx, Tclass.TypeTests.Middle())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.TypeTests.Middle()));

// $Is axiom for newtype TypeTests.Middle
axiom (forall c8#0: int :: 
  { $Is(c8#0, Tclass.TypeTests.Middle()) } 
  $Is(c8#0, Tclass.TypeTests.Middle())
     <==> LitInt(0) <= c8#0
       && c8#0 < 10000
       && c8#0 != 22
       && c8#0 != 10
       && 
      c8#0 != 34
       && Seq#Length(Lit(TypeTests.__default.EmptySequence(TBool)))
         == Seq#Length(Lit(TypeTests.__default.EmptySequence(TChar))));

// $IsAlloc axiom for newtype TypeTests.Middle
axiom (forall c9#0: int, $h: Heap :: 
  { $IsAlloc(c9#0, Tclass.TypeTests.Middle(), $h) } 
  $IsAlloc(c9#0, Tclass.TypeTests.Middle(), $h));

const unique class.TypeTests.Middle: ClassName;

function Tclass.TypeTests.Little() : Ty
uses {
// Tclass.TypeTests.Little Tag
axiom Tag(Tclass.TypeTests.Little()) == Tagclass.TypeTests.Little
   && TagFamily(Tclass.TypeTests.Little()) == tytagFamily$Little;
}

const unique Tagclass.TypeTests.Little: TyTag;

// Box/unbox axiom for Tclass.TypeTests.Little
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TypeTests.Little()) } 
  $IsBox(bx, Tclass.TypeTests.Little())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.TypeTests.Little()));

// $Is axiom for newtype TypeTests.Little
axiom (forall z#0: int :: 
  { $Is(z#0, Tclass.TypeTests.Little()) } 
  $Is(z#0, Tclass.TypeTests.Little())
     <==> LitInt(0) <= z#0
       && z#0 < 10000
       && z#0 != 22
       && z#0 != 10
       && 
      z#0 != 34
       && Seq#Length(Lit(TypeTests.__default.EmptySequence(TBool)))
         == Seq#Length(Lit(TypeTests.__default.EmptySequence(TChar)))
       && 
      z#0 < 200
       && z#0 != 16);

// $IsAlloc axiom for newtype TypeTests.Little
axiom (forall z#0: int, $h: Heap :: 
  { $IsAlloc(z#0, Tclass.TypeTests.Little(), $h) } 
  $IsAlloc(z#0, Tclass.TypeTests.Little(), $h));

const unique class.TypeTests.Little: ClassName;

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

const unique tytagFamily$MyBv: TyTagFamily;

const unique tytagFamily$NewType: TyTagFamily;

const unique tytagFamily$uint8: TyTagFamily;

const unique tytagFamily$uint16: TyTagFamily;

const unique tytagFamily$uint32: TyTagFamily;

const unique tytagFamily$uint64: TyTagFamily;

const unique tytagFamily$int8: TyTagFamily;

const unique tytagFamily$int16: TyTagFamily;

const unique tytagFamily$int32: TyTagFamily;

const unique tytagFamily$int64: TyTagFamily;

const unique tytagFamily$NativeType: TyTagFamily;

const unique tytagFamily$MyInt: TyTagFamily;

const unique tytagFamily$MyReal: TyTagFamily;

const unique tytagFamily$MyRealWithConstraint: TyTagFamily;

const unique tytagFamily$MyIntWithConstraint: TyTagFamily;

const unique tytagFamily$byte: TyTagFamily;

const unique tytagFamily$sbyte: TyTagFamily;

const unique tytagFamily$MyChar: TyTagFamily;

const unique tytagFamily$Big: TyTagFamily;

const unique tytagFamily$AnotherInBetween: TyTagFamily;

const unique tytagFamily$SubsetInBetween: TyTagFamily;

const unique tytagFamily$Middle: TyTagFamily;

const unique tytagFamily$Little: TyTagFamily;
