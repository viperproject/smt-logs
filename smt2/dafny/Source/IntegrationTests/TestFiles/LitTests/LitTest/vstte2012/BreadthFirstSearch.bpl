// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy

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

const reveal__module.BreadthFirstSearch.R: bool;

const unique class._module.__default: ClassName;

// function declaration for _module._default.length
function _module.__default.length(_module._default.length$_T0: Ty, $ly: LayerType, list#0: DatatypeType) : int
uses {
// consequence axiom for _module.__default.length
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.length$_T0: Ty, $ly: LayerType, list#0: DatatypeType :: 
    { _module.__default.length(_module._default.length$_T0, $ly, list#0) } 
    _module.__default.length#canCall(_module._default.length$_T0, list#0)
         || (1 < $FunctionContextHeight
           && $Is(list#0, Tclass._module.List(_module._default.length$_T0)))
       ==> LitInt(0) <= _module.__default.length(_module._default.length$_T0, $ly, list#0));
// definition axiom for _module.__default.length (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.length$_T0: Ty, $ly: LayerType, list#0: DatatypeType :: 
    { _module.__default.length(_module._default.length$_T0, $LS($ly), list#0) } 
    _module.__default.length#canCall(_module._default.length$_T0, list#0)
         || (1 < $FunctionContextHeight
           && $Is(list#0, Tclass._module.List(_module._default.length$_T0)))
       ==> (!_module.List.Nil_q(list#0)
           ==> (var tail#1 := _module.List.tail(list#0); 
            _module.__default.length#canCall(_module._default.length$_T0, tail#1)))
         && _module.__default.length(_module._default.length$_T0, $LS($ly), list#0)
           == (if _module.List.Nil_q(list#0)
             then 0
             else (var tail#0 := _module.List.tail(list#0); 
              1 + _module.__default.length(_module._default.length$_T0, $ly, tail#0))));
// definition axiom for _module.__default.length for all literals (revealed)
axiom {:id "id1"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.length$_T0: Ty, $ly: LayerType, list#0: DatatypeType :: 
    {:weight 3} { _module.__default.length(_module._default.length$_T0, $LS($ly), Lit(list#0)) } 
    _module.__default.length#canCall(_module._default.length$_T0, Lit(list#0))
         || (1 < $FunctionContextHeight
           && $Is(list#0, Tclass._module.List(_module._default.length$_T0)))
       ==> (!Lit(_module.List.Nil_q(Lit(list#0)))
           ==> (var tail#3 := Lit(_module.List.tail(Lit(list#0))); 
            _module.__default.length#canCall(_module._default.length$_T0, tail#3)))
         && _module.__default.length(_module._default.length$_T0, $LS($ly), Lit(list#0))
           == (if _module.List.Nil_q(Lit(list#0))
             then 0
             else (var tail#2 := Lit(_module.List.tail(Lit(list#0))); 
              LitInt(1 + _module.__default.length(_module._default.length$_T0, $LS($ly), tail#2)))));
}

function _module.__default.length#canCall(_module._default.length$_T0: Ty, list#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.length$_T0: Ty, $ly: LayerType, list#0: DatatypeType :: 
  { _module.__default.length(_module._default.length$_T0, $LS($ly), list#0) } 
  _module.__default.length(_module._default.length$_T0, $LS($ly), list#0)
     == _module.__default.length(_module._default.length$_T0, $ly, list#0));

// fuel synonym axiom
axiom (forall _module._default.length$_T0: Ty, $ly: LayerType, list#0: DatatypeType :: 
  { _module.__default.length(_module._default.length$_T0, AsFuelBottom($ly), list#0) } 
  _module.__default.length(_module._default.length$_T0, $ly, list#0)
     == _module.__default.length(_module._default.length$_T0, $LZ, list#0));

function Tclass._module.List(Ty) : Ty;

const unique Tagclass._module.List: TyTag;

// Tclass._module.List Tag
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List(_module.List$T) } 
  Tag(Tclass._module.List(_module.List$T)) == Tagclass._module.List
     && TagFamily(Tclass._module.List(_module.List$T)) == tytagFamily$List);

function Tclass._module.List_0(Ty) : Ty;

// Tclass._module.List injectivity 0
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List(_module.List$T) } 
  Tclass._module.List_0(Tclass._module.List(_module.List$T)) == _module.List$T);

// Box/unbox axiom for Tclass._module.List
axiom (forall _module.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.List(_module.List$T)) } 
  $IsBox(bx, Tclass._module.List(_module.List$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.List(_module.List$T)));

function _module.__default.length#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.length
axiom (forall _module._default.length$_T0: Ty, $ly: LayerType, list#0: DatatypeType :: 
  { _module.__default.length#requires(_module._default.length$_T0, $ly, list#0) } 
  $Is(list#0, Tclass._module.List(_module._default.length$_T0))
     ==> _module.__default.length#requires(_module._default.length$_T0, $ly, list#0)
       == true);

procedure {:verboseName "length (well-formedness)"} CheckWellformed$$_module.__default.length(_module._default.length$_T0: Ty, 
    list#0: DatatypeType
       where $Is(list#0, Tclass._module.List(_module._default.length$_T0)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "length (well-formedness)"} CheckWellformed$$_module.__default.length(_module._default.length$_T0: Ty, list#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##list#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0)
           <= _module.__default.length(_module._default.length$_T0, $LS($LZ), list#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (list#0 == #_module.List.Nil())
        {
            assert {:id "id7"} $Is(LitInt(0), Tclass._System.nat());
            assume {:id "id8"} _module.__default.length(_module._default.length$_T0, $LS($LZ), list#0)
               == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.length(_module._default.length$_T0, $LS($LZ), list#0), 
              Tclass._System.nat());
            return;
        }
        else if (list#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.length$_T0);
            assume $Is(_mcc#1#0, Tclass._module.List(_module._default.length$_T0));
            havoc tail#Z#0;
            assume {:id "id2"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(_module._default.length$_T0));
            assume {:id "id3"} tail#Z#0 == let#0#0#0;
            ##list#0 := tail#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##list#0, Tclass._module.List(_module._default.length$_T0), $Heap);
            assert {:id "id4"} DtRank(##list#0) < DtRank(list#0);
            assume _module.__default.length#canCall(_module._default.length$_T0, tail#Z#0);
            assert {:id "id5"} $Is(1 + _module.__default.length(_module._default.length$_T0, $LS($LZ), tail#Z#0), 
              Tclass._System.nat());
            assume {:id "id6"} _module.__default.length(_module._default.length$_T0, $LS($LZ), list#0)
               == 1 + _module.__default.length(_module._default.length$_T0, $LS($LZ), tail#Z#0);
            assume _module.__default.length#canCall(_module._default.length$_T0, tail#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.length(_module._default.length$_T0, $LS($LZ), list#0), 
              Tclass._System.nat());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.elements
function _module.__default.elements(_module._default.elements$T: Ty, $ly: LayerType, list#0: DatatypeType) : Set
uses {
// consequence axiom for _module.__default.elements
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.elements$T: Ty, $ly: LayerType, list#0: DatatypeType :: 
    { _module.__default.elements(_module._default.elements$T, $ly, list#0) } 
    _module.__default.elements#canCall(_module._default.elements$T, list#0)
         || (1 < $FunctionContextHeight
           && $Is(list#0, Tclass._module.List(_module._default.elements$T)))
       ==> $Is(_module.__default.elements(_module._default.elements$T, $ly, list#0), 
        TSet(_module._default.elements$T)));
// alloc consequence axiom for _module.__default.elements
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.elements$T: Ty, 
      $ly: LayerType, 
      list#0: DatatypeType :: 
    { $IsAlloc(_module.__default.elements(_module._default.elements$T, $ly, list#0), 
        TSet(_module._default.elements$T), 
        $Heap) } 
    (_module.__default.elements#canCall(_module._default.elements$T, list#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(list#0, Tclass._module.List(_module._default.elements$T))
             && $IsAlloc(list#0, Tclass._module.List(_module._default.elements$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.elements(_module._default.elements$T, $ly, list#0), 
        TSet(_module._default.elements$T), 
        $Heap));
// definition axiom for _module.__default.elements (revealed)
axiom {:id "id9"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.elements$T: Ty, $ly: LayerType, list#0: DatatypeType :: 
    { _module.__default.elements(_module._default.elements$T, $LS($ly), list#0) } 
    _module.__default.elements#canCall(_module._default.elements$T, list#0)
         || (1 < $FunctionContextHeight
           && $Is(list#0, Tclass._module.List(_module._default.elements$T)))
       ==> (!_module.List.Nil_q(list#0)
           ==> (var tail#1 := _module.List.tail(list#0); 
            _module.__default.elements#canCall(_module._default.elements$T, tail#1)))
         && _module.__default.elements(_module._default.elements$T, $LS($ly), list#0)
           == (if _module.List.Nil_q(list#0)
             then Set#Empty(): Set
             else (var tail#0 := _module.List.tail(list#0); 
              (var x#0 := _module.List.head(list#0); 
                Set#Union(Set#UnionOne(Set#Empty(): Set, x#0), 
                  _module.__default.elements(_module._default.elements$T, $ly, tail#0))))));
// definition axiom for _module.__default.elements for all literals (revealed)
axiom {:id "id10"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.elements$T: Ty, $ly: LayerType, list#0: DatatypeType :: 
    {:weight 3} { _module.__default.elements(_module._default.elements$T, $LS($ly), Lit(list#0)) } 
    _module.__default.elements#canCall(_module._default.elements$T, Lit(list#0))
         || (1 < $FunctionContextHeight
           && $Is(list#0, Tclass._module.List(_module._default.elements$T)))
       ==> (!Lit(_module.List.Nil_q(Lit(list#0)))
           ==> (var tail#3 := Lit(_module.List.tail(Lit(list#0))); 
            _module.__default.elements#canCall(_module._default.elements$T, tail#3)))
         && _module.__default.elements(_module._default.elements$T, $LS($ly), Lit(list#0))
           == (if _module.List.Nil_q(Lit(list#0))
             then Set#Empty(): Set
             else (var tail#2 := Lit(_module.List.tail(Lit(list#0))); 
              (var x#2 := Lit(_module.List.head(Lit(list#0))); 
                Set#Union(Set#UnionOne(Set#Empty(): Set, x#2), 
                  _module.__default.elements(_module._default.elements$T, $LS($ly), tail#2))))));
}

function _module.__default.elements#canCall(_module._default.elements$T: Ty, list#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.elements$T: Ty, $ly: LayerType, list#0: DatatypeType :: 
  { _module.__default.elements(_module._default.elements$T, $LS($ly), list#0) } 
  _module.__default.elements(_module._default.elements$T, $LS($ly), list#0)
     == _module.__default.elements(_module._default.elements$T, $ly, list#0));

// fuel synonym axiom
axiom (forall _module._default.elements$T: Ty, $ly: LayerType, list#0: DatatypeType :: 
  { _module.__default.elements(_module._default.elements$T, AsFuelBottom($ly), list#0) } 
  _module.__default.elements(_module._default.elements$T, $ly, list#0)
     == _module.__default.elements(_module._default.elements$T, $LZ, list#0));

function _module.__default.elements#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.elements
axiom (forall _module._default.elements$T: Ty, $ly: LayerType, list#0: DatatypeType :: 
  { _module.__default.elements#requires(_module._default.elements$T, $ly, list#0) } 
  $Is(list#0, Tclass._module.List(_module._default.elements$T))
     ==> _module.__default.elements#requires(_module._default.elements$T, $ly, list#0)
       == true);

procedure {:verboseName "elements (well-formedness)"} CheckWellformed$$_module.__default.elements(_module._default.elements$T: Ty, 
    list#0: DatatypeType
       where $Is(list#0, Tclass._module.List(_module._default.elements$T)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "elements (well-formedness)"} CheckWellformed$$_module.__default.elements(_module._default.elements$T: Ty, list#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: Box;
  var let#1#0#0: Box;
  var ##list#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.elements(_module._default.elements$T, $LS($LZ), list#0), 
          TSet(_module._default.elements$T));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (list#0 == #_module.List.Nil())
        {
            assume {:id "id17"} _module.__default.elements(_module._default.elements$T, $LS($LZ), list#0)
               == Lit(Set#Empty(): Set);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.elements(_module._default.elements$T, $LS($LZ), list#0), 
              TSet(_module._default.elements$T));
            return;
        }
        else if (list#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.elements$T);
            assume $Is(_mcc#1#0, Tclass._module.List(_module._default.elements$T));
            havoc tail#Z#0;
            assume {:id "id11"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(_module._default.elements$T));
            assume {:id "id12"} tail#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id13"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#1#0#0, _module._default.elements$T);
            assume {:id "id14"} x#Z#0 == let#1#0#0;
            ##list#0 := tail#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##list#0, Tclass._module.List(_module._default.elements$T), $Heap);
            assert {:id "id15"} DtRank(##list#0) < DtRank(list#0);
            assume _module.__default.elements#canCall(_module._default.elements$T, tail#Z#0);
            assume {:id "id16"} _module.__default.elements(_module._default.elements$T, $LS($LZ), list#0)
               == Set#Union(Set#UnionOne(Set#Empty(): Set, x#Z#0), 
                _module.__default.elements(_module._default.elements$T, $LS($LZ), tail#Z#0));
            assume _module.__default.elements#canCall(_module._default.elements$T, tail#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.elements(_module._default.elements$T, $LS($LZ), list#0), 
              TSet(_module._default.elements$T));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



const unique class._module.BreadthFirstSearch?: ClassName;

function Tclass._module.BreadthFirstSearch?(Ty) : Ty;

const unique Tagclass._module.BreadthFirstSearch?: TyTag;

// Tclass._module.BreadthFirstSearch? Tag
axiom (forall _module.BreadthFirstSearch$Vertex: Ty :: 
  { Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex) } 
  Tag(Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex))
       == Tagclass._module.BreadthFirstSearch?
     && TagFamily(Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex))
       == tytagFamily$BreadthFirstSearch);

function Tclass._module.BreadthFirstSearch?_0(Ty) : Ty;

// Tclass._module.BreadthFirstSearch? injectivity 0
axiom (forall _module.BreadthFirstSearch$Vertex: Ty :: 
  { Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex) } 
  Tclass._module.BreadthFirstSearch?_0(Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex))
     == _module.BreadthFirstSearch$Vertex);

// Box/unbox axiom for Tclass._module.BreadthFirstSearch?
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex)) } 
  $IsBox(bx, Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex)));

// $Is axiom for class BreadthFirstSearch
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, $o: ref :: 
  { $Is($o, Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex)) } 
  $Is($o, Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex))
     <==> $o == null
       || dtype($o)
         == Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex));

// $IsAlloc axiom for class BreadthFirstSearch
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), $h) } 
  $IsAlloc($o, Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.BreadthFirstSearch.Succ
function _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex: Ty, this: ref, x#0: Box) : Set
uses {
// consequence axiom for _module.BreadthFirstSearch.Succ
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, this: ref, x#0: Box :: 
    { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, x#0) } 
    _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $IsBox(x#0, _module.BreadthFirstSearch$Vertex))
       ==> $Is(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, x#0), 
        TSet(_module.BreadthFirstSearch$Vertex)));
// alloc consequence axiom for _module.BreadthFirstSearch.Succ
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.BreadthFirstSearch$Vertex: Ty, this: ref, x#0: Box :: 
    { $IsAlloc(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, x#0), 
        TSet(_module.BreadthFirstSearch$Vertex), 
        $Heap) } 
    (_module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, x#0)
           || (0 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, 
              Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
              $Heap)
             && 
            $IsBox(x#0, _module.BreadthFirstSearch$Vertex)
             && $IsAllocBox(x#0, _module.BreadthFirstSearch$Vertex, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, x#0), 
        TSet(_module.BreadthFirstSearch$Vertex), 
        $Heap));
}

function _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex: Ty, this: ref, x#0: Box) : bool;

function Tclass._module.BreadthFirstSearch(Ty) : Ty;

const unique Tagclass._module.BreadthFirstSearch: TyTag;

// Tclass._module.BreadthFirstSearch Tag
axiom (forall _module.BreadthFirstSearch$Vertex: Ty :: 
  { Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex) } 
  Tag(Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
       == Tagclass._module.BreadthFirstSearch
     && TagFamily(Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
       == tytagFamily$BreadthFirstSearch);

function Tclass._module.BreadthFirstSearch_0(Ty) : Ty;

// Tclass._module.BreadthFirstSearch injectivity 0
axiom (forall _module.BreadthFirstSearch$Vertex: Ty :: 
  { Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex) } 
  Tclass._module.BreadthFirstSearch_0(Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
     == _module.BreadthFirstSearch$Vertex);

// Box/unbox axiom for Tclass._module.BreadthFirstSearch
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex)) } 
  $IsBox(bx, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex)));

function _module.BreadthFirstSearch.Succ#requires(Ty, ref, Box) : bool;

// #requires axiom for _module.BreadthFirstSearch.Succ
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, this: ref, x#0: Box :: 
  { _module.BreadthFirstSearch.Succ#requires(_module.BreadthFirstSearch$Vertex, this, x#0) } 
  this != null
       && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
       && $IsBox(x#0, _module.BreadthFirstSearch$Vertex)
     ==> _module.BreadthFirstSearch.Succ#requires(_module.BreadthFirstSearch$Vertex, this, x#0)
       == true);

procedure {:verboseName "BreadthFirstSearch.Succ (well-formedness)"} CheckWellformed$$_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    x#0: Box where $IsBox(x#0, _module.BreadthFirstSearch$Vertex));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.BreadthFirstSearch.IsPath
function _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex: Ty, 
    $ly: LayerType, 
    this: ref, 
    source#0: Box, 
    dest#0: Box, 
    p#0: DatatypeType)
   : bool
uses {
// definition axiom for _module.BreadthFirstSearch.IsPath (revealed)
axiom {:id "id18"} 1 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, 
      $ly: LayerType, 
      this: ref, 
      source#0: Box, 
      dest#0: Box, 
      p#0: DatatypeType :: 
    { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($ly), this, source#0, dest#0, p#0) } 
    _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, p#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
           && $IsBox(dest#0, _module.BreadthFirstSearch$Vertex)
           && $Is(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
       ==> (!_module.List.Nil_q(p#0)
           ==> (var tail#1 := _module.List.tail(p#0); 
            (var v#1 := _module.List.head(p#0); 
              _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, v#1)
                 && (Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#1), 
                    dest#0)
                   ==> _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, v#1, tail#1)))))
         && _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($ly), this, source#0, dest#0, p#0)
           == (if _module.List.Nil_q(p#0)
             then source#0 == dest#0
             else (var tail#0 := _module.List.tail(p#0); 
              (var v#0 := _module.List.head(p#0); 
                Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#0), 
                    dest#0)
                   && _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $ly, this, source#0, v#0, tail#0)))));
// definition axiom for _module.BreadthFirstSearch.IsPath for decreasing-related literals (revealed)
axiom {:id "id19"} 1 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, 
      $ly: LayerType, 
      this: ref, 
      source#0: Box, 
      dest#0: Box, 
      p#0: DatatypeType :: 
    {:weight 3} { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($ly), this, source#0, dest#0, Lit(p#0)) } 
    _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, Lit(p#0))
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
           && $IsBox(dest#0, _module.BreadthFirstSearch$Vertex)
           && $Is(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
       ==> (!Lit(_module.List.Nil_q(Lit(p#0)))
           ==> (var tail#3 := Lit(_module.List.tail(Lit(p#0))); 
            (var v#3 := Lit(_module.List.head(Lit(p#0))); 
              _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, v#3)
                 && (Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#3), 
                    dest#0)
                   ==> _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, v#3, tail#3)))))
         && _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($ly), this, source#0, dest#0, Lit(p#0))
           == (if _module.List.Nil_q(Lit(p#0))
             then source#0 == dest#0
             else (var tail#2 := Lit(_module.List.tail(Lit(p#0))); 
              (var v#2 := Lit(_module.List.head(Lit(p#0))); 
                Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#2), 
                    dest#0)
                   && _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($ly), this, source#0, v#2, tail#2)))));
// definition axiom for _module.BreadthFirstSearch.IsPath for all literals (revealed)
axiom {:id "id20"} 1 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, 
      $ly: LayerType, 
      this: ref, 
      source#0: Box, 
      dest#0: Box, 
      p#0: DatatypeType :: 
    {:weight 3} { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
        $LS($ly), 
        Lit(this), 
        Lit(source#0), 
        Lit(dest#0), 
        Lit(p#0)) } 
    _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, 
          Lit(this), 
          Lit(source#0), 
          Lit(dest#0), 
          Lit(p#0))
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
           && $IsBox(dest#0, _module.BreadthFirstSearch$Vertex)
           && $Is(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
       ==> (!Lit(_module.List.Nil_q(Lit(p#0)))
           ==> (var tail#5 := Lit(_module.List.tail(Lit(p#0))); 
            (var v#5 := Lit(_module.List.head(Lit(p#0))); 
              _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, Lit(this), v#5)
                 && (Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, Lit(this), v#5), 
                    Lit(dest#0))
                   ==> _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, Lit(this), Lit(source#0), v#5, tail#5)))))
         && _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
            $LS($ly), 
            Lit(this), 
            Lit(source#0), 
            Lit(dest#0), 
            Lit(p#0))
           == (if _module.List.Nil_q(Lit(p#0))
             then Lit(source#0) == Lit(dest#0)
             else (var tail#4 := Lit(_module.List.tail(Lit(p#0))); 
              (var v#4 := Lit(_module.List.head(Lit(p#0))); 
                Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, Lit(this), v#4), 
                    Lit(dest#0))
                   && _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
                    $LS($ly), 
                    Lit(this), 
                    Lit(source#0), 
                    v#4, 
                    tail#4)))));
}

function _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    source#0: Box, 
    dest#0: Box, 
    p#0: DatatypeType)
   : bool;

// layer synonym axiom
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, 
    $ly: LayerType, 
    this: ref, 
    source#0: Box, 
    dest#0: Box, 
    p#0: DatatypeType :: 
  { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($ly), this, source#0, dest#0, p#0) } 
  _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($ly), this, source#0, dest#0, p#0)
     == _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $ly, this, source#0, dest#0, p#0));

// fuel synonym axiom
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, 
    $ly: LayerType, 
    this: ref, 
    source#0: Box, 
    dest#0: Box, 
    p#0: DatatypeType :: 
  { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
      AsFuelBottom($ly), 
      this, 
      source#0, 
      dest#0, 
      p#0) } 
  _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $ly, this, source#0, dest#0, p#0)
     == _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LZ, this, source#0, dest#0, p#0));

function _module.BreadthFirstSearch.IsPath#requires(Ty, LayerType, ref, Box, Box, DatatypeType) : bool;

// #requires axiom for _module.BreadthFirstSearch.IsPath
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, 
    $ly: LayerType, 
    this: ref, 
    source#0: Box, 
    dest#0: Box, 
    p#0: DatatypeType :: 
  { _module.BreadthFirstSearch.IsPath#requires(_module.BreadthFirstSearch$Vertex, $ly, this, source#0, dest#0, p#0) } 
  this != null
       && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
       && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
       && $IsBox(dest#0, _module.BreadthFirstSearch$Vertex)
       && $Is(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
     ==> _module.BreadthFirstSearch.IsPath#requires(_module.BreadthFirstSearch$Vertex, $ly, this, source#0, dest#0, p#0)
       == true);

procedure {:verboseName "BreadthFirstSearch.IsPath (well-formedness)"} CheckWellformed$$_module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box where $IsBox(source#0, _module.BreadthFirstSearch$Vertex), 
    dest#0: Box where $IsBox(dest#0, _module.BreadthFirstSearch$Vertex), 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BreadthFirstSearch.IsPath (well-formedness)"} CheckWellformed$$_module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    source#0: Box, 
    dest#0: Box, 
    p#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var v#Z#0: Box;
  var let#1#0#0: Box;
  var ##x#0: Box;
  var ##source#0: Box;
  var ##dest#0: Box;
  var ##p#0: DatatypeType;


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
        if (p#0 == #_module.List.Nil())
        {
            assume {:id "id27"} _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#0)
               == 
              (source#0
               == dest#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#0), 
              TBool);
            return;
        }
        else if (p#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module.BreadthFirstSearch$Vertex);
            assume $Is(_mcc#1#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex));
            havoc tail#Z#0;
            assume {:id "id21"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex));
            assume {:id "id22"} tail#Z#0 == let#0#0#0;
            havoc v#Z#0;
            assume {:id "id23"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#1#0#0, _module.BreadthFirstSearch$Vertex);
            assume {:id "id24"} v#Z#0 == let#1#0#0;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##x#0 := v#Z#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#0, _module.BreadthFirstSearch$Vertex, $Heap);
            assume _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, v#Z#0);
            if (Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#Z#0), 
              dest#0))
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), 
                  Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
                  $Heap);
                ##source#0 := source#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##source#0, _module.BreadthFirstSearch$Vertex, $Heap);
                ##dest#0 := v#Z#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##dest#0, _module.BreadthFirstSearch$Vertex, $Heap);
                ##p#0 := tail#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
                assert {:id "id25"} DtRank(##p#0) < DtRank(p#0);
                assume _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, v#Z#0, tail#Z#0);
            }

            assume {:id "id26"} _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#0)
               == (Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#Z#0), 
                  dest#0)
                 && _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, v#Z#0, tail#Z#0));
            assume _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, v#Z#0)
               && (Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#Z#0), 
                  dest#0)
                 ==> _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, v#Z#0, tail#Z#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#0), 
              TBool);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module.BreadthFirstSearch.IsClosed
function _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex: Ty, this: ref, S#0: Set) : bool
uses {
// definition axiom for _module.BreadthFirstSearch.IsClosed (revealed)
axiom {:id "id28"} 1 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, this: ref, S#0: Set :: 
    { _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, this, S#0) } 
    _module.BreadthFirstSearch.IsClosed#canCall(_module.BreadthFirstSearch$Vertex, this, S#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $Is(S#0, TSet(_module.BreadthFirstSearch$Vertex)))
       ==> (forall v#0: Box :: 
          { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#0) } 
            { Set#IsMember(S#0, v#0) } 
          $IsBox(v#0, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(S#0, v#0)
             ==> _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, v#0))
         && _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, this, S#0)
           == (forall v#0: Box :: 
            { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#0) } 
              { Set#IsMember(S#0, v#0) } 
            $IsBox(v#0, _module.BreadthFirstSearch$Vertex)
               ==> 
              Set#IsMember(S#0, v#0)
               ==> Set#Subset(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#0), 
                S#0)));
// definition axiom for _module.BreadthFirstSearch.IsClosed for decreasing-related literals (revealed)
axiom {:id "id29"} 1 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, this: ref, S#0: Set :: 
    {:weight 3} { _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, this, Lit(S#0)) } 
    _module.BreadthFirstSearch.IsClosed#canCall(_module.BreadthFirstSearch$Vertex, this, Lit(S#0))
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $Is(S#0, TSet(_module.BreadthFirstSearch$Vertex)))
       ==> (forall v#1: Box :: 
          { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#1) } 
            { Set#IsMember(S#0, v#1) } 
          $IsBox(v#1, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(Lit(S#0), v#1)
             ==> _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, v#1))
         && _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, this, Lit(S#0))
           == (forall v#1: Box :: 
            { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#1) } 
              { Set#IsMember(S#0, v#1) } 
            $IsBox(v#1, _module.BreadthFirstSearch$Vertex)
               ==> 
              Set#IsMember(Lit(S#0), v#1)
               ==> Set#Subset(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#1), 
                S#0)));
// definition axiom for _module.BreadthFirstSearch.IsClosed for all literals (revealed)
axiom {:id "id30"} 1 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, this: ref, S#0: Set :: 
    {:weight 3} { _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, Lit(this), Lit(S#0)) } 
    _module.BreadthFirstSearch.IsClosed#canCall(_module.BreadthFirstSearch$Vertex, Lit(this), Lit(S#0))
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $Is(S#0, TSet(_module.BreadthFirstSearch$Vertex)))
       ==> (forall v#2: Box :: 
          { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#2) } 
            { Set#IsMember(S#0, v#2) } 
          $IsBox(v#2, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(Lit(S#0), v#2)
             ==> _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, Lit(this), v#2))
         && _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, Lit(this), Lit(S#0))
           == (forall v#2: Box :: 
            { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#2) } 
              { Set#IsMember(S#0, v#2) } 
            $IsBox(v#2, _module.BreadthFirstSearch$Vertex)
               ==> 
              Set#IsMember(Lit(S#0), v#2)
               ==> Set#Subset(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, Lit(this), v#2), 
                S#0)));
}

function _module.BreadthFirstSearch.IsClosed#canCall(_module.BreadthFirstSearch$Vertex: Ty, this: ref, S#0: Set) : bool;

function _module.BreadthFirstSearch.IsClosed#requires(Ty, ref, Set) : bool;

// #requires axiom for _module.BreadthFirstSearch.IsClosed
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, this: ref, S#0: Set :: 
  { _module.BreadthFirstSearch.IsClosed#requires(_module.BreadthFirstSearch$Vertex, this, S#0) } 
  this != null
       && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
       && $Is(S#0, TSet(_module.BreadthFirstSearch$Vertex))
     ==> _module.BreadthFirstSearch.IsClosed#requires(_module.BreadthFirstSearch$Vertex, this, S#0)
       == true);

procedure {:verboseName "BreadthFirstSearch.IsClosed (well-formedness)"} CheckWellformed$$_module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    S#0: Set where $Is(S#0, TSet(_module.BreadthFirstSearch$Vertex)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BreadthFirstSearch.BFS (well-formedness)"} {:rlimit 8000000} {:vcs_split_on_every_assert} CheckWellFormed$$_module.BreadthFirstSearch.BFS(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    dest#0: Box
       where $IsBox(dest#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(dest#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap))
   returns (d#0: int, 
    path#0: DatatypeType
       where $Is(path#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(path#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BreadthFirstSearch.BFS (call)"} {:rlimit 8000000} {:vcs_split_on_every_assert} Call$$_module.BreadthFirstSearch.BFS(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    dest#0: Box
       where $IsBox(dest#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(dest#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap))
   returns (d#0: int, 
    path#0: DatatypeType
       where $Is(path#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(path#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap));
  // user-defined preconditions
  requires {:id "id48"} Set#IsMember(AllVertices#0, source#0);
  requires {:id "id49"} Set#IsMember(AllVertices#0, dest#0);
  requires {:id "id50"} _module.BreadthFirstSearch.IsClosed#canCall(_module.BreadthFirstSearch$Vertex, this, AllVertices#0)
     ==> _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, this, AllVertices#0)
       || (forall v#0: Box :: 
        { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#0) } 
          { Set#IsMember(AllVertices#0, v#0) } 
        $IsBox(v#0, _module.BreadthFirstSearch$Vertex)
           ==> 
          Set#IsMember(AllVertices#0, v#0)
           ==> Set#Subset(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#0), 
            AllVertices#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures LitInt(0) <= d#0
     ==> _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, path#0)
       && (_module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, path#0)
         ==> _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, path#0));
  free ensures {:id "id51"} LitInt(0) <= d#0
     ==> _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, path#0)
       && 
      _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, path#0)
       && (if _module.List.Nil_q(path#0)
         then source#0 == dest#0
         else (var tail#1 := _module.List.tail(path#0); 
          (var v#2 := _module.List.head(path#0); 
            Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#2), 
                dest#0)
               && _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, v#2, tail#1))));
  ensures {:id "id52"} LitInt(0) <= d#0
     ==> _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), path#0)
       == d#0;
  free ensures LitInt(0) <= d#0
     ==> (forall p#1: DatatypeType :: 
      { _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), p#1) } 
        { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#1) } 
      $Is(p#1, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         ==> _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, p#1)
           && (_module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#1)
             ==> _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, path#0)
               && _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, p#1)));
  free ensures {:id "id53"} LitInt(0) <= d#0
     ==> (forall p#1: DatatypeType :: 
      { _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), p#1) } 
        { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#1) } 
      $Is(p#1, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
           && $IsAlloc(p#1, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap)
         ==> 
        _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#1)
         ==> _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), path#0)
           <= _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), p#1));
  free ensures d#0 < 0
     ==> (forall p#3: DatatypeType :: 
      { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#3) } 
      $Is(p#3, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         ==> _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, p#3));
  free ensures {:id "id54"} d#0 < 0
     ==> !(exists p#3: DatatypeType :: 
      { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#3) } 
      $Is(p#3, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(p#3, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap)
         && _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#3));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "BreadthFirstSearch.BFS (correctness)"} {:rlimit 8000000} {:vcs_split_on_every_assert} Impl$$_module.BreadthFirstSearch.BFS(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    dest#0: Box
       where $IsBox(dest#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(dest#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap))
   returns (d#0: int, 
    path#0: DatatypeType
       where $Is(path#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(path#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap), 
    $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id55"} Set#IsMember(AllVertices#0, source#0);
  requires {:id "id56"} Set#IsMember(AllVertices#0, dest#0);
  free requires {:id "id57"} _module.BreadthFirstSearch.IsClosed#canCall(_module.BreadthFirstSearch$Vertex, this, AllVertices#0)
     && 
    _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, this, AllVertices#0)
     && (forall v#3: Box :: 
      { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#3) } 
        { Set#IsMember(AllVertices#0, v#3) } 
      $IsBox(v#3, _module.BreadthFirstSearch$Vertex)
         ==> 
        Set#IsMember(AllVertices#0, v#3)
         ==> Set#Subset(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#3), 
          AllVertices#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures LitInt(0) <= d#0
     ==> _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, path#0)
       && (_module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, path#0)
         ==> _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, path#0));
  ensures {:id "id58"} LitInt(0) <= d#0
     ==> 
    _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, path#0)
     ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, path#0)
       || (_module.List.Nil_q(path#0) ==> source#0 == dest#0);
  ensures {:id "id59"} LitInt(0) <= d#0
     ==> 
    _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, path#0)
     ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, path#0)
       || (!_module.List.Nil_q(path#0)
         ==> (var tail#2 := _module.List.tail(path#0); 
          (var v#4 := _module.List.head(path#0); 
            Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#4), 
              dest#0))));
  ensures {:id "id60"} LitInt(0) <= d#0
     ==> 
    _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, path#0)
     ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, path#0)
       || (!_module.List.Nil_q(path#0)
         ==> (var tail#2 := _module.List.tail(path#0); 
          (var v#4 := _module.List.head(path#0); 
            _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), this, source#0, v#4, tail#2))));
  ensures {:id "id61"} LitInt(0) <= d#0
     ==> _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), path#0)
       == d#0;
  free ensures LitInt(0) <= d#0
     ==> (forall p#1: DatatypeType :: 
      { _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), p#1) } 
        { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#1) } 
      $Is(p#1, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         ==> _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, p#1)
           && (_module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#1)
             ==> _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, path#0)
               && _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, p#1)));
  ensures {:id "id62"} LitInt(0) <= d#0
     ==> (forall p#1: DatatypeType :: 
      { _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), p#1) } 
        { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), this, source#0, dest#0, p#1) } 
      $Is(p#1, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
           && $IsAlloc(p#1, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap)
         ==> 
        _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), this, source#0, dest#0, p#1)
         ==> _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), path#0)
           <= _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), p#1));
  free ensures d#0 < 0
     ==> (forall p#3: DatatypeType :: 
      { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#3) } 
      $Is(p#3, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         ==> _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, p#3));
  ensures {:id "id63"} d#0 < 0
     ==> !(exists p#3: DatatypeType :: 
      { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), this, source#0, dest#0, p#3) } 
      $Is(p#3, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(p#3, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap)
         && _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), this, source#0, dest#0, p#3));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BreadthFirstSearch.BFS (correctness)"} {:rlimit 8000000} {:vcs_split_on_every_assert} Impl$$_module.BreadthFirstSearch.BFS(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    source#0: Box, 
    dest#0: Box, 
    AllVertices#0: Set)
   returns (d#0: int, path#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var V#0: Set
     where $Is(V#0, TSet(_module.BreadthFirstSearch$Vertex))
       && $IsAlloc(V#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
  var C#0: Set
     where $Is(C#0, TSet(_module.BreadthFirstSearch$Vertex))
       && $IsAlloc(C#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
  var N#0: Set
     where $Is(N#0, TSet(_module.BreadthFirstSearch$Vertex))
       && $IsAlloc(N#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
  var $rhs#0: Set;
  var $rhs#1: Set;
  var $rhs#2: Set;
  var Processed#0: Set
     where $Is(Processed#0, TSet(_module.BreadthFirstSearch$Vertex))
       && $IsAlloc(Processed#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
  var paths#0: Map
     where $Is(paths#0, 
        TMap(_module.BreadthFirstSearch$Vertex, 
          Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
       && $IsAlloc(paths#0, 
        TMap(_module.BreadthFirstSearch$Vertex, 
          Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
        $Heap);
  var $rhs#3: Set;
  var $rhs#4: Map;
  var ##source#3: Box;
  var ##n#0: int;
  var ##AllVertices#0: Set;
  var ##source#4: Box;
  var ##n#1: int;
  var ##AllVertices#1: Set;
  var ##source#5: Box;
  var ##n#2: int;
  var ##AllVertices#2: Set;
  var ##source#6: Box;
  var ##n#3: int;
  var ##AllVertices#3: Set;
  var ##source#7: Box;
  var ##n#4: int;
  var ##AllVertices#4: Set;
  var ##source#8: Box;
  var ##n#5: int;
  var ##AllVertices#5: Set;
  var ##S#1: Set;
  var ##AllVertices#6: Set;
  var ##source#9: Box;
  var ##n#6: int;
  var ##AllVertices#7: Set;
  var ##S#2: Set;
  var ##AllVertices#8: Set;
  var ##source#10: Box;
  var ##n#7: int;
  var ##AllVertices#9: Set;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $w$loop#0: bool;
  var ##source#11: Box;
  var ##m#0: Map;
  var x#0: Box;
  var ##list#3: DatatypeType;
  var ##source#12: Box;
  var ##x#0: Box;
  var ##m#1: Map;
  var x#2: Box;
  var ##list#4: DatatypeType;
  var ##source#13: Box;
  var ##x#1: Box;
  var ##m#2: Map;
  var ##source#14: Box;
  var ##n#8: int;
  var ##AllVertices#10: Set;
  var ##source#15: Box;
  var ##n#9: int;
  var ##AllVertices#11: Set;
  var ##source#16: Box;
  var ##n#10: int;
  var ##AllVertices#12: Set;
  var ##S#3: Set;
  var ##AllVertices#13: Set;
  var ##source#17: Box;
  var ##n#11: int;
  var ##AllVertices#14: Set;
  var $decr$loop#00: Set;
  var defass#v#4_0: bool;
  var v#4_0: Box
     where defass#v#4_0
       ==> $IsBox(v#4_0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(v#4_0, _module.BreadthFirstSearch$Vertex, $Heap);
  var v#4_1: Box;
  var w#4_0: Box;
  var ##x#4_0: Box;
  var ##source#4_0: Box;
  var ##n#4_0: int;
  var ##AllVertices#4_0: Set;
  var w#4_2: Box;
  var ##x#4_1: Box;
  var ##source#4_1: Box;
  var ##n#4_1: int;
  var ##AllVertices#4_1: Set;
  var $rhs#4_0: Set;
  var $rhs#4_1: Set;
  var pathToV#4_0: DatatypeType
     where $Is(pathToV#4_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
       && $IsAlloc(pathToV#4_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
  var ##source#4_2: Box;
  var ##x#4_2: Box;
  var ##m#4_0: Map;
  var p#4_1_0_0: DatatypeType;
  var ##source#4_1_0_0: Box;
  var ##dest#4_1_0_0: Box;
  var ##p#4_1_0_0: DatatypeType;
  var ##list#4_1_0_0: DatatypeType;
  var ##list#4_1_0_1: DatatypeType;
  var source##4_1_0_0: Box;
  var x##4_1_0_0: Box;
  var p##4_1_0_0: DatatypeType;
  var AllVertices##4_1_0_0: Set;
  var ##list#4_1_0_2: DatatypeType;
  var ##list#4_1_0_3: DatatypeType;
  var source##4_1_0_0_0: Box;
  var m##4_1_0_0_0: int;
  var ##list#4_1_0_0_0: DatatypeType;
  var n##4_1_0_0_0: int;
  var AllVertices##4_1_0_0_0: Set;
  var $rhs#4_1_0: int;
  var $rhs#4_1_1: DatatypeType;
  var ##source#4_3: Box;
  var ##n#4_2: int;
  var ##AllVertices#4_2: Set;
  var ##source#4_4: Box;
  var ##n#4_3: int;
  var ##AllVertices#4_3: Set;
  var newlyEncountered#4_0: Set
     where $Is(newlyEncountered#4_0, TSet(_module.BreadthFirstSearch$Vertex))
       && $IsAlloc(newlyEncountered#4_0, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
  var w#4_3: Box;
  var ##x#4_3: Box;
  var ##source#4_5: Box;
  var ##n#4_4: int;
  var ##AllVertices#4_4: Set;
  var ##source#4_6: Box;
  var ##n#4_5: int;
  var ##AllVertices#4_5: Set;
  var ##source#4_7: Box;
  var ##n#4_6: int;
  var ##AllVertices#4_6: Set;
  var ##source#4_8: Box;
  var ##n#4_7: int;
  var ##AllVertices#4_7: Set;
  var $rhs#4_2: Set;
  var $rhs#4_3: Set;
  var $rhs##4_0: Map;
  var vSuccs##4_0: Set;
  var source##4_0: Box;
  var paths##4_0: Map;
  var v##4_0: Box;
  var pathToV##4_0: DatatypeType;
  var $rhs#4_4_0: Set;
  var $rhs#4_4_1: Set;
  var $rhs#4_4_2: int;
  var ##source#4_9: Box;
  var ##n#4_8: int;
  var ##AllVertices#4_8: Set;
  var ##source#4_10: Box;
  var ##n#4_9: int;
  var ##AllVertices#4_9: Set;
  var ##source#4_11: Box;
  var ##n#4_10: int;
  var ##AllVertices#4_10: Set;
  var n#5_0: int;
  var ##source#5_0: Box;
  var ##n#5_0: int;
  var ##AllVertices#5_0: Set;
  var source##5_0_0: Box;
  var m##5_0_0: int;
  var n##5_0_0: int;
  var AllVertices##5_0_0: Set;
  var source##5_1_0: Box;
  var m##5_1_0: int;
  var n##5_1_0: int;
  var AllVertices##5_1_0: Set;
  var p#6_0: DatatypeType;
  var ##source#6_0: Box;
  var ##dest#6_0: Box;
  var ##p#6_0: DatatypeType;
  var source##6_0: Box;
  var x##6_0: Box;
  var p##6_0: DatatypeType;
  var AllVertices##6_0: Set;

    // AddMethodImpl: BFS, Impl$$_module.BreadthFirstSearch.BFS
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(48,10)
    assume true;
    assume true;
    path#0 := Lit(#_module.List.Nil());
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(49,17)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := Set#UnionOne(Set#Empty(): Set, source#0);
    assume true;
    $rhs#1 := Set#UnionOne(Set#Empty(): Set, source#0);
    assume true;
    $rhs#2 := Lit(Set#Empty(): Set);
    V#0 := $rhs#0;
    C#0 := $rhs#1;
    N#0 := $rhs#2;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(50,32)
    assume true;
    assume true;
    assume true;
    $rhs#3 := Lit(Set#Empty(): Set);
    assume true;
    $rhs#4 := Map#Build(Map#Empty(): Map, source#0, $Box(Lit(#_module.List.Nil())));
    Processed#0 := $rhs#3;
    paths#0 := $rhs#4;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(51,5)
    assume true;
    assert {:id "id75"} Set#Equal(Map#Domain(paths#0), Set#UnionOne(Set#Empty(): Set, source#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(58,7)
    assume true;
    assume true;
    d#0 := LitInt(0);
    if (*)
    {
        // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(59,65)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(59,72)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id77"} Call$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(59,5)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), 
          Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
          $Heap);
        ##source#3 := source#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##source#3, _module.BreadthFirstSearch$Vertex, $Heap);
        assert {:id "id78"} $Is(d#0, Tclass._System.nat());
        ##n#0 := d#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
        ##AllVertices#0 := AllVertices#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
        assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
        if (Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
            $LS($LZ), 
            reveal__module.BreadthFirstSearch.R, 
            this, 
            source#0, 
            d#0, 
            AllVertices#0), 
          dest#0))
        {
        }

        assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
        assert {:id "id79"} {:subsumption 0} Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
              $LS($LZ), 
              reveal__module.BreadthFirstSearch.R, 
              this, 
              source#0, 
              d#0, 
              AllVertices#0), 
            dest#0)
           ==> Set#IsMember(C#0, dest#0);
        assume {:id "id80"} Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
              $LS($LZ), 
              reveal__module.BreadthFirstSearch.R, 
              this, 
              source#0, 
              d#0, 
              AllVertices#0), 
            dest#0)
           ==> Set#IsMember(C#0, dest#0);
        assume false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(59,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
      $Heap);
    ##source#4 := source#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##source#4, _module.BreadthFirstSearch$Vertex, $Heap);
    assume {:id "id81"} $Is(d#0, Tclass._System.nat());
    ##n#1 := d#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    ##AllVertices#1 := AllVertices#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##AllVertices#1, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
    assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
    if (Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
        $LS($LZ), 
        reveal__module.BreadthFirstSearch.R, 
        this, 
        source#0, 
        d#0, 
        AllVertices#0), 
      dest#0))
    {
    }

    assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
    assume true;
    assume {:id "id82"} Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
          $LS($LZ), 
          reveal__module.BreadthFirstSearch.R, 
          this, 
          source#0, 
          d#0, 
          AllVertices#0), 
        dest#0)
       ==> Set#IsMember(C#0, dest#0);
    if (*)
    {
        // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(60,65)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(60,72)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id83"} Call$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(60,5)
        if (d#0 != 0)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##source#5 := source#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##source#5, _module.BreadthFirstSearch$Vertex, $Heap);
            assert {:id "id84"} $Is(d#0 - 1, Tclass._System.nat());
            ##n#2 := d#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
            ##AllVertices#2 := AllVertices#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##AllVertices#2, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 - 1, AllVertices#0);
        }

        assume d#0 != 0
           ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 - 1, AllVertices#0);
        assert {:id "id85"} {:subsumption 0} d#0 != 0
           ==> !Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
              $LS($LS($LZ)), 
              reveal__module.BreadthFirstSearch.R, 
              this, 
              source#0, 
              d#0 - 1, 
              AllVertices#0), 
            dest#0);
        assume {:id "id86"} d#0 != 0
           ==> !Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
              $LS($LZ), 
              reveal__module.BreadthFirstSearch.R, 
              this, 
              source#0, 
              d#0 - 1, 
              AllVertices#0), 
            dest#0);
        assume false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(60,5)
    if (d#0 != 0)
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), 
          Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
          $Heap);
        ##source#6 := source#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##source#6, _module.BreadthFirstSearch$Vertex, $Heap);
        assume {:id "id87"} $Is(d#0 - 1, Tclass._System.nat());
        ##n#3 := d#0 - 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
        ##AllVertices#3 := AllVertices#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##AllVertices#3, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
        assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 - 1, AllVertices#0);
    }

    assume d#0 != 0
       ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 - 1, AllVertices#0);
    assume true;
    assume {:id "id88"} d#0 != 0
       ==> !Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
          $LS($LZ), 
          reveal__module.BreadthFirstSearch.R, 
          this, 
          source#0, 
          d#0 - 1, 
          AllVertices#0), 
        dest#0);
    if (*)
    {
        // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(61,60)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(61,67)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id89"} Call$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(61,5)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), 
          Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
          $Heap);
        ##source#7 := source#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##source#7, _module.BreadthFirstSearch$Vertex, $Heap);
        assert {:id "id90"} $Is(d#0, Tclass._System.nat());
        ##n#4 := d#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#4, Tclass._System.nat(), $Heap);
        ##AllVertices#4 := AllVertices#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##AllVertices#4, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
        assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
        assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
        assert {:id "id91"} {:subsumption 0} Set#Equal(Set#Union(Processed#0, C#0), 
          _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
            $LS($LS($LZ)), 
            reveal__module.BreadthFirstSearch.R, 
            this, 
            source#0, 
            d#0, 
            AllVertices#0));
        assume {:id "id92"} Set#Equal(Set#Union(Processed#0, C#0), 
          _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
            $LS($LZ), 
            reveal__module.BreadthFirstSearch.R, 
            this, 
            source#0, 
            d#0, 
            AllVertices#0));
        assume false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(61,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
      $Heap);
    ##source#8 := source#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##source#8, _module.BreadthFirstSearch$Vertex, $Heap);
    assume {:id "id93"} $Is(d#0, Tclass._System.nat());
    ##n#5 := d#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#5, Tclass._System.nat(), $Heap);
    ##AllVertices#5 := AllVertices#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##AllVertices#5, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
    assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
    assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
    assume true;
    assume {:id "id94"} Set#Equal(Set#Union(Processed#0, C#0), 
      _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
        $LS($LZ), 
        reveal__module.BreadthFirstSearch.R, 
        this, 
        source#0, 
        d#0, 
        AllVertices#0));
    if (*)
    {
        // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(62,85)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(62,92)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id95"} Call$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(62,5)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), 
          Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
          $Heap);
        ##S#1 := Processed#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#1, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
        ##AllVertices#6 := AllVertices#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##AllVertices#6, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
        assume _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, this, Processed#0, AllVertices#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), 
          Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
          $Heap);
        ##source#9 := source#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##source#9, _module.BreadthFirstSearch$Vertex, $Heap);
        assert {:id "id96"} $Is(d#0, Tclass._System.nat());
        ##n#6 := d#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#6, Tclass._System.nat(), $Heap);
        ##AllVertices#7 := AllVertices#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##AllVertices#7, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
        assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
        assume _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, this, Processed#0, AllVertices#0)
           && _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
        assert {:id "id97"} {:subsumption 0} Set#Equal(N#0, 
          Set#Difference(_module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, this, Processed#0, AllVertices#0), 
            _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
              $LS($LS($LZ)), 
              reveal__module.BreadthFirstSearch.R, 
              this, 
              source#0, 
              d#0, 
              AllVertices#0)));
        assume {:id "id98"} Set#Equal(N#0, 
          Set#Difference(_module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, this, Processed#0, AllVertices#0), 
            _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
              $LS($LZ), 
              reveal__module.BreadthFirstSearch.R, 
              this, 
              source#0, 
              d#0, 
              AllVertices#0)));
        assume false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(62,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
      $Heap);
    ##S#2 := Processed#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#2, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
    ##AllVertices#8 := AllVertices#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##AllVertices#8, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
    assume _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, this, Processed#0, AllVertices#0);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
      $Heap);
    ##source#10 := source#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##source#10, _module.BreadthFirstSearch$Vertex, $Heap);
    assume {:id "id99"} $Is(d#0, Tclass._System.nat());
    ##n#7 := d#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#7, Tclass._System.nat(), $Heap);
    ##AllVertices#9 := AllVertices#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##AllVertices#9, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
    assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
    assume _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, this, Processed#0, AllVertices#0)
       && _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
    assume true;
    assume {:id "id100"} Set#Equal(N#0, 
      Set#Difference(_module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, this, Processed#0, AllVertices#0), 
        _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
          $LS($LZ), 
          reveal__module.BreadthFirstSearch.R, 
          this, 
          source#0, 
          d#0, 
          AllVertices#0)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(63,5)
    assume true;
    assert {:id "id101"} {:split_here} Lit(true);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(64,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Set#Difference(AllVertices#0, Processed#0);
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id103"} $w$loop#0 ==> Set#Subset(V#0, AllVertices#0);
      invariant {:id "id104"} $w$loop#0 ==> Set#Subset(Processed#0, AllVertices#0);
      invariant {:id "id105"} $w$loop#0 ==> Set#Subset(C#0, AllVertices#0);
      invariant {:id "id106"} $w$loop#0 ==> Set#Subset(N#0, AllVertices#0);
      free invariant true;
      invariant {:id "id108"} $w$loop#0 ==> Set#IsMember(V#0, source#0);
      free invariant true;
      invariant {:id "id110"} $w$loop#0 ==> Set#Equal(V#0, Set#Union(Set#Union(Processed#0, C#0), N#0));
      free invariant true;
      invariant {:id "id112"} $w$loop#0 ==> Set#Disjoint(Processed#0, C#0);
      invariant {:id "id113"} $w$loop#0 ==> Set#Disjoint(Processed#0, C#0);
      invariant {:id "id114"} $w$loop#0 ==> Set#Disjoint(Set#Union(Processed#0, C#0), N#0);
      free invariant $w$loop#0
         ==> _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0);
      invariant {:id "id116"} $w$loop#0
         ==> 
        _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0)
         ==> _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0)
           || (forall v#6: Box :: 
            { $Unbox(Map#Elements(paths#0)[v#6]): DatatypeType } 
              { Set#IsMember(Map#Domain(paths#0), v#6) } 
            $IsBox(v#6, _module.BreadthFirstSearch$Vertex)
               ==> 
              Set#IsMember(Map#Domain(paths#0), v#6)
               ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
                $LS($LS($LZ)), 
                this, 
                source#0, 
                v#6, 
                $Unbox(Map#Elements(paths#0)[v#6]): DatatypeType));
      free invariant {:id "id117"} $w$loop#0
         ==> _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0)
           && 
          _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0)
           && (forall v#6: Box :: 
            { $Unbox(Map#Elements(paths#0)[v#6]): DatatypeType } 
              { Set#IsMember(Map#Domain(paths#0), v#6) } 
            $IsBox(v#6, _module.BreadthFirstSearch$Vertex)
               ==> 
              Set#IsMember(Map#Domain(paths#0), v#6)
               ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                this, 
                source#0, 
                v#6, 
                $Unbox(Map#Elements(paths#0)[v#6]): DatatypeType));
      free invariant true;
      invariant {:id "id119"} $w$loop#0 ==> Set#Equal(V#0, Map#Domain(paths#0));
      free invariant $w$loop#0
         ==> (forall x#1: Box :: 
          { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0) } 
            { Set#IsMember(C#0, x#1) } 
          $IsBox(x#1, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(C#0, x#1)
             ==> _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0)
               && _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, 
                _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0)));
      invariant {:id "id123"} $w$loop#0
         ==> (forall x#1: Box :: 
          { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0) } 
            { Set#IsMember(C#0, x#1) } 
          $IsBox(x#1, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(C#0, x#1)
             ==> _module.__default.length(_module.BreadthFirstSearch$Vertex, 
                $LS($LS($LZ)), 
                _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0))
               == d#0);
      free invariant {:id "id124"} $w$loop#0
         ==> (forall x#1: Box :: 
          { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0) } 
            { Set#IsMember(C#0, x#1) } 
          $IsBox(x#1, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(C#0, x#1)
             ==> _module.__default.length(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0))
               == d#0);
      free invariant $w$loop#0
         ==> (forall x#3: Box :: 
          { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0) } 
            { Set#IsMember(N#0, x#3) } 
          $IsBox(x#3, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(N#0, x#3)
             ==> _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0)
               && _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, 
                _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0)));
      invariant {:id "id128"} $w$loop#0
         ==> (forall x#3: Box :: 
          { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0) } 
            { Set#IsMember(N#0, x#3) } 
          $IsBox(x#3, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(N#0, x#3)
             ==> _module.__default.length(_module.BreadthFirstSearch$Vertex, 
                $LS($LS($LZ)), 
                _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0))
               == d#0 + 1);
      free invariant {:id "id129"} $w$loop#0
         ==> (forall x#3: Box :: 
          { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0) } 
            { Set#IsMember(N#0, x#3) } 
          $IsBox(x#3, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(N#0, x#3)
             ==> _module.__default.length(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0))
               == d#0 + 1);
      free invariant $w$loop#0
         ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
      invariant {:id "id132"} $w$loop#0
         ==> 
        Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
            $LS($LZ), 
            reveal__module.BreadthFirstSearch.R, 
            this, 
            source#0, 
            d#0, 
            AllVertices#0), 
          dest#0)
         ==> Set#IsMember(C#0, dest#0);
      free invariant $w$loop#0
         ==> 
        d#0 != 0
         ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 - 1, AllVertices#0);
      invariant {:id "id135"} $w$loop#0
         ==> 
        d#0 != 0
         ==> !Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
            $LS($LS($LZ)), 
            reveal__module.BreadthFirstSearch.R, 
            this, 
            source#0, 
            d#0 - 1, 
            AllVertices#0), 
          dest#0);
      free invariant $w$loop#0
         ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
      invariant {:id "id138"} $w$loop#0
         ==> Set#Equal(Set#Union(Processed#0, C#0), 
          _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
            $LS($LS($LZ)), 
            reveal__module.BreadthFirstSearch.R, 
            this, 
            source#0, 
            d#0, 
            AllVertices#0));
      free invariant $w$loop#0
         ==> _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, this, Processed#0, AllVertices#0)
           && _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
      invariant {:id "id141"} $w$loop#0
         ==> Set#Equal(N#0, 
          Set#Difference(_module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, this, Processed#0, AllVertices#0), 
            _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
              $LS($LS($LZ)), 
              reveal__module.BreadthFirstSearch.R, 
              this, 
              source#0, 
              d#0, 
              AllVertices#0)));
      free invariant true;
      invariant {:id "id143"} $w$loop#0
         ==> 
        Set#Equal(C#0, Set#Empty(): Set)
         ==> Set#Equal(N#0, Set#Empty(): Set);
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
      free invariant Set#Subset(Set#Difference(AllVertices#0, Processed#0), $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            if (Set#Subset(V#0, AllVertices#0))
            {
            }

            if (Set#Subset(V#0, AllVertices#0) && Set#Subset(Processed#0, AllVertices#0))
            {
            }

            if (Set#Subset(V#0, AllVertices#0)
               && Set#Subset(Processed#0, AllVertices#0)
               && Set#Subset(C#0, AllVertices#0))
            {
            }

            assume true;
            assume {:id "id102"} Set#Subset(V#0, AllVertices#0)
               && Set#Subset(Processed#0, AllVertices#0)
               && Set#Subset(C#0, AllVertices#0)
               && Set#Subset(N#0, AllVertices#0);
            assume true;
            assume {:id "id107"} Set#IsMember(V#0, source#0);
            assume true;
            assume {:id "id109"} Set#Equal(V#0, Set#Union(Set#Union(Processed#0, C#0), N#0));
            if (Set#Disjoint(Processed#0, C#0))
            {
            }

            if (Set#Disjoint(Processed#0, C#0) && Set#Disjoint(Processed#0, C#0))
            {
            }

            assume true;
            assume {:id "id111"} Set#Disjoint(Processed#0, C#0)
               && Set#Disjoint(Processed#0, C#0)
               && Set#Disjoint(Set#Union(Processed#0, C#0), N#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##source#11 := source#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##source#11, _module.BreadthFirstSearch$Vertex, $Heap);
            ##m#0 := paths#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0, 
              TMap(_module.BreadthFirstSearch$Vertex, 
                Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
              $Heap);
            assume _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0);
            assume _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0);
            assume {:id "id115"} _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0);
            assume true;
            assume {:id "id118"} Set#Equal(V#0, Map#Domain(paths#0));
            // Begin Comprehension WF check
            havoc x#0;
            if ($IsBox(x#0, _module.BreadthFirstSearch$Vertex)
               && $IsAllocBox(x#0, _module.BreadthFirstSearch$Vertex, $Heap))
            {
                if (Set#IsMember(C#0, x#0))
                {
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), 
                      Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
                      $Heap);
                    ##source#12 := source#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##source#12, _module.BreadthFirstSearch$Vertex, $Heap);
                    ##x#0 := x#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#0, _module.BreadthFirstSearch$Vertex, $Heap);
                    ##m#1 := paths#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##m#1, 
                      TMap(_module.BreadthFirstSearch$Vertex, 
                        Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
                      $Heap);
                    assert {:id "id120"} {:subsumption 0} _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, ##source#12, ##m#1)
                       ==> _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, ##source#12, ##m#1)
                         || (forall v#7: Box :: 
                          { $Unbox(Map#Elements(##m#1)[v#7]): DatatypeType } 
                            { Set#IsMember(Map#Domain(##m#1), v#7) } 
                          $IsBox(v#7, _module.BreadthFirstSearch$Vertex)
                             ==> 
                            Set#IsMember(Map#Domain(##m#1), v#7)
                             ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
                              $LS($LS($LZ)), 
                              this, 
                              ##source#12, 
                              v#7, 
                              $Unbox(Map#Elements(##m#1)[v#7]): DatatypeType));
                    assert {:id "id121"} {:subsumption 0} Set#IsMember(Map#Domain(##m#1), ##x#0);
                    assume _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, paths#0);
                    ##list#3 := _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, paths#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##list#3, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
                    assume _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, 
                      _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, paths#0));
                }
            }

            // End Comprehension WF check
            assume (forall x#1: Box :: 
              { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0) } 
                { Set#IsMember(C#0, x#1) } 
              $IsBox(x#1, _module.BreadthFirstSearch$Vertex)
                 ==> 
                Set#IsMember(C#0, x#1)
                 ==> _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0)
                   && _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, 
                    _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0)));
            assume {:id "id122"} (forall x#1: Box :: 
              { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0) } 
                { Set#IsMember(C#0, x#1) } 
              $IsBox(x#1, _module.BreadthFirstSearch$Vertex)
                 ==> 
                Set#IsMember(C#0, x#1)
                 ==> _module.__default.length(_module.BreadthFirstSearch$Vertex, 
                    $LS($LZ), 
                    _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0))
                   == d#0);
            // Begin Comprehension WF check
            havoc x#2;
            if ($IsBox(x#2, _module.BreadthFirstSearch$Vertex)
               && $IsAllocBox(x#2, _module.BreadthFirstSearch$Vertex, $Heap))
            {
                if (Set#IsMember(N#0, x#2))
                {
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), 
                      Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
                      $Heap);
                    ##source#13 := source#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##source#13, _module.BreadthFirstSearch$Vertex, $Heap);
                    ##x#1 := x#2;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#1, _module.BreadthFirstSearch$Vertex, $Heap);
                    ##m#2 := paths#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##m#2, 
                      TMap(_module.BreadthFirstSearch$Vertex, 
                        Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
                      $Heap);
                    assert {:id "id125"} {:subsumption 0} _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, ##source#13, ##m#2)
                       ==> _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, ##source#13, ##m#2)
                         || (forall v#8: Box :: 
                          { $Unbox(Map#Elements(##m#2)[v#8]): DatatypeType } 
                            { Set#IsMember(Map#Domain(##m#2), v#8) } 
                          $IsBox(v#8, _module.BreadthFirstSearch$Vertex)
                             ==> 
                            Set#IsMember(Map#Domain(##m#2), v#8)
                             ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
                              $LS($LS($LZ)), 
                              this, 
                              ##source#13, 
                              v#8, 
                              $Unbox(Map#Elements(##m#2)[v#8]): DatatypeType));
                    assert {:id "id126"} {:subsumption 0} Set#IsMember(Map#Domain(##m#2), ##x#1);
                    assume _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#2, paths#0);
                    ##list#4 := _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#2, paths#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##list#4, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
                    assume _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, 
                      _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#2, paths#0));
                }
            }

            // End Comprehension WF check
            assume (forall x#3: Box :: 
              { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0) } 
                { Set#IsMember(N#0, x#3) } 
              $IsBox(x#3, _module.BreadthFirstSearch$Vertex)
                 ==> 
                Set#IsMember(N#0, x#3)
                 ==> _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0)
                   && _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, 
                    _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0)));
            assume {:id "id127"} (forall x#3: Box :: 
              { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0) } 
                { Set#IsMember(N#0, x#3) } 
              $IsBox(x#3, _module.BreadthFirstSearch$Vertex)
                 ==> 
                Set#IsMember(N#0, x#3)
                 ==> _module.__default.length(_module.BreadthFirstSearch$Vertex, 
                    $LS($LZ), 
                    _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0))
                   == d#0 + 1);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##source#14 := source#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##source#14, _module.BreadthFirstSearch$Vertex, $Heap);
            assert {:id "id130"} $Is(d#0, Tclass._System.nat());
            ##n#8 := d#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#8, Tclass._System.nat(), $Heap);
            ##AllVertices#10 := AllVertices#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##AllVertices#10, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
            if (Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                reveal__module.BreadthFirstSearch.R, 
                this, 
                source#0, 
                d#0, 
                AllVertices#0), 
              dest#0))
            {
            }

            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
            assume {:id "id131"} Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $LS($LZ), 
                  reveal__module.BreadthFirstSearch.R, 
                  this, 
                  source#0, 
                  d#0, 
                  AllVertices#0), 
                dest#0)
               ==> Set#IsMember(C#0, dest#0);
            if (d#0 != 0)
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), 
                  Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
                  $Heap);
                ##source#15 := source#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##source#15, _module.BreadthFirstSearch$Vertex, $Heap);
                assert {:id "id133"} $Is(d#0 - 1, Tclass._System.nat());
                ##n#9 := d#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#9, Tclass._System.nat(), $Heap);
                ##AllVertices#11 := AllVertices#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##AllVertices#11, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
                assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 - 1, AllVertices#0);
            }

            assume d#0 != 0
               ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 - 1, AllVertices#0);
            assume {:id "id134"} d#0 != 0
               ==> !Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $LS($LZ), 
                  reveal__module.BreadthFirstSearch.R, 
                  this, 
                  source#0, 
                  d#0 - 1, 
                  AllVertices#0), 
                dest#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##source#16 := source#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##source#16, _module.BreadthFirstSearch$Vertex, $Heap);
            assert {:id "id136"} $Is(d#0, Tclass._System.nat());
            ##n#10 := d#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#10, Tclass._System.nat(), $Heap);
            ##AllVertices#12 := AllVertices#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##AllVertices#12, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
            assume {:id "id137"} Set#Equal(Set#Union(Processed#0, C#0), 
              _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                reveal__module.BreadthFirstSearch.R, 
                this, 
                source#0, 
                d#0, 
                AllVertices#0));
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##S#3 := Processed#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#3, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            ##AllVertices#13 := AllVertices#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##AllVertices#13, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            assume _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, this, Processed#0, AllVertices#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##source#17 := source#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##source#17, _module.BreadthFirstSearch$Vertex, $Heap);
            assert {:id "id139"} $Is(d#0, Tclass._System.nat());
            ##n#11 := d#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#11, Tclass._System.nat(), $Heap);
            ##AllVertices#14 := AllVertices#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##AllVertices#14, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
            assume _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, this, Processed#0, AllVertices#0)
               && _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
            assume {:id "id140"} Set#Equal(N#0, 
              Set#Difference(_module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, this, Processed#0, AllVertices#0), 
                _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $LS($LZ), 
                  reveal__module.BreadthFirstSearch.R, 
                  this, 
                  source#0, 
                  d#0, 
                  AllVertices#0)));
            if (Set#Equal(C#0, Set#Empty(): Set))
            {
            }

            assume true;
            assume {:id "id142"} Set#Equal(C#0, Set#Empty(): Set) ==> Set#Equal(N#0, Set#Empty(): Set);
            assume true;
            assume false;
        }

        assume true;
        if (Set#Equal(C#0, Set#Empty(): Set))
        {
            break;
        }

        $decr$loop#00 := Set#Difference(AllVertices#0, Processed#0);
        push;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(92,13)
        havoc v#4_1;
        if ($IsBox(v#4_1, _module.BreadthFirstSearch$Vertex)
           && $IsAllocBox(v#4_1, _module.BreadthFirstSearch$Vertex, $Heap))
        {
            assume true;
        }

        assert {:id "id144"} (exists $as#v4_0#4_0: Box :: 
          $IsBox($as#v4_0#4_0, _module.BreadthFirstSearch$Vertex)
             && Set#IsMember(C#0, $as#v4_0#4_0));
        defass#v#4_0 := true;
        havoc v#4_0;
        assume {:id "id145"} Set#IsMember(C#0, v#4_0);
        if (*)
        {
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(94,105)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(94,112)
            // TrCallStmt: Before ProcessCallStmt
            call {:id "id146"} Call$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(93,7)
            assert {:id "id147"} defass#v#4_0;
            if (v#4_0 != dest#0)
            {
                assert {:id "id148"} defass#v#4_0;
            }

            if (v#4_0 != dest#0 && Set#Equal(C#0, Set#UnionOne(Set#Empty(): Set, v#4_0)))
            {
                assert {:id "id149"} defass#v#4_0;
                // Begin Comprehension WF check
                havoc w#4_0;
                if ($IsBox(w#4_0, _module.BreadthFirstSearch$Vertex)
                   && $IsAllocBox(w#4_0, _module.BreadthFirstSearch$Vertex, $Heap))
                {
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), 
                      Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
                      $Heap);
                    assert {:id "id150"} defass#v#4_0;
                    ##x#4_0 := v#4_0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##x#4_0, _module.BreadthFirstSearch$Vertex, $Heap);
                    assume _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, v#4_0);
                    if (Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#4_0), 
                      w#4_0))
                    {
                    }

                    if (Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#4_0), 
                        w#4_0)
                       && !Set#IsMember(V#0, w#4_0))
                    {
                    }
                }

                // End Comprehension WF check
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), 
                  Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
                  $Heap);
                ##source#4_0 := source#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##source#4_0, _module.BreadthFirstSearch$Vertex, $Heap);
                assert {:id "id151"} $Is(d#0 + 1, Tclass._System.nat());
                ##n#4_0 := d#0 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#4_0, Tclass._System.nat(), $Heap);
                ##AllVertices#4_0 := AllVertices#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##AllVertices#4_0, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
                assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 + 1, AllVertices#0);
            }

            assume v#4_0 != dest#0
               ==> 
              Set#Equal(C#0, Set#UnionOne(Set#Empty(): Set, v#4_0))
               ==> _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, v#4_0)
                 && _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 + 1, AllVertices#0);
            assert {:id "id152"} {:subsumption 0} v#4_0 != dest#0 && Set#Equal(C#0, Set#UnionOne(Set#Empty(): Set, v#4_0))
               ==> Set#Equal(Set#Union(Set#Union(Processed#0, Set#UnionOne(Set#Empty(): Set, v#4_0)), 
                  Set#Union(N#0, 
                    Set#FromBoogieMap((lambda $y#4_0: Box :: 
                        $IsBox($y#4_0, _module.BreadthFirstSearch$Vertex)
                           && 
                          Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#4_0), 
                            $y#4_0)
                           && !Set#IsMember(V#0, $y#4_0))))), 
                _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $LS($LS($LZ)), 
                  reveal__module.BreadthFirstSearch.R, 
                  this, 
                  source#0, 
                  d#0 + 1, 
                  AllVertices#0));
            assume {:id "id153"} v#4_0 != dest#0 && Set#Equal(C#0, Set#UnionOne(Set#Empty(): Set, v#4_0))
               ==> Set#Equal(Set#Union(Set#Union(Processed#0, Set#UnionOne(Set#Empty(): Set, v#4_0)), 
                  Set#Union(N#0, 
                    Set#FromBoogieMap((lambda $y#4_1: Box :: 
                        $IsBox($y#4_1, _module.BreadthFirstSearch$Vertex)
                           && 
                          Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#4_0), 
                            $y#4_1)
                           && !Set#IsMember(V#0, $y#4_1))))), 
                _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $LS($LZ), 
                  reveal__module.BreadthFirstSearch.R, 
                  this, 
                  source#0, 
                  d#0 + 1, 
                  AllVertices#0));
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(93,7)
        assume {:id "id154"} defass#v#4_0;
        if (v#4_0 != dest#0)
        {
            assume {:id "id155"} defass#v#4_0;
        }

        if (v#4_0 != dest#0 && Set#Equal(C#0, Set#UnionOne(Set#Empty(): Set, v#4_0)))
        {
            assume {:id "id156"} defass#v#4_0;
            // Begin Comprehension WF check
            havoc w#4_2;
            if ($IsBox(w#4_2, _module.BreadthFirstSearch$Vertex)
               && $IsAllocBox(w#4_2, _module.BreadthFirstSearch$Vertex, $Heap))
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), 
                  Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
                  $Heap);
                assume {:id "id157"} defass#v#4_0;
                ##x#4_1 := v#4_0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##x#4_1, _module.BreadthFirstSearch$Vertex, $Heap);
                assume _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, v#4_0);
                if (Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#4_0), 
                  w#4_2))
                {
                }

                if (Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#4_0), 
                    w#4_2)
                   && !Set#IsMember(V#0, w#4_2))
                {
                }
            }

            // End Comprehension WF check
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##source#4_1 := source#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##source#4_1, _module.BreadthFirstSearch$Vertex, $Heap);
            assume {:id "id158"} $Is(d#0 + 1, Tclass._System.nat());
            ##n#4_1 := d#0 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#4_1, Tclass._System.nat(), $Heap);
            ##AllVertices#4_1 := AllVertices#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##AllVertices#4_1, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 + 1, AllVertices#0);
        }

        assume v#4_0 != dest#0
           ==> 
          Set#Equal(C#0, Set#UnionOne(Set#Empty(): Set, v#4_0))
           ==> _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, v#4_0)
             && _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 + 1, AllVertices#0);
        assume true;
        assume {:id "id159"} v#4_0 != dest#0 && Set#Equal(C#0, Set#UnionOne(Set#Empty(): Set, v#4_0))
           ==> Set#Equal(Set#Union(Set#Union(Processed#0, Set#UnionOne(Set#Empty(): Set, v#4_0)), 
              Set#Union(N#0, 
                Set#FromBoogieMap((lambda $y#4_3: Box :: 
                    $IsBox($y#4_3, _module.BreadthFirstSearch$Vertex)
                       && 
                      Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#4_0), 
                        $y#4_3)
                       && !Set#IsMember(V#0, $y#4_3))))), 
            _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
              $LS($LZ), 
              reveal__module.BreadthFirstSearch.R, 
              this, 
              source#0, 
              d#0 + 1, 
              AllVertices#0));
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(95,20)
        assume true;
        assume true;
        assert {:id "id160"} defass#v#4_0;
        assume true;
        $rhs#4_0 := Set#Difference(C#0, Set#UnionOne(Set#Empty(): Set, v#4_0));
        assert {:id "id162"} defass#v#4_0;
        assume true;
        $rhs#4_1 := Set#Union(Processed#0, Set#UnionOne(Set#Empty(): Set, v#4_0));
        C#0 := $rhs#4_0;
        Processed#0 := $rhs#4_1;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(96,25)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), 
          Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
          $Heap);
        ##source#4_2 := source#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##source#4_2, _module.BreadthFirstSearch$Vertex, $Heap);
        assert {:id "id166"} defass#v#4_0;
        ##x#4_2 := v#4_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#4_2, _module.BreadthFirstSearch$Vertex, $Heap);
        ##m#4_0 := paths#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#4_0, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
          $Heap);
        assert {:id "id167"} {:subsumption 0} _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, ##source#4_2, ##m#4_0)
           ==> _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, ##source#4_2, ##m#4_0)
             || (forall v#4_2: Box :: 
              { $Unbox(Map#Elements(##m#4_0)[v#4_2]): DatatypeType } 
                { Set#IsMember(Map#Domain(##m#4_0), v#4_2) } 
              $IsBox(v#4_2, _module.BreadthFirstSearch$Vertex)
                 ==> 
                Set#IsMember(Map#Domain(##m#4_0), v#4_2)
                 ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
                  $LS($LS($LZ)), 
                  this, 
                  ##source#4_2, 
                  v#4_2, 
                  $Unbox(Map#Elements(##m#4_0)[v#4_2]): DatatypeType));
        assert {:id "id168"} {:subsumption 0} Set#IsMember(Map#Domain(##m#4_0), ##x#4_2);
        assume _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, ##source#4_2, ##m#4_0)
           && Set#IsMember(Map#Domain(##m#4_0), ##x#4_2);
        assume _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, v#4_0, paths#0);
        assume _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, v#4_0, paths#0);
        pathToV#4_0 := _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, v#4_0, paths#0);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(98,7)
        assert {:id "id170"} defass#v#4_0;
        assume true;
        if (v#4_0 == dest#0)
        {
            push;
            // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(99,9)
            if (*)
            {
                // Assume Fuel Constant
                havoc p#4_1_0_0;
                assume $Is(p#4_1_0_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
                   && $IsAlloc(p#4_1_0_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), 
                  Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
                  $Heap);
                ##source#4_1_0_0 := source#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##source#4_1_0_0, _module.BreadthFirstSearch$Vertex, $Heap);
                ##dest#4_1_0_0 := dest#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##dest#4_1_0_0, _module.BreadthFirstSearch$Vertex, $Heap);
                ##p#4_1_0_0 := p#4_1_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#4_1_0_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
                assume _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, p#4_1_0_0);
                assume _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, p#4_1_0_0);
                assume {:id "id171"} _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#4_1_0_0);
                if (*)
                {
                    ##list#4_1_0_0 := pathToV#4_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##list#4_1_0_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
                    assume _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, pathToV#4_0);
                    ##list#4_1_0_1 := p#4_1_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##list#4_1_0_1, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
                    assume _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, p#4_1_0_0);
                    assume _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, pathToV#4_0)
                       && _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, p#4_1_0_0);
                    assume {:id "id172"} _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), pathToV#4_0)
                       <= _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), p#4_1_0_0);
                    assume false;
                }

                push;
                // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(102,11)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(102,18)
                // TrCallStmt: Before ProcessCallStmt
                call {:id "id173"} Call$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(103,25)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                assume true;
                // ProcessCallStmt: CheckSubrange
                source##4_1_0_0 := source#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                x##4_1_0_0 := dest#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                p##4_1_0_0 := p#4_1_0_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                AllVertices##4_1_0_0 := AllVertices#0;
                call {:id "id174"} Call$$_module.BreadthFirstSearch.Lemma__IsPath__R(_module.BreadthFirstSearch$Vertex, this, source##4_1_0_0, x##4_1_0_0, p##4_1_0_0, AllVertices##4_1_0_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(104,11)
                ##list#4_1_0_2 := p#4_1_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##list#4_1_0_2, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
                assume _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, p#4_1_0_0);
                ##list#4_1_0_3 := pathToV#4_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##list#4_1_0_3, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
                assume _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, pathToV#4_0);
                assume _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, p#4_1_0_0)
                   && _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, pathToV#4_0);
                if (_module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), p#4_1_0_0)
                   < _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), pathToV#4_0))
                {
                    push;
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(106,26)
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    source##4_1_0_0_0 := source#0;
                    ##list#4_1_0_0_0 := p#4_1_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##list#4_1_0_0_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
                    assume _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, p#4_1_0_0);
                    assume _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, p#4_1_0_0);
                    // ProcessCallStmt: CheckSubrange
                    m##4_1_0_0_0 := _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), p#4_1_0_0);
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    assert {:id "id175"} $Is(d#0 - 1, Tclass._System.nat());
                    n##4_1_0_0_0 := d#0 - 1;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    AllVertices##4_1_0_0_0 := AllVertices#0;
                    call {:id "id176"} Call$$_module.BreadthFirstSearch.RMonotonicity(_module.BreadthFirstSearch$Vertex, this, source##4_1_0_0_0, m##4_1_0_0_0, n##4_1_0_0_0, AllVertices##4_1_0_0_0);
                    // TrCallStmt: After ProcessCallStmt
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(107,13)
                    assume true;
                    assert {:id "id177"} Lit(false);
                    pop;
                }
                else
                {
                }

                pop;
                assert {:id "id178"} _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), pathToV#4_0)
                   <= _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), p#4_1_0_0);
                assume false;
            }
            else
            {
                assume (forall p#4_1_0_1: DatatypeType :: 
                  { _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), p#4_1_0_1) } 
                    { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#4_1_0_1) } 
                  $Is(p#4_1_0_1, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
                       && $IsAlloc(p#4_1_0_1, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap)
                       && _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#4_1_0_1)
                     ==> _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), pathToV#4_0)
                       <= _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), p#4_1_0_1));
            }

            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(110,9)
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(110,9)
            assume true;
            assume true;
            assume true;
            $rhs#4_1_0 := d#0;
            assume true;
            $rhs#4_1_1 := pathToV#4_0;
            d#0 := $rhs#4_1_0;
            path#0 := $rhs#4_1_1;
            pop;
            pop;
            return;

            pop;
        }
        else
        {
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(112,7)
        assume true;
        assert {:id "id183"} {:split_here} Lit(true);
        if (*)
        {
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(113,74)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(113,81)
            // TrCallStmt: Before ProcessCallStmt
            call {:id "id184"} Call$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(113,7)
            if (!Set#Equal(C#0, Set#Empty(): Set))
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), 
                  Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
                  $Heap);
                ##source#4_3 := source#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##source#4_3, _module.BreadthFirstSearch$Vertex, $Heap);
                assert {:id "id185"} $Is(d#0, Tclass._System.nat());
                ##n#4_2 := d#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#4_2, Tclass._System.nat(), $Heap);
                ##AllVertices#4_2 := AllVertices#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##AllVertices#4_2, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
                assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
            }

            assume !Set#Equal(C#0, Set#Empty(): Set)
               ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
            assert {:id "id186"} {:subsumption 0} !Set#Equal(C#0, Set#Empty(): Set)
               ==> Set#Equal(Set#Union(Processed#0, C#0), 
                _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $LS($LS($LZ)), 
                  reveal__module.BreadthFirstSearch.R, 
                  this, 
                  source#0, 
                  d#0, 
                  AllVertices#0));
            assume {:id "id187"} !Set#Equal(C#0, Set#Empty(): Set)
               ==> Set#Equal(Set#Union(Processed#0, C#0), 
                _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $LS($LZ), 
                  reveal__module.BreadthFirstSearch.R, 
                  this, 
                  source#0, 
                  d#0, 
                  AllVertices#0));
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(113,7)
        if (!Set#Equal(C#0, Set#Empty(): Set))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##source#4_4 := source#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##source#4_4, _module.BreadthFirstSearch$Vertex, $Heap);
            assume {:id "id188"} $Is(d#0, Tclass._System.nat());
            ##n#4_3 := d#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#4_3, Tclass._System.nat(), $Heap);
            ##AllVertices#4_3 := AllVertices#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##AllVertices#4_3, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
        }

        assume !Set#Equal(C#0, Set#Empty(): Set)
           ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
        assume true;
        assume {:id "id189"} !Set#Equal(C#0, Set#Empty(): Set)
           ==> Set#Equal(Set#Union(Processed#0, C#0), 
            _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
              $LS($LZ), 
              reveal__module.BreadthFirstSearch.R, 
              this, 
              source#0, 
              d#0, 
              AllVertices#0));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(114,7)
        assume true;
        assert {:id "id190"} {:split_here} Lit(true);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(117,28)
        assume true;
        // Begin Comprehension WF check
        havoc w#4_3;
        if ($IsBox(w#4_3, _module.BreadthFirstSearch$Vertex)
           && $IsAllocBox(w#4_3, _module.BreadthFirstSearch$Vertex, $Heap))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            assert {:id "id191"} defass#v#4_0;
            ##x#4_3 := v#4_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#4_3, _module.BreadthFirstSearch$Vertex, $Heap);
            assume _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, v#4_0);
            if (Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#4_0), 
              w#4_3))
            {
            }

            if (Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#4_0), 
                w#4_3)
               && !Set#IsMember(V#0, w#4_3))
            {
            }
        }

        // End Comprehension WF check
        assume _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, v#4_0);
        newlyEncountered#4_0 := Set#FromBoogieMap((lambda $y#4_4: Box :: 
            $IsBox($y#4_4, _module.BreadthFirstSearch$Vertex)
               && 
              Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#4_0), 
                $y#4_4)
               && !Set#IsMember(V#0, $y#4_4)));
        if (*)
        {
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(120,62)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(120,69)
            // TrCallStmt: Before ProcessCallStmt
            call {:id "id193"} Call$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(118,7)
            if (Set#Equal(C#0, Set#Empty(): Set))
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), 
                  Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
                  $Heap);
                ##source#4_5 := source#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##source#4_5, _module.BreadthFirstSearch$Vertex, $Heap);
                assert {:id "id194"} $Is(d#0 + 1, Tclass._System.nat());
                ##n#4_4 := d#0 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#4_4, Tclass._System.nat(), $Heap);
                ##AllVertices#4_4 := AllVertices#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##AllVertices#4_4, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
                assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 + 1, AllVertices#0);
            }
            else
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), 
                  Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
                  $Heap);
                ##source#4_6 := source#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##source#4_6, _module.BreadthFirstSearch$Vertex, $Heap);
                assert {:id "id195"} $Is(d#0, Tclass._System.nat());
                ##n#4_5 := d#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#4_5, Tclass._System.nat(), $Heap);
                ##AllVertices#4_5 := AllVertices#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##AllVertices#4_5, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
                assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
            }

            assume (Set#Equal(C#0, Set#Empty(): Set)
                 ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 + 1, AllVertices#0))
               && (!Set#Equal(C#0, Set#Empty(): Set)
                 ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0));
            assert {:id "id196"} {:subsumption 0} Set#Equal(C#0, Set#Empty(): Set)
               ==> Set#Equal(Set#Union(Processed#0, Set#Union(N#0, newlyEncountered#4_0)), 
                _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $LS($LS($LZ)), 
                  reveal__module.BreadthFirstSearch.R, 
                  this, 
                  source#0, 
                  d#0 + 1, 
                  AllVertices#0));
            assert {:id "id197"} {:subsumption 0} !Set#Equal(C#0, Set#Empty(): Set)
               ==> Set#Equal(Set#Union(Processed#0, C#0), 
                _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $LS($LS($LZ)), 
                  reveal__module.BreadthFirstSearch.R, 
                  this, 
                  source#0, 
                  d#0, 
                  AllVertices#0));
            assume {:id "id198"} (if Set#Equal(C#0, Set#Empty(): Set)
               then Set#Equal(Set#Union(Processed#0, Set#Union(N#0, newlyEncountered#4_0)), 
                _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $LS($LZ), 
                  reveal__module.BreadthFirstSearch.R, 
                  this, 
                  source#0, 
                  d#0 + 1, 
                  AllVertices#0))
               else Set#Equal(Set#Union(Processed#0, C#0), 
                _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $LS($LZ), 
                  reveal__module.BreadthFirstSearch.R, 
                  this, 
                  source#0, 
                  d#0, 
                  AllVertices#0)));
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(118,7)
        if (Set#Equal(C#0, Set#Empty(): Set))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##source#4_7 := source#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##source#4_7, _module.BreadthFirstSearch$Vertex, $Heap);
            assume {:id "id199"} $Is(d#0 + 1, Tclass._System.nat());
            ##n#4_6 := d#0 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#4_6, Tclass._System.nat(), $Heap);
            ##AllVertices#4_6 := AllVertices#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##AllVertices#4_6, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 + 1, AllVertices#0);
        }
        else
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##source#4_8 := source#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##source#4_8, _module.BreadthFirstSearch$Vertex, $Heap);
            assume {:id "id200"} $Is(d#0, Tclass._System.nat());
            ##n#4_7 := d#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#4_7, Tclass._System.nat(), $Heap);
            ##AllVertices#4_7 := AllVertices#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##AllVertices#4_7, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
        }

        assume (Set#Equal(C#0, Set#Empty(): Set)
             ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 + 1, AllVertices#0))
           && (!Set#Equal(C#0, Set#Empty(): Set)
             ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0));
        assume true;
        assume true;
        assume {:id "id201"} (if Set#Equal(C#0, Set#Empty(): Set)
           then Set#Equal(Set#Union(Processed#0, Set#Union(N#0, newlyEncountered#4_0)), 
            _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
              $LS($LZ), 
              reveal__module.BreadthFirstSearch.R, 
              this, 
              source#0, 
              d#0 + 1, 
              AllVertices#0))
           else Set#Equal(Set#Union(Processed#0, C#0), 
            _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
              $LS($LZ), 
              reveal__module.BreadthFirstSearch.R, 
              this, 
              source#0, 
              d#0, 
              AllVertices#0)));
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(121,12)
        assume true;
        assume true;
        assume true;
        $rhs#4_2 := Set#Union(V#0, newlyEncountered#4_0);
        assume true;
        $rhs#4_3 := Set#Union(N#0, newlyEncountered#4_0);
        V#0 := $rhs#4_2;
        N#0 := $rhs#4_3;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(122,27)
        assume true;
        // TrCallStmt: Adding lhs with type map<Vertex, List<Vertex>>
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        vSuccs##4_0 := newlyEncountered#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        source##4_0 := source#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        paths##4_0 := paths#0;
        assert {:id "id206"} defass#v#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        v##4_0 := v#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        pathToV##4_0 := pathToV#4_0;
        call {:id "id207"} $rhs##4_0 := Call$$_module.BreadthFirstSearch.UpdatePaths(_module.BreadthFirstSearch$Vertex, this, vSuccs##4_0, source##4_0, paths##4_0, v##4_0, pathToV##4_0);
        // TrCallStmt: After ProcessCallStmt
        paths#0 := $rhs##4_0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(124,7)
        assume true;
        if (Set#Equal(C#0, Set#Empty(): Set))
        {
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(125,17)
            assume true;
            assume true;
            assume true;
            assume true;
            $rhs#4_4_0 := N#0;
            assume true;
            $rhs#4_4_1 := Lit(Set#Empty(): Set);
            assume true;
            $rhs#4_4_2 := d#0 + 1;
            C#0 := $rhs#4_4_0;
            N#0 := $rhs#4_4_1;
            d#0 := $rhs#4_4_2;
            pop;
        }
        else
        {
        }

        if (*)
        {
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(128,62)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(128,69)
            // TrCallStmt: Before ProcessCallStmt
            call {:id "id215"} Call$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(128,7)
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##source#4_9 := source#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##source#4_9, _module.BreadthFirstSearch$Vertex, $Heap);
            assert {:id "id216"} $Is(d#0, Tclass._System.nat());
            ##n#4_8 := d#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#4_8, Tclass._System.nat(), $Heap);
            ##AllVertices#4_8 := AllVertices#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##AllVertices#4_8, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
            assert {:id "id217"} {:subsumption 0} Set#Equal(Set#Union(Processed#0, C#0), 
              _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $LS($LS($LZ)), 
                reveal__module.BreadthFirstSearch.R, 
                this, 
                source#0, 
                d#0, 
                AllVertices#0));
            assume {:id "id218"} Set#Equal(Set#Union(Processed#0, C#0), 
              _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                reveal__module.BreadthFirstSearch.R, 
                this, 
                source#0, 
                d#0, 
                AllVertices#0));
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(128,7)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), 
          Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
          $Heap);
        ##source#4_10 := source#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##source#4_10, _module.BreadthFirstSearch$Vertex, $Heap);
        assume {:id "id219"} $Is(d#0, Tclass._System.nat());
        ##n#4_9 := d#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#4_9, Tclass._System.nat(), $Heap);
        ##AllVertices#4_9 := AllVertices#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##AllVertices#4_9, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
        assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
        assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0);
        assume true;
        assume {:id "id220"} Set#Equal(Set#Union(Processed#0, C#0), 
          _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
            $LS($LZ), 
            reveal__module.BreadthFirstSearch.R, 
            this, 
            source#0, 
            d#0, 
            AllVertices#0));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(129,7)
        if (d#0 != 0)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##source#4_11 := source#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##source#4_11, _module.BreadthFirstSearch$Vertex, $Heap);
            assert {:id "id221"} $Is(d#0 - 1, Tclass._System.nat());
            ##n#4_10 := d#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#4_10, Tclass._System.nat(), $Heap);
            ##AllVertices#4_10 := AllVertices#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##AllVertices#4_10, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 - 1, AllVertices#0);
        }

        assume d#0 != 0
           ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 - 1, AllVertices#0);
        assert {:id "id222"} {:subsumption 0} d#0 != 0
           ==> !Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
              $LS($LS($LZ)), 
              reveal__module.BreadthFirstSearch.R, 
              this, 
              source#0, 
              d#0 - 1, 
              AllVertices#0), 
            dest#0);
        assume {:id "id223"} d#0 != 0
           ==> !Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
              $LS($LZ), 
              reveal__module.BreadthFirstSearch.R, 
              this, 
              source#0, 
              d#0 - 1, 
              AllVertices#0), 
            dest#0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(130,7)
        assume true;
        assert {:id "id224"} {:split_here} Lit(true);
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(64,5)
        assert {:id "id225"} Set#Subset(Set#Difference(AllVertices#0, Processed#0), $decr$loop#00)
           && !Set#Subset($decr$loop#00, Set#Difference(AllVertices#0, Processed#0));
        assume Set#Subset(V#0, AllVertices#0)
           ==> 
          Set#Subset(Processed#0, AllVertices#0)
           ==> 
          Set#Subset(C#0, AllVertices#0)
           ==> 
          Set#Subset(N#0, AllVertices#0)
           ==> 
          Set#IsMember(V#0, source#0)
           ==> 
          Set#Equal(V#0, Set#Union(Set#Union(Processed#0, C#0), N#0))
           ==> 
          Set#Disjoint(Processed#0, C#0)
             && Set#Disjoint(Processed#0, C#0)
             && Set#Disjoint(Set#Union(Processed#0, C#0), N#0)
           ==> _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0)
             && (_module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0)
               ==> 
              Set#Equal(V#0, Map#Domain(paths#0))
               ==> (forall x#1: Box :: 
                  { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0) } 
                    { Set#IsMember(C#0, x#1) } 
                  $IsBox(x#1, _module.BreadthFirstSearch$Vertex)
                     ==> 
                    Set#IsMember(C#0, x#1)
                     ==> _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0)
                       && _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, 
                        _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0)))
                 && ((forall x#1: Box :: 
                    { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0) } 
                      { Set#IsMember(C#0, x#1) } 
                    $IsBox(x#1, _module.BreadthFirstSearch$Vertex)
                       ==> 
                      Set#IsMember(C#0, x#1)
                       ==> _module.__default.length(_module.BreadthFirstSearch$Vertex, 
                          $LS($LZ), 
                          _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0))
                         == d#0)
                   ==> (forall x#3: Box :: 
                      { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0) } 
                        { Set#IsMember(N#0, x#3) } 
                      $IsBox(x#3, _module.BreadthFirstSearch$Vertex)
                         ==> 
                        Set#IsMember(N#0, x#3)
                         ==> _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0)
                           && _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, 
                            _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0)))
                     && ((forall x#3: Box :: 
                        { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0) } 
                          { Set#IsMember(N#0, x#3) } 
                        $IsBox(x#3, _module.BreadthFirstSearch$Vertex)
                           ==> 
                          Set#IsMember(N#0, x#3)
                           ==> _module.__default.length(_module.BreadthFirstSearch$Vertex, 
                              $LS($LZ), 
                              _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, paths#0))
                             == d#0 + 1)
                       ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0)
                         && (
                          (Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                              $LS($LZ), 
                              reveal__module.BreadthFirstSearch.R, 
                              this, 
                              source#0, 
                              d#0, 
                              AllVertices#0), 
                            dest#0)
                           ==> Set#IsMember(C#0, dest#0))
                           ==> (d#0 != 0
                               ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0 - 1, AllVertices#0))
                             && (
                              (d#0 != 0
                               ==> !Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                                  $LS($LZ), 
                                  reveal__module.BreadthFirstSearch.R, 
                                  this, 
                                  source#0, 
                                  d#0 - 1, 
                                  AllVertices#0), 
                                dest#0))
                               ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0)
                                 && (Set#Equal(Set#Union(Processed#0, C#0), 
                                    _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                                      $LS($LZ), 
                                      reveal__module.BreadthFirstSearch.R, 
                                      this, 
                                      source#0, 
                                      d#0, 
                                      AllVertices#0))
                                   ==> _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, this, Processed#0, AllVertices#0)
                                     && _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, d#0, AllVertices#0)))))));
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(132,5)
    assume true;
    assert {:id "id226"} {:split_here} Lit(true);
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(136,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc n#5_0;
        assume LitInt(0) <= n#5_0;
        assume true;
        assume {:id "id227"} true;
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##source#5_0 := source#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##source#5_0, _module.BreadthFirstSearch$Vertex, $Heap);
            ##n#5_0 := n#5_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#5_0, Tclass._System.nat(), $Heap);
            ##AllVertices#5_0 := AllVertices#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##AllVertices#5_0, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#5_0, AllVertices#0);
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#5_0, AllVertices#0);
            assume {:id "id228"} !Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                reveal__module.BreadthFirstSearch.R, 
                this, 
                source#0, 
                n#5_0, 
                AllVertices#0), 
              dest#0);
            assume false;
        }

        push;
        // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(139,7)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(139,14)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id229"} Call$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex);
        // TrCallStmt: After ProcessCallStmt
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(140,7)
        assume true;
        if (n#5_0 < d#0)
        {
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(141,22)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            source##5_0_0 := source#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            m##5_0_0 := n#5_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id230"} $Is(d#0, Tclass._System.nat());
            n##5_0_0 := d#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            AllVertices##5_0_0 := AllVertices#0;
            call {:id "id231"} Call$$_module.BreadthFirstSearch.RMonotonicity(_module.BreadthFirstSearch$Vertex, this, source##5_0_0, m##5_0_0, n##5_0_0, AllVertices##5_0_0);
            // TrCallStmt: After ProcessCallStmt
            pop;
        }
        else
        {
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(143,24)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            source##5_1_0 := source#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id232"} $Is(d#0, Tclass._System.nat());
            m##5_1_0 := d#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            n##5_1_0 := n#5_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            AllVertices##5_1_0 := AllVertices#0;
            call {:id "id233"} Call$$_module.BreadthFirstSearch.IsReachFixpoint(_module.BreadthFirstSearch$Vertex, this, source##5_1_0, m##5_1_0, n##5_1_0, AllVertices##5_1_0);
            // TrCallStmt: After ProcessCallStmt
            pop;
        }

        pop;
        assert {:id "id234"} !Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
            $LS($LS($LZ)), 
            reveal__module.BreadthFirstSearch.R, 
            this, 
            source#0, 
            n#5_0, 
            AllVertices#0), 
          dest#0);
        assume false;
    }
    else
    {
        assume (forall n#5_1: int :: 
          { _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
              $LS($LZ), 
              reveal__module.BreadthFirstSearch.R, 
              this, 
              source#0, 
              n#5_1, 
              AllVertices#0) } 
          LitInt(0) <= n#5_1 && Lit(true)
             ==> !Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                reveal__module.BreadthFirstSearch.R, 
                this, 
                source#0, 
                n#5_1, 
                AllVertices#0), 
              dest#0));
    }

    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(149,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc p#6_0;
        assume $Is(p#6_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
           && $IsAlloc(p#6_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), 
          Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
          $Heap);
        ##source#6_0 := source#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##source#6_0, _module.BreadthFirstSearch$Vertex, $Heap);
        ##dest#6_0 := dest#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##dest#6_0, _module.BreadthFirstSearch$Vertex, $Heap);
        ##p#6_0 := p#6_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##p#6_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
        assume _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, p#6_0);
        assume _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, p#6_0);
        assume {:id "id235"} _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#6_0);
        if (*)
        {
            assume true;
            assume {:id "id236"} Lit(false);
            assume false;
        }

        push;
        // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(154,7)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(154,14)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id237"} Call$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(155,21)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        source##6_0 := source#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##6_0 := dest#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        p##6_0 := p#6_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        AllVertices##6_0 := AllVertices#0;
        call {:id "id238"} Call$$_module.BreadthFirstSearch.Lemma__IsPath__R(_module.BreadthFirstSearch$Vertex, this, source##6_0, x##6_0, p##6_0, AllVertices##6_0);
        // TrCallStmt: After ProcessCallStmt
        pop;
        assert {:id "id239"} Lit(false);
        assume false;
    }
    else
    {
        assume (forall p#6_1: DatatypeType :: 
          { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#6_1) } 
          $Is(p#6_1, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
               && $IsAlloc(p#6_1, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap)
               && _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#6_1)
             ==> Lit(false));
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(161,7)
    assume true;
    assume true;
    d#0 := LitInt(-1);
}



procedure {:verboseName "BreadthFirstSearch.Lemma_IsPath_Closure (well-formedness)"} CheckWellFormed$$_module.BreadthFirstSearch.Lemma__IsPath__Closure(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    dest#0: Box
       where $IsBox(dest#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(dest#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap)
         && $IsA#_module.List(p#0), 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BreadthFirstSearch.Lemma_IsPath_Closure (call)"} Call$$_module.BreadthFirstSearch.Lemma__IsPath__Closure(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    dest#0: Box
       where $IsBox(dest#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(dest#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap)
         && $IsA#_module.List(p#0), 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap));
  // user-defined preconditions
  requires {:id "id249"} _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, p#0)
     ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#0)
       || (_module.List.Nil_q(p#0) ==> source#0 == dest#0);
  requires {:id "id250"} _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, p#0)
     ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#0)
       || (!_module.List.Nil_q(p#0)
         ==> (var tail#0 := _module.List.tail(p#0); 
          (var v#2 := _module.List.head(p#0); 
            Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#2), 
              dest#0))));
  requires {:id "id251"} _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, p#0)
     ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#0)
       || (!_module.List.Nil_q(p#0)
         ==> (var tail#0 := _module.List.tail(p#0); 
          (var v#2 := _module.List.head(p#0); 
            _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), this, source#0, v#2, tail#0))));
  requires {:id "id252"} Set#IsMember(AllVertices#0, source#0);
  requires {:id "id253"} _module.BreadthFirstSearch.IsClosed#canCall(_module.BreadthFirstSearch$Vertex, this, AllVertices#0)
     ==> _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, this, AllVertices#0)
       || (forall v#4: Box :: 
        { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#4) } 
          { Set#IsMember(AllVertices#0, v#4) } 
        $IsBox(v#4, _module.BreadthFirstSearch$Vertex)
           ==> 
          Set#IsMember(AllVertices#0, v#4)
           ==> Set#Subset(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#4), 
            AllVertices#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures Set#IsMember(AllVertices#0, dest#0)
     ==> _module.__default.elements#canCall(_module.BreadthFirstSearch$Vertex, p#0);
  ensures {:id "id254"} Set#IsMember(AllVertices#0, dest#0);
  free ensures {:id "id255"} (forall v#1: Box :: 
    { Set#IsMember(AllVertices#0, v#1) } 
      { Set#IsMember(_module.__default.elements(_module.BreadthFirstSearch$Vertex, $LS($LZ), p#0), 
        v#1) } 
    $IsBox(v#1, _module.BreadthFirstSearch$Vertex)
       ==> 
      Set#IsMember(_module.__default.elements(_module.BreadthFirstSearch$Vertex, $LS($LZ), p#0), 
        v#1)
       ==> Set#IsMember(AllVertices#0, v#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BreadthFirstSearch.Lemma_IsPath_Closure (correctness)"} Impl$$_module.BreadthFirstSearch.Lemma__IsPath__Closure(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    dest#0: Box
       where $IsBox(dest#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(dest#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap)
         && $IsA#_module.List(p#0), 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id256"} _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, dest#0, p#0)
     && 
    _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, p#0)
     && (if _module.List.Nil_q(p#0)
       then source#0 == dest#0
       else (var tail#3 := _module.List.tail(p#0); 
        (var v#6 := _module.List.head(p#0); 
          Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#6), 
              dest#0)
             && _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, v#6, tail#3))));
  requires {:id "id257"} Set#IsMember(AllVertices#0, source#0);
  free requires {:id "id258"} _module.BreadthFirstSearch.IsClosed#canCall(_module.BreadthFirstSearch$Vertex, this, AllVertices#0)
     && 
    _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, this, AllVertices#0)
     && (forall v#7: Box :: 
      { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#7) } 
        { Set#IsMember(AllVertices#0, v#7) } 
      $IsBox(v#7, _module.BreadthFirstSearch$Vertex)
         ==> 
        Set#IsMember(AllVertices#0, v#7)
         ==> Set#Subset(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#7), 
          AllVertices#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures Set#IsMember(AllVertices#0, dest#0)
     ==> _module.__default.elements#canCall(_module.BreadthFirstSearch$Vertex, p#0);
  ensures {:id "id259"} Set#IsMember(AllVertices#0, dest#0);
  ensures {:id "id260"} (forall v#1: Box :: 
    { Set#IsMember(AllVertices#0, v#1) } 
      { Set#IsMember(_module.__default.elements(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), p#0), 
        v#1) } 
    $IsBox(v#1, _module.BreadthFirstSearch$Vertex)
       ==> 
      Set#IsMember(_module.__default.elements(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), p#0), 
        v#1)
       ==> Set#IsMember(AllVertices#0, v#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BreadthFirstSearch.Lemma_IsPath_Closure (correctness)"} Impl$$_module.BreadthFirstSearch.Lemma__IsPath__Closure(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    source#0: Box, 
    dest#0: Box, 
    p#0: DatatypeType, 
    AllVertices#0: Set)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0_0: Box;
  var _mcc#1#0_0: DatatypeType;
  var tail#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var v#0_0: Box;
  var let#0_1#0#0: Box;
  var source##0_0: Box;
  var dest##0_0: Box;
  var p##0_0: DatatypeType;
  var AllVertices##0_0: Set;

    // AddMethodImpl: Lemma_IsPath_Closure, Impl$$_module.BreadthFirstSearch.Lemma__IsPath__Closure
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(p#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#p0#0: DatatypeType :: 
      { _module.__default.elements(_module.BreadthFirstSearch$Vertex, $LS($LZ), $ih#p0#0) } 
        { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, $ih#p0#0) } 
      $Is($ih#p0#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
           && 
          _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, dest#0, $ih#p0#0)
           && Set#IsMember(AllVertices#0, source#0)
           && _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, this, AllVertices#0)
           && (DtRank($ih#p0#0) < DtRank(p#0)
             || (DtRank($ih#p0#0) == DtRank(p#0)
               && 
              Set#Subset(AllVertices#0, AllVertices#0)
               && !Set#Subset(AllVertices#0, AllVertices#0)))
         ==> Set#IsMember(AllVertices#0, dest#0)
           && (forall v#8: Box :: 
            { Set#IsMember(AllVertices#0, v#8) } 
              { Set#IsMember(_module.__default.elements(_module.BreadthFirstSearch$Vertex, $LS($LZ), $ih#p0#0), 
                v#8) } 
            $IsBox(v#8, _module.BreadthFirstSearch$Vertex)
               ==> 
              Set#IsMember(_module.__default.elements(_module.BreadthFirstSearch$Vertex, $LS($LZ), $ih#p0#0), 
                v#8)
               ==> Set#IsMember(AllVertices#0, v#8)));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (p#0 == #_module.List.Nil())
    {
    }
    else if (p#0 == #_module.List.Cons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $IsBox(_mcc#0#0_0, _module.BreadthFirstSearch$Vertex);
        assume $Is(_mcc#1#0_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex));
        havoc tail#0_0;
        assume $Is(tail#0_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
           && $IsAlloc(tail#0_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
        assume {:id "id261"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex));
        assume {:id "id262"} tail#0_0 == let#0_0#0#0;
        havoc v#0_0;
        assume $IsBox(v#0_0, _module.BreadthFirstSearch$Vertex)
           && $IsAllocBox(v#0_0, _module.BreadthFirstSearch$Vertex, $Heap);
        assume {:id "id263"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(let#0_1#0#0, _module.BreadthFirstSearch$Vertex);
        assume {:id "id264"} v#0_0 == let#0_1#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(174,29)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        source##0_0 := source#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        dest##0_0 := v#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        p##0_0 := tail#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        AllVertices##0_0 := AllVertices#0;
        assert {:id "id265"} DtRank(p##0_0) < DtRank(p#0)
           || (DtRank(p##0_0) == DtRank(p#0)
             && 
            Set#Subset(AllVertices##0_0, AllVertices#0)
             && !Set#Subset(AllVertices#0, AllVertices##0_0));
        call {:id "id266"} Call$$_module.BreadthFirstSearch.Lemma__IsPath__Closure(_module.BreadthFirstSearch$Vertex, this, source##0_0, dest##0_0, p##0_0, AllVertices##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



// function declaration for _module.BreadthFirstSearch.R
function _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex: Ty, 
    $ly: LayerType, 
    $reveal: bool, 
    this: ref, 
    source#0: Box, 
    n#0: int, 
    AllVertices#0: Set)
   : Set
uses {
// consequence axiom for _module.BreadthFirstSearch.R
axiom 2 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, 
      $ly: LayerType, 
      $reveal: bool, 
      this: ref, 
      source#0: Box, 
      n#0: int, 
      AllVertices#0: Set :: 
    { _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
        $ly, 
        $reveal, 
        this, 
        source#0, 
        n#0, 
        AllVertices#0) } 
    _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#0, AllVertices#0)
         || (2 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
           && LitInt(0) <= n#0
           && $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex)))
       ==> $Is(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
          $ly, 
          $reveal, 
          this, 
          source#0, 
          n#0, 
          AllVertices#0), 
        TSet(_module.BreadthFirstSearch$Vertex)));
// alloc consequence axiom for _module.BreadthFirstSearch.R
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module.BreadthFirstSearch$Vertex: Ty, 
      $ly: LayerType, 
      $reveal: bool, 
      this: ref, 
      source#0: Box, 
      n#0: int, 
      AllVertices#0: Set :: 
    { $IsAlloc(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
          $ly, 
          $reveal, 
          this, 
          source#0, 
          n#0, 
          AllVertices#0), 
        TSet(_module.BreadthFirstSearch$Vertex), 
        $Heap) } 
    (_module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#0, AllVertices#0)
           || (2 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, 
              Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
              $Heap)
             && 
            $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
             && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap)
             && LitInt(0) <= n#0
             && 
            $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
             && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
          $ly, 
          $reveal, 
          this, 
          source#0, 
          n#0, 
          AllVertices#0), 
        TSet(_module.BreadthFirstSearch$Vertex), 
        $Heap));
// definition axiom for _module.BreadthFirstSearch.R (revealed)
axiom {:id "id267"} 2 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, 
      $ly: LayerType, 
      this: ref, 
      source#0: Box, 
      n#0: int, 
      AllVertices#0: Set :: 
    { _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
        $LS($ly), 
        true, 
        this, 
        source#0, 
        n#0, 
        AllVertices#0) } 
    _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#0, AllVertices#0)
         || (2 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
           && LitInt(0) <= n#0
           && $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex)))
       ==> (n#0 != LitInt(0)
           ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#0 - 1, AllVertices#0)
             && 
            _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#0 - 1, AllVertices#0)
             && _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, 
              this, 
              _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $ly, 
                reveal__module.BreadthFirstSearch.R, 
                this, 
                source#0, 
                n#0 - 1, 
                AllVertices#0), 
              AllVertices#0))
         && _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
            $LS($ly), 
            true, 
            this, 
            source#0, 
            n#0, 
            AllVertices#0)
           == (if n#0 == LitInt(0)
             then Set#UnionOne(Set#Empty(): Set, source#0)
             else Set#Union(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $ly, 
                reveal__module.BreadthFirstSearch.R, 
                this, 
                source#0, 
                n#0 - 1, 
                AllVertices#0), 
              _module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, 
                this, 
                _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $ly, 
                  reveal__module.BreadthFirstSearch.R, 
                  this, 
                  source#0, 
                  n#0 - 1, 
                  AllVertices#0), 
                AllVertices#0))));
// definition axiom for _module.BreadthFirstSearch.R for decreasing-related literals (revealed)
axiom {:id "id268"} 2 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, 
      $ly: LayerType, 
      this: ref, 
      source#0: Box, 
      n#0: int, 
      AllVertices#0: Set :: 
    {:weight 3} { _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
        $LS($ly), 
        true, 
        this, 
        source#0, 
        LitInt(n#0), 
        Lit(AllVertices#0)) } 
    _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, 
          this, 
          source#0, 
          LitInt(n#0), 
          Lit(AllVertices#0))
         || (2 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
           && LitInt(0) <= n#0
           && $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex)))
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, 
              this, 
              source#0, 
              LitInt(n#0 - 1), 
              Lit(AllVertices#0))
             && 
            _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, 
              this, 
              source#0, 
              LitInt(n#0 - 1), 
              Lit(AllVertices#0))
             && _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, 
              this, 
              _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $LS($ly), 
                reveal__module.BreadthFirstSearch.R, 
                this, 
                source#0, 
                LitInt(n#0 - 1), 
                Lit(AllVertices#0)), 
              Lit(AllVertices#0)))
         && _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
            $LS($ly), 
            true, 
            this, 
            source#0, 
            LitInt(n#0), 
            Lit(AllVertices#0))
           == (if LitInt(n#0) == LitInt(0)
             then Set#UnionOne(Set#Empty(): Set, source#0)
             else Set#Union(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $LS($ly), 
                reveal__module.BreadthFirstSearch.R, 
                this, 
                source#0, 
                LitInt(n#0 - 1), 
                Lit(AllVertices#0)), 
              _module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, 
                this, 
                _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $LS($ly), 
                  reveal__module.BreadthFirstSearch.R, 
                  this, 
                  source#0, 
                  LitInt(n#0 - 1), 
                  Lit(AllVertices#0)), 
                Lit(AllVertices#0)))));
// definition axiom for _module.BreadthFirstSearch.R for all literals (revealed)
axiom {:id "id269"} 2 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, 
      $ly: LayerType, 
      this: ref, 
      source#0: Box, 
      n#0: int, 
      AllVertices#0: Set :: 
    {:weight 3} { _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
        $LS($ly), 
        true, 
        Lit(this), 
        Lit(source#0), 
        LitInt(n#0), 
        Lit(AllVertices#0)) } 
    _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, 
          Lit(this), 
          Lit(source#0), 
          LitInt(n#0), 
          Lit(AllVertices#0))
         || (2 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
           && LitInt(0) <= n#0
           && $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex)))
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, 
              Lit(this), 
              Lit(source#0), 
              LitInt(n#0 - 1), 
              Lit(AllVertices#0))
             && 
            _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, 
              Lit(this), 
              Lit(source#0), 
              LitInt(n#0 - 1), 
              Lit(AllVertices#0))
             && _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, 
              Lit(this), 
              _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $LS($ly), 
                reveal__module.BreadthFirstSearch.R, 
                Lit(this), 
                Lit(source#0), 
                LitInt(n#0 - 1), 
                Lit(AllVertices#0)), 
              Lit(AllVertices#0)))
         && _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
            $LS($ly), 
            true, 
            Lit(this), 
            Lit(source#0), 
            LitInt(n#0), 
            Lit(AllVertices#0))
           == (if LitInt(n#0) == LitInt(0)
             then Set#UnionOne(Set#Empty(): Set, Lit(source#0))
             else Set#Union(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $LS($ly), 
                reveal__module.BreadthFirstSearch.R, 
                Lit(this), 
                Lit(source#0), 
                LitInt(n#0 - 1), 
                Lit(AllVertices#0)), 
              _module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, 
                Lit(this), 
                _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $LS($ly), 
                  reveal__module.BreadthFirstSearch.R, 
                  Lit(this), 
                  Lit(source#0), 
                  LitInt(n#0 - 1), 
                  Lit(AllVertices#0)), 
                Lit(AllVertices#0)))));
}

function _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    source#0: Box, 
    n#0: int, 
    AllVertices#0: Set)
   : bool;

// layer synonym axiom
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, 
    $ly: LayerType, 
    $reveal: bool, 
    this: ref, 
    source#0: Box, 
    n#0: int, 
    AllVertices#0: Set :: 
  { _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($ly), 
      $reveal, 
      this, 
      source#0, 
      n#0, 
      AllVertices#0) } 
  _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($ly), 
      $reveal, 
      this, 
      source#0, 
      n#0, 
      AllVertices#0)
     == _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $ly, 
      $reveal, 
      this, 
      source#0, 
      n#0, 
      AllVertices#0));

// fuel synonym axiom
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, 
    $ly: LayerType, 
    $reveal: bool, 
    this: ref, 
    source#0: Box, 
    n#0: int, 
    AllVertices#0: Set :: 
  { _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      AsFuelBottom($ly), 
      $reveal, 
      this, 
      source#0, 
      n#0, 
      AllVertices#0) } 
  _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $ly, 
      $reveal, 
      this, 
      source#0, 
      n#0, 
      AllVertices#0)
     == _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LZ, 
      $reveal, 
      this, 
      source#0, 
      n#0, 
      AllVertices#0));

function _module.BreadthFirstSearch.R#requires(Ty, LayerType, ref, Box, int, Set) : bool;

// #requires axiom for _module.BreadthFirstSearch.R
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, 
    $ly: LayerType, 
    this: ref, 
    source#0: Box, 
    n#0: int, 
    AllVertices#0: Set :: 
  { _module.BreadthFirstSearch.R#requires(_module.BreadthFirstSearch$Vertex, $ly, this, source#0, n#0, AllVertices#0) } 
  this != null
       && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
       && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
       && LitInt(0) <= n#0
       && $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
     ==> _module.BreadthFirstSearch.R#requires(_module.BreadthFirstSearch$Vertex, $ly, this, source#0, n#0, AllVertices#0)
       == true);

procedure {:verboseName "BreadthFirstSearch.R (well-formedness)"} CheckWellformed$$_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box where $IsBox(source#0, _module.BreadthFirstSearch$Vertex), 
    n#0: int where LitInt(0) <= n#0, 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BreadthFirstSearch.R (well-formedness)"} CheckWellformed$$_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    source#0: Box, 
    n#0: int, 
    AllVertices#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##source#0: Box;
  var ##n#0: int;
  var ##AllVertices#0: Set;
  var ##S#0: Set;
  var ##source#1: Box;
  var ##n#1: int;
  var ##AllVertices#1: Set;
  var ##AllVertices#2: Set;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
            $LS($LZ), 
            reveal__module.BreadthFirstSearch.R, 
            this, 
            source#0, 
            n#0, 
            AllVertices#0), 
          TSet(_module.BreadthFirstSearch$Vertex));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume {:id "id270"} _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                reveal__module.BreadthFirstSearch.R, 
                this, 
                source#0, 
                n#0, 
                AllVertices#0)
               == Set#UnionOne(Set#Empty(): Set, source#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                reveal__module.BreadthFirstSearch.R, 
                this, 
                source#0, 
                n#0, 
                AllVertices#0), 
              TSet(_module.BreadthFirstSearch$Vertex));
            return;
        }
        else
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##source#0 := source#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##source#0, _module.BreadthFirstSearch$Vertex, $Heap);
            assert {:id "id271"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            ##AllVertices#0 := AllVertices#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            assert {:id "id272"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id273"} ##n#0 < n#0
               || (##n#0 == n#0
                 && 
                Set#Subset(##AllVertices#0, AllVertices#0)
                 && !Set#Subset(AllVertices#0, ##AllVertices#0));
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#0 - 1, AllVertices#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), 
              Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
              $Heap);
            ##source#1 := source#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##source#1, _module.BreadthFirstSearch$Vertex, $Heap);
            assert {:id "id274"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#1 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
            ##AllVertices#1 := AllVertices#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##AllVertices#1, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            assert {:id "id275"} 0 <= n#0 || ##n#1 == n#0;
            assert {:id "id276"} ##n#1 < n#0
               || (##n#1 == n#0
                 && 
                Set#Subset(##AllVertices#1, AllVertices#0)
                 && !Set#Subset(AllVertices#0, ##AllVertices#1));
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#0 - 1, AllVertices#0);
            ##S#0 := _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
              $LS($LZ), 
              reveal__module.BreadthFirstSearch.R, 
              this, 
              source#0, 
              n#0 - 1, 
              AllVertices#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            ##AllVertices#2 := AllVertices#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##AllVertices#2, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
            assume _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, 
              this, 
              _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                reveal__module.BreadthFirstSearch.R, 
                this, 
                source#0, 
                n#0 - 1, 
                AllVertices#0), 
              AllVertices#0);
            assume {:id "id277"} _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                reveal__module.BreadthFirstSearch.R, 
                this, 
                source#0, 
                n#0, 
                AllVertices#0)
               == Set#Union(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $LS($LZ), 
                  reveal__module.BreadthFirstSearch.R, 
                  this, 
                  source#0, 
                  n#0 - 1, 
                  AllVertices#0), 
                _module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, 
                  this, 
                  _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                    $LS($LZ), 
                    reveal__module.BreadthFirstSearch.R, 
                    this, 
                    source#0, 
                    n#0 - 1, 
                    AllVertices#0), 
                  AllVertices#0));
            assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#0 - 1, AllVertices#0)
               && 
              _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#0 - 1, AllVertices#0)
               && _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, 
                this, 
                _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                  $LS($LZ), 
                  reveal__module.BreadthFirstSearch.R, 
                  this, 
                  source#0, 
                  n#0 - 1, 
                  AllVertices#0), 
                AllVertices#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                reveal__module.BreadthFirstSearch.R, 
                this, 
                source#0, 
                n#0, 
                AllVertices#0), 
              TSet(_module.BreadthFirstSearch$Vertex));
            return;
        }

        assume false;
    }
}



// function declaration for _module.BreadthFirstSearch.Successors
function _module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex: Ty, this: ref, S#0: Set, AllVertices#0: Set)
   : Set
uses {
// consequence axiom for _module.BreadthFirstSearch.Successors
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, this: ref, S#0: Set, AllVertices#0: Set :: 
    { _module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, this, S#0, AllVertices#0) } 
    _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, this, S#0, AllVertices#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $Is(S#0, TSet(_module.BreadthFirstSearch$Vertex))
           && $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex)))
       ==> $Is(_module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, this, S#0, AllVertices#0), 
        TSet(_module.BreadthFirstSearch$Vertex)));
// alloc consequence axiom for _module.BreadthFirstSearch.Successors
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module.BreadthFirstSearch$Vertex: Ty, 
      this: ref, 
      S#0: Set, 
      AllVertices#0: Set :: 
    { $IsAlloc(_module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, this, S#0, AllVertices#0), 
        TSet(_module.BreadthFirstSearch$Vertex), 
        $Heap) } 
    (_module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, this, S#0, AllVertices#0)
           || (1 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, 
              Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
              $Heap)
             && 
            $Is(S#0, TSet(_module.BreadthFirstSearch$Vertex))
             && $IsAlloc(S#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap)
             && 
            $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
             && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, this, S#0, AllVertices#0), 
        TSet(_module.BreadthFirstSearch$Vertex), 
        $Heap));
// definition axiom for _module.BreadthFirstSearch.Successors (revealed)
axiom {:id "id278"} 1 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, this: ref, S#0: Set, AllVertices#0: Set :: 
    { _module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, this, S#0, AllVertices#0) } 
    _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, this, S#0, AllVertices#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $Is(S#0, TSet(_module.BreadthFirstSearch$Vertex))
           && $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex)))
       ==> (forall w#0: Box :: 
          { Set#IsMember(AllVertices#0, w#0) } 
          $IsBox(w#0, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(AllVertices#0, w#0)
             ==> (forall x#1: Box :: 
              { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, x#1) } 
                { Set#IsMember(S#0, x#1) } 
              $IsBox(x#1, _module.BreadthFirstSearch$Vertex)
                 ==> 
                Set#IsMember(S#0, x#1)
                 ==> _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, x#1)))
         && _module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, this, S#0, AllVertices#0)
           == Set#FromBoogieMap((lambda $y#0: Box :: 
              $IsBox($y#0, _module.BreadthFirstSearch$Vertex)
                 && 
                Set#IsMember(AllVertices#0, $y#0)
                 && (exists x#0: Box :: 
                  { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, x#0) } 
                    { Set#IsMember(S#0, x#0) } 
                  $IsBox(x#0, _module.BreadthFirstSearch$Vertex)
                     && 
                    Set#IsMember(S#0, x#0)
                     && Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, x#0), 
                      $y#0)))));
// definition axiom for _module.BreadthFirstSearch.Successors for decreasing-related literals (revealed)
axiom {:id "id279"} 1 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, this: ref, S#0: Set, AllVertices#0: Set :: 
    {:weight 3} { _module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, this, Lit(S#0), Lit(AllVertices#0)) } 
    _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, this, Lit(S#0), Lit(AllVertices#0))
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $Is(S#0, TSet(_module.BreadthFirstSearch$Vertex))
           && $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex)))
       ==> (forall w#1: Box :: 
          { Set#IsMember(AllVertices#0, w#1) } 
          $IsBox(w#1, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(Lit(AllVertices#0), w#1)
             ==> (forall x#3: Box :: 
              { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, x#3) } 
                { Set#IsMember(S#0, x#3) } 
              $IsBox(x#3, _module.BreadthFirstSearch$Vertex)
                 ==> 
                Set#IsMember(Lit(S#0), x#3)
                 ==> _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, this, x#3)))
         && _module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, this, Lit(S#0), Lit(AllVertices#0))
           == Set#FromBoogieMap((lambda $y#1: Box :: 
              $IsBox($y#1, _module.BreadthFirstSearch$Vertex)
                 && 
                Set#IsMember(Lit(AllVertices#0), $y#1)
                 && (exists x#2: Box :: 
                  { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, x#2) } 
                    { Set#IsMember(S#0, x#2) } 
                  $IsBox(x#2, _module.BreadthFirstSearch$Vertex)
                     && 
                    Set#IsMember(Lit(S#0), x#2)
                     && Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, x#2), 
                      $y#1)))));
// definition axiom for _module.BreadthFirstSearch.Successors for all literals (revealed)
axiom {:id "id280"} 1 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, this: ref, S#0: Set, AllVertices#0: Set :: 
    {:weight 3} { _module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, Lit(this), Lit(S#0), Lit(AllVertices#0)) } 
    _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex, Lit(this), Lit(S#0), Lit(AllVertices#0))
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $Is(S#0, TSet(_module.BreadthFirstSearch$Vertex))
           && $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex)))
       ==> (forall w#2: Box :: 
          { Set#IsMember(AllVertices#0, w#2) } 
          $IsBox(w#2, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(Lit(AllVertices#0), w#2)
             ==> (forall x#5: Box :: 
              { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, x#5) } 
                { Set#IsMember(S#0, x#5) } 
              $IsBox(x#5, _module.BreadthFirstSearch$Vertex)
                 ==> 
                Set#IsMember(Lit(S#0), x#5)
                 ==> _module.BreadthFirstSearch.Succ#canCall(_module.BreadthFirstSearch$Vertex, Lit(this), x#5)))
         && _module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex, Lit(this), Lit(S#0), Lit(AllVertices#0))
           == Set#FromBoogieMap((lambda $y#2: Box :: 
              $IsBox($y#2, _module.BreadthFirstSearch$Vertex)
                 && 
                Set#IsMember(Lit(AllVertices#0), $y#2)
                 && (exists x#4: Box :: 
                  { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, x#4) } 
                    { Set#IsMember(S#0, x#4) } 
                  $IsBox(x#4, _module.BreadthFirstSearch$Vertex)
                     && 
                    Set#IsMember(Lit(S#0), x#4)
                     && Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, Lit(this), x#4), 
                      $y#2)))));
}

function _module.BreadthFirstSearch.Successors#canCall(_module.BreadthFirstSearch$Vertex: Ty, this: ref, S#0: Set, AllVertices#0: Set)
   : bool;

function _module.BreadthFirstSearch.Successors#requires(Ty, ref, Set, Set) : bool;

// #requires axiom for _module.BreadthFirstSearch.Successors
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, this: ref, S#0: Set, AllVertices#0: Set :: 
  { _module.BreadthFirstSearch.Successors#requires(_module.BreadthFirstSearch$Vertex, this, S#0, AllVertices#0) } 
  this != null
       && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
       && $Is(S#0, TSet(_module.BreadthFirstSearch$Vertex))
       && $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
     ==> _module.BreadthFirstSearch.Successors#requires(_module.BreadthFirstSearch$Vertex, this, S#0, AllVertices#0)
       == true);

procedure {:verboseName "BreadthFirstSearch.Successors (well-formedness)"} CheckWellformed$$_module.BreadthFirstSearch.Successors(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    S#0: Set where $Is(S#0, TSet(_module.BreadthFirstSearch$Vertex)), 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BreadthFirstSearch.RMonotonicity (well-formedness)"} CheckWellFormed$$_module.BreadthFirstSearch.RMonotonicity(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    m#0: int where LitInt(0) <= m#0, 
    n#0: int where LitInt(0) <= n#0, 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BreadthFirstSearch.RMonotonicity (call)"} Call$$_module.BreadthFirstSearch.RMonotonicity(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    m#0: int where LitInt(0) <= m#0, 
    n#0: int where LitInt(0) <= n#0, 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap));
  // user-defined preconditions
  requires {:id "id284"} m#0 <= n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, m#0, AllVertices#0)
     && _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#0, AllVertices#0);
  ensures {:id "id285"} Set#Subset(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($LS($LZ)), 
      reveal__module.BreadthFirstSearch.R, 
      this, 
      source#0, 
      m#0, 
      AllVertices#0), 
    _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($LS($LZ)), 
      reveal__module.BreadthFirstSearch.R, 
      this, 
      source#0, 
      n#0, 
      AllVertices#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BreadthFirstSearch.RMonotonicity (correctness)"} Impl$$_module.BreadthFirstSearch.RMonotonicity(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    m#0: int where LitInt(0) <= m#0, 
    n#0: int where LitInt(0) <= n#0, 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id286"} m#0 <= n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, m#0, AllVertices#0)
     && _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#0, AllVertices#0);
  ensures {:id "id287"} Set#Subset(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($LS($LZ)), 
      reveal__module.BreadthFirstSearch.R, 
      this, 
      source#0, 
      m#0, 
      AllVertices#0), 
    _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($LS($LZ)), 
      reveal__module.BreadthFirstSearch.R, 
      this, 
      source#0, 
      n#0, 
      AllVertices#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BreadthFirstSearch.RMonotonicity (correctness)"} Impl$$_module.BreadthFirstSearch.RMonotonicity(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    source#0: Box, 
    m#0: int, 
    n#0: int, 
    AllVertices#0: Set)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var source##0_0: Box;
  var m##0_0: int;
  var n##0_0: int;
  var AllVertices##0_0: Set;

    // AddMethodImpl: RMonotonicity, Impl$$_module.BreadthFirstSearch.RMonotonicity
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#m0#0: int, $ih#n0#0: int, $ih#AllVertices0#0: Set :: 
      { _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
          $LS($LZ), 
          reveal__module.BreadthFirstSearch.R, 
          this, 
          source#0, 
          $ih#n0#0, 
          $ih#AllVertices0#0), _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
          $LS($LZ), 
          reveal__module.BreadthFirstSearch.R, 
          this, 
          source#0, 
          $ih#m0#0, 
          $ih#AllVertices0#0) } 
      LitInt(0) <= $ih#m0#0
           && LitInt(0) <= $ih#n0#0
           && $Is($ih#AllVertices0#0, TSet(_module.BreadthFirstSearch$Vertex))
           && $ih#m0#0 <= $ih#n0#0
           && 
          0 <= $ih#n0#0 - $ih#m0#0
           && $ih#n0#0 - $ih#m0#0 < n#0 - m#0
         ==> Set#Subset(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
            $LS($LZ), 
            reveal__module.BreadthFirstSearch.R, 
            this, 
            source#0, 
            $ih#m0#0, 
            $ih#AllVertices0#0), 
          _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
            $LS($LZ), 
            reveal__module.BreadthFirstSearch.R, 
            this, 
            source#0, 
            $ih#n0#0, 
            $ih#AllVertices0#0)));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(196,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(196,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id288"} Call$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex);
    // TrCallStmt: After ProcessCallStmt
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(197,5)
    assume true;
    if (m#0 < n#0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(198,20)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        source##0_0 := source#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id289"} $Is(m#0 + 1, Tclass._System.nat());
        m##0_0 := m#0 + 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0_0 := n#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        AllVertices##0_0 := AllVertices#0;
        assert {:id "id290"} 0 <= n#0 - m#0 || n##0_0 - m##0_0 == n#0 - m#0;
        assert {:id "id291"} n##0_0 - m##0_0 < n#0 - m#0;
        call {:id "id292"} Call$$_module.BreadthFirstSearch.RMonotonicity(_module.BreadthFirstSearch$Vertex, this, source##0_0, m##0_0, n##0_0, AllVertices##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "BreadthFirstSearch.IsReachFixpoint (well-formedness)"} {:vcs_split_on_every_assert} CheckWellFormed$$_module.BreadthFirstSearch.IsReachFixpoint(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    m#0: int where LitInt(0) <= m#0, 
    n#0: int where LitInt(0) <= n#0, 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BreadthFirstSearch.IsReachFixpoint (well-formedness)"} {:vcs_split_on_every_assert} CheckWellFormed$$_module.BreadthFirstSearch.IsReachFixpoint(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    source#0: Box, 
    m#0: int, 
    n#0: int, 
    AllVertices#0: Set)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##source#0: Box;
  var ##n#0: int;
  var ##AllVertices#0: Set;
  var ##source#1: Box;
  var ##n#1: int;
  var ##AllVertices#1: Set;
  var ##source#2: Box;
  var ##n#2: int;
  var ##AllVertices#2: Set;
  var ##source#3: Box;
  var ##n#3: int;
  var ##AllVertices#3: Set;


    // AddMethodImpl: IsReachFixpoint, CheckWellFormed$$_module.BreadthFirstSearch.IsReachFixpoint
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
      $Heap);
    ##source#0 := source#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##source#0, _module.BreadthFirstSearch$Vertex, $Heap);
    ##n#0 := m#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    ##AllVertices#0 := AllVertices#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
    assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, m#0, AllVertices#0);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
      $Heap);
    ##source#1 := source#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##source#1, _module.BreadthFirstSearch$Vertex, $Heap);
    assert {:id "id293"} $Is(m#0 + 1, Tclass._System.nat());
    ##n#1 := m#0 + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    ##AllVertices#1 := AllVertices#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##AllVertices#1, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
    assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, m#0 + 1, AllVertices#0);
    assume {:id "id294"} Set#Equal(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
        $LS($LZ), 
        reveal__module.BreadthFirstSearch.R, 
        this, 
        source#0, 
        m#0, 
        AllVertices#0), 
      _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
        $LS($LZ), 
        reveal__module.BreadthFirstSearch.R, 
        this, 
        source#0, 
        m#0 + 1, 
        AllVertices#0));
    assume {:id "id295"} m#0 <= n#0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
      $Heap);
    ##source#2 := source#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##source#2, _module.BreadthFirstSearch$Vertex, $Heap);
    ##n#2 := m#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
    ##AllVertices#2 := AllVertices#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##AllVertices#2, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
    assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, m#0, AllVertices#0);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
      $Heap);
    ##source#3 := source#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##source#3, _module.BreadthFirstSearch$Vertex, $Heap);
    ##n#3 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
    ##AllVertices#3 := AllVertices#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##AllVertices#3, TSet(_module.BreadthFirstSearch$Vertex), $Heap);
    assume _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#0, AllVertices#0);
    assume {:id "id296"} Set#Equal(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
        $LS($LZ), 
        reveal__module.BreadthFirstSearch.R, 
        this, 
        source#0, 
        m#0, 
        AllVertices#0), 
      _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
        $LS($LZ), 
        reveal__module.BreadthFirstSearch.R, 
        this, 
        source#0, 
        n#0, 
        AllVertices#0));
}



procedure {:verboseName "BreadthFirstSearch.IsReachFixpoint (call)"} {:vcs_split_on_every_assert} Call$$_module.BreadthFirstSearch.IsReachFixpoint(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    m#0: int where LitInt(0) <= m#0, 
    n#0: int where LitInt(0) <= n#0, 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap));
  // user-defined preconditions
  requires {:id "id297"} Set#Equal(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($LS($LZ)), 
      reveal__module.BreadthFirstSearch.R, 
      this, 
      source#0, 
      m#0, 
      AllVertices#0), 
    _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($LS($LZ)), 
      reveal__module.BreadthFirstSearch.R, 
      this, 
      source#0, 
      m#0 + 1, 
      AllVertices#0));
  requires {:id "id298"} m#0 <= n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, m#0, AllVertices#0)
     && _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#0, AllVertices#0);
  ensures {:id "id299"} Set#Equal(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($LS($LZ)), 
      reveal__module.BreadthFirstSearch.R, 
      this, 
      source#0, 
      m#0, 
      AllVertices#0), 
    _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($LS($LZ)), 
      reveal__module.BreadthFirstSearch.R, 
      this, 
      source#0, 
      n#0, 
      AllVertices#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BreadthFirstSearch.IsReachFixpoint (correctness)"} {:vcs_split_on_every_assert} Impl$$_module.BreadthFirstSearch.IsReachFixpoint(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    m#0: int where LitInt(0) <= m#0, 
    n#0: int where LitInt(0) <= n#0, 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id300"} Set#Equal(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($LS($LZ)), 
      reveal__module.BreadthFirstSearch.R, 
      this, 
      source#0, 
      m#0, 
      AllVertices#0), 
    _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($LS($LZ)), 
      reveal__module.BreadthFirstSearch.R, 
      this, 
      source#0, 
      m#0 + 1, 
      AllVertices#0));
  requires {:id "id301"} m#0 <= n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, m#0, AllVertices#0)
     && _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, n#0, AllVertices#0);
  ensures {:id "id302"} Set#Equal(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($LS($LZ)), 
      reveal__module.BreadthFirstSearch.R, 
      this, 
      source#0, 
      m#0, 
      AllVertices#0), 
    _module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($LS($LZ)), 
      reveal__module.BreadthFirstSearch.R, 
      this, 
      source#0, 
      n#0, 
      AllVertices#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BreadthFirstSearch.IsReachFixpoint (correctness)"} {:vcs_split_on_every_assert} Impl$$_module.BreadthFirstSearch.IsReachFixpoint(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    source#0: Box, 
    m#0: int, 
    n#0: int, 
    AllVertices#0: Set)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var source##0_0: Box;
  var m##0_0: int;
  var n##0_0: int;
  var AllVertices##0_0: Set;

    // AddMethodImpl: IsReachFixpoint, Impl$$_module.BreadthFirstSearch.IsReachFixpoint
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(208,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(208,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id303"} Call$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex);
    // TrCallStmt: After ProcessCallStmt
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(209,5)
    assume true;
    if (m#0 < n#0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(210,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        source##0_0 := source#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id304"} $Is(m#0 + 1, Tclass._System.nat());
        m##0_0 := m#0 + 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0_0 := n#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        AllVertices##0_0 := AllVertices#0;
        assert {:id "id305"} 0 <= n#0 - m#0 || n##0_0 - m##0_0 == n#0 - m#0;
        assert {:id "id306"} n##0_0 - m##0_0 < n#0 - m#0;
        call {:id "id307"} Call$$_module.BreadthFirstSearch.IsReachFixpoint(_module.BreadthFirstSearch$Vertex, this, source##0_0, m##0_0, n##0_0, AllVertices##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "BreadthFirstSearch.Lemma_IsPath_R (well-formedness)"} CheckWellFormed$$_module.BreadthFirstSearch.Lemma__IsPath__R(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(x#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap)
         && $IsA#_module.List(p#0), 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BreadthFirstSearch.Lemma_IsPath_R (call)"} Call$$_module.BreadthFirstSearch.Lemma__IsPath__R(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(x#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap)
         && $IsA#_module.List(p#0), 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap));
  // user-defined preconditions
  requires {:id "id312"} _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, p#0)
     ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, x#0, p#0)
       || (_module.List.Nil_q(p#0) ==> source#0 == x#0);
  requires {:id "id313"} _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, p#0)
     ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, x#0, p#0)
       || (!_module.List.Nil_q(p#0)
         ==> (var tail#0 := _module.List.tail(p#0); 
          (var v#0 := _module.List.head(p#0); 
            Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#0), 
              x#0))));
  requires {:id "id314"} _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, p#0)
     ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, x#0, p#0)
       || (!_module.List.Nil_q(p#0)
         ==> (var tail#0 := _module.List.tail(p#0); 
          (var v#0 := _module.List.head(p#0); 
            _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), this, source#0, v#0, tail#0))));
  requires {:id "id315"} Set#IsMember(AllVertices#0, source#0);
  requires {:id "id316"} _module.BreadthFirstSearch.IsClosed#canCall(_module.BreadthFirstSearch$Vertex, this, AllVertices#0)
     ==> _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, this, AllVertices#0)
       || (forall v#2: Box :: 
        { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#2) } 
          { Set#IsMember(AllVertices#0, v#2) } 
        $IsBox(v#2, _module.BreadthFirstSearch$Vertex)
           ==> 
          Set#IsMember(AllVertices#0, v#2)
           ==> Set#Subset(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#2), 
            AllVertices#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, p#0)
     && _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, 
      this, 
      source#0, 
      _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), p#0), 
      AllVertices#0);
  ensures {:id "id317"} Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($LS($LZ)), 
      reveal__module.BreadthFirstSearch.R, 
      this, 
      source#0, 
      _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), p#0), 
      AllVertices#0), 
    x#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BreadthFirstSearch.Lemma_IsPath_R (correctness)"} Impl$$_module.BreadthFirstSearch.Lemma__IsPath__R(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(x#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap)
         && $IsA#_module.List(p#0), 
    AllVertices#0: Set
       where $Is(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(AllVertices#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id318"} _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, p#0)
     && 
    _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, x#0, p#0)
     && (if _module.List.Nil_q(p#0)
       then source#0 == x#0
       else (var tail#3 := _module.List.tail(p#0); 
        (var v#4 := _module.List.head(p#0); 
          Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#4), 
              x#0)
             && _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, v#4, tail#3))));
  requires {:id "id319"} Set#IsMember(AllVertices#0, source#0);
  free requires {:id "id320"} _module.BreadthFirstSearch.IsClosed#canCall(_module.BreadthFirstSearch$Vertex, this, AllVertices#0)
     && 
    _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, this, AllVertices#0)
     && (forall v#5: Box :: 
      { _module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#5) } 
        { Set#IsMember(AllVertices#0, v#5) } 
      $IsBox(v#5, _module.BreadthFirstSearch$Vertex)
         ==> 
        Set#IsMember(AllVertices#0, v#5)
         ==> Set#Subset(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#5), 
          AllVertices#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.length#canCall(_module.BreadthFirstSearch$Vertex, p#0)
     && _module.BreadthFirstSearch.R#canCall(_module.BreadthFirstSearch$Vertex, 
      this, 
      source#0, 
      _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), p#0), 
      AllVertices#0);
  ensures {:id "id321"} Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
      $LS($LS($LZ)), 
      reveal__module.BreadthFirstSearch.R, 
      this, 
      source#0, 
      _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), p#0), 
      AllVertices#0), 
    x#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BreadthFirstSearch.Lemma_IsPath_R (correctness)"} Impl$$_module.BreadthFirstSearch.Lemma__IsPath__R(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    source#0: Box, 
    x#0: Box, 
    p#0: DatatypeType, 
    AllVertices#0: Set)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0_0: Box;
  var _mcc#1#0_0: DatatypeType;
  var tail#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var v#0_0: Box;
  var let#0_1#0#0: Box;
  var source##0_0: Box;
  var dest##0_0: Box;
  var p##0_0: DatatypeType;
  var AllVertices##0_0: Set;
  var source##0_1: Box;
  var x##0_0: Box;
  var p##0_1: DatatypeType;
  var AllVertices##0_1: Set;

    // AddMethodImpl: Lemma_IsPath_R, Impl$$_module.BreadthFirstSearch.Lemma__IsPath__R
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(p#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#p0#0: DatatypeType, $ih#AllVertices0#0: Set :: 
      { _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), $ih#p0#0), _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, this, $ih#AllVertices0#0) } 
        { _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), $ih#p0#0), Set#IsMember($ih#AllVertices0#0, source#0) } 
        { _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, this, $ih#AllVertices0#0), _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, x#0, $ih#p0#0) } 
        { Set#IsMember($ih#AllVertices0#0, source#0), _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, x#0, $ih#p0#0) } 
      $Is($ih#p0#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
           && $Is($ih#AllVertices0#0, TSet(_module.BreadthFirstSearch$Vertex))
           && 
          _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LZ), this, source#0, x#0, $ih#p0#0)
           && Set#IsMember($ih#AllVertices0#0, source#0)
           && _module.BreadthFirstSearch.IsClosed(_module.BreadthFirstSearch$Vertex, this, $ih#AllVertices0#0)
           && (DtRank($ih#p0#0) < DtRank(p#0)
             || (DtRank($ih#p0#0) == DtRank(p#0)
               && 
              Set#Subset($ih#AllVertices0#0, AllVertices#0)
               && !Set#Subset(AllVertices#0, $ih#AllVertices0#0)))
         ==> Set#IsMember(_module.BreadthFirstSearch.R(_module.BreadthFirstSearch$Vertex, 
            $LS($LZ), 
            reveal__module.BreadthFirstSearch.R, 
            this, 
            source#0, 
            _module.__default.length(_module.BreadthFirstSearch$Vertex, $LS($LZ), $ih#p0#0), 
            $ih#AllVertices0#0), 
          x#0));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(218,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(218,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id322"} Call$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex);
    // TrCallStmt: After ProcessCallStmt
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (p#0 == #_module.List.Nil())
    {
    }
    else if (p#0 == #_module.List.Cons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $IsBox(_mcc#0#0_0, _module.BreadthFirstSearch$Vertex);
        assume $Is(_mcc#1#0_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex));
        havoc tail#0_0;
        assume $Is(tail#0_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
           && $IsAlloc(tail#0_0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
        assume {:id "id323"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex));
        assume {:id "id324"} tail#0_0 == let#0_0#0#0;
        havoc v#0_0;
        assume $IsBox(v#0_0, _module.BreadthFirstSearch$Vertex)
           && $IsAllocBox(v#0_0, _module.BreadthFirstSearch$Vertex, $Heap);
        assume {:id "id325"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(let#0_1#0#0, _module.BreadthFirstSearch$Vertex);
        assume {:id "id326"} v#0_0 == let#0_1#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(222,29)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        source##0_0 := source#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        dest##0_0 := x#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        p##0_0 := p#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        AllVertices##0_0 := AllVertices#0;
        call {:id "id327"} Call$$_module.BreadthFirstSearch.Lemma__IsPath__Closure(_module.BreadthFirstSearch$Vertex, this, source##0_0, dest##0_0, p##0_0, AllVertices##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(223,23)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        source##0_1 := source#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := v#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        p##0_1 := tail#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        AllVertices##0_1 := AllVertices#0;
        assert {:id "id328"} DtRank(p##0_1) < DtRank(p#0)
           || (DtRank(p##0_1) == DtRank(p#0)
             && 
            Set#Subset(AllVertices##0_1, AllVertices#0)
             && !Set#Subset(AllVertices#0, AllVertices##0_1));
        call {:id "id329"} Call$$_module.BreadthFirstSearch.Lemma__IsPath__R(_module.BreadthFirstSearch$Vertex, this, source##0_1, x##0_0, p##0_1, AllVertices##0_1);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



// function declaration for _module.BreadthFirstSearch.ValidMap
function _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex: Ty, this: ref, source#0: Box, m#0: Map)
   : bool
uses {
// definition axiom for _module.BreadthFirstSearch.ValidMap (revealed)
axiom {:id "id330"} 2 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, this: ref, source#0: Box, m#0: Map :: 
    { _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, m#0) } 
    _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, m#0)
         || (2 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
           && $Is(m#0, 
            TMap(_module.BreadthFirstSearch$Vertex, 
              Tclass._module.List(_module.BreadthFirstSearch$Vertex))))
       ==> (forall v#0: Box :: 
          { $Unbox(Map#Elements(m#0)[v#0]): DatatypeType } 
            { Set#IsMember(Map#Domain(m#0), v#0) } 
          $IsBox(v#0, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(Map#Domain(m#0), v#0)
             ==> _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, 
              this, 
              source#0, 
              v#0, 
              $Unbox(Map#Elements(m#0)[v#0]): DatatypeType))
         && _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, m#0)
           == (forall v#0: Box :: 
            { $Unbox(Map#Elements(m#0)[v#0]): DatatypeType } 
              { Set#IsMember(Map#Domain(m#0), v#0) } 
            $IsBox(v#0, _module.BreadthFirstSearch$Vertex)
               ==> 
              Set#IsMember(Map#Domain(m#0), v#0)
               ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                this, 
                source#0, 
                v#0, 
                $Unbox(Map#Elements(m#0)[v#0]): DatatypeType)));
// definition axiom for _module.BreadthFirstSearch.ValidMap for decreasing-related literals (revealed)
axiom {:id "id331"} 2 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, this: ref, source#0: Box, m#0: Map :: 
    {:weight 3} { _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, Lit(m#0)) } 
    _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, Lit(m#0))
         || (2 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
           && $Is(m#0, 
            TMap(_module.BreadthFirstSearch$Vertex, 
              Tclass._module.List(_module.BreadthFirstSearch$Vertex))))
       ==> (forall v#1: Box :: 
          { $Unbox(Map#Elements(m#0)[v#1]): DatatypeType } 
            { Set#IsMember(Map#Domain(m#0), v#1) } 
          $IsBox(v#1, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(Map#Domain(m#0), v#1)
             ==> _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, 
              this, 
              source#0, 
              v#1, 
              $Unbox(Map#Elements(Lit(m#0))[v#1]): DatatypeType))
         && _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, Lit(m#0))
           == (forall v#1: Box :: 
            { $Unbox(Map#Elements(m#0)[v#1]): DatatypeType } 
              { Set#IsMember(Map#Domain(m#0), v#1) } 
            $IsBox(v#1, _module.BreadthFirstSearch$Vertex)
               ==> 
              Set#IsMember(Map#Domain(m#0), v#1)
               ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                this, 
                source#0, 
                v#1, 
                $Unbox(Map#Elements(Lit(m#0))[v#1]): DatatypeType)));
// definition axiom for _module.BreadthFirstSearch.ValidMap for all literals (revealed)
axiom {:id "id332"} 2 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, this: ref, source#0: Box, m#0: Map :: 
    {:weight 3} { _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, Lit(this), Lit(source#0), Lit(m#0)) } 
    _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, Lit(this), Lit(source#0), Lit(m#0))
         || (2 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
           && $Is(m#0, 
            TMap(_module.BreadthFirstSearch$Vertex, 
              Tclass._module.List(_module.BreadthFirstSearch$Vertex))))
       ==> (forall v#2: Box :: 
          { $Unbox(Map#Elements(m#0)[v#2]): DatatypeType } 
            { Set#IsMember(Map#Domain(m#0), v#2) } 
          $IsBox(v#2, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(Map#Domain(m#0), v#2)
             ==> _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, 
              Lit(this), 
              Lit(source#0), 
              v#2, 
              $Unbox(Map#Elements(Lit(m#0))[v#2]): DatatypeType))
         && _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, Lit(this), Lit(source#0), Lit(m#0))
           == (forall v#2: Box :: 
            { $Unbox(Map#Elements(m#0)[v#2]): DatatypeType } 
              { Set#IsMember(Map#Domain(m#0), v#2) } 
            $IsBox(v#2, _module.BreadthFirstSearch$Vertex)
               ==> 
              Set#IsMember(Map#Domain(m#0), v#2)
               ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                Lit(this), 
                Lit(source#0), 
                v#2, 
                $Unbox(Map#Elements(Lit(m#0))[v#2]): DatatypeType)));
}

function _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex: Ty, this: ref, source#0: Box, m#0: Map)
   : bool;

function _module.BreadthFirstSearch.ValidMap#requires(Ty, ref, Box, Map) : bool;

// #requires axiom for _module.BreadthFirstSearch.ValidMap
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, this: ref, source#0: Box, m#0: Map :: 
  { _module.BreadthFirstSearch.ValidMap#requires(_module.BreadthFirstSearch$Vertex, this, source#0, m#0) } 
  this != null
       && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
       && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
       && $Is(m#0, 
        TMap(_module.BreadthFirstSearch$Vertex, 
          Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
     ==> _module.BreadthFirstSearch.ValidMap#requires(_module.BreadthFirstSearch$Vertex, this, source#0, m#0)
       == true);

procedure {:verboseName "BreadthFirstSearch.ValidMap (well-formedness)"} CheckWellformed$$_module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box where $IsBox(source#0, _module.BreadthFirstSearch$Vertex), 
    m#0: Map
       where $Is(m#0, 
        TMap(_module.BreadthFirstSearch$Vertex, 
          Tclass._module.List(_module.BreadthFirstSearch$Vertex))));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BreadthFirstSearch.ValidMap (well-formedness)"} CheckWellformed$$_module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex: Ty, this: ref, source#0: Box, m#0: Map)
{
  var $_ReadsFrame: [ref,Field]bool;
  var v#3: Box;
  var ##source#0: Box;
  var ##dest#0: Box;
  var ##p#0: DatatypeType;


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
        havoc v#3;
        if ($IsBox(v#3, _module.BreadthFirstSearch$Vertex)
           && $IsAllocBox(v#3, _module.BreadthFirstSearch$Vertex, $Heap))
        {
            if (Set#IsMember(Map#Domain(m#0), v#3))
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), 
                  Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
                  $Heap);
                ##source#0 := source#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##source#0, _module.BreadthFirstSearch$Vertex, $Heap);
                ##dest#0 := v#3;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##dest#0, _module.BreadthFirstSearch$Vertex, $Heap);
                assert {:id "id333"} Set#IsMember(Map#Domain(m#0), v#3);
                ##p#0 := $Unbox(Map#Elements(m#0)[v#3]): DatatypeType;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
                assume _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, 
                  this, 
                  source#0, 
                  v#3, 
                  $Unbox(Map#Elements(m#0)[v#3]): DatatypeType);
            }
        }

        // End Comprehension WF check
        assume {:id "id334"} _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, m#0)
           == (forall v#4: Box :: 
            { $Unbox(Map#Elements(m#0)[v#4]): DatatypeType } 
              { Set#IsMember(Map#Domain(m#0), v#4) } 
            $IsBox(v#4, _module.BreadthFirstSearch$Vertex)
               ==> 
              Set#IsMember(Map#Domain(m#0), v#4)
               ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
                $LS($LZ), 
                this, 
                source#0, 
                v#4, 
                $Unbox(Map#Elements(m#0)[v#4]): DatatypeType));
        assume (forall v#4: Box :: 
          { $Unbox(Map#Elements(m#0)[v#4]): DatatypeType } 
            { Set#IsMember(Map#Domain(m#0), v#4) } 
          $IsBox(v#4, _module.BreadthFirstSearch$Vertex)
             ==> 
            Set#IsMember(Map#Domain(m#0), v#4)
             ==> _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, 
              this, 
              source#0, 
              v#4, 
              $Unbox(Map#Elements(m#0)[v#4]): DatatypeType));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, m#0), 
          TBool);
        return;

        assume false;
    }
}



// function declaration for _module.BreadthFirstSearch.Find
function _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    source#0: Box, 
    x#0: Box, 
    m#0: Map)
   : DatatypeType
uses {
// consequence axiom for _module.BreadthFirstSearch.Find
axiom 3 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, 
      this: ref, 
      source#0: Box, 
      x#0: Box, 
      m#0: Map :: 
    { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0) } 
    _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0)
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
           && $IsBox(x#0, _module.BreadthFirstSearch$Vertex)
           && $Is(m#0, 
            TMap(_module.BreadthFirstSearch$Vertex, 
              Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
           && 
          _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, m#0)
           && Set#IsMember(Map#Domain(m#0), x#0))
       ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
          $LS($LZ), 
          this, 
          source#0, 
          x#0, 
          _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0))
         && $Is(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0), 
          Tclass._module.List(_module.BreadthFirstSearch$Vertex)));
// alloc consequence axiom for _module.BreadthFirstSearch.Find
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module.BreadthFirstSearch$Vertex: Ty, 
      this: ref, 
      source#0: Box, 
      x#0: Box, 
      m#0: Map :: 
    { $IsAlloc(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0), 
        Tclass._module.List(_module.BreadthFirstSearch$Vertex), 
        $Heap) } 
    (_module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0)
           || (3 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, 
              Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
              $Heap)
             && 
            $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
             && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap)
             && 
            $IsBox(x#0, _module.BreadthFirstSearch$Vertex)
             && $IsAllocBox(x#0, _module.BreadthFirstSearch$Vertex, $Heap)
             && 
            $Is(m#0, 
              TMap(_module.BreadthFirstSearch$Vertex, 
                Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
             && $IsAlloc(m#0, 
              TMap(_module.BreadthFirstSearch$Vertex, 
                Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
              $Heap)
             && 
            _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, m#0)
             && Set#IsMember(Map#Domain(m#0), x#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0), 
        Tclass._module.List(_module.BreadthFirstSearch$Vertex), 
        $Heap));
// definition axiom for _module.BreadthFirstSearch.Find (revealed)
axiom {:id "id335"} 3 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, 
      this: ref, 
      source#0: Box, 
      x#0: Box, 
      m#0: Map :: 
    { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0) } 
    _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0)
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
           && $IsBox(x#0, _module.BreadthFirstSearch$Vertex)
           && $Is(m#0, 
            TMap(_module.BreadthFirstSearch$Vertex, 
              Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
           && 
          _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, m#0)
           && Set#IsMember(Map#Domain(m#0), x#0))
       ==> _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0)
         == $Unbox(Map#Elements(m#0)[x#0]): DatatypeType);
// definition axiom for _module.BreadthFirstSearch.Find for decreasing-related literals (revealed)
axiom {:id "id336"} 3 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, 
      this: ref, 
      source#0: Box, 
      x#0: Box, 
      m#0: Map :: 
    {:weight 3} { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, Lit(m#0)) } 
    _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, Lit(m#0))
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
           && $IsBox(x#0, _module.BreadthFirstSearch$Vertex)
           && $Is(m#0, 
            TMap(_module.BreadthFirstSearch$Vertex, 
              Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
           && 
          _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, Lit(m#0))
           && Set#IsMember(Map#Domain(m#0), x#0))
       ==> _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, Lit(m#0))
         == $Unbox(Map#Elements(Lit(m#0))[x#0]): DatatypeType);
// definition axiom for _module.BreadthFirstSearch.Find for all literals (revealed)
axiom {:id "id337"} 3 <= $FunctionContextHeight
   ==> (forall _module.BreadthFirstSearch$Vertex: Ty, 
      this: ref, 
      source#0: Box, 
      x#0: Box, 
      m#0: Map :: 
    {:weight 3} { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, Lit(this), Lit(source#0), Lit(x#0), Lit(m#0)) } 
    _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, Lit(this), Lit(source#0), Lit(x#0), Lit(m#0))
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
           && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
           && $IsBox(x#0, _module.BreadthFirstSearch$Vertex)
           && $Is(m#0, 
            TMap(_module.BreadthFirstSearch$Vertex, 
              Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
           && 
          _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, Lit(this), Lit(source#0), Lit(m#0))
           && Set#IsMember(Map#Domain(m#0), x#0))
       ==> _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, Lit(this), Lit(source#0), Lit(x#0), Lit(m#0))
         == $Unbox(Map#Elements(Lit(m#0))[Lit(x#0)]): DatatypeType);
}

function _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    source#0: Box, 
    x#0: Box, 
    m#0: Map)
   : bool;

function _module.BreadthFirstSearch.Find#requires(Ty, ref, Box, Box, Map) : bool;

// #requires axiom for _module.BreadthFirstSearch.Find
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    source#0: Box, 
    x#0: Box, 
    m#0: Map :: 
  { _module.BreadthFirstSearch.Find#requires(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0) } 
  this != null
       && $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
       && $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
       && $IsBox(x#0, _module.BreadthFirstSearch$Vertex)
       && $Is(m#0, 
        TMap(_module.BreadthFirstSearch$Vertex, 
          Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
     ==> _module.BreadthFirstSearch.Find#requires(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0)
       == (_module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, m#0)
         && Set#IsMember(Map#Domain(m#0), x#0)));

procedure {:verboseName "BreadthFirstSearch.Find (well-formedness)"} CheckWellformed$$_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    source#0: Box where $IsBox(source#0, _module.BreadthFirstSearch$Vertex), 
    x#0: Box where $IsBox(x#0, _module.BreadthFirstSearch$Vertex), 
    m#0: Map
       where $Is(m#0, 
        TMap(_module.BreadthFirstSearch$Vertex, 
          Tclass._module.List(_module.BreadthFirstSearch$Vertex))));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id338"} _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, 
      this, 
      source#0, 
      x#0, 
      _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0))
     ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
        $LS($LZ), 
        this, 
        source#0, 
        x#0, 
        _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0))
       || (_module.List.Nil_q(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0))
         ==> source#0 == x#0);
  ensures {:id "id339"} _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, 
      this, 
      source#0, 
      x#0, 
      _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0))
     ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
        $LS($LZ), 
        this, 
        source#0, 
        x#0, 
        _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0))
       || (!_module.List.Nil_q(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0))
         ==> (var tail#0 := _module.List.tail(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0)); 
          (var v#0 := _module.List.head(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0)); 
            Set#IsMember(_module.BreadthFirstSearch.Succ(_module.BreadthFirstSearch$Vertex, this, v#0), 
              x#0))));
  ensures {:id "id340"} _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, 
      this, 
      source#0, 
      x#0, 
      _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0))
     ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
        $LS($LZ), 
        this, 
        source#0, 
        x#0, 
        _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0))
       || (!_module.List.Nil_q(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0))
         ==> (var tail#0 := _module.List.tail(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0)); 
          (var v#0 := _module.List.head(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0)); 
            _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, $LS($LS($LZ)), this, source#0, v#0, tail#0))));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BreadthFirstSearch.Find (well-formedness)"} CheckWellformed$$_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    source#0: Box, 
    x#0: Box, 
    m#0: Map)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##source#0: Box;
  var ##m#0: Map;
  var ##source#1: Box;
  var ##dest#0: Box;
  var ##p#0: DatatypeType;
  var ##source#2: Box;
  var ##x#0: Box;
  var ##m#1: Map;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
      $Heap);
    ##source#0 := source#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##source#0, _module.BreadthFirstSearch$Vertex, $Heap);
    ##m#0 := m#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, 
      TMap(_module.BreadthFirstSearch$Vertex, 
        Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
      $Heap);
    assume _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, m#0);
    assume {:id "id341"} _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, m#0);
    assume {:id "id342"} Set#IsMember(Map#Domain(m#0), x#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0), 
          Tclass._module.List(_module.BreadthFirstSearch$Vertex));
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), 
          Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
          $Heap);
        ##source#1 := source#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##source#1, _module.BreadthFirstSearch$Vertex, $Heap);
        ##dest#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##dest#0, _module.BreadthFirstSearch$Vertex, $Heap);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), 
          Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
          $Heap);
        ##source#2 := source#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##source#2, _module.BreadthFirstSearch$Vertex, $Heap);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#0, _module.BreadthFirstSearch$Vertex, $Heap);
        ##m#1 := m#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#1, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
          $Heap);
        assert {:id "id343"} {:subsumption 0} _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, ##source#2, ##m#1)
           ==> _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, ##source#2, ##m#1)
             || (forall v#2: Box :: 
              { $Unbox(Map#Elements(##m#1)[v#2]): DatatypeType } 
                { Set#IsMember(Map#Domain(##m#1), v#2) } 
              $IsBox(v#2, _module.BreadthFirstSearch$Vertex)
                 ==> 
                Set#IsMember(Map#Domain(##m#1), v#2)
                 ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
                  $LS($LS($LZ)), 
                  this, 
                  ##source#2, 
                  v#2, 
                  $Unbox(Map#Elements(##m#1)[v#2]): DatatypeType));
        assert {:id "id344"} {:subsumption 0} Set#IsMember(Map#Domain(##m#1), ##x#0);
        assume _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, ##source#2, ##m#1)
           && Set#IsMember(Map#Domain(##m#1), ##x#0);
        assert {:id "id345"} (this == this && source#0 == source#0 && x#0 == x#0 && Map#Equal(m#0, m#0))
           || (Set#Subset(Map#Domain(##m#1), Map#Domain(m#0))
             && !Set#Subset(Map#Domain(m#0), Map#Domain(##m#1)));
        assume (this == this && source#0 == source#0 && x#0 == x#0 && Map#Equal(m#0, m#0))
           || _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0);
        ##p#0 := _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
        assume _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, 
          this, 
          source#0, 
          x#0, 
          _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0));
        assume {:id "id346"} _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
          $LS($LZ), 
          this, 
          source#0, 
          x#0, 
          _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id347"} Set#IsMember(Map#Domain(m#0), x#0);
        assume {:id "id348"} _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0)
           == $Unbox(Map#Elements(m#0)[x#0]): DatatypeType;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, m#0), 
          Tclass._module.List(_module.BreadthFirstSearch$Vertex));
        return;

        assume false;
    }
}



procedure {:verboseName "BreadthFirstSearch.UpdatePaths (well-formedness)"} CheckWellFormed$$_module.BreadthFirstSearch.UpdatePaths(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    vSuccs#0: Set
       where $Is(vSuccs#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(vSuccs#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    paths#0: Map
       where $Is(paths#0, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
         && $IsAlloc(paths#0, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
          $Heap), 
    v#0: Box
       where $IsBox(v#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(v#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    pathToV#0: DatatypeType
       where $Is(pathToV#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(pathToV#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap)
         && $IsA#_module.List(pathToV#0))
   returns (newPaths#0: Map
       where $Is(newPaths#0, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
         && $IsAlloc(newPaths#0, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
          $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BreadthFirstSearch.UpdatePaths (well-formedness)"} CheckWellFormed$$_module.BreadthFirstSearch.UpdatePaths(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    vSuccs#0: Set, 
    source#0: Box, 
    paths#0: Map, 
    v#0: Box, 
    pathToV#0: DatatypeType)
   returns (newPaths#0: Map)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##source#0: Box;
  var ##m#0: Map;
  var succ#0: Box;
  var ##source#1: Box;
  var ##dest#0: Box;
  var ##p#0: DatatypeType;
  var ##source#2: Box;
  var ##m#1: Map;
  var x#0: Box;
  var ##source#3: Box;
  var ##x#0: Box;
  var ##m#2: Map;
  var ##source#4: Box;
  var ##x#1: Box;
  var ##m#3: Map;
  var x#2: Box;
  var ##source#5: Box;
  var ##x#2: Box;
  var ##m#4: Map;


    // AddMethodImpl: UpdatePaths, CheckWellFormed$$_module.BreadthFirstSearch.UpdatePaths
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
      $Heap);
    ##source#0 := source#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##source#0, _module.BreadthFirstSearch$Vertex, $Heap);
    ##m#0 := paths#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, 
      TMap(_module.BreadthFirstSearch$Vertex, 
        Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
      $Heap);
    assume _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0);
    assume {:id "id349"} _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0);
    assume {:id "id350"} Set#Disjoint(vSuccs#0, Map#Domain(paths#0));
    havoc succ#0;
    assume $IsBox(succ#0, _module.BreadthFirstSearch$Vertex)
       && $IsAllocBox(succ#0, _module.BreadthFirstSearch$Vertex, $Heap);
    if (*)
    {
        assume {:id "id351"} Set#IsMember(vSuccs#0, succ#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), 
          Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
          $Heap);
        ##source#1 := source#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##source#1, _module.BreadthFirstSearch$Vertex, $Heap);
        ##dest#0 := succ#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##dest#0, _module.BreadthFirstSearch$Vertex, $Heap);
        ##p#0 := #_module.List.Cons(v#0, pathToV#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##p#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap);
        assume _module.BreadthFirstSearch.IsPath#canCall(_module.BreadthFirstSearch$Vertex, 
          this, 
          source#0, 
          succ#0, 
          #_module.List.Cons(v#0, pathToV#0));
        assume {:id "id352"} _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
          $LS($LZ), 
          this, 
          source#0, 
          succ#0, 
          #_module.List.Cons(v#0, pathToV#0));
    }
    else
    {
        assume {:id "id353"} Set#IsMember(vSuccs#0, succ#0)
           ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
            $LS($LZ), 
            this, 
            source#0, 
            succ#0, 
            #_module.List.Cons(v#0, pathToV#0));
    }

    assume {:id "id354"} (forall succ#1: Box :: 
      { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
          $LS($LZ), 
          this, 
          source#0, 
          succ#1, 
          #_module.List.Cons(v#0, pathToV#0)) } 
        { Set#IsMember(vSuccs#0, succ#1) } 
      $IsBox(succ#1, _module.BreadthFirstSearch$Vertex)
         ==> 
        Set#IsMember(vSuccs#0, succ#1)
         ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
          $LS($LZ), 
          this, 
          source#0, 
          succ#1, 
          #_module.List.Cons(v#0, pathToV#0)));
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSuccGhost(old($Heap), $Heap);
    havoc newPaths#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), 
      Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
      $Heap);
    ##source#2 := source#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##source#2, _module.BreadthFirstSearch$Vertex, $Heap);
    ##m#1 := newPaths#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#1, 
      TMap(_module.BreadthFirstSearch$Vertex, 
        Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
      $Heap);
    assume _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, newPaths#0);
    assume {:id "id355"} _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, newPaths#0);
    assume {:id "id356"} Set#Equal(Map#Domain(newPaths#0), Set#Union(Map#Domain(paths#0), vSuccs#0));
    havoc x#0;
    assume $IsBox(x#0, _module.BreadthFirstSearch$Vertex)
       && $IsAllocBox(x#0, _module.BreadthFirstSearch$Vertex, $Heap);
    if (*)
    {
        assume {:id "id357"} Set#IsMember(Map#Domain(paths#0), x#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), 
          Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
          $Heap);
        ##source#3 := source#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##source#3, _module.BreadthFirstSearch$Vertex, $Heap);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#0, _module.BreadthFirstSearch$Vertex, $Heap);
        ##m#2 := paths#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#2, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
          $Heap);
        assert {:id "id358"} {:subsumption 0} _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, ##source#3, ##m#2)
           ==> _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, ##source#3, ##m#2)
             || (forall v#1: Box :: 
              { $Unbox(Map#Elements(##m#2)[v#1]): DatatypeType } 
                { Set#IsMember(Map#Domain(##m#2), v#1) } 
              $IsBox(v#1, _module.BreadthFirstSearch$Vertex)
                 ==> 
                Set#IsMember(Map#Domain(##m#2), v#1)
                 ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
                  $LS($LS($LZ)), 
                  this, 
                  ##source#3, 
                  v#1, 
                  $Unbox(Map#Elements(##m#2)[v#1]): DatatypeType));
        assert {:id "id359"} {:subsumption 0} Set#IsMember(Map#Domain(##m#2), ##x#0);
        assume _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, ##source#3, ##m#2)
           && Set#IsMember(Map#Domain(##m#2), ##x#0);
        assume _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, paths#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), 
          Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
          $Heap);
        ##source#4 := source#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##source#4, _module.BreadthFirstSearch$Vertex, $Heap);
        ##x#1 := x#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#1, _module.BreadthFirstSearch$Vertex, $Heap);
        ##m#3 := newPaths#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#3, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
          $Heap);
        assert {:id "id360"} {:subsumption 0} _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, ##source#4, ##m#3)
           ==> _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, ##source#4, ##m#3)
             || (forall v#2: Box :: 
              { $Unbox(Map#Elements(##m#3)[v#2]): DatatypeType } 
                { Set#IsMember(Map#Domain(##m#3), v#2) } 
              $IsBox(v#2, _module.BreadthFirstSearch$Vertex)
                 ==> 
                Set#IsMember(Map#Domain(##m#3), v#2)
                 ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
                  $LS($LS($LZ)), 
                  this, 
                  ##source#4, 
                  v#2, 
                  $Unbox(Map#Elements(##m#3)[v#2]): DatatypeType));
        assert {:id "id361"} {:subsumption 0} Set#IsMember(Map#Domain(##m#3), ##x#1);
        assume _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, ##source#4, ##m#3)
           && Set#IsMember(Map#Domain(##m#3), ##x#1);
        assume _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, newPaths#0);
        assume {:id "id362"} _module.List#Equal(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, paths#0), 
          _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, newPaths#0));
    }
    else
    {
        assume {:id "id363"} Set#IsMember(Map#Domain(paths#0), x#0)
           ==> _module.List#Equal(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, paths#0), 
            _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#0, newPaths#0));
    }

    assume {:id "id364"} (forall x#1: Box :: 
      { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, newPaths#0) } 
        { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0) } 
        { Set#IsMember(Map#Domain(paths#0), x#1) } 
      $IsBox(x#1, _module.BreadthFirstSearch$Vertex)
         ==> 
        Set#IsMember(Map#Domain(paths#0), x#1)
         ==> _module.List#Equal(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0), 
          _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, newPaths#0)));
    havoc x#2;
    assume $IsBox(x#2, _module.BreadthFirstSearch$Vertex)
       && $IsAllocBox(x#2, _module.BreadthFirstSearch$Vertex, $Heap);
    if (*)
    {
        assume {:id "id365"} Set#IsMember(vSuccs#0, x#2);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), 
          Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), 
          $Heap);
        ##source#5 := source#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##source#5, _module.BreadthFirstSearch$Vertex, $Heap);
        ##x#2 := x#2;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#2, _module.BreadthFirstSearch$Vertex, $Heap);
        ##m#4 := newPaths#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#4, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
          $Heap);
        assert {:id "id366"} {:subsumption 0} _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, ##source#5, ##m#4)
           ==> _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, ##source#5, ##m#4)
             || (forall v#3: Box :: 
              { $Unbox(Map#Elements(##m#4)[v#3]): DatatypeType } 
                { Set#IsMember(Map#Domain(##m#4), v#3) } 
              $IsBox(v#3, _module.BreadthFirstSearch$Vertex)
                 ==> 
                Set#IsMember(Map#Domain(##m#4), v#3)
                 ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
                  $LS($LS($LZ)), 
                  this, 
                  ##source#5, 
                  v#3, 
                  $Unbox(Map#Elements(##m#4)[v#3]): DatatypeType));
        assert {:id "id367"} {:subsumption 0} Set#IsMember(Map#Domain(##m#4), ##x#2);
        assume _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, ##source#5, ##m#4)
           && Set#IsMember(Map#Domain(##m#4), ##x#2);
        assume _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#2, newPaths#0);
        assume {:id "id368"} _module.List#Equal(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#2, newPaths#0), 
          #_module.List.Cons(v#0, pathToV#0));
    }
    else
    {
        assume {:id "id369"} Set#IsMember(vSuccs#0, x#2)
           ==> _module.List#Equal(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#2, newPaths#0), 
            #_module.List.Cons(v#0, pathToV#0));
    }

    assume {:id "id370"} (forall x#3: Box :: 
      { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, newPaths#0) } 
        { Set#IsMember(vSuccs#0, x#3) } 
      $IsBox(x#3, _module.BreadthFirstSearch$Vertex)
         ==> 
        Set#IsMember(vSuccs#0, x#3)
         ==> _module.List#Equal(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, newPaths#0), 
          #_module.List.Cons(v#0, pathToV#0)));
}



procedure {:verboseName "BreadthFirstSearch.UpdatePaths (call)"} Call$$_module.BreadthFirstSearch.UpdatePaths(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    vSuccs#0: Set
       where $Is(vSuccs#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(vSuccs#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    paths#0: Map
       where $Is(paths#0, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
         && $IsAlloc(paths#0, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
          $Heap), 
    v#0: Box
       where $IsBox(v#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(v#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    pathToV#0: DatatypeType
       where $Is(pathToV#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(pathToV#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap)
         && $IsA#_module.List(pathToV#0))
   returns (newPaths#0: Map
       where $Is(newPaths#0, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
         && $IsAlloc(newPaths#0, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
          $Heap));
  // user-defined preconditions
  requires {:id "id371"} _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0)
     ==> _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0)
       || (forall v#4: Box :: 
        { $Unbox(Map#Elements(paths#0)[v#4]): DatatypeType } 
          { Set#IsMember(Map#Domain(paths#0), v#4) } 
        $IsBox(v#4, _module.BreadthFirstSearch$Vertex)
           ==> 
          Set#IsMember(Map#Domain(paths#0), v#4)
           ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
            $LS($LS($LZ)), 
            this, 
            source#0, 
            v#4, 
            $Unbox(Map#Elements(paths#0)[v#4]): DatatypeType));
  requires {:id "id372"} Set#Disjoint(vSuccs#0, Map#Domain(paths#0));
  requires {:id "id373"} (forall succ#1: Box :: 
    { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
        $LS($LS($LZ)), 
        this, 
        source#0, 
        succ#1, 
        #_module.List.Cons(v#0, pathToV#0)) } 
      { Set#IsMember(vSuccs#0, succ#1) } 
    $IsBox(succ#1, _module.BreadthFirstSearch$Vertex)
       ==> 
      Set#IsMember(vSuccs#0, succ#1)
       ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
        $LS($LS($LZ)), 
        this, 
        source#0, 
        succ#1, 
        #_module.List.Cons(v#0, pathToV#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, newPaths#0);
  free ensures {:id "id374"} _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, newPaths#0)
     && 
    _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, newPaths#0)
     && (forall v#5: Box :: 
      { $Unbox(Map#Elements(newPaths#0)[v#5]): DatatypeType } 
        { Set#IsMember(Map#Domain(newPaths#0), v#5) } 
      $IsBox(v#5, _module.BreadthFirstSearch$Vertex)
         ==> 
        Set#IsMember(Map#Domain(newPaths#0), v#5)
         ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
          $LS($LZ), 
          this, 
          source#0, 
          v#5, 
          $Unbox(Map#Elements(newPaths#0)[v#5]): DatatypeType));
  ensures {:id "id375"} Set#Equal(Map#Domain(newPaths#0), Set#Union(Map#Domain(paths#0), vSuccs#0));
  free ensures (forall x#1: Box :: 
    { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, newPaths#0) } 
      { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0) } 
      { Set#IsMember(Map#Domain(paths#0), x#1) } 
    $IsBox(x#1, _module.BreadthFirstSearch$Vertex)
       ==> 
      Set#IsMember(Map#Domain(paths#0), x#1)
       ==> $IsA#_module.List(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0))
         && $IsA#_module.List(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, newPaths#0))
         && 
        _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0)
         && _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, newPaths#0));
  ensures {:id "id376"} (forall x#1: Box :: 
    { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, newPaths#0) } 
      { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0) } 
      { Set#IsMember(Map#Domain(paths#0), x#1) } 
    $IsBox(x#1, _module.BreadthFirstSearch$Vertex)
       ==> 
      Set#IsMember(Map#Domain(paths#0), x#1)
       ==> _module.List#Equal(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0), 
        _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, newPaths#0)));
  free ensures (forall x#3: Box :: 
    { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, newPaths#0) } 
      { Set#IsMember(vSuccs#0, x#3) } 
    $IsBox(x#3, _module.BreadthFirstSearch$Vertex)
       ==> 
      Set#IsMember(vSuccs#0, x#3)
       ==> $IsA#_module.List(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, newPaths#0))
         && _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, newPaths#0));
  ensures {:id "id377"} (forall x#3: Box :: 
    { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, newPaths#0) } 
      { Set#IsMember(vSuccs#0, x#3) } 
    $IsBox(x#3, _module.BreadthFirstSearch$Vertex)
       ==> 
      Set#IsMember(vSuccs#0, x#3)
       ==> _module.List#Equal(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, newPaths#0), 
        #_module.List.Cons(v#0, pathToV#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "BreadthFirstSearch.UpdatePaths (correctness)"} Impl$$_module.BreadthFirstSearch.UpdatePaths(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(this, 
          Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), 
          $Heap), 
    vSuccs#0: Set
       where $Is(vSuccs#0, TSet(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(vSuccs#0, TSet(_module.BreadthFirstSearch$Vertex), $Heap), 
    source#0: Box
       where $IsBox(source#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(source#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    paths#0: Map
       where $Is(paths#0, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
         && $IsAlloc(paths#0, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
          $Heap), 
    v#0: Box
       where $IsBox(v#0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(v#0, _module.BreadthFirstSearch$Vertex, $Heap), 
    pathToV#0: DatatypeType
       where $Is(pathToV#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex))
         && $IsAlloc(pathToV#0, Tclass._module.List(_module.BreadthFirstSearch$Vertex), $Heap)
         && $IsA#_module.List(pathToV#0))
   returns (newPaths#0: Map
       where $Is(newPaths#0, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)))
         && $IsAlloc(newPaths#0, 
          TMap(_module.BreadthFirstSearch$Vertex, 
            Tclass._module.List(_module.BreadthFirstSearch$Vertex)), 
          $Heap), 
    $_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id378"} _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0)
     && 
    _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, paths#0)
     && (forall v#6: Box :: 
      { $Unbox(Map#Elements(paths#0)[v#6]): DatatypeType } 
        { Set#IsMember(Map#Domain(paths#0), v#6) } 
      $IsBox(v#6, _module.BreadthFirstSearch$Vertex)
         ==> 
        Set#IsMember(Map#Domain(paths#0), v#6)
         ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
          $LS($LZ), 
          this, 
          source#0, 
          v#6, 
          $Unbox(Map#Elements(paths#0)[v#6]): DatatypeType));
  requires {:id "id379"} Set#Disjoint(vSuccs#0, Map#Domain(paths#0));
  free requires {:id "id380"} (forall succ#1: Box :: 
    { _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
        $LS($LZ), 
        this, 
        source#0, 
        succ#1, 
        #_module.List.Cons(v#0, pathToV#0)) } 
      { Set#IsMember(vSuccs#0, succ#1) } 
    $IsBox(succ#1, _module.BreadthFirstSearch$Vertex)
       ==> 
      Set#IsMember(vSuccs#0, succ#1)
       ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
        $LS($LZ), 
        this, 
        source#0, 
        succ#1, 
        #_module.List.Cons(v#0, pathToV#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, newPaths#0);
  ensures {:id "id381"} _module.BreadthFirstSearch.ValidMap#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, newPaths#0)
     ==> _module.BreadthFirstSearch.ValidMap(_module.BreadthFirstSearch$Vertex, this, source#0, newPaths#0)
       || (forall v#7: Box :: 
        { $Unbox(Map#Elements(newPaths#0)[v#7]): DatatypeType } 
          { Set#IsMember(Map#Domain(newPaths#0), v#7) } 
        $IsBox(v#7, _module.BreadthFirstSearch$Vertex)
           ==> 
          Set#IsMember(Map#Domain(newPaths#0), v#7)
           ==> _module.BreadthFirstSearch.IsPath(_module.BreadthFirstSearch$Vertex, 
            $LS($LS($LZ)), 
            this, 
            source#0, 
            v#7, 
            $Unbox(Map#Elements(newPaths#0)[v#7]): DatatypeType));
  ensures {:id "id382"} Set#Equal(Map#Domain(newPaths#0), Set#Union(Map#Domain(paths#0), vSuccs#0));
  free ensures (forall x#1: Box :: 
    { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, newPaths#0) } 
      { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0) } 
      { Set#IsMember(Map#Domain(paths#0), x#1) } 
    $IsBox(x#1, _module.BreadthFirstSearch$Vertex)
       ==> 
      Set#IsMember(Map#Domain(paths#0), x#1)
       ==> $IsA#_module.List(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0))
         && $IsA#_module.List(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, newPaths#0))
         && 
        _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0)
         && _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, newPaths#0));
  ensures {:id "id383"} (forall x#1: Box :: 
    { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, newPaths#0) } 
      { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0) } 
      { Set#IsMember(Map#Domain(paths#0), x#1) } 
    $IsBox(x#1, _module.BreadthFirstSearch$Vertex)
       ==> 
      Set#IsMember(Map#Domain(paths#0), x#1)
       ==> _module.List#Equal(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, paths#0), 
        _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#1, newPaths#0)));
  free ensures (forall x#3: Box :: 
    { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, newPaths#0) } 
      { Set#IsMember(vSuccs#0, x#3) } 
    $IsBox(x#3, _module.BreadthFirstSearch$Vertex)
       ==> 
      Set#IsMember(vSuccs#0, x#3)
       ==> $IsA#_module.List(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, newPaths#0))
         && _module.BreadthFirstSearch.Find#canCall(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, newPaths#0));
  ensures {:id "id384"} (forall x#3: Box :: 
    { _module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, newPaths#0) } 
      { Set#IsMember(vSuccs#0, x#3) } 
    $IsBox(x#3, _module.BreadthFirstSearch$Vertex)
       ==> 
      Set#IsMember(vSuccs#0, x#3)
       ==> _module.List#Equal(_module.BreadthFirstSearch.Find(_module.BreadthFirstSearch$Vertex, this, source#0, x#3, newPaths#0), 
        #_module.List.Cons(v#0, pathToV#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BreadthFirstSearch.UpdatePaths (correctness)"} Impl$$_module.BreadthFirstSearch.UpdatePaths(_module.BreadthFirstSearch$Vertex: Ty, 
    this: ref, 
    vSuccs#0: Set, 
    source#0: Box, 
    paths#0: Map, 
    v#0: Box, 
    pathToV#0: DatatypeType)
   returns (newPaths#0: Map, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#succ#1_0: bool;
  var succ#1_0: Box
     where defass#succ#1_0
       ==> $IsBox(succ#1_0, _module.BreadthFirstSearch$Vertex)
         && $IsAllocBox(succ#1_0, _module.BreadthFirstSearch$Vertex, $Heap);
  var succ#1_1: Box;
  var $rhs##1_0: Map;
  var vSuccs##1_0: Set;
  var source##1_0: Box;
  var paths##1_0: Map;
  var v##1_0: Box;
  var pathToV##1_0: DatatypeType;

    // AddMethodImpl: UpdatePaths, Impl$$_module.BreadthFirstSearch.UpdatePaths
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(252,5)
    assume true;
    if (Set#Equal(vSuccs#0, Set#Empty(): Set))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(253,16)
        assume true;
        assume true;
        newPaths#0 := paths#0;
    }
    else
    {
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(255,16)
        havoc succ#1_1;
        if ($IsBox(succ#1_1, _module.BreadthFirstSearch$Vertex)
           && $IsAllocBox(succ#1_1, _module.BreadthFirstSearch$Vertex, $Heap))
        {
            assume true;
        }

        assert {:id "id386"} (exists $as#succ1_0#1_0: Box :: 
          $IsBox($as#succ1_0#1_0, _module.BreadthFirstSearch$Vertex)
             && Set#IsMember(vSuccs#0, $as#succ1_0#1_0));
        defass#succ#1_0 := true;
        havoc succ#1_0;
        assume {:id "id387"} Set#IsMember(vSuccs#0, succ#1_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(256,16)
        assume true;
        assert {:id "id388"} defass#succ#1_0;
        assume true;
        newPaths#0 := Map#Build(paths#0, succ#1_0, $Box(#_module.List.Cons(v#0, pathToV#0)));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(257,7)
        assert {:id "id390"} defass#succ#1_0;
        assume true;
        assert {:id "id391"} Set#Equal(Map#Domain(newPaths#0), 
          Set#Union(Map#Domain(paths#0), Set#UnionOne(Set#Empty(): Set, succ#1_0)));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/BreadthFirstSearch.dfy(258,30)
        assume true;
        // TrCallStmt: Adding lhs with type map<Vertex, List<Vertex>>
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id392"} defass#succ#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        vSuccs##1_0 := Set#Difference(vSuccs#0, Set#UnionOne(Set#Empty(): Set, succ#1_0));
        assume true;
        // ProcessCallStmt: CheckSubrange
        source##1_0 := source#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        paths##1_0 := newPaths#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        v##1_0 := v#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        pathToV##1_0 := pathToV#0;
        assert {:id "id393"} (Set#Subset(vSuccs##1_0, vSuccs#0) && !Set#Subset(vSuccs#0, vSuccs##1_0))
           || (Set#Equal(vSuccs##1_0, vSuccs#0)
             && ((Set#Subset(Map#Domain(paths##1_0), Map#Domain(paths#0))
                 && !Set#Subset(Map#Domain(paths#0), Map#Domain(paths##1_0)))
               || (Set#Equal(Map#Domain(paths##1_0), Map#Domain(paths#0))
                 && DtRank(pathToV##1_0) < DtRank(pathToV#0))));
        call {:id "id394"} $rhs##1_0 := Call$$_module.BreadthFirstSearch.UpdatePaths(_module.BreadthFirstSearch$Vertex, this, vSuccs##1_0, source##1_0, paths##1_0, v##1_0, pathToV##1_0);
        // TrCallStmt: After ProcessCallStmt
        newPaths#0 := $rhs##1_0;
    }
}



procedure {:verboseName "BreadthFirstSearch.reveal_R (well-formedness)"} {:verify false} CheckWellFormed$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex: Ty);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BreadthFirstSearch.reveal_R (call)"} {:verify false} Call$$_module.BreadthFirstSearch.reveal__R(_module.BreadthFirstSearch$Vertex: Ty);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module.BreadthFirstSearch.R;



// $Is axiom for non-null type _module.BreadthFirstSearch
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex)) } 
    { $Is(c#0, Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex)) } 
  $Is(c#0, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex))
     <==> $Is(c#0, Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex))
       && c#0 != null);

// $IsAlloc axiom for non-null type _module.BreadthFirstSearch
axiom (forall _module.BreadthFirstSearch$Vertex: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), $h) } 
    { $IsAlloc(c#0, Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), $h) } 
  $IsAlloc(c#0, Tclass._module.BreadthFirstSearch(_module.BreadthFirstSearch$Vertex), $h)
     <==> $IsAlloc(c#0, Tclass._module.BreadthFirstSearch?(_module.BreadthFirstSearch$Vertex), $h));

// Constructor function declaration
function #_module.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
// Constructor literal
axiom #_module.List.Nil() == Lit(#_module.List.Nil());
}

const unique ##_module.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
}

function _module.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) <==> DatatypeCtorId(d) == ##_module.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) ==> d == #_module.List.Nil());

// Constructor $Is
axiom (forall _module.List$T: Ty :: 
  { $Is(#_module.List.Nil(), Tclass._module.List(_module.List$T)) } 
  $Is(#_module.List.Nil(), Tclass._module.List(_module.List$T)));

// Constructor $IsAlloc
axiom (forall _module.List$T: Ty, $h: Heap :: 
  { $IsAlloc(#_module.List.Nil(), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.List.Nil(), Tclass._module.List(_module.List$T), $h));

// Constructor function declaration
function #_module.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##_module.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #_module.List.Cons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#_module.List.Cons(a#4#0#0, a#4#1#0)) == ##_module.List.Cons);
}

function _module.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d) } 
  _module.List.Cons_q(d) <==> DatatypeCtorId(d) == ##_module.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d) } 
  _module.List.Cons_q(d)
     ==> (exists a#5#0#0: Box, a#5#1#0: DatatypeType :: 
      d == #_module.List.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall _module.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { $Is(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T)) } 
  $Is(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T))
     <==> $IsBox(a#6#0#0, _module.List$T)
       && $Is(a#6#1#0, Tclass._module.List(_module.List$T)));

// Constructor $IsAlloc
axiom (forall _module.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T), $h)
       <==> $IsAllocBox(a#6#0#0, _module.List$T, $h)
         && $IsAlloc(a#6#1#0, Tclass._module.List(_module.List$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.List$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.List.head(d), _module.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAllocBox(_module.List.head(d), _module.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.List$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.List.tail(d), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAlloc(_module.List.tail(d), Tclass._module.List(_module.List$T), $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #_module.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #_module.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#_module.List.Cons(a#7#0#0, a#7#1#0)));

function _module.List.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #_module.List.Cons(a#8#0#0, a#8#1#0) } 
  _module.List.head(#_module.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #_module.List.Cons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0) < DtRank(#_module.List.Cons(a#9#0#0, a#9#1#0)));

function _module.List.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #_module.List.Cons(a#10#0#0, a#10#1#0) } 
  _module.List.tail(#_module.List.Cons(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #_module.List.Cons(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0) < DtRank(#_module.List.Cons(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#_module.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.List(d) } 
  $IsA#_module.List(d) ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.List$T: Ty, d: DatatypeType :: 
  { _module.List.Cons_q(d), $Is(d, Tclass._module.List(_module.List$T)) } 
    { _module.List.Nil_q(d), $Is(d, Tclass._module.List(_module.List$T)) } 
  $Is(d, Tclass._module.List(_module.List$T))
     ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Datatype extensional equality declaration
function _module.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.Nil_q(a) } 
    { _module.List#Equal(a, b), _module.List.Nil_q(b) } 
  _module.List.Nil_q(a) && _module.List.Nil_q(b) ==> _module.List#Equal(a, b));

// Datatype extensional equality definition: #_module.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.Cons_q(a) } 
    { _module.List#Equal(a, b), _module.List.Cons_q(b) } 
  _module.List.Cons_q(a) && _module.List.Cons_q(b)
     ==> (_module.List#Equal(a, b)
       <==> _module.List.head(a) == _module.List.head(b)
         && _module.List#Equal(_module.List.tail(a), _module.List.tail(b))));

// Datatype extensionality axiom: _module.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b) } 
  _module.List#Equal(a, b) <==> a == b);

const unique class._module.List: ClassName;

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

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$BreadthFirstSearch: TyTagFamily;