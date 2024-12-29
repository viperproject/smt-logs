// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy

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

// Box/unbox axiom for bv19
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(19)) } 
  $IsBox(bx, TBitvector(19))
     ==> $Box($Unbox(bx): bv19) == bx && $Is($Unbox(bx): bv19, TBitvector(19)));

axiom (forall v: bv19 :: { $Is(v, TBitvector(19)) } $Is(v, TBitvector(19)));

axiom (forall v: bv19, heap: Heap :: 
  { $IsAlloc(v, TBitvector(19), heap) } 
  $IsAlloc(v, TBitvector(19), heap));

function {:bvbuiltin "bvand"} and_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvor"} or_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvxor"} xor_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvnot"} not_bv19(bv19) : bv19;

function {:bvbuiltin "bvadd"} add_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvsub"} sub_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvmul"} mul_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvudiv"} div_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvurem"} mod_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvult"} lt_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvule"} le_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvuge"} ge_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvugt"} gt_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvlshr"} RightShift_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "(_ int2bv 19)"} nat_to_bv19(int) : bv19;

function {:bvbuiltin "bv2int"} smt_nat_from_bv19(bv19) : int;

function nat_from_bv19(bv19) : int;

axiom (forall b: bv19 :: 
  { nat_from_bv19(b) } 
  0 <= nat_from_bv19(b)
     && nat_from_bv19(b) < 524288
     && nat_from_bv19(b) == smt_nat_from_bv19(b));

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



function Tclass._module.MyType(Ty) : Ty;

const unique Tagclass._module.MyType: TyTag;

// Tclass._module.MyType Tag
axiom (forall _module.MyType$T: Ty :: 
  { Tclass._module.MyType(_module.MyType$T) } 
  Tag(Tclass._module.MyType(_module.MyType$T)) == Tagclass._module.MyType
     && TagFamily(Tclass._module.MyType(_module.MyType$T)) == tytagFamily$MyType);

function Tclass._module.MyType_0(Ty) : Ty;

// Tclass._module.MyType injectivity 0
axiom (forall _module.MyType$T: Ty :: 
  { Tclass._module.MyType(_module.MyType$T) } 
  Tclass._module.MyType_0(Tclass._module.MyType(_module.MyType$T))
     == _module.MyType$T);

function Tclass._module.MyInt(Ty) : Ty;

const unique Tagclass._module.MyInt: TyTag;

// Tclass._module.MyInt Tag
axiom (forall _module.MyInt$T: Ty :: 
  { Tclass._module.MyInt(_module.MyInt$T) } 
  Tag(Tclass._module.MyInt(_module.MyInt$T)) == Tagclass._module.MyInt
     && TagFamily(Tclass._module.MyInt(_module.MyInt$T)) == tytagFamily$MyInt);

function Tclass._module.MyInt_0(Ty) : Ty;

// Tclass._module.MyInt injectivity 0
axiom (forall _module.MyInt$T: Ty :: 
  { Tclass._module.MyInt(_module.MyInt$T) } 
  Tclass._module.MyInt_0(Tclass._module.MyInt(_module.MyInt$T)) == _module.MyInt$T);

