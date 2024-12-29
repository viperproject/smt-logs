// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy

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

// Box/unbox axiom for bv128
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(128)) } 
  $IsBox(bx, TBitvector(128))
     ==> $Box($Unbox(bx): bv128) == bx && $Is($Unbox(bx): bv128, TBitvector(128)));

axiom (forall v: bv128 :: { $Is(v, TBitvector(128)) } $Is(v, TBitvector(128)));

axiom (forall v: bv128, heap: Heap :: 
  { $IsAlloc(v, TBitvector(128), heap) } 
  $IsAlloc(v, TBitvector(128), heap));

function {:bvbuiltin "bvand"} and_bv128(bv128, bv128) : bv128;

function {:bvbuiltin "bvor"} or_bv128(bv128, bv128) : bv128;

function {:bvbuiltin "bvxor"} xor_bv128(bv128, bv128) : bv128;

function {:bvbuiltin "bvnot"} not_bv128(bv128) : bv128;

function {:bvbuiltin "bvadd"} add_bv128(bv128, bv128) : bv128;

function {:bvbuiltin "bvsub"} sub_bv128(bv128, bv128) : bv128;

function {:bvbuiltin "bvmul"} mul_bv128(bv128, bv128) : bv128;

function {:bvbuiltin "bvudiv"} div_bv128(bv128, bv128) : bv128;

function {:bvbuiltin "bvurem"} mod_bv128(bv128, bv128) : bv128;

function {:bvbuiltin "bvult"} lt_bv128(bv128, bv128) : bool;

function {:bvbuiltin "bvule"} le_bv128(bv128, bv128) : bool;

function {:bvbuiltin "bvuge"} ge_bv128(bv128, bv128) : bool;

function {:bvbuiltin "bvugt"} gt_bv128(bv128, bv128) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv128(bv128, bv128) : bv128;

function {:bvbuiltin "bvlshr"} RightShift_bv128(bv128, bv128) : bv128;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv128(bv128, bv128) : bv128;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv128(bv128, bv128) : bv128;

function {:bvbuiltin "(_ int2bv 128)"} nat_to_bv128(int) : bv128;

function {:bvbuiltin "bv2int"} smt_nat_from_bv128(bv128) : int;

function nat_from_bv128(bv128) : int;

axiom (forall b: bv128 :: 
  { nat_from_bv128(b) } 
  0 <= nat_from_bv128(b)
     && nat_from_bv128(b) < 340282366920938463463374607431768211456
     && nat_from_bv128(b) == smt_nat_from_bv128(b));

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

// Box/unbox axiom for bv6
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(6)) } 
  $IsBox(bx, TBitvector(6))
     ==> $Box($Unbox(bx): bv6) == bx && $Is($Unbox(bx): bv6, TBitvector(6)));

axiom (forall v: bv6 :: { $Is(v, TBitvector(6)) } $Is(v, TBitvector(6)));

axiom (forall v: bv6, heap: Heap :: 
  { $IsAlloc(v, TBitvector(6), heap) } 
  $IsAlloc(v, TBitvector(6), heap));

function {:bvbuiltin "bvand"} and_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvor"} or_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvxor"} xor_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvnot"} not_bv6(bv6) : bv6;

function {:bvbuiltin "bvadd"} add_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvsub"} sub_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvmul"} mul_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvudiv"} div_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvurem"} mod_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvult"} lt_bv6(bv6, bv6) : bool;

function {:bvbuiltin "bvule"} le_bv6(bv6, bv6) : bool;

function {:bvbuiltin "bvuge"} ge_bv6(bv6, bv6) : bool;

function {:bvbuiltin "bvugt"} gt_bv6(bv6, bv6) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvlshr"} RightShift_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "(_ int2bv 6)"} nat_to_bv6(int) : bv6;

function {:bvbuiltin "bv2int"} smt_nat_from_bv6(bv6) : int;

function nat_from_bv6(bv6) : int;

axiom (forall b: bv6 :: 
  { nat_from_bv6(b) } 
  0 <= nat_from_bv6(b)
     && nat_from_bv6(b) < 64
     && nat_from_bv6(b) == smt_nat_from_bv6(b));

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

function _module.__default.TWO__TO__THE__8() : int
uses {
axiom _module.__default.TWO__TO__THE__8(): int == LitInt(256);
// _default.TWO_TO_THE_8: Type axiom
axiom 0 < $FunctionContextHeight ==> $Is(_module.__default.TWO__TO__THE__8(), TInt);
}

procedure {:verboseName "TWO_TO_THE_8 (well-formedness)"} CheckWellFormed$$_module.__default.TWO__TO__THE__8();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// _default.TWO_TO_THE_8: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.__default.TWO__TO__THE__8(), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.__default.TWO__TO__THE__8(), TInt, $h));

function _module.__default.TWO__TO__THE__16() : int
uses {
axiom _module.__default.TWO__TO__THE__16(): int == LitInt(65536);
// _default.TWO_TO_THE_16: Type axiom
axiom 0 < $FunctionContextHeight ==> $Is(_module.__default.TWO__TO__THE__16(), TInt);
}

procedure {:verboseName "TWO_TO_THE_16 (well-formedness)"} CheckWellFormed$$_module.__default.TWO__TO__THE__16();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// _default.TWO_TO_THE_16: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.__default.TWO__TO__THE__16(), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.__default.TWO__TO__THE__16(), TInt, $h));

function _module.__default.TWO__TO__THE__32() : int
uses {
axiom _module.__default.TWO__TO__THE__32(): int == LitInt(4294967296);
// _default.TWO_TO_THE_32: Type axiom
axiom 0 < $FunctionContextHeight ==> $Is(_module.__default.TWO__TO__THE__32(), TInt);
}

procedure {:verboseName "TWO_TO_THE_32 (well-formedness)"} CheckWellFormed$$_module.__default.TWO__TO__THE__32();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// _default.TWO_TO_THE_32: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.__default.TWO__TO__THE__32(), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.__default.TWO__TO__THE__32(), TInt, $h));

function _module.__default.TWO__TO__THE__64() : int
uses {
axiom _module.__default.TWO__TO__THE__64(): int == LitInt(18446744073709551616);
// _default.TWO_TO_THE_64: Type axiom
axiom 0 < $FunctionContextHeight ==> $Is(_module.__default.TWO__TO__THE__64(), TInt);
}

procedure {:verboseName "TWO_TO_THE_64 (well-formedness)"} CheckWellFormed$$_module.__default.TWO__TO__THE__64();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// _default.TWO_TO_THE_64: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.__default.TWO__TO__THE__64(), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.__default.TWO__TO__THE__64(), TInt, $h));

function _module.__default.TWO__TO__THE__128() : int
uses {
axiom _module.__default.TWO__TO__THE__128(): int
   == LitInt(340282366920938463463374607431768211456);
// _default.TWO_TO_THE_128: Type axiom
axiom 0 < $FunctionContextHeight ==> $Is(_module.__default.TWO__TO__THE__128(), TInt);
}

procedure {:verboseName "TWO_TO_THE_128 (well-formedness)"} CheckWellFormed$$_module.__default.TWO__TO__THE__128();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// _default.TWO_TO_THE_128: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.__default.TWO__TO__THE__128(), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.__default.TWO__TO__THE__128(), TInt, $h));

