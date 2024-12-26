// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/blogposts/TestGenerationNoInliningEnumerativeDefinitions.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/blogposts/TestGenerationNoInliningEnumerativeDefinitions-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/blogposts/TestGenerationNoInliningEnumerativeDefinitions.dfy

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

const unique class.Chess.__default: ClassName;

// function declaration for Chess._default.BoardIsValid
function Chess.__default.BoardIsValid(board#0: DatatypeType) : bool
uses {
// definition axiom for Chess.__default.BoardIsValid (revealed)
axiom {:id "id0"} 0 <= $FunctionContextHeight
   ==> (forall board#0: DatatypeType :: 
    { Chess.__default.BoardIsValid(board#0) } 
    Chess.__default.BoardIsValid#canCall(board#0)
         || (0 < $FunctionContextHeight && $Is(board#0, Tclass.Shared.Board()))
       ==> Shared.Board.Board_q(board#0)
         && (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
           ==> $IsA#Shared.PieceKind(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType))
             && 
            Shared.Board.Board_q(board#0)
             && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType)
             && (Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
                #Shared.PieceKind.King(Lit(#Shared.Color.White())))
               ==> $IsA#Shared.PieceKind(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
                 && 
                Shared.Board.Board_q(board#0)
                 && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType)
                 && (Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
                    #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
                   ==> $IsA#Shared.PieceKind(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
                     && 
                    Shared.Board.Board_q(board#0)
                     && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType)
                     && (Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
                        #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
                       ==> $IsA#Shared.PieceKind(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                         && 
                        Shared.Board.Board_q(board#0)
                         && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType)
                         && (Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
                            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
                           ==> $IsA#Shared.PieceKind(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                             && 
                            Shared.Board.Board_q(board#0)
                             && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType)
                             && (Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType), 
                                #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
                               ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType))
                                 && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
                                 && 
                                Shared.Board.Board_q(board#0)
                                 && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType)
                                 && 
                                Shared.Board.Board_q(board#0)
                                 && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType)
                                 && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
                                    Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
                                   ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType))
                                     && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
                                     && 
                                    Shared.Board.Board_q(board#0)
                                     && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType)
                                     && 
                                    Shared.Board.Board_q(board#0)
                                     && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType)
                                     && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
                                        Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
                                       ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType))
                                         && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                                         && 
                                        Shared.Board.Board_q(board#0)
                                         && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType)
                                         && 
                                        Shared.Board.Board_q(board#0)
                                         && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType)
                                         && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
                                            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                                           ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType))
                                             && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                                             && 
                                            Shared.Board.Board_q(board#0)
                                             && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType)
                                             && 
                                            Shared.Board.Board_q(board#0)
                                             && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType)
                                             && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
                                                Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                                               ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
                                                 && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
                                                 && 
                                                Shared.Board.Board_q(board#0)
                                                 && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType)
                                                 && 
                                                Shared.Board.Board_q(board#0)
                                                 && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType)
                                                 && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
                                                    Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
                                                   ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
                                                     && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                                                     && 
                                                    Shared.Board.Board_q(board#0)
                                                     && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType)
                                                     && 
                                                    Shared.Board.Board_q(board#0)
                                                     && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType)
                                                     && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
                                                        Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                                                       ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
                                                         && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                                                         && 
                                                        Shared.Board.Board_q(board#0)
                                                         && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType)
                                                         && 
                                                        Shared.Board.Board_q(board#0)
                                                         && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType)
                                                         && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
                                                            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                                                           ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
                                                             && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                                                             && 
                                                            Shared.Board.Board_q(board#0)
                                                             && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType)
                                                             && 
                                                            Shared.Board.Board_q(board#0)
                                                             && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType)
                                                             && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
                                                                Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                                                               ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
                                                                 && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                                                                 && 
                                                                Shared.Board.Board_q(board#0)
                                                                 && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType)
                                                                 && 
                                                                Shared.Board.Board_q(board#0)
                                                                 && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType)
                                                                 && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
                                                                    Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                                                                   ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                                                                     && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                                                                     && 
                                                                    Shared.Board.Board_q(board#0)
                                                                     && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType)
                                                                     && 
                                                                    Shared.Board.Board_q(board#0)
                                                                     && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))))))))))))))))
         && Chess.__default.BoardIsValid(board#0)
           == (
            Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
             && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
              #Shared.PieceKind.King(Lit(#Shared.Color.White())))
             && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
              #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
             && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
              #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
             && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
              #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
             && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType), 
              #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))));
// definition axiom for Chess.__default.BoardIsValid for all literals (revealed)
axiom {:id "id1"} 0 <= $FunctionContextHeight
   ==> (forall board#0: DatatypeType :: 
    {:weight 3} { Chess.__default.BoardIsValid(Lit(board#0)) } 
    Chess.__default.BoardIsValid#canCall(Lit(board#0))
         || (0 < $FunctionContextHeight && $Is(board#0, Tclass.Shared.Board()))
       ==> Shared.Board.Board_q(Lit(board#0))
         && (Seq#Length(Lit(Shared.Board.pieces(Lit(board#0)))) == LitInt(5)
           ==> $IsA#Shared.PieceKind(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType))
             && 
            Shared.Board.Board_q(Lit(board#0))
             && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType)
             && (Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType), 
                #Shared.PieceKind.King(Lit(#Shared.Color.White())))
               ==> $IsA#Shared.PieceKind(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType))
                 && 
                Shared.Board.Board_q(Lit(board#0))
                 && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType)
                 && (Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType), 
                    #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
                   ==> $IsA#Shared.PieceKind(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType))
                     && 
                    Shared.Board.Board_q(Lit(board#0))
                     && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType)
                     && (Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType), 
                        #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
                       ==> $IsA#Shared.PieceKind(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType))
                         && 
                        Shared.Board.Board_q(Lit(board#0))
                         && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType)
                         && (Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType), 
                            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
                           ==> $IsA#Shared.PieceKind(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType))
                             && 
                            Shared.Board.Board_q(Lit(board#0))
                             && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType)
                             && (Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType), 
                                #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
                               ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType))
                                 && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType))
                                 && 
                                Shared.Board.Board_q(Lit(board#0))
                                 && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType)
                                 && 
                                Shared.Board.Board_q(Lit(board#0))
                                 && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType)
                                 && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType), 
                                    Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType))
                                   ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType))
                                     && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType))
                                     && 
                                    Shared.Board.Board_q(Lit(board#0))
                                     && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType)
                                     && 
                                    Shared.Board.Board_q(Lit(board#0))
                                     && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType)
                                     && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType), 
                                        Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType))
                                       ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType))
                                         && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType))
                                         && 
                                        Shared.Board.Board_q(Lit(board#0))
                                         && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType)
                                         && 
                                        Shared.Board.Board_q(Lit(board#0))
                                         && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType)
                                         && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType), 
                                            Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType))
                                           ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType))
                                             && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType))
                                             && 
                                            Shared.Board.Board_q(Lit(board#0))
                                             && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType)
                                             && 
                                            Shared.Board.Board_q(Lit(board#0))
                                             && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType)
                                             && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType), 
                                                Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType))
                                               ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType))
                                                 && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType))
                                                 && 
                                                Shared.Board.Board_q(Lit(board#0))
                                                 && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType)
                                                 && 
                                                Shared.Board.Board_q(Lit(board#0))
                                                 && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType)
                                                 && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType), 
                                                    Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType))
                                                   ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType))
                                                     && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType))
                                                     && 
                                                    Shared.Board.Board_q(Lit(board#0))
                                                     && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType)
                                                     && 
                                                    Shared.Board.Board_q(Lit(board#0))
                                                     && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType)
                                                     && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType), 
                                                        Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType))
                                                       ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType))
                                                         && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType))
                                                         && 
                                                        Shared.Board.Board_q(Lit(board#0))
                                                         && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType)
                                                         && 
                                                        Shared.Board.Board_q(Lit(board#0))
                                                         && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType)
                                                         && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType), 
                                                            Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType))
                                                           ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType))
                                                             && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType))
                                                             && 
                                                            Shared.Board.Board_q(Lit(board#0))
                                                             && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType)
                                                             && 
                                                            Shared.Board.Board_q(Lit(board#0))
                                                             && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType)
                                                             && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType), 
                                                                Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType))
                                                               ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType))
                                                                 && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType))
                                                                 && 
                                                                Shared.Board.Board_q(Lit(board#0))
                                                                 && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType)
                                                                 && 
                                                                Shared.Board.Board_q(Lit(board#0))
                                                                 && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType)
                                                                 && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType), 
                                                                    Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType))
                                                                   ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType))
                                                                     && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType))
                                                                     && 
                                                                    Shared.Board.Board_q(Lit(board#0))
                                                                     && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType)
                                                                     && 
                                                                    Shared.Board.Board_q(Lit(board#0))
                                                                     && Shared.Piece.Piece_q($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType))))))))))))))))
         && Chess.__default.BoardIsValid(Lit(board#0))
           == (
            Seq#Length(Lit(Shared.Board.pieces(Lit(board#0)))) == LitInt(5)
             && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType), 
              #Shared.PieceKind.King(Lit(#Shared.Color.White())))
             && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType), 
              #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
             && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType), 
              #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
             && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType), 
              #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
             && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType), 
              #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType))));
}

function Chess.__default.BoardIsValid#canCall(board#0: DatatypeType) : bool;

function Tclass.Shared.Board() : Ty
uses {
// Tclass.Shared.Board Tag
axiom Tag(Tclass.Shared.Board()) == Tagclass.Shared.Board
   && TagFamily(Tclass.Shared.Board()) == tytagFamily$Board;
}

const unique Tagclass.Shared.Board: TyTag;

// Box/unbox axiom for Tclass.Shared.Board
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Shared.Board()) } 
  $IsBox(bx, Tclass.Shared.Board())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Shared.Board()));

function Chess.__default.BoardIsValid#requires(DatatypeType) : bool;

// #requires axiom for Chess.__default.BoardIsValid
axiom (forall board#0: DatatypeType :: 
  { Chess.__default.BoardIsValid#requires(board#0) } 
  $Is(board#0, Tclass.Shared.Board())
     ==> Chess.__default.BoardIsValid#requires(board#0) == true);

procedure {:verboseName "Chess.BoardIsValid (well-formedness)"} CheckWellformed$$Chess.__default.BoardIsValid(board#0: DatatypeType where $Is(board#0, Tclass.Shared.Board()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Chess.BoardIsValid (well-formedness)"} CheckWellformed$$Chess.__default.BoardIsValid(board#0: DatatypeType)
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
        assume Shared.Board.Board_q(board#0);
        if (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5))
        {
            assume Shared.Board.Board_q(board#0);
            assert {:id "id2"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType);
        }

        if (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            #Shared.PieceKind.King(Lit(#Shared.Color.White()))))
        {
            assume Shared.Board.Board_q(board#0);
            assert {:id "id3"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType);
        }

        if (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            #Shared.PieceKind.King(Lit(#Shared.Color.White())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))))
        {
            assume Shared.Board.Board_q(board#0);
            assert {:id "id4"} 0 <= LitInt(2) && LitInt(2) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType);
        }

        if (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            #Shared.PieceKind.King(Lit(#Shared.Color.White())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))))
        {
            assume Shared.Board.Board_q(board#0);
            assert {:id "id5"} 0 <= LitInt(3) && LitInt(3) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType);
        }

        if (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            #Shared.PieceKind.King(Lit(#Shared.Color.White())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))))
        {
            assume Shared.Board.Board_q(board#0);
            assert {:id "id6"} 0 <= LitInt(4) && LitInt(4) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType);
        }

        if (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            #Shared.PieceKind.King(Lit(#Shared.Color.White())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))))
        {
            assume Shared.Board.Board_q(board#0);
            assert {:id "id7"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType);
            assume Shared.Board.Board_q(board#0);
            assert {:id "id8"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType);
        }

        if (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            #Shared.PieceKind.King(Lit(#Shared.Color.White())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType)))
        {
            assume Shared.Board.Board_q(board#0);
            assert {:id "id9"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType);
            assume Shared.Board.Board_q(board#0);
            assert {:id "id10"} 0 <= LitInt(2) && LitInt(2) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType);
        }

        if (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            #Shared.PieceKind.King(Lit(#Shared.Color.White())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType)))
        {
            assume Shared.Board.Board_q(board#0);
            assert {:id "id11"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType);
            assume Shared.Board.Board_q(board#0);
            assert {:id "id12"} 0 <= LitInt(3) && LitInt(3) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType);
        }

        if (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            #Shared.PieceKind.King(Lit(#Shared.Color.White())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType)))
        {
            assume Shared.Board.Board_q(board#0);
            assert {:id "id13"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType);
            assume Shared.Board.Board_q(board#0);
            assert {:id "id14"} 0 <= LitInt(4) && LitInt(4) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType);
        }

        if (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            #Shared.PieceKind.King(Lit(#Shared.Color.White())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType)))
        {
            assume Shared.Board.Board_q(board#0);
            assert {:id "id15"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType);
            assume Shared.Board.Board_q(board#0);
            assert {:id "id16"} 0 <= LitInt(2) && LitInt(2) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType);
        }

        if (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            #Shared.PieceKind.King(Lit(#Shared.Color.White())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType)))
        {
            assume Shared.Board.Board_q(board#0);
            assert {:id "id17"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType);
            assume Shared.Board.Board_q(board#0);
            assert {:id "id18"} 0 <= LitInt(3) && LitInt(3) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType);
        }

        if (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            #Shared.PieceKind.King(Lit(#Shared.Color.White())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType)))
        {
            assume Shared.Board.Board_q(board#0);
            assert {:id "id19"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType);
            assume Shared.Board.Board_q(board#0);
            assert {:id "id20"} 0 <= LitInt(4) && LitInt(4) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType);
        }

        if (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            #Shared.PieceKind.King(Lit(#Shared.Color.White())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType)))
        {
            assume Shared.Board.Board_q(board#0);
            assert {:id "id21"} 0 <= LitInt(2) && LitInt(2) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType);
            assume Shared.Board.Board_q(board#0);
            assert {:id "id22"} 0 <= LitInt(3) && LitInt(3) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType);
        }

        if (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            #Shared.PieceKind.King(Lit(#Shared.Color.White())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType)))
        {
            assume Shared.Board.Board_q(board#0);
            assert {:id "id23"} 0 <= LitInt(2) && LitInt(2) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType);
            assume Shared.Board.Board_q(board#0);
            assert {:id "id24"} 0 <= LitInt(4) && LitInt(4) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType);
        }

        if (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            #Shared.PieceKind.King(Lit(#Shared.Color.White())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
            #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType), 
            #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
           && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
            Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType)))
        {
            assume Shared.Board.Board_q(board#0);
            assert {:id "id25"} 0 <= LitInt(3) && LitInt(3) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType);
            assume Shared.Board.Board_q(board#0);
            assert {:id "id26"} 0 <= LitInt(4) && LitInt(4) < Seq#Length(Shared.Board.pieces(board#0));
            assume Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType);
        }

        assume {:id "id27"} Chess.__default.BoardIsValid(board#0)
           == (
            Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
             && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
              #Shared.PieceKind.King(Lit(#Shared.Color.White())))
             && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
              #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
             && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
              #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
             && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
              #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
             && Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType), 
              #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
             && !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType)));
        assume Shared.Board.Board_q(board#0)
           && (Seq#Length(Shared.Board.pieces(board#0)) == LitInt(5)
             ==> $IsA#Shared.PieceKind(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType))
               && 
              Shared.Board.Board_q(board#0)
               && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType)
               && (Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
                  #Shared.PieceKind.King(Lit(#Shared.Color.White())))
                 ==> $IsA#Shared.PieceKind(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
                   && 
                  Shared.Board.Board_q(board#0)
                   && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType)
                   && (Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
                      #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
                     ==> $IsA#Shared.PieceKind(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
                       && 
                      Shared.Board.Board_q(board#0)
                       && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType)
                       && (Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
                          #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())))
                         ==> $IsA#Shared.PieceKind(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                           && 
                          Shared.Board.Board_q(board#0)
                           && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType)
                           && (Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType), 
                              #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
                             ==> $IsA#Shared.PieceKind(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                               && 
                              Shared.Board.Board_q(board#0)
                               && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType)
                               && (Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType), 
                                  #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())))
                                 ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType))
                                   && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
                                   && 
                                  Shared.Board.Board_q(board#0)
                                   && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType)
                                   && 
                                  Shared.Board.Board_q(board#0)
                                   && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType)
                                   && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
                                      Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
                                     ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType))
                                       && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
                                       && 
                                      Shared.Board.Board_q(board#0)
                                       && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType)
                                       && 
                                      Shared.Board.Board_q(board#0)
                                       && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType)
                                       && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
                                          Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
                                         ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType))
                                           && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                                           && 
                                          Shared.Board.Board_q(board#0)
                                           && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType)
                                           && 
                                          Shared.Board.Board_q(board#0)
                                           && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType)
                                           && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
                                              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                                             ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType))
                                               && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                                               && 
                                              Shared.Board.Board_q(board#0)
                                               && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType)
                                               && 
                                              Shared.Board.Board_q(board#0)
                                               && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType)
                                               && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType), 
                                                  Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                                                 ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
                                                   && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
                                                   && 
                                                  Shared.Board.Board_q(board#0)
                                                   && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType)
                                                   && 
                                                  Shared.Board.Board_q(board#0)
                                                   && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType)
                                                   && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
                                                      Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
                                                     ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
                                                       && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                                                       && 
                                                      Shared.Board.Board_q(board#0)
                                                       && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType)
                                                       && 
                                                      Shared.Board.Board_q(board#0)
                                                       && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType)
                                                       && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
                                                          Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                                                         ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType))
                                                           && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                                                           && 
                                                          Shared.Board.Board_q(board#0)
                                                           && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType)
                                                           && 
                                                          Shared.Board.Board_q(board#0)
                                                           && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType)
                                                           && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType), 
                                                              Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                                                             ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
                                                               && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                                                               && 
                                                              Shared.Board.Board_q(board#0)
                                                               && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType)
                                                               && 
                                                              Shared.Board.Board_q(board#0)
                                                               && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType)
                                                               && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
                                                                  Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                                                                 ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType))
                                                                   && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                                                                   && 
                                                                  Shared.Board.Board_q(board#0)
                                                                   && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType)
                                                                   && 
                                                                  Shared.Board.Board_q(board#0)
                                                                   && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType)
                                                                   && (!Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType), 
                                                                      Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                                                                     ==> $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType))
                                                                       && $IsA#Shared.Pos(Shared.Piece.at($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))
                                                                       && 
                                                                      Shared.Board.Board_q(board#0)
                                                                       && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType)
                                                                       && 
                                                                      Shared.Board.Board_q(board#0)
                                                                       && Shared.Piece.Piece_q($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType))))))))))))))));
        // CheckWellformedWithResult: any expression
        assume $Is(Chess.__default.BoardIsValid(board#0), TBool);
        return;

        assume false;
    }
}