// Box/unbox axiom for Tclass._module.MyInt
axiom (forall _module.MyInt$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.MyInt(_module.MyInt$T)) } 
  $IsBox(bx, Tclass._module.MyInt(_module.MyInt$T))
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass._module.MyInt(_module.MyInt$T)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#a#0: bool;
  var a#0: int where defass#a#0 ==> Lit(true);
  var m##0: int;
  var u##0: int;
  var defass#b#0: bool;
  var b#0: bool where defass#b#0 ==> Lit(true);
  var m##1: bool;
  var u##1: bool;
  var defass#c#0: bool;
  var c#0: int where defass#c#0 ==> Lit(true);
  var defass#d#0: bool;
  var d#0: int where defass#d#0 ==> Lit(true);

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(7,22)
    assume true;
    assert {:id "id6"} $IsBox($Box(LitInt(13)), Tclass._module.MyType(TInt));
    assume true;
    a#0 := LitInt(13);
    defass#a#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(8,13)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id8"} defass#a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id9"} $IsBox($Box(a#0), Tclass._module.MyType(Tclass._module.MyType(TInt)));
    m##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id10"} $IsBox($Box(LitInt(14)), Tclass._module.MyType(TInt));
    u##0 := LitInt(14);
    call {:id "id11"} Call$$_module.__default.TestMyTest(Tclass._module.MyType(TInt), $Box(m##0), $Box(u##0));
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(9,23)
    assume true;
    assert {:id "id12"} $IsBox($Box(Lit(true)), Tclass._module.MyType(TBool));
    assume true;
    b#0 := Lit(true);
    defass#b#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(10,13)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id14"} defass#b#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##1 := b#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##1 := Lit(false);
    call {:id "id15"} Call$$_module.__default.TestMyTest(TBool, $Box(m##1), $Box(u##1));
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(11,3)
    assert {:id "id16"} defass#a#0;
    assume true;
    assume true;
    assert {:id "id17"} defass#b#0;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(13,24)
    assume true;
    assert {:id "id18"} $Is(LitInt(18), Tclass._module.MyInt(Tclass._System.object()));
    assume true;
    c#0 := LitInt(18);
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(14,22)
    assume true;
    assert {:id "id20"} $Is(LitInt(19), Tclass._module.MyInt(TBitvector(19)));
    assume true;
    d#0 := LitInt(19);
    defass#d#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(15,3)
    assert {:id "id22"} defass#c#0;
    assume true;
    assume true;
    assert {:id "id23"} defass#d#0;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(17,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id24"} Call$$_module.__default.TestOthers();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(19,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id25"} Call$$_module.__default.DoIt(TReal);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(21,9)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id26"} Call$$_module.__default.Arrows();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(23,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id27"} Call$$MoreTests.__default.Placebo();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "TestMyTest (well-formedness)"} CheckWellFormed$$_module.__default.TestMyTest(_module._default.TestMyTest$U: Ty, 
    m#0: Box
       where $IsBox(m#0, Tclass._module.MyType(_module._default.TestMyTest$U))
         && $IsAllocBox(m#0, Tclass._module.MyType(_module._default.TestMyTest$U), $Heap), 
    u#0: Box
       where $IsBox(u#0, _module._default.TestMyTest$U)
         && $IsAllocBox(u#0, _module._default.TestMyTest$U, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMyTest (call)"} Call$$_module.__default.TestMyTest(_module._default.TestMyTest$U: Ty, 
    m#0: Box
       where $IsBox(m#0, Tclass._module.MyType(_module._default.TestMyTest$U))
         && $IsAllocBox(m#0, Tclass._module.MyType(_module._default.TestMyTest$U), $Heap), 
    u#0: Box
       where $IsBox(u#0, _module._default.TestMyTest$U)
         && $IsAllocBox(u#0, _module._default.TestMyTest$U, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMyTest (correctness)"} Impl$$_module.__default.TestMyTest(_module._default.TestMyTest$U: Ty, 
    m#0: Box
       where $IsBox(m#0, Tclass._module.MyType(_module._default.TestMyTest$U))
         && $IsAllocBox(m#0, Tclass._module.MyType(_module._default.TestMyTest$U), $Heap), 
    u#0: Box
       where $IsBox(u#0, _module._default.TestMyTest$U)
         && $IsAllocBox(u#0, _module._default.TestMyTest$U, $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMyTest (correctness)"} Impl$$_module.__default.TestMyTest(_module._default.TestMyTest$U: Ty, m#0: Box, u#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#w#0: bool;
  var w#0: Box
     where defass#w#0
       ==> $IsBox(w#0, _module._default.TestMyTest$U)
         && $IsAllocBox(w#0, _module._default.TestMyTest$U, $Heap);
  var defass#n#0: bool;
  var n#0: Box
     where defass#n#0
       ==> $IsBox(n#0, Tclass._module.MyType(_module._default.TestMyTest$U))
         && $IsAllocBox(n#0, Tclass._module.MyType(_module._default.TestMyTest$U), $Heap);

    // AddMethodImpl: TestMyTest, Impl$$_module.__default.TestMyTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(27,12)
    assume true;
    assume true;
    w#0 := u#0;
    defass#w#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(28,20)
    assume true;
    assume true;
    n#0 := m#0;
    defass#n#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(29,5)
    assume true;
    assume true;
    w#0 := m#0;
    defass#w#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(30,5)
    assume true;
    assert {:id "id31"} $IsBox(u#0, Tclass._module.MyType(_module._default.TestMyTest$U));
    assume true;
    n#0 := u#0;
    defass#n#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(31,3)
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "TestOthers (well-formedness)"} CheckWellFormed$$_module.__default.TestOthers();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestOthers (call)"} Call$$_module.__default.TestOthers();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestOthers (correctness)"} Impl$$_module.__default.TestOthers() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.ABC(Ty) : Ty;

const unique Tagclass._module.ABC: TyTag;

// Tclass._module.ABC Tag
axiom (forall _module.ABC$X: Ty :: 
  { Tclass._module.ABC(_module.ABC$X) } 
  Tag(Tclass._module.ABC(_module.ABC$X)) == Tagclass._module.ABC
     && TagFamily(Tclass._module.ABC(_module.ABC$X)) == tytagFamily$ABC);

function Tclass._module.ABC_0(Ty) : Ty;

// Tclass._module.ABC injectivity 0
axiom (forall _module.ABC$X: Ty :: 
  { Tclass._module.ABC(_module.ABC$X) } 
  Tclass._module.ABC_0(Tclass._module.ABC(_module.ABC$X)) == _module.ABC$X);

// Box/unbox axiom for Tclass._module.ABC
axiom (forall _module.ABC$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.ABC(_module.ABC$X)) } 
  $IsBox(bx, Tclass._module.ABC(_module.ABC$X))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.ABC(_module.ABC$X)));

function Tclass._module.XYZ(Ty) : Ty;

const unique Tagclass._module.XYZ: TyTag;

// Tclass._module.XYZ Tag
axiom (forall _module.XYZ$A: Ty :: 
  { Tclass._module.XYZ(_module.XYZ$A) } 
  Tag(Tclass._module.XYZ(_module.XYZ$A)) == Tagclass._module.XYZ
     && TagFamily(Tclass._module.XYZ(_module.XYZ$A)) == tytagFamily$XYZ);

function Tclass._module.XYZ_0(Ty) : Ty;

// Tclass._module.XYZ injectivity 0
axiom (forall _module.XYZ$A: Ty :: 
  { Tclass._module.XYZ(_module.XYZ$A) } 
  Tclass._module.XYZ_0(Tclass._module.XYZ(_module.XYZ$A)) == _module.XYZ$A);

// Box/unbox axiom for Tclass._module.XYZ
axiom (forall _module.XYZ$A: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.XYZ(_module.XYZ$A)) } 
  $IsBox(bx, Tclass._module.XYZ(_module.XYZ$A))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.XYZ(_module.XYZ$A)));

function Tclass._module.SSS(Ty) : Ty;

const unique Tagclass._module.SSS: TyTag;

// Tclass._module.SSS Tag
axiom (forall _module.SSS$Y: Ty :: 
  { Tclass._module.SSS(_module.SSS$Y) } 
  Tag(Tclass._module.SSS(_module.SSS$Y)) == Tagclass._module.SSS
     && TagFamily(Tclass._module.SSS(_module.SSS$Y)) == tytagFamily$SSS);

function Tclass._module.SSS_0(Ty) : Ty;

// Tclass._module.SSS injectivity 0
axiom (forall _module.SSS$Y: Ty :: 
  { Tclass._module.SSS(_module.SSS$Y) } 
  Tclass._module.SSS_0(Tclass._module.SSS(_module.SSS$Y)) == _module.SSS$Y);

// Box/unbox axiom for Tclass._module.SSS
axiom (forall _module.SSS$Y: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.SSS(_module.SSS$Y)) } 
  $IsBox(bx, Tclass._module.SSS(_module.SSS$Y))
     ==> $Box($Unbox(bx): Seq) == bx
       && $Is($Unbox(bx): Seq, Tclass._module.SSS(_module.SSS$Y)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestOthers (correctness)"} Impl$$_module.__default.TestOthers() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: DatatypeType
     where $Is(a#0, Tclass._module.ABC(TInt))
       && $IsAlloc(a#0, Tclass._module.ABC(TInt), $Heap);
  var b#0: DatatypeType
     where $Is(b#0, Tclass._module.XYZ(Tclass._System.object?()))
       && $IsAlloc(b#0, Tclass._module.XYZ(Tclass._System.object?()), $Heap);
  var newtype$check#0: ref;
  var c#0: Seq
     where $Is(c#0, Tclass._module.SSS(TBool))
       && $IsAlloc(c#0, Tclass._module.SSS(TBool), $Heap);

    // AddMethodImpl: TestOthers, Impl$$_module.__default.TestOthers
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(39,9)
    assume true;
    assume true;
    a#0 := Lit(#_module.ABC.MakeABC($Box(LitInt(10))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(40,9)
    assume true;
    newtype$check#0 := null;
    assume true;
    b#0 := #_module.XYZ.MakeXYZ($Box(null));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(41,20)
    assume true;
    assert {:id "id35"} $Is(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(Lit(false))), $Box(Lit(true))), 
          $Box(Lit(false)))), 
      Tclass._module.SSS(TBool));
    assume true;
    c#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(Lit(false))), $Box(Lit(true))), 
        $Box(Lit(false))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(42,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "DoIt (well-formedness)"} CheckWellFormed$$_module.__default.DoIt(_module._default.DoIt$X: Ty);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DoIt (call)"} Call$$_module.__default.DoIt(_module._default.DoIt$X: Ty);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DoIt (correctness)"} Impl$$_module.__default.DoIt(_module._default.DoIt$X: Ty) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.ST0(Ty, Ty) : Ty;

const unique Tagclass._module.ST0: TyTag;

// Tclass._module.ST0 Tag
axiom (forall _module.ST0$T: Ty, _module.ST0$U: Ty :: 
  { Tclass._module.ST0(_module.ST0$T, _module.ST0$U) } 
  Tag(Tclass._module.ST0(_module.ST0$T, _module.ST0$U)) == Tagclass._module.ST0
     && TagFamily(Tclass._module.ST0(_module.ST0$T, _module.ST0$U)) == tytagFamily$ST0);

function Tclass._module.ST0_0(Ty) : Ty;

// Tclass._module.ST0 injectivity 0
axiom (forall _module.ST0$T: Ty, _module.ST0$U: Ty :: 
  { Tclass._module.ST0(_module.ST0$T, _module.ST0$U) } 
  Tclass._module.ST0_0(Tclass._module.ST0(_module.ST0$T, _module.ST0$U))
     == _module.ST0$T);

function Tclass._module.ST0_1(Ty) : Ty;

// Tclass._module.ST0 injectivity 1
axiom (forall _module.ST0$T: Ty, _module.ST0$U: Ty :: 
  { Tclass._module.ST0(_module.ST0$T, _module.ST0$U) } 
  Tclass._module.ST0_1(Tclass._module.ST0(_module.ST0$T, _module.ST0$U))
     == _module.ST0$U);

// Box/unbox axiom for Tclass._module.ST0
axiom (forall _module.ST0$T: Ty, _module.ST0$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.ST0(_module.ST0$T, _module.ST0$U)) } 
  $IsBox(bx, Tclass._module.ST0(_module.ST0$T, _module.ST0$U))
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass._module.ST0(_module.ST0$T, _module.ST0$U)));

function Tclass._module.ST1(Ty, Ty) : Ty;

const unique Tagclass._module.ST1: TyTag;

// Tclass._module.ST1 Tag
axiom (forall _module.ST1$T: Ty, _module.ST1$U: Ty :: 
  { Tclass._module.ST1(_module.ST1$T, _module.ST1$U) } 
  Tag(Tclass._module.ST1(_module.ST1$T, _module.ST1$U)) == Tagclass._module.ST1
     && TagFamily(Tclass._module.ST1(_module.ST1$T, _module.ST1$U)) == tytagFamily$ST1);

function Tclass._module.ST1_0(Ty) : Ty;

// Tclass._module.ST1 injectivity 0
axiom (forall _module.ST1$T: Ty, _module.ST1$U: Ty :: 
  { Tclass._module.ST1(_module.ST1$T, _module.ST1$U) } 
  Tclass._module.ST1_0(Tclass._module.ST1(_module.ST1$T, _module.ST1$U))
     == _module.ST1$T);

function Tclass._module.ST1_1(Ty) : Ty;

// Tclass._module.ST1 injectivity 1
axiom (forall _module.ST1$T: Ty, _module.ST1$U: Ty :: 
  { Tclass._module.ST1(_module.ST1$T, _module.ST1$U) } 
  Tclass._module.ST1_1(Tclass._module.ST1(_module.ST1$T, _module.ST1$U))
     == _module.ST1$U);

// Box/unbox axiom for Tclass._module.ST1
axiom (forall _module.ST1$T: Ty, _module.ST1$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.ST1(_module.ST1$T, _module.ST1$U)) } 
  $IsBox(bx, Tclass._module.ST1(_module.ST1$T, _module.ST1$U))
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass._module.ST1(_module.ST1$T, _module.ST1$U)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DoIt (correctness)"} Impl$$_module.__default.DoIt(_module._default.DoIt$X: Ty) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var t0#0: int where Mod(t0#0, LitInt(5)) == LitInt(1);
  var t1#0: int
     where (if (var m#0 := Lit(Map#Empty(): Map); Map#Equal(m#0, Map#Empty(): Map))
         then 0
         else 8)
       <= t1#0;
  var x##0: int;
  var suffix##0: Seq;
  var x##1: int;
  var suffix##1: Seq;

    // AddMethodImpl: DoIt, Impl$$_module.__default.DoIt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(49,23)
    assume true;
    havoc t0#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(50,23)
    assume true;
    havoc t1#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(51,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := t0#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##0 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))));
    call {:id "id37"} Call$$_module.__default.Print(Tclass._module.ST0(TInt, _module._default.DoIt$X), $Box(x##0), suffix##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3883.dfy(52,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := t1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    suffix##1 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(10))));
    call {:id "id38"} Call$$_module.__default.Print(Tclass._module.ST1(TInt, _module._default.DoIt$X), $Box(x##1), suffix##1);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Print (well-formedness)"} CheckWellFormed$$_module.__default.Print(_module._default.Print$X: Ty, 
    x#0: Box
       where $IsBox(x#0, _module._default.Print$X)
         && $IsAllocBox(x#0, _module._default.Print$X, $Heap), 
    suffix#0: Seq
       where $Is(suffix#0, TSeq(TChar)) && $IsAlloc(suffix#0, TSeq(TChar), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Print (call)"} Call$$_module.__default.Print(_module._default.Print$X: Ty, 
    x#0: Box
       where $IsBox(x#0, _module._default.Print$X)
         && $IsAllocBox(x#0, _module._default.Print$X, $Heap), 
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



procedure {:verboseName "Print (correctness)"} Impl$$_module.__default.Print(_module._default.Print$X: Ty, 
    x#0: Box
       where $IsBox(x#0, _module._default.Print$X)
         && $IsAllocBox(x#0, _module._default.Print$X, $Heap), 
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



// function declaration for _module._default.PartialFnWitness
function _module.__default.PartialFnWitness(_module._default.PartialFnWitness$R: Ty, x#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.PartialFnWitness
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.PartialFnWitness$R: Ty, x#0: int :: 
    { _module.__default.PartialFnWitness(_module._default.PartialFnWitness$R, x#0) } 
    _module.__default.PartialFnWitness#canCall(_module._default.PartialFnWitness$R, x#0)
         || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.PartialFnWitness(_module._default.PartialFnWitness$R, x#0), 
        Tclass._module.Option(_module._default.PartialFnWitness$R)));
// alloc consequence axiom for _module.__default.PartialFnWitness
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.PartialFnWitness$R: Ty, x#0: int :: 
    { $IsAlloc(_module.__default.PartialFnWitness(_module._default.PartialFnWitness$R, x#0), 
        Tclass._module.Option(_module._default.PartialFnWitness$R), 
        $Heap) } 
    (_module.__default.PartialFnWitness#canCall(_module._default.PartialFnWitness$R, x#0)
           || 1 < $FunctionContextHeight)
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.PartialFnWitness(_module._default.PartialFnWitness$R, x#0), 
        Tclass._module.Option(_module._default.PartialFnWitness$R), 
        $Heap));
// definition axiom for _module.__default.PartialFnWitness (revealed)
axiom {:id "id39"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.PartialFnWitness$R: Ty, x#0: int :: 
    { _module.__default.PartialFnWitness(_module._default.PartialFnWitness$R, x#0) } 
    _module.__default.PartialFnWitness#canCall(_module._default.PartialFnWitness$R, x#0)
         || 1 < $FunctionContextHeight
       ==> _module.__default.PartialFnWitness(_module._default.PartialFnWitness$R, x#0)
         == Lit(#_module.Option.None()));
// definition axiom for _module.__default.PartialFnWitness for all literals (revealed)
axiom {:id "id40"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.PartialFnWitness$R: Ty, x#0: int :: 
    {:weight 3} { _module.__default.PartialFnWitness(_module._default.PartialFnWitness$R, LitInt(x#0)) } 
    _module.__default.PartialFnWitness#canCall(_module._default.PartialFnWitness$R, LitInt(x#0))
         || 1 < $FunctionContextHeight
       ==> _module.__default.PartialFnWitness(_module._default.PartialFnWitness$R, LitInt(x#0))
         == Lit(#_module.Option.None()));
}

function _module.__default.PartialFnWitness#canCall(_module._default.PartialFnWitness$R: Ty, x#0: int) : bool;

function Tclass._module.Option(Ty) : Ty;

const unique Tagclass._module.Option: TyTag;

// Tclass._module.Option Tag
axiom (forall _module.Option$T: Ty :: 
  { Tclass._module.Option(_module.Option$T) } 
  Tag(Tclass._module.Option(_module.Option$T)) == Tagclass._module.Option
     && TagFamily(Tclass._module.Option(_module.Option$T)) == tytagFamily$Option);

function Tclass._module.Option_0(Ty) : Ty;

// Tclass._module.Option injectivity 0
axiom (forall _module.Option$T: Ty :: 
  { Tclass._module.Option(_module.Option$T) } 
  Tclass._module.Option_0(Tclass._module.Option(_module.Option$T))
     == _module.Option$T);

// Box/unbox axiom for Tclass._module.Option
axiom (forall _module.Option$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Option(_module.Option$T)) } 
  $IsBox(bx, Tclass._module.Option(_module.Option$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Option(_module.Option$T)));

function _module.__default.PartialFnWitness#requires(Ty, int) : bool;

// #requires axiom for _module.__default.PartialFnWitness
axiom (forall _module._default.PartialFnWitness$R: Ty, x#0: int :: 
  { _module.__default.PartialFnWitness#requires(_module._default.PartialFnWitness$R, x#0) } 
  _module.__default.PartialFnWitness#requires(_module._default.PartialFnWitness$R, x#0)
     == true);

procedure {:verboseName "PartialFnWitness (well-formedness)"} CheckWellformed$$_module.__default.PartialFnWitness(_module._default.PartialFnWitness$R: Ty, x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Arrows (well-formedness)"} CheckWellFormed$$_module.__default.Arrows();
  free requires 3 == $FunctionContextHeight;
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
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Fn(Ty) : Ty;

const unique Tagclass._module.Fn: TyTag;

// Tclass._module.Fn Tag
axiom (forall _module.Fn$R: Ty :: 
  { Tclass._module.Fn(_module.Fn$R) } 
  Tag(Tclass._module.Fn(_module.Fn$R)) == Tagclass._module.Fn
     && TagFamily(Tclass._module.Fn(_module.Fn$R)) == tytagFamily$Fn);

function Tclass._module.Fn_0(Ty) : Ty;

// Tclass._module.Fn injectivity 0
axiom (forall _module.Fn$R: Ty :: 
  { Tclass._module.Fn(_module.Fn$R) } 
  Tclass._module.Fn_0(Tclass._module.Fn(_module.Fn$R)) == _module.Fn$R);

// Box/unbox axiom for Tclass._module.Fn
axiom (forall _module.Fn$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Fn(_module.Fn$R)) } 
  $IsBox(bx, Tclass._module.Fn(_module.Fn$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._module.Fn(_module.Fn$R)));

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

function Tclass._module.Fn0(Ty) : Ty;

const unique Tagclass._module.Fn0: TyTag;

// Tclass._module.Fn0 Tag
axiom (forall _module.Fn0$R: Ty :: 
  { Tclass._module.Fn0(_module.Fn0$R) } 
  Tag(Tclass._module.Fn0(_module.Fn0$R)) == Tagclass._module.Fn0
     && TagFamily(Tclass._module.Fn0(_module.Fn0$R)) == tytagFamily$Fn0);

function Tclass._module.Fn0_0(Ty) : Ty;

// Tclass._module.Fn0 injectivity 0
axiom (forall _module.Fn0$R: Ty :: 
  { Tclass._module.Fn0(_module.Fn0$R) } 
  Tclass._module.Fn0_0(Tclass._module.Fn0(_module.Fn0$R)) == _module.Fn0$R);

// Box/unbox axiom for Tclass._module.Fn0
axiom (forall _module.Fn0$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Fn0(_module.Fn0$R)) } 
  $IsBox(bx, Tclass._module.Fn0(_module.Fn0$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._module.Fn0(_module.Fn0$R)));

function Tclass._module.Fn1(Ty) : Ty;

const unique Tagclass._module.Fn1: TyTag;

// Tclass._module.Fn1 Tag
axiom (forall _module.Fn1$R: Ty :: 
  { Tclass._module.Fn1(_module.Fn1$R) } 
  Tag(Tclass._module.Fn1(_module.Fn1$R)) == Tagclass._module.Fn1
     && TagFamily(Tclass._module.Fn1(_module.Fn1$R)) == tytagFamily$Fn1);

function Tclass._module.Fn1_0(Ty) : Ty;

// Tclass._module.Fn1 injectivity 0
axiom (forall _module.Fn1$R: Ty :: 
  { Tclass._module.Fn1(_module.Fn1$R) } 
  Tclass._module.Fn1_0(Tclass._module.Fn1(_module.Fn1$R)) == _module.Fn1$R);

// Box/unbox axiom for Tclass._module.Fn1
axiom (forall _module.Fn1$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Fn1(_module.Fn1$R)) } 
  $IsBox(bx, Tclass._module.Fn1(_module.Fn1$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._module.Fn1(_module.Fn1$R)));

procedure {:verboseName "MyType (well-formedness)"} CheckWellFormed$$_module.MyType(_module.MyType$T: Ty, x#0: Box);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for subset type _module.MyType
axiom (forall _module.MyType$T: Ty, x#0: Box :: 
  { $IsBox(x#0, Tclass._module.MyType(_module.MyType$T)) } 
  $IsBox(x#0, Tclass._module.MyType(_module.MyType$T))
     <==> $IsBox(x#0, _module.MyType$T) && Lit(true));

// $IsAlloc axiom for subset type _module.MyType
axiom (forall _module.MyType$T: Ty, x#0: Box, $h: Heap :: 
  { $IsAllocBox(x#0, Tclass._module.MyType(_module.MyType$T), $h) } 
  $IsAllocBox(x#0, Tclass._module.MyType(_module.MyType$T), $h)
     <==> $IsAllocBox(x#0, _module.MyType$T, $h));

procedure {:verboseName "MyInt (well-formedness)"} CheckWellFormed$$_module.MyInt(_module.MyInt$T: Ty, x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for subset type _module.MyInt
axiom (forall _module.MyInt$T: Ty, x#0: int :: 
  { $Is(x#0, Tclass._module.MyInt(_module.MyInt$T)) } 
  $Is(x#0, Tclass._module.MyInt(_module.MyInt$T)) <==> Lit(true));

// $IsAlloc axiom for subset type _module.MyInt
axiom (forall _module.MyInt$T: Ty, x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.MyInt(_module.MyInt$T), $h) } 
  $IsAlloc(x#0, Tclass._module.MyInt(_module.MyInt$T), $h));

// Constructor function declaration
function #_module.ABC.MakeABC(Box) : DatatypeType;

const unique ##_module.ABC.MakeABC: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #_module.ABC.MakeABC(a#0#0#0) } 
  DatatypeCtorId(#_module.ABC.MakeABC(a#0#0#0)) == ##_module.ABC.MakeABC);
}

function _module.ABC.MakeABC_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.ABC.MakeABC_q(d) } 
  _module.ABC.MakeABC_q(d) <==> DatatypeCtorId(d) == ##_module.ABC.MakeABC);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.ABC.MakeABC_q(d) } 
  _module.ABC.MakeABC_q(d)
     ==> (exists a#1#0#0: Box :: d == #_module.ABC.MakeABC(a#1#0#0)));

// Constructor $Is
axiom (forall _module.ABC$X: Ty, a#2#0#0: Box :: 
  { $Is(#_module.ABC.MakeABC(a#2#0#0), Tclass._module.ABC(_module.ABC$X)) } 
  $Is(#_module.ABC.MakeABC(a#2#0#0), Tclass._module.ABC(_module.ABC$X))
     <==> $IsBox(a#2#0#0, _module.ABC$X));

// Constructor $IsAlloc
axiom (forall _module.ABC$X: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.ABC.MakeABC(a#2#0#0), Tclass._module.ABC(_module.ABC$X), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.ABC.MakeABC(a#2#0#0), Tclass._module.ABC(_module.ABC$X), $h)
       <==> $IsAllocBox(a#2#0#0, _module.ABC$X, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.ABC$X: Ty, $h: Heap :: 
  { $IsAllocBox(_module.ABC._h0(d), _module.ABC$X, $h) } 
  $IsGoodHeap($h)
       && 
      _module.ABC.MakeABC_q(d)
       && $IsAlloc(d, Tclass._module.ABC(_module.ABC$X), $h)
     ==> $IsAllocBox(_module.ABC._h0(d), _module.ABC$X, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #_module.ABC.MakeABC(Lit(a#3#0#0)) } 
  #_module.ABC.MakeABC(Lit(a#3#0#0)) == Lit(#_module.ABC.MakeABC(a#3#0#0)));

function _module.ABC._h0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #_module.ABC.MakeABC(a#4#0#0) } 
  _module.ABC._h0(#_module.ABC.MakeABC(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #_module.ABC.MakeABC(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#_module.ABC.MakeABC(a#5#0#0)));

// Depth-one case-split function
function $IsA#_module.ABC(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.ABC(d) } 
  $IsA#_module.ABC(d) ==> _module.ABC.MakeABC_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.ABC$X: Ty, d: DatatypeType :: 
  { _module.ABC.MakeABC_q(d), $Is(d, Tclass._module.ABC(_module.ABC$X)) } 
  $Is(d, Tclass._module.ABC(_module.ABC$X)) ==> _module.ABC.MakeABC_q(d));

// Datatype extensional equality declaration
function _module.ABC#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.ABC.MakeABC
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.ABC#Equal(a, b) } 
  _module.ABC#Equal(a, b) <==> _module.ABC._h0(a) == _module.ABC._h0(b));

// Datatype extensionality axiom: _module.ABC
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.ABC#Equal(a, b) } 
  _module.ABC#Equal(a, b) <==> a == b);

const unique class._module.ABC: ClassName;

// Constructor function declaration
function #_module.XYZ.MakeXYZ(Box) : DatatypeType;

const unique ##_module.XYZ.MakeXYZ: DtCtorId
uses {
// Constructor identifier
axiom (forall a#6#0#0: Box :: 
  { #_module.XYZ.MakeXYZ(a#6#0#0) } 
  DatatypeCtorId(#_module.XYZ.MakeXYZ(a#6#0#0)) == ##_module.XYZ.MakeXYZ);
}

function _module.XYZ.MakeXYZ_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.XYZ.MakeXYZ_q(d) } 
  _module.XYZ.MakeXYZ_q(d) <==> DatatypeCtorId(d) == ##_module.XYZ.MakeXYZ);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.XYZ.MakeXYZ_q(d) } 
  _module.XYZ.MakeXYZ_q(d)
     ==> (exists a#7#0#0: Box :: d == #_module.XYZ.MakeXYZ(a#7#0#0)));

// Constructor $Is
axiom (forall _module.XYZ$A: Ty, a#8#0#0: Box :: 
  { $Is(#_module.XYZ.MakeXYZ(a#8#0#0), Tclass._module.XYZ(_module.XYZ$A)) } 
  $Is(#_module.XYZ.MakeXYZ(a#8#0#0), Tclass._module.XYZ(_module.XYZ$A))
     <==> $IsBox(a#8#0#0, _module.XYZ$A));

// Constructor $IsAlloc
axiom (forall _module.XYZ$A: Ty, a#8#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.XYZ.MakeXYZ(a#8#0#0), Tclass._module.XYZ(_module.XYZ$A), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.XYZ.MakeXYZ(a#8#0#0), Tclass._module.XYZ(_module.XYZ$A), $h)
       <==> $IsAllocBox(a#8#0#0, _module.XYZ$A, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.XYZ$A: Ty, $h: Heap :: 
  { $IsAllocBox(_module.XYZ._h1(d), _module.XYZ$A, $h) } 
  $IsGoodHeap($h)
       && 
      _module.XYZ.MakeXYZ_q(d)
       && $IsAlloc(d, Tclass._module.XYZ(_module.XYZ$A), $h)
     ==> $IsAllocBox(_module.XYZ._h1(d), _module.XYZ$A, $h));

// Constructor literal
axiom (forall a#9#0#0: Box :: 
  { #_module.XYZ.MakeXYZ(Lit(a#9#0#0)) } 
  #_module.XYZ.MakeXYZ(Lit(a#9#0#0)) == Lit(#_module.XYZ.MakeXYZ(a#9#0#0)));

function _module.XYZ._h1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#10#0#0: Box :: 
  { #_module.XYZ.MakeXYZ(a#10#0#0) } 
  _module.XYZ._h1(#_module.XYZ.MakeXYZ(a#10#0#0)) == a#10#0#0);

// Inductive rank
axiom (forall a#11#0#0: Box :: 
  { #_module.XYZ.MakeXYZ(a#11#0#0) } 
  BoxRank(a#11#0#0) < DtRank(#_module.XYZ.MakeXYZ(a#11#0#0)));

// Depth-one case-split function
function $IsA#_module.XYZ(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.XYZ(d) } 
  $IsA#_module.XYZ(d) ==> _module.XYZ.MakeXYZ_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.XYZ$A: Ty, d: DatatypeType :: 
  { _module.XYZ.MakeXYZ_q(d), $Is(d, Tclass._module.XYZ(_module.XYZ$A)) } 
  $Is(d, Tclass._module.XYZ(_module.XYZ$A)) ==> _module.XYZ.MakeXYZ_q(d));

// Datatype extensional equality declaration
function _module.XYZ#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.XYZ.MakeXYZ
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.XYZ#Equal(a, b) } 
  _module.XYZ#Equal(a, b) <==> _module.XYZ._h1(a) == _module.XYZ._h1(b));

// Datatype extensionality axiom: _module.XYZ
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.XYZ#Equal(a, b) } 
  _module.XYZ#Equal(a, b) <==> a == b);

const unique class._module.XYZ: ClassName;

procedure {:verboseName "SSS (well-formedness)"} CheckWellFormed$$_module.SSS(_module.SSS$Y: Ty, s#0: Seq);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SSS (well-formedness)"} CheckWellFormed$$_module.SSS(_module.SSS$Y: Ty, s#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type SSS
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(s#0, TSeq(_module.SSS$Y));
        assume {:id "id44"} Seq#Length(s#0) <= LitInt(10);
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id45"} Seq#Length(Lit(Seq#Empty(): Seq)) <= LitInt(10);
        assume false;
    }
}



// $Is axiom for subset type _module.SSS
axiom (forall _module.SSS$Y: Ty, s#0: Seq :: 
  { $Is(s#0, Tclass._module.SSS(_module.SSS$Y)) } 
  $Is(s#0, Tclass._module.SSS(_module.SSS$Y))
     <==> $Is(s#0, TSeq(_module.SSS$Y)) && Seq#Length(s#0) <= LitInt(10));

// $IsAlloc axiom for subset type _module.SSS
axiom (forall _module.SSS$Y: Ty, s#0: Seq, $h: Heap :: 
  { $IsAlloc(s#0, Tclass._module.SSS(_module.SSS$Y), $h) } 
  $IsAlloc(s#0, Tclass._module.SSS(_module.SSS$Y), $h)
     <==> $IsAlloc(s#0, TSeq(_module.SSS$Y), $h));

procedure {:verboseName "ST0 (well-formedness)"} CheckWellFormed$$_module.ST0(_module.ST0$T: Ty, _module.ST0$U: Ty, x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ST0 (well-formedness)"} CheckWellFormed$$_module.ST0(_module.ST0$T: Ty, _module.ST0$U: Ty, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type ST0
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assert {:id "id46"} LitInt(5) != 0;
        assume {:id "id47"} Mod(x#0, LitInt(5)) == LitInt(1);
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id48"} LitInt(Mod(16, LitInt(5))) == LitInt(1);
        assume false;
    }
}



// $Is axiom for subset type _module.ST0
axiom (forall _module.ST0$T: Ty, _module.ST0$U: Ty, x#0: int :: 
  { $Is(x#0, Tclass._module.ST0(_module.ST0$T, _module.ST0$U)) } 
  $Is(x#0, Tclass._module.ST0(_module.ST0$T, _module.ST0$U))
     <==> Mod(x#0, LitInt(5)) == LitInt(1));

// $IsAlloc axiom for subset type _module.ST0
axiom (forall _module.ST0$T: Ty, _module.ST0$U: Ty, x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.ST0(_module.ST0$T, _module.ST0$U), $h) } 
  $IsAlloc(x#0, Tclass._module.ST0(_module.ST0$T, _module.ST0$U), $h));

procedure {:verboseName "ST1 (well-formedness)"} CheckWellFormed$$_module.ST1(_module.ST1$T: Ty, _module.ST1$U: Ty, x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ST1 (well-formedness)"} CheckWellFormed$$_module.ST1(_module.ST1$T: Ty, _module.ST1$U: Ty, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var m#Z#0: Map;
  var let#0#0#0: Map;


    // AddWellformednessCheck for subset type ST1
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        havoc m#Z#0;
        assume {:id "id49"} let#0#0#0 == Lit(Map#Empty(): Map);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TMap(_module.ST1$T, _module.ST1$U));
        assume {:id "id50"} m#Z#0 == let#0#0#0;
        if ((var m#0 := Lit(Map#Empty(): Map); Map#Equal(m#0, Map#Empty(): Map)))
        {
        }
        else
        {
        }

        assume {:id "id51"} (if (var m#0 := Lit(Map#Empty(): Map); Map#Equal(m#0, Map#Empty(): Map))
             then 0
             else 8)
           <= x#0;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id52"} (if (var m#1 := Lit(Map#Empty(): Map); Map#Equal(m#1, Map#Empty(): Map))
             then 0
             else 8)
           <= LitInt(0);
        assume false;
    }
}



// $Is axiom for subset type _module.ST1
axiom (forall _module.ST1$T: Ty, _module.ST1$U: Ty, x#0: int :: 
  { $Is(x#0, Tclass._module.ST1(_module.ST1$T, _module.ST1$U)) } 
  $Is(x#0, Tclass._module.ST1(_module.ST1$T, _module.ST1$U))
     <==> (if (var m#2 := Lit(Map#Empty(): Map); Map#Equal(m#2, Map#Empty(): Map))
         then 0
         else 8)
       <= x#0);

// $IsAlloc axiom for subset type _module.ST1
axiom (forall _module.ST1$T: Ty, _module.ST1$U: Ty, x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.ST1(_module.ST1$T, _module.ST1$U), $h) } 
  $IsAlloc(x#0, Tclass._module.ST1(_module.ST1$T, _module.ST1$U), $h));

procedure {:verboseName "pos (well-formedness)"} CheckWellFormed$$_module.pos(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "pos (well-formedness)"} CheckWellFormed$$_module.pos(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type pos
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume {:id "id53"} LitInt(1) <= x#0;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id54"} LitInt(1) <= LitInt(9);
        assume false;
    }
}



// $Is axiom for subset type _module.pos
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.pos()) } 
  $Is(x#0, Tclass._module.pos()) <==> LitInt(1) <= x#0);

// $IsAlloc axiom for subset type _module.pos
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.pos(), $h) } 
  $IsAlloc(x#0, Tclass._module.pos(), $h));

procedure {:verboseName "Fn (well-formedness)"} CheckWellFormed$$_module.Fn(_module.Fn$R: Ty, f#0: HandleType);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for subset type _module.Fn
axiom (forall _module.Fn$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._module.Fn(_module.Fn$R)) } 
  $Is(f#0, Tclass._module.Fn(_module.Fn$R))
     <==> $Is(f#0, Tclass._System.___hTotalFunc1(TInt, _module.Fn$R)) && Lit(true));

// $IsAlloc axiom for subset type _module.Fn
axiom (forall _module.Fn$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._module.Fn(_module.Fn$R), $h) } 
  $IsAlloc(f#0, Tclass._module.Fn(_module.Fn$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hTotalFunc1(TInt, _module.Fn$R), $h));

// Constructor function declaration
function #_module.Option.Some(Box) : DatatypeType;

const unique ##_module.Option.Some: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #_module.Option.Some(a#0#0#0) } 
  DatatypeCtorId(#_module.Option.Some(a#0#0#0)) == ##_module.Option.Some);
}

function _module.Option.Some_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Option.Some_q(d) } 
  _module.Option.Some_q(d) <==> DatatypeCtorId(d) == ##_module.Option.Some);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Option.Some_q(d) } 
  _module.Option.Some_q(d)
     ==> (exists a#1#0#0: Box :: d == #_module.Option.Some(a#1#0#0)));

// Constructor $Is
axiom (forall _module.Option$T: Ty, a#2#0#0: Box :: 
  { $Is(#_module.Option.Some(a#2#0#0), Tclass._module.Option(_module.Option$T)) } 
  $Is(#_module.Option.Some(a#2#0#0), Tclass._module.Option(_module.Option$T))
     <==> $IsBox(a#2#0#0, _module.Option$T));

// Constructor $IsAlloc
axiom (forall _module.Option$T: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Option.Some(a#2#0#0), Tclass._module.Option(_module.Option$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Option.Some(a#2#0#0), Tclass._module.Option(_module.Option$T), $h)
       <==> $IsAllocBox(a#2#0#0, _module.Option$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Option$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Option.t(d), _module.Option$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Option.Some_q(d)
       && $IsAlloc(d, Tclass._module.Option(_module.Option$T), $h)
     ==> $IsAllocBox(_module.Option.t(d), _module.Option$T, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #_module.Option.Some(Lit(a#3#0#0)) } 
  #_module.Option.Some(Lit(a#3#0#0)) == Lit(#_module.Option.Some(a#3#0#0)));

function _module.Option.t(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #_module.Option.Some(a#4#0#0) } 
  _module.Option.t(#_module.Option.Some(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #_module.Option.Some(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#_module.Option.Some(a#5#0#0)));

// Constructor function declaration
function #_module.Option.None() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Option.None()) == ##_module.Option.None;
// Constructor literal
axiom #_module.Option.None() == Lit(#_module.Option.None());
}

const unique ##_module.Option.None: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Option.None()) == ##_module.Option.None;
}

function _module.Option.None_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Option.None_q(d) } 
  _module.Option.None_q(d) <==> DatatypeCtorId(d) == ##_module.Option.None);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Option.None_q(d) } 
  _module.Option.None_q(d) ==> d == #_module.Option.None());

// Constructor $Is
axiom (forall _module.Option$T: Ty :: 
  { $Is(#_module.Option.None(), Tclass._module.Option(_module.Option$T)) } 
  $Is(#_module.Option.None(), Tclass._module.Option(_module.Option$T)));

// Constructor $IsAlloc
axiom (forall _module.Option$T: Ty, $h: Heap :: 
  { $IsAlloc(#_module.Option.None(), Tclass._module.Option(_module.Option$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.Option.None(), Tclass._module.Option(_module.Option$T), $h));

// Depth-one case-split function
function $IsA#_module.Option(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Option(d) } 
  $IsA#_module.Option(d) ==> _module.Option.Some_q(d) || _module.Option.None_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Option$T: Ty, d: DatatypeType :: 
  { _module.Option.None_q(d), $Is(d, Tclass._module.Option(_module.Option$T)) } 
    { _module.Option.Some_q(d), $Is(d, Tclass._module.Option(_module.Option$T)) } 
  $Is(d, Tclass._module.Option(_module.Option$T))
     ==> _module.Option.Some_q(d) || _module.Option.None_q(d));

// Datatype extensional equality declaration
function _module.Option#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Option.Some
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Option#Equal(a, b), _module.Option.Some_q(a) } 
    { _module.Option#Equal(a, b), _module.Option.Some_q(b) } 
  _module.Option.Some_q(a) && _module.Option.Some_q(b)
     ==> (_module.Option#Equal(a, b) <==> _module.Option.t(a) == _module.Option.t(b)));

// Datatype extensional equality definition: #_module.Option.None
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Option#Equal(a, b), _module.Option.None_q(a) } 
    { _module.Option#Equal(a, b), _module.Option.None_q(b) } 
  _module.Option.None_q(a) && _module.Option.None_q(b)
     ==> _module.Option#Equal(a, b));

// Datatype extensionality axiom: _module.Option
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Option#Equal(a, b) } 
  _module.Option#Equal(a, b) <==> a == b);

const unique class._module.Option: ClassName;

procedure {:verboseName "Fn0 (well-formedness)"} CheckWellFormed$$_module.Fn0(_module.Fn0$R: Ty, f#0: HandleType);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



function _module.__default.PartialFnWitness#Handle(_module._default.PartialFnWitness$R: Ty) : HandleType;

axiom (forall _module._default.PartialFnWitness$R: Ty, $heap: Heap, $fh$0x#0: Box :: 
  { Apply1(TInt, 
      Tclass._module.Option(_module._default.PartialFnWitness$R), 
      $heap, 
      _module.__default.PartialFnWitness#Handle(_module._default.PartialFnWitness$R), 
      $fh$0x#0) } 
  Apply1(TInt, 
      Tclass._module.Option(_module._default.PartialFnWitness$R), 
      $heap, 
      _module.__default.PartialFnWitness#Handle(_module._default.PartialFnWitness$R), 
      $fh$0x#0)
     == $Box(_module.__default.PartialFnWitness(_module._default.PartialFnWitness$R, $Unbox($fh$0x#0): int)));

axiom (forall _module._default.PartialFnWitness$R: Ty, $heap: Heap, $fh$0x#0: Box :: 
  { Requires1(TInt, 
      Tclass._module.Option(_module._default.PartialFnWitness$R), 
      $heap, 
      _module.__default.PartialFnWitness#Handle(_module._default.PartialFnWitness$R), 
      $fh$0x#0) } 
  Requires1(TInt, 
      Tclass._module.Option(_module._default.PartialFnWitness$R), 
      $heap, 
      _module.__default.PartialFnWitness#Handle(_module._default.PartialFnWitness$R), 
      $fh$0x#0)
     == _module.__default.PartialFnWitness#requires(_module._default.PartialFnWitness$R, $Unbox($fh$0x#0): int));

axiom (forall $bx: Box, _module._default.PartialFnWitness$R: Ty, $heap: Heap, $fh$0x#0: Box :: 
  { Set#IsMember(Reads1(TInt, 
        Tclass._module.Option(_module._default.PartialFnWitness$R), 
        $heap, 
        _module.__default.PartialFnWitness#Handle(_module._default.PartialFnWitness$R), 
        $fh$0x#0), 
      $bx) } 
  Set#IsMember(Reads1(TInt, 
        Tclass._module.Option(_module._default.PartialFnWitness$R), 
        $heap, 
        _module.__default.PartialFnWitness#Handle(_module._default.PartialFnWitness$R), 
        $fh$0x#0), 
      $bx)
     == false);

axiom (forall _module._default.PartialFnWitness$R: Ty, $heap: Heap, $fh$0x#0: int :: 
  { _module.__default.PartialFnWitness(_module._default.PartialFnWitness$R, $fh$0x#0), $IsGoodHeap($heap) } 
  _module.__default.PartialFnWitness(_module._default.PartialFnWitness$R, $fh$0x#0)
     == $Unbox(Apply1(TInt, 
        Tclass._module.Option(_module._default.PartialFnWitness$R), 
        $heap, 
        _module.__default.PartialFnWitness#Handle(_module._default.PartialFnWitness$R), 
        $Box($fh$0x#0))): DatatypeType);

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fn0 (well-formedness)"} CheckWellFormed$$_module.Fn0(_module.Fn0$R: Ty, f#0: HandleType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: HandleType;
  var newtype$check#1: HandleType;


    // AddWellformednessCheck for subset type Fn0
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(f#0, Tclass._System.___hTotalFunc1(TInt, Tclass._module.Option(_module.Fn0$R)));
        assume {:id "id56"} true;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assert {:id "id57"} 1 != $FunctionContextHeight;
        newtype$check#0 := _module.__default.PartialFnWitness#Handle(_module.Fn0$R);
        assert {:id "id58"} (forall x0#0: int :: 
          Set#Equal(Reads1(TInt, Tclass._module.Option(_module.Fn0$R), $Heap, newtype$check#0, $Box(x0#0)), 
            Set#Empty(): Set));
        assert {:id "id59"} (forall x0#1: int :: 
          Requires1(TInt, Tclass._module.Option(_module.Fn0$R), $Heap, newtype$check#0, $Box(x0#1)));
        newtype$check#1 := _module.__default.PartialFnWitness#Handle(_module.Fn0$R);
        assert {:id "id60"} (forall x0#2: int :: 
          Set#Equal(Reads1(TInt, Tclass._module.Option(_module.Fn0$R), $Heap, newtype$check#1, $Box(x0#2)), 
            Set#Empty(): Set));
        assert {:id "id61"} (forall x0#3: int :: 
          Requires1(TInt, Tclass._module.Option(_module.Fn0$R), $Heap, newtype$check#1, $Box(x0#3)));
        assume true;
        assert {:id "id62"} Lit(true);
        assume false;
    }
}



// $Is axiom for subset type _module.Fn0
axiom (forall _module.Fn0$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._module.Fn0(_module.Fn0$R)) } 
  $Is(f#0, Tclass._module.Fn0(_module.Fn0$R))
     <==> $Is(f#0, Tclass._System.___hTotalFunc1(TInt, Tclass._module.Option(_module.Fn0$R)))
       && Lit(true));

// $IsAlloc axiom for subset type _module.Fn0
axiom (forall _module.Fn0$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._module.Fn0(_module.Fn0$R), $h) } 
  $IsAlloc(f#0, Tclass._module.Fn0(_module.Fn0$R), $h)
     <==> $IsAlloc(f#0, 
      Tclass._System.___hTotalFunc1(TInt, Tclass._module.Option(_module.Fn0$R)), 
      $h));

procedure {:verboseName "Fn1 (well-formedness)"} CheckWellFormed$$_module.Fn1(_module.Fn1$R: Ty, f#0: HandleType);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fn1 (well-formedness)"} CheckWellFormed$$_module.Fn1(_module.Fn1$R: Ty, f#0: HandleType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: HandleType;
  var newtype$check#1: HandleType;


    // AddWellformednessCheck for subset type Fn1
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(f#0, Tclass._System.___hTotalFunc1(TInt, Tclass._module.Option(_module.Fn1$R)));
        assume {:id "id63"} true;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assert {:id "id64"} 1 != $FunctionContextHeight;
        newtype$check#0 := _module.__default.PartialFnWitness#Handle(_module.Fn1$R);
        assert {:id "id65"} (forall x0#0: int :: 
          Set#Equal(Reads1(TInt, Tclass._module.Option(_module.Fn1$R), $Heap, newtype$check#0, $Box(x0#0)), 
            Set#Empty(): Set));
        assert {:id "id66"} (forall x0#1: int :: 
          Requires1(TInt, Tclass._module.Option(_module.Fn1$R), $Heap, newtype$check#0, $Box(x0#1)));
        newtype$check#1 := _module.__default.PartialFnWitness#Handle(_module.Fn1$R);
        assert {:id "id67"} (forall x0#2: int :: 
          Set#Equal(Reads1(TInt, Tclass._module.Option(_module.Fn1$R), $Heap, newtype$check#1, $Box(x0#2)), 
            Set#Empty(): Set));
        assert {:id "id68"} (forall x0#3: int :: 
          Requires1(TInt, Tclass._module.Option(_module.Fn1$R), $Heap, newtype$check#1, $Box(x0#3)));
        assume true;
        assert {:id "id69"} Lit(true);
        assume false;
    }
}



// $Is axiom for subset type _module.Fn1
axiom (forall _module.Fn1$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._module.Fn1(_module.Fn1$R)) } 
  $Is(f#0, Tclass._module.Fn1(_module.Fn1$R))
     <==> $Is(f#0, Tclass._System.___hTotalFunc1(TInt, Tclass._module.Option(_module.Fn1$R)))
       && Lit(true));

// $IsAlloc axiom for subset type _module.Fn1
axiom (forall _module.Fn1$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._module.Fn1(_module.Fn1$R), $h) } 
  $IsAlloc(f#0, Tclass._module.Fn1(_module.Fn1$R), $h)
     <==> $IsAlloc(f#0, 
      Tclass._System.___hTotalFunc1(TInt, Tclass._module.Option(_module.Fn1$R)), 
      $h));

const unique class.MoreTests.__default: ClassName;

procedure {:verboseName "MoreTests.Placebo (well-formedness)"} CheckWellFormed$$MoreTests.__default.Placebo();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MoreTests.Placebo (call)"} Call$$MoreTests.__default.Placebo();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// Constructor function declaration
function #MoreTests.BSingle.BPlop(bool) : DatatypeType;

const unique ##MoreTests.BSingle.BPlop: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: bool :: 
  { #MoreTests.BSingle.BPlop(a#0#0#0) } 
  DatatypeCtorId(#MoreTests.BSingle.BPlop(a#0#0#0)) == ##MoreTests.BSingle.BPlop);
}

function MoreTests.BSingle.BPlop_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreTests.BSingle.BPlop_q(d) } 
  MoreTests.BSingle.BPlop_q(d) <==> DatatypeCtorId(d) == ##MoreTests.BSingle.BPlop);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreTests.BSingle.BPlop_q(d) } 
  MoreTests.BSingle.BPlop_q(d)
     ==> (exists a#1#0#0: bool :: d == #MoreTests.BSingle.BPlop(a#1#0#0)));

function Tclass.MoreTests.BSingle(Ty) : Ty;

const unique Tagclass.MoreTests.BSingle: TyTag;

// Tclass.MoreTests.BSingle Tag
axiom (forall MoreTests.BSingle$X: Ty :: 
  { Tclass.MoreTests.BSingle(MoreTests.BSingle$X) } 
  Tag(Tclass.MoreTests.BSingle(MoreTests.BSingle$X)) == Tagclass.MoreTests.BSingle
     && TagFamily(Tclass.MoreTests.BSingle(MoreTests.BSingle$X)) == tytagFamily$BSingle);

function Tclass.MoreTests.BSingle_0(Ty) : Ty;

// Tclass.MoreTests.BSingle injectivity 0
axiom (forall MoreTests.BSingle$X: Ty :: 
  { Tclass.MoreTests.BSingle(MoreTests.BSingle$X) } 
  Tclass.MoreTests.BSingle_0(Tclass.MoreTests.BSingle(MoreTests.BSingle$X))
     == MoreTests.BSingle$X);

// Box/unbox axiom for Tclass.MoreTests.BSingle
axiom (forall MoreTests.BSingle$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.BSingle(MoreTests.BSingle$X)) } 
  $IsBox(bx, Tclass.MoreTests.BSingle(MoreTests.BSingle$X))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MoreTests.BSingle(MoreTests.BSingle$X)));

// Constructor $Is
axiom (forall MoreTests.BSingle$X: Ty, a#2#0#0: bool :: 
  { $Is(#MoreTests.BSingle.BPlop(a#2#0#0), Tclass.MoreTests.BSingle(MoreTests.BSingle$X)) } 
  $Is(#MoreTests.BSingle.BPlop(a#2#0#0), Tclass.MoreTests.BSingle(MoreTests.BSingle$X))
     <==> $Is(a#2#0#0, TBool));

// Constructor $IsAlloc
axiom (forall MoreTests.BSingle$X: Ty, a#2#0#0: bool, $h: Heap :: 
  { $IsAlloc(#MoreTests.BSingle.BPlop(a#2#0#0), 
      Tclass.MoreTests.BSingle(MoreTests.BSingle$X), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#MoreTests.BSingle.BPlop(a#2#0#0), 
        Tclass.MoreTests.BSingle(MoreTests.BSingle$X), 
        $h)
       <==> $IsAlloc(a#2#0#0, TBool, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(MoreTests.BSingle._h2(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      MoreTests.BSingle.BPlop_q(d)
       && (exists MoreTests.BSingle$X: Ty :: 
        { $IsAlloc(d, Tclass.MoreTests.BSingle(MoreTests.BSingle$X), $h) } 
        $IsAlloc(d, Tclass.MoreTests.BSingle(MoreTests.BSingle$X), $h))
     ==> $IsAlloc(MoreTests.BSingle._h2(d), TBool, $h));

// Constructor literal
axiom (forall a#3#0#0: bool :: 
  { #MoreTests.BSingle.BPlop(Lit(a#3#0#0)) } 
  #MoreTests.BSingle.BPlop(Lit(a#3#0#0)) == Lit(#MoreTests.BSingle.BPlop(a#3#0#0)));

function MoreTests.BSingle._h2(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#4#0#0: bool :: 
  { #MoreTests.BSingle.BPlop(a#4#0#0) } 
  MoreTests.BSingle._h2(#MoreTests.BSingle.BPlop(a#4#0#0)) == a#4#0#0);

// Depth-one case-split function
function $IsA#MoreTests.BSingle(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MoreTests.BSingle(d) } 
  $IsA#MoreTests.BSingle(d) ==> MoreTests.BSingle.BPlop_q(d));

// Questionmark data type disjunctivity
axiom (forall MoreTests.BSingle$X: Ty, d: DatatypeType :: 
  { MoreTests.BSingle.BPlop_q(d), $Is(d, Tclass.MoreTests.BSingle(MoreTests.BSingle$X)) } 
  $Is(d, Tclass.MoreTests.BSingle(MoreTests.BSingle$X))
     ==> MoreTests.BSingle.BPlop_q(d));

// Datatype extensional equality declaration
function MoreTests.BSingle#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MoreTests.BSingle.BPlop
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.BSingle#Equal(a, b) } 
  MoreTests.BSingle#Equal(a, b)
     <==> MoreTests.BSingle._h2(a) == MoreTests.BSingle._h2(b));

// Datatype extensionality axiom: MoreTests.BSingle
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.BSingle#Equal(a, b) } 
  MoreTests.BSingle#Equal(a, b) <==> a == b);

const unique class.MoreTests.BSingle: ClassName;

function Tclass.MoreTests.BMyTypeWrapper(Ty) : Ty;

const unique Tagclass.MoreTests.BMyTypeWrapper: TyTag;

// Tclass.MoreTests.BMyTypeWrapper Tag
axiom (forall MoreTests.BMyTypeWrapper$T: Ty :: 
  { Tclass.MoreTests.BMyTypeWrapper(MoreTests.BMyTypeWrapper$T) } 
  Tag(Tclass.MoreTests.BMyTypeWrapper(MoreTests.BMyTypeWrapper$T))
       == Tagclass.MoreTests.BMyTypeWrapper
     && TagFamily(Tclass.MoreTests.BMyTypeWrapper(MoreTests.BMyTypeWrapper$T))
       == tytagFamily$BMyTypeWrapper);

function Tclass.MoreTests.BMyTypeWrapper_0(Ty) : Ty;

// Tclass.MoreTests.BMyTypeWrapper injectivity 0
axiom (forall MoreTests.BMyTypeWrapper$T: Ty :: 
  { Tclass.MoreTests.BMyTypeWrapper(MoreTests.BMyTypeWrapper$T) } 
  Tclass.MoreTests.BMyTypeWrapper_0(Tclass.MoreTests.BMyTypeWrapper(MoreTests.BMyTypeWrapper$T))
     == MoreTests.BMyTypeWrapper$T);

// Box/unbox axiom for Tclass.MoreTests.BMyTypeWrapper
axiom (forall MoreTests.BMyTypeWrapper$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.BMyTypeWrapper(MoreTests.BMyTypeWrapper$T)) } 
  $IsBox(bx, Tclass.MoreTests.BMyTypeWrapper(MoreTests.BMyTypeWrapper$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.MoreTests.BMyTypeWrapper(MoreTests.BMyTypeWrapper$T)));

// $Is axiom for subset type MoreTests.BMyTypeWrapper
axiom (forall MoreTests.BMyTypeWrapper$T: Ty, x#0: DatatypeType :: 
  { $Is(x#0, Tclass.MoreTests.BMyTypeWrapper(MoreTests.BMyTypeWrapper$T)) } 
  $Is(x#0, Tclass.MoreTests.BMyTypeWrapper(MoreTests.BMyTypeWrapper$T))
     <==> $Is(x#0, Tclass.MoreTests.BSingle(MoreTests.BMyTypeWrapper$T)) && Lit(true));

// $IsAlloc axiom for subset type MoreTests.BMyTypeWrapper
axiom (forall MoreTests.BMyTypeWrapper$T: Ty, x#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.MoreTests.BMyTypeWrapper(MoreTests.BMyTypeWrapper$T), $h) } 
  $IsAlloc(x#0, Tclass.MoreTests.BMyTypeWrapper(MoreTests.BMyTypeWrapper$T), $h)
     <==> $IsAlloc(x#0, Tclass.MoreTests.BSingle(MoreTests.BMyTypeWrapper$T), $h));

// Constructor function declaration
function #MoreTests.BD.BD(DatatypeType) : DatatypeType;

const unique ##MoreTests.BD.BD: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: DatatypeType :: 
  { #MoreTests.BD.BD(a#5#0#0) } 
  DatatypeCtorId(#MoreTests.BD.BD(a#5#0#0)) == ##MoreTests.BD.BD);
}

function MoreTests.BD.BD_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreTests.BD.BD_q(d) } 
  MoreTests.BD.BD_q(d) <==> DatatypeCtorId(d) == ##MoreTests.BD.BD);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreTests.BD.BD_q(d) } 
  MoreTests.BD.BD_q(d)
     ==> (exists a#6#0#0: DatatypeType :: d == #MoreTests.BD.BD(a#6#0#0)));

function Tclass.MoreTests.BD() : Ty
uses {
// Tclass.MoreTests.BD Tag
axiom Tag(Tclass.MoreTests.BD()) == Tagclass.MoreTests.BD
   && TagFamily(Tclass.MoreTests.BD()) == tytagFamily$BD;
}

const unique Tagclass.MoreTests.BD: TyTag;

// Box/unbox axiom for Tclass.MoreTests.BD
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.BD()) } 
  $IsBox(bx, Tclass.MoreTests.BD())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MoreTests.BD()));

// Constructor $Is
axiom (forall a#7#0#0: DatatypeType :: 
  { $Is(#MoreTests.BD.BD(a#7#0#0), Tclass.MoreTests.BD()) } 
  $Is(#MoreTests.BD.BD(a#7#0#0), Tclass.MoreTests.BD())
     <==> $Is(a#7#0#0, Tclass.MoreTests.BMyTypeWrapper(TInt)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(MoreTests.BD._h3(d), Tclass.MoreTests.BMyTypeWrapper(TInt), $h) } 
  $IsGoodHeap($h)
       && 
      MoreTests.BD.BD_q(d)
       && $IsAlloc(d, Tclass.MoreTests.BD(), $h)
     ==> $IsAlloc(MoreTests.BD._h3(d), Tclass.MoreTests.BMyTypeWrapper(TInt), $h));

// Constructor literal
axiom (forall a#8#0#0: DatatypeType :: 
  { #MoreTests.BD.BD(Lit(a#8#0#0)) } 
  #MoreTests.BD.BD(Lit(a#8#0#0)) == Lit(#MoreTests.BD.BD(a#8#0#0)));

function MoreTests.BD._h3(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#9#0#0: DatatypeType :: 
  { #MoreTests.BD.BD(a#9#0#0) } 
  MoreTests.BD._h3(#MoreTests.BD.BD(a#9#0#0)) == a#9#0#0);

// Inductive rank
axiom (forall a#10#0#0: DatatypeType :: 
  { #MoreTests.BD.BD(a#10#0#0) } 
  DtRank(a#10#0#0) < DtRank(#MoreTests.BD.BD(a#10#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.MoreTests.BD(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.MoreTests.BD())
     ==> $IsAlloc(d, Tclass.MoreTests.BD(), $h));

// Depth-one case-split function
function $IsA#MoreTests.BD(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MoreTests.BD(d) } 
  $IsA#MoreTests.BD(d) ==> MoreTests.BD.BD_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { MoreTests.BD.BD_q(d), $Is(d, Tclass.MoreTests.BD()) } 
  $Is(d, Tclass.MoreTests.BD()) ==> MoreTests.BD.BD_q(d));

// Datatype extensional equality declaration
function MoreTests.BD#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MoreTests.BD.BD
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.BD#Equal(a, b) } 
  MoreTests.BD#Equal(a, b)
     <==> MoreTests.BSingle#Equal(MoreTests.BD._h3(a), MoreTests.BD._h3(b)));

// Datatype extensionality axiom: MoreTests.BD
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.BD#Equal(a, b) } 
  MoreTests.BD#Equal(a, b) <==> a == b);

const unique class.MoreTests.BD: ClassName;

// Constructor function declaration
function #MoreTests.XSingle.XPlop(Box) : DatatypeType;

const unique ##MoreTests.XSingle.XPlop: DtCtorId
uses {
// Constructor identifier
axiom (forall a#11#0#0: Box :: 
  { #MoreTests.XSingle.XPlop(a#11#0#0) } 
  DatatypeCtorId(#MoreTests.XSingle.XPlop(a#11#0#0)) == ##MoreTests.XSingle.XPlop);
}

function MoreTests.XSingle.XPlop_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreTests.XSingle.XPlop_q(d) } 
  MoreTests.XSingle.XPlop_q(d) <==> DatatypeCtorId(d) == ##MoreTests.XSingle.XPlop);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreTests.XSingle.XPlop_q(d) } 
  MoreTests.XSingle.XPlop_q(d)
     ==> (exists a#12#0#0: Box :: d == #MoreTests.XSingle.XPlop(a#12#0#0)));

function Tclass.MoreTests.XSingle(Ty) : Ty;

const unique Tagclass.MoreTests.XSingle: TyTag;

// Tclass.MoreTests.XSingle Tag
axiom (forall MoreTests.XSingle$X: Ty :: 
  { Tclass.MoreTests.XSingle(MoreTests.XSingle$X) } 
  Tag(Tclass.MoreTests.XSingle(MoreTests.XSingle$X)) == Tagclass.MoreTests.XSingle
     && TagFamily(Tclass.MoreTests.XSingle(MoreTests.XSingle$X)) == tytagFamily$XSingle);

function Tclass.MoreTests.XSingle_0(Ty) : Ty;

// Tclass.MoreTests.XSingle injectivity 0
axiom (forall MoreTests.XSingle$X: Ty :: 
  { Tclass.MoreTests.XSingle(MoreTests.XSingle$X) } 
  Tclass.MoreTests.XSingle_0(Tclass.MoreTests.XSingle(MoreTests.XSingle$X))
     == MoreTests.XSingle$X);

// Box/unbox axiom for Tclass.MoreTests.XSingle
axiom (forall MoreTests.XSingle$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.XSingle(MoreTests.XSingle$X)) } 
  $IsBox(bx, Tclass.MoreTests.XSingle(MoreTests.XSingle$X))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MoreTests.XSingle(MoreTests.XSingle$X)));

// Constructor $Is
axiom (forall MoreTests.XSingle$X: Ty, a#13#0#0: Box :: 
  { $Is(#MoreTests.XSingle.XPlop(a#13#0#0), 
      Tclass.MoreTests.XSingle(MoreTests.XSingle$X)) } 
  $Is(#MoreTests.XSingle.XPlop(a#13#0#0), 
      Tclass.MoreTests.XSingle(MoreTests.XSingle$X))
     <==> $IsBox(a#13#0#0, MoreTests.XSingle$X));

// Constructor $IsAlloc
axiom (forall MoreTests.XSingle$X: Ty, a#13#0#0: Box, $h: Heap :: 
  { $IsAlloc(#MoreTests.XSingle.XPlop(a#13#0#0), 
      Tclass.MoreTests.XSingle(MoreTests.XSingle$X), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#MoreTests.XSingle.XPlop(a#13#0#0), 
        Tclass.MoreTests.XSingle(MoreTests.XSingle$X), 
        $h)
       <==> $IsAllocBox(a#13#0#0, MoreTests.XSingle$X, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, MoreTests.XSingle$X: Ty, $h: Heap :: 
  { $IsAllocBox(MoreTests.XSingle._h4(d), MoreTests.XSingle$X, $h) } 
  $IsGoodHeap($h)
       && 
      MoreTests.XSingle.XPlop_q(d)
       && $IsAlloc(d, Tclass.MoreTests.XSingle(MoreTests.XSingle$X), $h)
     ==> $IsAllocBox(MoreTests.XSingle._h4(d), MoreTests.XSingle$X, $h));

// Constructor literal
axiom (forall a#14#0#0: Box :: 
  { #MoreTests.XSingle.XPlop(Lit(a#14#0#0)) } 
  #MoreTests.XSingle.XPlop(Lit(a#14#0#0))
     == Lit(#MoreTests.XSingle.XPlop(a#14#0#0)));

function MoreTests.XSingle._h4(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#15#0#0: Box :: 
  { #MoreTests.XSingle.XPlop(a#15#0#0) } 
  MoreTests.XSingle._h4(#MoreTests.XSingle.XPlop(a#15#0#0)) == a#15#0#0);

// Inductive rank
axiom (forall a#16#0#0: Box :: 
  { #MoreTests.XSingle.XPlop(a#16#0#0) } 
  BoxRank(a#16#0#0) < DtRank(#MoreTests.XSingle.XPlop(a#16#0#0)));

// Depth-one case-split function
function $IsA#MoreTests.XSingle(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MoreTests.XSingle(d) } 
  $IsA#MoreTests.XSingle(d) ==> MoreTests.XSingle.XPlop_q(d));

// Questionmark data type disjunctivity
axiom (forall MoreTests.XSingle$X: Ty, d: DatatypeType :: 
  { MoreTests.XSingle.XPlop_q(d), $Is(d, Tclass.MoreTests.XSingle(MoreTests.XSingle$X)) } 
  $Is(d, Tclass.MoreTests.XSingle(MoreTests.XSingle$X))
     ==> MoreTests.XSingle.XPlop_q(d));

// Datatype extensional equality declaration
function MoreTests.XSingle#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MoreTests.XSingle.XPlop
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.XSingle#Equal(a, b) } 
  MoreTests.XSingle#Equal(a, b)
     <==> MoreTests.XSingle._h4(a) == MoreTests.XSingle._h4(b));

// Datatype extensionality axiom: MoreTests.XSingle
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.XSingle#Equal(a, b) } 
  MoreTests.XSingle#Equal(a, b) <==> a == b);

const unique class.MoreTests.XSingle: ClassName;

function Tclass.MoreTests.XMyTypeWrapper(Ty) : Ty;

const unique Tagclass.MoreTests.XMyTypeWrapper: TyTag;

// Tclass.MoreTests.XMyTypeWrapper Tag
axiom (forall MoreTests.XMyTypeWrapper$T: Ty :: 
  { Tclass.MoreTests.XMyTypeWrapper(MoreTests.XMyTypeWrapper$T) } 
  Tag(Tclass.MoreTests.XMyTypeWrapper(MoreTests.XMyTypeWrapper$T))
       == Tagclass.MoreTests.XMyTypeWrapper
     && TagFamily(Tclass.MoreTests.XMyTypeWrapper(MoreTests.XMyTypeWrapper$T))
       == tytagFamily$XMyTypeWrapper);

function Tclass.MoreTests.XMyTypeWrapper_0(Ty) : Ty;

// Tclass.MoreTests.XMyTypeWrapper injectivity 0
axiom (forall MoreTests.XMyTypeWrapper$T: Ty :: 
  { Tclass.MoreTests.XMyTypeWrapper(MoreTests.XMyTypeWrapper$T) } 
  Tclass.MoreTests.XMyTypeWrapper_0(Tclass.MoreTests.XMyTypeWrapper(MoreTests.XMyTypeWrapper$T))
     == MoreTests.XMyTypeWrapper$T);

// Box/unbox axiom for Tclass.MoreTests.XMyTypeWrapper
axiom (forall MoreTests.XMyTypeWrapper$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.XMyTypeWrapper(MoreTests.XMyTypeWrapper$T)) } 
  $IsBox(bx, Tclass.MoreTests.XMyTypeWrapper(MoreTests.XMyTypeWrapper$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.MoreTests.XMyTypeWrapper(MoreTests.XMyTypeWrapper$T)));

// $Is axiom for subset type MoreTests.XMyTypeWrapper
axiom (forall MoreTests.XMyTypeWrapper$T: Ty, x#0: DatatypeType :: 
  { $Is(x#0, Tclass.MoreTests.XMyTypeWrapper(MoreTests.XMyTypeWrapper$T)) } 
  $Is(x#0, Tclass.MoreTests.XMyTypeWrapper(MoreTests.XMyTypeWrapper$T))
     <==> $Is(x#0, Tclass.MoreTests.XSingle(MoreTests.XMyTypeWrapper$T)) && Lit(true));

// $IsAlloc axiom for subset type MoreTests.XMyTypeWrapper
axiom (forall MoreTests.XMyTypeWrapper$T: Ty, x#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.MoreTests.XMyTypeWrapper(MoreTests.XMyTypeWrapper$T), $h) } 
  $IsAlloc(x#0, Tclass.MoreTests.XMyTypeWrapper(MoreTests.XMyTypeWrapper$T), $h)
     <==> $IsAlloc(x#0, Tclass.MoreTests.XSingle(MoreTests.XMyTypeWrapper$T), $h));

// Constructor function declaration
function #MoreTests.XD.XD(DatatypeType) : DatatypeType;

const unique ##MoreTests.XD.XD: DtCtorId
uses {
// Constructor identifier
axiom (forall a#17#0#0: DatatypeType :: 
  { #MoreTests.XD.XD(a#17#0#0) } 
  DatatypeCtorId(#MoreTests.XD.XD(a#17#0#0)) == ##MoreTests.XD.XD);
}

function MoreTests.XD.XD_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreTests.XD.XD_q(d) } 
  MoreTests.XD.XD_q(d) <==> DatatypeCtorId(d) == ##MoreTests.XD.XD);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreTests.XD.XD_q(d) } 
  MoreTests.XD.XD_q(d)
     ==> (exists a#18#0#0: DatatypeType :: d == #MoreTests.XD.XD(a#18#0#0)));

function Tclass.MoreTests.XD() : Ty
uses {
// Tclass.MoreTests.XD Tag
axiom Tag(Tclass.MoreTests.XD()) == Tagclass.MoreTests.XD
   && TagFamily(Tclass.MoreTests.XD()) == tytagFamily$XD;
}

const unique Tagclass.MoreTests.XD: TyTag;

// Box/unbox axiom for Tclass.MoreTests.XD
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.XD()) } 
  $IsBox(bx, Tclass.MoreTests.XD())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MoreTests.XD()));

// Constructor $Is
axiom (forall a#19#0#0: DatatypeType :: 
  { $Is(#MoreTests.XD.XD(a#19#0#0), Tclass.MoreTests.XD()) } 
  $Is(#MoreTests.XD.XD(a#19#0#0), Tclass.MoreTests.XD())
     <==> $Is(a#19#0#0, Tclass.MoreTests.XMyTypeWrapper(TInt)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(MoreTests.XD._h5(d), Tclass.MoreTests.XMyTypeWrapper(TInt), $h) } 
  $IsGoodHeap($h)
       && 
      MoreTests.XD.XD_q(d)
       && $IsAlloc(d, Tclass.MoreTests.XD(), $h)
     ==> $IsAlloc(MoreTests.XD._h5(d), Tclass.MoreTests.XMyTypeWrapper(TInt), $h));

// Constructor literal
axiom (forall a#20#0#0: DatatypeType :: 
  { #MoreTests.XD.XD(Lit(a#20#0#0)) } 
  #MoreTests.XD.XD(Lit(a#20#0#0)) == Lit(#MoreTests.XD.XD(a#20#0#0)));

function MoreTests.XD._h5(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#21#0#0: DatatypeType :: 
  { #MoreTests.XD.XD(a#21#0#0) } 
  MoreTests.XD._h5(#MoreTests.XD.XD(a#21#0#0)) == a#21#0#0);

// Inductive rank
axiom (forall a#22#0#0: DatatypeType :: 
  { #MoreTests.XD.XD(a#22#0#0) } 
  DtRank(a#22#0#0) < DtRank(#MoreTests.XD.XD(a#22#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.MoreTests.XD(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.MoreTests.XD())
     ==> $IsAlloc(d, Tclass.MoreTests.XD(), $h));

// Depth-one case-split function
function $IsA#MoreTests.XD(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MoreTests.XD(d) } 
  $IsA#MoreTests.XD(d) ==> MoreTests.XD.XD_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { MoreTests.XD.XD_q(d), $Is(d, Tclass.MoreTests.XD()) } 
  $Is(d, Tclass.MoreTests.XD()) ==> MoreTests.XD.XD_q(d));

// Datatype extensional equality declaration
function MoreTests.XD#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MoreTests.XD.XD
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.XD#Equal(a, b) } 
  MoreTests.XD#Equal(a, b)
     <==> MoreTests.XSingle#Equal(MoreTests.XD._h5(a), MoreTests.XD._h5(b)));

// Datatype extensionality axiom: MoreTests.XD
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.XD#Equal(a, b) } 
  MoreTests.XD#Equal(a, b) <==> a == b);

const unique class.MoreTests.XD: ClassName;

// Constructor function declaration
function #MoreTests.IntCell.IntCell(int) : DatatypeType;

const unique ##MoreTests.IntCell.IntCell: DtCtorId
uses {
// Constructor identifier
axiom (forall a#23#0#0: int :: 
  { #MoreTests.IntCell.IntCell(a#23#0#0) } 
  DatatypeCtorId(#MoreTests.IntCell.IntCell(a#23#0#0))
     == ##MoreTests.IntCell.IntCell);
}

function MoreTests.IntCell.IntCell_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreTests.IntCell.IntCell_q(d) } 
  MoreTests.IntCell.IntCell_q(d)
     <==> DatatypeCtorId(d) == ##MoreTests.IntCell.IntCell);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreTests.IntCell.IntCell_q(d) } 
  MoreTests.IntCell.IntCell_q(d)
     ==> (exists a#24#0#0: int :: d == #MoreTests.IntCell.IntCell(a#24#0#0)));

function Tclass.MoreTests.IntCell() : Ty
uses {
// Tclass.MoreTests.IntCell Tag
axiom Tag(Tclass.MoreTests.IntCell()) == Tagclass.MoreTests.IntCell
   && TagFamily(Tclass.MoreTests.IntCell()) == tytagFamily$IntCell;
}

const unique Tagclass.MoreTests.IntCell: TyTag;

// Box/unbox axiom for Tclass.MoreTests.IntCell
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.IntCell()) } 
  $IsBox(bx, Tclass.MoreTests.IntCell())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MoreTests.IntCell()));

// Constructor $Is
axiom (forall a#25#0#0: int :: 
  { $Is(#MoreTests.IntCell.IntCell(a#25#0#0), Tclass.MoreTests.IntCell()) } 
  $Is(#MoreTests.IntCell.IntCell(a#25#0#0), Tclass.MoreTests.IntCell())
     <==> $Is(a#25#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(MoreTests.IntCell._h6(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      MoreTests.IntCell.IntCell_q(d)
       && $IsAlloc(d, Tclass.MoreTests.IntCell(), $h)
     ==> $IsAlloc(MoreTests.IntCell._h6(d), TInt, $h));

// Constructor literal
axiom (forall a#26#0#0: int :: 
  { #MoreTests.IntCell.IntCell(LitInt(a#26#0#0)) } 
  #MoreTests.IntCell.IntCell(LitInt(a#26#0#0))
     == Lit(#MoreTests.IntCell.IntCell(a#26#0#0)));

function MoreTests.IntCell._h6(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#27#0#0: int :: 
  { #MoreTests.IntCell.IntCell(a#27#0#0) } 
  MoreTests.IntCell._h6(#MoreTests.IntCell.IntCell(a#27#0#0)) == a#27#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.MoreTests.IntCell(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.MoreTests.IntCell())
     ==> $IsAlloc(d, Tclass.MoreTests.IntCell(), $h));

// Depth-one case-split function
function $IsA#MoreTests.IntCell(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MoreTests.IntCell(d) } 
  $IsA#MoreTests.IntCell(d) ==> MoreTests.IntCell.IntCell_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { MoreTests.IntCell.IntCell_q(d), $Is(d, Tclass.MoreTests.IntCell()) } 
  $Is(d, Tclass.MoreTests.IntCell()) ==> MoreTests.IntCell.IntCell_q(d));

// Datatype extensional equality declaration
function MoreTests.IntCell#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MoreTests.IntCell.IntCell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.IntCell#Equal(a, b) } 
  MoreTests.IntCell#Equal(a, b)
     <==> MoreTests.IntCell._h6(a) == MoreTests.IntCell._h6(b));

// Datatype extensionality axiom: MoreTests.IntCell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.IntCell#Equal(a, b) } 
  MoreTests.IntCell#Equal(a, b) <==> a == b);

const unique class.MoreTests.IntCell: ClassName;

function Tclass.MoreTests.ConstrainedIntCell() : Ty
uses {
// Tclass.MoreTests.ConstrainedIntCell Tag
axiom Tag(Tclass.MoreTests.ConstrainedIntCell())
     == Tagclass.MoreTests.ConstrainedIntCell
   && TagFamily(Tclass.MoreTests.ConstrainedIntCell())
     == tytagFamily$ConstrainedIntCell;
}

const unique Tagclass.MoreTests.ConstrainedIntCell: TyTag;

// Box/unbox axiom for Tclass.MoreTests.ConstrainedIntCell
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.ConstrainedIntCell()) } 
  $IsBox(bx, Tclass.MoreTests.ConstrainedIntCell())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MoreTests.ConstrainedIntCell()));

// $Is axiom for subset type MoreTests.ConstrainedIntCell
axiom (forall c#0: DatatypeType :: 
  { $Is(c#0, Tclass.MoreTests.ConstrainedIntCell()) } 
  $Is(c#0, Tclass.MoreTests.ConstrainedIntCell())
     <==> $Is(c#0, Tclass.MoreTests.IntCell()) && Lit(true));

// $IsAlloc axiom for subset type MoreTests.ConstrainedIntCell
axiom (forall c#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.MoreTests.ConstrainedIntCell(), $h) } 
  $IsAlloc(c#0, Tclass.MoreTests.ConstrainedIntCell(), $h)
     <==> $IsAlloc(c#0, Tclass.MoreTests.IntCell(), $h));

// Constructor function declaration
function #MoreTests.WrappedInt.WrappedInt(DatatypeType) : DatatypeType;

const unique ##MoreTests.WrappedInt.WrappedInt: DtCtorId
uses {
// Constructor identifier
axiom (forall a#28#0#0: DatatypeType :: 
  { #MoreTests.WrappedInt.WrappedInt(a#28#0#0) } 
  DatatypeCtorId(#MoreTests.WrappedInt.WrappedInt(a#28#0#0))
     == ##MoreTests.WrappedInt.WrappedInt);
}

function MoreTests.WrappedInt.WrappedInt_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreTests.WrappedInt.WrappedInt_q(d) } 
  MoreTests.WrappedInt.WrappedInt_q(d)
     <==> DatatypeCtorId(d) == ##MoreTests.WrappedInt.WrappedInt);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreTests.WrappedInt.WrappedInt_q(d) } 
  MoreTests.WrappedInt.WrappedInt_q(d)
     ==> (exists a#29#0#0: DatatypeType :: 
      d == #MoreTests.WrappedInt.WrappedInt(a#29#0#0)));

function Tclass.MoreTests.WrappedInt() : Ty
uses {
// Tclass.MoreTests.WrappedInt Tag
axiom Tag(Tclass.MoreTests.WrappedInt()) == Tagclass.MoreTests.WrappedInt
   && TagFamily(Tclass.MoreTests.WrappedInt()) == tytagFamily$WrappedInt;
}

const unique Tagclass.MoreTests.WrappedInt: TyTag;

// Box/unbox axiom for Tclass.MoreTests.WrappedInt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.WrappedInt()) } 
  $IsBox(bx, Tclass.MoreTests.WrappedInt())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MoreTests.WrappedInt()));

// Constructor $Is
axiom (forall a#30#0#0: DatatypeType :: 
  { $Is(#MoreTests.WrappedInt.WrappedInt(a#30#0#0), Tclass.MoreTests.WrappedInt()) } 
  $Is(#MoreTests.WrappedInt.WrappedInt(a#30#0#0), Tclass.MoreTests.WrappedInt())
     <==> $Is(a#30#0#0, Tclass.MoreTests.ConstrainedIntCell()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(MoreTests.WrappedInt._h7(d), Tclass.MoreTests.ConstrainedIntCell(), $h) } 
  $IsGoodHeap($h)
       && 
      MoreTests.WrappedInt.WrappedInt_q(d)
       && $IsAlloc(d, Tclass.MoreTests.WrappedInt(), $h)
     ==> $IsAlloc(MoreTests.WrappedInt._h7(d), Tclass.MoreTests.ConstrainedIntCell(), $h));

// Constructor literal
axiom (forall a#31#0#0: DatatypeType :: 
  { #MoreTests.WrappedInt.WrappedInt(Lit(a#31#0#0)) } 
  #MoreTests.WrappedInt.WrappedInt(Lit(a#31#0#0))
     == Lit(#MoreTests.WrappedInt.WrappedInt(a#31#0#0)));

function MoreTests.WrappedInt._h7(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#32#0#0: DatatypeType :: 
  { #MoreTests.WrappedInt.WrappedInt(a#32#0#0) } 
  MoreTests.WrappedInt._h7(#MoreTests.WrappedInt.WrappedInt(a#32#0#0)) == a#32#0#0);

// Inductive rank
axiom (forall a#33#0#0: DatatypeType :: 
  { #MoreTests.WrappedInt.WrappedInt(a#33#0#0) } 
  DtRank(a#33#0#0) < DtRank(#MoreTests.WrappedInt.WrappedInt(a#33#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.MoreTests.WrappedInt(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.MoreTests.WrappedInt())
     ==> $IsAlloc(d, Tclass.MoreTests.WrappedInt(), $h));

// Depth-one case-split function
function $IsA#MoreTests.WrappedInt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MoreTests.WrappedInt(d) } 
  $IsA#MoreTests.WrappedInt(d) ==> MoreTests.WrappedInt.WrappedInt_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { MoreTests.WrappedInt.WrappedInt_q(d), $Is(d, Tclass.MoreTests.WrappedInt()) } 
  $Is(d, Tclass.MoreTests.WrappedInt()) ==> MoreTests.WrappedInt.WrappedInt_q(d));

// Datatype extensional equality declaration
function MoreTests.WrappedInt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MoreTests.WrappedInt.WrappedInt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.WrappedInt#Equal(a, b) } 
  MoreTests.WrappedInt#Equal(a, b)
     <==> MoreTests.IntCell#Equal(MoreTests.WrappedInt._h7(a), MoreTests.WrappedInt._h7(b)));

// Datatype extensionality axiom: MoreTests.WrappedInt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.WrappedInt#Equal(a, b) } 
  MoreTests.WrappedInt#Equal(a, b) <==> a == b);

const unique class.MoreTests.WrappedInt: ClassName;

function Tclass.MoreTests.MyTypeAroundInt(Ty) : Ty;

const unique Tagclass.MoreTests.MyTypeAroundInt: TyTag;

// Tclass.MoreTests.MyTypeAroundInt Tag
axiom (forall MoreTests.MyTypeAroundInt$T: Ty :: 
  { Tclass.MoreTests.MyTypeAroundInt(MoreTests.MyTypeAroundInt$T) } 
  Tag(Tclass.MoreTests.MyTypeAroundInt(MoreTests.MyTypeAroundInt$T))
       == Tagclass.MoreTests.MyTypeAroundInt
     && TagFamily(Tclass.MoreTests.MyTypeAroundInt(MoreTests.MyTypeAroundInt$T))
       == tytagFamily$MyTypeAroundInt);

function Tclass.MoreTests.MyTypeAroundInt_0(Ty) : Ty;

// Tclass.MoreTests.MyTypeAroundInt injectivity 0
axiom (forall MoreTests.MyTypeAroundInt$T: Ty :: 
  { Tclass.MoreTests.MyTypeAroundInt(MoreTests.MyTypeAroundInt$T) } 
  Tclass.MoreTests.MyTypeAroundInt_0(Tclass.MoreTests.MyTypeAroundInt(MoreTests.MyTypeAroundInt$T))
     == MoreTests.MyTypeAroundInt$T);

// Box/unbox axiom for Tclass.MoreTests.MyTypeAroundInt
axiom (forall MoreTests.MyTypeAroundInt$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.MyTypeAroundInt(MoreTests.MyTypeAroundInt$T)) } 
  $IsBox(bx, Tclass.MoreTests.MyTypeAroundInt(MoreTests.MyTypeAroundInt$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.MoreTests.MyTypeAroundInt(MoreTests.MyTypeAroundInt$T)));

// $Is axiom for subset type MoreTests.MyTypeAroundInt
axiom (forall MoreTests.MyTypeAroundInt$T: Ty, x#0: DatatypeType :: 
  { $Is(x#0, Tclass.MoreTests.MyTypeAroundInt(MoreTests.MyTypeAroundInt$T)) } 
  $Is(x#0, Tclass.MoreTests.MyTypeAroundInt(MoreTests.MyTypeAroundInt$T))
     <==> $Is(x#0, Tclass.MoreTests.WrappedInt()) && Lit(true));

// $IsAlloc axiom for subset type MoreTests.MyTypeAroundInt
axiom (forall MoreTests.MyTypeAroundInt$T: Ty, x#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.MoreTests.MyTypeAroundInt(MoreTests.MyTypeAroundInt$T), $h) } 
  $IsAlloc(x#0, Tclass.MoreTests.MyTypeAroundInt(MoreTests.MyTypeAroundInt$T), $h)
     <==> $IsAlloc(x#0, Tclass.MoreTests.WrappedInt(), $h));

// Constructor function declaration
function #MoreTests.UCell.UCell(Box) : DatatypeType;

const unique ##MoreTests.UCell.UCell: DtCtorId
uses {
// Constructor identifier
axiom (forall a#34#0#0: Box :: 
  { #MoreTests.UCell.UCell(a#34#0#0) } 
  DatatypeCtorId(#MoreTests.UCell.UCell(a#34#0#0)) == ##MoreTests.UCell.UCell);
}

function MoreTests.UCell.UCell_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreTests.UCell.UCell_q(d) } 
  MoreTests.UCell.UCell_q(d) <==> DatatypeCtorId(d) == ##MoreTests.UCell.UCell);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreTests.UCell.UCell_q(d) } 
  MoreTests.UCell.UCell_q(d)
     ==> (exists a#35#0#0: Box :: d == #MoreTests.UCell.UCell(a#35#0#0)));

function Tclass.MoreTests.UCell(Ty) : Ty;

const unique Tagclass.MoreTests.UCell: TyTag;

// Tclass.MoreTests.UCell Tag
axiom (forall MoreTests.UCell$U: Ty :: 
  { Tclass.MoreTests.UCell(MoreTests.UCell$U) } 
  Tag(Tclass.MoreTests.UCell(MoreTests.UCell$U)) == Tagclass.MoreTests.UCell
     && TagFamily(Tclass.MoreTests.UCell(MoreTests.UCell$U)) == tytagFamily$UCell);

function Tclass.MoreTests.UCell_0(Ty) : Ty;

// Tclass.MoreTests.UCell injectivity 0
axiom (forall MoreTests.UCell$U: Ty :: 
  { Tclass.MoreTests.UCell(MoreTests.UCell$U) } 
  Tclass.MoreTests.UCell_0(Tclass.MoreTests.UCell(MoreTests.UCell$U))
     == MoreTests.UCell$U);

// Box/unbox axiom for Tclass.MoreTests.UCell
axiom (forall MoreTests.UCell$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.UCell(MoreTests.UCell$U)) } 
  $IsBox(bx, Tclass.MoreTests.UCell(MoreTests.UCell$U))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MoreTests.UCell(MoreTests.UCell$U)));

// Constructor $Is
axiom (forall MoreTests.UCell$U: Ty, a#36#0#0: Box :: 
  { $Is(#MoreTests.UCell.UCell(a#36#0#0), Tclass.MoreTests.UCell(MoreTests.UCell$U)) } 
  $Is(#MoreTests.UCell.UCell(a#36#0#0), Tclass.MoreTests.UCell(MoreTests.UCell$U))
     <==> $IsBox(a#36#0#0, MoreTests.UCell$U));

// Constructor $IsAlloc
axiom (forall MoreTests.UCell$U: Ty, a#36#0#0: Box, $h: Heap :: 
  { $IsAlloc(#MoreTests.UCell.UCell(a#36#0#0), Tclass.MoreTests.UCell(MoreTests.UCell$U), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#MoreTests.UCell.UCell(a#36#0#0), Tclass.MoreTests.UCell(MoreTests.UCell$U), $h)
       <==> $IsAllocBox(a#36#0#0, MoreTests.UCell$U, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, MoreTests.UCell$U: Ty, $h: Heap :: 
  { $IsAllocBox(MoreTests.UCell._h8(d), MoreTests.UCell$U, $h) } 
  $IsGoodHeap($h)
       && 
      MoreTests.UCell.UCell_q(d)
       && $IsAlloc(d, Tclass.MoreTests.UCell(MoreTests.UCell$U), $h)
     ==> $IsAllocBox(MoreTests.UCell._h8(d), MoreTests.UCell$U, $h));

// Constructor literal
axiom (forall a#37#0#0: Box :: 
  { #MoreTests.UCell.UCell(Lit(a#37#0#0)) } 
  #MoreTests.UCell.UCell(Lit(a#37#0#0)) == Lit(#MoreTests.UCell.UCell(a#37#0#0)));

function MoreTests.UCell._h8(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#38#0#0: Box :: 
  { #MoreTests.UCell.UCell(a#38#0#0) } 
  MoreTests.UCell._h8(#MoreTests.UCell.UCell(a#38#0#0)) == a#38#0#0);

// Inductive rank
axiom (forall a#39#0#0: Box :: 
  { #MoreTests.UCell.UCell(a#39#0#0) } 
  BoxRank(a#39#0#0) < DtRank(#MoreTests.UCell.UCell(a#39#0#0)));

// Depth-one case-split function
function $IsA#MoreTests.UCell(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MoreTests.UCell(d) } 
  $IsA#MoreTests.UCell(d) ==> MoreTests.UCell.UCell_q(d));

// Questionmark data type disjunctivity
axiom (forall MoreTests.UCell$U: Ty, d: DatatypeType :: 
  { MoreTests.UCell.UCell_q(d), $Is(d, Tclass.MoreTests.UCell(MoreTests.UCell$U)) } 
  $Is(d, Tclass.MoreTests.UCell(MoreTests.UCell$U)) ==> MoreTests.UCell.UCell_q(d));

// Datatype extensional equality declaration
function MoreTests.UCell#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MoreTests.UCell.UCell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.UCell#Equal(a, b) } 
  MoreTests.UCell#Equal(a, b)
     <==> MoreTests.UCell._h8(a) == MoreTests.UCell._h8(b));

// Datatype extensionality axiom: MoreTests.UCell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.UCell#Equal(a, b) } 
  MoreTests.UCell#Equal(a, b) <==> a == b);

const unique class.MoreTests.UCell: ClassName;

function Tclass.MoreTests.ConstrainedUCell(Ty) : Ty;

const unique Tagclass.MoreTests.ConstrainedUCell: TyTag;

// Tclass.MoreTests.ConstrainedUCell Tag
axiom (forall MoreTests.ConstrainedUCell$U: Ty :: 
  { Tclass.MoreTests.ConstrainedUCell(MoreTests.ConstrainedUCell$U) } 
  Tag(Tclass.MoreTests.ConstrainedUCell(MoreTests.ConstrainedUCell$U))
       == Tagclass.MoreTests.ConstrainedUCell
     && TagFamily(Tclass.MoreTests.ConstrainedUCell(MoreTests.ConstrainedUCell$U))
       == tytagFamily$ConstrainedUCell);

function Tclass.MoreTests.ConstrainedUCell_0(Ty) : Ty;

// Tclass.MoreTests.ConstrainedUCell injectivity 0
axiom (forall MoreTests.ConstrainedUCell$U: Ty :: 
  { Tclass.MoreTests.ConstrainedUCell(MoreTests.ConstrainedUCell$U) } 
  Tclass.MoreTests.ConstrainedUCell_0(Tclass.MoreTests.ConstrainedUCell(MoreTests.ConstrainedUCell$U))
     == MoreTests.ConstrainedUCell$U);

// Box/unbox axiom for Tclass.MoreTests.ConstrainedUCell
axiom (forall MoreTests.ConstrainedUCell$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.ConstrainedUCell(MoreTests.ConstrainedUCell$U)) } 
  $IsBox(bx, Tclass.MoreTests.ConstrainedUCell(MoreTests.ConstrainedUCell$U))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.MoreTests.ConstrainedUCell(MoreTests.ConstrainedUCell$U)));

// $Is axiom for subset type MoreTests.ConstrainedUCell
axiom (forall MoreTests.ConstrainedUCell$U: Ty, u#0: DatatypeType :: 
  { $Is(u#0, Tclass.MoreTests.ConstrainedUCell(MoreTests.ConstrainedUCell$U)) } 
  $Is(u#0, Tclass.MoreTests.ConstrainedUCell(MoreTests.ConstrainedUCell$U))
     <==> $Is(u#0, Tclass.MoreTests.UCell(MoreTests.ConstrainedUCell$U)) && Lit(true));

// $IsAlloc axiom for subset type MoreTests.ConstrainedUCell
axiom (forall MoreTests.ConstrainedUCell$U: Ty, u#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(u#0, Tclass.MoreTests.ConstrainedUCell(MoreTests.ConstrainedUCell$U), $h) } 
  $IsAlloc(u#0, Tclass.MoreTests.ConstrainedUCell(MoreTests.ConstrainedUCell$U), $h)
     <==> $IsAlloc(u#0, Tclass.MoreTests.UCell(MoreTests.ConstrainedUCell$U), $h));

// Constructor function declaration
function #MoreTests.WrappedU.WrappedU(DatatypeType) : DatatypeType;

const unique ##MoreTests.WrappedU.WrappedU: DtCtorId
uses {
// Constructor identifier
axiom (forall a#40#0#0: DatatypeType :: 
  { #MoreTests.WrappedU.WrappedU(a#40#0#0) } 
  DatatypeCtorId(#MoreTests.WrappedU.WrappedU(a#40#0#0))
     == ##MoreTests.WrappedU.WrappedU);
}

function MoreTests.WrappedU.WrappedU_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreTests.WrappedU.WrappedU_q(d) } 
  MoreTests.WrappedU.WrappedU_q(d)
     <==> DatatypeCtorId(d) == ##MoreTests.WrappedU.WrappedU);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreTests.WrappedU.WrappedU_q(d) } 
  MoreTests.WrappedU.WrappedU_q(d)
     ==> (exists a#41#0#0: DatatypeType :: d == #MoreTests.WrappedU.WrappedU(a#41#0#0)));

function Tclass.MoreTests.WrappedU(Ty) : Ty;

const unique Tagclass.MoreTests.WrappedU: TyTag;

// Tclass.MoreTests.WrappedU Tag
axiom (forall MoreTests.WrappedU$U: Ty :: 
  { Tclass.MoreTests.WrappedU(MoreTests.WrappedU$U) } 
  Tag(Tclass.MoreTests.WrappedU(MoreTests.WrappedU$U))
       == Tagclass.MoreTests.WrappedU
     && TagFamily(Tclass.MoreTests.WrappedU(MoreTests.WrappedU$U))
       == tytagFamily$WrappedU);

function Tclass.MoreTests.WrappedU_0(Ty) : Ty;

// Tclass.MoreTests.WrappedU injectivity 0
axiom (forall MoreTests.WrappedU$U: Ty :: 
  { Tclass.MoreTests.WrappedU(MoreTests.WrappedU$U) } 
  Tclass.MoreTests.WrappedU_0(Tclass.MoreTests.WrappedU(MoreTests.WrappedU$U))
     == MoreTests.WrappedU$U);

// Box/unbox axiom for Tclass.MoreTests.WrappedU
axiom (forall MoreTests.WrappedU$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.WrappedU(MoreTests.WrappedU$U)) } 
  $IsBox(bx, Tclass.MoreTests.WrappedU(MoreTests.WrappedU$U))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MoreTests.WrappedU(MoreTests.WrappedU$U)));

// Constructor $Is
axiom (forall MoreTests.WrappedU$U: Ty, a#42#0#0: DatatypeType :: 
  { $Is(#MoreTests.WrappedU.WrappedU(a#42#0#0), 
      Tclass.MoreTests.WrappedU(MoreTests.WrappedU$U)) } 
  $Is(#MoreTests.WrappedU.WrappedU(a#42#0#0), 
      Tclass.MoreTests.WrappedU(MoreTests.WrappedU$U))
     <==> $Is(a#42#0#0, Tclass.MoreTests.ConstrainedUCell(MoreTests.WrappedU$U)));

// Constructor $IsAlloc
axiom (forall MoreTests.WrappedU$U: Ty, a#42#0#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#MoreTests.WrappedU.WrappedU(a#42#0#0), 
      Tclass.MoreTests.WrappedU(MoreTests.WrappedU$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#MoreTests.WrappedU.WrappedU(a#42#0#0), 
        Tclass.MoreTests.WrappedU(MoreTests.WrappedU$U), 
        $h)
       <==> $IsAlloc(a#42#0#0, Tclass.MoreTests.ConstrainedUCell(MoreTests.WrappedU$U), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, MoreTests.WrappedU$U: Ty, $h: Heap :: 
  { $IsAlloc(MoreTests.WrappedU._h9(d), 
      Tclass.MoreTests.ConstrainedUCell(MoreTests.WrappedU$U), 
      $h) } 
  $IsGoodHeap($h)
       && 
      MoreTests.WrappedU.WrappedU_q(d)
       && $IsAlloc(d, Tclass.MoreTests.WrappedU(MoreTests.WrappedU$U), $h)
     ==> $IsAlloc(MoreTests.WrappedU._h9(d), 
      Tclass.MoreTests.ConstrainedUCell(MoreTests.WrappedU$U), 
      $h));

// Constructor literal
axiom (forall a#43#0#0: DatatypeType :: 
  { #MoreTests.WrappedU.WrappedU(Lit(a#43#0#0)) } 
  #MoreTests.WrappedU.WrappedU(Lit(a#43#0#0))
     == Lit(#MoreTests.WrappedU.WrappedU(a#43#0#0)));

function MoreTests.WrappedU._h9(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#44#0#0: DatatypeType :: 
  { #MoreTests.WrappedU.WrappedU(a#44#0#0) } 
  MoreTests.WrappedU._h9(#MoreTests.WrappedU.WrappedU(a#44#0#0)) == a#44#0#0);

// Inductive rank
axiom (forall a#45#0#0: DatatypeType :: 
  { #MoreTests.WrappedU.WrappedU(a#45#0#0) } 
  DtRank(a#45#0#0) < DtRank(#MoreTests.WrappedU.WrappedU(a#45#0#0)));

// Depth-one case-split function
function $IsA#MoreTests.WrappedU(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MoreTests.WrappedU(d) } 
  $IsA#MoreTests.WrappedU(d) ==> MoreTests.WrappedU.WrappedU_q(d));

// Questionmark data type disjunctivity
axiom (forall MoreTests.WrappedU$U: Ty, d: DatatypeType :: 
  { MoreTests.WrappedU.WrappedU_q(d), $Is(d, Tclass.MoreTests.WrappedU(MoreTests.WrappedU$U)) } 
  $Is(d, Tclass.MoreTests.WrappedU(MoreTests.WrappedU$U))
     ==> MoreTests.WrappedU.WrappedU_q(d));

// Datatype extensional equality declaration
function MoreTests.WrappedU#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MoreTests.WrappedU.WrappedU
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.WrappedU#Equal(a, b) } 
  MoreTests.WrappedU#Equal(a, b)
     <==> MoreTests.UCell#Equal(MoreTests.WrappedU._h9(a), MoreTests.WrappedU._h9(b)));

// Datatype extensionality axiom: MoreTests.WrappedU
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreTests.WrappedU#Equal(a, b) } 
  MoreTests.WrappedU#Equal(a, b) <==> a == b);

const unique class.MoreTests.WrappedU: ClassName;

function Tclass.MoreTests.MyTypeAroundU(Ty) : Ty;

const unique Tagclass.MoreTests.MyTypeAroundU: TyTag;

// Tclass.MoreTests.MyTypeAroundU Tag
axiom (forall MoreTests.MyTypeAroundU$U: Ty :: 
  { Tclass.MoreTests.MyTypeAroundU(MoreTests.MyTypeAroundU$U) } 
  Tag(Tclass.MoreTests.MyTypeAroundU(MoreTests.MyTypeAroundU$U))
       == Tagclass.MoreTests.MyTypeAroundU
     && TagFamily(Tclass.MoreTests.MyTypeAroundU(MoreTests.MyTypeAroundU$U))
       == tytagFamily$MyTypeAroundU);

function Tclass.MoreTests.MyTypeAroundU_0(Ty) : Ty;

// Tclass.MoreTests.MyTypeAroundU injectivity 0
axiom (forall MoreTests.MyTypeAroundU$U: Ty :: 
  { Tclass.MoreTests.MyTypeAroundU(MoreTests.MyTypeAroundU$U) } 
  Tclass.MoreTests.MyTypeAroundU_0(Tclass.MoreTests.MyTypeAroundU(MoreTests.MyTypeAroundU$U))
     == MoreTests.MyTypeAroundU$U);

// Box/unbox axiom for Tclass.MoreTests.MyTypeAroundU
axiom (forall MoreTests.MyTypeAroundU$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.MoreTests.MyTypeAroundU(MoreTests.MyTypeAroundU$U)) } 
  $IsBox(bx, Tclass.MoreTests.MyTypeAroundU(MoreTests.MyTypeAroundU$U))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.MoreTests.MyTypeAroundU(MoreTests.MyTypeAroundU$U)));

// $Is axiom for subset type MoreTests.MyTypeAroundU
axiom (forall MoreTests.MyTypeAroundU$U: Ty, x#0: DatatypeType :: 
  { $Is(x#0, Tclass.MoreTests.MyTypeAroundU(MoreTests.MyTypeAroundU$U)) } 
  $Is(x#0, Tclass.MoreTests.MyTypeAroundU(MoreTests.MyTypeAroundU$U))
     <==> $Is(x#0, Tclass.MoreTests.WrappedU(MoreTests.MyTypeAroundU$U)) && Lit(true));

// $IsAlloc axiom for subset type MoreTests.MyTypeAroundU
axiom (forall MoreTests.MyTypeAroundU$U: Ty, x#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.MoreTests.MyTypeAroundU(MoreTests.MyTypeAroundU$U), $h) } 
  $IsAlloc(x#0, Tclass.MoreTests.MyTypeAroundU(MoreTests.MyTypeAroundU$U), $h)
     <==> $IsAlloc(x#0, Tclass.MoreTests.WrappedU(MoreTests.MyTypeAroundU$U), $h));

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

const unique tytagFamily$MyType: TyTagFamily;

const unique tytagFamily$MyInt: TyTagFamily;

const unique tytagFamily$ABC: TyTagFamily;

const unique tytagFamily$XYZ: TyTagFamily;

const unique tytagFamily$SSS: TyTagFamily;

const unique tytagFamily$ST0: TyTagFamily;

const unique tytagFamily$ST1: TyTagFamily;

const unique tytagFamily$Option: TyTagFamily;

const unique tytagFamily$Fn: TyTagFamily;

const unique tytagFamily$pos: TyTagFamily;

const unique tytagFamily$Fn0: TyTagFamily;

const unique tytagFamily$Fn1: TyTagFamily;

const unique tytagFamily$BSingle: TyTagFamily;

const unique tytagFamily$BMyTypeWrapper: TyTagFamily;

const unique tytagFamily$BD: TyTagFamily;

const unique tytagFamily$XSingle: TyTagFamily;

const unique tytagFamily$XMyTypeWrapper: TyTagFamily;

const unique tytagFamily$XD: TyTagFamily;

const unique tytagFamily$IntCell: TyTagFamily;

const unique tytagFamily$ConstrainedIntCell: TyTagFamily;

const unique tytagFamily$WrappedInt: TyTagFamily;

const unique tytagFamily$MyTypeAroundInt: TyTagFamily;

const unique tytagFamily$UCell: TyTagFamily;

const unique tytagFamily$ConstrainedUCell: TyTagFamily;

const unique tytagFamily$WrappedU: TyTagFamily;

const unique tytagFamily$MyTypeAroundU: TyTagFamily;