procedure {:verboseName "TestU8 (well-formedness)"} CheckWellFormed$$_module.__default.TestU8();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestU8 (call)"} Call$$_module.__default.TestU8();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestU8 (correctness)"} Impl$$_module.__default.TestU8() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestU8 (correctness)"} Impl$$_module.__default.TestU8() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var o8#0: int where LitInt(0) <= o8#0 && o8#0 < _module.__default.TWO__TO__THE__8();
  var newtype$check#0: int;
  var newtype$check#1: int;
  var s8#0: int where LitInt(0) <= s8#0 && s8#0 < _module.__default.TWO__TO__THE__8();
  var newtype$check#2: int;
  var newtype$check#3: int;
  var w8#0: int where LitInt(0) <= w8#0 && w8#0 < _module.__default.TWO__TO__THE__8();
  var newtype$check#4: int;
  var newtype$check#5: int;
  var x8#0: int where LitInt(0) <= x8#0 && x8#0 < _module.__default.TWO__TO__THE__8();
  var newtype$check#6: int;
  var newtype$check#7: int;
  var y8#0: int where LitInt(0) <= y8#0 && y8#0 < _module.__default.TWO__TO__THE__8();
  var newtype$check#8: int;
  var newtype$check#9: int;
  var z8#0: int where LitInt(0) <= z8#0 && z8#0 < _module.__default.TWO__TO__THE__8();
  var newtype$check#10: int;
  var newtype$check#11: int;
  var m8#0: int where LitInt(0) <= m8#0 && m8#0 < _module.__default.TWO__TO__THE__8();
  var newtype$check#12: int;
  var newtype$check#13: int;
  var t8#0: int where LitInt(0) <= t8#0 && t8#0 < _module.__default.TWO__TO__THE__8();
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;
  var newtype$check#22: int;
  var newtype$check#23: int;
  var newtype$check#24: int;
  var newtype$check#25: int;
  var newtype$check#26: int;
  var newtype$check#27: int;
  var newtype$check#28: int;
  var newtype$check#29: int;
  var newtype$check#30: int;
  var newtype$check#31: int;
  var newtype$check#32: int;
  var newtype$check#33: int;
  var newtype$check#34: int;

    // AddMethodImpl: TestU8, Impl$$_module.__default.TestU8
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(22,17)
    assume true;
    newtype$check#0 := LitInt(1);
    assert {:id "id0"} LitInt(0) <= newtype$check#0
       && newtype$check#0 < _module.__default.TWO__TO__THE__8();
    newtype$check#1 := LitInt(1);
    assert {:id "id1"} LitInt(0) <= newtype$check#1
       && newtype$check#1 < _module.__default.TWO__TO__THE__8();
    assume true;
    o8#0 := LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(23,17)
    assume true;
    newtype$check#2 := LitInt(2);
    assert {:id "id3"} LitInt(0) <= newtype$check#2
       && newtype$check#2 < _module.__default.TWO__TO__THE__8();
    newtype$check#3 := LitInt(2);
    assert {:id "id4"} LitInt(0) <= newtype$check#3
       && newtype$check#3 < _module.__default.TWO__TO__THE__8();
    assume true;
    s8#0 := LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(24,17)
    assume true;
    newtype$check#4 := LitInt(5);
    assert {:id "id6"} LitInt(0) <= newtype$check#4
       && newtype$check#4 < _module.__default.TWO__TO__THE__8();
    newtype$check#5 := LitInt(5);
    assert {:id "id7"} LitInt(0) <= newtype$check#5
       && newtype$check#5 < _module.__default.TWO__TO__THE__8();
    assume true;
    w8#0 := LitInt(5);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(25,17)
    assume true;
    newtype$check#6 := LitInt(8);
    assert {:id "id9"} LitInt(0) <= newtype$check#6
       && newtype$check#6 < _module.__default.TWO__TO__THE__8();
    newtype$check#7 := LitInt(8);
    assert {:id "id10"} LitInt(0) <= newtype$check#7
       && newtype$check#7 < _module.__default.TWO__TO__THE__8();
    assume true;
    x8#0 := LitInt(8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(26,17)
    assume true;
    newtype$check#8 := LitInt(13);
    assert {:id "id12"} LitInt(0) <= newtype$check#8
       && newtype$check#8 < _module.__default.TWO__TO__THE__8();
    newtype$check#9 := LitInt(13);
    assert {:id "id13"} LitInt(0) <= newtype$check#9
       && newtype$check#9 < _module.__default.TWO__TO__THE__8();
    assume true;
    y8#0 := LitInt(13);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(27,17)
    assume true;
    newtype$check#10 := LitInt(21);
    assert {:id "id15"} LitInt(0) <= newtype$check#10
       && newtype$check#10 < _module.__default.TWO__TO__THE__8();
    newtype$check#11 := LitInt(21);
    assert {:id "id16"} LitInt(0) <= newtype$check#11
       && newtype$check#11 < _module.__default.TWO__TO__THE__8();
    assume true;
    z8#0 := LitInt(21);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(28,17)
    assume true;
    newtype$check#12 := LitInt(24);
    assert {:id "id18"} LitInt(0) <= newtype$check#12
       && newtype$check#12 < _module.__default.TWO__TO__THE__8();
    newtype$check#13 := LitInt(24);
    assert {:id "id19"} LitInt(0) <= newtype$check#13
       && newtype$check#13 < _module.__default.TWO__TO__THE__8();
    assume true;
    m8#0 := LitInt(24);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(29,17)
    assume true;
    newtype$check#14 := LitInt(16);
    assert {:id "id21"} LitInt(0) <= newtype$check#14
       && newtype$check#14 < _module.__default.TWO__TO__THE__8();
    newtype$check#15 := LitInt(16);
    assert {:id "id22"} LitInt(0) <= newtype$check#15
       && newtype$check#15 < _module.__default.TWO__TO__THE__8();
    assume true;
    t8#0 := LitInt(16);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(30,3)
    newtype$check#16 := x8#0 + y8#0;
    assert {:id "id24"} LitInt(0) <= newtype$check#16
       && newtype$check#16 < _module.__default.TWO__TO__THE__8();
    assume true;
    if (x8#0 + y8#0 != z8#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(31,3)
    newtype$check#17 := y8#0 - x8#0;
    assert {:id "id25"} LitInt(0) <= newtype$check#17
       && newtype$check#17 < _module.__default.TWO__TO__THE__8();
    assume true;
    if (y8#0 - x8#0 != w8#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(32,3)
    newtype$check#18 := x8#0;
    assert {:id "id26"} 0 <= newtype$check#18 && newtype$check#18 < 256;
    newtype$check#19 := y8#0;
    assert {:id "id27"} 0 <= newtype$check#19 && newtype$check#19 < 256;
    newtype$check#20 := x8#0;
    assert {:id "id28"} 0 <= newtype$check#20 && newtype$check#20 < 256;
    assume true;
    if (and_bv8(nat_to_bv8(x8#0), nat_to_bv8(y8#0)) != nat_to_bv8(x8#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(33,3)
    newtype$check#21 := x8#0;
    assert {:id "id29"} 0 <= newtype$check#21 && newtype$check#21 < 256;
    newtype$check#22 := y8#0;
    assert {:id "id30"} 0 <= newtype$check#22 && newtype$check#22 < 256;
    newtype$check#23 := y8#0;
    assert {:id "id31"} 0 <= newtype$check#23 && newtype$check#23 < 256;
    assume true;
    if (or_bv8(nat_to_bv8(x8#0), nat_to_bv8(y8#0)) != nat_to_bv8(y8#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(34,3)
    newtype$check#24 := x8#0;
    assert {:id "id32"} 0 <= newtype$check#24 && newtype$check#24 < 256;
    newtype$check#25 := y8#0;
    assert {:id "id33"} 0 <= newtype$check#25 && newtype$check#25 < 256;
    newtype$check#26 := w8#0;
    assert {:id "id34"} 0 <= newtype$check#26 && newtype$check#26 < 256;
    assume true;
    if (xor_bv8(nat_to_bv8(x8#0), nat_to_bv8(y8#0)) != nat_to_bv8(w8#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(35,3)
    newtype$check#27 := LitInt(3);
    assert {:id "id35"} LitInt(0) <= newtype$check#27
       && newtype$check#27 < _module.__default.TWO__TO__THE__8();
    newtype$check#28 := Mul(x8#0, LitInt(3));
    assert {:id "id36"} LitInt(0) <= newtype$check#28
       && newtype$check#28 < _module.__default.TWO__TO__THE__8();
    assume true;
    if (Mul(x8#0, LitInt(3)) != m8#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(36,3)
    newtype$check#29 := x8#0;
    assert {:id "id37"} 0 <= newtype$check#29 && newtype$check#29 < 256;
    newtype$check#30 := s8#0;
    assert {:id "id38"} 0 <= newtype$check#30 && newtype$check#30 < 16;
    assert {:id "id39"} {:subsumption 0} le_bv4(nat_to_bv4(s8#0), 8bv4);
    newtype$check#31 := s8#0;
    assert {:id "id40"} 0 <= newtype$check#31 && newtype$check#31 < 256;
    assume true;
    if (RightShift_bv8(nat_to_bv8(x8#0), (0bv4 ++ nat_to_bv4(s8#0)): bv8)
       != nat_to_bv8(s8#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(37,3)
    newtype$check#32 := x8#0;
    assert {:id "id41"} 0 <= newtype$check#32 && newtype$check#32 < 256;
    newtype$check#33 := o8#0;
    assert {:id "id42"} 0 <= newtype$check#33 && newtype$check#33 < 16;
    assert {:id "id43"} {:subsumption 0} le_bv4(nat_to_bv4(o8#0), 8bv4);
    newtype$check#34 := t8#0;
    assert {:id "id44"} 0 <= newtype$check#34 && newtype$check#34 < 256;
    assume true;
    if (LeftShift_bv8(nat_to_bv8(x8#0), (0bv4 ++ nat_to_bv4(o8#0)): bv8)
       != nat_to_bv8(t8#0))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(38,3)
    assume true;
}



procedure {:verboseName "TestI8 (well-formedness)"} CheckWellFormed$$_module.__default.TestI8();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestI8 (call)"} Call$$_module.__default.TestI8();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestI8 (correctness)"} Impl$$_module.__default.TestI8() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestI8 (correctness)"} Impl$$_module.__default.TestI8() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var o8#0: int where LitInt(-128) <= o8#0 && o8#0 < 128;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var s8#0: int where LitInt(-128) <= s8#0 && s8#0 < 128;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var w8#0: int where LitInt(-128) <= w8#0 && w8#0 < 128;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var x8#0: int where LitInt(-128) <= x8#0 && x8#0 < 128;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var y8#0: int where LitInt(-128) <= y8#0 && y8#0 < 128;
  var newtype$check#8: int;
  var newtype$check#9: int;
  var z8#0: int where LitInt(-128) <= z8#0 && z8#0 < 128;
  var newtype$check#10: int;
  var newtype$check#11: int;
  var m8#0: int where LitInt(-128) <= m8#0 && m8#0 < 128;
  var newtype$check#12: int;
  var newtype$check#13: int;
  var t8#0: int where LitInt(-128) <= t8#0 && t8#0 < 128;
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;

    // AddMethodImpl: TestI8, Impl$$_module.__default.TestI8
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(41,16)
    assume true;
    newtype$check#0 := LitInt(1);
    assert {:id "id45"} LitInt(-128) <= newtype$check#0 && newtype$check#0 < 128;
    newtype$check#1 := LitInt(1);
    assert {:id "id46"} LitInt(-128) <= newtype$check#1 && newtype$check#1 < 128;
    assume true;
    o8#0 := LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(42,16)
    assume true;
    newtype$check#2 := LitInt(2);
    assert {:id "id48"} LitInt(-128) <= newtype$check#2 && newtype$check#2 < 128;
    newtype$check#3 := LitInt(2);
    assert {:id "id49"} LitInt(-128) <= newtype$check#3 && newtype$check#3 < 128;
    assume true;
    s8#0 := LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(43,16)
    assume true;
    newtype$check#4 := LitInt(5);
    assert {:id "id51"} LitInt(-128) <= newtype$check#4 && newtype$check#4 < 128;
    newtype$check#5 := LitInt(5);
    assert {:id "id52"} LitInt(-128) <= newtype$check#5 && newtype$check#5 < 128;
    assume true;
    w8#0 := LitInt(5);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(44,16)
    assume true;
    newtype$check#6 := LitInt(8);
    assert {:id "id54"} LitInt(-128) <= newtype$check#6 && newtype$check#6 < 128;
    newtype$check#7 := LitInt(8);
    assert {:id "id55"} LitInt(-128) <= newtype$check#7 && newtype$check#7 < 128;
    assume true;
    x8#0 := LitInt(8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(45,16)
    assume true;
    newtype$check#8 := LitInt(13);
    assert {:id "id57"} LitInt(-128) <= newtype$check#8 && newtype$check#8 < 128;
    newtype$check#9 := LitInt(13);
    assert {:id "id58"} LitInt(-128) <= newtype$check#9 && newtype$check#9 < 128;
    assume true;
    y8#0 := LitInt(13);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(46,16)
    assume true;
    newtype$check#10 := LitInt(21);
    assert {:id "id60"} LitInt(-128) <= newtype$check#10 && newtype$check#10 < 128;
    newtype$check#11 := LitInt(21);
    assert {:id "id61"} LitInt(-128) <= newtype$check#11 && newtype$check#11 < 128;
    assume true;
    z8#0 := LitInt(21);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(47,16)
    assume true;
    newtype$check#12 := LitInt(24);
    assert {:id "id63"} LitInt(-128) <= newtype$check#12 && newtype$check#12 < 128;
    newtype$check#13 := LitInt(24);
    assert {:id "id64"} LitInt(-128) <= newtype$check#13 && newtype$check#13 < 128;
    assume true;
    m8#0 := LitInt(24);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(48,16)
    assume true;
    newtype$check#14 := LitInt(16);
    assert {:id "id66"} LitInt(-128) <= newtype$check#14 && newtype$check#14 < 128;
    newtype$check#15 := LitInt(16);
    assert {:id "id67"} LitInt(-128) <= newtype$check#15 && newtype$check#15 < 128;
    assume true;
    t8#0 := LitInt(16);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(49,3)
    newtype$check#16 := x8#0 + y8#0;
    assert {:id "id69"} LitInt(-128) <= newtype$check#16 && newtype$check#16 < 128;
    assume true;
    if (x8#0 + y8#0 != z8#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(50,3)
    newtype$check#17 := x8#0 - y8#0;
    assert {:id "id70"} LitInt(-128) <= newtype$check#17 && newtype$check#17 < 128;
    newtype$check#18 := LitInt(0);
    assert {:id "id71"} LitInt(-128) <= newtype$check#18 && newtype$check#18 < 128;
    newtype$check#19 := 0 - w8#0;
    assert {:id "id72"} LitInt(-128) <= newtype$check#19 && newtype$check#19 < 128;
    assume true;
    if (x8#0 - y8#0 != 0 - w8#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(51,3)
    newtype$check#20 := LitInt(3);
    assert {:id "id73"} LitInt(-128) <= newtype$check#20 && newtype$check#20 < 128;
    newtype$check#21 := Mul(x8#0, LitInt(3));
    assert {:id "id74"} LitInt(-128) <= newtype$check#21 && newtype$check#21 < 128;
    assume true;
    if (Mul(x8#0, LitInt(3)) != m8#0)
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(52,3)
    assume true;
}



procedure {:verboseName "TestU16 (well-formedness)"} CheckWellFormed$$_module.__default.TestU16();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestU16 (call)"} Call$$_module.__default.TestU16();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestU16 (correctness)"} Impl$$_module.__default.TestU16() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestU16 (correctness)"} Impl$$_module.__default.TestU16() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var o16#0: int
     where LitInt(0) <= o16#0 && o16#0 < _module.__default.TWO__TO__THE__16();
  var newtype$check#0: int;
  var newtype$check#1: int;
  var s16#0: int
     where LitInt(0) <= s16#0 && s16#0 < _module.__default.TWO__TO__THE__16();
  var newtype$check#2: int;
  var newtype$check#3: int;
  var w16#0: int
     where LitInt(0) <= w16#0 && w16#0 < _module.__default.TWO__TO__THE__16();
  var newtype$check#4: int;
  var newtype$check#5: int;
  var x16#0: int
     where LitInt(0) <= x16#0 && x16#0 < _module.__default.TWO__TO__THE__16();
  var newtype$check#6: int;
  var newtype$check#7: int;
  var y16#0: int
     where LitInt(0) <= y16#0 && y16#0 < _module.__default.TWO__TO__THE__16();
  var newtype$check#8: int;
  var newtype$check#9: int;
  var z16#0: int
     where LitInt(0) <= z16#0 && z16#0 < _module.__default.TWO__TO__THE__16();
  var newtype$check#10: int;
  var newtype$check#11: int;
  var m16#0: int
     where LitInt(0) <= m16#0 && m16#0 < _module.__default.TWO__TO__THE__16();
  var newtype$check#12: int;
  var newtype$check#13: int;
  var t16#0: int
     where LitInt(0) <= t16#0 && t16#0 < _module.__default.TWO__TO__THE__16();
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;
  var newtype$check#22: int;
  var newtype$check#23: int;
  var newtype$check#24: int;
  var newtype$check#25: int;
  var newtype$check#26: int;
  var newtype$check#27: int;
  var newtype$check#28: int;
  var newtype$check#29: int;
  var newtype$check#30: int;
  var newtype$check#31: bv16;
  var newtype$check#32: int;
  var newtype$check#33: int;
  var newtype$check#34: int;
  var newtype$check#35: bv16;
  var newtype$check#36: int;

    // AddMethodImpl: TestU16, Impl$$_module.__default.TestU16
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(55,19)
    assume true;
    newtype$check#0 := LitInt(1);
    assert {:id "id75"} LitInt(0) <= newtype$check#0
       && newtype$check#0 < _module.__default.TWO__TO__THE__16();
    newtype$check#1 := LitInt(1);
    assert {:id "id76"} LitInt(0) <= newtype$check#1
       && newtype$check#1 < _module.__default.TWO__TO__THE__16();
    assume true;
    o16#0 := LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(56,19)
    assume true;
    newtype$check#2 := LitInt(2);
    assert {:id "id78"} LitInt(0) <= newtype$check#2
       && newtype$check#2 < _module.__default.TWO__TO__THE__16();
    newtype$check#3 := LitInt(2);
    assert {:id "id79"} LitInt(0) <= newtype$check#3
       && newtype$check#3 < _module.__default.TWO__TO__THE__16();
    assume true;
    s16#0 := LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(57,19)
    assume true;
    newtype$check#4 := LitInt(5);
    assert {:id "id81"} LitInt(0) <= newtype$check#4
       && newtype$check#4 < _module.__default.TWO__TO__THE__16();
    newtype$check#5 := LitInt(5);
    assert {:id "id82"} LitInt(0) <= newtype$check#5
       && newtype$check#5 < _module.__default.TWO__TO__THE__16();
    assume true;
    w16#0 := LitInt(5);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(58,19)
    assume true;
    newtype$check#6 := LitInt(8);
    assert {:id "id84"} LitInt(0) <= newtype$check#6
       && newtype$check#6 < _module.__default.TWO__TO__THE__16();
    newtype$check#7 := LitInt(8);
    assert {:id "id85"} LitInt(0) <= newtype$check#7
       && newtype$check#7 < _module.__default.TWO__TO__THE__16();
    assume true;
    x16#0 := LitInt(8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(59,19)
    assume true;
    newtype$check#8 := LitInt(13);
    assert {:id "id87"} LitInt(0) <= newtype$check#8
       && newtype$check#8 < _module.__default.TWO__TO__THE__16();
    newtype$check#9 := LitInt(13);
    assert {:id "id88"} LitInt(0) <= newtype$check#9
       && newtype$check#9 < _module.__default.TWO__TO__THE__16();
    assume true;
    y16#0 := LitInt(13);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(60,19)
    assume true;
    newtype$check#10 := LitInt(21);
    assert {:id "id90"} LitInt(0) <= newtype$check#10
       && newtype$check#10 < _module.__default.TWO__TO__THE__16();
    newtype$check#11 := LitInt(21);
    assert {:id "id91"} LitInt(0) <= newtype$check#11
       && newtype$check#11 < _module.__default.TWO__TO__THE__16();
    assume true;
    z16#0 := LitInt(21);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(61,19)
    assume true;
    newtype$check#12 := LitInt(24);
    assert {:id "id93"} LitInt(0) <= newtype$check#12
       && newtype$check#12 < _module.__default.TWO__TO__THE__16();
    newtype$check#13 := LitInt(24);
    assert {:id "id94"} LitInt(0) <= newtype$check#13
       && newtype$check#13 < _module.__default.TWO__TO__THE__16();
    assume true;
    m16#0 := LitInt(24);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(62,19)
    assume true;
    newtype$check#14 := LitInt(16);
    assert {:id "id96"} LitInt(0) <= newtype$check#14
       && newtype$check#14 < _module.__default.TWO__TO__THE__16();
    newtype$check#15 := LitInt(16);
    assert {:id "id97"} LitInt(0) <= newtype$check#15
       && newtype$check#15 < _module.__default.TWO__TO__THE__16();
    assume true;
    t16#0 := LitInt(16);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(63,3)
    newtype$check#16 := x16#0 + y16#0;
    assert {:id "id99"} LitInt(0) <= newtype$check#16
       && newtype$check#16 < _module.__default.TWO__TO__THE__16();
    assume true;
    if (x16#0 + y16#0 != z16#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(64,3)
    newtype$check#17 := y16#0 - x16#0;
    assert {:id "id100"} LitInt(0) <= newtype$check#17
       && newtype$check#17 < _module.__default.TWO__TO__THE__16();
    assume true;
    if (y16#0 - x16#0 != w16#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(65,3)
    newtype$check#18 := x16#0;
    assert {:id "id101"} 0 <= newtype$check#18 && newtype$check#18 < 65536;
    newtype$check#19 := y16#0;
    assert {:id "id102"} 0 <= newtype$check#19 && newtype$check#19 < 65536;
    newtype$check#20 := x16#0;
    assert {:id "id103"} 0 <= newtype$check#20 && newtype$check#20 < 65536;
    assume true;
    if (and_bv16(nat_to_bv16(x16#0), nat_to_bv16(y16#0)) != nat_to_bv16(x16#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(66,3)
    newtype$check#21 := x16#0;
    assert {:id "id104"} 0 <= newtype$check#21 && newtype$check#21 < 65536;
    newtype$check#22 := y16#0;
    assert {:id "id105"} 0 <= newtype$check#22 && newtype$check#22 < 65536;
    newtype$check#23 := y16#0;
    assert {:id "id106"} 0 <= newtype$check#23 && newtype$check#23 < 65536;
    assume true;
    if (or_bv16(nat_to_bv16(x16#0), nat_to_bv16(y16#0)) != nat_to_bv16(y16#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(67,3)
    newtype$check#24 := x16#0;
    assert {:id "id107"} 0 <= newtype$check#24 && newtype$check#24 < 65536;
    newtype$check#25 := y16#0;
    assert {:id "id108"} 0 <= newtype$check#25 && newtype$check#25 < 65536;
    newtype$check#26 := w16#0;
    assert {:id "id109"} 0 <= newtype$check#26 && newtype$check#26 < 65536;
    assume true;
    if (xor_bv16(nat_to_bv16(x16#0), nat_to_bv16(y16#0)) != nat_to_bv16(w16#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(68,3)
    newtype$check#27 := LitInt(3);
    assert {:id "id110"} LitInt(0) <= newtype$check#27
       && newtype$check#27 < _module.__default.TWO__TO__THE__16();
    newtype$check#28 := Mul(x16#0, LitInt(3));
    assert {:id "id111"} LitInt(0) <= newtype$check#28
       && newtype$check#28 < _module.__default.TWO__TO__THE__16();
    assume true;
    if (Mul(x16#0, LitInt(3)) != m16#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(69,3)
    newtype$check#29 := x16#0;
    assert {:id "id112"} 0 <= newtype$check#29 && newtype$check#29 < 65536;
    newtype$check#30 := s16#0;
    assert {:id "id113"} 0 <= newtype$check#30 && newtype$check#30 < 65536;
    newtype$check#31 := nat_to_bv16(s16#0);
    assert {:id "id114"} lt_bv16(newtype$check#31, 32bv16);
    assert {:id "id115"} {:subsumption 0} le_bv5(nat_to_bv16(s16#0)[5:0], 16bv5);
    newtype$check#32 := s16#0;
    assert {:id "id116"} 0 <= newtype$check#32 && newtype$check#32 < 65536;
    assume true;
    if (RightShift_bv16(nat_to_bv16(x16#0), (0bv11 ++ nat_to_bv16(s16#0)[5:0]): bv16)
       != nat_to_bv16(s16#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(70,3)
    newtype$check#33 := x16#0;
    assert {:id "id117"} 0 <= newtype$check#33 && newtype$check#33 < 65536;
    newtype$check#34 := o16#0;
    assert {:id "id118"} 0 <= newtype$check#34 && newtype$check#34 < 65536;
    newtype$check#35 := nat_to_bv16(o16#0);
    assert {:id "id119"} lt_bv16(newtype$check#35, 32bv16);
    assert {:id "id120"} {:subsumption 0} le_bv5(nat_to_bv16(o16#0)[5:0], 16bv5);
    newtype$check#36 := t16#0;
    assert {:id "id121"} 0 <= newtype$check#36 && newtype$check#36 < 65536;
    assume true;
    if (LeftShift_bv16(nat_to_bv16(x16#0), (0bv11 ++ nat_to_bv16(o16#0)[5:0]): bv16)
       != nat_to_bv16(t16#0))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(71,3)
    assume true;
}



procedure {:verboseName "TestI16 (well-formedness)"} CheckWellFormed$$_module.__default.TestI16();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestI16 (call)"} Call$$_module.__default.TestI16();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestI16 (correctness)"} Impl$$_module.__default.TestI16() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestI16 (correctness)"} Impl$$_module.__default.TestI16() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var o16#0: int where LitInt(-32768) <= o16#0 && o16#0 < 32768;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var s16#0: int where LitInt(-32768) <= s16#0 && s16#0 < 32768;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var w16#0: int where LitInt(-32768) <= w16#0 && w16#0 < 32768;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var x16#0: int where LitInt(-32768) <= x16#0 && x16#0 < 32768;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var y16#0: int where LitInt(-32768) <= y16#0 && y16#0 < 32768;
  var newtype$check#8: int;
  var newtype$check#9: int;
  var z16#0: int where LitInt(-32768) <= z16#0 && z16#0 < 32768;
  var newtype$check#10: int;
  var newtype$check#11: int;
  var m16#0: int where LitInt(-32768) <= m16#0 && m16#0 < 32768;
  var newtype$check#12: int;
  var newtype$check#13: int;
  var t16#0: int where LitInt(-32768) <= t16#0 && t16#0 < 32768;
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;

    // AddMethodImpl: TestI16, Impl$$_module.__default.TestI16
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(75,18)
    assume true;
    newtype$check#0 := LitInt(1);
    assert {:id "id122"} LitInt(-32768) <= newtype$check#0 && newtype$check#0 < 32768;
    newtype$check#1 := LitInt(1);
    assert {:id "id123"} LitInt(-32768) <= newtype$check#1 && newtype$check#1 < 32768;
    assume true;
    o16#0 := LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(76,18)
    assume true;
    newtype$check#2 := LitInt(2);
    assert {:id "id125"} LitInt(-32768) <= newtype$check#2 && newtype$check#2 < 32768;
    newtype$check#3 := LitInt(2);
    assert {:id "id126"} LitInt(-32768) <= newtype$check#3 && newtype$check#3 < 32768;
    assume true;
    s16#0 := LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(77,18)
    assume true;
    newtype$check#4 := LitInt(5);
    assert {:id "id128"} LitInt(-32768) <= newtype$check#4 && newtype$check#4 < 32768;
    newtype$check#5 := LitInt(5);
    assert {:id "id129"} LitInt(-32768) <= newtype$check#5 && newtype$check#5 < 32768;
    assume true;
    w16#0 := LitInt(5);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(78,18)
    assume true;
    newtype$check#6 := LitInt(8);
    assert {:id "id131"} LitInt(-32768) <= newtype$check#6 && newtype$check#6 < 32768;
    newtype$check#7 := LitInt(8);
    assert {:id "id132"} LitInt(-32768) <= newtype$check#7 && newtype$check#7 < 32768;
    assume true;
    x16#0 := LitInt(8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(79,18)
    assume true;
    newtype$check#8 := LitInt(13);
    assert {:id "id134"} LitInt(-32768) <= newtype$check#8 && newtype$check#8 < 32768;
    newtype$check#9 := LitInt(13);
    assert {:id "id135"} LitInt(-32768) <= newtype$check#9 && newtype$check#9 < 32768;
    assume true;
    y16#0 := LitInt(13);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(80,18)
    assume true;
    newtype$check#10 := LitInt(21);
    assert {:id "id137"} LitInt(-32768) <= newtype$check#10 && newtype$check#10 < 32768;
    newtype$check#11 := LitInt(21);
    assert {:id "id138"} LitInt(-32768) <= newtype$check#11 && newtype$check#11 < 32768;
    assume true;
    z16#0 := LitInt(21);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(81,18)
    assume true;
    newtype$check#12 := LitInt(24);
    assert {:id "id140"} LitInt(-32768) <= newtype$check#12 && newtype$check#12 < 32768;
    newtype$check#13 := LitInt(24);
    assert {:id "id141"} LitInt(-32768) <= newtype$check#13 && newtype$check#13 < 32768;
    assume true;
    m16#0 := LitInt(24);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(82,18)
    assume true;
    newtype$check#14 := LitInt(16);
    assert {:id "id143"} LitInt(-32768) <= newtype$check#14 && newtype$check#14 < 32768;
    newtype$check#15 := LitInt(16);
    assert {:id "id144"} LitInt(-32768) <= newtype$check#15 && newtype$check#15 < 32768;
    assume true;
    t16#0 := LitInt(16);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(83,3)
    newtype$check#16 := x16#0 + y16#0;
    assert {:id "id146"} LitInt(-32768) <= newtype$check#16 && newtype$check#16 < 32768;
    assume true;
    if (x16#0 + y16#0 != z16#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(84,3)
    newtype$check#17 := x16#0 - y16#0;
    assert {:id "id147"} LitInt(-32768) <= newtype$check#17 && newtype$check#17 < 32768;
    newtype$check#18 := LitInt(0);
    assert {:id "id148"} LitInt(-32768) <= newtype$check#18 && newtype$check#18 < 32768;
    newtype$check#19 := 0 - w16#0;
    assert {:id "id149"} LitInt(-32768) <= newtype$check#19 && newtype$check#19 < 32768;
    assume true;
    if (x16#0 - y16#0 != 0 - w16#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(85,3)
    newtype$check#20 := LitInt(3);
    assert {:id "id150"} LitInt(-32768) <= newtype$check#20 && newtype$check#20 < 32768;
    newtype$check#21 := Mul(x16#0, LitInt(3));
    assert {:id "id151"} LitInt(-32768) <= newtype$check#21 && newtype$check#21 < 32768;
    assume true;
    if (Mul(x16#0, LitInt(3)) != m16#0)
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(86,3)
    assume true;
}



procedure {:verboseName "TestU32 (well-formedness)"} CheckWellFormed$$_module.__default.TestU32();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestU32 (call)"} Call$$_module.__default.TestU32();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestU32 (correctness)"} Impl$$_module.__default.TestU32() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestU32 (correctness)"} Impl$$_module.__default.TestU32() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var o32#0: int
     where LitInt(0) <= o32#0 && o32#0 < _module.__default.TWO__TO__THE__32();
  var newtype$check#0: int;
  var newtype$check#1: int;
  var s32#0: int
     where LitInt(0) <= s32#0 && s32#0 < _module.__default.TWO__TO__THE__32();
  var newtype$check#2: int;
  var newtype$check#3: int;
  var w32#0: int
     where LitInt(0) <= w32#0 && w32#0 < _module.__default.TWO__TO__THE__32();
  var newtype$check#4: int;
  var newtype$check#5: int;
  var x32#0: int
     where LitInt(0) <= x32#0 && x32#0 < _module.__default.TWO__TO__THE__32();
  var newtype$check#6: int;
  var newtype$check#7: int;
  var y32#0: int
     where LitInt(0) <= y32#0 && y32#0 < _module.__default.TWO__TO__THE__32();
  var newtype$check#8: int;
  var newtype$check#9: int;
  var z32#0: int
     where LitInt(0) <= z32#0 && z32#0 < _module.__default.TWO__TO__THE__32();
  var newtype$check#10: int;
  var newtype$check#11: int;
  var m32#0: int
     where LitInt(0) <= m32#0 && m32#0 < _module.__default.TWO__TO__THE__32();
  var newtype$check#12: int;
  var newtype$check#13: int;
  var t32#0: int
     where LitInt(0) <= t32#0 && t32#0 < _module.__default.TWO__TO__THE__32();
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;
  var newtype$check#22: int;
  var newtype$check#23: int;
  var newtype$check#24: int;
  var newtype$check#25: int;
  var newtype$check#26: int;
  var newtype$check#27: int;
  var newtype$check#28: int;
  var newtype$check#29: int;
  var newtype$check#30: int;
  var newtype$check#31: bv32;
  var newtype$check#32: int;
  var newtype$check#33: int;
  var newtype$check#34: int;
  var newtype$check#35: bv32;
  var newtype$check#36: int;

    // AddMethodImpl: TestU32, Impl$$_module.__default.TestU32
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(89,19)
    assume true;
    newtype$check#0 := LitInt(1);
    assert {:id "id152"} LitInt(0) <= newtype$check#0
       && newtype$check#0 < _module.__default.TWO__TO__THE__32();
    newtype$check#1 := LitInt(1);
    assert {:id "id153"} LitInt(0) <= newtype$check#1
       && newtype$check#1 < _module.__default.TWO__TO__THE__32();
    assume true;
    o32#0 := LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(90,19)
    assume true;
    newtype$check#2 := LitInt(2);
    assert {:id "id155"} LitInt(0) <= newtype$check#2
       && newtype$check#2 < _module.__default.TWO__TO__THE__32();
    newtype$check#3 := LitInt(2);
    assert {:id "id156"} LitInt(0) <= newtype$check#3
       && newtype$check#3 < _module.__default.TWO__TO__THE__32();
    assume true;
    s32#0 := LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(91,19)
    assume true;
    newtype$check#4 := LitInt(5);
    assert {:id "id158"} LitInt(0) <= newtype$check#4
       && newtype$check#4 < _module.__default.TWO__TO__THE__32();
    newtype$check#5 := LitInt(5);
    assert {:id "id159"} LitInt(0) <= newtype$check#5
       && newtype$check#5 < _module.__default.TWO__TO__THE__32();
    assume true;
    w32#0 := LitInt(5);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(92,19)
    assume true;
    newtype$check#6 := LitInt(8);
    assert {:id "id161"} LitInt(0) <= newtype$check#6
       && newtype$check#6 < _module.__default.TWO__TO__THE__32();
    newtype$check#7 := LitInt(8);
    assert {:id "id162"} LitInt(0) <= newtype$check#7
       && newtype$check#7 < _module.__default.TWO__TO__THE__32();
    assume true;
    x32#0 := LitInt(8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(93,19)
    assume true;
    newtype$check#8 := LitInt(13);
    assert {:id "id164"} LitInt(0) <= newtype$check#8
       && newtype$check#8 < _module.__default.TWO__TO__THE__32();
    newtype$check#9 := LitInt(13);
    assert {:id "id165"} LitInt(0) <= newtype$check#9
       && newtype$check#9 < _module.__default.TWO__TO__THE__32();
    assume true;
    y32#0 := LitInt(13);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(94,19)
    assume true;
    newtype$check#10 := LitInt(21);
    assert {:id "id167"} LitInt(0) <= newtype$check#10
       && newtype$check#10 < _module.__default.TWO__TO__THE__32();
    newtype$check#11 := LitInt(21);
    assert {:id "id168"} LitInt(0) <= newtype$check#11
       && newtype$check#11 < _module.__default.TWO__TO__THE__32();
    assume true;
    z32#0 := LitInt(21);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(95,19)
    assume true;
    newtype$check#12 := LitInt(24);
    assert {:id "id170"} LitInt(0) <= newtype$check#12
       && newtype$check#12 < _module.__default.TWO__TO__THE__32();
    newtype$check#13 := LitInt(24);
    assert {:id "id171"} LitInt(0) <= newtype$check#13
       && newtype$check#13 < _module.__default.TWO__TO__THE__32();
    assume true;
    m32#0 := LitInt(24);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(96,19)
    assume true;
    newtype$check#14 := LitInt(16);
    assert {:id "id173"} LitInt(0) <= newtype$check#14
       && newtype$check#14 < _module.__default.TWO__TO__THE__32();
    newtype$check#15 := LitInt(16);
    assert {:id "id174"} LitInt(0) <= newtype$check#15
       && newtype$check#15 < _module.__default.TWO__TO__THE__32();
    assume true;
    t32#0 := LitInt(16);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(97,3)
    newtype$check#16 := x32#0 + y32#0;
    assert {:id "id176"} LitInt(0) <= newtype$check#16
       && newtype$check#16 < _module.__default.TWO__TO__THE__32();
    assume true;
    if (x32#0 + y32#0 != z32#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(98,3)
    newtype$check#17 := y32#0 - x32#0;
    assert {:id "id177"} LitInt(0) <= newtype$check#17
       && newtype$check#17 < _module.__default.TWO__TO__THE__32();
    assume true;
    if (y32#0 - x32#0 != w32#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(99,3)
    newtype$check#18 := x32#0;
    assert {:id "id178"} 0 <= newtype$check#18 && newtype$check#18 < 4294967296;
    newtype$check#19 := y32#0;
    assert {:id "id179"} 0 <= newtype$check#19 && newtype$check#19 < 4294967296;
    newtype$check#20 := x32#0;
    assert {:id "id180"} 0 <= newtype$check#20 && newtype$check#20 < 4294967296;
    assume true;
    if (and_bv32(nat_to_bv32(x32#0), nat_to_bv32(y32#0)) != nat_to_bv32(x32#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(100,3)
    newtype$check#21 := x32#0;
    assert {:id "id181"} 0 <= newtype$check#21 && newtype$check#21 < 4294967296;
    newtype$check#22 := y32#0;
    assert {:id "id182"} 0 <= newtype$check#22 && newtype$check#22 < 4294967296;
    newtype$check#23 := y32#0;
    assert {:id "id183"} 0 <= newtype$check#23 && newtype$check#23 < 4294967296;
    assume true;
    if (or_bv32(nat_to_bv32(x32#0), nat_to_bv32(y32#0)) != nat_to_bv32(y32#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(101,3)
    newtype$check#24 := x32#0;
    assert {:id "id184"} 0 <= newtype$check#24 && newtype$check#24 < 4294967296;
    newtype$check#25 := y32#0;
    assert {:id "id185"} 0 <= newtype$check#25 && newtype$check#25 < 4294967296;
    newtype$check#26 := w32#0;
    assert {:id "id186"} 0 <= newtype$check#26 && newtype$check#26 < 4294967296;
    assume true;
    if (xor_bv32(nat_to_bv32(x32#0), nat_to_bv32(y32#0)) != nat_to_bv32(w32#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(102,3)
    newtype$check#27 := LitInt(3);
    assert {:id "id187"} LitInt(0) <= newtype$check#27
       && newtype$check#27 < _module.__default.TWO__TO__THE__32();
    newtype$check#28 := Mul(x32#0, LitInt(3));
    assert {:id "id188"} LitInt(0) <= newtype$check#28
       && newtype$check#28 < _module.__default.TWO__TO__THE__32();
    assume true;
    if (Mul(x32#0, LitInt(3)) != m32#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(103,3)
    newtype$check#29 := x32#0;
    assert {:id "id189"} 0 <= newtype$check#29 && newtype$check#29 < 4294967296;
    newtype$check#30 := s32#0;
    assert {:id "id190"} 0 <= newtype$check#30 && newtype$check#30 < 4294967296;
    newtype$check#31 := nat_to_bv32(s32#0);
    assert {:id "id191"} lt_bv32(newtype$check#31, 64bv32);
    assert {:id "id192"} {:subsumption 0} le_bv6(nat_to_bv32(s32#0)[6:0], 32bv6);
    newtype$check#32 := s32#0;
    assert {:id "id193"} 0 <= newtype$check#32 && newtype$check#32 < 4294967296;
    assume true;
    if (RightShift_bv32(nat_to_bv32(x32#0), (0bv26 ++ nat_to_bv32(s32#0)[6:0]): bv32)
       != nat_to_bv32(s32#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(104,3)
    newtype$check#33 := x32#0;
    assert {:id "id194"} 0 <= newtype$check#33 && newtype$check#33 < 4294967296;
    newtype$check#34 := o32#0;
    assert {:id "id195"} 0 <= newtype$check#34 && newtype$check#34 < 4294967296;
    newtype$check#35 := nat_to_bv32(o32#0);
    assert {:id "id196"} lt_bv32(newtype$check#35, 64bv32);
    assert {:id "id197"} {:subsumption 0} le_bv6(nat_to_bv32(o32#0)[6:0], 32bv6);
    newtype$check#36 := t32#0;
    assert {:id "id198"} 0 <= newtype$check#36 && newtype$check#36 < 4294967296;
    assume true;
    if (LeftShift_bv32(nat_to_bv32(x32#0), (0bv26 ++ nat_to_bv32(o32#0)[6:0]): bv32)
       != nat_to_bv32(t32#0))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(105,3)
    assume true;
}



procedure {:verboseName "TestI32 (well-formedness)"} CheckWellFormed$$_module.__default.TestI32();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestI32 (call)"} Call$$_module.__default.TestI32();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestI32 (correctness)"} Impl$$_module.__default.TestI32() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestI32 (correctness)"} Impl$$_module.__default.TestI32() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var o32#0: int where LitInt(-2147483648) <= o32#0 && o32#0 < 2147483648;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var s32#0: int where LitInt(-2147483648) <= s32#0 && s32#0 < 2147483648;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var w32#0: int where LitInt(-2147483648) <= w32#0 && w32#0 < 2147483648;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var x32#0: int where LitInt(-2147483648) <= x32#0 && x32#0 < 2147483648;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var y32#0: int where LitInt(-2147483648) <= y32#0 && y32#0 < 2147483648;
  var newtype$check#8: int;
  var newtype$check#9: int;
  var z32#0: int where LitInt(-2147483648) <= z32#0 && z32#0 < 2147483648;
  var newtype$check#10: int;
  var newtype$check#11: int;
  var m32#0: int where LitInt(-2147483648) <= m32#0 && m32#0 < 2147483648;
  var newtype$check#12: int;
  var newtype$check#13: int;
  var t32#0: int where LitInt(-2147483648) <= t32#0 && t32#0 < 2147483648;
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;

    // AddMethodImpl: TestI32, Impl$$_module.__default.TestI32
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(109,18)
    assume true;
    newtype$check#0 := LitInt(1);
    assert {:id "id199"} LitInt(-2147483648) <= newtype$check#0 && newtype$check#0 < 2147483648;
    newtype$check#1 := LitInt(1);
    assert {:id "id200"} LitInt(-2147483648) <= newtype$check#1 && newtype$check#1 < 2147483648;
    assume true;
    o32#0 := LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(110,18)
    assume true;
    newtype$check#2 := LitInt(2);
    assert {:id "id202"} LitInt(-2147483648) <= newtype$check#2 && newtype$check#2 < 2147483648;
    newtype$check#3 := LitInt(2);
    assert {:id "id203"} LitInt(-2147483648) <= newtype$check#3 && newtype$check#3 < 2147483648;
    assume true;
    s32#0 := LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(111,18)
    assume true;
    newtype$check#4 := LitInt(5);
    assert {:id "id205"} LitInt(-2147483648) <= newtype$check#4 && newtype$check#4 < 2147483648;
    newtype$check#5 := LitInt(5);
    assert {:id "id206"} LitInt(-2147483648) <= newtype$check#5 && newtype$check#5 < 2147483648;
    assume true;
    w32#0 := LitInt(5);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(112,18)
    assume true;
    newtype$check#6 := LitInt(8);
    assert {:id "id208"} LitInt(-2147483648) <= newtype$check#6 && newtype$check#6 < 2147483648;
    newtype$check#7 := LitInt(8);
    assert {:id "id209"} LitInt(-2147483648) <= newtype$check#7 && newtype$check#7 < 2147483648;
    assume true;
    x32#0 := LitInt(8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(113,18)
    assume true;
    newtype$check#8 := LitInt(13);
    assert {:id "id211"} LitInt(-2147483648) <= newtype$check#8 && newtype$check#8 < 2147483648;
    newtype$check#9 := LitInt(13);
    assert {:id "id212"} LitInt(-2147483648) <= newtype$check#9 && newtype$check#9 < 2147483648;
    assume true;
    y32#0 := LitInt(13);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(114,18)
    assume true;
    newtype$check#10 := LitInt(21);
    assert {:id "id214"} LitInt(-2147483648) <= newtype$check#10 && newtype$check#10 < 2147483648;
    newtype$check#11 := LitInt(21);
    assert {:id "id215"} LitInt(-2147483648) <= newtype$check#11 && newtype$check#11 < 2147483648;
    assume true;
    z32#0 := LitInt(21);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(115,18)
    assume true;
    newtype$check#12 := LitInt(24);
    assert {:id "id217"} LitInt(-2147483648) <= newtype$check#12 && newtype$check#12 < 2147483648;
    newtype$check#13 := LitInt(24);
    assert {:id "id218"} LitInt(-2147483648) <= newtype$check#13 && newtype$check#13 < 2147483648;
    assume true;
    m32#0 := LitInt(24);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(116,18)
    assume true;
    newtype$check#14 := LitInt(16);
    assert {:id "id220"} LitInt(-2147483648) <= newtype$check#14 && newtype$check#14 < 2147483648;
    newtype$check#15 := LitInt(16);
    assert {:id "id221"} LitInt(-2147483648) <= newtype$check#15 && newtype$check#15 < 2147483648;
    assume true;
    t32#0 := LitInt(16);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(117,3)
    newtype$check#16 := x32#0 + y32#0;
    assert {:id "id223"} LitInt(-2147483648) <= newtype$check#16 && newtype$check#16 < 2147483648;
    assume true;
    if (x32#0 + y32#0 != z32#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(118,3)
    newtype$check#17 := x32#0 - y32#0;
    assert {:id "id224"} LitInt(-2147483648) <= newtype$check#17 && newtype$check#17 < 2147483648;
    newtype$check#18 := LitInt(0);
    assert {:id "id225"} LitInt(-2147483648) <= newtype$check#18 && newtype$check#18 < 2147483648;
    newtype$check#19 := 0 - w32#0;
    assert {:id "id226"} LitInt(-2147483648) <= newtype$check#19 && newtype$check#19 < 2147483648;
    assume true;
    if (x32#0 - y32#0 != 0 - w32#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(119,3)
    newtype$check#20 := LitInt(3);
    assert {:id "id227"} LitInt(-2147483648) <= newtype$check#20 && newtype$check#20 < 2147483648;
    newtype$check#21 := Mul(x32#0, LitInt(3));
    assert {:id "id228"} LitInt(-2147483648) <= newtype$check#21 && newtype$check#21 < 2147483648;
    assume true;
    if (Mul(x32#0, LitInt(3)) != m32#0)
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(120,3)
    assume true;
}



procedure {:verboseName "TestU64 (well-formedness)"} CheckWellFormed$$_module.__default.TestU64();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestU64 (call)"} Call$$_module.__default.TestU64();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestU64 (correctness)"} Impl$$_module.__default.TestU64() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestU64 (correctness)"} Impl$$_module.__default.TestU64() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var o64#0: int
     where LitInt(0) <= o64#0 && o64#0 < _module.__default.TWO__TO__THE__64();
  var newtype$check#0: int;
  var newtype$check#1: int;
  var s64#0: int
     where LitInt(0) <= s64#0 && s64#0 < _module.__default.TWO__TO__THE__64();
  var newtype$check#2: int;
  var newtype$check#3: int;
  var w64#0: int
     where LitInt(0) <= w64#0 && w64#0 < _module.__default.TWO__TO__THE__64();
  var newtype$check#4: int;
  var newtype$check#5: int;
  var x64#0: int
     where LitInt(0) <= x64#0 && x64#0 < _module.__default.TWO__TO__THE__64();
  var newtype$check#6: int;
  var newtype$check#7: int;
  var y64#0: int
     where LitInt(0) <= y64#0 && y64#0 < _module.__default.TWO__TO__THE__64();
  var newtype$check#8: int;
  var newtype$check#9: int;
  var z64#0: int
     where LitInt(0) <= z64#0 && z64#0 < _module.__default.TWO__TO__THE__64();
  var newtype$check#10: int;
  var newtype$check#11: int;
  var m64#0: int
     where LitInt(0) <= m64#0 && m64#0 < _module.__default.TWO__TO__THE__64();
  var newtype$check#12: int;
  var newtype$check#13: int;
  var t64#0: int
     where LitInt(0) <= t64#0 && t64#0 < _module.__default.TWO__TO__THE__64();
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;
  var newtype$check#22: int;
  var newtype$check#23: int;
  var newtype$check#24: int;
  var newtype$check#25: int;
  var newtype$check#26: int;
  var newtype$check#27: int;
  var newtype$check#28: int;
  var newtype$check#29: int;
  var newtype$check#30: int;
  var newtype$check#31: bv64;
  var newtype$check#32: int;
  var newtype$check#33: int;
  var newtype$check#34: int;
  var newtype$check#35: bv64;
  var newtype$check#36: int;

    // AddMethodImpl: TestU64, Impl$$_module.__default.TestU64
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(123,19)
    assume true;
    newtype$check#0 := LitInt(1);
    assert {:id "id229"} LitInt(0) <= newtype$check#0
       && newtype$check#0 < _module.__default.TWO__TO__THE__64();
    newtype$check#1 := LitInt(1);
    assert {:id "id230"} LitInt(0) <= newtype$check#1
       && newtype$check#1 < _module.__default.TWO__TO__THE__64();
    assume true;
    o64#0 := LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(124,19)
    assume true;
    newtype$check#2 := LitInt(2);
    assert {:id "id232"} LitInt(0) <= newtype$check#2
       && newtype$check#2 < _module.__default.TWO__TO__THE__64();
    newtype$check#3 := LitInt(2);
    assert {:id "id233"} LitInt(0) <= newtype$check#3
       && newtype$check#3 < _module.__default.TWO__TO__THE__64();
    assume true;
    s64#0 := LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(125,19)
    assume true;
    newtype$check#4 := LitInt(5);
    assert {:id "id235"} LitInt(0) <= newtype$check#4
       && newtype$check#4 < _module.__default.TWO__TO__THE__64();
    newtype$check#5 := LitInt(5);
    assert {:id "id236"} LitInt(0) <= newtype$check#5
       && newtype$check#5 < _module.__default.TWO__TO__THE__64();
    assume true;
    w64#0 := LitInt(5);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(126,19)
    assume true;
    newtype$check#6 := LitInt(8);
    assert {:id "id238"} LitInt(0) <= newtype$check#6
       && newtype$check#6 < _module.__default.TWO__TO__THE__64();
    newtype$check#7 := LitInt(8);
    assert {:id "id239"} LitInt(0) <= newtype$check#7
       && newtype$check#7 < _module.__default.TWO__TO__THE__64();
    assume true;
    x64#0 := LitInt(8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(127,19)
    assume true;
    newtype$check#8 := LitInt(13);
    assert {:id "id241"} LitInt(0) <= newtype$check#8
       && newtype$check#8 < _module.__default.TWO__TO__THE__64();
    newtype$check#9 := LitInt(13);
    assert {:id "id242"} LitInt(0) <= newtype$check#9
       && newtype$check#9 < _module.__default.TWO__TO__THE__64();
    assume true;
    y64#0 := LitInt(13);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(128,19)
    assume true;
    newtype$check#10 := LitInt(21);
    assert {:id "id244"} LitInt(0) <= newtype$check#10
       && newtype$check#10 < _module.__default.TWO__TO__THE__64();
    newtype$check#11 := LitInt(21);
    assert {:id "id245"} LitInt(0) <= newtype$check#11
       && newtype$check#11 < _module.__default.TWO__TO__THE__64();
    assume true;
    z64#0 := LitInt(21);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(129,19)
    assume true;
    newtype$check#12 := LitInt(24);
    assert {:id "id247"} LitInt(0) <= newtype$check#12
       && newtype$check#12 < _module.__default.TWO__TO__THE__64();
    newtype$check#13 := LitInt(24);
    assert {:id "id248"} LitInt(0) <= newtype$check#13
       && newtype$check#13 < _module.__default.TWO__TO__THE__64();
    assume true;
    m64#0 := LitInt(24);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(130,19)
    assume true;
    newtype$check#14 := LitInt(16);
    assert {:id "id250"} LitInt(0) <= newtype$check#14
       && newtype$check#14 < _module.__default.TWO__TO__THE__64();
    newtype$check#15 := LitInt(16);
    assert {:id "id251"} LitInt(0) <= newtype$check#15
       && newtype$check#15 < _module.__default.TWO__TO__THE__64();
    assume true;
    t64#0 := LitInt(16);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(131,3)
    newtype$check#16 := x64#0 + y64#0;
    assert {:id "id253"} LitInt(0) <= newtype$check#16
       && newtype$check#16 < _module.__default.TWO__TO__THE__64();
    assume true;
    if (x64#0 + y64#0 != z64#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(132,3)
    newtype$check#17 := y64#0 - x64#0;
    assert {:id "id254"} LitInt(0) <= newtype$check#17
       && newtype$check#17 < _module.__default.TWO__TO__THE__64();
    assume true;
    if (y64#0 - x64#0 != w64#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(133,3)
    newtype$check#18 := x64#0;
    assert {:id "id255"} 0 <= newtype$check#18 && newtype$check#18 < 18446744073709551616;
    newtype$check#19 := y64#0;
    assert {:id "id256"} 0 <= newtype$check#19 && newtype$check#19 < 18446744073709551616;
    newtype$check#20 := x64#0;
    assert {:id "id257"} 0 <= newtype$check#20 && newtype$check#20 < 18446744073709551616;
    assume true;
    if (and_bv64(nat_to_bv64(x64#0), nat_to_bv64(y64#0)) != nat_to_bv64(x64#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(134,3)
    newtype$check#21 := x64#0;
    assert {:id "id258"} 0 <= newtype$check#21 && newtype$check#21 < 18446744073709551616;
    newtype$check#22 := y64#0;
    assert {:id "id259"} 0 <= newtype$check#22 && newtype$check#22 < 18446744073709551616;
    newtype$check#23 := y64#0;
    assert {:id "id260"} 0 <= newtype$check#23 && newtype$check#23 < 18446744073709551616;
    assume true;
    if (or_bv64(nat_to_bv64(x64#0), nat_to_bv64(y64#0)) != nat_to_bv64(y64#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(135,3)
    newtype$check#24 := x64#0;
    assert {:id "id261"} 0 <= newtype$check#24 && newtype$check#24 < 18446744073709551616;
    newtype$check#25 := y64#0;
    assert {:id "id262"} 0 <= newtype$check#25 && newtype$check#25 < 18446744073709551616;
    newtype$check#26 := w64#0;
    assert {:id "id263"} 0 <= newtype$check#26 && newtype$check#26 < 18446744073709551616;
    assume true;
    if (xor_bv64(nat_to_bv64(x64#0), nat_to_bv64(y64#0)) != nat_to_bv64(w64#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(136,3)
    newtype$check#27 := LitInt(3);
    assert {:id "id264"} LitInt(0) <= newtype$check#27
       && newtype$check#27 < _module.__default.TWO__TO__THE__64();
    newtype$check#28 := Mul(x64#0, LitInt(3));
    assert {:id "id265"} LitInt(0) <= newtype$check#28
       && newtype$check#28 < _module.__default.TWO__TO__THE__64();
    assume true;
    if (Mul(x64#0, LitInt(3)) != m64#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(137,3)
    newtype$check#29 := x64#0;
    assert {:id "id266"} 0 <= newtype$check#29 && newtype$check#29 < 18446744073709551616;
    newtype$check#30 := s64#0;
    assert {:id "id267"} 0 <= newtype$check#30 && newtype$check#30 < 18446744073709551616;
    newtype$check#31 := nat_to_bv64(s64#0);
    assert {:id "id268"} lt_bv64(newtype$check#31, 128bv64);
    assert {:id "id269"} {:subsumption 0} le_bv7(nat_to_bv64(s64#0)[7:0], 64bv7);
    newtype$check#32 := s64#0;
    assert {:id "id270"} 0 <= newtype$check#32 && newtype$check#32 < 18446744073709551616;
    assume true;
    if (RightShift_bv64(nat_to_bv64(x64#0), (0bv57 ++ nat_to_bv64(s64#0)[7:0]): bv64)
       != nat_to_bv64(s64#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(138,3)
    newtype$check#33 := x64#0;
    assert {:id "id271"} 0 <= newtype$check#33 && newtype$check#33 < 18446744073709551616;
    newtype$check#34 := o64#0;
    assert {:id "id272"} 0 <= newtype$check#34 && newtype$check#34 < 18446744073709551616;
    newtype$check#35 := nat_to_bv64(o64#0);
    assert {:id "id273"} lt_bv64(newtype$check#35, 128bv64);
    assert {:id "id274"} {:subsumption 0} le_bv7(nat_to_bv64(o64#0)[7:0], 64bv7);
    newtype$check#36 := t64#0;
    assert {:id "id275"} 0 <= newtype$check#36 && newtype$check#36 < 18446744073709551616;
    assume true;
    if (LeftShift_bv64(nat_to_bv64(x64#0), (0bv57 ++ nat_to_bv64(o64#0)[7:0]): bv64)
       != nat_to_bv64(t64#0))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(139,3)
    assume true;
}



procedure {:verboseName "TestI64 (well-formedness)"} CheckWellFormed$$_module.__default.TestI64();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestI64 (call)"} Call$$_module.__default.TestI64();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestI64 (correctness)"} Impl$$_module.__default.TestI64() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestI64 (correctness)"} Impl$$_module.__default.TestI64() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var o64#0: int
     where LitInt(-9223372036854775808) <= o64#0 && o64#0 < 9223372036854775808;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var s64#0: int
     where LitInt(-9223372036854775808) <= s64#0 && s64#0 < 9223372036854775808;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var w64#0: int
     where LitInt(-9223372036854775808) <= w64#0 && w64#0 < 9223372036854775808;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var x64#0: int
     where LitInt(-9223372036854775808) <= x64#0 && x64#0 < 9223372036854775808;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var y64#0: int
     where LitInt(-9223372036854775808) <= y64#0 && y64#0 < 9223372036854775808;
  var newtype$check#8: int;
  var newtype$check#9: int;
  var z64#0: int
     where LitInt(-9223372036854775808) <= z64#0 && z64#0 < 9223372036854775808;
  var newtype$check#10: int;
  var newtype$check#11: int;
  var m64#0: int
     where LitInt(-9223372036854775808) <= m64#0 && m64#0 < 9223372036854775808;
  var newtype$check#12: int;
  var newtype$check#13: int;
  var t64#0: int
     where LitInt(-9223372036854775808) <= t64#0 && t64#0 < 9223372036854775808;
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;

    // AddMethodImpl: TestI64, Impl$$_module.__default.TestI64
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(142,18)
    assume true;
    newtype$check#0 := LitInt(1);
    assert {:id "id276"} LitInt(-9223372036854775808) <= newtype$check#0
       && newtype$check#0 < 9223372036854775808;
    newtype$check#1 := LitInt(1);
    assert {:id "id277"} LitInt(-9223372036854775808) <= newtype$check#1
       && newtype$check#1 < 9223372036854775808;
    assume true;
    o64#0 := LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(143,18)
    assume true;
    newtype$check#2 := LitInt(2);
    assert {:id "id279"} LitInt(-9223372036854775808) <= newtype$check#2
       && newtype$check#2 < 9223372036854775808;
    newtype$check#3 := LitInt(2);
    assert {:id "id280"} LitInt(-9223372036854775808) <= newtype$check#3
       && newtype$check#3 < 9223372036854775808;
    assume true;
    s64#0 := LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(144,18)
    assume true;
    newtype$check#4 := LitInt(5);
    assert {:id "id282"} LitInt(-9223372036854775808) <= newtype$check#4
       && newtype$check#4 < 9223372036854775808;
    newtype$check#5 := LitInt(5);
    assert {:id "id283"} LitInt(-9223372036854775808) <= newtype$check#5
       && newtype$check#5 < 9223372036854775808;
    assume true;
    w64#0 := LitInt(5);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(145,18)
    assume true;
    newtype$check#6 := LitInt(8);
    assert {:id "id285"} LitInt(-9223372036854775808) <= newtype$check#6
       && newtype$check#6 < 9223372036854775808;
    newtype$check#7 := LitInt(8);
    assert {:id "id286"} LitInt(-9223372036854775808) <= newtype$check#7
       && newtype$check#7 < 9223372036854775808;
    assume true;
    x64#0 := LitInt(8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(146,18)
    assume true;
    newtype$check#8 := LitInt(13);
    assert {:id "id288"} LitInt(-9223372036854775808) <= newtype$check#8
       && newtype$check#8 < 9223372036854775808;
    newtype$check#9 := LitInt(13);
    assert {:id "id289"} LitInt(-9223372036854775808) <= newtype$check#9
       && newtype$check#9 < 9223372036854775808;
    assume true;
    y64#0 := LitInt(13);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(147,18)
    assume true;
    newtype$check#10 := LitInt(21);
    assert {:id "id291"} LitInt(-9223372036854775808) <= newtype$check#10
       && newtype$check#10 < 9223372036854775808;
    newtype$check#11 := LitInt(21);
    assert {:id "id292"} LitInt(-9223372036854775808) <= newtype$check#11
       && newtype$check#11 < 9223372036854775808;
    assume true;
    z64#0 := LitInt(21);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(148,18)
    assume true;
    newtype$check#12 := LitInt(24);
    assert {:id "id294"} LitInt(-9223372036854775808) <= newtype$check#12
       && newtype$check#12 < 9223372036854775808;
    newtype$check#13 := LitInt(24);
    assert {:id "id295"} LitInt(-9223372036854775808) <= newtype$check#13
       && newtype$check#13 < 9223372036854775808;
    assume true;
    m64#0 := LitInt(24);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(149,18)
    assume true;
    newtype$check#14 := LitInt(16);
    assert {:id "id297"} LitInt(-9223372036854775808) <= newtype$check#14
       && newtype$check#14 < 9223372036854775808;
    newtype$check#15 := LitInt(16);
    assert {:id "id298"} LitInt(-9223372036854775808) <= newtype$check#15
       && newtype$check#15 < 9223372036854775808;
    assume true;
    t64#0 := LitInt(16);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(150,3)
    newtype$check#16 := x64#0 + y64#0;
    assert {:id "id300"} LitInt(-9223372036854775808) <= newtype$check#16
       && newtype$check#16 < 9223372036854775808;
    assume true;
    if (x64#0 + y64#0 != z64#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(151,3)
    newtype$check#17 := x64#0 - y64#0;
    assert {:id "id301"} LitInt(-9223372036854775808) <= newtype$check#17
       && newtype$check#17 < 9223372036854775808;
    newtype$check#18 := LitInt(0);
    assert {:id "id302"} LitInt(-9223372036854775808) <= newtype$check#18
       && newtype$check#18 < 9223372036854775808;
    newtype$check#19 := 0 - w64#0;
    assert {:id "id303"} LitInt(-9223372036854775808) <= newtype$check#19
       && newtype$check#19 < 9223372036854775808;
    assume true;
    if (x64#0 - y64#0 != 0 - w64#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(152,3)
    newtype$check#20 := LitInt(3);
    assert {:id "id304"} LitInt(-9223372036854775808) <= newtype$check#20
       && newtype$check#20 < 9223372036854775808;
    newtype$check#21 := Mul(x64#0, LitInt(3));
    assert {:id "id305"} LitInt(-9223372036854775808) <= newtype$check#21
       && newtype$check#21 < 9223372036854775808;
    assume true;
    if (Mul(x64#0, LitInt(3)) != m64#0)
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(153,3)
    assume true;
}



procedure {:verboseName "TestU128 (well-formedness)"} CheckWellFormed$$_module.__default.TestU128();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestU128 (call)"} Call$$_module.__default.TestU128();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestU128 (correctness)"} Impl$$_module.__default.TestU128() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestU128 (correctness)"} Impl$$_module.__default.TestU128() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var o128#0: int
     where LitInt(0) <= o128#0 && o128#0 < _module.__default.TWO__TO__THE__128();
  var newtype$check#0: int;
  var newtype$check#1: int;
  var s128#0: int
     where LitInt(0) <= s128#0 && s128#0 < _module.__default.TWO__TO__THE__128();
  var newtype$check#2: int;
  var newtype$check#3: int;
  var w128#0: int
     where LitInt(0) <= w128#0 && w128#0 < _module.__default.TWO__TO__THE__128();
  var newtype$check#4: int;
  var newtype$check#5: int;
  var x128#0: int
     where LitInt(0) <= x128#0 && x128#0 < _module.__default.TWO__TO__THE__128();
  var newtype$check#6: int;
  var newtype$check#7: int;
  var y128#0: int
     where LitInt(0) <= y128#0 && y128#0 < _module.__default.TWO__TO__THE__128();
  var newtype$check#8: int;
  var newtype$check#9: int;
  var z128#0: int
     where LitInt(0) <= z128#0 && z128#0 < _module.__default.TWO__TO__THE__128();
  var newtype$check#10: int;
  var newtype$check#11: int;
  var m128#0: int
     where LitInt(0) <= m128#0 && m128#0 < _module.__default.TWO__TO__THE__128();
  var newtype$check#12: int;
  var newtype$check#13: int;
  var t128#0: int
     where LitInt(0) <= t128#0 && t128#0 < _module.__default.TWO__TO__THE__128();
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;
  var newtype$check#22: int;
  var newtype$check#23: int;
  var newtype$check#24: int;
  var newtype$check#25: int;
  var newtype$check#26: int;
  var newtype$check#27: int;
  var newtype$check#28: int;
  var newtype$check#29: int;
  var newtype$check#30: int;
  var newtype$check#31: bv128;
  var newtype$check#32: int;
  var newtype$check#33: int;
  var newtype$check#34: int;
  var newtype$check#35: bv128;
  var newtype$check#36: int;

    // AddMethodImpl: TestU128, Impl$$_module.__default.TestU128
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(156,21)
    assume true;
    newtype$check#0 := LitInt(1);
    assert {:id "id306"} LitInt(0) <= newtype$check#0
       && newtype$check#0 < _module.__default.TWO__TO__THE__128();
    newtype$check#1 := LitInt(1);
    assert {:id "id307"} LitInt(0) <= newtype$check#1
       && newtype$check#1 < _module.__default.TWO__TO__THE__128();
    assume true;
    o128#0 := LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(157,21)
    assume true;
    newtype$check#2 := LitInt(2);
    assert {:id "id309"} LitInt(0) <= newtype$check#2
       && newtype$check#2 < _module.__default.TWO__TO__THE__128();
    newtype$check#3 := LitInt(2);
    assert {:id "id310"} LitInt(0) <= newtype$check#3
       && newtype$check#3 < _module.__default.TWO__TO__THE__128();
    assume true;
    s128#0 := LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(158,21)
    assume true;
    newtype$check#4 := LitInt(5);
    assert {:id "id312"} LitInt(0) <= newtype$check#4
       && newtype$check#4 < _module.__default.TWO__TO__THE__128();
    newtype$check#5 := LitInt(5);
    assert {:id "id313"} LitInt(0) <= newtype$check#5
       && newtype$check#5 < _module.__default.TWO__TO__THE__128();
    assume true;
    w128#0 := LitInt(5);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(159,21)
    assume true;
    newtype$check#6 := LitInt(8);
    assert {:id "id315"} LitInt(0) <= newtype$check#6
       && newtype$check#6 < _module.__default.TWO__TO__THE__128();
    newtype$check#7 := LitInt(8);
    assert {:id "id316"} LitInt(0) <= newtype$check#7
       && newtype$check#7 < _module.__default.TWO__TO__THE__128();
    assume true;
    x128#0 := LitInt(8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(160,21)
    assume true;
    newtype$check#8 := LitInt(13);
    assert {:id "id318"} LitInt(0) <= newtype$check#8
       && newtype$check#8 < _module.__default.TWO__TO__THE__128();
    newtype$check#9 := LitInt(13);
    assert {:id "id319"} LitInt(0) <= newtype$check#9
       && newtype$check#9 < _module.__default.TWO__TO__THE__128();
    assume true;
    y128#0 := LitInt(13);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(161,21)
    assume true;
    newtype$check#10 := LitInt(21);
    assert {:id "id321"} LitInt(0) <= newtype$check#10
       && newtype$check#10 < _module.__default.TWO__TO__THE__128();
    newtype$check#11 := LitInt(21);
    assert {:id "id322"} LitInt(0) <= newtype$check#11
       && newtype$check#11 < _module.__default.TWO__TO__THE__128();
    assume true;
    z128#0 := LitInt(21);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(162,21)
    assume true;
    newtype$check#12 := LitInt(24);
    assert {:id "id324"} LitInt(0) <= newtype$check#12
       && newtype$check#12 < _module.__default.TWO__TO__THE__128();
    newtype$check#13 := LitInt(24);
    assert {:id "id325"} LitInt(0) <= newtype$check#13
       && newtype$check#13 < _module.__default.TWO__TO__THE__128();
    assume true;
    m128#0 := LitInt(24);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(163,21)
    assume true;
    newtype$check#14 := LitInt(16);
    assert {:id "id327"} LitInt(0) <= newtype$check#14
       && newtype$check#14 < _module.__default.TWO__TO__THE__128();
    newtype$check#15 := LitInt(16);
    assert {:id "id328"} LitInt(0) <= newtype$check#15
       && newtype$check#15 < _module.__default.TWO__TO__THE__128();
    assume true;
    t128#0 := LitInt(16);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(164,3)
    newtype$check#16 := x128#0 + y128#0;
    assert {:id "id330"} LitInt(0) <= newtype$check#16
       && newtype$check#16 < _module.__default.TWO__TO__THE__128();
    assume true;
    if (x128#0 + y128#0 != z128#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(165,3)
    newtype$check#17 := y128#0 - x128#0;
    assert {:id "id331"} LitInt(0) <= newtype$check#17
       && newtype$check#17 < _module.__default.TWO__TO__THE__128();
    assume true;
    if (y128#0 - x128#0 != w128#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(166,3)
    newtype$check#18 := x128#0;
    assert {:id "id332"} 0 <= newtype$check#18
       && newtype$check#18 < 340282366920938463463374607431768211456;
    newtype$check#19 := y128#0;
    assert {:id "id333"} 0 <= newtype$check#19
       && newtype$check#19 < 340282366920938463463374607431768211456;
    newtype$check#20 := x128#0;
    assert {:id "id334"} 0 <= newtype$check#20
       && newtype$check#20 < 340282366920938463463374607431768211456;
    assume true;
    if (and_bv128(nat_to_bv128(x128#0), nat_to_bv128(y128#0)) != nat_to_bv128(x128#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(167,3)
    newtype$check#21 := x128#0;
    assert {:id "id335"} 0 <= newtype$check#21
       && newtype$check#21 < 340282366920938463463374607431768211456;
    newtype$check#22 := y128#0;
    assert {:id "id336"} 0 <= newtype$check#22
       && newtype$check#22 < 340282366920938463463374607431768211456;
    newtype$check#23 := y128#0;
    assert {:id "id337"} 0 <= newtype$check#23
       && newtype$check#23 < 340282366920938463463374607431768211456;
    assume true;
    if (or_bv128(nat_to_bv128(x128#0), nat_to_bv128(y128#0)) != nat_to_bv128(y128#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(168,3)
    newtype$check#24 := x128#0;
    assert {:id "id338"} 0 <= newtype$check#24
       && newtype$check#24 < 340282366920938463463374607431768211456;
    newtype$check#25 := y128#0;
    assert {:id "id339"} 0 <= newtype$check#25
       && newtype$check#25 < 340282366920938463463374607431768211456;
    newtype$check#26 := w128#0;
    assert {:id "id340"} 0 <= newtype$check#26
       && newtype$check#26 < 340282366920938463463374607431768211456;
    assume true;
    if (xor_bv128(nat_to_bv128(x128#0), nat_to_bv128(y128#0)) != nat_to_bv128(w128#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(169,3)
    newtype$check#27 := LitInt(3);
    assert {:id "id341"} LitInt(0) <= newtype$check#27
       && newtype$check#27 < _module.__default.TWO__TO__THE__128();
    newtype$check#28 := Mul(x128#0, LitInt(3));
    assert {:id "id342"} LitInt(0) <= newtype$check#28
       && newtype$check#28 < _module.__default.TWO__TO__THE__128();
    assume true;
    if (Mul(x128#0, LitInt(3)) != m128#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(170,3)
    newtype$check#29 := x128#0;
    assert {:id "id343"} 0 <= newtype$check#29
       && newtype$check#29 < 340282366920938463463374607431768211456;
    newtype$check#30 := s128#0;
    assert {:id "id344"} 0 <= newtype$check#30
       && newtype$check#30 < 340282366920938463463374607431768211456;
    newtype$check#31 := nat_to_bv128(s128#0);
    assert {:id "id345"} lt_bv128(newtype$check#31, 256bv128);
    assert {:id "id346"} {:subsumption 0} le_bv8(nat_to_bv128(s128#0)[8:0], 128bv8);
    newtype$check#32 := s128#0;
    assert {:id "id347"} 0 <= newtype$check#32
       && newtype$check#32 < 340282366920938463463374607431768211456;
    assume true;
    if (RightShift_bv128(nat_to_bv128(x128#0), (0bv120 ++ nat_to_bv128(s128#0)[8:0]): bv128)
       != nat_to_bv128(s128#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(171,3)
    newtype$check#33 := x128#0;
    assert {:id "id348"} 0 <= newtype$check#33
       && newtype$check#33 < 340282366920938463463374607431768211456;
    newtype$check#34 := o128#0;
    assert {:id "id349"} 0 <= newtype$check#34
       && newtype$check#34 < 340282366920938463463374607431768211456;
    newtype$check#35 := nat_to_bv128(o128#0);
    assert {:id "id350"} lt_bv128(newtype$check#35, 256bv128);
    assert {:id "id351"} {:subsumption 0} le_bv8(nat_to_bv128(o128#0)[8:0], 128bv8);
    newtype$check#36 := t128#0;
    assert {:id "id352"} 0 <= newtype$check#36
       && newtype$check#36 < 340282366920938463463374607431768211456;
    assume true;
    if (LeftShift_bv128(nat_to_bv128(x128#0), (0bv120 ++ nat_to_bv128(o128#0)[8:0]): bv128)
       != nat_to_bv128(t128#0))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(172,3)
    assume true;
}



procedure {:verboseName "TestI128 (well-formedness)"} CheckWellFormed$$_module.__default.TestI128();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestI128 (call)"} Call$$_module.__default.TestI128();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestI128 (correctness)"} Impl$$_module.__default.TestI128() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestI128 (correctness)"} Impl$$_module.__default.TestI128() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var o128#0: int
     where LitInt(-170141183460469231731687303715884105728) <= o128#0
       && o128#0 < 170141183460469231731687303715884105728;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var s128#0: int
     where LitInt(-170141183460469231731687303715884105728) <= s128#0
       && s128#0 < 170141183460469231731687303715884105728;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var w128#0: int
     where LitInt(-170141183460469231731687303715884105728) <= w128#0
       && w128#0 < 170141183460469231731687303715884105728;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var x128#0: int
     where LitInt(-170141183460469231731687303715884105728) <= x128#0
       && x128#0 < 170141183460469231731687303715884105728;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var y128#0: int
     where LitInt(-170141183460469231731687303715884105728) <= y128#0
       && y128#0 < 170141183460469231731687303715884105728;
  var newtype$check#8: int;
  var newtype$check#9: int;
  var z128#0: int
     where LitInt(-170141183460469231731687303715884105728) <= z128#0
       && z128#0 < 170141183460469231731687303715884105728;
  var newtype$check#10: int;
  var newtype$check#11: int;
  var m128#0: int
     where LitInt(-170141183460469231731687303715884105728) <= m128#0
       && m128#0 < 170141183460469231731687303715884105728;
  var newtype$check#12: int;
  var newtype$check#13: int;
  var t128#0: int
     where LitInt(-170141183460469231731687303715884105728) <= t128#0
       && t128#0 < 170141183460469231731687303715884105728;
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;

    // AddMethodImpl: TestI128, Impl$$_module.__default.TestI128
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(176,20)
    assume true;
    newtype$check#0 := LitInt(1);
    assert {:id "id353"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#0
       && newtype$check#0 < 170141183460469231731687303715884105728;
    newtype$check#1 := LitInt(1);
    assert {:id "id354"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#1
       && newtype$check#1 < 170141183460469231731687303715884105728;
    assume true;
    o128#0 := LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(177,20)
    assume true;
    newtype$check#2 := LitInt(2);
    assert {:id "id356"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#2
       && newtype$check#2 < 170141183460469231731687303715884105728;
    newtype$check#3 := LitInt(2);
    assert {:id "id357"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#3
       && newtype$check#3 < 170141183460469231731687303715884105728;
    assume true;
    s128#0 := LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(178,20)
    assume true;
    newtype$check#4 := LitInt(5);
    assert {:id "id359"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#4
       && newtype$check#4 < 170141183460469231731687303715884105728;
    newtype$check#5 := LitInt(5);
    assert {:id "id360"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#5
       && newtype$check#5 < 170141183460469231731687303715884105728;
    assume true;
    w128#0 := LitInt(5);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(179,20)
    assume true;
    newtype$check#6 := LitInt(8);
    assert {:id "id362"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#6
       && newtype$check#6 < 170141183460469231731687303715884105728;
    newtype$check#7 := LitInt(8);
    assert {:id "id363"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#7
       && newtype$check#7 < 170141183460469231731687303715884105728;
    assume true;
    x128#0 := LitInt(8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(180,20)
    assume true;
    newtype$check#8 := LitInt(13);
    assert {:id "id365"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#8
       && newtype$check#8 < 170141183460469231731687303715884105728;
    newtype$check#9 := LitInt(13);
    assert {:id "id366"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#9
       && newtype$check#9 < 170141183460469231731687303715884105728;
    assume true;
    y128#0 := LitInt(13);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(181,20)
    assume true;
    newtype$check#10 := LitInt(21);
    assert {:id "id368"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#10
       && newtype$check#10 < 170141183460469231731687303715884105728;
    newtype$check#11 := LitInt(21);
    assert {:id "id369"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#11
       && newtype$check#11 < 170141183460469231731687303715884105728;
    assume true;
    z128#0 := LitInt(21);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(182,20)
    assume true;
    newtype$check#12 := LitInt(24);
    assert {:id "id371"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#12
       && newtype$check#12 < 170141183460469231731687303715884105728;
    newtype$check#13 := LitInt(24);
    assert {:id "id372"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#13
       && newtype$check#13 < 170141183460469231731687303715884105728;
    assume true;
    m128#0 := LitInt(24);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(183,20)
    assume true;
    newtype$check#14 := LitInt(16);
    assert {:id "id374"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#14
       && newtype$check#14 < 170141183460469231731687303715884105728;
    newtype$check#15 := LitInt(16);
    assert {:id "id375"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#15
       && newtype$check#15 < 170141183460469231731687303715884105728;
    assume true;
    t128#0 := LitInt(16);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(184,3)
    newtype$check#16 := x128#0 + y128#0;
    assert {:id "id377"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#16
       && newtype$check#16 < 170141183460469231731687303715884105728;
    assume true;
    if (x128#0 + y128#0 != z128#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(185,3)
    newtype$check#17 := x128#0 - y128#0;
    assert {:id "id378"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#17
       && newtype$check#17 < 170141183460469231731687303715884105728;
    newtype$check#18 := LitInt(0);
    assert {:id "id379"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#18
       && newtype$check#18 < 170141183460469231731687303715884105728;
    newtype$check#19 := 0 - w128#0;
    assert {:id "id380"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#19
       && newtype$check#19 < 170141183460469231731687303715884105728;
    assume true;
    if (x128#0 - y128#0 != 0 - w128#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(186,3)
    newtype$check#20 := LitInt(3);
    assert {:id "id381"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#20
       && newtype$check#20 < 170141183460469231731687303715884105728;
    newtype$check#21 := Mul(x128#0, LitInt(3));
    assert {:id "id382"} LitInt(-170141183460469231731687303715884105728) <= newtype$check#21
       && newtype$check#21 < 170141183460469231731687303715884105728;
    assume true;
    if (Mul(x128#0, LitInt(3)) != m128#0)
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(187,3)
    assume true;
}



procedure {:verboseName "Main (well-formedness)"} {:rlimit 1000000} CheckWellFormed$$_module.__default.Main();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Main (call)"} {:rlimit 1000000} Call$$_module.__default.Main();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Main (correctness)"} {:rlimit 1000000} Impl$$_module.__default.Main() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} {:rlimit 1000000} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var t#0: bool;
  var f#0: bool;
  var a#0: char where $Is(a#0, TChar);
  var z#0: char where $Is(z#0, TChar);
  var m#0: Map
     where $Is(m#0, TMap(TInt, TInt)) && $IsAlloc(m#0, TMap(TInt, TInt), $Heap);
  var m2#0: Map
     where $Is(m2#0, TMap(TInt, TInt)) && $IsAlloc(m2#0, TMap(TInt, TInt), $Heap);
  var m3#0: Map
     where $Is(m3#0, TMap(TInt, TInt)) && $IsAlloc(m3#0, TMap(TInt, TInt), $Heap);
  var k#0: int;
  var st#0: Set where $Is(st#0, TSet(TInt)) && $IsAlloc(st#0, TSet(TInt), $Heap);
  var t2#0: Set where $Is(t2#0, TSet(TInt)) && $IsAlloc(t2#0, TSet(TInt), $Heap);
  var t3#0: Set where $Is(t3#0, TSet(TInt)) && $IsAlloc(t3#0, TSet(TInt), $Heap);
  var k#3: int;
  var s1#0: Seq where $Is(s1#0, TSeq(TInt)) && $IsAlloc(s1#0, TSeq(TInt), $Heap);
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var s2#0: Seq where $Is(s2#0, TSeq(TInt)) && $IsAlloc(s2#0, TSeq(TInt), $Heap);
  var s3#0: Seq where $Is(s3#0, TSeq(TInt)) && $IsAlloc(s3#0, TSeq(TInt), $Heap);
  var s4#0: Seq where $Is(s4#0, TSeq(TInt)) && $IsAlloc(s4#0, TSeq(TInt), $Heap);
  var h#0: MultiSet
     where $Is(h#0, TMultiSet(TInt)) && $IsAlloc(h#0, TMultiSet(TInt), $Heap);
  var k#4: MultiSet
     where $Is(k#4, TMultiSet(TInt)) && $IsAlloc(k#4, TMultiSet(TInt), $Heap);
  var seq1#0: Seq where $Is(seq1#0, TSeq(TInt)) && $IsAlloc(seq1#0, TSeq(TInt), $Heap);
  var seq2#0: int;
  var seq3#0: Seq where $Is(seq3#0, TSeq(TInt)) && $IsAlloc(seq3#0, TSeq(TInt), $Heap);
  var seq4#0: Seq where $Is(seq4#0, TSeq(TInt)) && $IsAlloc(seq4#0, TSeq(TInt), $Heap);

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(190,9)
    assume true;
    assume true;
    t#0 := Lit(true);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(191,9)
    assume true;
    assume true;
    f#0 := Lit(false);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(192,3)
    if (t#0)
    {
    }

    if (!(t#0 && f#0))
    {
    }

    if ((t#0 && f#0) || f#0)
    {
    }

    assume true;
    if (!((t#0 && f#0) || f#0 ==> f#0))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(193,3)
    assume true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(194,3)
    if (t#0)
    {
    }

    if (f#0)
    {
    }

    assume true;
    if (!(t#0 && f#0 <==> f#0 && t#0))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(195,3)
    assume true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(197,3)
    assume true;
    if (LitInt(3) < LitInt(2))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(198,3)
    assume true;
    if (!Lit(2 < 3))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(199,3)
    assume true;
    if (LitInt(2) > LitInt(3))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(200,3)
    assume true;
    if (!Lit(3 > 2))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(201,3)
    assume true;
    if (!Lit(3 != 2))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(202,3)
    assume true;
    if (LitInt(2) != LitInt(2))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(203,3)
    assume true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(205,3)
    assume true;
    if (LitInt(2 + 2) != LitInt(4))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(206,3)
    assume true;
    if (LitInt(Mul(LitInt(2), LitInt(2))) != LitInt(4))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(207,3)
    assume true;
    if (LitInt(2 - 2) != LitInt(0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(208,3)
    assert {:id "id385"} {:subsumption 0} LitInt(2) != 0;
    assume true;
    if (LitInt(Div(-1, LitInt(2))) != LitInt(-1))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(209,3)
    assert {:id "id386"} {:subsumption 0} LitInt(2) != 0;
    assume true;
    if (LitInt(Mod(5, LitInt(2))) != LitInt(1))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(210,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(211,9)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id387"} Call$$_module.__default.TestU8();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(212,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id388"} Call$$_module.__default.TestU16();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(213,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id389"} Call$$_module.__default.TestU32();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(214,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id390"} Call$$_module.__default.TestU64();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(215,11)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id391"} Call$$_module.__default.TestU128();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(216,9)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id392"} Call$$_module.__default.TestI8();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(217,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id393"} Call$$_module.__default.TestI16();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(218,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id394"} Call$$_module.__default.TestI32();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(219,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id395"} Call$$_module.__default.TestI64();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(220,11)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id396"} Call$$_module.__default.TestI128();
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(222,9)
    assume true;
    assume true;
    a#0 := Lit(char#FromInt(97));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(223,9)
    assume true;
    assume true;
    z#0 := Lit(char#FromInt(122));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(224,3)
    assume true;
    if (char#ToInt(z#0) <= char#ToInt(a#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(225,3)
    assume true;
    if (char#ToInt(a#0) >= char#ToInt(z#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(226,3)
    assume true;
    if (char#ToInt(a#0) < char#ToInt(a#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(227,3)
    assume true;
    if (char#ToInt(a#0) > char#ToInt(a#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(228,3)
    assume true;
    if (a#0 == z#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(229,3)
    assume true;
    if (a#0 != a#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(230,3)
    assume true;
    if (char#ToInt(a#0) < char#ToInt(a#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(231,3)
    assume true;
    if (char#ToInt(z#0) < char#ToInt(a#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(232,3)
    assume true;
    if (char#ToInt(z#0) <= char#ToInt(a#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(233,3)
    assume true;
    if (char#ToInt(a#0) >= char#ToInt(z#0))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(234,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(236,9)
    assume true;
    assume true;
    m#0 := Lit(Map#Build(Map#Empty(): Map, $Box(LitInt(1)), $Box(LitInt(2))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(237,3)
    assume true;
    if (!Set#IsMember(Map#Domain(m#0), $Box(1)))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(238,3)
    assume true;
    if (Set#IsMember(Map#Domain(m#0), $Box(2)))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(239,3)
    assert {:id "id400"} {:subsumption 0} Set#IsMember(Map#Domain(m#0), $Box(LitInt(1)));
    assume true;
    if ($Unbox(Map#Elements(m#0)[$Box(LitInt(1))]): int != LitInt(2))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(240,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(241,10)
    assume true;
    assume true;
    m2#0 := Map#Subtract(Map#Build(m#0, $Box(LitInt(2)), $Box(LitInt(4))), 
      Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(242,3)
    assume true;
    if (Set#IsMember(Map#Domain(m2#0), $Box(1)))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(243,3)
    assume true;
    if (!Set#IsMember(Map#Domain(m2#0), $Box(2)))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(244,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(245,10)
    assume true;
    // Begin Comprehension WF check
    havoc k#0;
    if (true)
    {
        if (LitInt(2) <= k#0)
        {
        }

        if (LitInt(2) <= k#0 && k#0 < 4)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    m3#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
          $IsBox($w#0, TInt) && LitInt(2) <= $Unbox($w#0): int && $Unbox($w#0): int < 4)), 
      (lambda $w#0: Box :: $Box(Mul(LitInt(2), $Unbox($w#0): int))), 
      TMap(TInt, TInt));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(246,3)
    assume true;
    if (!Map#Equal(m3#0, 
      Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(3)), $Box(LitInt(6))), 
        $Box(LitInt(2)), 
        $Box(LitInt(4)))))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(247,3)
    assume true;
    if (Map#Card(m3#0) != LitInt(2))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(248,3)
    assume true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(250,3)
    assume true;
    if (!Set#Equal(Map#Domain(m3#0), 
      Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(2))), $Box(LitInt(3)))))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(251,3)
    assume true;
    if (!Set#Equal(Map#Values(m3#0), 
      Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(4))), $Box(LitInt(6)))))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(252,3)
    assume true;
    if (!Set#Equal(Map#Items(m3#0), 
      Set#UnionOne(Set#UnionOne(Set#Empty(): Set, 
          $Box(Lit(#_System._tuple#2._#Make2($Box(LitInt(2)), $Box(LitInt(4)))))), 
        $Box(Lit(#_System._tuple#2._#Make2($Box(LitInt(3)), $Box(LitInt(6))))))))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(253,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(255,10)
    assume true;
    assume true;
    st#0 := Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(256,3)
    assume true;
    if (!Set#IsMember(st#0, $Box(LitInt(1))))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(257,3)
    assume true;
    if (Set#IsMember(st#0, $Box(LitInt(2))))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(258,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(259,10)
    assume true;
    assume true;
    t2#0 := Set#Difference(Set#Union(st#0, Set#UnionOne(Set#Empty(): Set, $Box(LitInt(2)))), 
      Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(260,3)
    assume true;
    if (Set#IsMember(t2#0, $Box(LitInt(1))))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(261,3)
    assume true;
    if (!Set#IsMember(t2#0, $Box(LitInt(2))))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(262,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(263,10)
    assume true;
    // Begin Comprehension WF check
    havoc k#3;
    if (true)
    {
        if (LitInt(2) <= k#3)
        {
        }

        if (LitInt(2) <= k#3 && k#3 < 4)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    t3#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        (exists k#2: int :: 
          { Mul(2, k#2) } 
          LitInt(2) <= k#2 && k#2 < 4 && $y#0 == $Box(Mul(LitInt(2), k#2)))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(264,3)
    assume true;
    if (!Set#Equal(t3#0, 
      Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(6))), $Box(LitInt(4)))))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(265,3)
    assume true;
    if (Set#Card(t3#0) != LitInt(2))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(266,3)
    assume true;
    if (!Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(4))), $Box(LitInt(6))), 
      t3#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(267,3)
    assume true;
    if (!(Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(4))), t3#0)
       && !Set#Subset(t3#0, Set#UnionOne(Set#Empty(): Set, $Box(LitInt(4))))))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(268,3)
    assume true;
    if (!Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(4))), $Box(LitInt(6))), 
      t3#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(269,3)
    assume true;
    if (!(Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(6))), t3#0)
       && !Set#Subset(t3#0, Set#UnionOne(Set#Empty(): Set, $Box(LitInt(6))))))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(270,3)
    assume true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(271,3)
    assume true;
    if (Set#Equal(t2#0, t3#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(272,3)
    assume true;
    if (!Set#Equal(Set#Intersection(t2#0, t3#0), Set#Empty(): Set))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(273,3)
    assume true;
    if (!Set#Disjoint(t2#0, t3#0))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(274,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(276,10)
    assume true;
    assert {:id "id406"} 0 <= LitInt(2);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc i#0;
        if (true)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id407"} lambdaResult#0 == 1 + i#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assert {:id "id408"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
      0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < LitInt(2)
         ==> Requires1(TInt, 
          TInt, 
          $Heap, 
          Lit(AtLayer((lambda $l#1#ly#0: LayerType :: 
                Handle1((lambda $l#1#heap#0: Heap, $l#1#i#0: Box :: $Box(1 + $Unbox($l#1#i#0): int)), 
                  (lambda $l#1#heap#0: Heap, $l#1#i#0: Box :: $IsBox($l#1#i#0, TInt)), 
                  (lambda $l#1#heap#0: Heap, $l#1#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#1#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(seqinit#0#i0#0)));
    assume true;
    s1#0 := Seq#Create(TInt, 
      $Heap, 
      LitInt(2), 
      Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
            Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: $Box(1 + $Unbox($l#0#i#0): int)), 
              (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: $IsBox($l#0#i#0, TInt)), 
              (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
          $LS($LZ))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(277,10)
    assume true;
    assume true;
    s2#0 := Seq#Append(s1#0, Seq#Build(Seq#Empty(): Seq, $Box(LitInt(3))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(278,3)
    assume true;
    if (!(Seq#Length(s1#0) <= Seq#Length(s2#0)
       && Seq#SameUntil(s1#0, s2#0, Seq#Length(s1#0))))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(279,3)
    assume true;
    if (!(Seq#Length(s1#0) < Seq#Length(s2#0)
       && Seq#SameUntil(s1#0, s2#0, Seq#Length(s1#0))))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(280,3)
    assume true;
    if (Seq#Equal(s1#0, s2#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(281,3)
    assume true;
    if (Seq#Length(s2#0) <= Seq#Length(s1#0)
       && Seq#SameUntil(s2#0, s1#0, Seq#Length(s2#0)))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(282,3)
    assume true;
    if (Seq#Length(s2#0) < Seq#Length(s1#0)
       && Seq#SameUntil(s2#0, s1#0, Seq#Length(s2#0)))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(283,3)
    assume true;
    if (Seq#Equal(s2#0, s1#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(284,3)
    assume true;
    if (Seq#Equal(s1#0, s2#0))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(285,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(286,10)
    assume true;
    if (Seq#Length(s2#0) == LitInt(3))
    {
        assert {:id "id411"} 0 <= LitInt(2) && LitInt(2) < Seq#Length(s2#0);
    }
    else
    {
    }

    assume true;
    s3#0 := (if Seq#Length(s2#0) == LitInt(3)
       then Seq#Update(s2#0, LitInt(2), $Box(LitInt(4)))
       else s2#0);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(287,3)
    assert {:id "id413"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < Seq#Length(s3#0);
    assume true;
    if ($Unbox(Seq#Index(s3#0, LitInt(1))): int != LitInt(2))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(288,3)
    assume true;
    if (!Seq#Equal(s3#0, 
      Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(2))), 
        $Box(LitInt(4)))))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(289,3)
    assume true;
    if (Seq#Length(s3#0) != LitInt(3))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(290,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(292,10)
    assume true;
    if (Seq#Length(s3#0) >= LitInt(3))
    {
        assert {:id "id414"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(s3#0);
        assert {:id "id415"} LitInt(1) <= LitInt(3) && LitInt(3) <= Seq#Length(s3#0);
    }
    else
    {
    }

    assume true;
    s4#0 := (if Seq#Length(s3#0) >= LitInt(3)
       then Seq#Drop(Seq#Take(s3#0, LitInt(3)), LitInt(1))
       else s3#0);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(293,3)
    assume true;
    if (!Seq#Equal(s4#0, Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))), $Box(LitInt(4)))))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(294,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(296,9)
    assume true;
    assume true;
    h#0 := Lit(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1))), $Box(LitInt(1))), 
        $Box(LitInt(2))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(297,9)
    assume true;
    assume true;
    k#4 := MultiSet#FromSeq(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(2)))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(298,3)
    assume true;
    if (!(MultiSet#Subset(k#4, h#0) && !MultiSet#Equal(k#4, h#0)))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(299,3)
    assume true;
    if (!MultiSet#Subset(k#4, h#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(300,3)
    assume true;
    if (!(MultiSet#Subset(k#4, h#0) && !MultiSet#Equal(k#4, h#0)))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(301,3)
    assume true;
    if (!MultiSet#Subset(k#4, h#0))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(302,3)
    assume true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(303,3)
    assume true;
    if (!MultiSet#Equal(MultiSet#Union(k#4, h#0), 
      MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1))), $Box(LitInt(1))), 
            $Box(LitInt(1))), 
          $Box(LitInt(2))), 
        $Box(LitInt(2)))))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(304,3)
    assume true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(305,3)
    assume true;
    if (0 >= MultiSet#Multiplicity(h#0, $Box(LitInt(1))))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(306,3)
    assume true;
    if (MultiSet#Multiplicity(h#0, $Box(LitInt(1))) != LitInt(2))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(307,3)
    assume true;
    if (MultiSet#Card(h#0) != LitInt(3))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(308,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(310,22)
    assume true;
    assume true;
    seq1#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(2))), 
          $Box(LitInt(3))), 
        $Box(LitInt(4))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(311,17)
    assume true;
    assert {:id "id420"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(seq1#0);
    assume true;
    seq2#0 := $Unbox(Seq#Index(seq1#0, LitInt(0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(312,22)
    assume true;
    assert {:id "id422"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(seq1#0);
    assert {:id "id423"} LitInt(1) <= LitInt(4) && LitInt(4) <= Seq#Length(seq1#0);
    assume true;
    seq3#0 := Seq#Drop(Seq#Take(seq1#0, LitInt(4)), LitInt(1));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(313,22)
    assume true;
    assume true;
    seq4#0 := Seq#Append(seq3#0, Seq#Build(Seq#Empty(): Seq, $Box(seq2#0)));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(314,3)
    assert {:id "id426"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(seq4#0);
    assume true;
    if ($Unbox(Seq#Index(seq4#0, LitInt(0))): int != LitInt(2))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(315,3)
    assert {:id "id427"} {:subsumption 0} 0 <= LitInt(3) && LitInt(3) < Seq#Length(seq4#0);
    assume true;
    if ($Unbox(Seq#Index(seq4#0, LitInt(3))): int != LitInt(1))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(316,3)
    assert {:id "id428"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) <= Seq#Length(seq4#0);
    assert {:id "id429"} {:subsumption 0} LitInt(0) <= LitInt(3) && LitInt(3) <= Seq#Length(seq4#0);
    assume true;
    if (!Seq#Equal(Seq#Drop(Seq#Take(seq4#0, LitInt(3)), LitInt(0)), seq3#0))
    {
        assume true;
        assume false;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/operators.dfy(317,3)
    assume true;
}



procedure {:verboseName "uint8 (well-formedness)"} CheckWellFormed$$_module.uint8(x#0: int);
  free requires 1 == $FunctionContextHeight;
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

        assume {:id "id430"} LitInt(0) <= x#0 && x#0 < _module.__default.TWO__TO__THE__8();
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id431"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id432"} {:subsumption 0} 0 < _module.__default.TWO__TO__THE__8();
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
  $Is(x#0, Tclass._module.uint8())
     <==> LitInt(0) <= x#0 && x#0 < _module.__default.TWO__TO__THE__8());

// $IsAlloc axiom for newtype _module.uint8
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint8(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint8(), $h));

const unique class._module.uint8: ClassName;

procedure {:verboseName "uint16 (well-formedness)"} CheckWellFormed$$_module.uint16(x#0: int);
  free requires 1 == $FunctionContextHeight;
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

        assume {:id "id433"} LitInt(0) <= x#0 && x#0 < _module.__default.TWO__TO__THE__16();
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id434"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id435"} {:subsumption 0} 0 < _module.__default.TWO__TO__THE__16();
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
  $Is(x#0, Tclass._module.uint16())
     <==> LitInt(0) <= x#0 && x#0 < _module.__default.TWO__TO__THE__16());

// $IsAlloc axiom for newtype _module.uint16
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint16(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint16(), $h));

const unique class._module.uint16: ClassName;

procedure {:verboseName "uint32 (well-formedness)"} CheckWellFormed$$_module.uint32(x#0: int);
  free requires 1 == $FunctionContextHeight;
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

        assume {:id "id436"} LitInt(0) <= x#0 && x#0 < _module.__default.TWO__TO__THE__32();
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id437"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id438"} {:subsumption 0} 0 < _module.__default.TWO__TO__THE__32();
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
  $Is(x#0, Tclass._module.uint32())
     <==> LitInt(0) <= x#0 && x#0 < _module.__default.TWO__TO__THE__32());

// $IsAlloc axiom for newtype _module.uint32
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint32(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint32(), $h));

const unique class._module.uint32: ClassName;

procedure {:verboseName "uint64 (well-formedness)"} CheckWellFormed$$_module.uint64(x#0: int);
  free requires 1 == $FunctionContextHeight;
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

        assume {:id "id439"} LitInt(0) <= x#0 && x#0 < _module.__default.TWO__TO__THE__64();
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id440"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id441"} {:subsumption 0} 0 < _module.__default.TWO__TO__THE__64();
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
     <==> LitInt(0) <= x#0 && x#0 < _module.__default.TWO__TO__THE__64());

// $IsAlloc axiom for newtype _module.uint64
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint64(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint64(), $h));

const unique class._module.uint64: ClassName;

procedure {:verboseName "uint128 (well-formedness)"} CheckWellFormed$$_module.uint128(x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint128 (well-formedness)"} CheckWellFormed$$_module.uint128(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype uint128
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id442"} LitInt(0) <= x#0 && x#0 < _module.__default.TWO__TO__THE__128();
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id443"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id444"} {:subsumption 0} 0 < _module.__default.TWO__TO__THE__128();
        assume false;
    }
}



function Tclass._module.uint128() : Ty
uses {
// Tclass._module.uint128 Tag
axiom Tag(Tclass._module.uint128()) == Tagclass._module.uint128
   && TagFamily(Tclass._module.uint128()) == tytagFamily$uint128;
}

const unique Tagclass._module.uint128: TyTag;

// Box/unbox axiom for Tclass._module.uint128
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.uint128()) } 
  $IsBox(bx, Tclass._module.uint128())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.uint128()));

// $Is axiom for newtype _module.uint128
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.uint128()) } 
  $Is(x#0, Tclass._module.uint128())
     <==> LitInt(0) <= x#0 && x#0 < _module.__default.TWO__TO__THE__128());

// $IsAlloc axiom for newtype _module.uint128
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint128(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint128(), $h));

const unique class._module.uint128: ClassName;

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

        assume {:id "id445"} LitInt(-128) <= x#0 && x#0 < 128;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id446"} {:subsumption 0} LitInt(-128) <= LitInt(0);
        assert {:id "id447"} {:subsumption 0} Lit(0 < 128);
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

        assume {:id "id448"} LitInt(-32768) <= x#0 && x#0 < 32768;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id449"} {:subsumption 0} LitInt(-32768) <= LitInt(0);
        assert {:id "id450"} {:subsumption 0} Lit(0 < 32768);
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

        assume {:id "id451"} LitInt(-2147483648) <= x#0 && x#0 < 2147483648;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id452"} {:subsumption 0} LitInt(-2147483648) <= LitInt(0);
        assert {:id "id453"} {:subsumption 0} Lit(0 < 2147483648);
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

        assume {:id "id454"} LitInt(-9223372036854775808) <= x#0 && x#0 < 9223372036854775808;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id455"} {:subsumption 0} LitInt(-9223372036854775808) <= LitInt(0);
        assert {:id "id456"} {:subsumption 0} Lit(0 < 9223372036854775808);
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

procedure {:verboseName "int128 (well-formedness)"} CheckWellFormed$$_module.int128(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "int128 (well-formedness)"} CheckWellFormed$$_module.int128(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype int128
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-170141183460469231731687303715884105728) <= x#0)
        {
        }

        assume {:id "id457"} LitInt(-170141183460469231731687303715884105728) <= x#0
           && x#0 < 170141183460469231731687303715884105728;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id458"} {:subsumption 0} LitInt(-170141183460469231731687303715884105728) <= LitInt(0);
        assert {:id "id459"} {:subsumption 0} Lit(0 < 170141183460469231731687303715884105728);
        assume false;
    }
}



function Tclass._module.int128() : Ty
uses {
// Tclass._module.int128 Tag
axiom Tag(Tclass._module.int128()) == Tagclass._module.int128
   && TagFamily(Tclass._module.int128()) == tytagFamily$int128;
}

const unique Tagclass._module.int128: TyTag;

// Box/unbox axiom for Tclass._module.int128
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.int128()) } 
  $IsBox(bx, Tclass._module.int128())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.int128()));

// $Is axiom for newtype _module.int128
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.int128()) } 
  $Is(x#0, Tclass._module.int128())
     <==> LitInt(-170141183460469231731687303715884105728) <= x#0
       && x#0 < 170141183460469231731687303715884105728);

// $IsAlloc axiom for newtype _module.int128
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.int128(), $h) } 
  $IsAlloc(x#0, Tclass._module.int128(), $h));

const unique class._module.int128: ClassName;

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

const unique tytagFamily$uint8: TyTagFamily;

const unique tytagFamily$uint16: TyTagFamily;

const unique tytagFamily$uint32: TyTagFamily;

const unique tytagFamily$uint64: TyTagFamily;

const unique tytagFamily$uint128: TyTagFamily;

const unique tytagFamily$int8: TyTagFamily;

const unique tytagFamily$int16: TyTagFamily;

const unique tytagFamily$int32: TyTagFamily;

const unique tytagFamily$int64: TyTagFamily;

const unique tytagFamily$int128: TyTagFamily;