// function declaration for Chess._default.CheckedByPlayer
function Chess.__default.CheckedByPlayer(board#0: DatatypeType, king#0: DatatypeType, byPlayer#0: DatatypeType) : bool
uses {
// definition axiom for Chess.__default.CheckedByPlayer (revealed)
axiom {:id "id28"} 3 <= $FunctionContextHeight
   ==> (forall board#0: DatatypeType, king#0: DatatypeType, byPlayer#0: DatatypeType :: 
    { Chess.__default.CheckedByPlayer(board#0, king#0, byPlayer#0) } 
    Chess.__default.CheckedByPlayer#canCall(board#0, king#0, byPlayer#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(board#0, Tclass.Chess.ValidBoard())
           && $Is(king#0, Tclass.Shared.Piece())
           && $Is(byPlayer#0, Tclass.Shared.Color()))
       ==> Chess.__default.CheckedByPiece#canCall(board#0, king#0, #Shared.PieceKind.Knight(byPlayer#0))
         && (!Chess.__default.CheckedByPiece(board#0, king#0, #Shared.PieceKind.Knight(byPlayer#0))
           ==> Chess.__default.CheckedByPiece#canCall(board#0, king#0, #Shared.PieceKind.Pawn(byPlayer#0)))
         && Chess.__default.CheckedByPlayer(board#0, king#0, byPlayer#0)
           == (Chess.__default.CheckedByPiece(board#0, king#0, #Shared.PieceKind.Knight(byPlayer#0))
             || Chess.__default.CheckedByPiece(board#0, king#0, #Shared.PieceKind.Pawn(byPlayer#0))));
// definition axiom for Chess.__default.CheckedByPlayer for all literals (revealed)
axiom {:id "id29"} 3 <= $FunctionContextHeight
   ==> (forall board#0: DatatypeType, king#0: DatatypeType, byPlayer#0: DatatypeType :: 
    {:weight 3} { Chess.__default.CheckedByPlayer(Lit(board#0), Lit(king#0), Lit(byPlayer#0)) } 
    Chess.__default.CheckedByPlayer#canCall(Lit(board#0), Lit(king#0), Lit(byPlayer#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(board#0, Tclass.Chess.ValidBoard())
           && $Is(king#0, Tclass.Shared.Piece())
           && $Is(byPlayer#0, Tclass.Shared.Color()))
       ==> Chess.__default.CheckedByPiece#canCall(Lit(board#0), Lit(king#0), Lit(#Shared.PieceKind.Knight(Lit(byPlayer#0))))
         && (!Lit(Chess.__default.CheckedByPiece(Lit(board#0), Lit(king#0), Lit(#Shared.PieceKind.Knight(Lit(byPlayer#0)))))
           ==> Chess.__default.CheckedByPiece#canCall(Lit(board#0), Lit(king#0), Lit(#Shared.PieceKind.Pawn(Lit(byPlayer#0)))))
         && Chess.__default.CheckedByPlayer(Lit(board#0), Lit(king#0), Lit(byPlayer#0))
           == Lit(Chess.__default.CheckedByPiece(Lit(board#0), Lit(king#0), Lit(#Shared.PieceKind.Knight(Lit(byPlayer#0))))
               || Chess.__default.CheckedByPiece(Lit(board#0), Lit(king#0), Lit(#Shared.PieceKind.Pawn(Lit(byPlayer#0))))));
}

function Chess.__default.CheckedByPlayer#canCall(board#0: DatatypeType, king#0: DatatypeType, byPlayer#0: DatatypeType) : bool;

function Tclass.Chess.ValidBoard() : Ty
uses {
// Tclass.Chess.ValidBoard Tag
axiom Tag(Tclass.Chess.ValidBoard()) == Tagclass.Chess.ValidBoard
   && TagFamily(Tclass.Chess.ValidBoard()) == tytagFamily$ValidBoard;
}

const unique Tagclass.Chess.ValidBoard: TyTag;

// Box/unbox axiom for Tclass.Chess.ValidBoard
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Chess.ValidBoard()) } 
  $IsBox(bx, Tclass.Chess.ValidBoard())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Chess.ValidBoard()));

function Tclass.Shared.Piece() : Ty
uses {
// Tclass.Shared.Piece Tag
axiom Tag(Tclass.Shared.Piece()) == Tagclass.Shared.Piece
   && TagFamily(Tclass.Shared.Piece()) == tytagFamily$Piece;
}

const unique Tagclass.Shared.Piece: TyTag;

// Box/unbox axiom for Tclass.Shared.Piece
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Shared.Piece()) } 
  $IsBox(bx, Tclass.Shared.Piece())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Shared.Piece()));

function Tclass.Shared.Color() : Ty
uses {
// Tclass.Shared.Color Tag
axiom Tag(Tclass.Shared.Color()) == Tagclass.Shared.Color
   && TagFamily(Tclass.Shared.Color()) == tytagFamily$Color;
}

const unique Tagclass.Shared.Color: TyTag;

// Box/unbox axiom for Tclass.Shared.Color
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Shared.Color()) } 
  $IsBox(bx, Tclass.Shared.Color())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Shared.Color()));

function Chess.__default.CheckedByPlayer#requires(DatatypeType, DatatypeType, DatatypeType) : bool;

// #requires axiom for Chess.__default.CheckedByPlayer
axiom (forall board#0: DatatypeType, king#0: DatatypeType, byPlayer#0: DatatypeType :: 
  { Chess.__default.CheckedByPlayer#requires(board#0, king#0, byPlayer#0) } 
  $Is(board#0, Tclass.Chess.ValidBoard())
       && $Is(king#0, Tclass.Shared.Piece())
       && $Is(byPlayer#0, Tclass.Shared.Color())
     ==> Chess.__default.CheckedByPlayer#requires(board#0, king#0, byPlayer#0) == true);

procedure {:verboseName "Chess.CheckedByPlayer (well-formedness)"} CheckWellformed$$Chess.__default.CheckedByPlayer(board#0: DatatypeType where $Is(board#0, Tclass.Chess.ValidBoard()), 
    king#0: DatatypeType where $Is(king#0, Tclass.Shared.Piece()), 
    byPlayer#0: DatatypeType where $Is(byPlayer#0, Tclass.Shared.Color()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



function Tclass.Shared.PieceKind() : Ty
uses {
// Tclass.Shared.PieceKind Tag
axiom Tag(Tclass.Shared.PieceKind()) == Tagclass.Shared.PieceKind
   && TagFamily(Tclass.Shared.PieceKind()) == tytagFamily$PieceKind;
}

const unique Tagclass.Shared.PieceKind: TyTag;

// Box/unbox axiom for Tclass.Shared.PieceKind
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Shared.PieceKind()) } 
  $IsBox(bx, Tclass.Shared.PieceKind())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Shared.PieceKind()));

// function declaration for Chess._default.CheckedByPiece
function Chess.__default.CheckedByPiece(board#0: DatatypeType, king#0: DatatypeType, byPiece#0: DatatypeType) : bool
uses {
// definition axiom for Chess.__default.CheckedByPiece (revealed)
axiom {:id "id31"} 2 <= $FunctionContextHeight
   ==> (forall board#0: DatatypeType, king#0: DatatypeType, byPiece#0: DatatypeType :: 
    { Chess.__default.CheckedByPiece(board#0, king#0, byPiece#0) } 
    Chess.__default.CheckedByPiece#canCall(board#0, king#0, byPiece#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(board#0, Tclass.Chess.ValidBoard())
           && $Is(king#0, Tclass.Shared.Piece())
           && $Is(byPiece#0, Tclass.Shared.PieceKind()))
       ==> (Shared.PieceKind.Knight_q(byPiece#0)
           ==> (
              Shared.PieceKind.Knight_q(byPiece#0)
               || Shared.PieceKind.King_q(byPiece#0)
               || Shared.PieceKind.Pawn_q(byPiece#0))
             && (Shared.Color.Black_q(Shared.PieceKind.c(byPiece#0))
               ==> Shared.Board.Board_q(board#0)
                 && Shared.Piece.Piece_q(king#0)
                 && Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType, 
                  Shared.Piece.at(king#0))
                 && (!Shared.Piece.Attacks($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType, 
                    Shared.Piece.at(king#0))
                   ==> Shared.Board.Board_q(board#0)
                     && Shared.Piece.Piece_q(king#0)
                     && Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType, 
                      Shared.Piece.at(king#0)))))
         && (!Shared.PieceKind.Knight_q(byPiece#0)
           ==> 
          !Shared.PieceKind.King_q(byPiece#0)
           ==> (
              Shared.PieceKind.Knight_q(byPiece#0)
               || Shared.PieceKind.King_q(byPiece#0)
               || Shared.PieceKind.Pawn_q(byPiece#0))
             && (Shared.Color.Black_q(Shared.PieceKind.c(byPiece#0))
               ==> Shared.Board.Board_q(board#0)
                 && Shared.Piece.Piece_q(king#0)
                 && Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType, 
                  Shared.Piece.at(king#0))
                 && (!Shared.Piece.Attacks($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType, 
                    Shared.Piece.at(king#0))
                   ==> Shared.Board.Board_q(board#0)
                     && Shared.Piece.Piece_q(king#0)
                     && Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType, 
                      Shared.Piece.at(king#0)))))
         && Chess.__default.CheckedByPiece(board#0, king#0, byPiece#0)
           == (if Shared.PieceKind.Knight_q(byPiece#0)
             then (if Shared.Color.Black_q(Shared.PieceKind.c(byPiece#0))
               then Shared.Piece.Attacks($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType, 
                  Shared.Piece.at(king#0))
                 || Shared.Piece.Attacks($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType, 
                  Shared.Piece.at(king#0))
               else false)
             else (if Shared.PieceKind.King_q(byPiece#0)
               then false
               else (if Shared.Color.Black_q(Shared.PieceKind.c(byPiece#0))
                 then Shared.Piece.Attacks($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType, 
                    Shared.Piece.at(king#0))
                   || Shared.Piece.Attacks($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType, 
                    Shared.Piece.at(king#0))
                 else false))));
// definition axiom for Chess.__default.CheckedByPiece for all literals (revealed)
axiom {:id "id32"} 2 <= $FunctionContextHeight
   ==> (forall board#0: DatatypeType, king#0: DatatypeType, byPiece#0: DatatypeType :: 
    {:weight 3} { Chess.__default.CheckedByPiece(Lit(board#0), Lit(king#0), Lit(byPiece#0)) } 
    Chess.__default.CheckedByPiece#canCall(Lit(board#0), Lit(king#0), Lit(byPiece#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(board#0, Tclass.Chess.ValidBoard())
           && $Is(king#0, Tclass.Shared.Piece())
           && $Is(byPiece#0, Tclass.Shared.PieceKind()))
       ==> (Lit(Shared.PieceKind.Knight_q(Lit(byPiece#0)))
           ==> (
              Shared.PieceKind.Knight_q(Lit(byPiece#0))
               || Shared.PieceKind.King_q(Lit(byPiece#0))
               || Shared.PieceKind.Pawn_q(Lit(byPiece#0)))
             && (Lit(Shared.Color.Black_q(Lit(Shared.PieceKind.c(Lit(byPiece#0)))))
               ==> Shared.Board.Board_q(Lit(board#0))
                 && Shared.Piece.Piece_q(Lit(king#0))
                 && Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType, 
                  Lit(Shared.Piece.at(Lit(king#0))))
                 && (!Shared.Piece.Attacks($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType, 
                    Lit(Shared.Piece.at(Lit(king#0))))
                   ==> Shared.Board.Board_q(Lit(board#0))
                     && Shared.Piece.Piece_q(Lit(king#0))
                     && Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType, 
                      Lit(Shared.Piece.at(Lit(king#0)))))))
         && (!Lit(Shared.PieceKind.Knight_q(Lit(byPiece#0)))
           ==> 
          !Lit(Shared.PieceKind.King_q(Lit(byPiece#0)))
           ==> (
              Shared.PieceKind.Knight_q(Lit(byPiece#0))
               || Shared.PieceKind.King_q(Lit(byPiece#0))
               || Shared.PieceKind.Pawn_q(Lit(byPiece#0)))
             && (Lit(Shared.Color.Black_q(Lit(Shared.PieceKind.c(Lit(byPiece#0)))))
               ==> Shared.Board.Board_q(Lit(board#0))
                 && Shared.Piece.Piece_q(Lit(king#0))
                 && Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType, 
                  Lit(Shared.Piece.at(Lit(king#0))))
                 && (!Shared.Piece.Attacks($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType, 
                    Lit(Shared.Piece.at(Lit(king#0))))
                   ==> Shared.Board.Board_q(Lit(board#0))
                     && Shared.Piece.Piece_q(Lit(king#0))
                     && Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType, 
                      Lit(Shared.Piece.at(Lit(king#0)))))))
         && Chess.__default.CheckedByPiece(Lit(board#0), Lit(king#0), Lit(byPiece#0))
           == (if Shared.PieceKind.Knight_q(Lit(byPiece#0))
             then (if Shared.Color.Black_q(Lit(Shared.PieceKind.c(Lit(byPiece#0))))
               then Shared.Piece.Attacks($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(1))): DatatypeType, 
                  Lit(Shared.Piece.at(Lit(king#0))))
                 || Shared.Piece.Attacks($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(2))): DatatypeType, 
                  Lit(Shared.Piece.at(Lit(king#0))))
               else false)
             else (if Shared.PieceKind.King_q(Lit(byPiece#0))
               then false
               else (if Shared.Color.Black_q(Lit(Shared.PieceKind.c(Lit(byPiece#0))))
                 then Shared.Piece.Attacks($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(3))): DatatypeType, 
                    Lit(Shared.Piece.at(Lit(king#0))))
                   || Shared.Piece.Attacks($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(board#0))), LitInt(4))): DatatypeType, 
                    Lit(Shared.Piece.at(Lit(king#0))))
                 else false))));
}

function Chess.__default.CheckedByPiece#canCall(board#0: DatatypeType, king#0: DatatypeType, byPiece#0: DatatypeType) : bool;

function Chess.__default.CheckedByPiece#requires(DatatypeType, DatatypeType, DatatypeType) : bool;

// #requires axiom for Chess.__default.CheckedByPiece
axiom (forall board#0: DatatypeType, king#0: DatatypeType, byPiece#0: DatatypeType :: 
  { Chess.__default.CheckedByPiece#requires(board#0, king#0, byPiece#0) } 
  $Is(board#0, Tclass.Chess.ValidBoard())
       && $Is(king#0, Tclass.Shared.Piece())
       && $Is(byPiece#0, Tclass.Shared.PieceKind())
     ==> Chess.__default.CheckedByPiece#requires(board#0, king#0, byPiece#0) == true);

procedure {:verboseName "Chess.CheckedByPiece (well-formedness)"} CheckWellformed$$Chess.__default.CheckedByPiece(board#0: DatatypeType where $Is(board#0, Tclass.Chess.ValidBoard()), 
    king#0: DatatypeType where $Is(king#0, Tclass.Shared.Piece()), 
    byPiece#0: DatatypeType where $Is(byPiece#0, Tclass.Shared.PieceKind()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



function Tclass.Shared.ChessPos() : Ty
uses {
// Tclass.Shared.ChessPos Tag
axiom Tag(Tclass.Shared.ChessPos()) == Tagclass.Shared.ChessPos
   && TagFamily(Tclass.Shared.ChessPos()) == tytagFamily$ChessPos;
}

const unique Tagclass.Shared.ChessPos: TyTag;

// Box/unbox axiom for Tclass.Shared.ChessPos
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Shared.ChessPos()) } 
  $IsBox(bx, Tclass.Shared.ChessPos())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Shared.ChessPos()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Chess.CheckedByPiece (well-formedness)"} CheckWellformed$$Chess.__default.CheckedByPiece(board#0: DatatypeType, king#0: DatatypeType, byPiece#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#4#0: DatatypeType;
  var ##pos#0: DatatypeType;
  var ##pos#1: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var _mcc#0#0: DatatypeType;
  var ##pos#2: DatatypeType;
  var ##pos#3: DatatypeType;


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
        if (byPiece#0 == #Shared.PieceKind.Knight(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass.Shared.Color());
            if (_mcc#0#0 == #Shared.Color.Black())
            {
                assume Shared.Board.Board_q(board#0);
                assert {:id "id39"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(Shared.Board.pieces(board#0));
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1)), Tclass.Shared.Piece(), $Heap);
                assume Shared.Piece.Piece_q(king#0);
                ##pos#2 := Shared.Piece.at(king#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##pos#2, Tclass.Shared.ChessPos(), $Heap);
                assume Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType, 
                  Shared.Piece.at(king#0));
                if (!Shared.Piece.Attacks($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType, 
                  Shared.Piece.at(king#0)))
                {
                    assume Shared.Board.Board_q(board#0);
                    assert {:id "id40"} 0 <= LitInt(2) && LitInt(2) < Seq#Length(Shared.Board.pieces(board#0));
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2)), Tclass.Shared.Piece(), $Heap);
                    assume Shared.Piece.Piece_q(king#0);
                    ##pos#3 := Shared.Piece.at(king#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##pos#3, Tclass.Shared.ChessPos(), $Heap);
                    assume Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType, 
                      Shared.Piece.at(king#0));
                }

                assume {:id "id41"} Chess.__default.CheckedByPiece(board#0, king#0, byPiece#0)
                   == (Shared.Piece.Attacks($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType, 
                      Shared.Piece.at(king#0))
                     || Shared.Piece.Attacks($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType, 
                      Shared.Piece.at(king#0)));
                assume Shared.Board.Board_q(board#0)
                   && Shared.Piece.Piece_q(king#0)
                   && Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType, 
                    Shared.Piece.at(king#0))
                   && (!Shared.Piece.Attacks($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(1))): DatatypeType, 
                      Shared.Piece.at(king#0))
                     ==> Shared.Board.Board_q(board#0)
                       && Shared.Piece.Piece_q(king#0)
                       && Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(2))): DatatypeType, 
                        Shared.Piece.at(king#0)));
                // CheckWellformedWithResult: any expression
                assume $Is(Chess.__default.CheckedByPiece(board#0, king#0, byPiece#0), TBool);
                return;
            }
            else if (_mcc#0#0 == #Shared.Color.White())
            {
                assume {:id "id38"} Chess.__default.CheckedByPiece(board#0, king#0, byPiece#0) == Lit(false);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(Chess.__default.CheckedByPiece(board#0, king#0, byPiece#0), TBool);
                return;
            }
            else
            {
                assume false;
            }
        }
        else if (byPiece#0 == #Shared.PieceKind.King(_mcc#2#0))
        {
            assume $Is(_mcc#2#0, Tclass.Shared.Color());
            assume {:id "id37"} Chess.__default.CheckedByPiece(board#0, king#0, byPiece#0) == Lit(false);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(Chess.__default.CheckedByPiece(board#0, king#0, byPiece#0), TBool);
            return;
        }
        else if (byPiece#0 == #Shared.PieceKind.Pawn(_mcc#4#0))
        {
            assume $Is(_mcc#4#0, Tclass.Shared.Color());
            if (_mcc#4#0 == #Shared.Color.Black())
            {
                assume Shared.Board.Board_q(board#0);
                assert {:id "id34"} 0 <= LitInt(3) && LitInt(3) < Seq#Length(Shared.Board.pieces(board#0));
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3)), Tclass.Shared.Piece(), $Heap);
                assume Shared.Piece.Piece_q(king#0);
                ##pos#0 := Shared.Piece.at(king#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##pos#0, Tclass.Shared.ChessPos(), $Heap);
                assume Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType, 
                  Shared.Piece.at(king#0));
                if (!Shared.Piece.Attacks($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType, 
                  Shared.Piece.at(king#0)))
                {
                    assume Shared.Board.Board_q(board#0);
                    assert {:id "id35"} 0 <= LitInt(4) && LitInt(4) < Seq#Length(Shared.Board.pieces(board#0));
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4)), Tclass.Shared.Piece(), $Heap);
                    assume Shared.Piece.Piece_q(king#0);
                    ##pos#1 := Shared.Piece.at(king#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##pos#1, Tclass.Shared.ChessPos(), $Heap);
                    assume Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType, 
                      Shared.Piece.at(king#0));
                }

                assume {:id "id36"} Chess.__default.CheckedByPiece(board#0, king#0, byPiece#0)
                   == (Shared.Piece.Attacks($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType, 
                      Shared.Piece.at(king#0))
                     || Shared.Piece.Attacks($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType, 
                      Shared.Piece.at(king#0)));
                assume Shared.Board.Board_q(board#0)
                   && Shared.Piece.Piece_q(king#0)
                   && Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType, 
                    Shared.Piece.at(king#0))
                   && (!Shared.Piece.Attacks($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(3))): DatatypeType, 
                      Shared.Piece.at(king#0))
                     ==> Shared.Board.Board_q(board#0)
                       && Shared.Piece.Piece_q(king#0)
                       && Shared.Piece.Attacks#canCall($Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(4))): DatatypeType, 
                        Shared.Piece.at(king#0)));
                // CheckWellformedWithResult: any expression
                assume $Is(Chess.__default.CheckedByPiece(board#0, king#0, byPiece#0), TBool);
                return;
            }
            else if (_mcc#4#0 == #Shared.Color.White())
            {
                assume {:id "id33"} Chess.__default.CheckedByPiece(board#0, king#0, byPiece#0) == Lit(false);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(Chess.__default.CheckedByPiece(board#0, king#0, byPiece#0), TBool);
                return;
            }
            else
            {
                assume false;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for Chess._default.CheckmatedByPlayer
function Chess.__default.CheckmatedByPlayer(board#0: DatatypeType, king#0: DatatypeType, byPlayer#0: DatatypeType) : bool
uses {
// definition axiom for Chess.__default.CheckmatedByPlayer (revealed)
axiom {:id "id42"} 4 <= $FunctionContextHeight
   ==> (forall board#0: DatatypeType, king#0: DatatypeType, byPlayer#0: DatatypeType :: 
    { Chess.__default.CheckmatedByPlayer(board#0, king#0, byPlayer#0) } 
    Chess.__default.CheckmatedByPlayer#canCall(board#0, king#0, byPlayer#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(board#0, Tclass.Chess.ValidBoard())
           && $Is(king#0, Tclass.Shared.Piece())
           && $Is(byPlayer#0, Tclass.Shared.Color()))
       ==> Shared.Piece.Piece_q(king#0)
         && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
         && (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(0)
           ==> Shared.Piece.Piece_q(king#0)
             && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
             && (Shared.Pos.col(Shared.Piece.at(king#0)) != LitInt(7)
               ==> Shared.Piece.Piece_q(king#0)
                 && 
                Shared.Piece.Piece_q(king#0)
                 && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                 && 
                Shared.Piece.Piece_q(king#0)
                 && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                 && Chess.__default.CheckedByPlayer#canCall(board#0, 
                  #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                    #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                      Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                  byPlayer#0)))
         && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0)
           ==> Shared.Piece.Piece_q(king#0)
             && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
             && (Shared.Pos.col(Shared.Piece.at(king#0)) != LitInt(7)
               ==> Shared.Piece.Piece_q(king#0)
                 && 
                Shared.Piece.Piece_q(king#0)
                 && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                 && 
                Shared.Piece.Piece_q(king#0)
                 && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                 && Chess.__default.CheckedByPlayer#canCall(board#0, 
                  #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                    #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                      Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                  byPlayer#0))
             && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
                 || Chess.__default.CheckedByPlayer(board#0, 
                  #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                    #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                      Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                  byPlayer#0)
               ==> Shared.Piece.Piece_q(king#0)
                 && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                 && (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(7)
                   ==> Shared.Piece.Piece_q(king#0)
                     && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                     && (Shared.Pos.col(Shared.Piece.at(king#0)) != LitInt(7)
                       ==> Shared.Piece.Piece_q(king#0)
                         && 
                        Shared.Piece.Piece_q(king#0)
                         && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                         && 
                        Shared.Piece.Piece_q(king#0)
                         && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                         && Chess.__default.CheckedByPlayer#canCall(board#0, 
                          #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                            #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                              Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                          byPlayer#0)))
                 && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
                     || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
                     || Chess.__default.CheckedByPlayer(board#0, 
                      #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                        #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                          Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                      byPlayer#0)
                   ==> Shared.Piece.Piece_q(king#0)
                     && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                     && (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(0)
                       ==> Shared.Piece.Piece_q(king#0)
                         && 
                        Shared.Piece.Piece_q(king#0)
                         && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                         && 
                        Shared.Piece.Piece_q(king#0)
                         && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                         && Chess.__default.CheckedByPlayer#canCall(board#0, 
                          #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                            #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                              Shared.Pos.col(Shared.Piece.at(king#0)))), 
                          byPlayer#0))
                     && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
                         || Chess.__default.CheckedByPlayer(board#0, 
                          #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                            #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                              Shared.Pos.col(Shared.Piece.at(king#0)))), 
                          byPlayer#0)
                       ==> Chess.__default.CheckedByPlayer#canCall(board#0, king#0, byPlayer#0)
                         && (Chess.__default.CheckedByPlayer(board#0, king#0, byPlayer#0)
                           ==> Shared.Piece.Piece_q(king#0)
                             && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                             && (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(7)
                               ==> Shared.Piece.Piece_q(king#0)
                                 && 
                                Shared.Piece.Piece_q(king#0)
                                 && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                 && 
                                Shared.Piece.Piece_q(king#0)
                                 && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                 && Chess.__default.CheckedByPlayer#canCall(board#0, 
                                  #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                                    #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                                      Shared.Pos.col(Shared.Piece.at(king#0)))), 
                                  byPlayer#0))
                             && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
                                 || Chess.__default.CheckedByPlayer(board#0, 
                                  #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                                    #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                                      Shared.Pos.col(Shared.Piece.at(king#0)))), 
                                  byPlayer#0)
                               ==> Shared.Piece.Piece_q(king#0)
                                 && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                 && (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(0)
                                   ==> Shared.Piece.Piece_q(king#0)
                                     && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                     && (Shared.Pos.col(Shared.Piece.at(king#0)) != LitInt(0)
                                       ==> Shared.Piece.Piece_q(king#0)
                                         && 
                                        Shared.Piece.Piece_q(king#0)
                                         && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                         && 
                                        Shared.Piece.Piece_q(king#0)
                                         && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                         && Chess.__default.CheckedByPlayer#canCall(board#0, 
                                          #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                                            #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                                              Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                                          byPlayer#0)))
                                 && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
                                     || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(0)
                                     || Chess.__default.CheckedByPlayer(board#0, 
                                      #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                                        #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                                          Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                                      byPlayer#0)
                                   ==> Shared.Piece.Piece_q(king#0)
                                     && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                     && (Shared.Pos.col(Shared.Piece.at(king#0)) != LitInt(0)
                                       ==> Shared.Piece.Piece_q(king#0)
                                         && 
                                        Shared.Piece.Piece_q(king#0)
                                         && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                         && 
                                        Shared.Piece.Piece_q(king#0)
                                         && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                         && Chess.__default.CheckedByPlayer#canCall(board#0, 
                                          #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                                            #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                                              Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                                          byPlayer#0))
                                     && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(0)
                                         || Chess.__default.CheckedByPlayer(board#0, 
                                          #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                                            #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                                              Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                                          byPlayer#0)
                                       ==> Shared.Piece.Piece_q(king#0)
                                         && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                         && (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(7)
                                           ==> Shared.Piece.Piece_q(king#0)
                                             && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                             && (Shared.Pos.col(Shared.Piece.at(king#0)) != LitInt(0)
                                               ==> Shared.Piece.Piece_q(king#0)
                                                 && 
                                                Shared.Piece.Piece_q(king#0)
                                                 && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                                 && 
                                                Shared.Piece.Piece_q(king#0)
                                                 && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                                 && Chess.__default.CheckedByPlayer#canCall(board#0, 
                                                  #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                                                    #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                                                      Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                                                  byPlayer#0)))))))))))
         && Chess.__default.CheckmatedByPlayer(board#0, king#0, byPlayer#0)
           == (
            (
              Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
               || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                byPlayer#0))
             && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                    Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                byPlayer#0))
             && (
              Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
               || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                byPlayer#0))
             && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)))), 
                byPlayer#0))
             && Chess.__default.CheckedByPlayer(board#0, king#0, byPlayer#0)
             && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)))), 
                byPlayer#0))
             && (
              Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
               || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(0)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                byPlayer#0))
             && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(0)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                    Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                byPlayer#0))
             && (
              Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
               || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(0)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                byPlayer#0))));
// definition axiom for Chess.__default.CheckmatedByPlayer for all literals (revealed)
axiom {:id "id43"} 4 <= $FunctionContextHeight
   ==> (forall board#0: DatatypeType, king#0: DatatypeType, byPlayer#0: DatatypeType :: 
    {:weight 3} { Chess.__default.CheckmatedByPlayer(Lit(board#0), Lit(king#0), Lit(byPlayer#0)) } 
    Chess.__default.CheckmatedByPlayer#canCall(Lit(board#0), Lit(king#0), Lit(byPlayer#0))
         || (4 < $FunctionContextHeight
           && 
          $Is(board#0, Tclass.Chess.ValidBoard())
           && $Is(king#0, Tclass.Shared.Piece())
           && $Is(byPlayer#0, Tclass.Shared.Color()))
       ==> Shared.Piece.Piece_q(Lit(king#0))
         && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
         && (LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) != LitInt(0)
           ==> Shared.Piece.Piece_q(Lit(king#0))
             && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
             && (LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) != LitInt(7)
               ==> Shared.Piece.Piece_q(Lit(king#0))
                 && 
                Shared.Piece.Piece_q(Lit(king#0))
                 && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                 && 
                Shared.Piece.Piece_q(Lit(king#0))
                 && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                 && Chess.__default.CheckedByPlayer#canCall(Lit(board#0), 
                  Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                      Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) - 1), 
                          LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) + 1))))), 
                  Lit(byPlayer#0))))
         && (LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(0)
             || LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(7)
             || Chess.__default.CheckedByPlayer(Lit(board#0), 
              Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                  Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) - 1), 
                      LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) + 1))))), 
              Lit(byPlayer#0))
           ==> Shared.Piece.Piece_q(Lit(king#0))
             && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
             && (LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) != LitInt(7)
               ==> Shared.Piece.Piece_q(Lit(king#0))
                 && 
                Shared.Piece.Piece_q(Lit(king#0))
                 && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                 && 
                Shared.Piece.Piece_q(Lit(king#0))
                 && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                 && Chess.__default.CheckedByPlayer#canCall(Lit(board#0), 
                  Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                      Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))), 
                          LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) + 1))))), 
                  Lit(byPlayer#0)))
             && (LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(7)
                 || Chess.__default.CheckedByPlayer(Lit(board#0), 
                  Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                      Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))), 
                          LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) + 1))))), 
                  Lit(byPlayer#0))
               ==> Shared.Piece.Piece_q(Lit(king#0))
                 && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                 && (LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) != LitInt(7)
                   ==> Shared.Piece.Piece_q(Lit(king#0))
                     && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                     && (LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) != LitInt(7)
                       ==> Shared.Piece.Piece_q(Lit(king#0))
                         && 
                        Shared.Piece.Piece_q(Lit(king#0))
                         && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                         && 
                        Shared.Piece.Piece_q(Lit(king#0))
                         && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                         && Chess.__default.CheckedByPlayer#canCall(Lit(board#0), 
                          Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                              Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) + 1), 
                                  LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) + 1))))), 
                          Lit(byPlayer#0))))
                 && (LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(7)
                     || LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(7)
                     || Chess.__default.CheckedByPlayer(Lit(board#0), 
                      Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                          Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) + 1), 
                              LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) + 1))))), 
                      Lit(byPlayer#0))
                   ==> Shared.Piece.Piece_q(Lit(king#0))
                     && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                     && (LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) != LitInt(0)
                       ==> Shared.Piece.Piece_q(Lit(king#0))
                         && 
                        Shared.Piece.Piece_q(Lit(king#0))
                         && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                         && 
                        Shared.Piece.Piece_q(Lit(king#0))
                         && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                         && Chess.__default.CheckedByPlayer#canCall(Lit(board#0), 
                          Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                              Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) - 1), 
                                  LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))))))), 
                          Lit(byPlayer#0)))
                     && (LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(0)
                         || Chess.__default.CheckedByPlayer(Lit(board#0), 
                          Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                              Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) - 1), 
                                  LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))))))), 
                          Lit(byPlayer#0))
                       ==> Chess.__default.CheckedByPlayer#canCall(Lit(board#0), Lit(king#0), Lit(byPlayer#0))
                         && (Lit(Chess.__default.CheckedByPlayer(Lit(board#0), Lit(king#0), Lit(byPlayer#0)))
                           ==> Shared.Piece.Piece_q(Lit(king#0))
                             && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                             && (LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) != LitInt(7)
                               ==> Shared.Piece.Piece_q(Lit(king#0))
                                 && 
                                Shared.Piece.Piece_q(Lit(king#0))
                                 && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                                 && 
                                Shared.Piece.Piece_q(Lit(king#0))
                                 && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                                 && Chess.__default.CheckedByPlayer#canCall(Lit(board#0), 
                                  Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                                      Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) + 1), 
                                          LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))))))), 
                                  Lit(byPlayer#0)))
                             && (LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(7)
                                 || Chess.__default.CheckedByPlayer(Lit(board#0), 
                                  Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                                      Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) + 1), 
                                          LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))))))), 
                                  Lit(byPlayer#0))
                               ==> Shared.Piece.Piece_q(Lit(king#0))
                                 && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                                 && (LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) != LitInt(0)
                                   ==> Shared.Piece.Piece_q(Lit(king#0))
                                     && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                                     && (LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) != LitInt(0)
                                       ==> Shared.Piece.Piece_q(Lit(king#0))
                                         && 
                                        Shared.Piece.Piece_q(Lit(king#0))
                                         && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                                         && 
                                        Shared.Piece.Piece_q(Lit(king#0))
                                         && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                                         && Chess.__default.CheckedByPlayer#canCall(Lit(board#0), 
                                          Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                                              Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) - 1), 
                                                  LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) - 1))))), 
                                          Lit(byPlayer#0))))
                                 && (LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(0)
                                     || LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(0)
                                     || Chess.__default.CheckedByPlayer(Lit(board#0), 
                                      Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                                          Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) - 1), 
                                              LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) - 1))))), 
                                      Lit(byPlayer#0))
                                   ==> Shared.Piece.Piece_q(Lit(king#0))
                                     && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                                     && (LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) != LitInt(0)
                                       ==> Shared.Piece.Piece_q(Lit(king#0))
                                         && 
                                        Shared.Piece.Piece_q(Lit(king#0))
                                         && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                                         && 
                                        Shared.Piece.Piece_q(Lit(king#0))
                                         && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                                         && Chess.__default.CheckedByPlayer#canCall(Lit(board#0), 
                                          Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                                              Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))), 
                                                  LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) - 1))))), 
                                          Lit(byPlayer#0)))
                                     && (LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(0)
                                         || Chess.__default.CheckedByPlayer(Lit(board#0), 
                                          Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                                              Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))), 
                                                  LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) - 1))))), 
                                          Lit(byPlayer#0))
                                       ==> Shared.Piece.Piece_q(Lit(king#0))
                                         && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                                         && (LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) != LitInt(7)
                                           ==> Shared.Piece.Piece_q(Lit(king#0))
                                             && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                                             && (LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) != LitInt(0)
                                               ==> Shared.Piece.Piece_q(Lit(king#0))
                                                 && 
                                                Shared.Piece.Piece_q(Lit(king#0))
                                                 && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                                                 && 
                                                Shared.Piece.Piece_q(Lit(king#0))
                                                 && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(king#0))))
                                                 && Chess.__default.CheckedByPlayer#canCall(Lit(board#0), 
                                                  Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                                                      Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) + 1), 
                                                          LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) - 1))))), 
                                                  Lit(byPlayer#0))))))))))))
         && Chess.__default.CheckmatedByPlayer(Lit(board#0), Lit(king#0), Lit(byPlayer#0))
           == (
            (
              LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(0)
               || LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(7)
               || Chess.__default.CheckedByPlayer(Lit(board#0), 
                Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                    Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) - 1), 
                        LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) + 1))))), 
                Lit(byPlayer#0)))
             && (LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(7)
               || Chess.__default.CheckedByPlayer(Lit(board#0), 
                Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                    Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))), 
                        LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) + 1))))), 
                Lit(byPlayer#0)))
             && (
              LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(7)
               || LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(7)
               || Chess.__default.CheckedByPlayer(Lit(board#0), 
                Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                    Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) + 1), 
                        LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) + 1))))), 
                Lit(byPlayer#0)))
             && (LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(0)
               || Chess.__default.CheckedByPlayer(Lit(board#0), 
                Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                    Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) - 1), 
                        LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))))))), 
                Lit(byPlayer#0)))
             && Chess.__default.CheckedByPlayer(Lit(board#0), Lit(king#0), Lit(byPlayer#0))
             && (LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(7)
               || Chess.__default.CheckedByPlayer(Lit(board#0), 
                Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                    Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) + 1), 
                        LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))))))), 
                Lit(byPlayer#0)))
             && (
              LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(0)
               || LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(0)
               || Chess.__default.CheckedByPlayer(Lit(board#0), 
                Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                    Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) - 1), 
                        LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) - 1))))), 
                Lit(byPlayer#0)))
             && (LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(0)
               || Chess.__default.CheckedByPlayer(Lit(board#0), 
                Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                    Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))), 
                        LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) - 1))))), 
                Lit(byPlayer#0)))
             && (
              LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(7)
               || LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0))))) == LitInt(0)
               || Chess.__default.CheckedByPlayer(Lit(board#0), 
                Lit(#Shared.Piece.Piece(Lit(Shared.Piece.kind(Lit(king#0))), 
                    Lit(#Shared.Pos.Pos(LitInt(Shared.Pos.row(Lit(Shared.Piece.at(Lit(king#0)))) + 1), 
                        LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(king#0)))) - 1))))), 
                Lit(byPlayer#0)))));
}

function Chess.__default.CheckmatedByPlayer#canCall(board#0: DatatypeType, king#0: DatatypeType, byPlayer#0: DatatypeType) : bool;

function Chess.__default.CheckmatedByPlayer#requires(DatatypeType, DatatypeType, DatatypeType) : bool;

// #requires axiom for Chess.__default.CheckmatedByPlayer
axiom (forall board#0: DatatypeType, king#0: DatatypeType, byPlayer#0: DatatypeType :: 
  { Chess.__default.CheckmatedByPlayer#requires(board#0, king#0, byPlayer#0) } 
  $Is(board#0, Tclass.Chess.ValidBoard())
       && $Is(king#0, Tclass.Shared.Piece())
       && $Is(byPlayer#0, Tclass.Shared.Color())
     ==> Chess.__default.CheckmatedByPlayer#requires(board#0, king#0, byPlayer#0) == true);

procedure {:verboseName "Chess.CheckmatedByPlayer (well-formedness)"} CheckWellformed$$Chess.__default.CheckmatedByPlayer(board#0: DatatypeType where $Is(board#0, Tclass.Chess.ValidBoard()), 
    king#0: DatatypeType where $Is(king#0, Tclass.Shared.Piece()), 
    byPlayer#0: DatatypeType where $Is(byPlayer#0, Tclass.Shared.Color()));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Chess.CheckmatedByPlayer (well-formedness)"} CheckWellformed$$Chess.__default.CheckmatedByPlayer(board#0: DatatypeType, king#0: DatatypeType, byPlayer#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##board#0: DatatypeType;
  var ##king#0: DatatypeType;
  var ##byPlayer#0: DatatypeType;
  var ##board#1: DatatypeType;
  var ##king#1: DatatypeType;
  var ##byPlayer#1: DatatypeType;
  var ##board#2: DatatypeType;
  var ##king#2: DatatypeType;
  var ##byPlayer#2: DatatypeType;
  var ##board#3: DatatypeType;
  var ##king#3: DatatypeType;
  var ##byPlayer#3: DatatypeType;
  var ##board#4: DatatypeType;
  var ##king#4: DatatypeType;
  var ##byPlayer#4: DatatypeType;
  var ##board#5: DatatypeType;
  var ##king#5: DatatypeType;
  var ##byPlayer#5: DatatypeType;
  var ##board#6: DatatypeType;
  var ##king#6: DatatypeType;
  var ##byPlayer#6: DatatypeType;
  var ##board#7: DatatypeType;
  var ##king#7: DatatypeType;
  var ##byPlayer#7: DatatypeType;
  var ##board#8: DatatypeType;
  var ##king#8: DatatypeType;
  var ##byPlayer#8: DatatypeType;


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
        assume Shared.Piece.Piece_q(king#0);
        assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
        if (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(0))
        {
            assume Shared.Piece.Piece_q(king#0);
            assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
        }

        if (!(Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
           || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)))
        {
            ##board#0 := board#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##board#0, Tclass.Chess.ValidBoard(), $Heap);
            assume Shared.Piece.Piece_q(king#0);
            assume Shared.Piece.Piece_q(king#0);
            assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
            assume Shared.Piece.Piece_q(king#0);
            assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
            assert {:id "id44"} $Is(#Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                Shared.Pos.col(Shared.Piece.at(king#0)) + 1), 
              Tclass.Shared.ChessPos());
            ##king#0 := #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
              #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                Shared.Pos.col(Shared.Piece.at(king#0)) + 1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##king#0, Tclass.Shared.Piece(), $Heap);
            ##byPlayer#0 := byPlayer#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##byPlayer#0, Tclass.Shared.Color(), $Heap);
            assume Chess.__default.CheckedByPlayer#canCall(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0);
        }

        if (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
           || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
           || Chess.__default.CheckedByPlayer(board#0, 
            #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
              #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
            byPlayer#0))
        {
            assume Shared.Piece.Piece_q(king#0);
            assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
            if (Shared.Pos.col(Shared.Piece.at(king#0)) != LitInt(7))
            {
                ##board#1 := board#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##board#1, Tclass.Chess.ValidBoard(), $Heap);
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
                assert {:id "id45"} $Is(#Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                    Shared.Pos.col(Shared.Piece.at(king#0)) + 1), 
                  Tclass.Shared.ChessPos());
                ##king#1 := #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                    Shared.Pos.col(Shared.Piece.at(king#0)) + 1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##king#1, Tclass.Shared.Piece(), $Heap);
                ##byPlayer#1 := byPlayer#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##byPlayer#1, Tclass.Shared.Color(), $Heap);
                assume Chess.__default.CheckedByPlayer#canCall(board#0, 
                  #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                    #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                      Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                  byPlayer#0);
            }
        }

        if ((
            Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0)))
        {
            assume Shared.Piece.Piece_q(king#0);
            assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
            if (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(7))
            {
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
            }

            if (!(Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
               || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)))
            {
                ##board#2 := board#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##board#2, Tclass.Chess.ValidBoard(), $Heap);
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
                assert {:id "id46"} $Is(#Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)) + 1), 
                  Tclass.Shared.ChessPos());
                ##king#2 := #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)) + 1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##king#2, Tclass.Shared.Piece(), $Heap);
                ##byPlayer#2 := byPlayer#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##byPlayer#2, Tclass.Shared.Color(), $Heap);
                assume Chess.__default.CheckedByPlayer#canCall(board#0, 
                  #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                    #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                      Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                  byPlayer#0);
            }
        }

        if ((
            Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (
            Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0)))
        {
            assume Shared.Piece.Piece_q(king#0);
            assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
            if (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(0))
            {
                ##board#3 := board#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##board#3, Tclass.Chess.ValidBoard(), $Heap);
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
                assert {:id "id47"} $Is(#Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0))), 
                  Tclass.Shared.ChessPos());
                ##king#3 := #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0))));
                // assume allocatedness for argument to function
                assume $IsAlloc(##king#3, Tclass.Shared.Piece(), $Heap);
                ##byPlayer#3 := byPlayer#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##byPlayer#3, Tclass.Shared.Color(), $Heap);
                assume Chess.__default.CheckedByPlayer#canCall(board#0, 
                  #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                    #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                      Shared.Pos.col(Shared.Piece.at(king#0)))), 
                  byPlayer#0);
            }
        }

        if ((
            Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (
            Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)))), 
              byPlayer#0)))
        {
            ##board#4 := board#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##board#4, Tclass.Chess.ValidBoard(), $Heap);
            ##king#4 := king#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##king#4, Tclass.Shared.Piece(), $Heap);
            ##byPlayer#4 := byPlayer#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##byPlayer#4, Tclass.Shared.Color(), $Heap);
            assume Chess.__default.CheckedByPlayer#canCall(board#0, king#0, byPlayer#0);
        }

        if ((
            Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (
            Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)))), 
              byPlayer#0))
           && Chess.__default.CheckedByPlayer(board#0, king#0, byPlayer#0))
        {
            assume Shared.Piece.Piece_q(king#0);
            assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
            if (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(7))
            {
                ##board#5 := board#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##board#5, Tclass.Chess.ValidBoard(), $Heap);
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
                assert {:id "id48"} $Is(#Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0))), 
                  Tclass.Shared.ChessPos());
                ##king#5 := #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0))));
                // assume allocatedness for argument to function
                assume $IsAlloc(##king#5, Tclass.Shared.Piece(), $Heap);
                ##byPlayer#5 := byPlayer#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##byPlayer#5, Tclass.Shared.Color(), $Heap);
                assume Chess.__default.CheckedByPlayer#canCall(board#0, 
                  #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                    #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                      Shared.Pos.col(Shared.Piece.at(king#0)))), 
                  byPlayer#0);
            }
        }

        if ((
            Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (
            Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)))), 
              byPlayer#0))
           && Chess.__default.CheckedByPlayer(board#0, king#0, byPlayer#0)
           && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)))), 
              byPlayer#0)))
        {
            assume Shared.Piece.Piece_q(king#0);
            assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
            if (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(0))
            {
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
            }

            if (!(Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
               || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(0)))
            {
                ##board#6 := board#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##board#6, Tclass.Chess.ValidBoard(), $Heap);
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
                assert {:id "id49"} $Is(#Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)) - 1), 
                  Tclass.Shared.ChessPos());
                ##king#6 := #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)) - 1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##king#6, Tclass.Shared.Piece(), $Heap);
                ##byPlayer#6 := byPlayer#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##byPlayer#6, Tclass.Shared.Color(), $Heap);
                assume Chess.__default.CheckedByPlayer#canCall(board#0, 
                  #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                    #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                      Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                  byPlayer#0);
            }
        }

        if ((
            Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (
            Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)))), 
              byPlayer#0))
           && Chess.__default.CheckedByPlayer(board#0, king#0, byPlayer#0)
           && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)))), 
              byPlayer#0))
           && (
            Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(0)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
              byPlayer#0)))
        {
            assume Shared.Piece.Piece_q(king#0);
            assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
            if (Shared.Pos.col(Shared.Piece.at(king#0)) != LitInt(0))
            {
                ##board#7 := board#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##board#7, Tclass.Chess.ValidBoard(), $Heap);
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
                assert {:id "id50"} $Is(#Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                    Shared.Pos.col(Shared.Piece.at(king#0)) - 1), 
                  Tclass.Shared.ChessPos());
                ##king#7 := #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                    Shared.Pos.col(Shared.Piece.at(king#0)) - 1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##king#7, Tclass.Shared.Piece(), $Heap);
                ##byPlayer#7 := byPlayer#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##byPlayer#7, Tclass.Shared.Color(), $Heap);
                assume Chess.__default.CheckedByPlayer#canCall(board#0, 
                  #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                    #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                      Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                  byPlayer#0);
            }
        }

        if ((
            Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (
            Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
              byPlayer#0))
           && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)))), 
              byPlayer#0))
           && Chess.__default.CheckedByPlayer(board#0, king#0, byPlayer#0)
           && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)))), 
              byPlayer#0))
           && (
            Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
             || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(0)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                  Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
              byPlayer#0))
           && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(0)
             || Chess.__default.CheckedByPlayer(board#0, 
              #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                  Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
              byPlayer#0)))
        {
            assume Shared.Piece.Piece_q(king#0);
            assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
            if (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(7))
            {
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
            }

            if (!(Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
               || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(0)))
            {
                ##board#8 := board#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##board#8, Tclass.Chess.ValidBoard(), $Heap);
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
                assume Shared.Piece.Piece_q(king#0);
                assume Shared.Pos.Pos_q(Shared.Piece.at(king#0));
                assert {:id "id51"} $Is(#Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)) - 1), 
                  Tclass.Shared.ChessPos());
                ##king#8 := #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)) - 1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##king#8, Tclass.Shared.Piece(), $Heap);
                ##byPlayer#8 := byPlayer#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##byPlayer#8, Tclass.Shared.Color(), $Heap);
                assume Chess.__default.CheckedByPlayer#canCall(board#0, 
                  #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                    #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                      Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                  byPlayer#0);
            }
        }

        assume {:id "id52"} Chess.__default.CheckmatedByPlayer(board#0, king#0, byPlayer#0)
           == (
            (
              Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
               || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                byPlayer#0))
             && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                    Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                byPlayer#0))
             && (
              Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
               || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                byPlayer#0))
             && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)))), 
                byPlayer#0))
             && Chess.__default.CheckedByPlayer(board#0, king#0, byPlayer#0)
             && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)))), 
                byPlayer#0))
             && (
              Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
               || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(0)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                byPlayer#0))
             && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(0)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                    Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                byPlayer#0))
             && (
              Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
               || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(0)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                byPlayer#0)));
        assume Shared.Piece.Piece_q(king#0)
           && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
           && (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(0)
             ==> Shared.Piece.Piece_q(king#0)
               && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
               && (Shared.Pos.col(Shared.Piece.at(king#0)) != LitInt(7)
                 ==> Shared.Piece.Piece_q(king#0)
                   && 
                  Shared.Piece.Piece_q(king#0)
                   && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                   && 
                  Shared.Piece.Piece_q(king#0)
                   && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                   && Chess.__default.CheckedByPlayer#canCall(board#0, 
                    #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                      #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                        Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                    byPlayer#0)))
           && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
               || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
               || Chess.__default.CheckedByPlayer(board#0, 
                #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                  #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                    Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                byPlayer#0)
             ==> Shared.Piece.Piece_q(king#0)
               && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
               && (Shared.Pos.col(Shared.Piece.at(king#0)) != LitInt(7)
                 ==> Shared.Piece.Piece_q(king#0)
                   && 
                  Shared.Piece.Piece_q(king#0)
                   && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                   && 
                  Shared.Piece.Piece_q(king#0)
                   && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                   && Chess.__default.CheckedByPlayer#canCall(board#0, 
                    #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                      #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                        Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                    byPlayer#0))
               && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
                   || Chess.__default.CheckedByPlayer(board#0, 
                    #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                      #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                        Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                    byPlayer#0)
                 ==> Shared.Piece.Piece_q(king#0)
                   && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                   && (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(7)
                     ==> Shared.Piece.Piece_q(king#0)
                       && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                       && (Shared.Pos.col(Shared.Piece.at(king#0)) != LitInt(7)
                         ==> Shared.Piece.Piece_q(king#0)
                           && 
                          Shared.Piece.Piece_q(king#0)
                           && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                           && 
                          Shared.Piece.Piece_q(king#0)
                           && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                           && Chess.__default.CheckedByPlayer#canCall(board#0, 
                            #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                              #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                                Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                            byPlayer#0)))
                   && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
                       || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(7)
                       || Chess.__default.CheckedByPlayer(board#0, 
                        #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                          #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                            Shared.Pos.col(Shared.Piece.at(king#0)) + 1)), 
                        byPlayer#0)
                     ==> Shared.Piece.Piece_q(king#0)
                       && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                       && (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(0)
                         ==> Shared.Piece.Piece_q(king#0)
                           && 
                          Shared.Piece.Piece_q(king#0)
                           && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                           && 
                          Shared.Piece.Piece_q(king#0)
                           && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                           && Chess.__default.CheckedByPlayer#canCall(board#0, 
                            #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                              #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                                Shared.Pos.col(Shared.Piece.at(king#0)))), 
                            byPlayer#0))
                       && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
                           || Chess.__default.CheckedByPlayer(board#0, 
                            #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                              #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                                Shared.Pos.col(Shared.Piece.at(king#0)))), 
                            byPlayer#0)
                         ==> Chess.__default.CheckedByPlayer#canCall(board#0, king#0, byPlayer#0)
                           && (Chess.__default.CheckedByPlayer(board#0, king#0, byPlayer#0)
                             ==> Shared.Piece.Piece_q(king#0)
                               && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                               && (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(7)
                                 ==> Shared.Piece.Piece_q(king#0)
                                   && 
                                  Shared.Piece.Piece_q(king#0)
                                   && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                   && 
                                  Shared.Piece.Piece_q(king#0)
                                   && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                   && Chess.__default.CheckedByPlayer#canCall(board#0, 
                                    #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                                      #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                                        Shared.Pos.col(Shared.Piece.at(king#0)))), 
                                    byPlayer#0))
                               && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(7)
                                   || Chess.__default.CheckedByPlayer(board#0, 
                                    #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                                      #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                                        Shared.Pos.col(Shared.Piece.at(king#0)))), 
                                    byPlayer#0)
                                 ==> Shared.Piece.Piece_q(king#0)
                                   && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                   && (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(0)
                                     ==> Shared.Piece.Piece_q(king#0)
                                       && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                       && (Shared.Pos.col(Shared.Piece.at(king#0)) != LitInt(0)
                                         ==> Shared.Piece.Piece_q(king#0)
                                           && 
                                          Shared.Piece.Piece_q(king#0)
                                           && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                           && 
                                          Shared.Piece.Piece_q(king#0)
                                           && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                           && Chess.__default.CheckedByPlayer#canCall(board#0, 
                                            #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                                              #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                                                Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                                            byPlayer#0)))
                                   && (Shared.Pos.row(Shared.Piece.at(king#0)) == LitInt(0)
                                       || Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(0)
                                       || Chess.__default.CheckedByPlayer(board#0, 
                                        #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                                          #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) - 1, 
                                            Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                                        byPlayer#0)
                                     ==> Shared.Piece.Piece_q(king#0)
                                       && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                       && (Shared.Pos.col(Shared.Piece.at(king#0)) != LitInt(0)
                                         ==> Shared.Piece.Piece_q(king#0)
                                           && 
                                          Shared.Piece.Piece_q(king#0)
                                           && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                           && 
                                          Shared.Piece.Piece_q(king#0)
                                           && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                           && Chess.__default.CheckedByPlayer#canCall(board#0, 
                                            #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                                              #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                                                Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                                            byPlayer#0))
                                       && (Shared.Pos.col(Shared.Piece.at(king#0)) == LitInt(0)
                                           || Chess.__default.CheckedByPlayer(board#0, 
                                            #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                                              #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)), 
                                                Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                                            byPlayer#0)
                                         ==> Shared.Piece.Piece_q(king#0)
                                           && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                           && (Shared.Pos.row(Shared.Piece.at(king#0)) != LitInt(7)
                                             ==> Shared.Piece.Piece_q(king#0)
                                               && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                               && (Shared.Pos.col(Shared.Piece.at(king#0)) != LitInt(0)
                                                 ==> Shared.Piece.Piece_q(king#0)
                                                   && 
                                                  Shared.Piece.Piece_q(king#0)
                                                   && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                                   && 
                                                  Shared.Piece.Piece_q(king#0)
                                                   && Shared.Pos.Pos_q(Shared.Piece.at(king#0))
                                                   && Chess.__default.CheckedByPlayer#canCall(board#0, 
                                                    #Shared.Piece.Piece(Shared.Piece.kind(king#0), 
                                                      #Shared.Pos.Pos(Shared.Pos.row(Shared.Piece.at(king#0)) + 1, 
                                                        Shared.Pos.col(Shared.Piece.at(king#0)) - 1)), 
                                                    byPlayer#0)))))))))));
        // CheckWellformedWithResult: any expression
        assume $Is(Chess.__default.CheckmatedByPlayer(board#0, king#0, byPlayer#0), TBool);
        return;

        assume false;
    }
}



procedure {:verboseName "Chess.Describe (well-formedness)"} {:testEntry} CheckWellFormed$$Chess.__default.Describe(board#0: DatatypeType
       where $Is(board#0, Tclass.Chess.ValidBoard())
         && $IsAlloc(board#0, Tclass.Chess.ValidBoard(), $Heap)
         && $IsA#Shared.Board(board#0));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Chess.Describe (call)"} {:testEntry} Call$$Chess.__default.Describe(board#0: DatatypeType
       where $Is(board#0, Tclass.Chess.ValidBoard())
         && $IsAlloc(board#0, Tclass.Chess.ValidBoard(), $Heap)
         && $IsA#Shared.Board(board#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Chess.Describe (correctness)"} {:testEntry} Impl$$Chess.__default.Describe(board#0: DatatypeType
       where $Is(board#0, Tclass.Chess.ValidBoard())
         && $IsAlloc(board#0, Tclass.Chess.ValidBoard(), $Heap)
         && $IsA#Shared.Board(board#0))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Chess.Describe (correctness)"} {:testEntry} Impl$$Chess.__default.Describe(board#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var whiteKing#0: DatatypeType
     where $Is(whiteKing#0, Tclass.Shared.Piece())
       && $IsAlloc(whiteKing#0, Tclass.Shared.Piece(), $Heap);
  var ##board#0: DatatypeType;
  var ##king#0: DatatypeType;
  var ##byPlayer#0: DatatypeType;
  var ##board#1: DatatypeType;
  var ##king#1: DatatypeType;
  var ##byPlayer#1: DatatypeType;

    // AddMethodImpl: Describe, Impl$$Chess.__default.Describe
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/blogposts/TestGenerationNoInliningEnumerativeDefinitions.dfy(64,19)
    assume true;
    assume Shared.Board.Board_q(board#0);
    assert {:id "id53"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(Shared.Board.pieces(board#0));
    assume Shared.Board.Board_q(board#0);
    whiteKing#0 := $Unbox(Seq#Index(Shared.Board.pieces(board#0), LitInt(0))): DatatypeType;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/blogposts/TestGenerationNoInliningEnumerativeDefinitions.dfy(65,5)
    assume true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/blogposts/TestGenerationNoInliningEnumerativeDefinitions.dfy(66,5)
    ##board#0 := board#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##board#0, Tclass.Chess.ValidBoard(), $Heap);
    ##king#0 := whiteKing#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##king#0, Tclass.Shared.Piece(), $Heap);
    ##byPlayer#0 := Lit(#Shared.Color.Black());
    // assume allocatedness for argument to function
    assume $IsAlloc(##byPlayer#0, Tclass.Shared.Color(), $Heap);
    assume Chess.__default.CheckedByPlayer#canCall(board#0, whiteKing#0, Lit(#Shared.Color.Black()));
    assume Chess.__default.CheckedByPlayer#canCall(board#0, whiteKing#0, Lit(#Shared.Color.Black()));
    if (Chess.__default.CheckedByPlayer(board#0, whiteKing#0, Lit(#Shared.Color.Black())))
    {
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/blogposts/TestGenerationNoInliningEnumerativeDefinitions.dfy(67,7)
        assume true;
        pop;
    }
    else
    {
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/blogposts/TestGenerationNoInliningEnumerativeDefinitions.dfy(69,7)
        assume true;
        pop;
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/blogposts/TestGenerationNoInliningEnumerativeDefinitions.dfy(71,5)
    ##board#1 := board#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##board#1, Tclass.Chess.ValidBoard(), $Heap);
    ##king#1 := whiteKing#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##king#1, Tclass.Shared.Piece(), $Heap);
    ##byPlayer#1 := Lit(#Shared.Color.Black());
    // assume allocatedness for argument to function
    assume $IsAlloc(##byPlayer#1, Tclass.Shared.Color(), $Heap);
    assume Chess.__default.CheckmatedByPlayer#canCall(board#0, whiteKing#0, Lit(#Shared.Color.Black()));
    assume Chess.__default.CheckmatedByPlayer#canCall(board#0, whiteKing#0, Lit(#Shared.Color.Black()));
    if (Chess.__default.CheckmatedByPlayer(board#0, whiteKing#0, Lit(#Shared.Color.Black())))
    {
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/blogposts/TestGenerationNoInliningEnumerativeDefinitions.dfy(72,7)
        assume true;
    }
    else
    {
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/blogposts/TestGenerationNoInliningEnumerativeDefinitions.dfy(74,7)
        assume true;
    }
}



procedure {:verboseName "Chess.ValidBoard (well-formedness)"} CheckWellFormed$$Chess.ValidBoard(board#0: DatatypeType);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Chess.ValidBoard (well-formedness)"} CheckWellFormed$$Chess.ValidBoard(board#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##board#0: DatatypeType;


    // AddWellformednessCheck for subset type ValidBoard
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(board#0, Tclass.Shared.Board());
        ##board#0 := board#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##board#0, Tclass.Shared.Board(), $Heap);
        assume Chess.__default.BoardIsValid#canCall(board#0);
        assume {:id "id55"} Chess.__default.BoardIsValid(board#0);
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assert {:id "id56"} $Is(Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))), Tclass.Shared.ChessPos());
        assert {:id "id57"} $Is(Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))), Tclass.Shared.ChessPos());
        assert {:id "id58"} $Is(Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))), Tclass.Shared.ChessPos());
        assert {:id "id59"} $Is(Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))), Tclass.Shared.ChessPos());
        assert {:id "id60"} $Is(Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))), Tclass.Shared.ChessPos());
        assume Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))));
        assert {:id "id61"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || Seq#Length(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))))
               == LitInt(5);
        assert {:id "id62"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(0))): DatatypeType), 
              #Shared.PieceKind.King(Lit(#Shared.Color.White())));
        assert {:id "id63"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(1))): DatatypeType), 
              #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())));
        assert {:id "id64"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(2))): DatatypeType), 
              #Shared.PieceKind.Knight(Lit(#Shared.Color.Black())));
        assert {:id "id65"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(3))): DatatypeType), 
              #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())));
        assert {:id "id66"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || Shared.PieceKind#Equal(Shared.Piece.kind($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(4))): DatatypeType), 
              #Shared.PieceKind.Pawn(Lit(#Shared.Color.Black())));
        assert {:id "id67"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(1))): DatatypeType));
        assert {:id "id68"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(2))): DatatypeType));
        assert {:id "id69"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(3))): DatatypeType));
        assert {:id "id70"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(0))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(4))): DatatypeType));
        assert {:id "id71"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(1))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(2))): DatatypeType));
        assert {:id "id72"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(1))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(3))): DatatypeType));
        assert {:id "id73"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(1))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(4))): DatatypeType));
        assert {:id "id74"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(2))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(3))): DatatypeType));
        assert {:id "id75"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(2))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(4))): DatatypeType));
        assert {:id "id76"} {:subsumption 0} Chess.__default.BoardIsValid#canCall(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))
           ==> Lit(Chess.__default.BoardIsValid(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                              $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                    Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                            $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                  Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                          $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4))))))))))))
             || !Shared.Pos#Equal(Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(3))): DatatypeType), 
              Shared.Piece.at($Unbox(Seq#Index(Lit(Shared.Board.pieces(Lit(#Shared.Board.Board(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, 
                                        $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.King(Lit(#Shared.Color.White()))), 
                                              Lit(#Shared.Pos.Pos(LitInt(0), LitInt(0))))))), 
                                      $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                            Lit(#Shared.Pos.Pos(LitInt(0), LitInt(1))))))), 
                                    $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Knight(Lit(#Shared.Color.Black()))), 
                                          Lit(#Shared.Pos.Pos(LitInt(0), LitInt(2))))))), 
                                  $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                        Lit(#Shared.Pos.Pos(LitInt(0), LitInt(3))))))), 
                                $Box(Lit(#Shared.Piece.Piece(Lit(#Shared.PieceKind.Pawn(Lit(#Shared.Color.Black()))), 
                                      Lit(#Shared.Pos.Pos(LitInt(0), LitInt(4)))))))))))), 
                    LitInt(4))): DatatypeType));
        assume false;
    }
}



// $Is axiom for subset type Chess.ValidBoard
axiom (forall board#0: DatatypeType :: 
  { $Is(board#0, Tclass.Chess.ValidBoard()) } 
  $Is(board#0, Tclass.Chess.ValidBoard())
     <==> $Is(board#0, Tclass.Shared.Board()) && Chess.__default.BoardIsValid(board#0));

// $IsAlloc axiom for subset type Chess.ValidBoard
axiom (forall board#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(board#0, Tclass.Chess.ValidBoard(), $h) } 
  $IsAlloc(board#0, Tclass.Chess.ValidBoard(), $h)
     <==> $IsAlloc(board#0, Tclass.Shared.Board(), $h));

const unique class.Shared.__default: ClassName;

// function declaration for Shared._default.abs
function Shared.__default.abs(n#0: int) : int;

function Shared.__default.abs#canCall(n#0: int) : bool;

// consequence axiom for Shared.__default.abs
axiom (forall n#0: int :: 
  { Shared.__default.abs(n#0) } 
  LitInt(0) <= Shared.__default.abs(n#0));

function Shared.__default.abs#requires(int) : bool;

// #requires axiom for Shared.__default.abs
axiom (forall n#0: int :: 
  { Shared.__default.abs#requires(n#0) } 
  Shared.__default.abs#requires(n#0) == true);

// definition axiom for Shared.__default.abs (revealed)
axiom {:id "id77"} (forall n#0: int :: 
  { Shared.__default.abs(n#0) } 
  Shared.__default.abs(n#0) == (if n#0 > 0 then n#0 else 0 - n#0));

// definition axiom for Shared.__default.abs for all literals (revealed)
axiom {:id "id78"} (forall n#0: int :: 
  {:weight 3} { Shared.__default.abs(LitInt(n#0)) } 
  Shared.__default.abs(LitInt(n#0)) == (if n#0 > 0 then n#0 else 0 - n#0));

// Constructor function declaration
function #Shared.Color.Black() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Shared.Color.Black()) == ##Shared.Color.Black;
// Constructor $Is
axiom $Is(#Shared.Color.Black(), Tclass.Shared.Color());
// Constructor literal
axiom #Shared.Color.Black() == Lit(#Shared.Color.Black());
}

const unique ##Shared.Color.Black: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Shared.Color.Black()) == ##Shared.Color.Black;
}

function Shared.Color.Black_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Shared.Color.Black_q(d) } 
  Shared.Color.Black_q(d) <==> DatatypeCtorId(d) == ##Shared.Color.Black);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Shared.Color.Black_q(d) } 
  Shared.Color.Black_q(d) ==> d == #Shared.Color.Black());

// Constructor function declaration
function #Shared.Color.White() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Shared.Color.White()) == ##Shared.Color.White;
// Constructor $Is
axiom $Is(#Shared.Color.White(), Tclass.Shared.Color());
// Constructor literal
axiom #Shared.Color.White() == Lit(#Shared.Color.White());
}

const unique ##Shared.Color.White: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Shared.Color.White()) == ##Shared.Color.White;
}

function Shared.Color.White_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Shared.Color.White_q(d) } 
  Shared.Color.White_q(d) <==> DatatypeCtorId(d) == ##Shared.Color.White);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Shared.Color.White_q(d) } 
  Shared.Color.White_q(d) ==> d == #Shared.Color.White());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.Shared.Color(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.Shared.Color())
     ==> $IsAlloc(d, Tclass.Shared.Color(), $h));

// Depth-one case-split function
function $IsA#Shared.Color(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Shared.Color(d) } 
  $IsA#Shared.Color(d) ==> Shared.Color.Black_q(d) || Shared.Color.White_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { Shared.Color.White_q(d), $Is(d, Tclass.Shared.Color()) } 
    { Shared.Color.Black_q(d), $Is(d, Tclass.Shared.Color()) } 
  $Is(d, Tclass.Shared.Color())
     ==> Shared.Color.Black_q(d) || Shared.Color.White_q(d));

// Datatype extensional equality declaration
function Shared.Color#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Shared.Color.Black
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Shared.Color#Equal(a, b), Shared.Color.Black_q(a) } 
    { Shared.Color#Equal(a, b), Shared.Color.Black_q(b) } 
  Shared.Color.Black_q(a) && Shared.Color.Black_q(b) ==> Shared.Color#Equal(a, b));

// Datatype extensional equality definition: #Shared.Color.White
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Shared.Color#Equal(a, b), Shared.Color.White_q(a) } 
    { Shared.Color#Equal(a, b), Shared.Color.White_q(b) } 
  Shared.Color.White_q(a) && Shared.Color.White_q(b) ==> Shared.Color#Equal(a, b));

// Datatype extensionality axiom: Shared.Color
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Shared.Color#Equal(a, b) } 
  Shared.Color#Equal(a, b) <==> a == b);

const unique class.Shared.Color: ClassName;

// Constructor function declaration
function #Shared.PieceKind.Knight(DatatypeType) : DatatypeType;

const unique ##Shared.PieceKind.Knight: DtCtorId
uses {
// Constructor identifier
axiom (forall a#8#0#0: DatatypeType :: 
  { #Shared.PieceKind.Knight(a#8#0#0) } 
  DatatypeCtorId(#Shared.PieceKind.Knight(a#8#0#0)) == ##Shared.PieceKind.Knight);
}

function Shared.PieceKind.Knight_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Shared.PieceKind.Knight_q(d) } 
  Shared.PieceKind.Knight_q(d) <==> DatatypeCtorId(d) == ##Shared.PieceKind.Knight);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Shared.PieceKind.Knight_q(d) } 
  Shared.PieceKind.Knight_q(d)
     ==> (exists a#9#0#0: DatatypeType :: d == #Shared.PieceKind.Knight(a#9#0#0)));

// Constructor $Is
axiom (forall a#10#0#0: DatatypeType :: 
  { $Is(#Shared.PieceKind.Knight(a#10#0#0), Tclass.Shared.PieceKind()) } 
  $Is(#Shared.PieceKind.Knight(a#10#0#0), Tclass.Shared.PieceKind())
     <==> $Is(a#10#0#0, Tclass.Shared.Color()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Shared.PieceKind.c(d), Tclass.Shared.Color(), $h) } 
  $IsGoodHeap($h)
       && 
      Shared.PieceKind.Knight_q(d)
       && $IsAlloc(d, Tclass.Shared.PieceKind(), $h)
     ==> $IsAlloc(Shared.PieceKind.c(d), Tclass.Shared.Color(), $h));

// Constructor literal
axiom (forall a#11#0#0: DatatypeType :: 
  { #Shared.PieceKind.Knight(Lit(a#11#0#0)) } 
  #Shared.PieceKind.Knight(Lit(a#11#0#0))
     == Lit(#Shared.PieceKind.Knight(a#11#0#0)));

function Shared.PieceKind.c(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#12#0#0: DatatypeType :: 
  { #Shared.PieceKind.Knight(a#12#0#0) } 
  Shared.PieceKind.c(#Shared.PieceKind.Knight(a#12#0#0)) == a#12#0#0);

// Inductive rank
axiom (forall a#13#0#0: DatatypeType :: 
  { #Shared.PieceKind.Knight(a#13#0#0) } 
  DtRank(a#13#0#0) < DtRank(#Shared.PieceKind.Knight(a#13#0#0)));

// Constructor function declaration
function #Shared.PieceKind.King(DatatypeType) : DatatypeType;

const unique ##Shared.PieceKind.King: DtCtorId
uses {
// Constructor identifier
axiom (forall a#14#0#0: DatatypeType :: 
  { #Shared.PieceKind.King(a#14#0#0) } 
  DatatypeCtorId(#Shared.PieceKind.King(a#14#0#0)) == ##Shared.PieceKind.King);
}

function Shared.PieceKind.King_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Shared.PieceKind.King_q(d) } 
  Shared.PieceKind.King_q(d) <==> DatatypeCtorId(d) == ##Shared.PieceKind.King);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Shared.PieceKind.King_q(d) } 
  Shared.PieceKind.King_q(d)
     ==> (exists a#15#0#0: DatatypeType :: d == #Shared.PieceKind.King(a#15#0#0)));

// Constructor $Is
axiom (forall a#16#0#0: DatatypeType :: 
  { $Is(#Shared.PieceKind.King(a#16#0#0), Tclass.Shared.PieceKind()) } 
  $Is(#Shared.PieceKind.King(a#16#0#0), Tclass.Shared.PieceKind())
     <==> $Is(a#16#0#0, Tclass.Shared.Color()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Shared.PieceKind.c(d), Tclass.Shared.Color(), $h) } 
  $IsGoodHeap($h)
       && 
      Shared.PieceKind.King_q(d)
       && $IsAlloc(d, Tclass.Shared.PieceKind(), $h)
     ==> $IsAlloc(Shared.PieceKind.c(d), Tclass.Shared.Color(), $h));

// Constructor literal
axiom (forall a#17#0#0: DatatypeType :: 
  { #Shared.PieceKind.King(Lit(a#17#0#0)) } 
  #Shared.PieceKind.King(Lit(a#17#0#0)) == Lit(#Shared.PieceKind.King(a#17#0#0)));

// Constructor injectivity
axiom (forall a#18#0#0: DatatypeType :: 
  { #Shared.PieceKind.King(a#18#0#0) } 
  Shared.PieceKind.c(#Shared.PieceKind.King(a#18#0#0)) == a#18#0#0);

// Inductive rank
axiom (forall a#19#0#0: DatatypeType :: 
  { #Shared.PieceKind.King(a#19#0#0) } 
  DtRank(a#19#0#0) < DtRank(#Shared.PieceKind.King(a#19#0#0)));

// Constructor function declaration
function #Shared.PieceKind.Pawn(DatatypeType) : DatatypeType;

const unique ##Shared.PieceKind.Pawn: DtCtorId
uses {
// Constructor identifier
axiom (forall a#20#0#0: DatatypeType :: 
  { #Shared.PieceKind.Pawn(a#20#0#0) } 
  DatatypeCtorId(#Shared.PieceKind.Pawn(a#20#0#0)) == ##Shared.PieceKind.Pawn);
}

function Shared.PieceKind.Pawn_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Shared.PieceKind.Pawn_q(d) } 
  Shared.PieceKind.Pawn_q(d) <==> DatatypeCtorId(d) == ##Shared.PieceKind.Pawn);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Shared.PieceKind.Pawn_q(d) } 
  Shared.PieceKind.Pawn_q(d)
     ==> (exists a#21#0#0: DatatypeType :: d == #Shared.PieceKind.Pawn(a#21#0#0)));

// Constructor $Is
axiom (forall a#22#0#0: DatatypeType :: 
  { $Is(#Shared.PieceKind.Pawn(a#22#0#0), Tclass.Shared.PieceKind()) } 
  $Is(#Shared.PieceKind.Pawn(a#22#0#0), Tclass.Shared.PieceKind())
     <==> $Is(a#22#0#0, Tclass.Shared.Color()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Shared.PieceKind.c(d), Tclass.Shared.Color(), $h) } 
  $IsGoodHeap($h)
       && 
      Shared.PieceKind.Pawn_q(d)
       && $IsAlloc(d, Tclass.Shared.PieceKind(), $h)
     ==> $IsAlloc(Shared.PieceKind.c(d), Tclass.Shared.Color(), $h));

// Constructor literal
axiom (forall a#23#0#0: DatatypeType :: 
  { #Shared.PieceKind.Pawn(Lit(a#23#0#0)) } 
  #Shared.PieceKind.Pawn(Lit(a#23#0#0)) == Lit(#Shared.PieceKind.Pawn(a#23#0#0)));

// Constructor injectivity
axiom (forall a#24#0#0: DatatypeType :: 
  { #Shared.PieceKind.Pawn(a#24#0#0) } 
  Shared.PieceKind.c(#Shared.PieceKind.Pawn(a#24#0#0)) == a#24#0#0);

// Inductive rank
axiom (forall a#25#0#0: DatatypeType :: 
  { #Shared.PieceKind.Pawn(a#25#0#0) } 
  DtRank(a#25#0#0) < DtRank(#Shared.PieceKind.Pawn(a#25#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.Shared.PieceKind(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.Shared.PieceKind())
     ==> $IsAlloc(d, Tclass.Shared.PieceKind(), $h));

// Depth-one case-split function
function $IsA#Shared.PieceKind(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Shared.PieceKind(d) } 
  $IsA#Shared.PieceKind(d)
     ==> Shared.PieceKind.Knight_q(d)
       || Shared.PieceKind.King_q(d)
       || Shared.PieceKind.Pawn_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { Shared.PieceKind.Pawn_q(d), $Is(d, Tclass.Shared.PieceKind()) } 
    { Shared.PieceKind.King_q(d), $Is(d, Tclass.Shared.PieceKind()) } 
    { Shared.PieceKind.Knight_q(d), $Is(d, Tclass.Shared.PieceKind()) } 
  $Is(d, Tclass.Shared.PieceKind())
     ==> Shared.PieceKind.Knight_q(d)
       || Shared.PieceKind.King_q(d)
       || Shared.PieceKind.Pawn_q(d));

// Datatype extensional equality declaration
function Shared.PieceKind#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Shared.PieceKind.Knight
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Shared.PieceKind#Equal(a, b), Shared.PieceKind.Knight_q(a) } 
    { Shared.PieceKind#Equal(a, b), Shared.PieceKind.Knight_q(b) } 
  Shared.PieceKind.Knight_q(a) && Shared.PieceKind.Knight_q(b)
     ==> (Shared.PieceKind#Equal(a, b)
       <==> Shared.Color#Equal(Shared.PieceKind.c(a), Shared.PieceKind.c(b))));

// Datatype extensional equality definition: #Shared.PieceKind.King
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Shared.PieceKind#Equal(a, b), Shared.PieceKind.King_q(a) } 
    { Shared.PieceKind#Equal(a, b), Shared.PieceKind.King_q(b) } 
  Shared.PieceKind.King_q(a) && Shared.PieceKind.King_q(b)
     ==> (Shared.PieceKind#Equal(a, b)
       <==> Shared.Color#Equal(Shared.PieceKind.c(a), Shared.PieceKind.c(b))));

// Datatype extensional equality definition: #Shared.PieceKind.Pawn
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Shared.PieceKind#Equal(a, b), Shared.PieceKind.Pawn_q(a) } 
    { Shared.PieceKind#Equal(a, b), Shared.PieceKind.Pawn_q(b) } 
  Shared.PieceKind.Pawn_q(a) && Shared.PieceKind.Pawn_q(b)
     ==> (Shared.PieceKind#Equal(a, b)
       <==> Shared.Color#Equal(Shared.PieceKind.c(a), Shared.PieceKind.c(b))));

// Datatype extensionality axiom: Shared.PieceKind
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Shared.PieceKind#Equal(a, b) } 
  Shared.PieceKind#Equal(a, b) <==> a == b);

const unique class.Shared.PieceKind: ClassName;

// Constructor function declaration
function #Shared.Pos.Pos(int, int) : DatatypeType;

const unique ##Shared.Pos.Pos: DtCtorId
uses {
// Constructor identifier
axiom (forall a#26#0#0: int, a#26#1#0: int :: 
  { #Shared.Pos.Pos(a#26#0#0, a#26#1#0) } 
  DatatypeCtorId(#Shared.Pos.Pos(a#26#0#0, a#26#1#0)) == ##Shared.Pos.Pos);
}

function Shared.Pos.Pos_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Shared.Pos.Pos_q(d) } 
  Shared.Pos.Pos_q(d) <==> DatatypeCtorId(d) == ##Shared.Pos.Pos);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Shared.Pos.Pos_q(d) } 
  Shared.Pos.Pos_q(d)
     ==> (exists a#27#0#0: int, a#27#1#0: int :: 
      d == #Shared.Pos.Pos(a#27#0#0, a#27#1#0)));

function Tclass.Shared.Pos() : Ty
uses {
// Tclass.Shared.Pos Tag
axiom Tag(Tclass.Shared.Pos()) == Tagclass.Shared.Pos
   && TagFamily(Tclass.Shared.Pos()) == tytagFamily$Pos;
}

const unique Tagclass.Shared.Pos: TyTag;

// Box/unbox axiom for Tclass.Shared.Pos
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Shared.Pos()) } 
  $IsBox(bx, Tclass.Shared.Pos())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Shared.Pos()));

// Constructor $Is
axiom (forall a#28#0#0: int, a#28#1#0: int :: 
  { $Is(#Shared.Pos.Pos(a#28#0#0, a#28#1#0), Tclass.Shared.Pos()) } 
  $Is(#Shared.Pos.Pos(a#28#0#0, a#28#1#0), Tclass.Shared.Pos())
     <==> $Is(a#28#0#0, TInt) && $Is(a#28#1#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Shared.Pos.row(d), TInt, $h) } 
  $IsGoodHeap($h) && Shared.Pos.Pos_q(d) && $IsAlloc(d, Tclass.Shared.Pos(), $h)
     ==> $IsAlloc(Shared.Pos.row(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Shared.Pos.col(d), TInt, $h) } 
  $IsGoodHeap($h) && Shared.Pos.Pos_q(d) && $IsAlloc(d, Tclass.Shared.Pos(), $h)
     ==> $IsAlloc(Shared.Pos.col(d), TInt, $h));

// Constructor literal
axiom (forall a#29#0#0: int, a#29#1#0: int :: 
  { #Shared.Pos.Pos(LitInt(a#29#0#0), LitInt(a#29#1#0)) } 
  #Shared.Pos.Pos(LitInt(a#29#0#0), LitInt(a#29#1#0))
     == Lit(#Shared.Pos.Pos(a#29#0#0, a#29#1#0)));

function Shared.Pos.row(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#30#0#0: int, a#30#1#0: int :: 
  { #Shared.Pos.Pos(a#30#0#0, a#30#1#0) } 
  Shared.Pos.row(#Shared.Pos.Pos(a#30#0#0, a#30#1#0)) == a#30#0#0);

function Shared.Pos.col(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#31#0#0: int, a#31#1#0: int :: 
  { #Shared.Pos.Pos(a#31#0#0, a#31#1#0) } 
  Shared.Pos.col(#Shared.Pos.Pos(a#31#0#0, a#31#1#0)) == a#31#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.Shared.Pos(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.Shared.Pos())
     ==> $IsAlloc(d, Tclass.Shared.Pos(), $h));

// Depth-one case-split function
function $IsA#Shared.Pos(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Shared.Pos(d) } 
  $IsA#Shared.Pos(d) ==> Shared.Pos.Pos_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { Shared.Pos.Pos_q(d), $Is(d, Tclass.Shared.Pos()) } 
  $Is(d, Tclass.Shared.Pos()) ==> Shared.Pos.Pos_q(d));

// Datatype extensional equality declaration
function Shared.Pos#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Shared.Pos.Pos
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Shared.Pos#Equal(a, b) } 
  Shared.Pos#Equal(a, b)
     <==> Shared.Pos.row(a) == Shared.Pos.row(b) && Shared.Pos.col(a) == Shared.Pos.col(b));

// Datatype extensionality axiom: Shared.Pos
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Shared.Pos#Equal(a, b) } 
  Shared.Pos#Equal(a, b) <==> a == b);

const unique class.Shared.Pos: ClassName;

// $Is axiom for subset type Shared.ChessPos
axiom (forall pos#0: DatatypeType :: 
  { $Is(pos#0, Tclass.Shared.ChessPos()) } 
  $Is(pos#0, Tclass.Shared.ChessPos())
     <==> $Is(pos#0, Tclass.Shared.Pos())
       && 
      LitInt(0) <= Shared.Pos.row(pos#0)
       && Shared.Pos.row(pos#0) < 8
       && 
      LitInt(0) <= Shared.Pos.col(pos#0)
       && Shared.Pos.col(pos#0) < 8);

// $IsAlloc axiom for subset type Shared.ChessPos
axiom (forall pos#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(pos#0, Tclass.Shared.ChessPos(), $h) } 
  $IsAlloc(pos#0, Tclass.Shared.ChessPos(), $h)
     <==> $IsAlloc(pos#0, Tclass.Shared.Pos(), $h));

// Constructor function declaration
function #Shared.Piece.Piece(DatatypeType, DatatypeType) : DatatypeType;

const unique ##Shared.Piece.Piece: DtCtorId
uses {
// Constructor identifier
axiom (forall a#32#0#0: DatatypeType, a#32#1#0: DatatypeType :: 
  { #Shared.Piece.Piece(a#32#0#0, a#32#1#0) } 
  DatatypeCtorId(#Shared.Piece.Piece(a#32#0#0, a#32#1#0)) == ##Shared.Piece.Piece);
}

function Shared.Piece.Piece_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Shared.Piece.Piece_q(d) } 
  Shared.Piece.Piece_q(d) <==> DatatypeCtorId(d) == ##Shared.Piece.Piece);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Shared.Piece.Piece_q(d) } 
  Shared.Piece.Piece_q(d)
     ==> (exists a#33#0#0: DatatypeType, a#33#1#0: DatatypeType :: 
      d == #Shared.Piece.Piece(a#33#0#0, a#33#1#0)));

// Constructor $Is
axiom (forall a#34#0#0: DatatypeType, a#34#1#0: DatatypeType :: 
  { $Is(#Shared.Piece.Piece(a#34#0#0, a#34#1#0), Tclass.Shared.Piece()) } 
  $Is(#Shared.Piece.Piece(a#34#0#0, a#34#1#0), Tclass.Shared.Piece())
     <==> $Is(a#34#0#0, Tclass.Shared.PieceKind())
       && $Is(a#34#1#0, Tclass.Shared.ChessPos()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Shared.Piece.kind(d), Tclass.Shared.PieceKind(), $h) } 
  $IsGoodHeap($h)
       && 
      Shared.Piece.Piece_q(d)
       && $IsAlloc(d, Tclass.Shared.Piece(), $h)
     ==> $IsAlloc(Shared.Piece.kind(d), Tclass.Shared.PieceKind(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Shared.Piece.at(d), Tclass.Shared.ChessPos(), $h) } 
  $IsGoodHeap($h)
       && 
      Shared.Piece.Piece_q(d)
       && $IsAlloc(d, Tclass.Shared.Piece(), $h)
     ==> $IsAlloc(Shared.Piece.at(d), Tclass.Shared.ChessPos(), $h));

// Constructor literal
axiom (forall a#35#0#0: DatatypeType, a#35#1#0: DatatypeType :: 
  { #Shared.Piece.Piece(Lit(a#35#0#0), Lit(a#35#1#0)) } 
  #Shared.Piece.Piece(Lit(a#35#0#0), Lit(a#35#1#0))
     == Lit(#Shared.Piece.Piece(a#35#0#0, a#35#1#0)));

function Shared.Piece.kind(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#36#0#0: DatatypeType, a#36#1#0: DatatypeType :: 
  { #Shared.Piece.Piece(a#36#0#0, a#36#1#0) } 
  Shared.Piece.kind(#Shared.Piece.Piece(a#36#0#0, a#36#1#0)) == a#36#0#0);

// Inductive rank
axiom (forall a#37#0#0: DatatypeType, a#37#1#0: DatatypeType :: 
  { #Shared.Piece.Piece(a#37#0#0, a#37#1#0) } 
  DtRank(a#37#0#0) < DtRank(#Shared.Piece.Piece(a#37#0#0, a#37#1#0)));

function Shared.Piece.at(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#38#0#0: DatatypeType, a#38#1#0: DatatypeType :: 
  { #Shared.Piece.Piece(a#38#0#0, a#38#1#0) } 
  Shared.Piece.at(#Shared.Piece.Piece(a#38#0#0, a#38#1#0)) == a#38#1#0);

// Inductive rank
axiom (forall a#39#0#0: DatatypeType, a#39#1#0: DatatypeType :: 
  { #Shared.Piece.Piece(a#39#0#0, a#39#1#0) } 
  DtRank(a#39#1#0) < DtRank(#Shared.Piece.Piece(a#39#0#0, a#39#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.Shared.Piece(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.Shared.Piece())
     ==> $IsAlloc(d, Tclass.Shared.Piece(), $h));

// Depth-one case-split function
function $IsA#Shared.Piece(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Shared.Piece(d) } 
  $IsA#Shared.Piece(d) ==> Shared.Piece.Piece_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { Shared.Piece.Piece_q(d), $Is(d, Tclass.Shared.Piece()) } 
  $Is(d, Tclass.Shared.Piece()) ==> Shared.Piece.Piece_q(d));

// Datatype extensional equality declaration
function Shared.Piece#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Shared.Piece.Piece
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Shared.Piece#Equal(a, b) } 
  Shared.Piece#Equal(a, b)
     <==> Shared.PieceKind#Equal(Shared.Piece.kind(a), Shared.Piece.kind(b))
       && Shared.Pos#Equal(Shared.Piece.at(a), Shared.Piece.at(b)));

// Datatype extensionality axiom: Shared.Piece
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Shared.Piece#Equal(a, b) } 
  Shared.Piece#Equal(a, b) <==> a == b);

const unique class.Shared.Piece: ClassName;

// function declaration for Shared.Piece.Attacks
function Shared.Piece.Attacks(this: DatatypeType, pos#0: DatatypeType) : bool;

function Shared.Piece.Attacks#canCall(this: DatatypeType, pos#0: DatatypeType) : bool;

function Shared.Piece.Attacks#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for Shared.Piece.Attacks
axiom (forall this: DatatypeType, pos#0: DatatypeType :: 
  { Shared.Piece.Attacks#requires(this, pos#0) } 
  $Is(this, Tclass.Shared.Piece()) && $Is(pos#0, Tclass.Shared.ChessPos())
     ==> Shared.Piece.Attacks#requires(this, pos#0) == true);

// definition axiom for Shared.Piece.Attacks (revealed)
axiom {:id "id79"} (forall this: DatatypeType, pos#0: DatatypeType :: 
  { Shared.Piece.Attacks(this, pos#0) } 
  Shared.Piece.Attacks#canCall(this, pos#0)
       || ($Is(this, Tclass.Shared.Piece()) && $Is(pos#0, Tclass.Shared.ChessPos()))
     ==> $IsA#Shared.Pos(Shared.Piece.at(this))
       && $IsA#Shared.Pos(pos#0)
       && Shared.Piece.Piece_q(this)
       && (!Shared.Pos#Equal(Shared.Piece.at(this), pos#0)
         ==> Shared.Piece.Piece_q(this)
           && (Shared.PieceKind.Knight_q(Shared.Piece.kind(this))
             ==> Shared.Piece.Piece_q(this)
               && (
                Shared.PieceKind.Knight_q(Shared.Piece.kind(this))
                 || Shared.PieceKind.King_q(Shared.Piece.kind(this))
                 || Shared.PieceKind.Pawn_q(Shared.Piece.kind(this)))
               && 
              Shared.Pos.Pos_q(pos#0)
               && 
              Shared.Piece.Piece_q(this)
               && Shared.Pos.Pos_q(Shared.Piece.at(this))
               && Shared.__default.abs#canCall(Shared.Pos.col(pos#0) - Shared.Pos.col(Shared.Piece.at(this)))
               && (Shared.__default.abs(Shared.Pos.col(pos#0) - Shared.Pos.col(Shared.Piece.at(this)))
                   == LitInt(2)
                 ==> Shared.Pos.Pos_q(pos#0)
                   && 
                  Shared.Piece.Piece_q(this)
                   && Shared.Pos.Pos_q(Shared.Piece.at(this))
                   && Shared.__default.abs#canCall(Shared.Pos.row(pos#0) - Shared.Pos.row(Shared.Piece.at(this))))
               && (!(Shared.__default.abs(Shared.Pos.col(pos#0) - Shared.Pos.col(Shared.Piece.at(this)))
                     == LitInt(2)
                   && Shared.__default.abs(Shared.Pos.row(pos#0) - Shared.Pos.row(Shared.Piece.at(this)))
                     == LitInt(1))
                 ==> Shared.Pos.Pos_q(pos#0)
                   && 
                  Shared.Piece.Piece_q(this)
                   && Shared.Pos.Pos_q(Shared.Piece.at(this))
                   && Shared.__default.abs#canCall(Shared.Pos.col(pos#0) - Shared.Pos.col(Shared.Piece.at(this)))
                   && (Shared.__default.abs(Shared.Pos.col(pos#0) - Shared.Pos.col(Shared.Piece.at(this)))
                       == LitInt(1)
                     ==> Shared.Pos.Pos_q(pos#0)
                       && 
                      Shared.Piece.Piece_q(this)
                       && Shared.Pos.Pos_q(Shared.Piece.at(this))
                       && Shared.__default.abs#canCall(Shared.Pos.row(pos#0) - Shared.Pos.row(Shared.Piece.at(this))))))
           && (!Shared.PieceKind.Knight_q(Shared.Piece.kind(this))
             ==> Shared.Piece.Piece_q(this)
               && (Shared.PieceKind.King_q(Shared.Piece.kind(this))
                 ==> Shared.Piece.Piece_q(this)
                   && (
                    Shared.PieceKind.Knight_q(Shared.Piece.kind(this))
                     || Shared.PieceKind.King_q(Shared.Piece.kind(this))
                     || Shared.PieceKind.Pawn_q(Shared.Piece.kind(this)))
                   && 
                  Shared.Pos.Pos_q(pos#0)
                   && 
                  Shared.Piece.Piece_q(this)
                   && Shared.Pos.Pos_q(Shared.Piece.at(this))
                   && Shared.__default.abs#canCall(Shared.Pos.col(pos#0) - Shared.Pos.col(Shared.Piece.at(this)))
                   && (Shared.__default.abs(Shared.Pos.col(pos#0) - Shared.Pos.col(Shared.Piece.at(this)))
                       < 2
                     ==> Shared.Pos.Pos_q(pos#0)
                       && 
                      Shared.Piece.Piece_q(this)
                       && Shared.Pos.Pos_q(Shared.Piece.at(this))
                       && Shared.__default.abs#canCall(Shared.Pos.row(pos#0) - Shared.Pos.row(Shared.Piece.at(this)))))
               && (!Shared.PieceKind.King_q(Shared.Piece.kind(this))
                 ==> Shared.Piece.Piece_q(this)
                   && (
                    Shared.PieceKind.Knight_q(Shared.Piece.kind(this))
                     || Shared.PieceKind.King_q(Shared.Piece.kind(this))
                     || Shared.PieceKind.Pawn_q(Shared.Piece.kind(this)))
                   && (var c#5 := Shared.PieceKind.c(Shared.Piece.kind(this)); 
                    Shared.Pos.Pos_q(pos#0)
                       && 
                      Shared.Piece.Piece_q(this)
                       && Shared.Pos.Pos_q(Shared.Piece.at(this))
                       && (Shared.Pos.row(pos#0)
                           == Shared.Pos.row(Shared.Piece.at(this))
                             + (if Shared.Color.White_q(c#5) then -1 else 1)
                         ==> Shared.Pos.Pos_q(pos#0)
                           && 
                          Shared.Piece.Piece_q(this)
                           && Shared.Pos.Pos_q(Shared.Piece.at(this))
                           && (Shared.Pos.col(pos#0) != Shared.Pos.col(Shared.Piece.at(this)) + 1
                             ==> Shared.Pos.Pos_q(pos#0)
                               && 
                              Shared.Piece.Piece_q(this)
                               && Shared.Pos.Pos_q(Shared.Piece.at(this))))))))
       && Shared.Piece.Attacks(this, pos#0)
         == (!Shared.Pos#Equal(Shared.Piece.at(this), pos#0)
           && (if Shared.PieceKind.Knight_q(Shared.Piece.kind(this))
             then (var c#0 := Shared.PieceKind.c(Shared.Piece.kind(this)); 
              (Shared.__default.abs(Shared.Pos.col(pos#0) - Shared.Pos.col(Shared.Piece.at(this)))
                     == LitInt(2)
                   && Shared.__default.abs(Shared.Pos.row(pos#0) - Shared.Pos.row(Shared.Piece.at(this)))
                     == LitInt(1))
                 || (Shared.__default.abs(Shared.Pos.col(pos#0) - Shared.Pos.col(Shared.Piece.at(this)))
                     == LitInt(1)
                   && Shared.__default.abs(Shared.Pos.row(pos#0) - Shared.Pos.row(Shared.Piece.at(this)))
                     == LitInt(2)))
             else (if Shared.PieceKind.King_q(Shared.Piece.kind(this))
               then (var c#1 := Shared.PieceKind.c(Shared.Piece.kind(this)); 
                Shared.__default.abs(Shared.Pos.col(pos#0) - Shared.Pos.col(Shared.Piece.at(this)))
                     < 2
                   && Shared.__default.abs(Shared.Pos.row(pos#0) - Shared.Pos.row(Shared.Piece.at(this)))
                     < 2)
               else (var c#2 := Shared.PieceKind.c(Shared.Piece.kind(this)); 
                Shared.Pos.row(pos#0)
                     == Shared.Pos.row(Shared.Piece.at(this))
                       + (if Shared.Color.White_q(c#2) then -1 else 1)
                   && (Shared.Pos.col(pos#0) == Shared.Pos.col(Shared.Piece.at(this)) + 1
                     || Shared.Pos.col(pos#0) == Shared.Pos.col(Shared.Piece.at(this)) - 1))))));

// definition axiom for Shared.Piece.Attacks for all literals (revealed)
axiom {:id "id80"} (forall this: DatatypeType, pos#0: DatatypeType :: 
  {:weight 3} { Shared.Piece.Attacks(Lit(this), Lit(pos#0)) } 
  Shared.Piece.Attacks#canCall(Lit(this), Lit(pos#0))
       || ($Is(this, Tclass.Shared.Piece()) && $Is(pos#0, Tclass.Shared.ChessPos()))
     ==> $IsA#Shared.Pos(Lit(Shared.Piece.at(Lit(this))))
       && $IsA#Shared.Pos(Lit(pos#0))
       && Shared.Piece.Piece_q(Lit(this))
       && (!Shared.Pos#Equal(Shared.Piece.at(Lit(this)), pos#0)
         ==> Shared.Piece.Piece_q(Lit(this))
           && (Lit(Shared.PieceKind.Knight_q(Lit(Shared.Piece.kind(Lit(this)))))
             ==> Shared.Piece.Piece_q(Lit(this))
               && (
                Shared.PieceKind.Knight_q(Lit(Shared.Piece.kind(Lit(this))))
                 || Shared.PieceKind.King_q(Lit(Shared.Piece.kind(Lit(this))))
                 || Shared.PieceKind.Pawn_q(Lit(Shared.Piece.kind(Lit(this)))))
               && 
              Shared.Pos.Pos_q(Lit(pos#0))
               && 
              Shared.Piece.Piece_q(Lit(this))
               && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(this))))
               && Shared.__default.abs#canCall(LitInt(Shared.Pos.col(Lit(pos#0)) - Shared.Pos.col(Lit(Shared.Piece.at(Lit(this))))))
               && (LitInt(Shared.__default.abs(LitInt(Shared.Pos.col(Lit(pos#0)) - Shared.Pos.col(Lit(Shared.Piece.at(Lit(this)))))))
                   == LitInt(2)
                 ==> Shared.Pos.Pos_q(Lit(pos#0))
                   && 
                  Shared.Piece.Piece_q(Lit(this))
                   && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(this))))
                   && Shared.__default.abs#canCall(LitInt(Shared.Pos.row(Lit(pos#0)) - Shared.Pos.row(Lit(Shared.Piece.at(Lit(this)))))))
               && (!(LitInt(Shared.__default.abs(LitInt(Shared.Pos.col(Lit(pos#0)) - Shared.Pos.col(Lit(Shared.Piece.at(Lit(this)))))))
                     == LitInt(2)
                   && LitInt(Shared.__default.abs(LitInt(Shared.Pos.row(Lit(pos#0)) - Shared.Pos.row(Lit(Shared.Piece.at(Lit(this)))))))
                     == LitInt(1))
                 ==> Shared.Pos.Pos_q(Lit(pos#0))
                   && 
                  Shared.Piece.Piece_q(Lit(this))
                   && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(this))))
                   && Shared.__default.abs#canCall(LitInt(Shared.Pos.col(Lit(pos#0)) - Shared.Pos.col(Lit(Shared.Piece.at(Lit(this))))))
                   && (LitInt(Shared.__default.abs(LitInt(Shared.Pos.col(Lit(pos#0)) - Shared.Pos.col(Lit(Shared.Piece.at(Lit(this)))))))
                       == LitInt(1)
                     ==> Shared.Pos.Pos_q(Lit(pos#0))
                       && 
                      Shared.Piece.Piece_q(Lit(this))
                       && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(this))))
                       && Shared.__default.abs#canCall(LitInt(Shared.Pos.row(Lit(pos#0)) - Shared.Pos.row(Lit(Shared.Piece.at(Lit(this)))))))))
           && (!Lit(Shared.PieceKind.Knight_q(Lit(Shared.Piece.kind(Lit(this)))))
             ==> Shared.Piece.Piece_q(Lit(this))
               && (Lit(Shared.PieceKind.King_q(Lit(Shared.Piece.kind(Lit(this)))))
                 ==> Shared.Piece.Piece_q(Lit(this))
                   && (
                    Shared.PieceKind.Knight_q(Lit(Shared.Piece.kind(Lit(this))))
                     || Shared.PieceKind.King_q(Lit(Shared.Piece.kind(Lit(this))))
                     || Shared.PieceKind.Pawn_q(Lit(Shared.Piece.kind(Lit(this)))))
                   && 
                  Shared.Pos.Pos_q(Lit(pos#0))
                   && 
                  Shared.Piece.Piece_q(Lit(this))
                   && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(this))))
                   && Shared.__default.abs#canCall(LitInt(Shared.Pos.col(Lit(pos#0)) - Shared.Pos.col(Lit(Shared.Piece.at(Lit(this))))))
                   && (Lit(Shared.__default.abs(LitInt(Shared.Pos.col(Lit(pos#0)) - Shared.Pos.col(Lit(Shared.Piece.at(Lit(this))))))
                         < 2)
                     ==> Shared.Pos.Pos_q(Lit(pos#0))
                       && 
                      Shared.Piece.Piece_q(Lit(this))
                       && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(this))))
                       && Shared.__default.abs#canCall(LitInt(Shared.Pos.row(Lit(pos#0)) - Shared.Pos.row(Lit(Shared.Piece.at(Lit(this))))))))
               && (!Lit(Shared.PieceKind.King_q(Lit(Shared.Piece.kind(Lit(this)))))
                 ==> Shared.Piece.Piece_q(Lit(this))
                   && (
                    Shared.PieceKind.Knight_q(Lit(Shared.Piece.kind(Lit(this))))
                     || Shared.PieceKind.King_q(Lit(Shared.Piece.kind(Lit(this))))
                     || Shared.PieceKind.Pawn_q(Lit(Shared.Piece.kind(Lit(this)))))
                   && (var c#11 := Lit(Shared.PieceKind.c(Lit(Shared.Piece.kind(Lit(this))))); 
                    Shared.Pos.Pos_q(Lit(pos#0))
                       && 
                      Shared.Piece.Piece_q(Lit(this))
                       && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(this))))
                       && (LitInt(Shared.Pos.row(Lit(pos#0)))
                           == Shared.Pos.row(Lit(Shared.Piece.at(Lit(this))))
                             + (if Shared.Color.White_q(c#11) then -1 else 1)
                         ==> Shared.Pos.Pos_q(Lit(pos#0))
                           && 
                          Shared.Piece.Piece_q(Lit(this))
                           && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(this))))
                           && (LitInt(Shared.Pos.col(Lit(pos#0)))
                               != LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(this)))) + 1)
                             ==> Shared.Pos.Pos_q(Lit(pos#0))
                               && 
                              Shared.Piece.Piece_q(Lit(this))
                               && Shared.Pos.Pos_q(Lit(Shared.Piece.at(Lit(this))))))))))
       && Shared.Piece.Attacks(Lit(this), Lit(pos#0))
         == (!Shared.Pos#Equal(Shared.Piece.at(Lit(this)), pos#0)
           && (if Shared.PieceKind.Knight_q(Lit(Shared.Piece.kind(Lit(this))))
             then (var c#6 := Lit(Shared.PieceKind.c(Lit(Shared.Piece.kind(Lit(this))))); 
              (LitInt(Shared.__default.abs(LitInt(Shared.Pos.col(Lit(pos#0)) - Shared.Pos.col(Lit(Shared.Piece.at(Lit(this)))))))
                     == LitInt(2)
                   && LitInt(Shared.__default.abs(LitInt(Shared.Pos.row(Lit(pos#0)) - Shared.Pos.row(Lit(Shared.Piece.at(Lit(this)))))))
                     == LitInt(1))
                 || (LitInt(Shared.__default.abs(LitInt(Shared.Pos.col(Lit(pos#0)) - Shared.Pos.col(Lit(Shared.Piece.at(Lit(this)))))))
                     == LitInt(1)
                   && LitInt(Shared.__default.abs(LitInt(Shared.Pos.row(Lit(pos#0)) - Shared.Pos.row(Lit(Shared.Piece.at(Lit(this)))))))
                     == LitInt(2)))
             else (if Shared.PieceKind.King_q(Lit(Shared.Piece.kind(Lit(this))))
               then (var c#7 := Lit(Shared.PieceKind.c(Lit(Shared.Piece.kind(Lit(this))))); 
                Lit(Shared.__default.abs(LitInt(Shared.Pos.col(Lit(pos#0)) - Shared.Pos.col(Lit(Shared.Piece.at(Lit(this))))))
                       < 2
                     && Shared.__default.abs(LitInt(Shared.Pos.row(Lit(pos#0)) - Shared.Pos.row(Lit(Shared.Piece.at(Lit(this))))))
                       < 2))
               else (var c#8 := Lit(Shared.PieceKind.c(Lit(Shared.Piece.kind(Lit(this))))); 
                LitInt(Shared.Pos.row(Lit(pos#0)))
                     == Shared.Pos.row(Lit(Shared.Piece.at(Lit(this))))
                       + (if Shared.Color.White_q(c#8) then -1 else 1)
                   && (LitInt(Shared.Pos.col(Lit(pos#0)))
                       == LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(this)))) + 1)
                     || LitInt(Shared.Pos.col(Lit(pos#0)))
                       == LitInt(Shared.Pos.col(Lit(Shared.Piece.at(Lit(this)))) - 1)))))));

// Constructor function declaration
function #Shared.Board.Board(Seq) : DatatypeType;

const unique ##Shared.Board.Board: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Seq :: 
  { #Shared.Board.Board(a#0#0#0) } 
  DatatypeCtorId(#Shared.Board.Board(a#0#0#0)) == ##Shared.Board.Board);
}

function Shared.Board.Board_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Shared.Board.Board_q(d) } 
  Shared.Board.Board_q(d) <==> DatatypeCtorId(d) == ##Shared.Board.Board);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Shared.Board.Board_q(d) } 
  Shared.Board.Board_q(d)
     ==> (exists a#1#0#0: Seq :: d == #Shared.Board.Board(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: Seq :: 
  { $Is(#Shared.Board.Board(a#2#0#0), Tclass.Shared.Board()) } 
  $Is(#Shared.Board.Board(a#2#0#0), Tclass.Shared.Board())
     <==> $Is(a#2#0#0, TSeq(Tclass.Shared.Piece())));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Shared.Board.pieces(d), TSeq(Tclass.Shared.Piece()), $h) } 
  $IsGoodHeap($h)
       && 
      Shared.Board.Board_q(d)
       && $IsAlloc(d, Tclass.Shared.Board(), $h)
     ==> $IsAlloc(Shared.Board.pieces(d), TSeq(Tclass.Shared.Piece()), $h));

// Constructor literal
axiom (forall a#3#0#0: Seq :: 
  { #Shared.Board.Board(Lit(a#3#0#0)) } 
  #Shared.Board.Board(Lit(a#3#0#0)) == Lit(#Shared.Board.Board(a#3#0#0)));

function Shared.Board.pieces(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#4#0#0: Seq :: 
  { #Shared.Board.Board(a#4#0#0) } 
  Shared.Board.pieces(#Shared.Board.Board(a#4#0#0)) == a#4#0#0);

// Inductive seq element rank
axiom (forall a#5#0#0: Seq, i: int :: 
  { Seq#Index(a#5#0#0, i), #Shared.Board.Board(a#5#0#0) } 
  0 <= i && i < Seq#Length(a#5#0#0)
     ==> DtRank($Unbox(Seq#Index(a#5#0#0, i)): DatatypeType)
       < DtRank(#Shared.Board.Board(a#5#0#0)));

// Inductive seq rank
axiom (forall a#6#0#0: Seq :: 
  { #Shared.Board.Board(a#6#0#0) } 
  Seq#Rank(a#6#0#0) < DtRank(#Shared.Board.Board(a#6#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.Shared.Board(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.Shared.Board())
     ==> $IsAlloc(d, Tclass.Shared.Board(), $h));

// Depth-one case-split function
function $IsA#Shared.Board(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Shared.Board(d) } 
  $IsA#Shared.Board(d) ==> Shared.Board.Board_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { Shared.Board.Board_q(d), $Is(d, Tclass.Shared.Board()) } 
  $Is(d, Tclass.Shared.Board()) ==> Shared.Board.Board_q(d));

// Datatype extensional equality declaration
function Shared.Board#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Shared.Board.Board
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Shared.Board#Equal(a, b) } 
  Shared.Board#Equal(a, b)
     <==> Seq#Equal(Shared.Board.pieces(a), Shared.Board.pieces(b)));

// Datatype extensionality axiom: Shared.Board
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Shared.Board#Equal(a, b) } 
  Shared.Board#Equal(a, b) <==> a == b);

const unique class.Shared.Board: ClassName;

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

const unique tytagFamily$Board: TyTagFamily;

const unique tytagFamily$ValidBoard: TyTagFamily;

const unique tytagFamily$Piece: TyTagFamily;

const unique tytagFamily$Color: TyTagFamily;

const unique tytagFamily$PieceKind: TyTagFamily;

const unique tytagFamily$ChessPos: TyTagFamily;

const unique tytagFamily$Pos: TyTagFamily;
