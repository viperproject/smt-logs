// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy

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

const reveal__module._default.RemoveKeys: bool;

const reveal__module._default.RemoveKey: bool;

const reveal__module.Object.Valid: bool;

const reveal__module.Memory.Valid: bool;

const reveal__module.Memory.Valid2: bool;

const unique class._module.__default: ClassName;

// function declaration for _module._default.VeniceDeclarationOK
function _module.__default.VeniceDeclarationOK(f#0: DatatypeType, t#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.VeniceDeclarationOK (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall f#0: DatatypeType, t#0: DatatypeType :: 
    { _module.__default.VeniceDeclarationOK(f#0, t#0) } 
    _module.__default.VeniceDeclarationOK#canCall(f#0, t#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(f#0, Tclass._module.Mode())
           && $Is(t#0, Tclass._module.Mode()))
       ==> _module.__default.VeniceDeclarationOK(f#0, t#0) == Lit(true));
// definition axiom for _module.__default.VeniceDeclarationOK for all literals (revealed)
axiom {:id "id1"} 1 <= $FunctionContextHeight
   ==> (forall f#0: DatatypeType, t#0: DatatypeType :: 
    {:weight 3} { _module.__default.VeniceDeclarationOK(Lit(f#0), Lit(t#0)) } 
    _module.__default.VeniceDeclarationOK#canCall(Lit(f#0), Lit(t#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(f#0, Tclass._module.Mode())
           && $Is(t#0, Tclass._module.Mode()))
       ==> _module.__default.VeniceDeclarationOK(Lit(f#0), Lit(t#0)) == Lit(true));
}

function _module.__default.VeniceDeclarationOK#canCall(f#0: DatatypeType, t#0: DatatypeType) : bool;

function Tclass._module.Mode() : Ty
uses {
// Tclass._module.Mode Tag
axiom Tag(Tclass._module.Mode()) == Tagclass._module.Mode
   && TagFamily(Tclass._module.Mode()) == tytagFamily$Mode;
}

const unique Tagclass._module.Mode: TyTag;

// Box/unbox axiom for Tclass._module.Mode
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Mode()) } 
  $IsBox(bx, Tclass._module.Mode())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Mode()));

function _module.__default.VeniceDeclarationOK#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.VeniceDeclarationOK
axiom (forall f#0: DatatypeType, t#0: DatatypeType :: 
  { _module.__default.VeniceDeclarationOK#requires(f#0, t#0) } 
  $Is(f#0, Tclass._module.Mode()) && $Is(t#0, Tclass._module.Mode())
     ==> _module.__default.VeniceDeclarationOK#requires(f#0, t#0) == true);

procedure {:verboseName "VeniceDeclarationOK (well-formedness)"} CheckWellformed$$_module.__default.VeniceDeclarationOK(f#0: DatatypeType where $Is(f#0, Tclass._module.Mode()), 
    t#0: DatatypeType where $Is(t#0, Tclass._module.Mode()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.VeniceReferenceOK
function _module.__default.VeniceReferenceOK(f#0: ref, t#0: ref) : bool
uses {
// definition axiom for _module.__default.VeniceReferenceOK (revealed)
axiom {:id "id3"} 3 <= $FunctionContextHeight
   ==> (forall f#0: ref, t#0: ref :: 
    { _module.__default.VeniceReferenceOK(f#0, t#0) } 
    _module.__default.VeniceReferenceOK#canCall(f#0, t#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(f#0, Tclass._module.Object())
           && $Is(t#0, Tclass._module.Object()))
       ==> _module.__default.VeniceReferenceOK(f#0, t#0)
         == (if _module.Region.Frozen_q(_module.Object.region(t#0))
           then true
           else (if _module.Region.Heap_q(_module.Object.region(f#0))
             then _module.Region.Isolate_q(_module.Object.region(t#0))
               || (_module.Region.Heap_q(_module.Object.region(t#0))
                 && _module.Region.region(_module.Object.region(t#0))
                   == _module.Region.region(_module.Object.region(f#0)))
             else (if _module.Region.Isolate_q(_module.Object.region(f#0))
               then _module.Region.Isolate_q(_module.Object.region(t#0))
                 || (_module.Region.Heap_q(_module.Object.region(t#0))
                   && _module.Region.region(_module.Object.region(t#0)) == f#0)
               else false))));
// definition axiom for _module.__default.VeniceReferenceOK for all literals (revealed)
axiom {:id "id4"} 3 <= $FunctionContextHeight
   ==> (forall f#0: ref, t#0: ref :: 
    {:weight 3} { _module.__default.VeniceReferenceOK(Lit(f#0), Lit(t#0)) } 
    _module.__default.VeniceReferenceOK#canCall(Lit(f#0), Lit(t#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(f#0, Tclass._module.Object())
           && $Is(t#0, Tclass._module.Object()))
       ==> _module.__default.VeniceReferenceOK(Lit(f#0), Lit(t#0))
         == (if _module.Region.Frozen_q(_module.Object.region(Lit(t#0)))
           then true
           else (if _module.Region.Heap_q(_module.Object.region(Lit(f#0)))
             then _module.Region.Isolate_q(_module.Object.region(Lit(t#0)))
               || (_module.Region.Heap_q(_module.Object.region(Lit(t#0)))
                 && _module.Region.region(_module.Object.region(Lit(t#0)))
                   == _module.Region.region(_module.Object.region(Lit(f#0))))
             else (if _module.Region.Isolate_q(_module.Object.region(Lit(f#0)))
               then _module.Region.Isolate_q(_module.Object.region(Lit(t#0)))
                 || (_module.Region.Heap_q(_module.Object.region(Lit(t#0)))
                   && _module.Region.region(_module.Object.region(Lit(t#0))) == Lit(f#0))
               else false))));
}

function _module.__default.VeniceReferenceOK#canCall(f#0: ref, t#0: ref) : bool;

function Tclass._module.Object() : Ty
uses {
// Tclass._module.Object Tag
axiom Tag(Tclass._module.Object()) == Tagclass._module.Object
   && TagFamily(Tclass._module.Object()) == tytagFamily$Object;
}

const unique Tagclass._module.Object: TyTag;

// Box/unbox axiom for Tclass._module.Object
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Object()) } 
  $IsBox(bx, Tclass._module.Object())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Object()));

function _module.__default.VeniceReferenceOK#requires(ref, ref) : bool;

// #requires axiom for _module.__default.VeniceReferenceOK
axiom (forall f#0: ref, t#0: ref :: 
  { _module.__default.VeniceReferenceOK#requires(f#0, t#0) } 
  $Is(f#0, Tclass._module.Object()) && $Is(t#0, Tclass._module.Object())
     ==> _module.__default.VeniceReferenceOK#requires(f#0, t#0) == true);

function _module.Object.region(this: ref) : DatatypeType
uses {
// Object.region: Type axiom
axiom 2 < $FunctionContextHeight
   ==> (forall $o: ref :: 
    { _module.Object.region($o) } 
    $o != null && dtype($o) == Tclass._module.Object?()
       ==> $Is(_module.Object.region($o), Tclass._module.Region()));
// Object.region: Allocation axiom
axiom 2 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: ref :: 
    { _module.Object.region($o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass._module.Object?()
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(_module.Object.region($o), Tclass._module.Region(), $h));
}

procedure {:verboseName "VeniceReferenceOK (well-formedness)"} CheckWellformed$$_module.__default.VeniceReferenceOK(f#0: ref where $Is(f#0, Tclass._module.Object()), 
    t#0: ref where $Is(t#0, Tclass._module.Object()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "VeniceReferenceOK (well-formedness)"} CheckWellformed$$_module.__default.VeniceReferenceOK(f#0: ref, t#0: ref)
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
        assert {:id "id5"} t#0 != null;
        if (_module.Region.Frozen_q(_module.Object.region(t#0)))
        {
            assume {:id "id6"} _module.__default.VeniceReferenceOK(f#0, t#0) == Lit(true);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.VeniceReferenceOK(f#0, t#0), TBool);
            return;
        }
        else
        {
            assert {:id "id7"} f#0 != null;
            if (_module.Region.Heap_q(_module.Object.region(f#0)))
            {
                assert {:id "id8"} t#0 != null;
                if (!_module.Region.Isolate_q(_module.Object.region(t#0)))
                {
                    assert {:id "id9"} t#0 != null;
                    if (_module.Region.Heap_q(_module.Object.region(t#0)))
                    {
                        assert {:id "id10"} t#0 != null;
                        assert {:id "id11"} _module.Region.Heap_q(_module.Object.region(t#0))
                           || _module.Region.Stack_q(_module.Object.region(t#0));
                        assert {:id "id12"} f#0 != null;
                        assert {:id "id13"} _module.Region.Heap_q(_module.Object.region(f#0))
                           || _module.Region.Stack_q(_module.Object.region(f#0));
                    }
                }

                assume {:id "id14"} _module.__default.VeniceReferenceOK(f#0, t#0)
                   == (_module.Region.Isolate_q(_module.Object.region(t#0))
                     || (_module.Region.Heap_q(_module.Object.region(t#0))
                       && _module.Region.region(_module.Object.region(t#0))
                         == _module.Region.region(_module.Object.region(f#0))));
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.VeniceReferenceOK(f#0, t#0), TBool);
                return;
            }
            else
            {
                assert {:id "id15"} f#0 != null;
                if (_module.Region.Isolate_q(_module.Object.region(f#0)))
                {
                    assert {:id "id16"} t#0 != null;
                    if (!_module.Region.Isolate_q(_module.Object.region(t#0)))
                    {
                        assert {:id "id17"} t#0 != null;
                        if (_module.Region.Heap_q(_module.Object.region(t#0)))
                        {
                            assert {:id "id18"} t#0 != null;
                            assert {:id "id19"} _module.Region.Heap_q(_module.Object.region(t#0))
                               || _module.Region.Stack_q(_module.Object.region(t#0));
                        }
                    }

                    assume {:id "id20"} _module.__default.VeniceReferenceOK(f#0, t#0)
                       == (_module.Region.Isolate_q(_module.Object.region(t#0))
                         || (_module.Region.Heap_q(_module.Object.region(t#0))
                           && _module.Region.region(_module.Object.region(t#0)) == f#0));
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(_module.__default.VeniceReferenceOK(f#0, t#0), TBool);
                    return;
                }
                else
                {
                    assume {:id "id21"} _module.__default.VeniceReferenceOK(f#0, t#0) == Lit(false);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(_module.__default.VeniceReferenceOK(f#0, t#0), TBool);
                    return;
                }
            }
        }

        assume false;
    }
}



procedure {:verboseName "MutsPointOnlyInSameRegion (well-formedness)"} CheckWellFormed$$_module.__default.MutsPointOnlyInSameRegion(f#0: ref
       where $Is(f#0, Tclass._module.Object())
         && $IsAlloc(f#0, Tclass._module.Object(), $Heap), 
    t#0: ref
       where $Is(t#0, Tclass._module.Object())
         && $IsAlloc(t#0, Tclass._module.Object(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MutsPointOnlyInSameRegion (well-formedness)"} CheckWellFormed$$_module.__default.MutsPointOnlyInSameRegion(f#0: ref, t#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##f#0: ref;
  var ##t#0: ref;


    // AddMethodImpl: MutsPointOnlyInSameRegion, CheckWellFormed$$_module.__default.MutsPointOnlyInSameRegion
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id22"} f#0 != null;
    assume {:id "id23"} _module.Region.Heap_q(_module.Object.region(f#0));
    assert {:id "id24"} t#0 != null;
    assume {:id "id25"} _module.Region.Heap_q(_module.Object.region(t#0));
    ##f#0 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#0, Tclass._module.Object(), $Heap);
    ##t#0 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#0, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(f#0, t#0);
    assume {:id "id26"} _module.__default.VeniceReferenceOK(f#0, t#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id27"} f#0 != null;
    assert {:id "id28"} t#0 != null;
    assume {:id "id29"} _module.Region#Equal(_module.Object.region(f#0), _module.Object.region(t#0));
}



procedure {:verboseName "MutsPointOnlyInSameRegion (call)"} Call$$_module.__default.MutsPointOnlyInSameRegion(f#0: ref
       where $Is(f#0, Tclass._module.Object())
         && $IsAlloc(f#0, Tclass._module.Object(), $Heap), 
    t#0: ref
       where $Is(t#0, Tclass._module.Object())
         && $IsAlloc(t#0, Tclass._module.Object(), $Heap));
  // user-defined preconditions
  requires {:id "id30"} _module.Region.Heap_q(_module.Object.region(f#0));
  requires {:id "id31"} _module.Region.Heap_q(_module.Object.region(t#0));
  requires {:id "id32"} _module.__default.VeniceReferenceOK#canCall(f#0, t#0)
     ==> _module.__default.VeniceReferenceOK(f#0, t#0)
       || (_module.Region.Frozen_q(_module.Object.region(t#0)) ==> Lit(true));
  requires {:id "id33"} _module.__default.VeniceReferenceOK#canCall(f#0, t#0)
     ==> _module.__default.VeniceReferenceOK(f#0, t#0)
       || (!_module.Region.Frozen_q(_module.Object.region(t#0))
         ==> 
        _module.Region.Heap_q(_module.Object.region(f#0))
         ==> _module.Region.Isolate_q(_module.Object.region(t#0))
           || (_module.Region.Heap_q(_module.Object.region(t#0))
             && _module.Region.region(_module.Object.region(t#0))
               == _module.Region.region(_module.Object.region(f#0))));
  requires {:id "id34"} _module.__default.VeniceReferenceOK#canCall(f#0, t#0)
     ==> _module.__default.VeniceReferenceOK(f#0, t#0)
       || (!_module.Region.Frozen_q(_module.Object.region(t#0))
         ==> 
        !_module.Region.Heap_q(_module.Object.region(f#0))
         ==> 
        _module.Region.Isolate_q(_module.Object.region(f#0))
         ==> _module.Region.Isolate_q(_module.Object.region(t#0))
           || (_module.Region.Heap_q(_module.Object.region(t#0))
             && _module.Region.region(_module.Object.region(t#0)) == f#0));
  requires {:id "id35"} _module.__default.VeniceReferenceOK#canCall(f#0, t#0)
     ==> _module.__default.VeniceReferenceOK(f#0, t#0)
       || (!_module.Region.Frozen_q(_module.Object.region(t#0))
         ==> 
        !_module.Region.Heap_q(_module.Object.region(f#0))
         ==> 
        !_module.Region.Isolate_q(_module.Object.region(f#0))
         ==> Lit(false));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Region(_module.Object.region(f#0))
     && $IsA#_module.Region(_module.Object.region(t#0));
  ensures {:id "id36"} _module.Region#Equal(_module.Object.region(f#0), _module.Object.region(t#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "MutsPointOnlyInSameRegion (correctness)"} Impl$$_module.__default.MutsPointOnlyInSameRegion(f#0: ref
       where $Is(f#0, Tclass._module.Object())
         && $IsAlloc(f#0, Tclass._module.Object(), $Heap), 
    t#0: ref
       where $Is(t#0, Tclass._module.Object())
         && $IsAlloc(t#0, Tclass._module.Object(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id37"} _module.Region.Heap_q(_module.Object.region(f#0));
  requires {:id "id38"} _module.Region.Heap_q(_module.Object.region(t#0));
  free requires {:id "id39"} _module.__default.VeniceReferenceOK#canCall(f#0, t#0)
     && 
    _module.__default.VeniceReferenceOK(f#0, t#0)
     && (if _module.Region.Frozen_q(_module.Object.region(t#0))
       then true
       else (if _module.Region.Heap_q(_module.Object.region(f#0))
         then _module.Region.Isolate_q(_module.Object.region(t#0))
           || (_module.Region.Heap_q(_module.Object.region(t#0))
             && _module.Region.region(_module.Object.region(t#0))
               == _module.Region.region(_module.Object.region(f#0)))
         else (if _module.Region.Isolate_q(_module.Object.region(f#0))
           then _module.Region.Isolate_q(_module.Object.region(t#0))
             || (_module.Region.Heap_q(_module.Object.region(t#0))
               && _module.Region.region(_module.Object.region(t#0)) == f#0)
           else false)));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Region(_module.Object.region(f#0))
     && $IsA#_module.Region(_module.Object.region(t#0));
  ensures {:id "id40"} _module.Region#Equal(_module.Object.region(f#0), _module.Object.region(t#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MutsPointOnlyInSameRegion (correctness)"} Impl$$_module.__default.MutsPointOnlyInSameRegion(f#0: ref, t#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: MutsPointOnlyInSameRegion, Impl$$_module.__default.MutsPointOnlyInSameRegion
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



// function declaration for _module._default.AssignmentCompatible
function _module.__default.AssignmentCompatible(o#0: ref, t#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.AssignmentCompatible (revealed)
axiom {:id "id41"} 3 <= $FunctionContextHeight
   ==> (forall o#0: ref, t#0: DatatypeType :: 
    { _module.__default.AssignmentCompatible(o#0, t#0) } 
    _module.__default.AssignmentCompatible#canCall(o#0, t#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(o#0, Tclass._module.Object())
           && $Is(t#0, Tclass._module.Mode()))
       ==> _module.__default.AssignmentCompatible(o#0, t#0)
         == (var r#0 := _module.Object.region(o#0); 
          (if _module.Mode.Imm_q(t#0)
             then _module.Region.Frozen_q(r#0)
             else (if _module.Mode.Iso_q(t#0)
               then _module.Region.Isolate_q(r#0)
               else (if _module.Mode.Mut_q(t#0)
                 then _module.Region.Heap_q(r#0)
                 else (if _module.Mode.Tmp_q(t#0)
                   then _module.Region.Stack_q(r#0)
                   else _module.Region.Heap_q(r#0) || _module.Region.Stack_q(r#0)))))));
// definition axiom for _module.__default.AssignmentCompatible for all literals (revealed)
axiom {:id "id42"} 3 <= $FunctionContextHeight
   ==> (forall o#0: ref, t#0: DatatypeType :: 
    {:weight 3} { _module.__default.AssignmentCompatible(Lit(o#0), Lit(t#0)) } 
    _module.__default.AssignmentCompatible#canCall(Lit(o#0), Lit(t#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(o#0, Tclass._module.Object())
           && $Is(t#0, Tclass._module.Mode()))
       ==> _module.__default.AssignmentCompatible(Lit(o#0), Lit(t#0))
         == (var r#1 := _module.Object.region(Lit(o#0)); 
          (if _module.Mode.Imm_q(Lit(t#0))
             then _module.Region.Frozen_q(r#1)
             else (if _module.Mode.Iso_q(Lit(t#0))
               then _module.Region.Isolate_q(r#1)
               else (if _module.Mode.Mut_q(Lit(t#0))
                 then _module.Region.Heap_q(r#1)
                 else (if _module.Mode.Tmp_q(Lit(t#0))
                   then _module.Region.Stack_q(r#1)
                   else _module.Region.Heap_q(r#1) || _module.Region.Stack_q(r#1)))))));
}

function _module.__default.AssignmentCompatible#canCall(o#0: ref, t#0: DatatypeType) : bool;

function _module.__default.AssignmentCompatible#requires(ref, DatatypeType) : bool;

// #requires axiom for _module.__default.AssignmentCompatible
axiom (forall o#0: ref, t#0: DatatypeType :: 
  { _module.__default.AssignmentCompatible#requires(o#0, t#0) } 
  $Is(o#0, Tclass._module.Object()) && $Is(t#0, Tclass._module.Mode())
     ==> _module.__default.AssignmentCompatible#requires(o#0, t#0) == true);

procedure {:verboseName "AssignmentCompatible (well-formedness)"} CheckWellformed$$_module.__default.AssignmentCompatible(o#0: ref where $Is(o#0, Tclass._module.Object()), 
    t#0: DatatypeType where $Is(t#0, Tclass._module.Mode()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.Region() : Ty
uses {
// Tclass._module.Region Tag
axiom Tag(Tclass._module.Region()) == Tagclass._module.Region
   && TagFamily(Tclass._module.Region()) == tytagFamily$Region;
}

const unique Tagclass._module.Region: TyTag;

// Box/unbox axiom for Tclass._module.Region
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Region()) } 
  $IsBox(bx, Tclass._module.Region())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Region()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignmentCompatible (well-formedness)"} CheckWellformed$$_module.__default.AssignmentCompatible(o#0: ref, t#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var r#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;


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
        havoc r#Z#0;
        assert {:id "id43"} o#0 != null;
        assume {:id "id44"} let#0#0#0 == _module.Object.region(o#0);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, Tclass._module.Region());
        assume {:id "id45"} r#Z#0 == let#0#0#0;
        if (t#0 == #_module.Mode.Imm())
        {
            assume {:id "id50"} _module.__default.AssignmentCompatible(o#0, t#0)
               == _module.Region.Frozen_q(r#Z#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.AssignmentCompatible(o#0, t#0), TBool);
            return;
        }
        else if (t#0 == #_module.Mode.Iso())
        {
            assume {:id "id49"} _module.__default.AssignmentCompatible(o#0, t#0)
               == _module.Region.Isolate_q(r#Z#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.AssignmentCompatible(o#0, t#0), TBool);
            return;
        }
        else if (t#0 == #_module.Mode.Mut())
        {
            assume {:id "id48"} _module.__default.AssignmentCompatible(o#0, t#0) == _module.Region.Heap_q(r#Z#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.AssignmentCompatible(o#0, t#0), TBool);
            return;
        }
        else if (t#0 == #_module.Mode.Tmp())
        {
            assume {:id "id47"} _module.__default.AssignmentCompatible(o#0, t#0)
               == _module.Region.Stack_q(r#Z#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.AssignmentCompatible(o#0, t#0), TBool);
            return;
        }
        else if (t#0 == #_module.Mode.Sus())
        {
            if (!_module.Region.Heap_q(r#Z#0))
            {
            }

            assume {:id "id46"} _module.__default.AssignmentCompatible(o#0, t#0)
               == (_module.Region.Heap_q(r#Z#0) || _module.Region.Stack_q(r#Z#0));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.AssignmentCompatible(o#0, t#0), TBool);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



function Tclass._module.Memory() : Ty
uses {
// Tclass._module.Memory Tag
axiom Tag(Tclass._module.Memory()) == Tagclass._module.Memory
   && TagFamily(Tclass._module.Memory()) == tytagFamily$Memory;
}

const unique Tagclass._module.Memory: TyTag;

// Box/unbox axiom for Tclass._module.Memory
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Memory()) } 
  $IsBox(bx, Tclass._module.Memory())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Memory()));

procedure {:verboseName "staticMoveAsg (well-formedness)"} CheckWellFormed$$_module.__default.staticMoveAsg(t#0: Seq where $Is(t#0, TSeq(TChar)) && $IsAlloc(t#0, TSeq(TChar), $Heap), 
    f#0: Seq where $Is(f#0, TSeq(TChar)) && $IsAlloc(f#0, TSeq(TChar), $Heap), 
    frame#0: ref
       where $Is(frame#0, Tclass._module.Object())
         && $IsAlloc(frame#0, Tclass._module.Object(), $Heap), 
    memory#0: ref
       where $Is(memory#0, Tclass._module.Memory())
         && $IsAlloc(memory#0, Tclass._module.Memory(), $Heap));
  free requires 11 == $FunctionContextHeight;
  modifies $Heap;



function _module.Object.fieldModes(this: ref) : Map
uses {
// Object.fieldModes: Type axiom
axiom 2 < $FunctionContextHeight
   ==> (forall $o: ref :: 
    { _module.Object.fieldModes($o) } 
    $o != null && dtype($o) == Tclass._module.Object?()
       ==> $Is(_module.Object.fieldModes($o), TMap(TSeq(TChar), Tclass._module.Mode())));
// Object.fieldModes: Allocation axiom
axiom 2 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: ref :: 
    { _module.Object.fieldModes($o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass._module.Object?()
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(_module.Object.fieldModes($o), TMap(TSeq(TChar), Tclass._module.Mode()), $h));
}

function Tclass._module.Memory?() : Ty
uses {
// Tclass._module.Memory? Tag
axiom Tag(Tclass._module.Memory?()) == Tagclass._module.Memory?
   && TagFamily(Tclass._module.Memory?()) == tytagFamily$Memory;
}

const unique Tagclass._module.Memory?: TyTag;

// Box/unbox axiom for Tclass._module.Memory?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Memory?()) } 
  $IsBox(bx, Tclass._module.Memory?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Memory?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "staticMoveAsg (well-formedness)"} CheckWellFormed$$_module.__default.staticMoveAsg(t#0: Seq, f#0: Seq, frame#0: ref, memory#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: bool;


    // AddMethodImpl: staticMoveAsg, CheckWellFormed$$_module.__default.staticMoveAsg
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == frame#0 && $f == _module.Object.fields);
    assert {:id "id51"} memory#0 != null;
    assume {:id "id52"} Set#IsMember($Unbox(read($Heap, memory#0, _module.Memory.objects)): Set, $Box(frame#0));
    assert {:id "id53"} frame#0 != null;
    assume {:id "id54"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(f#0));
    assert {:id "id55"} frame#0 != null;
    assume {:id "id56"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(t#0));
    assert {:id "id57"} frame#0 != null;
    assume {:id "id58"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(f#0));
    assert {:id "id59"} memory#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(memory#0), Tclass._module.Memory?(), $Heap);
    assume _module.Memory.Valid#canCall($Heap, memory#0);
    assume {:id "id60"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, memory#0);
    assume {:id "id61"} !Seq#Equal(t#0, f#0);
    assert {:id "id62"} frame#0 != null;
    assert {:id "id63"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(t#0));
    assert {:id "id64"} frame#0 != null;
    assert {:id "id65"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(f#0));
    assume {:id "id66"} _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(t#0)]): DatatypeType, 
      $Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(f#0)]): DatatypeType);
    assert {:id "id67"} frame#0 != null;
    ##x#0 := _module.Region.Frozen_q(_module.Object.region(frame#0));
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TBool, $Heap);
    assume _module.__default.not#canCall(_module.Region.Frozen_q(_module.Object.region(frame#0)));
    assume {:id "id68"} _module.__default.not(_module.Region.Frozen_q(_module.Object.region(frame#0)));
    assert {:id "id69"} frame#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == frame#0);
    assume (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
           || ($o == frame#0 && $f == _module.Object.fields));
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id70"} frame#0 != null;
    assume {:id "id71"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(t#0));
    assert {:id "id72"} frame#0 != null;
    assume {:id "id73"} !Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(f#0));
    assert {:id "id74"} frame#0 != null;
    assert {:id "id75"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(t#0));
    assert {:id "id76"} frame#0 != null;
    assert {:id "id77"} $IsAlloc(frame#0, Tclass._module.Object(), old($Heap));
    assert {:id "id78"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), frame#0, _module.Object.fields)): Map), 
      $Box(f#0));
    assume {:id "id79"} $Unbox(Map#Elements($Unbox(read($Heap, frame#0, _module.Object.fields)): Map)[$Box(t#0)]): ref
       == $Unbox(Map#Elements($Unbox(read(old($Heap), frame#0, _module.Object.fields)): Map)[$Box(f#0)]): ref;
}



procedure {:verboseName "staticMoveAsg (call)"} Call$$_module.__default.staticMoveAsg(t#0: Seq where $Is(t#0, TSeq(TChar)) && $IsAlloc(t#0, TSeq(TChar), $Heap), 
    f#0: Seq where $Is(f#0, TSeq(TChar)) && $IsAlloc(f#0, TSeq(TChar), $Heap), 
    frame#0: ref
       where $Is(frame#0, Tclass._module.Object())
         && $IsAlloc(frame#0, Tclass._module.Object(), $Heap), 
    memory#0: ref
       where $Is(memory#0, Tclass._module.Memory())
         && $IsAlloc(memory#0, Tclass._module.Memory(), $Heap));
  // user-defined preconditions
  requires {:id "id80"} Set#IsMember($Unbox(read($Heap, memory#0, _module.Memory.objects)): Set, $Box(frame#0));
  requires {:id "id81"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(f#0));
  requires {:id "id82"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(t#0));
  requires {:id "id83"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(f#0));
  requires {:id "id84"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, memory#0);
  requires {:id "id85"} !Seq#Equal(t#0, f#0);
  requires {:id "id86"} _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(t#0)]): DatatypeType, 
    $Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(f#0)]): DatatypeType);
  requires {:id "id87"} _module.__default.not#canCall(_module.Region.Frozen_q(_module.Object.region(frame#0)))
     ==> _module.__default.not(_module.Region.Frozen_q(_module.Object.region(frame#0)))
       || !_module.Region.Frozen_q(_module.Object.region(frame#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id88"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(t#0));
  free ensures true;
  ensures {:id "id89"} !Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(f#0));
  free ensures true;
  ensures {:id "id90"} $Unbox(Map#Elements($Unbox(read($Heap, frame#0, _module.Object.fields)): Map)[$Box(t#0)]): ref
     == $Unbox(Map#Elements($Unbox(read(old($Heap), frame#0, _module.Object.fields)): Map)[$Box(f#0)]): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == frame#0);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == frame#0 && $f == _module.Object.fields));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "staticMoveAsg (correctness)"} Impl$$_module.__default.staticMoveAsg(t#0: Seq where $Is(t#0, TSeq(TChar)) && $IsAlloc(t#0, TSeq(TChar), $Heap), 
    f#0: Seq where $Is(f#0, TSeq(TChar)) && $IsAlloc(f#0, TSeq(TChar), $Heap), 
    frame#0: ref
       where $Is(frame#0, Tclass._module.Object())
         && $IsAlloc(frame#0, Tclass._module.Object(), $Heap), 
    memory#0: ref
       where $Is(memory#0, Tclass._module.Memory())
         && $IsAlloc(memory#0, Tclass._module.Memory(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 11 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id91"} Set#IsMember($Unbox(read($Heap, memory#0, _module.Memory.objects)): Set, $Box(frame#0));
  requires {:id "id92"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(f#0));
  requires {:id "id93"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(t#0));
  requires {:id "id94"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(f#0));
  requires {:id "id95"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, memory#0);
  requires {:id "id96"} !Seq#Equal(t#0, f#0);
  requires {:id "id97"} _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(t#0)]): DatatypeType, 
    $Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(f#0)]): DatatypeType);
  free requires {:id "id98"} _module.__default.not#canCall(_module.Region.Frozen_q(_module.Object.region(frame#0)))
     && 
    _module.__default.not(_module.Region.Frozen_q(_module.Object.region(frame#0)))
     && !_module.Region.Frozen_q(_module.Object.region(frame#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id99"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(t#0));
  free ensures true;
  ensures {:id "id100"} !Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(f#0));
  free ensures true;
  ensures {:id "id101"} $Unbox(Map#Elements($Unbox(read($Heap, frame#0, _module.Object.fields)): Map)[$Box(t#0)]): ref
     == $Unbox(Map#Elements($Unbox(read(old($Heap), frame#0, _module.Object.fields)): Map)[$Box(f#0)]): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == frame#0);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == frame#0 && $f == _module.Object.fields));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Status() : Ty
uses {
// Tclass._module.Status Tag
axiom Tag(Tclass._module.Status()) == Tagclass._module.Status
   && TagFamily(Tclass._module.Status()) == tytagFamily$Status;
}

const unique Tagclass._module.Status: TyTag;

// Box/unbox axiom for Tclass._module.Status
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Status()) } 
  $IsBox(bx, Tclass._module.Status())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Status()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "staticMoveAsg (correctness)"} Impl$$_module.__default.staticMoveAsg(t#0: Seq, f#0: Seq, frame#0: ref, memory#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var r#0: DatatypeType
     where $Is(r#0, Tclass._module.Status())
       && $IsAlloc(r#0, Tclass._module.Status(), $Heap);
  var $rhs##0: DatatypeType;
  var o##0: ref;
  var n##0: Seq;
  var f##0: ref;
  var m##0: Seq;

    // AddMethodImpl: staticMoveAsg, Impl$$_module.__default.staticMoveAsg
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == frame#0 && $f == _module.Object.fields);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1042,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1042,19)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id102"} Call$$_module.Memory.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1043,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1043,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id103"} Call$$_module.Object.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1045,28)
    assume true;
    // TrCallStmt: Adding lhs with type Status
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id104"} memory#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##0 := frame#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := t#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    f##0 := frame#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##0 := f#0;
    assert {:id "id105"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (($o == o##0 && $f == _module.Object.fields)
             || ($o == f##0 && $f == _module.Object.fields))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id106"} $rhs##0 := Call$$_module.Memory.dynMove(memory#0, o##0, n##0, f##0, m##0);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1047,5)
    assume true;
    assert {:id "id108"} _module.Status.Success_q(r#0);
}



procedure {:verboseName "staticCopyAsg (well-formedness)"} CheckWellFormed$$_module.__default.staticCopyAsg(t#0: Seq where $Is(t#0, TSeq(TChar)) && $IsAlloc(t#0, TSeq(TChar), $Heap), 
    f#0: Seq where $Is(f#0, TSeq(TChar)) && $IsAlloc(f#0, TSeq(TChar), $Heap), 
    frame#0: ref
       where $Is(frame#0, Tclass._module.Object())
         && $IsAlloc(frame#0, Tclass._module.Object(), $Heap), 
    memory#0: ref
       where $Is(memory#0, Tclass._module.Memory())
         && $IsAlloc(memory#0, Tclass._module.Memory(), $Heap));
  free requires 11 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "staticCopyAsg (well-formedness)"} CheckWellFormed$$_module.__default.staticCopyAsg(t#0: Seq, f#0: Seq, frame#0: ref, memory#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: bool;
  var ##x#1: bool;


    // AddMethodImpl: staticCopyAsg, CheckWellFormed$$_module.__default.staticCopyAsg
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == frame#0 && $f == _module.Object.fields);
    assert {:id "id109"} memory#0 != null;
    assume {:id "id110"} Set#IsMember($Unbox(read($Heap, memory#0, _module.Memory.objects)): Set, $Box(frame#0));
    assert {:id "id111"} frame#0 != null;
    assume {:id "id112"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(f#0));
    assert {:id "id113"} frame#0 != null;
    assume {:id "id114"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(t#0));
    assert {:id "id115"} frame#0 != null;
    assume {:id "id116"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(f#0));
    assert {:id "id117"} memory#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(memory#0), Tclass._module.Memory?(), $Heap);
    assume _module.Memory.Valid#canCall($Heap, memory#0);
    assume {:id "id118"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, memory#0);
    assume {:id "id119"} !Seq#Equal(t#0, f#0);
    assert {:id "id120"} frame#0 != null;
    assert {:id "id121"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(t#0));
    assert {:id "id122"} frame#0 != null;
    assert {:id "id123"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(f#0));
    assume {:id "id124"} _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(t#0)]): DatatypeType, 
      $Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(f#0)]): DatatypeType);
    assert {:id "id125"} frame#0 != null;
    assert {:id "id126"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(f#0));
    ##x#0 := _module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(f#0)]): DatatypeType);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TBool, $Heap);
    assume _module.__default.not#canCall(_module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(f#0)]): DatatypeType));
    assume {:id "id127"} _module.__default.not(_module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(f#0)]): DatatypeType));
    assert {:id "id128"} frame#0 != null;
    ##x#1 := _module.Region.Frozen_q(_module.Object.region(frame#0));
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TBool, $Heap);
    assume _module.__default.not#canCall(_module.Region.Frozen_q(_module.Object.region(frame#0)));
    assume {:id "id129"} _module.__default.not(_module.Region.Frozen_q(_module.Object.region(frame#0)));
    assert {:id "id130"} frame#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == frame#0);
    assume (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
           || ($o == frame#0 && $f == _module.Object.fields));
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id131"} frame#0 != null;
    assume {:id "id132"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(f#0));
    assert {:id "id133"} frame#0 != null;
    assume {:id "id134"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(t#0));
    assert {:id "id135"} frame#0 != null;
    assert {:id "id136"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(t#0));
    assert {:id "id137"} frame#0 != null;
    assert {:id "id138"} $IsAlloc(frame#0, Tclass._module.Object(), old($Heap));
    assert {:id "id139"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), frame#0, _module.Object.fields)): Map), 
      $Box(f#0));
    assume {:id "id140"} $Unbox(Map#Elements($Unbox(read($Heap, frame#0, _module.Object.fields)): Map)[$Box(t#0)]): ref
       == $Unbox(Map#Elements($Unbox(read(old($Heap), frame#0, _module.Object.fields)): Map)[$Box(f#0)]): ref;
}



procedure {:verboseName "staticCopyAsg (call)"} Call$$_module.__default.staticCopyAsg(t#0: Seq where $Is(t#0, TSeq(TChar)) && $IsAlloc(t#0, TSeq(TChar), $Heap), 
    f#0: Seq where $Is(f#0, TSeq(TChar)) && $IsAlloc(f#0, TSeq(TChar), $Heap), 
    frame#0: ref
       where $Is(frame#0, Tclass._module.Object())
         && $IsAlloc(frame#0, Tclass._module.Object(), $Heap), 
    memory#0: ref
       where $Is(memory#0, Tclass._module.Memory())
         && $IsAlloc(memory#0, Tclass._module.Memory(), $Heap));
  // user-defined preconditions
  requires {:id "id141"} Set#IsMember($Unbox(read($Heap, memory#0, _module.Memory.objects)): Set, $Box(frame#0));
  requires {:id "id142"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(f#0));
  requires {:id "id143"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(t#0));
  requires {:id "id144"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(f#0));
  requires {:id "id145"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, memory#0);
  requires {:id "id146"} !Seq#Equal(t#0, f#0);
  requires {:id "id147"} _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(t#0)]): DatatypeType, 
    $Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(f#0)]): DatatypeType);
  requires {:id "id148"} _module.__default.not#canCall(_module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(f#0)]): DatatypeType))
     ==> _module.__default.not(_module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(f#0)]): DatatypeType))
       || !_module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(f#0)]): DatatypeType);
  requires {:id "id149"} _module.__default.not#canCall(_module.Region.Frozen_q(_module.Object.region(frame#0)))
     ==> _module.__default.not(_module.Region.Frozen_q(_module.Object.region(frame#0)))
       || !_module.Region.Frozen_q(_module.Object.region(frame#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id150"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(f#0));
  free ensures true;
  ensures {:id "id151"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(t#0));
  free ensures true;
  ensures {:id "id152"} $Unbox(Map#Elements($Unbox(read($Heap, frame#0, _module.Object.fields)): Map)[$Box(t#0)]): ref
     == $Unbox(Map#Elements($Unbox(read(old($Heap), frame#0, _module.Object.fields)): Map)[$Box(f#0)]): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == frame#0);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == frame#0 && $f == _module.Object.fields));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "staticCopyAsg (correctness)"} Impl$$_module.__default.staticCopyAsg(t#0: Seq where $Is(t#0, TSeq(TChar)) && $IsAlloc(t#0, TSeq(TChar), $Heap), 
    f#0: Seq where $Is(f#0, TSeq(TChar)) && $IsAlloc(f#0, TSeq(TChar), $Heap), 
    frame#0: ref
       where $Is(frame#0, Tclass._module.Object())
         && $IsAlloc(frame#0, Tclass._module.Object(), $Heap), 
    memory#0: ref
       where $Is(memory#0, Tclass._module.Memory())
         && $IsAlloc(memory#0, Tclass._module.Memory(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 11 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id153"} Set#IsMember($Unbox(read($Heap, memory#0, _module.Memory.objects)): Set, $Box(frame#0));
  requires {:id "id154"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(f#0));
  requires {:id "id155"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(t#0));
  requires {:id "id156"} Set#IsMember(Map#Domain(_module.Object.fieldModes(frame#0)), $Box(f#0));
  requires {:id "id157"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, memory#0);
  requires {:id "id158"} !Seq#Equal(t#0, f#0);
  requires {:id "id159"} _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(t#0)]): DatatypeType, 
    $Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(f#0)]): DatatypeType);
  free requires {:id "id160"} _module.__default.not#canCall(_module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(f#0)]): DatatypeType))
     && 
    _module.__default.not(_module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(f#0)]): DatatypeType))
     && !_module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(frame#0))[$Box(f#0)]): DatatypeType);
  free requires {:id "id161"} _module.__default.not#canCall(_module.Region.Frozen_q(_module.Object.region(frame#0)))
     && 
    _module.__default.not(_module.Region.Frozen_q(_module.Object.region(frame#0)))
     && !_module.Region.Frozen_q(_module.Object.region(frame#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id162"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(f#0));
  free ensures true;
  ensures {:id "id163"} Set#IsMember(Map#Domain($Unbox(read($Heap, frame#0, _module.Object.fields)): Map), $Box(t#0));
  free ensures true;
  ensures {:id "id164"} $Unbox(Map#Elements($Unbox(read($Heap, frame#0, _module.Object.fields)): Map)[$Box(t#0)]): ref
     == $Unbox(Map#Elements($Unbox(read(old($Heap), frame#0, _module.Object.fields)): Map)[$Box(f#0)]): ref;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == frame#0);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == frame#0 && $f == _module.Object.fields));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "staticCopyAsg (correctness)"} Impl$$_module.__default.staticCopyAsg(t#0: Seq, f#0: Seq, frame#0: ref, memory#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var r#0: DatatypeType
     where $Is(r#0, Tclass._module.Status())
       && $IsAlloc(r#0, Tclass._module.Status(), $Heap);
  var $rhs##0: DatatypeType;
  var o##0: ref;
  var n##0: Seq;
  var f##0: ref;
  var m##0: Seq;

    // AddMethodImpl: staticCopyAsg, Impl$$_module.__default.staticCopyAsg
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == frame#0 && $f == _module.Object.fields);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1077,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1077,19)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id165"} Call$$_module.Memory.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1078,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1078,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id166"} Call$$_module.Object.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1079,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1079,19)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id167"} Call$$_module.Memory.reveal__Valid2(old($Heap), $Heap);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1081,28)
    assume true;
    // TrCallStmt: Adding lhs with type Status
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id168"} memory#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##0 := frame#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := t#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    f##0 := frame#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##0 := f#0;
    assert {:id "id169"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (($o == o##0 && $f == _module.Object.fields)
             || ($o == f##0 && $f == _module.Object.fields))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id170"} $rhs##0 := Call$$_module.Memory.dynCopy(memory#0, o##0, n##0, f##0, m##0);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1083,5)
    assume true;
    assert {:id "id172"} _module.Status.Success_q(r#0);
}



procedure {:verboseName "OnlyIMMsOKOutOfImms (well-formedness)"} CheckWellFormed$$_module.__default.OnlyIMMsOKOutOfImms(h#0: ref
       where $Is(h#0, Tclass._module.Memory())
         && $IsAlloc(h#0, Tclass._module.Memory(), $Heap), 
    i#0: ref
       where $Is(i#0, Tclass._module.Object())
         && $IsAlloc(i#0, Tclass._module.Object(), $Heap), 
    j#0: ref
       where $Is(j#0, Tclass._module.Object())
         && $IsAlloc(j#0, Tclass._module.Object(), $Heap));
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.Object?() : Ty
uses {
// Tclass._module.Object? Tag
axiom Tag(Tclass._module.Object?()) == Tagclass._module.Object?
   && TagFamily(Tclass._module.Object?()) == tytagFamily$Object;
}

const unique Tagclass._module.Object?: TyTag;

// Box/unbox axiom for Tclass._module.Object?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Object?()) } 
  $IsBox(bx, Tclass._module.Object?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Object?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OnlyIMMsOKOutOfImms (well-formedness)"} CheckWellFormed$$_module.__default.OnlyIMMsOKOutOfImms(h#0: ref, i#0: ref, j#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: OnlyIMMsOKOutOfImms, CheckWellFormed$$_module.__default.OnlyIMMsOKOutOfImms
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id173"} h#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(h#0), Tclass._module.Memory?(), $Heap);
    assume _module.Memory.Valid#canCall($Heap, h#0);
    assume {:id "id174"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, h#0);
    assert {:id "id175"} h#0 != null;
    assume {:id "id176"} Set#IsMember($Unbox(read($Heap, h#0, _module.Memory.objects)): Set, $Box(i#0));
    assert {:id "id177"} h#0 != null;
    assume {:id "id178"} Set#IsMember($Unbox(read($Heap, h#0, _module.Memory.objects)): Set, $Box(j#0));
    assert {:id "id179"} i#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(i#0), Tclass._module.Object?(), $Heap);
    assume _module.Object.outgoing#canCall($Heap, i#0);
    assume {:id "id180"} Set#IsMember(_module.Object.outgoing($Heap, i#0), $Box(j#0));
    assert {:id "id181"} i#0 != null;
    assume {:id "id182"} _module.Region.Frozen_q(_module.Object.region(i#0));
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id183"} j#0 != null;
    assume {:id "id184"} _module.Region.Frozen_q(_module.Object.region(j#0));
}



procedure {:verboseName "OnlyIMMsOKOutOfImms (call)"} Call$$_module.__default.OnlyIMMsOKOutOfImms(h#0: ref
       where $Is(h#0, Tclass._module.Memory())
         && $IsAlloc(h#0, Tclass._module.Memory(), $Heap), 
    i#0: ref
       where $Is(i#0, Tclass._module.Object())
         && $IsAlloc(i#0, Tclass._module.Object(), $Heap), 
    j#0: ref
       where $Is(j#0, Tclass._module.Object())
         && $IsAlloc(j#0, Tclass._module.Object(), $Heap));
  // user-defined preconditions
  requires {:id "id185"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, h#0);
  requires {:id "id186"} Set#IsMember($Unbox(read($Heap, h#0, _module.Memory.objects)): Set, $Box(i#0));
  requires {:id "id187"} Set#IsMember($Unbox(read($Heap, h#0, _module.Memory.objects)): Set, $Box(j#0));
  requires {:id "id188"} Set#IsMember(_module.Object.outgoing($Heap, i#0), $Box(j#0));
  requires {:id "id189"} _module.Region.Frozen_q(_module.Object.region(i#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id190"} _module.Region.Frozen_q(_module.Object.region(j#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "OnlyIMMsOKOutOfImms (correctness)"} Impl$$_module.__default.OnlyIMMsOKOutOfImms(h#0: ref
       where $Is(h#0, Tclass._module.Memory())
         && $IsAlloc(h#0, Tclass._module.Memory(), $Heap), 
    i#0: ref
       where $Is(i#0, Tclass._module.Object())
         && $IsAlloc(i#0, Tclass._module.Object(), $Heap), 
    j#0: ref
       where $Is(j#0, Tclass._module.Object())
         && $IsAlloc(j#0, Tclass._module.Object(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 8 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id191"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, h#0);
  requires {:id "id192"} Set#IsMember($Unbox(read($Heap, h#0, _module.Memory.objects)): Set, $Box(i#0));
  requires {:id "id193"} Set#IsMember($Unbox(read($Heap, h#0, _module.Memory.objects)): Set, $Box(j#0));
  requires {:id "id194"} Set#IsMember(_module.Object.outgoing($Heap, i#0), $Box(j#0));
  requires {:id "id195"} _module.Region.Frozen_q(_module.Object.region(i#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id196"} _module.Region.Frozen_q(_module.Object.region(j#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OnlyIMMsOKOutOfImms (correctness)"} Impl$$_module.__default.OnlyIMMsOKOutOfImms(h#0: ref, i#0: ref, j#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: OnlyIMMsOKOutOfImms, Impl$$_module.__default.OnlyIMMsOKOutOfImms
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1103,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1103,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id197"} Call$$_module.Memory.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1104,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1104,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id198"} Call$$_module.Object.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1105,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1105,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id199"} Call$$_module.Object.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for _module._default.RemoveKeys
function _module.__default.RemoveKeys(_module._default.RemoveKeys$X: Ty, 
    _module._default.RemoveKeys$Y: Ty, 
    $reveal: bool, 
    m#0: Map, 
    xs#0: Set)
   : Map
uses {
// consequence axiom for _module.__default.RemoveKeys
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.RemoveKeys$X: Ty, 
      _module._default.RemoveKeys$Y: Ty, 
      $reveal: bool, 
      m#0: Map, 
      xs#0: Set :: 
    { _module.__default.RemoveKeys(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, $reveal, m#0, xs#0) } 
    _module.__default.RemoveKeys#canCall(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, m#0, xs#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(m#0, TMap(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y))
           && $Is(xs#0, TSet(_module._default.RemoveKeys$X)))
       ==> (forall x#0: Box :: 
          { Map#Elements(_module.__default.RemoveKeys(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, $reveal, m#0, xs#0))[x#0] } 
          $IsBox(x#0, _module._default.RemoveKeys$X)
             ==> (Set#IsMember(Map#Domain(m#0), x#0) && !Set#IsMember(xs#0, x#0)
                 ==> Set#IsMember(Map#Domain(_module.__default.RemoveKeys(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, $reveal, m#0, xs#0)), 
                  x#0))
               && (Set#IsMember(Map#Domain(m#0), x#0) && !Set#IsMember(xs#0, x#0)
                 ==> Map#Elements(_module.__default.RemoveKeys(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, $reveal, m#0, xs#0))[x#0]
                   == Map#Elements(m#0)[x#0]))
         && (forall x#1: Box :: 
          { Set#IsMember(Map#Domain(_module.__default.RemoveKeys(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, $reveal, m#0, xs#0)), 
              x#1) } 
          $IsBox(x#1, _module._default.RemoveKeys$X)
             ==> (Set#IsMember(Map#Domain(_module.__default.RemoveKeys(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, $reveal, m#0, xs#0)), 
                  x#1)
                 ==> Set#IsMember(Map#Domain(m#0), x#1))
               && (Set#IsMember(Map#Domain(_module.__default.RemoveKeys(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, $reveal, m#0, xs#0)), 
                  x#1)
                 ==> !Set#IsMember(xs#0, x#1)))
         && Set#Equal(Map#Domain(_module.__default.RemoveKeys(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, $reveal, m#0, xs#0)), 
          Set#Difference(Map#Domain(m#0), xs#0))
         && (forall x#2: Box :: 
          { Set#IsMember(Map#Domain(_module.__default.RemoveKeys(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, $reveal, m#0, xs#0)), 
              x#2) } 
            { Set#IsMember(xs#0, x#2) } 
            { Set#IsMember(Map#Domain(m#0), x#2) } 
          $IsBox(x#2, _module._default.RemoveKeys$X) && Set#IsMember(Map#Domain(m#0), x#2)
             ==> Set#IsMember(xs#0, x#2)
               != Set#IsMember(Map#Domain(_module.__default.RemoveKeys(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, $reveal, m#0, xs#0)), 
                x#2))
         && $Is(_module.__default.RemoveKeys(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, $reveal, m#0, xs#0), 
          TMap(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y)));
// alloc consequence axiom for _module.__default.RemoveKeys
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.RemoveKeys$X: Ty, 
      _module._default.RemoveKeys$Y: Ty, 
      $reveal: bool, 
      m#0: Map, 
      xs#0: Set :: 
    { $IsAlloc(_module.__default.RemoveKeys(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, $reveal, m#0, xs#0), 
        TMap(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y), 
        $Heap) } 
    (_module.__default.RemoveKeys#canCall(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, m#0, xs#0)
           || (0 < $FunctionContextHeight
             && 
            $Is(m#0, TMap(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y))
             && $IsAlloc(m#0, TMap(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y), $Heap)
             && 
            $Is(xs#0, TSet(_module._default.RemoveKeys$X))
             && $IsAlloc(xs#0, TSet(_module._default.RemoveKeys$X), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.RemoveKeys(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, $reveal, m#0, xs#0), 
        TMap(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y), 
        $Heap));
// definition axiom for _module.__default.RemoveKeys (revealed)
axiom {:id "id200"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.RemoveKeys$X: Ty, 
      _module._default.RemoveKeys$Y: Ty, 
      m#0: Map, 
      xs#0: Set :: 
    { _module.__default.RemoveKeys(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, true, m#0, xs#0) } 
    _module.__default.RemoveKeys#canCall(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, m#0, xs#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(m#0, TMap(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y))
           && $Is(xs#0, TSet(_module._default.RemoveKeys$X)))
       ==> _module.__default.RemoveKeys(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, true, m#0, xs#0)
         == Map#Subtract(m#0, xs#0));
// definition axiom for _module.__default.RemoveKeys for all literals (revealed)
axiom {:id "id201"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.RemoveKeys$X: Ty, 
      _module._default.RemoveKeys$Y: Ty, 
      m#0: Map, 
      xs#0: Set :: 
    {:weight 3} { _module.__default.RemoveKeys(_module._default.RemoveKeys$X, 
        _module._default.RemoveKeys$Y, 
        true, 
        Lit(m#0), 
        Lit(xs#0)) } 
    _module.__default.RemoveKeys#canCall(_module._default.RemoveKeys$X, 
          _module._default.RemoveKeys$Y, 
          Lit(m#0), 
          Lit(xs#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(m#0, TMap(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y))
           && $Is(xs#0, TSet(_module._default.RemoveKeys$X)))
       ==> _module.__default.RemoveKeys(_module._default.RemoveKeys$X, 
          _module._default.RemoveKeys$Y, 
          true, 
          Lit(m#0), 
          Lit(xs#0))
         == Map#Subtract(m#0, xs#0));
}

function _module.__default.RemoveKeys#canCall(_module._default.RemoveKeys$X: Ty, 
    _module._default.RemoveKeys$Y: Ty, 
    m#0: Map, 
    xs#0: Set)
   : bool;

function _module.__default.RemoveKeys#requires(Ty, Ty, Map, Set) : bool;

// #requires axiom for _module.__default.RemoveKeys
axiom (forall _module._default.RemoveKeys$X: Ty, 
    _module._default.RemoveKeys$Y: Ty, 
    m#0: Map, 
    xs#0: Set :: 
  { _module.__default.RemoveKeys#requires(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, m#0, xs#0) } 
  $Is(m#0, TMap(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y))
       && $Is(xs#0, TSet(_module._default.RemoveKeys$X))
     ==> _module.__default.RemoveKeys#requires(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y, m#0, xs#0)
       == true);

procedure {:verboseName "RemoveKeys (well-formedness)"} CheckWellformed$$_module.__default.RemoveKeys(_module._default.RemoveKeys$X: Ty, 
    _module._default.RemoveKeys$Y: Ty, 
    m#0: Map
       where $Is(m#0, TMap(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y)), 
    xs#0: Set where $Is(xs#0, TSet(_module._default.RemoveKeys$X)))
   returns (m'#0: Map);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id202"} (forall x#3: Box :: 
    { Map#Elements(m'#0)[x#3] } 
    $IsBox(x#3, _module._default.RemoveKeys$X)
       ==> (Set#IsMember(Map#Domain(m#0), x#3) && !Set#IsMember(xs#0, x#3)
           ==> Set#IsMember(Map#Domain(m'#0), x#3))
         && (Set#IsMember(Map#Domain(m#0), x#3) && !Set#IsMember(xs#0, x#3)
           ==> Map#Elements(m'#0)[x#3] == Map#Elements(m#0)[x#3]));
  ensures {:id "id203"} (forall x#4: Box :: 
    { Set#IsMember(Map#Domain(m'#0), x#4) } 
    $IsBox(x#4, _module._default.RemoveKeys$X)
       ==> (Set#IsMember(Map#Domain(m'#0), x#4) ==> Set#IsMember(Map#Domain(m#0), x#4))
         && (Set#IsMember(Map#Domain(m'#0), x#4) ==> !Set#IsMember(xs#0, x#4)));
  ensures {:id "id204"} Set#Equal(Map#Domain(m'#0), Set#Difference(Map#Domain(m#0), xs#0));
  ensures {:id "id205"} (forall x#5: Box :: 
    { Set#IsMember(Map#Domain(m'#0), x#5) } 
      { Set#IsMember(xs#0, x#5) } 
      { Set#IsMember(Map#Domain(m#0), x#5) } 
    $IsBox(x#5, _module._default.RemoveKeys$X) && Set#IsMember(Map#Domain(m#0), x#5)
       ==> Set#IsMember(xs#0, x#5) != Set#IsMember(Map#Domain(m'#0), x#5));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "RemoveKeys (well-formedness)"} CheckWellformed$$_module.__default.RemoveKeys(_module._default.RemoveKeys$X: Ty, 
    _module._default.RemoveKeys$Y: Ty, 
    m#0: Map, 
    xs#0: Set)
   returns (m'#0: Map)
{
  var $_ReadsFrame: [ref,Field]bool;
  var x#6: Box;
  var x#7: Box;
  var x#8: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.RemoveKeys(_module._default.RemoveKeys$X, 
            _module._default.RemoveKeys$Y, 
            reveal__module._default.RemoveKeys, 
            m#0, 
            xs#0), 
          TMap(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y));
        assume $Is(m'#0, TMap(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y));
        havoc x#6;
        assume $IsBox(x#6, _module._default.RemoveKeys$X)
           && $IsAllocBox(x#6, _module._default.RemoveKeys$X, $Heap);
        if (*)
        {
            assume {:id "id206"} Set#IsMember(Map#Domain(m#0), x#6);
            assume {:id "id207"} !Set#IsMember(xs#0, x#6);
            assume {:id "id208"} Set#IsMember(Map#Domain(m'#0), x#6);
            assert {:id "id209"} Set#IsMember(Map#Domain(m'#0), x#6);
            assert {:id "id210"} Set#IsMember(Map#Domain(m#0), x#6);
            assume {:id "id211"} Map#Elements(m'#0)[x#6] == Map#Elements(m#0)[x#6];
        }
        else
        {
            assume {:id "id212"} Set#IsMember(Map#Domain(m#0), x#6) && !Set#IsMember(xs#0, x#6)
               ==> Set#IsMember(Map#Domain(m'#0), x#6)
                 && Map#Elements(m'#0)[x#6] == Map#Elements(m#0)[x#6];
        }

        assume {:id "id213"} (forall x#3: Box :: 
          { Map#Elements(m'#0)[x#3] } 
          $IsBox(x#3, _module._default.RemoveKeys$X)
             ==> (Set#IsMember(Map#Domain(m#0), x#3) && !Set#IsMember(xs#0, x#3)
                 ==> Set#IsMember(Map#Domain(m'#0), x#3))
               && (Set#IsMember(Map#Domain(m#0), x#3) && !Set#IsMember(xs#0, x#3)
                 ==> Map#Elements(m'#0)[x#3] == Map#Elements(m#0)[x#3]));
        havoc x#7;
        assume $IsBox(x#7, _module._default.RemoveKeys$X)
           && $IsAllocBox(x#7, _module._default.RemoveKeys$X, $Heap);
        if (*)
        {
            assume {:id "id214"} Set#IsMember(Map#Domain(m'#0), x#7);
            assume {:id "id215"} Set#IsMember(Map#Domain(m#0), x#7);
            assume {:id "id216"} !Set#IsMember(xs#0, x#7);
        }
        else
        {
            assume {:id "id217"} Set#IsMember(Map#Domain(m'#0), x#7)
               ==> Set#IsMember(Map#Domain(m#0), x#7) && !Set#IsMember(xs#0, x#7);
        }

        assume {:id "id218"} (forall x#4: Box :: 
          { Set#IsMember(Map#Domain(m'#0), x#4) } 
          $IsBox(x#4, _module._default.RemoveKeys$X)
             ==> (Set#IsMember(Map#Domain(m'#0), x#4) ==> Set#IsMember(Map#Domain(m#0), x#4))
               && (Set#IsMember(Map#Domain(m'#0), x#4) ==> !Set#IsMember(xs#0, x#4)));
        assume {:id "id219"} Set#Equal(Map#Domain(m'#0), Set#Difference(Map#Domain(m#0), xs#0));
        havoc x#8;
        assume $IsBox(x#8, _module._default.RemoveKeys$X)
           && $IsAllocBox(x#8, _module._default.RemoveKeys$X, $Heap);
        if (*)
        {
            assume {:id "id220"} Set#IsMember(Map#Domain(m#0), x#8);
            assume {:id "id221"} Set#IsMember(xs#0, x#8) != Set#IsMember(Map#Domain(m'#0), x#8);
        }
        else
        {
            assume {:id "id222"} Set#IsMember(Map#Domain(m#0), x#8)
               ==> Set#IsMember(xs#0, x#8) != Set#IsMember(Map#Domain(m'#0), x#8);
        }

        assume {:id "id223"} (forall x#5: Box :: 
          { Set#IsMember(Map#Domain(m'#0), x#5) } 
            { Set#IsMember(xs#0, x#5) } 
            { Set#IsMember(Map#Domain(m#0), x#5) } 
          $IsBox(x#5, _module._default.RemoveKeys$X) && Set#IsMember(Map#Domain(m#0), x#5)
             ==> Set#IsMember(xs#0, x#5) != Set#IsMember(Map#Domain(m'#0), x#5));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id224"} _module.__default.RemoveKeys(_module._default.RemoveKeys$X, 
            _module._default.RemoveKeys$Y, 
            reveal__module._default.RemoveKeys, 
            m#0, 
            xs#0)
           == Map#Subtract(m#0, xs#0);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.RemoveKeys(_module._default.RemoveKeys$X, 
            _module._default.RemoveKeys$Y, 
            reveal__module._default.RemoveKeys, 
            m#0, 
            xs#0), 
          TMap(_module._default.RemoveKeys$X, _module._default.RemoveKeys$Y));
        assume {:id "id225"} _module.__default.RemoveKeys(_module._default.RemoveKeys$X, 
            _module._default.RemoveKeys$Y, 
            reveal__module._default.RemoveKeys, 
            m#0, 
            xs#0)
           == m'#0;
        return;

        assume false;
    }
}



// function declaration for _module._default.RemoveKey
function _module.__default.RemoveKey(_module._default.RemoveKey$X: Ty, 
    _module._default.RemoveKey$Y: Ty, 
    $reveal: bool, 
    m#0: Map, 
    x#0: Box)
   : Map
uses {
// consequence axiom for _module.__default.RemoveKey
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.RemoveKey$X: Ty, 
      _module._default.RemoveKey$Y: Ty, 
      $reveal: bool, 
      m#0: Map, 
      x#0: Box :: 
    { _module.__default.RemoveKey(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, $reveal, m#0, x#0) } 
    _module.__default.RemoveKey#canCall(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, m#0, x#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(m#0, TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y))
           && $IsBox(x#0, _module._default.RemoveKey$X))
       ==> Map#Equal(_module.__default.RemoveKey(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, $reveal, m#0, x#0), 
          _module.__default.RemoveKeys(_module._default.RemoveKey$X, 
            _module._default.RemoveKey$Y, 
            reveal__module._default.RemoveKeys, 
            m#0, 
            Set#UnionOne(Set#Empty(): Set, x#0)))
         && Set#Card(Map#Domain(_module.__default.RemoveKey(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, $reveal, m#0, x#0)))
           <= Set#Card(Map#Domain(m#0))
         && (Set#IsMember(Map#Domain(m#0), x#0)
           ==> Map#Card(_module.__default.RemoveKey(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, $reveal, m#0, x#0))
             == Map#Card(m#0) - 1)
         && (!Set#IsMember(Map#Domain(m#0), x#0)
           ==> Map#Card(_module.__default.RemoveKey(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, $reveal, m#0, x#0))
             == Map#Card(m#0))
         && Set#Equal(Map#Domain(_module.__default.RemoveKey(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, $reveal, m#0, x#0)), 
          Set#Difference(Map#Domain(m#0), Set#UnionOne(Set#Empty(): Set, x#0)))
         && (forall x'#0: Box :: 
          { Set#IsMember(Map#Domain(_module.__default.RemoveKey(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, $reveal, m#0, x#0)), 
              x'#0) } 
            { Set#IsMember(Map#Domain(m#0), x'#0) } 
          $IsBox(x'#0, _module._default.RemoveKey$X)
               && Set#IsMember(Map#Domain(m#0), x'#0)
             ==> (x#0 == x'#0)
               != Set#IsMember(Map#Domain(_module.__default.RemoveKey(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, $reveal, m#0, x#0)), 
                x'#0))
         && $Is(_module.__default.RemoveKey(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, $reveal, m#0, x#0), 
          TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y)));
// alloc consequence axiom for _module.__default.RemoveKey
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.RemoveKey$X: Ty, 
      _module._default.RemoveKey$Y: Ty, 
      $reveal: bool, 
      m#0: Map, 
      x#0: Box :: 
    { $IsAlloc(_module.__default.RemoveKey(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, $reveal, m#0, x#0), 
        TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y), 
        $Heap) } 
    (_module.__default.RemoveKey#canCall(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, m#0, x#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(m#0, TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y))
             && $IsAlloc(m#0, TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y), $Heap)
             && 
            $IsBox(x#0, _module._default.RemoveKey$X)
             && $IsAllocBox(x#0, _module._default.RemoveKey$X, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.RemoveKey(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, $reveal, m#0, x#0), 
        TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y), 
        $Heap));
// definition axiom for _module.__default.RemoveKey (revealed)
axiom {:id "id226"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.RemoveKey$X: Ty, 
      _module._default.RemoveKey$Y: Ty, 
      m#0: Map, 
      x#0: Box :: 
    { _module.__default.RemoveKey(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, true, m#0, x#0) } 
    _module.__default.RemoveKey#canCall(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, m#0, x#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(m#0, TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y))
           && $IsBox(x#0, _module._default.RemoveKey$X))
       ==> _module.__default.RemoveKey(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, true, m#0, x#0)
         == (var m'#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
                  $IsBox($w#0, _module._default.RemoveKey$X)
                     && 
                    Set#IsMember(Map#Domain(m#0), $w#0)
                     && $w#0 != x#0)), 
              (lambda $w#0: Box :: Map#Elements(m#0)[$w#0]), 
              TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y)); 
          m'#0));
// definition axiom for _module.__default.RemoveKey for decreasing-related literals (revealed)
axiom {:id "id227"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.RemoveKey$X: Ty, 
      _module._default.RemoveKey$Y: Ty, 
      m#0: Map, 
      x#0: Box :: 
    {:weight 3} { _module.__default.RemoveKey(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, true, Lit(m#0), x#0) } 
    _module.__default.RemoveKey#canCall(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, Lit(m#0), x#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(m#0, TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y))
           && $IsBox(x#0, _module._default.RemoveKey$X))
       ==> _module.__default.RemoveKey(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, true, Lit(m#0), x#0)
         == (var m'#1 := Map#Glue(Set#FromBoogieMap((lambda $w#2: Box :: 
                  $IsBox($w#2, _module._default.RemoveKey$X)
                     && 
                    Set#IsMember(Map#Domain(m#0), $w#2)
                     && $w#2 != x#0)), 
              (lambda $w#2: Box :: Map#Elements(Lit(m#0))[$w#2]), 
              TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y)); 
          m'#1));
// definition axiom for _module.__default.RemoveKey for all literals (revealed)
axiom {:id "id228"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.RemoveKey$X: Ty, 
      _module._default.RemoveKey$Y: Ty, 
      m#0: Map, 
      x#0: Box :: 
    {:weight 3} { _module.__default.RemoveKey(_module._default.RemoveKey$X, 
        _module._default.RemoveKey$Y, 
        true, 
        Lit(m#0), 
        Lit(x#0)) } 
    _module.__default.RemoveKey#canCall(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, Lit(m#0), Lit(x#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(m#0, TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y))
           && $IsBox(x#0, _module._default.RemoveKey$X))
       ==> _module.__default.RemoveKey(_module._default.RemoveKey$X, 
          _module._default.RemoveKey$Y, 
          true, 
          Lit(m#0), 
          Lit(x#0))
         == (var m'#2 := Map#Glue(Set#FromBoogieMap((lambda $w#4: Box :: 
                  $IsBox($w#4, _module._default.RemoveKey$X)
                     && 
                    Set#IsMember(Map#Domain(m#0), $w#4)
                     && $w#4 != x#0)), 
              (lambda $w#4: Box :: Map#Elements(Lit(m#0))[$w#4]), 
              TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y)); 
          m'#2));
}

function _module.__default.RemoveKey#canCall(_module._default.RemoveKey$X: Ty, 
    _module._default.RemoveKey$Y: Ty, 
    m#0: Map, 
    x#0: Box)
   : bool;

function _module.__default.RemoveKey#requires(Ty, Ty, Map, Box) : bool;

// #requires axiom for _module.__default.RemoveKey
axiom (forall _module._default.RemoveKey$X: Ty, 
    _module._default.RemoveKey$Y: Ty, 
    m#0: Map, 
    x#0: Box :: 
  { _module.__default.RemoveKey#requires(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, m#0, x#0) } 
  $Is(m#0, TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y))
       && $IsBox(x#0, _module._default.RemoveKey$X)
     ==> _module.__default.RemoveKey#requires(_module._default.RemoveKey$X, _module._default.RemoveKey$Y, m#0, x#0)
       == true);

procedure {:verboseName "RemoveKey (well-formedness)"} CheckWellformed$$_module.__default.RemoveKey(_module._default.RemoveKey$X: Ty, 
    _module._default.RemoveKey$Y: Ty, 
    m#0: Map
       where $Is(m#0, TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y)), 
    x#0: Box where $IsBox(x#0, _module._default.RemoveKey$X))
   returns (m'#3: Map);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id229"} Map#Equal(m'#3, 
    _module.__default.RemoveKeys(_module._default.RemoveKey$X, 
      _module._default.RemoveKey$Y, 
      reveal__module._default.RemoveKeys, 
      m#0, 
      Set#UnionOne(Set#Empty(): Set, x#0)));
  ensures {:id "id230"} Set#Card(Map#Domain(m'#3)) <= Set#Card(Map#Domain(m#0));
  ensures {:id "id231"} Set#IsMember(Map#Domain(m#0), x#0) ==> Map#Card(m'#3) == Map#Card(m#0) - 1;
  ensures {:id "id232"} !Set#IsMember(Map#Domain(m#0), x#0) ==> Map#Card(m'#3) == Map#Card(m#0);
  ensures {:id "id233"} Set#Equal(Map#Domain(m'#3), 
    Set#Difference(Map#Domain(m#0), Set#UnionOne(Set#Empty(): Set, x#0)));
  ensures {:id "id234"} (forall x'#2: Box :: 
    { Set#IsMember(Map#Domain(m'#3), x'#2) } 
      { Set#IsMember(Map#Domain(m#0), x'#2) } 
    $IsBox(x'#2, _module._default.RemoveKey$X)
         && Set#IsMember(Map#Domain(m#0), x'#2)
       ==> (x#0 == x'#2) != Set#IsMember(Map#Domain(m'#3), x'#2));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "RemoveKey (well-formedness)"} CheckWellformed$$_module.__default.RemoveKey(_module._default.RemoveKey$X: Ty, 
    _module._default.RemoveKey$Y: Ty, 
    m#0: Map, 
    x#0: Box)
   returns (m'#3: Map)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##m#0: Map;
  var ##xs#0: Set;
  var x'#3: Box;
  var m'#Z#0: Map;
  var let#0#0#0: Map;
  var x'#4: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.RemoveKey(_module._default.RemoveKey$X, 
            _module._default.RemoveKey$Y, 
            reveal__module._default.RemoveKey, 
            m#0, 
            x#0), 
          TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y));
        assume $Is(m'#3, TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y));
        ##m#0 := m#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0, TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y), $Heap);
        ##xs#0 := Set#UnionOne(Set#Empty(): Set, x#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0, TSet(_module._default.RemoveKey$X), $Heap);
        assume _module.__default.RemoveKeys#canCall(_module._default.RemoveKey$X, 
          _module._default.RemoveKey$Y, 
          m#0, 
          Set#UnionOne(Set#Empty(): Set, x#0));
        assume {:id "id235"} Map#Equal(m'#3, 
          _module.__default.RemoveKeys(_module._default.RemoveKey$X, 
            _module._default.RemoveKey$Y, 
            reveal__module._default.RemoveKeys, 
            m#0, 
            Set#UnionOne(Set#Empty(): Set, x#0)));
        assume {:id "id236"} Set#Card(Map#Domain(m'#3)) <= Set#Card(Map#Domain(m#0));
        if (*)
        {
            assume {:id "id237"} Set#IsMember(Map#Domain(m#0), x#0);
            assume {:id "id238"} Map#Card(m'#3) == Map#Card(m#0) - 1;
        }
        else
        {
            assume {:id "id239"} Set#IsMember(Map#Domain(m#0), x#0) ==> Map#Card(m'#3) == Map#Card(m#0) - 1;
        }

        if (*)
        {
            assume {:id "id240"} !Set#IsMember(Map#Domain(m#0), x#0);
            assume {:id "id241"} Map#Card(m'#3) == Map#Card(m#0);
        }
        else
        {
            assume {:id "id242"} !Set#IsMember(Map#Domain(m#0), x#0) ==> Map#Card(m'#3) == Map#Card(m#0);
        }

        assume {:id "id243"} Set#Equal(Map#Domain(m'#3), 
          Set#Difference(Map#Domain(m#0), Set#UnionOne(Set#Empty(): Set, x#0)));
        havoc x'#3;
        assume $IsBox(x'#3, _module._default.RemoveKey$X)
           && $IsAllocBox(x'#3, _module._default.RemoveKey$X, $Heap);
        if (*)
        {
            assume {:id "id244"} Set#IsMember(Map#Domain(m#0), x'#3);
            assume {:id "id245"} (x#0 == x'#3) != Set#IsMember(Map#Domain(m'#3), x'#3);
        }
        else
        {
            assume {:id "id246"} Set#IsMember(Map#Domain(m#0), x'#3)
               ==> (x#0 == x'#3) != Set#IsMember(Map#Domain(m'#3), x'#3);
        }

        assume {:id "id247"} (forall x'#2: Box :: 
          { Set#IsMember(Map#Domain(m'#3), x'#2) } 
            { Set#IsMember(Map#Domain(m#0), x'#2) } 
          $IsBox(x'#2, _module._default.RemoveKey$X)
               && Set#IsMember(Map#Domain(m#0), x'#2)
             ==> (x#0 == x'#2) != Set#IsMember(Map#Domain(m'#3), x'#2));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc m'#Z#0;
        // Begin Comprehension WF check
        havoc x'#4;
        if ($IsBox(x'#4, _module._default.RemoveKey$X)
           && $IsAllocBox(x'#4, _module._default.RemoveKey$X, $Heap))
        {
            if (Set#IsMember(Map#Domain(m#0), x'#4))
            {
            }

            if (Set#IsMember(Map#Domain(m#0), x'#4) && x'#4 != x#0)
            {
                assert {:id "id248"} Set#IsMember(Map#Domain(m#0), x'#4);
            }
        }

        // End Comprehension WF check
        assume {:id "id249"} let#0#0#0
           == Map#Glue(Set#FromBoogieMap((lambda $w#7: Box :: 
                $IsBox($w#7, _module._default.RemoveKey$X)
                   && 
                  Set#IsMember(Map#Domain(m#0), $w#7)
                   && $w#7 != x#0)), 
            (lambda $w#7: Box :: Map#Elements(m#0)[$w#7]), 
            TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y));
        assume {:id "id250"} m'#Z#0 == let#0#0#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1221,5)
        assume true;
        assert {:id "id251"} Set#Equal(Map#Domain(m'#Z#0), 
          Set#Difference(Map#Domain(m#0), Set#UnionOne(Set#Empty(): Set, x#0)));
        assume {:id "id252"} _module.__default.RemoveKey(_module._default.RemoveKey$X, 
            _module._default.RemoveKey$Y, 
            reveal__module._default.RemoveKey, 
            m#0, 
            x#0)
           == m'#Z#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.RemoveKey(_module._default.RemoveKey$X, 
            _module._default.RemoveKey$Y, 
            reveal__module._default.RemoveKey, 
            m#0, 
            x#0), 
          TMap(_module._default.RemoveKey$X, _module._default.RemoveKey$Y));
        assume {:id "id253"} _module.__default.RemoveKey(_module._default.RemoveKey$X, 
            _module._default.RemoveKey$Y, 
            reveal__module._default.RemoveKey, 
            m#0, 
            x#0)
           == m'#3;
        return;

        assume false;
    }
}



// function declaration for _module._default.not
function _module.__default.not(x#0: bool) : bool
uses {
// definition axiom for _module.__default.not (revealed)
axiom {:id "id254"} 0 <= $FunctionContextHeight
   ==> (forall x#0: bool :: 
    { _module.__default.not(x#0) } 
    _module.__default.not#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.__default.not(x#0) == !x#0);
// definition axiom for _module.__default.not for all literals (revealed)
axiom {:id "id255"} 0 <= $FunctionContextHeight
   ==> (forall x#0: bool :: 
    {:weight 3} { _module.__default.not(Lit(x#0)) } 
    _module.__default.not#canCall(Lit(x#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.not(Lit(x#0)) == !Lit(x#0));
}

function _module.__default.not#canCall(x#0: bool) : bool;

function _module.__default.not#requires(bool) : bool;

// #requires axiom for _module.__default.not
axiom (forall x#0: bool :: 
  { _module.__default.not#requires(x#0) } 
  _module.__default.not#requires(x#0) == true);

procedure {:verboseName "not (well-formedness)"} CheckWellformed$$_module.__default.not(x#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 10 == $FunctionContextHeight;
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
  free requires 10 == $FunctionContextHeight;
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
  var defass#memory#0: bool;
  var memory#0: ref
     where defass#memory#0
       ==> $Is(memory#0, Tclass._module.Memory())
         && $IsAlloc(memory#0, Tclass._module.Memory(), $Heap);
  var $nw: ref;
  var defass#i1#0: bool;
  var i1#0: ref
     where defass#i1#0
       ==> $Is(i1#0, Tclass._module.Object())
         && $IsAlloc(i1#0, Tclass._module.Object(), $Heap);
  var k##0: DatatypeType;
  var ks##0: Map;
  var defass#m1#0: bool;
  var m1#0: ref
     where defass#m1#0
       ==> $Is(m1#0, Tclass._module.Object())
         && $IsAlloc(m1#0, Tclass._module.Object(), $Heap);
  var k##1: DatatypeType;
  var ks##1: Map;
  var defass#x1#0: bool;
  var x1#0: ref
     where defass#x1#0
       ==> $Is(x1#0, Tclass._module.Object())
         && $IsAlloc(x1#0, Tclass._module.Object(), $Heap);
  var k##2: DatatypeType;
  var ks##2: Map;
  var defass#i2#0: bool;
  var i2#0: ref
     where defass#i2#0
       ==> $Is(i2#0, Tclass._module.Object())
         && $IsAlloc(i2#0, Tclass._module.Object(), $Heap);
  var k##3: DatatypeType;
  var ks##3: Map;
  var defass#m2#0: bool;
  var m2#0: ref
     where defass#m2#0
       ==> $Is(m2#0, Tclass._module.Object())
         && $IsAlloc(m2#0, Tclass._module.Object(), $Heap);
  var k##4: DatatypeType;
  var ks##4: Map;
  var nu##0: ref;
  var nu##1: ref;
  var nu##2: ref;
  var nu##3: ref;
  var ##f#0: ref;
  var ##t#0: ref;
  var ##f#1: ref;
  var ##t#1: ref;
  var ##f#2: ref;
  var ##t#2: ref;
  var ##f#3: ref;
  var ##t#3: ref;
  var ##f#4: ref;
  var ##t#4: ref;
  var ##f#5: ref;
  var ##t#5: ref;
  var ##f#6: ref;
  var ##t#6: ref;
  var ##f#7: ref;
  var ##t#7: ref;
  var ##f#8: ref;
  var ##t#8: ref;
  var ##f#9: ref;
  var ##t#9: ref;
  var ##f#10: ref;
  var ##t#10: ref;
  var ##f#11: ref;
  var ##t#11: ref;
  var ##f#12: ref;
  var ##t#12: ref;
  var ##f#13: ref;
  var ##t#13: ref;
  var ##f#14: ref;
  var ##t#14: ref;
  var ##f#15: ref;
  var ##t#15: ref;
  var ##f#16: ref;
  var ##t#16: ref;
  var ##f#17: ref;
  var ##t#17: ref;
  var ##f#18: ref;
  var ##t#18: ref;
  var ##f#19: ref;
  var ##t#19: ref;
  var ##f#20: ref;
  var ##t#20: ref;
  var ##f#21: ref;
  var ##t#21: ref;
  var ##f#22: ref;
  var ##t#22: ref;
  var ##f#23: ref;
  var ##t#23: ref;
  var ##f#24: ref;
  var ##t#24: ref;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1256,15)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1256,18)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id257"} $nw := Call$$_module.Memory.__ctor();
    // TrCallStmt: After ProcessCallStmt
    memory#0 := $nw;
    defass#memory#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1258,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1258,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    k##0 := Lit(#_module.Region.Isolate());
    assume true;
    // ProcessCallStmt: CheckSubrange
    ks##0 := Lit(Map#Empty(): Map);
    call {:id "id259"} $nw := Call$$_module.Object.__ctor(k##0, ks##0);
    // TrCallStmt: After ProcessCallStmt
    i1#0 := $nw;
    defass#i1#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1260,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1260,13)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id261"} defass#i1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    k##1 := #_module.Region.Heap(i1#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    ks##1 := Lit(Map#Empty(): Map);
    call {:id "id262"} $nw := Call$$_module.Object.__ctor(k##1, ks##1);
    // TrCallStmt: After ProcessCallStmt
    m1#0 := $nw;
    defass#m1#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1262,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1262,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    k##2 := Lit(#_module.Region.Frozen());
    assume true;
    // ProcessCallStmt: CheckSubrange
    ks##2 := Lit(Map#Empty(): Map);
    call {:id "id264"} $nw := Call$$_module.Object.__ctor(k##2, ks##2);
    // TrCallStmt: After ProcessCallStmt
    x1#0 := $nw;
    defass#x1#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1264,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1264,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    k##3 := Lit(#_module.Region.Isolate());
    assume true;
    // ProcessCallStmt: CheckSubrange
    ks##3 := Lit(Map#Empty(): Map);
    call {:id "id266"} $nw := Call$$_module.Object.__ctor(k##3, ks##3);
    // TrCallStmt: After ProcessCallStmt
    i2#0 := $nw;
    defass#i2#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1266,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1266,13)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id268"} defass#i2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    k##4 := #_module.Region.Heap(i2#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    ks##4 := Lit(Map#Empty(): Map);
    call {:id "id269"} $nw := Call$$_module.Object.__ctor(k##4, ks##4);
    // TrCallStmt: After ProcessCallStmt
    m2#0 := $nw;
    defass#m2#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1268,20)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id271"} defass#memory#0;
    assume true;
    assert {:id "id272"} memory#0 != null;
    assert {:id "id273"} defass#i1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    nu##0 := i1#0;
    assert {:id "id274"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && 
          $o == memory#0
           && $f == _module.Memory.objects
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id275"} Call$$_module.Memory.fAddObject(memory#0, nu##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1269,20)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id276"} defass#memory#0;
    assume true;
    assert {:id "id277"} memory#0 != null;
    assert {:id "id278"} defass#m1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    nu##1 := m1#0;
    assert {:id "id279"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && 
          $o == memory#0
           && $f == _module.Memory.objects
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id280"} Call$$_module.Memory.fAddObject(memory#0, nu##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1270,20)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id281"} defass#memory#0;
    assume true;
    assert {:id "id282"} memory#0 != null;
    assert {:id "id283"} defass#x1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    nu##2 := x1#0;
    assert {:id "id284"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && 
          $o == memory#0
           && $f == _module.Memory.objects
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id285"} Call$$_module.Memory.fAddObject(memory#0, nu##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1271,20)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id286"} defass#memory#0;
    assume true;
    assert {:id "id287"} memory#0 != null;
    assert {:id "id288"} defass#i2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    nu##3 := i2#0;
    assert {:id "id289"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && 
          $o == memory#0
           && $f == _module.Memory.objects
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id290"} Call$$_module.Memory.fAddObject(memory#0, nu##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1289,3)
    assert {:id "id291"} defass#i1#0;
    ##f#0 := i1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#0, Tclass._module.Object(), $Heap);
    assert {:id "id292"} defass#i1#0;
    ##t#0 := i1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#0, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(i1#0, i1#0);
    assume _module.__default.VeniceReferenceOK#canCall(i1#0, i1#0);
    assert {:id "id293"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, i1#0)
         || (_module.Region.Frozen_q(_module.Object.region(i1#0)) ==> Lit(true));
    assert {:id "id294"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, i1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i1#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(i1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i1#0))
             || (_module.Region.Heap_q(_module.Object.region(i1#0))
               && _module.Region.region(_module.Object.region(i1#0))
                 == _module.Region.region(_module.Object.region(i1#0))));
    assert {:id "id295"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, i1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i1#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(i1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i1#0))
             || (_module.Region.Heap_q(_module.Object.region(i1#0))
               && _module.Region.region(_module.Object.region(i1#0)) == i1#0));
    assert {:id "id296"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, i1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i1#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(i1#0))
           ==> Lit(false));
    assume {:id "id297"} _module.__default.VeniceReferenceOK(i1#0, i1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1290,3)
    assert {:id "id298"} defass#i1#0;
    ##f#1 := i1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#1, Tclass._module.Object(), $Heap);
    assert {:id "id299"} defass#m1#0;
    ##t#1 := m1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#1, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(i1#0, m1#0);
    assume _module.__default.VeniceReferenceOK#canCall(i1#0, m1#0);
    assert {:id "id300"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, m1#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, m1#0)
         || (_module.Region.Frozen_q(_module.Object.region(m1#0)) ==> Lit(true));
    assert {:id "id301"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, m1#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, m1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(m1#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(i1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(m1#0))
             || (_module.Region.Heap_q(_module.Object.region(m1#0))
               && _module.Region.region(_module.Object.region(m1#0))
                 == _module.Region.region(_module.Object.region(i1#0))));
    assert {:id "id302"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, m1#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, m1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(m1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i1#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(i1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(m1#0))
             || (_module.Region.Heap_q(_module.Object.region(m1#0))
               && _module.Region.region(_module.Object.region(m1#0)) == i1#0));
    assert {:id "id303"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, m1#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, m1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(m1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i1#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(i1#0))
           ==> Lit(false));
    assume {:id "id304"} _module.__default.VeniceReferenceOK(i1#0, m1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1291,3)
    assert {:id "id305"} defass#i1#0;
    ##f#2 := i1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#2, Tclass._module.Object(), $Heap);
    assert {:id "id306"} defass#x1#0;
    ##t#2 := x1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#2, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(i1#0, x1#0);
    assume _module.__default.VeniceReferenceOK#canCall(i1#0, x1#0);
    assert {:id "id307"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, x1#0)
         || (_module.Region.Frozen_q(_module.Object.region(x1#0)) ==> Lit(true));
    assert {:id "id308"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, x1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(x1#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(i1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(x1#0))
             || (_module.Region.Heap_q(_module.Object.region(x1#0))
               && _module.Region.region(_module.Object.region(x1#0))
                 == _module.Region.region(_module.Object.region(i1#0))));
    assert {:id "id309"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, x1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(x1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i1#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(i1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(x1#0))
             || (_module.Region.Heap_q(_module.Object.region(x1#0))
               && _module.Region.region(_module.Object.region(x1#0)) == i1#0));
    assert {:id "id310"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, x1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(x1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i1#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(i1#0))
           ==> Lit(false));
    assume {:id "id311"} _module.__default.VeniceReferenceOK(i1#0, x1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1292,3)
    assert {:id "id312"} defass#i1#0;
    ##f#3 := i1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#3, Tclass._module.Object(), $Heap);
    assert {:id "id313"} defass#i2#0;
    ##t#3 := i2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#3, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(i1#0, i2#0);
    assume _module.__default.VeniceReferenceOK#canCall(i1#0, i2#0);
    assert {:id "id314"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, i2#0)
         || (_module.Region.Frozen_q(_module.Object.region(i2#0)) ==> Lit(true));
    assert {:id "id315"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, i2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i2#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(i1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i2#0))
             || (_module.Region.Heap_q(_module.Object.region(i2#0))
               && _module.Region.region(_module.Object.region(i2#0))
                 == _module.Region.region(_module.Object.region(i1#0))));
    assert {:id "id316"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, i2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i2#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i1#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(i1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i2#0))
             || (_module.Region.Heap_q(_module.Object.region(i2#0))
               && _module.Region.region(_module.Object.region(i2#0)) == i1#0));
    assert {:id "id317"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i1#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(i1#0, i2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i2#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i1#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(i1#0))
           ==> Lit(false));
    assume {:id "id318"} _module.__default.VeniceReferenceOK(i1#0, i2#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1293,3)
    assert {:id "id319"} defass#i1#0;
    ##f#4 := i1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#4, Tclass._module.Object(), $Heap);
    assert {:id "id320"} defass#m2#0;
    ##t#4 := m2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#4, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(i1#0, m2#0);
    assume _module.__default.VeniceReferenceOK#canCall(i1#0, m2#0);
    assert {:id "id321"} !_module.__default.VeniceReferenceOK(i1#0, m2#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1295,3)
    assert {:id "id322"} defass#m1#0;
    ##f#5 := m1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#5, Tclass._module.Object(), $Heap);
    assert {:id "id323"} defass#i1#0;
    ##t#5 := i1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#5, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(m1#0, i1#0);
    assume _module.__default.VeniceReferenceOK#canCall(m1#0, i1#0);
    assert {:id "id324"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, i1#0)
         || (_module.Region.Frozen_q(_module.Object.region(i1#0)) ==> Lit(true));
    assert {:id "id325"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, i1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i1#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(m1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i1#0))
             || (_module.Region.Heap_q(_module.Object.region(i1#0))
               && _module.Region.region(_module.Object.region(i1#0))
                 == _module.Region.region(_module.Object.region(m1#0))));
    assert {:id "id326"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, i1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m1#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(m1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i1#0))
             || (_module.Region.Heap_q(_module.Object.region(i1#0))
               && _module.Region.region(_module.Object.region(i1#0)) == m1#0));
    assert {:id "id327"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, i1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m1#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(m1#0))
           ==> Lit(false));
    assume {:id "id328"} _module.__default.VeniceReferenceOK(m1#0, i1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1296,3)
    assert {:id "id329"} defass#m1#0;
    ##f#6 := m1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#6, Tclass._module.Object(), $Heap);
    assert {:id "id330"} defass#m1#0;
    ##t#6 := m1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#6, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(m1#0, m1#0);
    assume _module.__default.VeniceReferenceOK#canCall(m1#0, m1#0);
    assert {:id "id331"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, m1#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, m1#0)
         || (_module.Region.Frozen_q(_module.Object.region(m1#0)) ==> Lit(true));
    assert {:id "id332"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, m1#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, m1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(m1#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(m1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(m1#0))
             || (_module.Region.Heap_q(_module.Object.region(m1#0))
               && _module.Region.region(_module.Object.region(m1#0))
                 == _module.Region.region(_module.Object.region(m1#0))));
    assert {:id "id333"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, m1#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, m1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(m1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m1#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(m1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(m1#0))
             || (_module.Region.Heap_q(_module.Object.region(m1#0))
               && _module.Region.region(_module.Object.region(m1#0)) == m1#0));
    assert {:id "id334"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, m1#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, m1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(m1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m1#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(m1#0))
           ==> Lit(false));
    assume {:id "id335"} _module.__default.VeniceReferenceOK(m1#0, m1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1297,3)
    assert {:id "id336"} defass#m1#0;
    ##f#7 := m1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#7, Tclass._module.Object(), $Heap);
    assert {:id "id337"} defass#x1#0;
    ##t#7 := x1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#7, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(m1#0, x1#0);
    assume _module.__default.VeniceReferenceOK#canCall(m1#0, x1#0);
    assert {:id "id338"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, x1#0)
         || (_module.Region.Frozen_q(_module.Object.region(x1#0)) ==> Lit(true));
    assert {:id "id339"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, x1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(x1#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(m1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(x1#0))
             || (_module.Region.Heap_q(_module.Object.region(x1#0))
               && _module.Region.region(_module.Object.region(x1#0))
                 == _module.Region.region(_module.Object.region(m1#0))));
    assert {:id "id340"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, x1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(x1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m1#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(m1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(x1#0))
             || (_module.Region.Heap_q(_module.Object.region(x1#0))
               && _module.Region.region(_module.Object.region(x1#0)) == m1#0));
    assert {:id "id341"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, x1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(x1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m1#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(m1#0))
           ==> Lit(false));
    assume {:id "id342"} _module.__default.VeniceReferenceOK(m1#0, x1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1298,3)
    assert {:id "id343"} defass#m1#0;
    ##f#8 := m1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#8, Tclass._module.Object(), $Heap);
    assert {:id "id344"} defass#i2#0;
    ##t#8 := i2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#8, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(m1#0, i2#0);
    assume _module.__default.VeniceReferenceOK#canCall(m1#0, i2#0);
    assert {:id "id345"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, i2#0)
         || (_module.Region.Frozen_q(_module.Object.region(i2#0)) ==> Lit(true));
    assert {:id "id346"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, i2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i2#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(m1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i2#0))
             || (_module.Region.Heap_q(_module.Object.region(i2#0))
               && _module.Region.region(_module.Object.region(i2#0))
                 == _module.Region.region(_module.Object.region(m1#0))));
    assert {:id "id347"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, i2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i2#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m1#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(m1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i2#0))
             || (_module.Region.Heap_q(_module.Object.region(i2#0))
               && _module.Region.region(_module.Object.region(i2#0)) == m1#0));
    assert {:id "id348"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m1#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(m1#0, i2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i2#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m1#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(m1#0))
           ==> Lit(false));
    assume {:id "id349"} _module.__default.VeniceReferenceOK(m1#0, i2#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1299,3)
    assert {:id "id350"} defass#m1#0;
    ##f#9 := m1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#9, Tclass._module.Object(), $Heap);
    assert {:id "id351"} defass#m2#0;
    ##t#9 := m2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#9, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(m1#0, m2#0);
    assume _module.__default.VeniceReferenceOK#canCall(m1#0, m2#0);
    assert {:id "id352"} !_module.__default.VeniceReferenceOK(m1#0, m2#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1301,3)
    assert {:id "id353"} defass#x1#0;
    ##f#10 := x1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#10, Tclass._module.Object(), $Heap);
    assert {:id "id354"} defass#i1#0;
    ##t#10 := i1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#10, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(x1#0, i1#0);
    assume _module.__default.VeniceReferenceOK#canCall(x1#0, i1#0);
    assert {:id "id355"} !_module.__default.VeniceReferenceOK(x1#0, i1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1302,3)
    assert {:id "id356"} defass#x1#0;
    ##f#11 := x1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#11, Tclass._module.Object(), $Heap);
    assert {:id "id357"} defass#m1#0;
    ##t#11 := m1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#11, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(x1#0, m1#0);
    assume _module.__default.VeniceReferenceOK#canCall(x1#0, m1#0);
    assert {:id "id358"} !_module.__default.VeniceReferenceOK(x1#0, m1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1303,3)
    assert {:id "id359"} defass#x1#0;
    ##f#12 := x1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#12, Tclass._module.Object(), $Heap);
    assert {:id "id360"} defass#x1#0;
    ##t#12 := x1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#12, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(x1#0, x1#0);
    assume _module.__default.VeniceReferenceOK#canCall(x1#0, x1#0);
    assert {:id "id361"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(x1#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(x1#0, x1#0)
         || (_module.Region.Frozen_q(_module.Object.region(x1#0)) ==> Lit(true));
    assert {:id "id362"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(x1#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(x1#0, x1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(x1#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(x1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(x1#0))
             || (_module.Region.Heap_q(_module.Object.region(x1#0))
               && _module.Region.region(_module.Object.region(x1#0))
                 == _module.Region.region(_module.Object.region(x1#0))));
    assert {:id "id363"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(x1#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(x1#0, x1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(x1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(x1#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(x1#0))
           ==> _module.Region.Isolate_q(_module.Object.region(x1#0))
             || (_module.Region.Heap_q(_module.Object.region(x1#0))
               && _module.Region.region(_module.Object.region(x1#0)) == x1#0));
    assert {:id "id364"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(x1#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(x1#0, x1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(x1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(x1#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(x1#0))
           ==> Lit(false));
    assume {:id "id365"} _module.__default.VeniceReferenceOK(x1#0, x1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1304,3)
    assert {:id "id366"} defass#x1#0;
    ##f#13 := x1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#13, Tclass._module.Object(), $Heap);
    assert {:id "id367"} defass#i2#0;
    ##t#13 := i2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#13, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(x1#0, i2#0);
    assume _module.__default.VeniceReferenceOK#canCall(x1#0, i2#0);
    assert {:id "id368"} !_module.__default.VeniceReferenceOK(x1#0, i2#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1305,3)
    assert {:id "id369"} defass#x1#0;
    ##f#14 := x1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#14, Tclass._module.Object(), $Heap);
    assert {:id "id370"} defass#m2#0;
    ##t#14 := m2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#14, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(x1#0, m2#0);
    assume _module.__default.VeniceReferenceOK#canCall(x1#0, m2#0);
    assert {:id "id371"} !_module.__default.VeniceReferenceOK(x1#0, m2#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1307,3)
    assert {:id "id372"} defass#i2#0;
    ##f#15 := i2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#15, Tclass._module.Object(), $Heap);
    assert {:id "id373"} defass#i1#0;
    ##t#15 := i1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#15, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(i2#0, i1#0);
    assume _module.__default.VeniceReferenceOK#canCall(i2#0, i1#0);
    assert {:id "id374"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, i1#0)
         || (_module.Region.Frozen_q(_module.Object.region(i1#0)) ==> Lit(true));
    assert {:id "id375"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, i1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i1#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(i2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i1#0))
             || (_module.Region.Heap_q(_module.Object.region(i1#0))
               && _module.Region.region(_module.Object.region(i1#0))
                 == _module.Region.region(_module.Object.region(i2#0))));
    assert {:id "id376"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, i1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i2#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(i2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i1#0))
             || (_module.Region.Heap_q(_module.Object.region(i1#0))
               && _module.Region.region(_module.Object.region(i1#0)) == i2#0));
    assert {:id "id377"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, i1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i2#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(i2#0))
           ==> Lit(false));
    assume {:id "id378"} _module.__default.VeniceReferenceOK(i2#0, i1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1308,3)
    assert {:id "id379"} defass#i2#0;
    ##f#16 := i2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#16, Tclass._module.Object(), $Heap);
    assert {:id "id380"} defass#m1#0;
    ##t#16 := m1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#16, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(i2#0, m1#0);
    assume _module.__default.VeniceReferenceOK#canCall(i2#0, m1#0);
    assert {:id "id381"} !_module.__default.VeniceReferenceOK(i2#0, m1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1309,3)
    assert {:id "id382"} defass#i2#0;
    ##f#17 := i2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#17, Tclass._module.Object(), $Heap);
    assert {:id "id383"} defass#x1#0;
    ##t#17 := x1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#17, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(i2#0, x1#0);
    assume _module.__default.VeniceReferenceOK#canCall(i2#0, x1#0);
    assert {:id "id384"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, x1#0)
         || (_module.Region.Frozen_q(_module.Object.region(x1#0)) ==> Lit(true));
    assert {:id "id385"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, x1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(x1#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(i2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(x1#0))
             || (_module.Region.Heap_q(_module.Object.region(x1#0))
               && _module.Region.region(_module.Object.region(x1#0))
                 == _module.Region.region(_module.Object.region(i2#0))));
    assert {:id "id386"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, x1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(x1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i2#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(i2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(x1#0))
             || (_module.Region.Heap_q(_module.Object.region(x1#0))
               && _module.Region.region(_module.Object.region(x1#0)) == i2#0));
    assert {:id "id387"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, x1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(x1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i2#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(i2#0))
           ==> Lit(false));
    assume {:id "id388"} _module.__default.VeniceReferenceOK(i2#0, x1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1310,3)
    assert {:id "id389"} defass#i2#0;
    ##f#18 := i2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#18, Tclass._module.Object(), $Heap);
    assert {:id "id390"} defass#i2#0;
    ##t#18 := i2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#18, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(i2#0, i2#0);
    assume _module.__default.VeniceReferenceOK#canCall(i2#0, i2#0);
    assert {:id "id391"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, i2#0)
         || (_module.Region.Frozen_q(_module.Object.region(i2#0)) ==> Lit(true));
    assert {:id "id392"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, i2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i2#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(i2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i2#0))
             || (_module.Region.Heap_q(_module.Object.region(i2#0))
               && _module.Region.region(_module.Object.region(i2#0))
                 == _module.Region.region(_module.Object.region(i2#0))));
    assert {:id "id393"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, i2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i2#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i2#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(i2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i2#0))
             || (_module.Region.Heap_q(_module.Object.region(i2#0))
               && _module.Region.region(_module.Object.region(i2#0)) == i2#0));
    assert {:id "id394"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, i2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i2#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i2#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(i2#0))
           ==> Lit(false));
    assume {:id "id395"} _module.__default.VeniceReferenceOK(i2#0, i2#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1311,3)
    assert {:id "id396"} defass#i2#0;
    ##f#19 := i2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#19, Tclass._module.Object(), $Heap);
    assert {:id "id397"} defass#m2#0;
    ##t#19 := m2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#19, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(i2#0, m2#0);
    assume _module.__default.VeniceReferenceOK#canCall(i2#0, m2#0);
    assert {:id "id398"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, m2#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, m2#0)
         || (_module.Region.Frozen_q(_module.Object.region(m2#0)) ==> Lit(true));
    assert {:id "id399"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, m2#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, m2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(m2#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(i2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(m2#0))
             || (_module.Region.Heap_q(_module.Object.region(m2#0))
               && _module.Region.region(_module.Object.region(m2#0))
                 == _module.Region.region(_module.Object.region(i2#0))));
    assert {:id "id400"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, m2#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, m2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(m2#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i2#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(i2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(m2#0))
             || (_module.Region.Heap_q(_module.Object.region(m2#0))
               && _module.Region.region(_module.Object.region(m2#0)) == i2#0));
    assert {:id "id401"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(i2#0, m2#0)
       ==> _module.__default.VeniceReferenceOK(i2#0, m2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(m2#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(i2#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(i2#0))
           ==> Lit(false));
    assume {:id "id402"} _module.__default.VeniceReferenceOK(i2#0, m2#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1313,3)
    assert {:id "id403"} defass#m2#0;
    ##f#20 := m2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#20, Tclass._module.Object(), $Heap);
    assert {:id "id404"} defass#i1#0;
    ##t#20 := i1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#20, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(m2#0, i1#0);
    assume _module.__default.VeniceReferenceOK#canCall(m2#0, i1#0);
    assert {:id "id405"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, i1#0)
         || (_module.Region.Frozen_q(_module.Object.region(i1#0)) ==> Lit(true));
    assert {:id "id406"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, i1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i1#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(m2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i1#0))
             || (_module.Region.Heap_q(_module.Object.region(i1#0))
               && _module.Region.region(_module.Object.region(i1#0))
                 == _module.Region.region(_module.Object.region(m2#0))));
    assert {:id "id407"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, i1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m2#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(m2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i1#0))
             || (_module.Region.Heap_q(_module.Object.region(i1#0))
               && _module.Region.region(_module.Object.region(i1#0)) == m2#0));
    assert {:id "id408"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, i1#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, i1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m2#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(m2#0))
           ==> Lit(false));
    assume {:id "id409"} _module.__default.VeniceReferenceOK(m2#0, i1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1314,3)
    assert {:id "id410"} defass#m2#0;
    ##f#21 := m2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#21, Tclass._module.Object(), $Heap);
    assert {:id "id411"} defass#m1#0;
    ##t#21 := m1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#21, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(m2#0, m1#0);
    assume _module.__default.VeniceReferenceOK#canCall(m2#0, m1#0);
    assert {:id "id412"} !_module.__default.VeniceReferenceOK(m2#0, m1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1315,3)
    assert {:id "id413"} defass#m2#0;
    ##f#22 := m2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#22, Tclass._module.Object(), $Heap);
    assert {:id "id414"} defass#x1#0;
    ##t#22 := x1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#22, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(m2#0, x1#0);
    assume _module.__default.VeniceReferenceOK#canCall(m2#0, x1#0);
    assert {:id "id415"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, x1#0)
         || (_module.Region.Frozen_q(_module.Object.region(x1#0)) ==> Lit(true));
    assert {:id "id416"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, x1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(x1#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(m2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(x1#0))
             || (_module.Region.Heap_q(_module.Object.region(x1#0))
               && _module.Region.region(_module.Object.region(x1#0))
                 == _module.Region.region(_module.Object.region(m2#0))));
    assert {:id "id417"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, x1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(x1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m2#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(m2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(x1#0))
             || (_module.Region.Heap_q(_module.Object.region(x1#0))
               && _module.Region.region(_module.Object.region(x1#0)) == m2#0));
    assert {:id "id418"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, x1#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, x1#0)
         || (!_module.Region.Frozen_q(_module.Object.region(x1#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m2#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(m2#0))
           ==> Lit(false));
    assume {:id "id419"} _module.__default.VeniceReferenceOK(m2#0, x1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1316,3)
    assert {:id "id420"} defass#m2#0;
    ##f#23 := m2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#23, Tclass._module.Object(), $Heap);
    assert {:id "id421"} defass#i2#0;
    ##t#23 := i2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#23, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(m2#0, i2#0);
    assume _module.__default.VeniceReferenceOK#canCall(m2#0, i2#0);
    assert {:id "id422"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, i2#0)
         || (_module.Region.Frozen_q(_module.Object.region(i2#0)) ==> Lit(true));
    assert {:id "id423"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, i2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i2#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(m2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i2#0))
             || (_module.Region.Heap_q(_module.Object.region(i2#0))
               && _module.Region.region(_module.Object.region(i2#0))
                 == _module.Region.region(_module.Object.region(m2#0))));
    assert {:id "id424"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, i2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i2#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m2#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(m2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(i2#0))
             || (_module.Region.Heap_q(_module.Object.region(i2#0))
               && _module.Region.region(_module.Object.region(i2#0)) == m2#0));
    assert {:id "id425"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, i2#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, i2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(i2#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m2#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(m2#0))
           ==> Lit(false));
    assume {:id "id426"} _module.__default.VeniceReferenceOK(m2#0, i2#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1317,3)
    assert {:id "id427"} defass#m2#0;
    ##f#24 := m2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#24, Tclass._module.Object(), $Heap);
    assert {:id "id428"} defass#m2#0;
    ##t#24 := m2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#24, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(m2#0, m2#0);
    assume _module.__default.VeniceReferenceOK#canCall(m2#0, m2#0);
    assert {:id "id429"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, m2#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, m2#0)
         || (_module.Region.Frozen_q(_module.Object.region(m2#0)) ==> Lit(true));
    assert {:id "id430"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, m2#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, m2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(m2#0))
           ==> 
          _module.Region.Heap_q(_module.Object.region(m2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(m2#0))
             || (_module.Region.Heap_q(_module.Object.region(m2#0))
               && _module.Region.region(_module.Object.region(m2#0))
                 == _module.Region.region(_module.Object.region(m2#0))));
    assert {:id "id431"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, m2#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, m2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(m2#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m2#0))
           ==> 
          _module.Region.Isolate_q(_module.Object.region(m2#0))
           ==> _module.Region.Isolate_q(_module.Object.region(m2#0))
             || (_module.Region.Heap_q(_module.Object.region(m2#0))
               && _module.Region.region(_module.Object.region(m2#0)) == m2#0));
    assert {:id "id432"} {:subsumption 0} _module.__default.VeniceReferenceOK#canCall(m2#0, m2#0)
       ==> _module.__default.VeniceReferenceOK(m2#0, m2#0)
         || (!_module.Region.Frozen_q(_module.Object.region(m2#0))
           ==> 
          !_module.Region.Heap_q(_module.Object.region(m2#0))
           ==> 
          !_module.Region.Isolate_q(_module.Object.region(m2#0))
           ==> Lit(false));
    assume {:id "id433"} _module.__default.VeniceReferenceOK(m2#0, m2#0);
}



procedure {:verboseName "Main1 (well-formedness)"} CheckWellFormed$$_module.__default.Main1();
  free requires 11 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Main1 (call)"} Call$$_module.__default.Main1();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Main1 (correctness)"} Impl$$_module.__default.Main1() returns ($_reverifyPost: bool);
  free requires 11 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main1 (correctness)"} Impl$$_module.__default.Main1() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#memory#0: bool;
  var memory#0: ref
     where defass#memory#0
       ==> $Is(memory#0, Tclass._module.Memory())
         && $IsAlloc(memory#0, Tclass._module.Memory(), $Heap);
  var $nw: ref;
  var defass#i1#0: bool;
  var i1#0: ref
     where defass#i1#0
       ==> $Is(i1#0, Tclass._module.Object())
         && $IsAlloc(i1#0, Tclass._module.Object(), $Heap);
  var k##0: DatatypeType;
  var ks##0: Map;
  var defass#i2#0: bool;
  var i2#0: ref
     where defass#i2#0
       ==> $Is(i2#0, Tclass._module.Object())
         && $IsAlloc(i2#0, Tclass._module.Object(), $Heap);
  var k##1: DatatypeType;
  var ks##1: Map;
  var defass#m1#0: bool;
  var m1#0: ref
     where defass#m1#0
       ==> $Is(m1#0, Tclass._module.Object())
         && $IsAlloc(m1#0, Tclass._module.Object(), $Heap);
  var k##2: DatatypeType;
  var ks##2: Map;
  var nu##0: ref;
  var nu##1: ref;
  var nu##2: ref;
  var o##0: ref;
  var f##0: Seq;
  var t##0: ref;
  var r#0: DatatypeType
     where $Is(r#0, Tclass._module.Status())
       && $IsAlloc(r#0, Tclass._module.Status(), $Heap);
  var $rhs##0: DatatypeType;
  var o##1: ref;
  var n##0: Seq;
  var f##1: ref;
  var m##0: Seq;
  var ##x#0: bool;

    // AddMethodImpl: Main1, Impl$$_module.__default.Main1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1324,14)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1324,17)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id434"} $nw := Call$$_module.Memory.__ctor();
    // TrCallStmt: After ProcessCallStmt
    memory#0 := $nw;
    defass#memory#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1326,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1326,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    k##0 := Lit(#_module.Region.Isolate());
    assume true;
    // ProcessCallStmt: CheckSubrange
    ks##0 := Lit(Map#Build(Map#Empty(): Map, 
        $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(120))), $Box(char#FromInt(49))))), 
        $Box(Lit(#_module.Mode.Mut()))));
    call {:id "id436"} $nw := Call$$_module.Object.__ctor(k##0, ks##0);
    // TrCallStmt: After ProcessCallStmt
    i1#0 := $nw;
    defass#i1#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1327,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1327,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    k##1 := Lit(#_module.Region.Isolate());
    assume true;
    // ProcessCallStmt: CheckSubrange
    ks##1 := Lit(Map#Build(Map#Empty(): Map, 
        $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(120))), $Box(char#FromInt(50))))), 
        $Box(Lit(#_module.Mode.Mut()))));
    call {:id "id438"} $nw := Call$$_module.Object.__ctor(k##1, ks##1);
    // TrCallStmt: After ProcessCallStmt
    i2#0 := $nw;
    defass#i2#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1329,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1329,13)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id440"} defass#i1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    k##2 := #_module.Region.Heap(i1#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    ks##2 := Lit(Map#Empty(): Map);
    call {:id "id441"} $nw := Call$$_module.Object.__ctor(k##2, ks##2);
    // TrCallStmt: After ProcessCallStmt
    m1#0 := $nw;
    defass#m1#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1331,20)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id443"} defass#memory#0;
    assume true;
    assert {:id "id444"} memory#0 != null;
    assert {:id "id445"} defass#i1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    nu##0 := i1#0;
    assert {:id "id446"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && 
          $o == memory#0
           && $f == _module.Memory.objects
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id447"} Call$$_module.Memory.fAddObject(memory#0, nu##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1332,20)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id448"} defass#memory#0;
    assume true;
    assert {:id "id449"} memory#0 != null;
    assert {:id "id450"} defass#i2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    nu##1 := i2#0;
    assert {:id "id451"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && 
          $o == memory#0
           && $f == _module.Memory.objects
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id452"} Call$$_module.Memory.fAddObject(memory#0, nu##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1334,20)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id453"} defass#memory#0;
    assume true;
    assert {:id "id454"} memory#0 != null;
    assert {:id "id455"} defass#m1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    nu##2 := m1#0;
    assert {:id "id456"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && 
          $o == memory#0
           && $f == _module.Memory.objects
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id457"} Call$$_module.Memory.fAddObject(memory#0, nu##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1335,21)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id458"} defass#memory#0;
    assume true;
    assert {:id "id459"} memory#0 != null;
    assert {:id "id460"} defass#i1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##0 := i1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    f##0 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(120))), $Box(char#FromInt(49))));
    assert {:id "id461"} defass#m1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := m1#0;
    assert {:id "id462"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && 
          $o == o##0
           && $f == _module.Object.fields
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id463"} Call$$_module.Memory.fInitialise(memory#0, o##0, f##0, t##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1337,26)
    assume true;
    // TrCallStmt: Adding lhs with type Status
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id464"} defass#memory#0;
    assume true;
    assert {:id "id465"} memory#0 != null;
    assert {:id "id466"} defass#i1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##1 := i1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(120))), $Box(char#FromInt(49))));
    assert {:id "id467"} defass#i2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    f##1 := i2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##0 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(120))), $Box(char#FromInt(50))));
    assert {:id "id468"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (($o == o##1 && $f == _module.Object.fields)
             || ($o == f##1 && $f == _module.Object.fields))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id469"} $rhs##0 := Call$$_module.Memory.dynCopy(memory#0, o##1, n##0, f##1, m##0);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(1339,3)
    ##x#0 := _module.Status.Success_q(r#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TBool, $Heap);
    assume _module.__default.not#canCall(_module.Status.Success_q(r#0));
    assume _module.__default.not#canCall(_module.Status.Success_q(r#0));
    assert {:id "id471"} {:subsumption 0} _module.__default.not#canCall(_module.Status.Success_q(r#0))
       ==> _module.__default.not(_module.Status.Success_q(r#0))
         || !_module.Status.Success_q(r#0);
    assume {:id "id472"} _module.__default.not(_module.Status.Success_q(r#0));
}



procedure {:verboseName "reveal_RemoveKeys (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.reveal__RemoveKeys();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_RemoveKeys (call)"} {:verify false} Call$$_module.__default.reveal__RemoveKeys();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module._default.RemoveKeys;



procedure {:verboseName "reveal_RemoveKey (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.reveal__RemoveKey();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_RemoveKey (call)"} {:verify false} Call$$_module.__default.reveal__RemoveKey();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module._default.RemoveKey;



// Constructor function declaration
function #_module.Mode.Imm() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Mode.Imm()) == ##_module.Mode.Imm;
// Constructor $Is
axiom $Is(#_module.Mode.Imm(), Tclass._module.Mode());
// Constructor literal
axiom #_module.Mode.Imm() == Lit(#_module.Mode.Imm());
}

const unique ##_module.Mode.Imm: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Mode.Imm()) == ##_module.Mode.Imm;
}

function _module.Mode.Imm_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Mode.Imm_q(d) } 
  _module.Mode.Imm_q(d) <==> DatatypeCtorId(d) == ##_module.Mode.Imm);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Mode.Imm_q(d) } 
  _module.Mode.Imm_q(d) ==> d == #_module.Mode.Imm());

// Constructor function declaration
function #_module.Mode.Iso() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Mode.Iso()) == ##_module.Mode.Iso;
// Constructor $Is
axiom $Is(#_module.Mode.Iso(), Tclass._module.Mode());
// Constructor literal
axiom #_module.Mode.Iso() == Lit(#_module.Mode.Iso());
}

const unique ##_module.Mode.Iso: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Mode.Iso()) == ##_module.Mode.Iso;
}

function _module.Mode.Iso_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Mode.Iso_q(d) } 
  _module.Mode.Iso_q(d) <==> DatatypeCtorId(d) == ##_module.Mode.Iso);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Mode.Iso_q(d) } 
  _module.Mode.Iso_q(d) ==> d == #_module.Mode.Iso());

// Constructor function declaration
function #_module.Mode.Mut() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Mode.Mut()) == ##_module.Mode.Mut;
// Constructor $Is
axiom $Is(#_module.Mode.Mut(), Tclass._module.Mode());
// Constructor literal
axiom #_module.Mode.Mut() == Lit(#_module.Mode.Mut());
}

const unique ##_module.Mode.Mut: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Mode.Mut()) == ##_module.Mode.Mut;
}

function _module.Mode.Mut_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Mode.Mut_q(d) } 
  _module.Mode.Mut_q(d) <==> DatatypeCtorId(d) == ##_module.Mode.Mut);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Mode.Mut_q(d) } 
  _module.Mode.Mut_q(d) ==> d == #_module.Mode.Mut());

// Constructor function declaration
function #_module.Mode.Tmp() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Mode.Tmp()) == ##_module.Mode.Tmp;
// Constructor $Is
axiom $Is(#_module.Mode.Tmp(), Tclass._module.Mode());
// Constructor literal
axiom #_module.Mode.Tmp() == Lit(#_module.Mode.Tmp());
}

const unique ##_module.Mode.Tmp: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Mode.Tmp()) == ##_module.Mode.Tmp;
}

function _module.Mode.Tmp_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Mode.Tmp_q(d) } 
  _module.Mode.Tmp_q(d) <==> DatatypeCtorId(d) == ##_module.Mode.Tmp);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Mode.Tmp_q(d) } 
  _module.Mode.Tmp_q(d) ==> d == #_module.Mode.Tmp());

// Constructor function declaration
function #_module.Mode.Sus() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Mode.Sus()) == ##_module.Mode.Sus;
// Constructor $Is
axiom $Is(#_module.Mode.Sus(), Tclass._module.Mode());
// Constructor literal
axiom #_module.Mode.Sus() == Lit(#_module.Mode.Sus());
}

const unique ##_module.Mode.Sus: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Mode.Sus()) == ##_module.Mode.Sus;
}

function _module.Mode.Sus_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Mode.Sus_q(d) } 
  _module.Mode.Sus_q(d) <==> DatatypeCtorId(d) == ##_module.Mode.Sus);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Mode.Sus_q(d) } 
  _module.Mode.Sus_q(d) ==> d == #_module.Mode.Sus());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Mode(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Mode())
     ==> $IsAlloc(d, Tclass._module.Mode(), $h));

// Depth-one case-split function
function $IsA#_module.Mode(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Mode(d) } 
  $IsA#_module.Mode(d)
     ==> _module.Mode.Imm_q(d)
       || _module.Mode.Iso_q(d)
       || _module.Mode.Mut_q(d)
       || _module.Mode.Tmp_q(d)
       || _module.Mode.Sus_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Mode.Sus_q(d), $Is(d, Tclass._module.Mode()) } 
    { _module.Mode.Tmp_q(d), $Is(d, Tclass._module.Mode()) } 
    { _module.Mode.Mut_q(d), $Is(d, Tclass._module.Mode()) } 
    { _module.Mode.Iso_q(d), $Is(d, Tclass._module.Mode()) } 
    { _module.Mode.Imm_q(d), $Is(d, Tclass._module.Mode()) } 
  $Is(d, Tclass._module.Mode())
     ==> _module.Mode.Imm_q(d)
       || _module.Mode.Iso_q(d)
       || _module.Mode.Mut_q(d)
       || _module.Mode.Tmp_q(d)
       || _module.Mode.Sus_q(d));

// Datatype extensional equality declaration
function _module.Mode#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Mode.Imm
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Mode#Equal(a, b), _module.Mode.Imm_q(a) } 
    { _module.Mode#Equal(a, b), _module.Mode.Imm_q(b) } 
  _module.Mode.Imm_q(a) && _module.Mode.Imm_q(b) ==> _module.Mode#Equal(a, b));

// Datatype extensional equality definition: #_module.Mode.Iso
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Mode#Equal(a, b), _module.Mode.Iso_q(a) } 
    { _module.Mode#Equal(a, b), _module.Mode.Iso_q(b) } 
  _module.Mode.Iso_q(a) && _module.Mode.Iso_q(b) ==> _module.Mode#Equal(a, b));

// Datatype extensional equality definition: #_module.Mode.Mut
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Mode#Equal(a, b), _module.Mode.Mut_q(a) } 
    { _module.Mode#Equal(a, b), _module.Mode.Mut_q(b) } 
  _module.Mode.Mut_q(a) && _module.Mode.Mut_q(b) ==> _module.Mode#Equal(a, b));

// Datatype extensional equality definition: #_module.Mode.Tmp
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Mode#Equal(a, b), _module.Mode.Tmp_q(a) } 
    { _module.Mode#Equal(a, b), _module.Mode.Tmp_q(b) } 
  _module.Mode.Tmp_q(a) && _module.Mode.Tmp_q(b) ==> _module.Mode#Equal(a, b));

// Datatype extensional equality definition: #_module.Mode.Sus
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Mode#Equal(a, b), _module.Mode.Sus_q(a) } 
    { _module.Mode#Equal(a, b), _module.Mode.Sus_q(b) } 
  _module.Mode.Sus_q(a) && _module.Mode.Sus_q(b) ==> _module.Mode#Equal(a, b));

// Datatype extensionality axiom: _module.Mode
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Mode#Equal(a, b) } 
  _module.Mode#Equal(a, b) <==> a == b);

const unique class._module.Mode: ClassName;

// Constructor function declaration
function #_module.Region.Frozen() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Region.Frozen()) == ##_module.Region.Frozen;
// Constructor $Is
axiom $Is(#_module.Region.Frozen(), Tclass._module.Region());
// Constructor literal
axiom #_module.Region.Frozen() == Lit(#_module.Region.Frozen());
}

const unique ##_module.Region.Frozen: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Region.Frozen()) == ##_module.Region.Frozen;
}

function _module.Region.Frozen_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Region.Frozen_q(d) } 
  _module.Region.Frozen_q(d) <==> DatatypeCtorId(d) == ##_module.Region.Frozen);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Region.Frozen_q(d) } 
  _module.Region.Frozen_q(d) ==> d == #_module.Region.Frozen());

// Constructor $IsAlloc
axiom (forall $h: Heap :: 
  { $IsAlloc(#_module.Region.Frozen(), Tclass._module.Region(), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.Region.Frozen(), Tclass._module.Region(), $h));

// Constructor function declaration
function #_module.Region.Heap(ref) : DatatypeType;

const unique ##_module.Region.Heap: DtCtorId
uses {
// Constructor identifier
axiom (forall a#24#0#0: ref :: 
  { #_module.Region.Heap(a#24#0#0) } 
  DatatypeCtorId(#_module.Region.Heap(a#24#0#0)) == ##_module.Region.Heap);
}

function _module.Region.Heap_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Region.Heap_q(d) } 
  _module.Region.Heap_q(d) <==> DatatypeCtorId(d) == ##_module.Region.Heap);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Region.Heap_q(d) } 
  _module.Region.Heap_q(d)
     ==> (exists a#25#0#0: ref :: d == #_module.Region.Heap(a#25#0#0)));

// Constructor $Is
axiom (forall a#26#0#0: ref :: 
  { $Is(#_module.Region.Heap(a#26#0#0), Tclass._module.Region()) } 
  $Is(#_module.Region.Heap(a#26#0#0), Tclass._module.Region())
     <==> $Is(a#26#0#0, Tclass._module.Object()));

// Constructor $IsAlloc
axiom (forall a#26#0#0: ref, $h: Heap :: 
  { $IsAlloc(#_module.Region.Heap(a#26#0#0), Tclass._module.Region(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Region.Heap(a#26#0#0), Tclass._module.Region(), $h)
       <==> $IsAlloc(a#26#0#0, Tclass._module.Object(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Region.region(d), Tclass._module.Object(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Region.Heap_q(d)
       && $IsAlloc(d, Tclass._module.Region(), $h)
     ==> $IsAlloc(_module.Region.region(d), Tclass._module.Object(), $h));

// Constructor literal
axiom (forall a#27#0#0: ref :: 
  { #_module.Region.Heap(Lit(a#27#0#0)) } 
  #_module.Region.Heap(Lit(a#27#0#0)) == Lit(#_module.Region.Heap(a#27#0#0)));

function _module.Region.region(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#28#0#0: ref :: 
  { #_module.Region.Heap(a#28#0#0) } 
  _module.Region.region(#_module.Region.Heap(a#28#0#0)) == a#28#0#0);

// Constructor function declaration
function #_module.Region.Stack(ref) : DatatypeType;

const unique ##_module.Region.Stack: DtCtorId
uses {
// Constructor identifier
axiom (forall a#29#0#0: ref :: 
  { #_module.Region.Stack(a#29#0#0) } 
  DatatypeCtorId(#_module.Region.Stack(a#29#0#0)) == ##_module.Region.Stack);
}

function _module.Region.Stack_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Region.Stack_q(d) } 
  _module.Region.Stack_q(d) <==> DatatypeCtorId(d) == ##_module.Region.Stack);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Region.Stack_q(d) } 
  _module.Region.Stack_q(d)
     ==> (exists a#30#0#0: ref :: d == #_module.Region.Stack(a#30#0#0)));

// Constructor $Is
axiom (forall a#31#0#0: ref :: 
  { $Is(#_module.Region.Stack(a#31#0#0), Tclass._module.Region()) } 
  $Is(#_module.Region.Stack(a#31#0#0), Tclass._module.Region())
     <==> $Is(a#31#0#0, Tclass._module.Object()));

// Constructor $IsAlloc
axiom (forall a#31#0#0: ref, $h: Heap :: 
  { $IsAlloc(#_module.Region.Stack(a#31#0#0), Tclass._module.Region(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Region.Stack(a#31#0#0), Tclass._module.Region(), $h)
       <==> $IsAlloc(a#31#0#0, Tclass._module.Object(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Region.region(d), Tclass._module.Object(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Region.Stack_q(d)
       && $IsAlloc(d, Tclass._module.Region(), $h)
     ==> $IsAlloc(_module.Region.region(d), Tclass._module.Object(), $h));

// Constructor literal
axiom (forall a#32#0#0: ref :: 
  { #_module.Region.Stack(Lit(a#32#0#0)) } 
  #_module.Region.Stack(Lit(a#32#0#0)) == Lit(#_module.Region.Stack(a#32#0#0)));

// Constructor injectivity
axiom (forall a#33#0#0: ref :: 
  { #_module.Region.Stack(a#33#0#0) } 
  _module.Region.region(#_module.Region.Stack(a#33#0#0)) == a#33#0#0);

// Constructor function declaration
function #_module.Region.Frame(ref) : DatatypeType;

const unique ##_module.Region.Frame: DtCtorId
uses {
// Constructor identifier
axiom (forall a#34#0#0: ref :: 
  { #_module.Region.Frame(a#34#0#0) } 
  DatatypeCtorId(#_module.Region.Frame(a#34#0#0)) == ##_module.Region.Frame);
}

function _module.Region.Frame_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Region.Frame_q(d) } 
  _module.Region.Frame_q(d) <==> DatatypeCtorId(d) == ##_module.Region.Frame);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Region.Frame_q(d) } 
  _module.Region.Frame_q(d)
     ==> (exists a#35#0#0: ref :: d == #_module.Region.Frame(a#35#0#0)));

// Constructor $Is
axiom (forall a#36#0#0: ref :: 
  { $Is(#_module.Region.Frame(a#36#0#0), Tclass._module.Region()) } 
  $Is(#_module.Region.Frame(a#36#0#0), Tclass._module.Region())
     <==> $Is(a#36#0#0, Tclass._module.Object()));

// Constructor $IsAlloc
axiom (forall a#36#0#0: ref, $h: Heap :: 
  { $IsAlloc(#_module.Region.Frame(a#36#0#0), Tclass._module.Region(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Region.Frame(a#36#0#0), Tclass._module.Region(), $h)
       <==> $IsAlloc(a#36#0#0, Tclass._module.Object(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Region.prev(d), Tclass._module.Object(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Region.Frame_q(d)
       && $IsAlloc(d, Tclass._module.Region(), $h)
     ==> $IsAlloc(_module.Region.prev(d), Tclass._module.Object(), $h));

// Constructor literal
axiom (forall a#37#0#0: ref :: 
  { #_module.Region.Frame(Lit(a#37#0#0)) } 
  #_module.Region.Frame(Lit(a#37#0#0)) == Lit(#_module.Region.Frame(a#37#0#0)));

function _module.Region.prev(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#38#0#0: ref :: 
  { #_module.Region.Frame(a#38#0#0) } 
  _module.Region.prev(#_module.Region.Frame(a#38#0#0)) == a#38#0#0);

// Constructor function declaration
function #_module.Region.Isolate() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Region.Isolate()) == ##_module.Region.Isolate;
// Constructor $Is
axiom $Is(#_module.Region.Isolate(), Tclass._module.Region());
// Constructor literal
axiom #_module.Region.Isolate() == Lit(#_module.Region.Isolate());
}

const unique ##_module.Region.Isolate: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Region.Isolate()) == ##_module.Region.Isolate;
}

function _module.Region.Isolate_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Region.Isolate_q(d) } 
  _module.Region.Isolate_q(d) <==> DatatypeCtorId(d) == ##_module.Region.Isolate);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Region.Isolate_q(d) } 
  _module.Region.Isolate_q(d) ==> d == #_module.Region.Isolate());

// Constructor $IsAlloc
axiom (forall $h: Heap :: 
  { $IsAlloc(#_module.Region.Isolate(), Tclass._module.Region(), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.Region.Isolate(), Tclass._module.Region(), $h));

// Depth-one case-split function
function $IsA#_module.Region(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Region(d) } 
  $IsA#_module.Region(d)
     ==> _module.Region.Frozen_q(d)
       || _module.Region.Heap_q(d)
       || _module.Region.Stack_q(d)
       || _module.Region.Frame_q(d)
       || _module.Region.Isolate_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Region.Isolate_q(d), $Is(d, Tclass._module.Region()) } 
    { _module.Region.Frame_q(d), $Is(d, Tclass._module.Region()) } 
    { _module.Region.Stack_q(d), $Is(d, Tclass._module.Region()) } 
    { _module.Region.Heap_q(d), $Is(d, Tclass._module.Region()) } 
    { _module.Region.Frozen_q(d), $Is(d, Tclass._module.Region()) } 
  $Is(d, Tclass._module.Region())
     ==> _module.Region.Frozen_q(d)
       || _module.Region.Heap_q(d)
       || _module.Region.Stack_q(d)
       || _module.Region.Frame_q(d)
       || _module.Region.Isolate_q(d));

// Datatype extensional equality declaration
function _module.Region#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Region.Frozen
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Region#Equal(a, b), _module.Region.Frozen_q(a) } 
    { _module.Region#Equal(a, b), _module.Region.Frozen_q(b) } 
  _module.Region.Frozen_q(a) && _module.Region.Frozen_q(b)
     ==> _module.Region#Equal(a, b));

// Datatype extensional equality definition: #_module.Region.Heap
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Region#Equal(a, b), _module.Region.Heap_q(a) } 
    { _module.Region#Equal(a, b), _module.Region.Heap_q(b) } 
  _module.Region.Heap_q(a) && _module.Region.Heap_q(b)
     ==> (_module.Region#Equal(a, b)
       <==> _module.Region.region(a) == _module.Region.region(b)));

// Datatype extensional equality definition: #_module.Region.Stack
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Region#Equal(a, b), _module.Region.Stack_q(a) } 
    { _module.Region#Equal(a, b), _module.Region.Stack_q(b) } 
  _module.Region.Stack_q(a) && _module.Region.Stack_q(b)
     ==> (_module.Region#Equal(a, b)
       <==> _module.Region.region(a) == _module.Region.region(b)));

// Datatype extensional equality definition: #_module.Region.Frame
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Region#Equal(a, b), _module.Region.Frame_q(a) } 
    { _module.Region#Equal(a, b), _module.Region.Frame_q(b) } 
  _module.Region.Frame_q(a) && _module.Region.Frame_q(b)
     ==> (_module.Region#Equal(a, b)
       <==> _module.Region.prev(a) == _module.Region.prev(b)));

// Datatype extensional equality definition: #_module.Region.Isolate
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Region#Equal(a, b), _module.Region.Isolate_q(a) } 
    { _module.Region#Equal(a, b), _module.Region.Isolate_q(b) } 
  _module.Region.Isolate_q(a) && _module.Region.Isolate_q(b)
     ==> _module.Region#Equal(a, b));

// Datatype extensionality axiom: _module.Region
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Region#Equal(a, b) } 
  _module.Region#Equal(a, b) <==> a == b);

const unique class._module.Region: ClassName;

const unique class._module.Object?: ClassName;

// $Is axiom for class Object
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Object?()) } 
  $Is($o, Tclass._module.Object?())
     <==> $o == null || dtype($o) == Tclass._module.Object?());

// $IsAlloc axiom for class Object
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Object?(), $h) } 
  $IsAlloc($o, Tclass._module.Object?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Object.fields: Field
uses {
axiom FDim(_module.Object.fields) == 0
   && FieldOfDecl(class._module.Object?, field$fields) == _module.Object.fields
   && !$IsGhostField(_module.Object.fields);
}

// Object.fields: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Object.fields)): Map } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Object?()
     ==> $Is($Unbox(read($h, $o, _module.Object.fields)): Map, 
      TMap(TSeq(TChar), Tclass._module.Object())));

// Object.fields: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Object.fields)): Map } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Object?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Object.fields)): Map, 
      TMap(TSeq(TChar), Tclass._module.Object()), 
      $h));

procedure {:verboseName "Object._ctor (well-formedness)"} CheckWellFormed$$_module.Object.__ctor(k#0: DatatypeType
       where $Is(k#0, Tclass._module.Region())
         && $IsAlloc(k#0, Tclass._module.Region(), $Heap)
         && $IsA#_module.Region(k#0), 
    ks#0: Map
       where $Is(ks#0, TMap(TSeq(TChar), Tclass._module.Mode()))
         && $IsAlloc(ks#0, TMap(TSeq(TChar), Tclass._module.Mode()), $Heap))
   returns (this: ref);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Object._ctor (call)"} Call$$_module.Object.__ctor(k#0: DatatypeType
       where $Is(k#0, Tclass._module.Region())
         && $IsAlloc(k#0, Tclass._module.Region(), $Heap)
         && $IsA#_module.Region(k#0), 
    ks#0: Map
       where $Is(ks#0, TMap(TSeq(TChar), Tclass._module.Mode()))
         && $IsAlloc(ks#0, TMap(TSeq(TChar), Tclass._module.Mode()), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Region(_module.Object.region(this)) && $IsA#_module.Region(k#0);
  ensures {:id "id477"} _module.Region#Equal(_module.Object.region(this), k#0);
  free ensures true;
  ensures {:id "id478"} Map#Equal(_module.Object.fieldModes(this), ks#0);
  free ensures true;
  ensures {:id "id479"} Map#Equal($Unbox(read($Heap, this, _module.Object.fields)): Map, Map#Empty(): Map);
  free ensures _module.Object.Valid#canCall($Heap, this);
  ensures {:id "id480"} _module.Object.Valid(reveal__module.Object.Valid, $Heap, this);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Object._ctor (correctness)"} Impl$$_module.Object.__ctor(k#0: DatatypeType
       where $Is(k#0, Tclass._module.Region())
         && $IsAlloc(k#0, Tclass._module.Region(), $Heap)
         && $IsA#_module.Region(k#0), 
    ks#0: Map
       where $Is(ks#0, TMap(TSeq(TChar), Tclass._module.Mode()))
         && $IsAlloc(ks#0, TMap(TSeq(TChar), Tclass._module.Mode()), $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Region(_module.Object.region(this)) && $IsA#_module.Region(k#0);
  ensures {:id "id481"} _module.Region#Equal(_module.Object.region(this), k#0);
  free ensures true;
  ensures {:id "id482"} Map#Equal(_module.Object.fieldModes(this), ks#0);
  free ensures true;
  ensures {:id "id483"} Map#Equal($Unbox(read($Heap, this, _module.Object.fields)): Map, Map#Empty(): Map);
  free ensures _module.Object.Valid#canCall($Heap, this);
  ensures {:id "id484"} _module.Object.Valid(reveal__module.Object.Valid, $Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Object._ctor (correctness)"} Impl$$_module.Object.__ctor(k#0: DatatypeType, ks#0: Map) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.region: DatatypeType;
  var this.fields: Map;
  var this.fieldModes: Map;

    // AddMethodImpl: _ctor, Impl$$_module.Object.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(98,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(98,12)
    assume true;
    assume true;
    this.region := k#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(99,16)
    assume true;
    assume true;
    this.fieldModes := ks#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(100,12)
    assume true;
    assume true;
    this.fields := Lit(Map#Empty(): Map);
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(98,3)
    assume this != null && $Is(this, Tclass._module.Object?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume _module.Object.region(this) == this.region;
    assume $Unbox(read($Heap, this, _module.Object.fields)): Map == this.fields;
    assume _module.Object.fieldModes(this) == this.fieldModes;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(98,3)
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(102,5)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(102,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id488"} Call$$_module.Object.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for _module.Object.outgoing
function _module.Object.outgoing($heap: Heap, this: ref) : Set
uses {
// consequence axiom for _module.Object.outgoing
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Object.outgoing($Heap, this) } 
    _module.Object.outgoing#canCall($Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Object())
           && $IsAlloc(this, Tclass._module.Object(), $Heap))
       ==> $Is(_module.Object.outgoing($Heap, this), TSet(Tclass._module.Object())));
// alloc consequence axiom for _module.Object.outgoing
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { $IsAlloc(_module.Object.outgoing($Heap, this), TSet(Tclass._module.Object()), $Heap) } 
    _module.Object.outgoing#canCall($Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && this != null
           && $IsAlloc(this, Tclass._module.Object(), $Heap))
       ==> $IsAlloc(_module.Object.outgoing($Heap, this), TSet(Tclass._module.Object()), $Heap));
// definition axiom for _module.Object.outgoing (revealed)
axiom {:id "id489"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Object.outgoing($Heap, this), $IsGoodHeap($Heap) } 
    _module.Object.outgoing#canCall($Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Object())
           && $IsAlloc(this, Tclass._module.Object(), $Heap))
       ==> _module.Object.outgoing($Heap, this)
         == Map#Values($Unbox(read($Heap, this, _module.Object.fields)): Map));
}

function _module.Object.outgoing#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Object.outgoing
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Object.outgoing($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Object())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this && $f == _module.Object.fields
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Object.outgoing($h0, this) == _module.Object.outgoing($h1, this));

function _module.Object.outgoing#requires(Heap, ref) : bool;

// #requires axiom for _module.Object.outgoing
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Object.outgoing#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $Heap)
     ==> _module.Object.outgoing#requires($Heap, this) == true);

procedure {:verboseName "Object.outgoing (well-formedness)"} CheckWellformed$$_module.Object.outgoing(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Object.outgoing (well-formedness)"} CheckWellformed$$_module.Object.outgoing(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this && $f == _module.Object.fields);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    assert {:id "id490"} this != null;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Object.outgoing($Heap, this), TSet(Tclass._module.Object()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#0 := $_ReadsFrame[this, _module.Object.fields];
        assume {:id "id491"} _module.Object.outgoing($Heap, this)
           == Map#Values($Unbox(read($Heap, this, _module.Object.fields)): Map);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Object.outgoing($Heap, this), TSet(Tclass._module.Object()));
        assert {:id "id492"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.Object.fieldNames
function _module.Object.fieldNames(this: ref) : Set
uses {
// consequence axiom for _module.Object.fieldNames
axiom 3 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    { _module.Object.fieldNames(this) } 
    _module.Object.fieldNames#canCall(this)
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Object()))
       ==> $Is(_module.Object.fieldNames(this), TSet(TSeq(TChar))));
// definition axiom for _module.Object.fieldNames (revealed)
axiom {:id "id493"} 3 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    { _module.Object.fieldNames(this) } 
    _module.Object.fieldNames#canCall(this)
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Object()))
       ==> _module.Object.fieldNames(this) == Map#Domain(_module.Object.fieldModes(this)));
// definition axiom for _module.Object.fieldNames for all literals (revealed)
axiom {:id "id494"} 3 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    {:weight 3} { _module.Object.fieldNames(Lit(this)) } 
    _module.Object.fieldNames#canCall(Lit(this))
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Object()))
       ==> _module.Object.fieldNames(Lit(this))
         == Map#Domain(_module.Object.fieldModes(Lit(this))));
}

function _module.Object.fieldNames#canCall(this: ref) : bool;

function _module.Object.fieldNames#requires(ref) : bool;

// #requires axiom for _module.Object.fieldNames
axiom (forall this: ref :: 
  { _module.Object.fieldNames#requires(this) } 
  this != null && $Is(this, Tclass._module.Object())
     ==> _module.Object.fieldNames#requires(this) == true);

procedure {:verboseName "Object.fieldNames (well-formedness)"} CheckWellformed$$_module.Object.fieldNames(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Object.size
function _module.Object.size($heap: Heap, this: ref) : int
uses {
// consequence axiom for _module.Object.size
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Object.size($Heap, this) } 
    _module.Object.size#canCall($Heap, this)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Object())
           && $IsAlloc(this, Tclass._module.Object(), $Heap))
       ==> LitInt(0) <= _module.Object.size($Heap, this));
// definition axiom for _module.Object.size (revealed)
axiom {:id "id496"} 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Object.size($Heap, this), $IsGoodHeap($Heap) } 
    _module.Object.size#canCall($Heap, this)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Object())
           && $IsAlloc(this, Tclass._module.Object(), $Heap))
       ==> _module.Object.outgoing#canCall($Heap, this)
         && _module.Object.size($Heap, this)
           == Set#Card(_module.Object.outgoing($Heap, this)));
}

function _module.Object.size#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Object.size
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Object.size($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Object())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this && $f == _module.Object.fields
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Object.size($h0, this) == _module.Object.size($h1, this));

function _module.Object.size#requires(Heap, ref) : bool;

// #requires axiom for _module.Object.size
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Object.size#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $Heap)
     ==> _module.Object.size#requires($Heap, this) == true);

procedure {:verboseName "Object.size (well-formedness)"} CheckWellformed$$_module.Object.size(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Object.size (well-formedness)"} CheckWellformed$$_module.Object.size(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this && $f == _module.Object.fields);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    assert {:id "id497"} this != null;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.Object.size($Heap, this);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && 
              $o == this
               && $f == _module.Object.fields
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Object.outgoing#canCall($Heap, this);
        assert {:id "id498"} $Is(Set#Card(_module.Object.outgoing($Heap, this)), Tclass._System.nat());
        assume {:id "id499"} _module.Object.size($Heap, this)
           == Set#Card(_module.Object.outgoing($Heap, this));
        assume _module.Object.outgoing#canCall($Heap, this);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Object.size($Heap, this), Tclass._System.nat());
        assert {:id "id500"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.Object.Valid
function _module.Object.Valid($reveal: bool, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Object.Valid (revealed)
axiom {:id "id501"} 5 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Object.Valid(true, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Object.Valid#canCall($Heap, this)
         || (5 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Object())
           && $IsAlloc(this, Tclass._module.Object(), $Heap))
       ==> _module.Object.AllFieldsAreDeclared#canCall($Heap, this)
         && (_module.Object.AllFieldsAreDeclared($Heap, this)
           ==> _module.Object.AllFieldsContentsConsistentWithTheirDeclaration#canCall($Heap, this)
             && (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration($Heap, this)
               ==> _module.Object.AllOutgoingReferencesAreVenice#canCall($Heap, this)))
         && _module.Object.Valid(true, $Heap, this)
           == (
            _module.Object.AllFieldsAreDeclared($Heap, this)
             && _module.Object.AllFieldsContentsConsistentWithTheirDeclaration($Heap, this)
             && _module.Object.AllOutgoingReferencesAreVenice($Heap, this)));
}

function _module.Object.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Object.Valid
axiom (forall $reveal: bool, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Object.Valid($reveal, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Object())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this && $f == _module.Object.fields
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Object.Valid($reveal, $h0, this)
       == _module.Object.Valid($reveal, $h1, this));

function _module.Object.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.Object.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Object.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $Heap)
     ==> _module.Object.Valid#requires($Heap, this) == true);

procedure {:verboseName "Object.Valid (well-formedness)"} CheckWellformed$$_module.Object.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Object.Valid (well-formedness)"} CheckWellformed$$_module.Object.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this && $f == _module.Object.fields);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    assert {:id "id502"} this != null;
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
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && 
              $o == this
               && $f == _module.Object.fields
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Object.AllFieldsAreDeclared#canCall($Heap, this);
        if (_module.Object.AllFieldsAreDeclared($Heap, this))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
            assert {:id "id503"} {:subsumption 0} _module.Object.AllFieldsAreDeclared#canCall($Heap, this)
               ==> _module.Object.AllFieldsAreDeclared($Heap, this)
                 || Set#Subset(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), 
                  Map#Domain(_module.Object.fieldModes(this)));
            assume _module.Object.AllFieldsAreDeclared($Heap, this);
            b$reqreads#1 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && 
                  $o == this
                   && $f == _module.Object.fields
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Object.AllFieldsContentsConsistentWithTheirDeclaration#canCall($Heap, this);
        }

        if (_module.Object.AllFieldsAreDeclared($Heap, this)
           && _module.Object.AllFieldsContentsConsistentWithTheirDeclaration($Heap, this))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
            b$reqreads#2 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && 
                  $o == this
                   && $f == _module.Object.fields
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Object.AllOutgoingReferencesAreVenice#canCall($Heap, this);
        }

        assume {:id "id504"} _module.Object.Valid(reveal__module.Object.Valid, $Heap, this)
           == (
            _module.Object.AllFieldsAreDeclared($Heap, this)
             && _module.Object.AllFieldsContentsConsistentWithTheirDeclaration($Heap, this)
             && _module.Object.AllOutgoingReferencesAreVenice($Heap, this));
        assume _module.Object.AllFieldsAreDeclared#canCall($Heap, this)
           && (_module.Object.AllFieldsAreDeclared($Heap, this)
             ==> _module.Object.AllFieldsContentsConsistentWithTheirDeclaration#canCall($Heap, this)
               && (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration($Heap, this)
                 ==> _module.Object.AllOutgoingReferencesAreVenice#canCall($Heap, this)));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Object.Valid(reveal__module.Object.Valid, $Heap, this), TBool);
        assert {:id "id505"} b$reqreads#0;
        assert {:id "id506"} b$reqreads#1;
        assert {:id "id507"} b$reqreads#2;
        return;

        assume false;
    }
}



// function declaration for _module.Object.AllFieldsAreDeclared
function _module.Object.AllFieldsAreDeclared($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Object.AllFieldsAreDeclared (revealed)
axiom {:id "id508"} 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Object.AllFieldsAreDeclared($Heap, this), $IsGoodHeap($Heap) } 
    _module.Object.AllFieldsAreDeclared#canCall($Heap, this)
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Object())
           && $IsAlloc(this, Tclass._module.Object(), $Heap))
       ==> _module.Object.AllFieldsAreDeclared($Heap, this)
         == Set#Subset(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), 
          Map#Domain(_module.Object.fieldModes(this))));
}

function _module.Object.AllFieldsAreDeclared#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Object.AllFieldsAreDeclared
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Object.AllFieldsAreDeclared($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Object())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this && $f == _module.Object.fields
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Object.AllFieldsAreDeclared($h0, this)
       == _module.Object.AllFieldsAreDeclared($h1, this));

function _module.Object.AllFieldsAreDeclared#requires(Heap, ref) : bool;

// #requires axiom for _module.Object.AllFieldsAreDeclared
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Object.AllFieldsAreDeclared#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $Heap)
     ==> _module.Object.AllFieldsAreDeclared#requires($Heap, this) == true);

procedure {:verboseName "Object.AllFieldsAreDeclared (well-formedness)"} CheckWellformed$$_module.Object.AllFieldsAreDeclared(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Object.AllFieldsAreDeclared (well-formedness)"} CheckWellformed$$_module.Object.AllFieldsAreDeclared(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this && $f == _module.Object.fields);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    assert {:id "id509"} this != null;
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
        b$reqreads#0 := $_ReadsFrame[this, _module.Object.fields];
        assume {:id "id510"} _module.Object.AllFieldsAreDeclared($Heap, this)
           == Set#Subset(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), 
            Map#Domain(_module.Object.fieldModes(this)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Object.AllFieldsAreDeclared($Heap, this), TBool);
        assert {:id "id511"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.Object.AllFieldsContentsConsistentWithTheirDeclaration
function _module.Object.AllFieldsContentsConsistentWithTheirDeclaration($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Object.AllFieldsContentsConsistentWithTheirDeclaration (revealed)
axiom {:id "id512"} 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Object.AllFieldsContentsConsistentWithTheirDeclaration($Heap, this), $IsGoodHeap($Heap) } 
    _module.Object.AllFieldsContentsConsistentWithTheirDeclaration#canCall($Heap, this)
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Object())
           && $IsAlloc(this, Tclass._module.Object(), $Heap)
           && _module.Object.AllFieldsAreDeclared($Heap, this))
       ==> (forall n#0: Seq :: 
          { $Unbox(Map#Elements(_module.Object.fieldModes(this))[$Box(n#0)]): DatatypeType } 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#0)]): ref } 
            { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#0)) } 
          $Is(n#0, TSeq(TChar))
             ==> 
            Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#0))
             ==> _module.__default.AssignmentCompatible#canCall($Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#0)]): ref, 
              $Unbox(Map#Elements(_module.Object.fieldModes(this))[$Box(n#0)]): DatatypeType))
         && _module.Object.AllFieldsContentsConsistentWithTheirDeclaration($Heap, this)
           == (forall n#0: Seq :: 
            { $Unbox(Map#Elements(_module.Object.fieldModes(this))[$Box(n#0)]): DatatypeType } 
              { $Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#0)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#0)) } 
            $Is(n#0, TSeq(TChar))
                 && Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#0))
               ==> _module.__default.AssignmentCompatible($Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#0)]): ref, 
                $Unbox(Map#Elements(_module.Object.fieldModes(this))[$Box(n#0)]): DatatypeType)));
}

function _module.Object.AllFieldsContentsConsistentWithTheirDeclaration#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Object.AllFieldsContentsConsistentWithTheirDeclaration
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Object.AllFieldsContentsConsistentWithTheirDeclaration($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Object())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this && $f == _module.Object.fields
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Object.AllFieldsContentsConsistentWithTheirDeclaration($h0, this)
       == _module.Object.AllFieldsContentsConsistentWithTheirDeclaration($h1, this));

function _module.Object.AllFieldsContentsConsistentWithTheirDeclaration#requires(Heap, ref) : bool;

// #requires axiom for _module.Object.AllFieldsContentsConsistentWithTheirDeclaration
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Object.AllFieldsContentsConsistentWithTheirDeclaration#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $Heap)
     ==> _module.Object.AllFieldsContentsConsistentWithTheirDeclaration#requires($Heap, this)
       == _module.Object.AllFieldsAreDeclared($Heap, this));

procedure {:verboseName "Object.AllFieldsContentsConsistentWithTheirDeclaration (well-formedness)"} CheckWellformed$$_module.Object.AllFieldsContentsConsistentWithTheirDeclaration(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Object.AllFieldsContentsConsistentWithTheirDeclaration (well-formedness)"} CheckWellformed$$_module.Object.AllFieldsContentsConsistentWithTheirDeclaration(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var n#1: Seq;
  var ##o#0: ref;
  var ##t#0: DatatypeType;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this && $f == _module.Object.fields);
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Object?(), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && 
          $o == this
           && $f == _module.Object.fields
         ==> $_ReadsFrame[$o, $f]);
    assume _module.Object.AllFieldsAreDeclared#canCall($Heap, this);
    assume {:id "id513"} _module.Object.AllFieldsAreDeclared($Heap, this);
    assert {:id "id514"} b$reqreads#0;
    // Check well-formedness of the reads clause
    assert {:id "id515"} this != null;
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
        havoc n#1;
        if ($Is(n#1, TSeq(TChar)) && $IsAlloc(n#1, TSeq(TChar), $Heap))
        {
            b$reqreads#1 := $_ReadsFrame[this, _module.Object.fields];
            if (Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#1)))
            {
                b$reqreads#2 := $_ReadsFrame[this, _module.Object.fields];
                assert {:id "id516"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#1));
                ##o#0 := $Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#1)]): ref;
                // assume allocatedness for argument to function
                assume $IsAlloc(##o#0, Tclass._module.Object(), $Heap);
                assert {:id "id517"} Set#IsMember(Map#Domain(_module.Object.fieldModes(this)), $Box(n#1));
                ##t#0 := $Unbox(Map#Elements(_module.Object.fieldModes(this))[$Box(n#1)]): DatatypeType;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0, Tclass._module.Mode(), $Heap);
                assume _module.__default.AssignmentCompatible#canCall($Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#1)]): ref, 
                  $Unbox(Map#Elements(_module.Object.fieldModes(this))[$Box(n#1)]): DatatypeType);
            }
        }

        // End Comprehension WF check
        assume {:id "id518"} _module.Object.AllFieldsContentsConsistentWithTheirDeclaration($Heap, this)
           == (forall n#2: Seq :: 
            { $Unbox(Map#Elements(_module.Object.fieldModes(this))[$Box(n#2)]): DatatypeType } 
              { $Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#2)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#2)) } 
            $Is(n#2, TSeq(TChar))
                 && Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#2))
               ==> _module.__default.AssignmentCompatible($Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#2)]): ref, 
                $Unbox(Map#Elements(_module.Object.fieldModes(this))[$Box(n#2)]): DatatypeType));
        assume (forall n#2: Seq :: 
          { $Unbox(Map#Elements(_module.Object.fieldModes(this))[$Box(n#2)]): DatatypeType } 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#2)]): ref } 
            { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#2)) } 
          $Is(n#2, TSeq(TChar))
             ==> 
            Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#2))
             ==> _module.__default.AssignmentCompatible#canCall($Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#2)]): ref, 
              $Unbox(Map#Elements(_module.Object.fieldModes(this))[$Box(n#2)]): DatatypeType));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Object.AllFieldsContentsConsistentWithTheirDeclaration($Heap, this), 
          TBool);
        assert {:id "id519"} b$reqreads#1;
        assert {:id "id520"} b$reqreads#2;
        return;

        assume false;
    }
}



// function declaration for _module.Object.AllOutgoingReferencesAreVenice
function _module.Object.AllOutgoingReferencesAreVenice($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Object.AllOutgoingReferencesAreVenice (revealed)
axiom {:id "id521"} 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Object.AllOutgoingReferencesAreVenice($Heap, this), $IsGoodHeap($Heap) } 
    _module.Object.AllOutgoingReferencesAreVenice#canCall($Heap, this)
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Object())
           && $IsAlloc(this, Tclass._module.Object(), $Heap))
       ==> (forall n#0: Seq :: 
          { $Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#0)]): ref } 
            { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#0)) } 
          $Is(n#0, TSeq(TChar))
             ==> 
            Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#0))
             ==> _module.__default.VeniceReferenceOK#canCall(this, 
              $Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#0)]): ref))
         && _module.Object.AllOutgoingReferencesAreVenice($Heap, this)
           == (forall n#0: Seq :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#0)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#0)) } 
            $Is(n#0, TSeq(TChar))
                 && Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#0))
               ==> _module.__default.VeniceReferenceOK(this, 
                $Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#0)]): ref)));
}

function _module.Object.AllOutgoingReferencesAreVenice#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Object.AllOutgoingReferencesAreVenice
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Object.AllOutgoingReferencesAreVenice($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Object())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this && $f == _module.Object.fields
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Object.AllOutgoingReferencesAreVenice($h0, this)
       == _module.Object.AllOutgoingReferencesAreVenice($h1, this));

function _module.Object.AllOutgoingReferencesAreVenice#requires(Heap, ref) : bool;

// #requires axiom for _module.Object.AllOutgoingReferencesAreVenice
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Object.AllOutgoingReferencesAreVenice#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Object())
       && $IsAlloc(this, Tclass._module.Object(), $Heap)
     ==> _module.Object.AllOutgoingReferencesAreVenice#requires($Heap, this) == true);

procedure {:verboseName "Object.AllOutgoingReferencesAreVenice (well-formedness)"} CheckWellformed$$_module.Object.AllOutgoingReferencesAreVenice(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Object())
         && $IsAlloc(this, Tclass._module.Object(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Object.AllOutgoingReferencesAreVenice (well-formedness)"} CheckWellformed$$_module.Object.AllOutgoingReferencesAreVenice(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var n#1: Seq;
  var ##f#0: ref;
  var ##t#0: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this && $f == _module.Object.fields);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    assert {:id "id522"} this != null;
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
        havoc n#1;
        if ($Is(n#1, TSeq(TChar)) && $IsAlloc(n#1, TSeq(TChar), $Heap))
        {
            b$reqreads#0 := $_ReadsFrame[this, _module.Object.fields];
            if (Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#1)))
            {
                ##f#0 := this;
                // assume allocatedness for argument to function
                assume $IsAlloc(##f#0, Tclass._module.Object(), $Heap);
                b$reqreads#1 := $_ReadsFrame[this, _module.Object.fields];
                assert {:id "id523"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#1));
                ##t#0 := $Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#1)]): ref;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0, Tclass._module.Object(), $Heap);
                assume _module.__default.VeniceReferenceOK#canCall(this, 
                  $Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#1)]): ref);
            }
        }

        // End Comprehension WF check
        assume {:id "id524"} _module.Object.AllOutgoingReferencesAreVenice($Heap, this)
           == (forall n#2: Seq :: 
            { $Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#2)]): ref } 
              { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#2)) } 
            $Is(n#2, TSeq(TChar))
                 && Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#2))
               ==> _module.__default.VeniceReferenceOK(this, 
                $Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#2)]): ref));
        assume (forall n#2: Seq :: 
          { $Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#2)]): ref } 
            { Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#2)) } 
          $Is(n#2, TSeq(TChar))
             ==> 
            Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.Object.fields)): Map), $Box(n#2))
             ==> _module.__default.VeniceReferenceOK#canCall(this, 
              $Unbox(Map#Elements($Unbox(read($Heap, this, _module.Object.fields)): Map)[$Box(n#2)]): ref));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Object.AllOutgoingReferencesAreVenice($Heap, this), TBool);
        assert {:id "id525"} b$reqreads#0;
        assert {:id "id526"} b$reqreads#1;
        return;

        assume false;
    }
}



procedure {:verboseName "Object.reveal_Valid (well-formedness)"} {:verify false} CheckWellFormed$$_module.Object.reveal__Valid();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Object.reveal_Valid (call)"} {:verify false} Call$$_module.Object.reveal__Valid();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module.Object.Valid;



// $Is axiom for non-null type _module.Object
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Object()) } { $Is(c#0, Tclass._module.Object?()) } 
  $Is(c#0, Tclass._module.Object())
     <==> $Is(c#0, Tclass._module.Object?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Object
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Object(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Object?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Object(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Object?(), $h));

// Constructor function declaration
function #_module.Edge.Edge(ref, Seq, ref) : DatatypeType;

const unique ##_module.Edge.Edge: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: ref, a#0#1#0: Seq, a#0#2#0: ref :: 
  { #_module.Edge.Edge(a#0#0#0, a#0#1#0, a#0#2#0) } 
  DatatypeCtorId(#_module.Edge.Edge(a#0#0#0, a#0#1#0, a#0#2#0))
     == ##_module.Edge.Edge);
}

function _module.Edge.Edge_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Edge.Edge_q(d) } 
  _module.Edge.Edge_q(d) <==> DatatypeCtorId(d) == ##_module.Edge.Edge);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Edge.Edge_q(d) } 
  _module.Edge.Edge_q(d)
     ==> (exists a#1#0#0: ref, a#1#1#0: Seq, a#1#2#0: ref :: 
      d == #_module.Edge.Edge(a#1#0#0, a#1#1#0, a#1#2#0)));

function Tclass._module.Edge() : Ty
uses {
// Tclass._module.Edge Tag
axiom Tag(Tclass._module.Edge()) == Tagclass._module.Edge
   && TagFamily(Tclass._module.Edge()) == tytagFamily$Edge;
}

const unique Tagclass._module.Edge: TyTag;

// Box/unbox axiom for Tclass._module.Edge
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Edge()) } 
  $IsBox(bx, Tclass._module.Edge())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Edge()));

// Constructor $Is
axiom (forall a#2#0#0: ref, a#2#1#0: Seq, a#2#2#0: ref :: 
  { $Is(#_module.Edge.Edge(a#2#0#0, a#2#1#0, a#2#2#0), Tclass._module.Edge()) } 
  $Is(#_module.Edge.Edge(a#2#0#0, a#2#1#0, a#2#2#0), Tclass._module.Edge())
     <==> $Is(a#2#0#0, Tclass._module.Object())
       && $Is(a#2#1#0, TSeq(TChar))
       && $Is(a#2#2#0, Tclass._module.Object()));

// Constructor $IsAlloc
axiom (forall a#2#0#0: ref, a#2#1#0: Seq, a#2#2#0: ref, $h: Heap :: 
  { $IsAlloc(#_module.Edge.Edge(a#2#0#0, a#2#1#0, a#2#2#0), Tclass._module.Edge(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Edge.Edge(a#2#0#0, a#2#1#0, a#2#2#0), Tclass._module.Edge(), $h)
       <==> $IsAlloc(a#2#0#0, Tclass._module.Object(), $h)
         && $IsAlloc(a#2#1#0, TSeq(TChar), $h)
         && $IsAlloc(a#2#2#0, Tclass._module.Object(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Edge.f(d), Tclass._module.Object(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Edge.Edge_q(d)
       && $IsAlloc(d, Tclass._module.Edge(), $h)
     ==> $IsAlloc(_module.Edge.f(d), Tclass._module.Object(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Edge.n(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Edge.Edge_q(d)
       && $IsAlloc(d, Tclass._module.Edge(), $h)
     ==> $IsAlloc(_module.Edge.n(d), TSeq(TChar), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Edge.t(d), Tclass._module.Object(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Edge.Edge_q(d)
       && $IsAlloc(d, Tclass._module.Edge(), $h)
     ==> $IsAlloc(_module.Edge.t(d), Tclass._module.Object(), $h));

// Constructor literal
axiom (forall a#3#0#0: ref, a#3#1#0: Seq, a#3#2#0: ref :: 
  { #_module.Edge.Edge(Lit(a#3#0#0), Lit(a#3#1#0), Lit(a#3#2#0)) } 
  #_module.Edge.Edge(Lit(a#3#0#0), Lit(a#3#1#0), Lit(a#3#2#0))
     == Lit(#_module.Edge.Edge(a#3#0#0, a#3#1#0, a#3#2#0)));

function _module.Edge.f(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#4#0#0: ref, a#4#1#0: Seq, a#4#2#0: ref :: 
  { #_module.Edge.Edge(a#4#0#0, a#4#1#0, a#4#2#0) } 
  _module.Edge.f(#_module.Edge.Edge(a#4#0#0, a#4#1#0, a#4#2#0)) == a#4#0#0);

function _module.Edge.n(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#5#0#0: ref, a#5#1#0: Seq, a#5#2#0: ref :: 
  { #_module.Edge.Edge(a#5#0#0, a#5#1#0, a#5#2#0) } 
  _module.Edge.n(#_module.Edge.Edge(a#5#0#0, a#5#1#0, a#5#2#0)) == a#5#1#0);

// Inductive seq element rank
axiom (forall a#6#0#0: ref, a#6#1#0: Seq, a#6#2#0: ref, i: int :: 
  { Seq#Index(a#6#1#0, i), #_module.Edge.Edge(a#6#0#0, a#6#1#0, a#6#2#0) } 
  0 <= i && i < Seq#Length(a#6#1#0)
     ==> DtRank($Unbox(Seq#Index(a#6#1#0, i)): DatatypeType)
       < DtRank(#_module.Edge.Edge(a#6#0#0, a#6#1#0, a#6#2#0)));

// Inductive seq rank
axiom (forall a#7#0#0: ref, a#7#1#0: Seq, a#7#2#0: ref :: 
  { #_module.Edge.Edge(a#7#0#0, a#7#1#0, a#7#2#0) } 
  Seq#Rank(a#7#1#0) < DtRank(#_module.Edge.Edge(a#7#0#0, a#7#1#0, a#7#2#0)));

function _module.Edge.t(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#8#0#0: ref, a#8#1#0: Seq, a#8#2#0: ref :: 
  { #_module.Edge.Edge(a#8#0#0, a#8#1#0, a#8#2#0) } 
  _module.Edge.t(#_module.Edge.Edge(a#8#0#0, a#8#1#0, a#8#2#0)) == a#8#2#0);

// Depth-one case-split function
function $IsA#_module.Edge(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Edge(d) } 
  $IsA#_module.Edge(d) ==> _module.Edge.Edge_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Edge.Edge_q(d), $Is(d, Tclass._module.Edge()) } 
  $Is(d, Tclass._module.Edge()) ==> _module.Edge.Edge_q(d));

// Datatype extensional equality declaration
function _module.Edge#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Edge.Edge
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Edge#Equal(a, b) } 
  _module.Edge#Equal(a, b)
     <==> _module.Edge.f(a) == _module.Edge.f(b)
       && Seq#Equal(_module.Edge.n(a), _module.Edge.n(b))
       && _module.Edge.t(a) == _module.Edge.t(b));

// Datatype extensionality axiom: _module.Edge
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Edge#Equal(a, b) } 
  _module.Edge#Equal(a, b) <==> a == b);

const unique class._module.Edge: ClassName;

const unique class._module.Memory?: ClassName;

// $Is axiom for class Memory
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Memory?()) } 
  $Is($o, Tclass._module.Memory?())
     <==> $o == null || dtype($o) == Tclass._module.Memory?());

// $IsAlloc axiom for class Memory
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Memory?(), $h) } 
  $IsAlloc($o, Tclass._module.Memory?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Memory.objects: Field
uses {
axiom FDim(_module.Memory.objects) == 0
   && FieldOfDecl(class._module.Memory?, field$objects) == _module.Memory.objects
   && !$IsGhostField(_module.Memory.objects);
}

// Memory.objects: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Memory.objects)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Memory?()
     ==> $Is($Unbox(read($h, $o, _module.Memory.objects)): Set, TSet(Tclass._module.Object())));

// Memory.objects: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Memory.objects)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Memory?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Memory.objects)): Set, 
      TSet(Tclass._module.Object()), 
      $h));

procedure {:verboseName "Memory._ctor (well-formedness)"} CheckWellFormed$$_module.Memory.__ctor() returns (this: ref);
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Memory._ctor (call)"} Call$$_module.Memory.__ctor()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Memory.Valid#canCall($Heap, this);
  ensures {:id "id530"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  free ensures true;
  ensures {:id "id531"} this != null && !$Unbox(read(old($Heap), this, alloc)): bool;
  free ensures true;
  ensures {:id "id532"} Set#Equal($Unbox(read($Heap, this, _module.Memory.objects)): Set, Set#Empty(): Set);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Memory._ctor (correctness)"} Impl$$_module.Memory.__ctor() returns (this: ref, $_reverifyPost: bool);
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Memory.Valid#canCall($Heap, this);
  ensures {:id "id533"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  free ensures true;
  ensures {:id "id534"} this != null && !$Unbox(read(old($Heap), this, alloc)): bool;
  free ensures true;
  ensures {:id "id535"} Set#Equal($Unbox(read($Heap, this, _module.Memory.objects)): Set, Set#Empty(): Set);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory._ctor (correctness)"} Impl$$_module.Memory.__ctor() returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.objects: Set;

    // AddMethodImpl: _ctor, Impl$$_module.Memory.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(167,5)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(168,15)
    assume true;
    assume true;
    this.objects := Lit(Set#Empty(): Set);
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(167,5)
    assume this != null && $Is(this, Tclass._module.Memory?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Memory.objects)): Set == this.objects;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(167,5)
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(170,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(170,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id537"} Call$$_module.Memory.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for _module.Memory.Valid
function _module.Memory.Valid($reveal: bool, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Memory.Valid (revealed)
axiom {:id "id538"} 7 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Memory.Valid(true, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Memory.Valid#canCall($Heap, this)
         || (7 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap))
       ==> _module.Memory.ObjectsAreValid#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
         && (_module.Memory.ObjectsAreValid($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
           ==> _module.Memory.OutgoingReferencesAreInThisHeap#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
             && (_module.Memory.OutgoingReferencesAreInThisHeap($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
               ==> _module.Memory.wholeEnchilada#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)))
         && _module.Memory.Valid(true, $Heap, this)
           == (
            _module.Memory.ObjectsAreValid($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
             && _module.Memory.OutgoingReferencesAreInThisHeap($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
             && _module.Memory.wholeEnchilada($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)));
}

function _module.Memory.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Memory.Valid
axiom (forall $reveal: bool, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.Valid($reveal, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (($o == this && $f == _module.Memory.objects)
             || Set#IsMember($Unbox(read($h0, this, _module.Memory.objects)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.Valid($reveal, $h0, this)
       == _module.Memory.Valid($reveal, $h1, this));

function _module.Memory.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.Memory.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Memory.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $Heap)
     ==> _module.Memory.Valid#requires($Heap, this) == true);

procedure {:verboseName "Memory.Valid (well-formedness)"} CheckWellformed$$_module.Memory.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.Valid (well-formedness)"} CheckWellformed$$_module.Memory.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var ##os#0: Set;
  var ##os#1: Set;
  var ##os#2: Set;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> ($o == this && $f == _module.Memory.objects)
           || Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    assert {:id "id539"} this != null;
    b$reqreads#0 := $_ReadsFrame[this, _module.Memory.objects];
    assert {:id "id540"} b$reqreads#0;
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
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        b$reqreads#1 := $_ReadsFrame[this, _module.Memory.objects];
        ##os#0 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#0, TSet(Tclass._module.Object()), $Heap);
        b$reqreads#2 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember(##os#0, $Box($o))
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Memory.ObjectsAreValid#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        if (_module.Memory.ObjectsAreValid($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            b$reqreads#3 := $_ReadsFrame[this, _module.Memory.objects];
            ##os#1 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
            // assume allocatedness for argument to function
            assume $IsAlloc(##os#1, TSet(Tclass._module.Object()), $Heap);
            b$reqreads#4 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && (
                    ($o == this && $f == _module.Memory.objects)
                     || Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
                     || Set#IsMember(##os#1, $Box($o)))
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Memory.OutgoingReferencesAreInThisHeap#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        }

        if (_module.Memory.ObjectsAreValid($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
           && _module.Memory.OutgoingReferencesAreInThisHeap($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            b$reqreads#5 := $_ReadsFrame[this, _module.Memory.objects];
            ##os#2 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
            // assume allocatedness for argument to function
            assume $IsAlloc(##os#2, TSet(Tclass._module.Object()), $Heap);
            b$reqreads#6 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(##os#2, $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Memory.wholeEnchilada#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        }

        assume {:id "id541"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this)
           == (
            _module.Memory.ObjectsAreValid($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
             && _module.Memory.OutgoingReferencesAreInThisHeap($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
             && _module.Memory.wholeEnchilada($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set));
        assume _module.Memory.ObjectsAreValid#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
           && (_module.Memory.ObjectsAreValid($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
             ==> _module.Memory.OutgoingReferencesAreInThisHeap#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
               && (_module.Memory.OutgoingReferencesAreInThisHeap($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
                 ==> _module.Memory.wholeEnchilada#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this), TBool);
        assert {:id "id542"} b$reqreads#1;
        assert {:id "id543"} b$reqreads#2;
        assert {:id "id544"} b$reqreads#3;
        assert {:id "id545"} b$reqreads#4;
        assert {:id "id546"} b$reqreads#5;
        assert {:id "id547"} b$reqreads#6;
        return;

        assume false;
    }
}



procedure {:verboseName "Memory.Valid2ImpliesValid (well-formedness)"} CheckWellFormed$$_module.Memory.Valid2ImpliesValid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap));
  free requires 9 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.Valid2ImpliesValid (well-formedness)"} CheckWellFormed$$_module.Memory.Valid2ImpliesValid(this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Valid2ImpliesValid, CheckWellFormed$$_module.Memory.Valid2ImpliesValid
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    if (*)
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        assert {:id "id548"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
        assume {:id "id549"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        assume _module.Memory.Valid#canCall($Heap, this);
        assume {:id "id550"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    }
    else
    {
        assume {:id "id551"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this)
           ==> _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    }
}



procedure {:verboseName "Memory.Valid2ImpliesValid (call)"} Call$$_module.Memory.Valid2ImpliesValid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this)
     && (_module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this)
       ==> _module.Memory.Valid#canCall($Heap, this));
  ensures {:id "id552"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this)
     ==> _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Memory.Valid2ImpliesValid (correctness)"} Impl$$_module.Memory.Valid2ImpliesValid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 9 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this)
     && (_module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this)
       ==> _module.Memory.Valid#canCall($Heap, this));
  ensures {:id "id553"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this)
     ==> _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.Valid2ImpliesValid (correctness)"} Impl$$_module.Memory.Valid2ImpliesValid(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Valid2ImpliesValid, Impl$$_module.Memory.Valid2ImpliesValid
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(186,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(186,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id554"} Call$$_module.Memory.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(187,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(187,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id555"} Call$$_module.Memory.reveal__Valid2(old($Heap), $Heap);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(189,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assert {:id "id556"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
    if (_module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this))
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        assume _module.Memory.Valid#canCall($Heap, this);
    }

    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this)
       && (_module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this)
         ==> _module.Memory.Valid#canCall($Heap, this));
    assert {:id "id557"} {:subsumption 0} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this)
       ==> _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    assume {:id "id558"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this)
       ==> _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
}



// function declaration for _module.Memory.Valid2
function _module.Memory.Valid2($reveal: bool, $prevHeap: Heap, $heap: Heap, this: ref) : bool
uses {
// consequence axiom for _module.Memory.Valid2
axiom 8 <= $FunctionContextHeight
   ==> (forall $reveal: bool, $prevHeap: Heap, $Heap: Heap, this: ref :: 
    { _module.Memory.Valid2($reveal, $prevHeap, $Heap, this) } 
    _module.Memory.Valid2#canCall($prevHeap, $Heap, this)
         || (8 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $prevHeap))
       ==> 
      _module.Memory.Valid2(reveal__module.Memory.Valid2, $prevHeap, $Heap, this)
       ==> _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this));
// definition axiom for _module.Memory.Valid2 (revealed)
axiom {:id "id559"} 8 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
    { _module.Memory.Valid2(true, $prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Memory.Valid2#canCall($prevHeap, $Heap, this)
         || (8 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $prevHeap))
       ==> _module.Memory.Valid#canCall($Heap, this)
         && (_module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this)
           ==> _module.Memory.HeapObjectsAreMonotonic#canCall($prevHeap, $Heap, this)
             && (_module.Memory.HeapObjectsAreMonotonic($prevHeap, $Heap, this)
               ==> _module.Memory.AllImmutablesAreImmutable#canCall($prevHeap, $Heap, this)))
         && _module.Memory.Valid2(true, $prevHeap, $Heap, this)
           == (
            _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this)
             && _module.Memory.HeapObjectsAreMonotonic($prevHeap, $Heap, this)
             && _module.Memory.AllImmutablesAreImmutable($prevHeap, $Heap, this)));
}

function _module.Memory.Valid2#canCall($prevHeap: Heap, $heap: Heap, this: ref) : bool;

// frame axiom for _module.Memory.Valid2
axiom (forall $reveal: bool, $prevHeap: Heap, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.Valid2($reveal, $prevHeap, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            ($o == this && $f == _module.Memory.objects)
             || Set#IsMember($Unbox(read($h0, this, _module.Memory.objects)): Set, $Box($o))
             || (Set#IsMember($Unbox(read($h0, this, _module.Memory.objects)): Set, $Box($o))
               && $f == _module.Object.fields))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.Valid2($reveal, $prevHeap, $h0, this)
       == _module.Memory.Valid2($reveal, $prevHeap, $h1, this));

function _module.Memory.Valid2#requires(Heap, Heap, ref) : bool;

// #requires axiom for _module.Memory.Valid2
axiom (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
  { _module.Memory.Valid2#requires($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $prevHeap)
     ==> _module.Memory.Valid2#requires($prevHeap, $Heap, this) == true);

procedure {:verboseName "Memory.Valid2 (well-formedness)"} CheckWellformed$$_module.Memory.Valid2(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), previous$Heap));
  free requires 8 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;
  ensures {:id "id560"} _module.Memory.Valid2(reveal__module.Memory.Valid2, previous$Heap, current$Heap, this)
     ==> _module.Memory.Valid(reveal__module.Memory.Valid, current$Heap, this);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.Valid2 (well-formedness)"} CheckWellformed$$_module.Memory.Valid2(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> ($o == this && $f == _module.Memory.objects)
           || Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
           || (Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
             && $f == _module.Object.fields));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    assert {:id "id561"} this != null;
    b$reqreads#0 := $_ReadsFrame[this, _module.Memory.objects];
    b$reqreads#1 := $_ReadsFrame[this, _module.Memory.objects];
    assert {:id "id562"} b$reqreads#0;
    assert {:id "id563"} b$reqreads#1;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            assert {:id "id564"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
            assert {:id "id565"} this == this
               || (Set#Subset(Set#Union(Set#Union($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
                      $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union(Set#Union($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
                      $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union(Set#Union($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
                      $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union(Set#Union($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
                      $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this || _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
            assume {:id "id566"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            assume _module.Memory.Valid#canCall($Heap, this);
            assume {:id "id567"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
        }
        else
        {
            assume {:id "id568"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this)
               ==> _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(196,6)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(196,13)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id569"} Call$$_module.Memory.reveal__Valid();
        // TrCallStmt: After ProcessCallStmt
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        b$reqreads#2 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && (($o == this && $f == _module.Memory.objects)
                 || Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o)))
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Memory.Valid#canCall($Heap, this);
        if (_module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            assert {:id "id570"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
            b$reqreads#3 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && 
                  $o == this
                   && $f == _module.Memory.objects
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Memory.HeapObjectsAreMonotonic#canCall(old($Heap), $Heap, this);
        }

        if (_module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this)
           && _module.Memory.HeapObjectsAreMonotonic(old($Heap), $Heap, this))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            assert {:id "id571"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
            b$reqreads#4 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && (
                    ($o == this && $f == _module.Memory.objects)
                     || Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
                     || (Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
                       && $f == _module.Object.fields))
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Memory.AllImmutablesAreImmutable#canCall(old($Heap), $Heap, this);
        }

        assume {:id "id572"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this)
           == (
            _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this)
             && _module.Memory.HeapObjectsAreMonotonic(old($Heap), $Heap, this)
             && _module.Memory.AllImmutablesAreImmutable(old($Heap), $Heap, this));
        assume _module.Memory.Valid#canCall($Heap, this)
           && (_module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this)
             ==> _module.Memory.HeapObjectsAreMonotonic#canCall(old($Heap), $Heap, this)
               && (_module.Memory.HeapObjectsAreMonotonic(old($Heap), $Heap, this)
                 ==> _module.Memory.AllImmutablesAreImmutable#canCall(old($Heap), $Heap, this)));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this), 
          TBool);
        assert {:id "id573"} b$reqreads#2;
        assert {:id "id574"} b$reqreads#3;
        assert {:id "id575"} b$reqreads#4;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.ObjectsAreValid
function _module.Memory.ObjectsAreValid($heap: Heap, this: ref, os#0: Set) : bool
uses {
// definition axiom for _module.Memory.ObjectsAreValid (revealed)
axiom {:id "id576"} 6 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { _module.Memory.ObjectsAreValid($Heap, this, os#0), $IsGoodHeap($Heap) } 
    _module.Memory.ObjectsAreValid#canCall($Heap, this, os#0)
         || (6 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> (forall o#0: ref :: 
          { _module.Object.Valid(reveal__module.Object.Valid, $Heap, o#0) } 
            { Set#IsMember(os#0, $Box(o#0)) } 
          $Is(o#0, Tclass._module.Object())
             ==> 
            Set#IsMember(os#0, $Box(o#0))
             ==> _module.Object.Valid#canCall($Heap, o#0))
         && _module.Memory.ObjectsAreValid($Heap, this, os#0)
           == (forall o#0: ref :: 
            { _module.Object.Valid(reveal__module.Object.Valid, $Heap, o#0) } 
              { Set#IsMember(os#0, $Box(o#0)) } 
            $Is(o#0, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#0))
               ==> _module.Object.Valid(reveal__module.Object.Valid, $Heap, o#0)));
}

function _module.Memory.ObjectsAreValid#canCall($heap: Heap, this: ref, os#0: Set) : bool;

// frame axiom for _module.Memory.ObjectsAreValid
axiom (forall $h0: Heap, $h1: Heap, this: ref, os#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.ObjectsAreValid($h1, this, os#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && (_module.Memory.ObjectsAreValid#canCall($h0, this, os#0)
         || $Is(os#0, TSet(Tclass._module.Object())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(os#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.ObjectsAreValid($h0, this, os#0)
       == _module.Memory.ObjectsAreValid($h1, this, os#0));

function _module.Memory.ObjectsAreValid#requires(Heap, ref, Set) : bool;

// #requires axiom for _module.Memory.ObjectsAreValid
axiom (forall $Heap: Heap, this: ref, os#0: Set :: 
  { _module.Memory.ObjectsAreValid#requires($Heap, this, os#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $Heap)
       && $Is(os#0, TSet(Tclass._module.Object()))
     ==> _module.Memory.ObjectsAreValid#requires($Heap, this, os#0) == true);

procedure {:verboseName "Memory.ObjectsAreValid (well-formedness)"} CheckWellformed$$_module.Memory.ObjectsAreValid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set where $Is(os#0, TSet(Tclass._module.Object())));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.ObjectsAreValid (well-formedness)"} CheckWellformed$$_module.Memory.ObjectsAreValid(this: ref, os#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var o#1: ref;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(os#0, $Box($o)));
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
        havoc o#1;
        if ($Is(o#1, Tclass._module.Object())
           && $IsAlloc(o#1, Tclass._module.Object(), $Heap))
        {
            if (Set#IsMember(os#0, $Box(o#1)))
            {
                assert {:id "id577"} o#1 != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(o#1), Tclass._module.Object?(), $Heap);
                b$reqreads#0 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && 
                      $o == o#1
                       && $f == _module.Object.fields
                     ==> $_ReadsFrame[$o, $f]);
                assume _module.Object.Valid#canCall($Heap, o#1);
            }
        }

        // End Comprehension WF check
        assume {:id "id578"} _module.Memory.ObjectsAreValid($Heap, this, os#0)
           == (forall o#2: ref :: 
            { _module.Object.Valid(reveal__module.Object.Valid, $Heap, o#2) } 
              { Set#IsMember(os#0, $Box(o#2)) } 
            $Is(o#2, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#2))
               ==> _module.Object.Valid(reveal__module.Object.Valid, $Heap, o#2));
        assume (forall o#2: ref :: 
          { _module.Object.Valid(reveal__module.Object.Valid, $Heap, o#2) } 
            { Set#IsMember(os#0, $Box(o#2)) } 
          $Is(o#2, Tclass._module.Object())
             ==> 
            Set#IsMember(os#0, $Box(o#2))
             ==> _module.Object.Valid#canCall($Heap, o#2));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.ObjectsAreValid($Heap, this, os#0), TBool);
        assert {:id "id579"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.OutgoingReferencesAreInThisHeap
function _module.Memory.OutgoingReferencesAreInThisHeap($heap: Heap, this: ref, os#0: Set) : bool
uses {
// definition axiom for _module.Memory.OutgoingReferencesAreInThisHeap (revealed)
axiom {:id "id580"} 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { _module.Memory.OutgoingReferencesAreInThisHeap($Heap, this, os#0), $IsGoodHeap($Heap) } 
    _module.Memory.OutgoingReferencesAreInThisHeap#canCall($Heap, this, os#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> (forall o#0: ref :: 
          { _module.Object.outgoing($Heap, o#0) } { Set#IsMember(os#0, $Box(o#0)) } 
          $Is(o#0, Tclass._module.Object())
             ==> 
            Set#IsMember(os#0, $Box(o#0))
             ==> _module.Object.outgoing#canCall($Heap, o#0))
         && _module.Memory.OutgoingReferencesAreInThisHeap($Heap, this, os#0)
           == (forall o#0: ref :: 
            { _module.Object.outgoing($Heap, o#0) } { Set#IsMember(os#0, $Box(o#0)) } 
            $Is(o#0, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#0))
               ==> Set#Subset(_module.Object.outgoing($Heap, o#0), 
                $Unbox(read($Heap, this, _module.Memory.objects)): Set)));
}

function _module.Memory.OutgoingReferencesAreInThisHeap#canCall($heap: Heap, this: ref, os#0: Set) : bool;

// frame axiom for _module.Memory.OutgoingReferencesAreInThisHeap
axiom (forall $h0: Heap, $h1: Heap, this: ref, os#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.OutgoingReferencesAreInThisHeap($h1, this, os#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && (_module.Memory.OutgoingReferencesAreInThisHeap#canCall($h0, this, os#0)
         || $Is(os#0, TSet(Tclass._module.Object())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            ($o == this && $f == _module.Memory.objects)
             || Set#IsMember($Unbox(read($h0, this, _module.Memory.objects)): Set, $Box($o))
             || Set#IsMember(os#0, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.OutgoingReferencesAreInThisHeap($h0, this, os#0)
       == _module.Memory.OutgoingReferencesAreInThisHeap($h1, this, os#0));

function _module.Memory.OutgoingReferencesAreInThisHeap#requires(Heap, ref, Set) : bool;

// #requires axiom for _module.Memory.OutgoingReferencesAreInThisHeap
axiom (forall $Heap: Heap, this: ref, os#0: Set :: 
  { _module.Memory.OutgoingReferencesAreInThisHeap#requires($Heap, this, os#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $Heap)
       && $Is(os#0, TSet(Tclass._module.Object()))
     ==> _module.Memory.OutgoingReferencesAreInThisHeap#requires($Heap, this, os#0)
       == true);

procedure {:verboseName "Memory.OutgoingReferencesAreInThisHeap (well-formedness)"} CheckWellformed$$_module.Memory.OutgoingReferencesAreInThisHeap(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set where $Is(os#0, TSet(Tclass._module.Object())));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.OutgoingReferencesAreInThisHeap (well-formedness)"} CheckWellformed$$_module.Memory.OutgoingReferencesAreInThisHeap(this: ref, os#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var o#1: ref;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> ($o == this && $f == _module.Memory.objects)
           || Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
           || Set#IsMember(os#0, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    assert {:id "id581"} this != null;
    b$reqreads#0 := $_ReadsFrame[this, _module.Memory.objects];
    assert {:id "id582"} b$reqreads#0;
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
        havoc o#1;
        if ($Is(o#1, Tclass._module.Object())
           && $IsAlloc(o#1, Tclass._module.Object(), $Heap))
        {
            if (Set#IsMember(os#0, $Box(o#1)))
            {
                assert {:id "id583"} o#1 != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(o#1), Tclass._module.Object?(), $Heap);
                b$reqreads#1 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && 
                      $o == o#1
                       && $f == _module.Object.fields
                     ==> $_ReadsFrame[$o, $f]);
                assume _module.Object.outgoing#canCall($Heap, o#1);
                b$reqreads#2 := $_ReadsFrame[this, _module.Memory.objects];
            }
        }

        // End Comprehension WF check
        assume {:id "id584"} _module.Memory.OutgoingReferencesAreInThisHeap($Heap, this, os#0)
           == (forall o#2: ref :: 
            { _module.Object.outgoing($Heap, o#2) } { Set#IsMember(os#0, $Box(o#2)) } 
            $Is(o#2, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#2))
               ==> Set#Subset(_module.Object.outgoing($Heap, o#2), 
                $Unbox(read($Heap, this, _module.Memory.objects)): Set));
        assume (forall o#2: ref :: 
          { _module.Object.outgoing($Heap, o#2) } { Set#IsMember(os#0, $Box(o#2)) } 
          $Is(o#2, Tclass._module.Object())
             ==> 
            Set#IsMember(os#0, $Box(o#2))
             ==> _module.Object.outgoing#canCall($Heap, o#2));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.OutgoingReferencesAreInThisHeap($Heap, this, os#0), TBool);
        assert {:id "id585"} b$reqreads#1;
        assert {:id "id586"} b$reqreads#2;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.HeapObjectsAreMonotonic
function _module.Memory.HeapObjectsAreMonotonic($prevHeap: Heap, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Memory.HeapObjectsAreMonotonic (revealed)
axiom {:id "id587"} 0 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
    { _module.Memory.HeapObjectsAreMonotonic($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Memory.HeapObjectsAreMonotonic#canCall($prevHeap, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $prevHeap))
       ==> _module.Memory.HeapObjectsAreMonotonic($prevHeap, $Heap, this)
         == Set#Subset($Unbox(read($prevHeap, this, _module.Memory.objects)): Set, 
          $Unbox(read($Heap, this, _module.Memory.objects)): Set));
}

function _module.Memory.HeapObjectsAreMonotonic#canCall($prevHeap: Heap, $heap: Heap, this: ref) : bool;

// frame axiom for _module.Memory.HeapObjectsAreMonotonic
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.HeapObjectsAreMonotonic($prevHeap, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this && $f == _module.Memory.objects
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.HeapObjectsAreMonotonic($prevHeap, $h0, this)
       == _module.Memory.HeapObjectsAreMonotonic($prevHeap, $h1, this));

function _module.Memory.HeapObjectsAreMonotonic#requires(Heap, Heap, ref) : bool;

// #requires axiom for _module.Memory.HeapObjectsAreMonotonic
axiom (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
  { _module.Memory.HeapObjectsAreMonotonic#requires($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $prevHeap)
     ==> _module.Memory.HeapObjectsAreMonotonic#requires($prevHeap, $Heap, this) == true);

procedure {:verboseName "Memory.HeapObjectsAreMonotonic (well-formedness)"} CheckWellformed$$_module.Memory.HeapObjectsAreMonotonic(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), previous$Heap));
  free requires 0 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.HeapObjectsAreMonotonic (well-formedness)"} CheckWellformed$$_module.Memory.HeapObjectsAreMonotonic(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this && $f == _module.Memory.objects);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    assert {:id "id588"} this != null;
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
        assert {:id "id589"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        b$reqreads#0 := $_ReadsFrame[this, _module.Memory.objects];
        assume {:id "id590"} _module.Memory.HeapObjectsAreMonotonic(old($Heap), $Heap, this)
           == Set#Subset($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
            $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.HeapObjectsAreMonotonic(old($Heap), $Heap, this), TBool);
        assert {:id "id591"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.AllImmutablesAreImmutable
function _module.Memory.AllImmutablesAreImmutable($prevHeap: Heap, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Memory.AllImmutablesAreImmutable (revealed)
axiom {:id "id592"} 3 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
    { _module.Memory.AllImmutablesAreImmutable($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
    _module.Memory.AllImmutablesAreImmutable#canCall($prevHeap, $Heap, this)
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $prevHeap))
       ==> _module.Memory.AllImmutablesAreImmutable($prevHeap, $Heap, this)
         == (forall o#0: ref :: 
          { $Unbox(read($prevHeap, o#0, _module.Object.fields)): Map } 
            { $Unbox(read($Heap, o#0, _module.Object.fields)): Map } 
            { _module.Object.region(o#0) } 
            { Set#IsMember(Set#Intersection($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
                $Unbox(read($prevHeap, this, _module.Memory.objects)): Set), 
              $Box(o#0)) } 
          $Is(o#0, Tclass._module.Object?())
               && Set#IsMember(Set#Intersection($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
                  $Unbox(read($prevHeap, this, _module.Memory.objects)): Set), 
                $Box(o#0))
             ==> 
            _module.Region.Frozen_q(_module.Object.region(o#0))
             ==> Map#Equal($Unbox(read($Heap, o#0, _module.Object.fields)): Map, 
              $Unbox(read($prevHeap, o#0, _module.Object.fields)): Map)));
}

function _module.Memory.AllImmutablesAreImmutable#canCall($prevHeap: Heap, $heap: Heap, this: ref) : bool;

// frame axiom for _module.Memory.AllImmutablesAreImmutable
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.AllImmutablesAreImmutable($prevHeap, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            ($o == this && $f == _module.Memory.objects)
             || Set#IsMember($Unbox(read($h0, this, _module.Memory.objects)): Set, $Box($o))
             || (Set#IsMember($Unbox(read($h0, this, _module.Memory.objects)): Set, $Box($o))
               && $f == _module.Object.fields))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.AllImmutablesAreImmutable($prevHeap, $h0, this)
       == _module.Memory.AllImmutablesAreImmutable($prevHeap, $h1, this));

function _module.Memory.AllImmutablesAreImmutable#requires(Heap, Heap, ref) : bool;

// #requires axiom for _module.Memory.AllImmutablesAreImmutable
axiom (forall $prevHeap: Heap, $Heap: Heap, this: ref :: 
  { _module.Memory.AllImmutablesAreImmutable#requires($prevHeap, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $prevHeap)
     ==> _module.Memory.AllImmutablesAreImmutable#requires($prevHeap, $Heap, this)
       == true);

procedure {:verboseName "Memory.AllImmutablesAreImmutable (well-formedness)"} CheckWellformed$$_module.Memory.AllImmutablesAreImmutable(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), previous$Heap));
  free requires 3 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.AllImmutablesAreImmutable (well-formedness)"} CheckWellformed$$_module.Memory.AllImmutablesAreImmutable(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var o#1: ref;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> ($o == this && $f == _module.Memory.objects)
           || Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
           || (Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
             && $f == _module.Object.fields));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    assert {:id "id593"} this != null;
    b$reqreads#0 := $_ReadsFrame[this, _module.Memory.objects];
    b$reqreads#1 := $_ReadsFrame[this, _module.Memory.objects];
    assert {:id "id594"} b$reqreads#0;
    assert {:id "id595"} b$reqreads#1;
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
        havoc o#1;
        if ($Is(o#1, Tclass._module.Object?())
           && $IsAlloc(o#1, Tclass._module.Object?(), $Heap))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.Memory.objects];
            assert {:id "id596"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
            if (Set#IsMember(Set#Intersection($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
                $Unbox(read(old($Heap), this, _module.Memory.objects)): Set), 
              $Box(o#1)))
            {
                assert {:id "id597"} o#1 != null;
                if (_module.Region.Frozen_q(_module.Object.region(o#1)))
                {
                    assert {:id "id598"} o#1 != null;
                    b$reqreads#3 := $_ReadsFrame[o#1, _module.Object.fields];
                    assert {:id "id599"} o#1 != null;
                    assert {:id "id600"} $IsAlloc(o#1, Tclass._module.Object?(), old($Heap));
                }
            }
        }

        // End Comprehension WF check
        assume {:id "id601"} _module.Memory.AllImmutablesAreImmutable(old($Heap), $Heap, this)
           == (forall o#2: ref :: 
            { $Unbox(read(old($Heap), o#2, _module.Object.fields)): Map } 
              { $Unbox(read($Heap, o#2, _module.Object.fields)): Map } 
              { _module.Object.region(o#2) } 
              { Set#IsMember(Set#Intersection($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
                  $Unbox(read(old($Heap), this, _module.Memory.objects)): Set), 
                $Box(o#2)) } 
            $Is(o#2, Tclass._module.Object?())
                 && Set#IsMember(Set#Intersection($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
                    $Unbox(read(old($Heap), this, _module.Memory.objects)): Set), 
                  $Box(o#2))
               ==> 
              _module.Region.Frozen_q(_module.Object.region(o#2))
               ==> Map#Equal($Unbox(read($Heap, o#2, _module.Object.fields)): Map, 
                $Unbox(read(old($Heap), o#2, _module.Object.fields)): Map));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.AllImmutablesAreImmutable(old($Heap), $Heap, this), TBool);
        assert {:id "id602"} b$reqreads#2;
        assert {:id "id603"} b$reqreads#3;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.justTheIsos
function _module.Memory.justTheIsos($heap: Heap, this: ref, os#0: Set) : Set
uses {
// consequence axiom for _module.Memory.justTheIsos
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { _module.Memory.justTheIsos($Heap, this, os#0) } 
    _module.Memory.justTheIsos#canCall($Heap, this, os#0)
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && 
          $Is(os#0, TSet(Tclass._module.Object()))
           && $IsAlloc(os#0, TSet(Tclass._module.Object()), $Heap))
       ==> (forall r#0: ref :: 
          { _module.Object.region(r#0) } 
            { Set#IsMember(_module.Memory.justTheIsos($Heap, this, os#0), $Box(r#0)) } 
          $Is(r#0, Tclass._module.Object())
               && Set#IsMember(_module.Memory.justTheIsos($Heap, this, os#0), $Box(r#0))
             ==> _module.Region.Isolate_q(_module.Object.region(r#0)))
         && (forall o#0: ref :: 
          { Set#IsMember(_module.Memory.justTheIsos($Heap, this, os#0), $Box(o#0)) } 
            { _module.Object.region(o#0) } 
            { Set#IsMember(os#0, $Box(o#0)) } 
          $Is(o#0, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#0))
             ==> 
            _module.Region.Isolate_q(_module.Object.region(o#0))
             ==> Set#IsMember(_module.Memory.justTheIsos($Heap, this, os#0), $Box(o#0)))
         && (Set#Equal(os#0, Set#Empty(): Set)
           ==> Set#Equal(_module.Memory.justTheIsos($Heap, this, os#0), Set#Empty(): Set))
         && $Is(_module.Memory.justTheIsos($Heap, this, os#0), TSet(Tclass._module.Object())));
// alloc consequence axiom for _module.Memory.justTheIsos
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { $IsAlloc(_module.Memory.justTheIsos($Heap, this, os#0), 
        TSet(Tclass._module.Object()), 
        $Heap) } 
    _module.Memory.justTheIsos#canCall($Heap, this, os#0)
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && this != null
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && 
          $Is(os#0, TSet(Tclass._module.Object()))
           && $IsAlloc(os#0, TSet(Tclass._module.Object()), $Heap))
       ==> $IsAlloc(_module.Memory.justTheIsos($Heap, this, os#0), 
        TSet(Tclass._module.Object()), 
        $Heap));
// definition axiom for _module.Memory.justTheIsos (revealed)
axiom {:id "id604"} 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { _module.Memory.justTheIsos($Heap, this, os#0), $IsGoodHeap($Heap) } 
    _module.Memory.justTheIsos#canCall($Heap, this, os#0)
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> _module.Memory.justTheIsos($Heap, this, os#0)
         == Set#FromBoogieMap((lambda $y#0: Box :: 
            $IsBox($y#0, Tclass._module.Object())
               && 
              Set#IsMember(os#0, $y#0)
               && _module.Region.Isolate_q(_module.Object.region($Unbox($y#0): ref)))));
}

function _module.Memory.justTheIsos#canCall($heap: Heap, this: ref, os#0: Set) : bool;

// frame axiom for _module.Memory.justTheIsos
axiom (forall $h0: Heap, $h1: Heap, this: ref, os#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.justTheIsos($h1, this, os#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && (_module.Memory.justTheIsos#canCall($h0, this, os#0)
         || $Is(os#0, TSet(Tclass._module.Object())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(os#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.justTheIsos($h0, this, os#0)
       == _module.Memory.justTheIsos($h1, this, os#0));

function _module.Memory.justTheIsos#requires(Heap, ref, Set) : bool;

// #requires axiom for _module.Memory.justTheIsos
axiom (forall $Heap: Heap, this: ref, os#0: Set :: 
  { _module.Memory.justTheIsos#requires($Heap, this, os#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $Heap)
       && $Is(os#0, TSet(Tclass._module.Object()))
     ==> _module.Memory.justTheIsos#requires($Heap, this, os#0) == true);

procedure {:verboseName "Memory.justTheIsos (well-formedness)"} CheckWellformed$$_module.Memory.justTheIsos(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set where $Is(os#0, TSet(Tclass._module.Object())))
   returns (rs#0: Set);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id605"} (forall r#1: ref :: 
    { _module.Object.region(r#1) } { Set#IsMember(rs#0, $Box(r#1)) } 
    $Is(r#1, Tclass._module.Object()) && Set#IsMember(rs#0, $Box(r#1))
       ==> _module.Region.Isolate_q(_module.Object.region(r#1)));
  ensures {:id "id606"} (forall o#2: ref :: 
    { Set#IsMember(rs#0, $Box(o#2)) } 
      { _module.Object.region(o#2) } 
      { Set#IsMember(os#0, $Box(o#2)) } 
    $Is(o#2, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#2))
       ==> 
      _module.Region.Isolate_q(_module.Object.region(o#2))
       ==> Set#IsMember(rs#0, $Box(o#2)));
  ensures {:id "id607"} Set#Equal(os#0, Set#Empty(): Set) ==> Set#Equal(rs#0, Set#Empty(): Set);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.justTheIsos (well-formedness)"} CheckWellformed$$_module.Memory.justTheIsos(this: ref, os#0: Set) returns (rs#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var r#2: ref;
  var o#3: ref;
  var o#4: ref;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(os#0, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Memory.justTheIsos($Heap, this, os#0), TSet(Tclass._module.Object()));
        assume $Is(rs#0, TSet(Tclass._module.Object()));
        havoc r#2;
        assume $Is(r#2, Tclass._module.Object())
           && $IsAlloc(r#2, Tclass._module.Object(), $Heap);
        if (*)
        {
            assume {:id "id608"} Set#IsMember(rs#0, $Box(r#2));
            assert {:id "id609"} r#2 != null;
            assume {:id "id610"} _module.Region.Isolate_q(_module.Object.region(r#2));
        }
        else
        {
            assume {:id "id611"} Set#IsMember(rs#0, $Box(r#2))
               ==> _module.Region.Isolate_q(_module.Object.region(r#2));
        }

        assume {:id "id612"} (forall r#1: ref :: 
          { _module.Object.region(r#1) } { Set#IsMember(rs#0, $Box(r#1)) } 
          $Is(r#1, Tclass._module.Object()) && Set#IsMember(rs#0, $Box(r#1))
             ==> _module.Region.Isolate_q(_module.Object.region(r#1)));
        havoc o#3;
        assume $Is(o#3, Tclass._module.Object())
           && $IsAlloc(o#3, Tclass._module.Object(), $Heap);
        if (*)
        {
            assume {:id "id613"} Set#IsMember(os#0, $Box(o#3));
            if (*)
            {
                assert {:id "id614"} o#3 != null;
                assume {:id "id615"} _module.Region.Isolate_q(_module.Object.region(o#3));
                assume {:id "id616"} Set#IsMember(rs#0, $Box(o#3));
            }
            else
            {
                assume {:id "id617"} _module.Region.Isolate_q(_module.Object.region(o#3))
                   ==> Set#IsMember(rs#0, $Box(o#3));
            }
        }
        else
        {
            assume {:id "id618"} Set#IsMember(os#0, $Box(o#3))
               ==> 
              _module.Region.Isolate_q(_module.Object.region(o#3))
               ==> Set#IsMember(rs#0, $Box(o#3));
        }

        assume {:id "id619"} (forall o#2: ref :: 
          { Set#IsMember(rs#0, $Box(o#2)) } 
            { _module.Object.region(o#2) } 
            { Set#IsMember(os#0, $Box(o#2)) } 
          $Is(o#2, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#2))
             ==> 
            _module.Region.Isolate_q(_module.Object.region(o#2))
             ==> Set#IsMember(rs#0, $Box(o#2)));
        if (*)
        {
            assume {:id "id620"} Set#Equal(os#0, Set#Empty(): Set);
            assume {:id "id621"} Set#Equal(rs#0, Set#Empty(): Set);
        }
        else
        {
            assume {:id "id622"} Set#Equal(os#0, Set#Empty(): Set) ==> Set#Equal(rs#0, Set#Empty(): Set);
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc o#4;
        if ($Is(o#4, Tclass._module.Object())
           && $IsAlloc(o#4, Tclass._module.Object(), $Heap))
        {
            if (Set#IsMember(os#0, $Box(o#4)))
            {
                assert {:id "id623"} o#4 != null;
            }

            if (Set#IsMember(os#0, $Box(o#4))
               && _module.Region.Isolate_q(_module.Object.region(o#4)))
            {
            }
        }

        // End Comprehension WF check
        assume {:id "id624"} _module.Memory.justTheIsos($Heap, this, os#0)
           == Set#FromBoogieMap((lambda $y#2: Box :: 
              $IsBox($y#2, Tclass._module.Object())
                 && 
                Set#IsMember(os#0, $y#2)
                 && _module.Region.Isolate_q(_module.Object.region($Unbox($y#2): ref))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.justTheIsos($Heap, this, os#0), TSet(Tclass._module.Object()));
        assume {:id "id625"} _module.Memory.justTheIsos($Heap, this, os#0) == rs#0;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.incomingEdges
function _module.Memory.incomingEdges(this: ref, t#0: ref, edges#0: Set) : Set
uses {
// consequence axiom for _module.Memory.incomingEdges
axiom 2 <= $FunctionContextHeight
   ==> (forall this: ref, t#0: ref, edges#0: Set :: 
    { _module.Memory.incomingEdges(this, t#0, edges#0) } 
    _module.Memory.incomingEdges#canCall(this, t#0, edges#0)
         || (2 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(t#0, Tclass._module.Object())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> Set#Subset(_module.Memory.incomingEdges(this, t#0, edges#0), edges#0)
         && $Is(_module.Memory.incomingEdges(this, t#0, edges#0), TSet(Tclass._module.Edge())));
// alloc consequence axiom for _module.Memory.incomingEdges
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, t#0: ref, edges#0: Set :: 
    { $IsAlloc(_module.Memory.incomingEdges(this, t#0, edges#0), 
        TSet(Tclass._module.Edge()), 
        $Heap) } 
    (_module.Memory.incomingEdges#canCall(this, t#0, edges#0)
           || (2 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass._module.Memory(), $Heap)
             && 
            $Is(t#0, Tclass._module.Object())
             && $IsAlloc(t#0, Tclass._module.Object(), $Heap)
             && 
            $Is(edges#0, TSet(Tclass._module.Edge()))
             && $IsAlloc(edges#0, TSet(Tclass._module.Edge()), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.Memory.incomingEdges(this, t#0, edges#0), 
        TSet(Tclass._module.Edge()), 
        $Heap));
// definition axiom for _module.Memory.incomingEdges (revealed)
axiom {:id "id626"} 2 <= $FunctionContextHeight
   ==> (forall this: ref, t#0: ref, edges#0: Set :: 
    { _module.Memory.incomingEdges(this, t#0, edges#0) } 
    _module.Memory.incomingEdges#canCall(this, t#0, edges#0)
         || (2 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(t#0, Tclass._module.Object())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> (forall e#0: DatatypeType :: 
          { _module.Edge.t(e#0) } { Set#IsMember(edges#0, $Box(e#0)) } 
          $Is(e#0, Tclass._module.Edge())
             ==> 
            Set#IsMember(edges#0, $Box(e#0))
             ==> _module.Edge.Edge_q(e#0))
         && _module.Memory.incomingEdges(this, t#0, edges#0)
           == Set#FromBoogieMap((lambda $y#0: Box :: 
              $IsBox($y#0, Tclass._module.Edge())
                 && 
                Set#IsMember(edges#0, $y#0)
                 && _module.Edge.t($Unbox($y#0): DatatypeType) == t#0)));
// definition axiom for _module.Memory.incomingEdges for decreasing-related literals (revealed)
axiom {:id "id627"} 2 <= $FunctionContextHeight
   ==> (forall this: ref, t#0: ref, edges#0: Set :: 
    {:weight 3} { _module.Memory.incomingEdges(this, Lit(t#0), Lit(edges#0)) } 
    _module.Memory.incomingEdges#canCall(this, Lit(t#0), Lit(edges#0))
         || (2 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(t#0, Tclass._module.Object())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> (forall e#1: DatatypeType :: 
          { _module.Edge.t(e#1) } { Set#IsMember(edges#0, $Box(e#1)) } 
          $Is(e#1, Tclass._module.Edge())
             ==> 
            Set#IsMember(Lit(edges#0), $Box(e#1))
             ==> _module.Edge.Edge_q(e#1))
         && _module.Memory.incomingEdges(this, Lit(t#0), Lit(edges#0))
           == Set#FromBoogieMap((lambda $y#1: Box :: 
              $IsBox($y#1, Tclass._module.Edge())
                 && 
                Set#IsMember(Lit(edges#0), $y#1)
                 && _module.Edge.t($Unbox($y#1): DatatypeType) == Lit(t#0))));
// definition axiom for _module.Memory.incomingEdges for all literals (revealed)
axiom {:id "id628"} 2 <= $FunctionContextHeight
   ==> (forall this: ref, t#0: ref, edges#0: Set :: 
    {:weight 3} { _module.Memory.incomingEdges(Lit(this), Lit(t#0), Lit(edges#0)) } 
    _module.Memory.incomingEdges#canCall(Lit(this), Lit(t#0), Lit(edges#0))
         || (2 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(t#0, Tclass._module.Object())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> (forall e#2: DatatypeType :: 
          { _module.Edge.t(e#2) } { Set#IsMember(edges#0, $Box(e#2)) } 
          $Is(e#2, Tclass._module.Edge())
             ==> 
            Set#IsMember(Lit(edges#0), $Box(e#2))
             ==> _module.Edge.Edge_q(e#2))
         && _module.Memory.incomingEdges(Lit(this), Lit(t#0), Lit(edges#0))
           == Set#FromBoogieMap((lambda $y#2: Box :: 
              $IsBox($y#2, Tclass._module.Edge())
                 && 
                Set#IsMember(Lit(edges#0), $y#2)
                 && _module.Edge.t($Unbox($y#2): DatatypeType) == Lit(t#0))));
}

function _module.Memory.incomingEdges#canCall(this: ref, t#0: ref, edges#0: Set) : bool;

function _module.Memory.incomingEdges#requires(ref, ref, Set) : bool;

// #requires axiom for _module.Memory.incomingEdges
axiom (forall this: ref, t#0: ref, edges#0: Set :: 
  { _module.Memory.incomingEdges#requires(this, t#0, edges#0) } 
  this != null
       && $Is(this, Tclass._module.Memory())
       && $Is(t#0, Tclass._module.Object())
       && $Is(edges#0, TSet(Tclass._module.Edge()))
     ==> _module.Memory.incomingEdges#requires(this, t#0, edges#0) == true);

procedure {:verboseName "Memory.incomingEdges (well-formedness)"} CheckWellformed$$_module.Memory.incomingEdges(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    t#0: ref where $Is(t#0, Tclass._module.Object()), 
    edges#0: Set where $Is(edges#0, TSet(Tclass._module.Edge())))
   returns (rs#0: Set);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id629"} Set#Subset(rs#0, edges#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.incomingEdges (well-formedness)"} CheckWellformed$$_module.Memory.incomingEdges(this: ref, t#0: ref, edges#0: Set) returns (rs#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var e#3: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Memory.incomingEdges(this, t#0, edges#0), TSet(Tclass._module.Edge()));
        assume $Is(rs#0, TSet(Tclass._module.Edge()));
        assume {:id "id630"} Set#Subset(rs#0, edges#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc e#3;
        if ($Is(e#3, Tclass._module.Edge()) && $IsAlloc(e#3, Tclass._module.Edge(), $Heap))
        {
            if (Set#IsMember(edges#0, $Box(e#3)))
            {
                assume _module.Edge.Edge_q(e#3);
            }

            if (Set#IsMember(edges#0, $Box(e#3)) && _module.Edge.t(e#3) == t#0)
            {
            }
        }

        // End Comprehension WF check
        assume {:id "id631"} _module.Memory.incomingEdges(this, t#0, edges#0)
           == Set#FromBoogieMap((lambda $y#4: Box :: 
              $IsBox($y#4, Tclass._module.Edge())
                 && 
                Set#IsMember(edges#0, $y#4)
                 && _module.Edge.t($Unbox($y#4): DatatypeType) == t#0));
        assume (forall e#4: DatatypeType :: 
          { _module.Edge.t(e#4) } { Set#IsMember(edges#0, $Box(e#4)) } 
          $Is(e#4, Tclass._module.Edge())
             ==> 
            Set#IsMember(edges#0, $Box(e#4))
             ==> _module.Edge.Edge_q(e#4));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.incomingEdges(this, t#0, edges#0), TSet(Tclass._module.Edge()));
        assume {:id "id632"} _module.Memory.incomingEdges(this, t#0, edges#0) == rs#0;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.refCountEdges
function _module.Memory.refCountEdges(this: ref, t#0: ref, edges#0: Set) : int
uses {
// consequence axiom for _module.Memory.refCountEdges
axiom 3 <= $FunctionContextHeight
   ==> (forall this: ref, t#0: ref, edges#0: Set :: 
    { _module.Memory.refCountEdges(this, t#0, edges#0) } 
    _module.Memory.refCountEdges#canCall(this, t#0, edges#0)
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(t#0, Tclass._module.Object())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> LitInt(0) <= _module.Memory.refCountEdges(this, t#0, edges#0));
// definition axiom for _module.Memory.refCountEdges (revealed)
axiom {:id "id633"} 3 <= $FunctionContextHeight
   ==> (forall this: ref, t#0: ref, edges#0: Set :: 
    { _module.Memory.refCountEdges(this, t#0, edges#0) } 
    _module.Memory.refCountEdges#canCall(this, t#0, edges#0)
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(t#0, Tclass._module.Object())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> _module.Memory.incomingEdges#canCall(this, t#0, edges#0)
         && _module.Memory.refCountEdges(this, t#0, edges#0)
           == Set#Card(_module.Memory.incomingEdges(this, t#0, edges#0)));
// definition axiom for _module.Memory.refCountEdges for decreasing-related literals (revealed)
axiom {:id "id634"} 3 <= $FunctionContextHeight
   ==> (forall this: ref, t#0: ref, edges#0: Set :: 
    {:weight 3} { _module.Memory.refCountEdges(this, Lit(t#0), Lit(edges#0)) } 
    _module.Memory.refCountEdges#canCall(this, Lit(t#0), Lit(edges#0))
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(t#0, Tclass._module.Object())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> _module.Memory.incomingEdges#canCall(this, Lit(t#0), Lit(edges#0))
         && _module.Memory.refCountEdges(this, Lit(t#0), Lit(edges#0))
           == Set#Card(_module.Memory.incomingEdges(this, Lit(t#0), Lit(edges#0))));
// definition axiom for _module.Memory.refCountEdges for all literals (revealed)
axiom {:id "id635"} 3 <= $FunctionContextHeight
   ==> (forall this: ref, t#0: ref, edges#0: Set :: 
    {:weight 3} { _module.Memory.refCountEdges(Lit(this), Lit(t#0), Lit(edges#0)) } 
    _module.Memory.refCountEdges#canCall(Lit(this), Lit(t#0), Lit(edges#0))
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(t#0, Tclass._module.Object())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> _module.Memory.incomingEdges#canCall(Lit(this), Lit(t#0), Lit(edges#0))
         && _module.Memory.refCountEdges(Lit(this), Lit(t#0), Lit(edges#0))
           == Set#Card(Lit(_module.Memory.incomingEdges(Lit(this), Lit(t#0), Lit(edges#0)))));
}

function _module.Memory.refCountEdges#canCall(this: ref, t#0: ref, edges#0: Set) : bool;

function _module.Memory.refCountEdges#requires(ref, ref, Set) : bool;

// #requires axiom for _module.Memory.refCountEdges
axiom (forall this: ref, t#0: ref, edges#0: Set :: 
  { _module.Memory.refCountEdges#requires(this, t#0, edges#0) } 
  this != null
       && $Is(this, Tclass._module.Memory())
       && $Is(t#0, Tclass._module.Object())
       && $Is(edges#0, TSet(Tclass._module.Edge()))
     ==> _module.Memory.refCountEdges#requires(this, t#0, edges#0) == true);

procedure {:verboseName "Memory.refCountEdges (well-formedness)"} CheckWellformed$$_module.Memory.refCountEdges(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    t#0: ref where $Is(t#0, Tclass._module.Object()), 
    edges#0: Set where $Is(edges#0, TSet(Tclass._module.Edge())));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.refCountEdges (well-formedness)"} CheckWellformed$$_module.Memory.refCountEdges(this: ref, t#0: ref, edges#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##t#0: ref;
  var ##edges#0: Set;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.Memory.refCountEdges(this, t#0, edges#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##t#0 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0, Tclass._module.Object(), $Heap);
        ##edges#0 := edges#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##edges#0, TSet(Tclass._module.Edge()), $Heap);
        assume _module.Memory.incomingEdges#canCall(this, t#0, edges#0);
        assert {:id "id636"} $Is(Set#Card(_module.Memory.incomingEdges(this, t#0, edges#0)), Tclass._System.nat());
        assume {:id "id637"} _module.Memory.refCountEdges(this, t#0, edges#0)
           == Set#Card(_module.Memory.incomingEdges(this, t#0, edges#0));
        assume _module.Memory.incomingEdges#canCall(this, t#0, edges#0);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.refCountEdges(this, t#0, edges#0), Tclass._System.nat());
        return;

        assume false;
    }
}



// function declaration for _module.Memory.edges
function _module.Memory.edges($heap: Heap, this: ref, os#0: Set) : Set
uses {
// consequence axiom for _module.Memory.edges
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { _module.Memory.edges($Heap, this, os#0) } 
    _module.Memory.edges#canCall($Heap, this, os#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && 
          $Is(os#0, TSet(Tclass._module.Object()))
           && $IsAlloc(os#0, TSet(Tclass._module.Object()), $Heap))
       ==> (forall edge#0: DatatypeType :: 
          { _module.Edge.t(edge#0) } 
            { _module.Edge.f(edge#0) } 
            { _module.Edge.n(edge#0) } 
            { Set#IsMember(_module.Memory.edges($Heap, this, os#0), $Box(edge#0)) } 
          $Is(edge#0, Tclass._module.Edge())
               && Set#IsMember(_module.Memory.edges($Heap, this, os#0), $Box(edge#0))
             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, _module.Edge.f(edge#0), _module.Object.fields)): Map), 
                $Box(_module.Edge.n(edge#0)))
               && $Unbox(Map#Elements($Unbox(read($Heap, _module.Edge.f(edge#0), _module.Object.fields)): Map)[$Box(_module.Edge.n(edge#0))]): ref
                 == _module.Edge.t(edge#0))
         && (Set#Equal(os#0, Set#Empty(): Set)
           ==> Set#Equal(_module.Memory.edges($Heap, this, os#0), Set#Empty(): Set))
         && $Is(_module.Memory.edges($Heap, this, os#0), TSet(Tclass._module.Edge())));
// alloc consequence axiom for _module.Memory.edges
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { $IsAlloc(_module.Memory.edges($Heap, this, os#0), TSet(Tclass._module.Edge()), $Heap) } 
    _module.Memory.edges#canCall($Heap, this, os#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && this != null
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && 
          $Is(os#0, TSet(Tclass._module.Object()))
           && $IsAlloc(os#0, TSet(Tclass._module.Object()), $Heap))
       ==> $IsAlloc(_module.Memory.edges($Heap, this, os#0), TSet(Tclass._module.Edge()), $Heap));
// definition axiom for _module.Memory.edges (revealed)
axiom {:id "id638"} 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { _module.Memory.edges($Heap, this, os#0), $IsGoodHeap($Heap) } 
    _module.Memory.edges#canCall($Heap, this, os#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> _module.Memory.edges($Heap, this, os#0)
         == Set#FromBoogieMap((lambda $y#0: Box :: 
            (exists o#0: ref, n#0: Seq :: 
              { $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref } 
                { Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0)) } 
              $Is(o#0, Tclass._module.Object())
                 && $Is(n#0, TSeq(TChar))
                 && 
                Set#IsMember(os#0, $Box(o#0))
                 && Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0))
                 && $y#0
                   == $Box(#_module.Edge.Edge(o#0, 
                      n#0, 
                      $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref))))));
}

function _module.Memory.edges#canCall($heap: Heap, this: ref, os#0: Set) : bool;

// frame axiom for _module.Memory.edges
axiom (forall $h0: Heap, $h1: Heap, this: ref, os#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.edges($h1, this, os#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && (_module.Memory.edges#canCall($h0, this, os#0)
         || $Is(os#0, TSet(Tclass._module.Object())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(os#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.edges($h0, this, os#0) == _module.Memory.edges($h1, this, os#0));

function _module.Memory.edges#requires(Heap, ref, Set) : bool;

// #requires axiom for _module.Memory.edges
axiom (forall $Heap: Heap, this: ref, os#0: Set :: 
  { _module.Memory.edges#requires($Heap, this, os#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $Heap)
       && $Is(os#0, TSet(Tclass._module.Object()))
     ==> _module.Memory.edges#requires($Heap, this, os#0) == true);

procedure {:verboseName "Memory.edges (well-formedness)"} CheckWellformed$$_module.Memory.edges(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set where $Is(os#0, TSet(Tclass._module.Object())))
   returns (r#0: Set);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id639"} (forall edge#1: DatatypeType :: 
    { _module.Edge.t(edge#1) } 
      { _module.Edge.f(edge#1) } 
      { _module.Edge.n(edge#1) } 
      { Set#IsMember(r#0, $Box(edge#1)) } 
    $Is(edge#1, Tclass._module.Edge()) && Set#IsMember(r#0, $Box(edge#1))
       ==> Set#IsMember(Map#Domain($Unbox(read($Heap, _module.Edge.f(edge#1), _module.Object.fields)): Map), 
          $Box(_module.Edge.n(edge#1)))
         && $Unbox(Map#Elements($Unbox(read($Heap, _module.Edge.f(edge#1), _module.Object.fields)): Map)[$Box(_module.Edge.n(edge#1))]): ref
           == _module.Edge.t(edge#1));
  ensures {:id "id640"} Set#Equal(os#0, Set#Empty(): Set) ==> Set#Equal(r#0, Set#Empty(): Set);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.edges (well-formedness)"} CheckWellformed$$_module.Memory.edges(this: ref, os#0: Set) returns (r#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var edge#2: DatatypeType;
  var o#1: ref;
  var n#1: Seq;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(os#0, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Memory.edges($Heap, this, os#0), TSet(Tclass._module.Edge()));
        assume $Is(r#0, TSet(Tclass._module.Edge()));
        havoc edge#2;
        assume $Is(edge#2, Tclass._module.Edge())
           && $IsAlloc(edge#2, Tclass._module.Edge(), $Heap);
        if (*)
        {
            assume {:id "id641"} Set#IsMember(r#0, $Box(edge#2));
            assume _module.Edge.Edge_q(edge#2);
            assume _module.Edge.Edge_q(edge#2);
            assert {:id "id642"} _module.Edge.f(edge#2) != null;
            assume {:id "id643"} Set#IsMember(Map#Domain($Unbox(read($Heap, _module.Edge.f(edge#2), _module.Object.fields)): Map), 
              $Box(_module.Edge.n(edge#2)));
            assume _module.Edge.Edge_q(edge#2);
            assert {:id "id644"} _module.Edge.f(edge#2) != null;
            assume _module.Edge.Edge_q(edge#2);
            assert {:id "id645"} Set#IsMember(Map#Domain($Unbox(read($Heap, _module.Edge.f(edge#2), _module.Object.fields)): Map), 
              $Box(_module.Edge.n(edge#2)));
            assume _module.Edge.Edge_q(edge#2);
            assume {:id "id646"} $Unbox(Map#Elements($Unbox(read($Heap, _module.Edge.f(edge#2), _module.Object.fields)): Map)[$Box(_module.Edge.n(edge#2))]): ref
               == _module.Edge.t(edge#2);
        }
        else
        {
            assume {:id "id647"} Set#IsMember(r#0, $Box(edge#2))
               ==> Set#IsMember(Map#Domain($Unbox(read($Heap, _module.Edge.f(edge#2), _module.Object.fields)): Map), 
                  $Box(_module.Edge.n(edge#2)))
                 && $Unbox(Map#Elements($Unbox(read($Heap, _module.Edge.f(edge#2), _module.Object.fields)): Map)[$Box(_module.Edge.n(edge#2))]): ref
                   == _module.Edge.t(edge#2);
        }

        assume {:id "id648"} (forall edge#1: DatatypeType :: 
          { _module.Edge.t(edge#1) } 
            { _module.Edge.f(edge#1) } 
            { _module.Edge.n(edge#1) } 
            { Set#IsMember(r#0, $Box(edge#1)) } 
          $Is(edge#1, Tclass._module.Edge()) && Set#IsMember(r#0, $Box(edge#1))
             ==> Set#IsMember(Map#Domain($Unbox(read($Heap, _module.Edge.f(edge#1), _module.Object.fields)): Map), 
                $Box(_module.Edge.n(edge#1)))
               && $Unbox(Map#Elements($Unbox(read($Heap, _module.Edge.f(edge#1), _module.Object.fields)): Map)[$Box(_module.Edge.n(edge#1))]): ref
                 == _module.Edge.t(edge#1));
        if (*)
        {
            assume {:id "id649"} Set#Equal(os#0, Set#Empty(): Set);
            assume {:id "id650"} Set#Equal(r#0, Set#Empty(): Set);
        }
        else
        {
            assume {:id "id651"} Set#Equal(os#0, Set#Empty(): Set) ==> Set#Equal(r#0, Set#Empty(): Set);
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc o#1;
        havoc n#1;
        if ($Is(o#1, Tclass._module.Object())
           && $IsAlloc(o#1, Tclass._module.Object(), $Heap)
           && 
          $Is(n#1, TSeq(TChar))
           && $IsAlloc(n#1, TSeq(TChar), $Heap))
        {
            if (Set#IsMember(os#0, $Box(o#1)))
            {
                assert {:id "id652"} o#1 != null;
                b$reqreads#0 := $_ReadsFrame[o#1, _module.Object.fields];
            }

            if (Set#IsMember(os#0, $Box(o#1))
               && Set#IsMember(Map#Domain($Unbox(read($Heap, o#1, _module.Object.fields)): Map), $Box(n#1)))
            {
                assert {:id "id653"} o#1 != null;
                b$reqreads#1 := $_ReadsFrame[o#1, _module.Object.fields];
                assert {:id "id654"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#1, _module.Object.fields)): Map), $Box(n#1));
            }
        }

        // End Comprehension WF check
        assume {:id "id655"} _module.Memory.edges($Heap, this, os#0)
           == Set#FromBoogieMap((lambda $y#2: Box :: 
              (exists o#2: ref, n#2: Seq :: 
                { $Unbox(Map#Elements($Unbox(read($Heap, o#2, _module.Object.fields)): Map)[$Box(n#2)]): ref } 
                  { Set#IsMember(Map#Domain($Unbox(read($Heap, o#2, _module.Object.fields)): Map), $Box(n#2)) } 
                $Is(o#2, Tclass._module.Object())
                   && $Is(n#2, TSeq(TChar))
                   && 
                  Set#IsMember(os#0, $Box(o#2))
                   && Set#IsMember(Map#Domain($Unbox(read($Heap, o#2, _module.Object.fields)): Map), $Box(n#2))
                   && $y#2
                     == $Box(#_module.Edge.Edge(o#2, 
                        n#2, 
                        $Unbox(Map#Elements($Unbox(read($Heap, o#2, _module.Object.fields)): Map)[$Box(n#2)]): ref)))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.edges($Heap, this, os#0), TSet(Tclass._module.Edge()));
        assume {:id "id656"} _module.Memory.edges($Heap, this, os#0) == r#0;
        assert {:id "id657"} b$reqreads#0;
        assert {:id "id658"} b$reqreads#1;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.wholeEnchilada
function _module.Memory.wholeEnchilada($heap: Heap, this: ref, os#0: Set) : bool
uses {
// definition axiom for _module.Memory.wholeEnchilada (revealed)
axiom {:id "id659"} 6 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { _module.Memory.wholeEnchilada($Heap, this, os#0), $IsGoodHeap($Heap) } 
    _module.Memory.wholeEnchilada#canCall($Heap, this, os#0)
         || (6 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> _module.Memory.isosRefCountZeroOrOne#canCall($Heap, this, os#0)
         && (_module.Memory.isosRefCountZeroOrOne($Heap, this, os#0)
           ==> _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, os#0))
         && _module.Memory.wholeEnchilada($Heap, this, os#0)
           == (_module.Memory.isosRefCountZeroOrOne($Heap, this, os#0)
             && _module.Memory.heapExternalsZeroOrOne($Heap, this, os#0)));
}

function _module.Memory.wholeEnchilada#canCall($heap: Heap, this: ref, os#0: Set) : bool;

// frame axiom for _module.Memory.wholeEnchilada
axiom (forall $h0: Heap, $h1: Heap, this: ref, os#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.wholeEnchilada($h1, this, os#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && (_module.Memory.wholeEnchilada#canCall($h0, this, os#0)
         || $Is(os#0, TSet(Tclass._module.Object())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(os#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.wholeEnchilada($h0, this, os#0)
       == _module.Memory.wholeEnchilada($h1, this, os#0));

function _module.Memory.wholeEnchilada#requires(Heap, ref, Set) : bool;

// #requires axiom for _module.Memory.wholeEnchilada
axiom (forall $Heap: Heap, this: ref, os#0: Set :: 
  { _module.Memory.wholeEnchilada#requires($Heap, this, os#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $Heap)
       && $Is(os#0, TSet(Tclass._module.Object()))
     ==> _module.Memory.wholeEnchilada#requires($Heap, this, os#0) == true);

procedure {:verboseName "Memory.wholeEnchilada (well-formedness)"} CheckWellformed$$_module.Memory.wholeEnchilada(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set where $Is(os#0, TSet(Tclass._module.Object())));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.wholeEnchilada (well-formedness)"} CheckWellformed$$_module.Memory.wholeEnchilada(this: ref, os#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##os#0: Set;
  var ##os#1: Set;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(os#0, $Box($o)));
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
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##os#0 := os#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#0, TSet(Tclass._module.Object()), $Heap);
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember(##os#0, $Box($o))
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Memory.isosRefCountZeroOrOne#canCall($Heap, this, os#0);
        if (_module.Memory.isosRefCountZeroOrOne($Heap, this, os#0))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##os#1 := os#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##os#1, TSet(Tclass._module.Object()), $Heap);
            b$reqreads#1 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(##os#1, $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, os#0);
        }

        assume {:id "id660"} _module.Memory.wholeEnchilada($Heap, this, os#0)
           == (_module.Memory.isosRefCountZeroOrOne($Heap, this, os#0)
             && _module.Memory.heapExternalsZeroOrOne($Heap, this, os#0));
        assume _module.Memory.isosRefCountZeroOrOne#canCall($Heap, this, os#0)
           && (_module.Memory.isosRefCountZeroOrOne($Heap, this, os#0)
             ==> _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, os#0));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.wholeEnchilada($Heap, this, os#0), TBool);
        assert {:id "id661"} b$reqreads#0;
        assert {:id "id662"} b$reqreads#1;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.heapExternalsZeroOrOne
function _module.Memory.heapExternalsZeroOrOne($heap: Heap, this: ref, os#0: Set) : bool
uses {
// definition axiom for _module.Memory.heapExternalsZeroOrOne (revealed)
axiom {:id "id663"} 5 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { _module.Memory.heapExternalsZeroOrOne($Heap, this, os#0), $IsGoodHeap($Heap) } 
    _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, os#0)
         || (5 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> _module.Memory.edges#canCall($Heap, this, os#0)
         && (var edges#0 := _module.Memory.edges($Heap, this, os#0); 
          _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, edges#0))
         && _module.Memory.heapExternalsZeroOrOne($Heap, this, os#0)
           == (var edges#0 := _module.Memory.edges($Heap, this, os#0); 
            _module.Memory.heapExternalsZeroOrOneEdges(this, edges#0)));
}

function _module.Memory.heapExternalsZeroOrOne#canCall($heap: Heap, this: ref, os#0: Set) : bool;

// frame axiom for _module.Memory.heapExternalsZeroOrOne
axiom (forall $h0: Heap, $h1: Heap, this: ref, os#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.heapExternalsZeroOrOne($h1, this, os#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && (_module.Memory.heapExternalsZeroOrOne#canCall($h0, this, os#0)
         || $Is(os#0, TSet(Tclass._module.Object())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(os#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.heapExternalsZeroOrOne($h0, this, os#0)
       == _module.Memory.heapExternalsZeroOrOne($h1, this, os#0));

function _module.Memory.heapExternalsZeroOrOne#requires(Heap, ref, Set) : bool;

// #requires axiom for _module.Memory.heapExternalsZeroOrOne
axiom (forall $Heap: Heap, this: ref, os#0: Set :: 
  { _module.Memory.heapExternalsZeroOrOne#requires($Heap, this, os#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $Heap)
       && $Is(os#0, TSet(Tclass._module.Object()))
     ==> _module.Memory.heapExternalsZeroOrOne#requires($Heap, this, os#0) == true);

procedure {:verboseName "Memory.heapExternalsZeroOrOne (well-formedness)"} CheckWellformed$$_module.Memory.heapExternalsZeroOrOne(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set where $Is(os#0, TSet(Tclass._module.Object())));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.heapExternalsZeroOrOne (well-formedness)"} CheckWellformed$$_module.Memory.heapExternalsZeroOrOne(this: ref, os#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var edges#Z#0: Set;
  var let#0#0#0: Set;
  var ##os#0: Set;
  var ##edges#0: Set;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(os#0, $Box($o)));
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
        havoc edges#Z#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##os#0 := os#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#0, TSet(Tclass._module.Object()), $Heap);
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember(##os#0, $Box($o))
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Memory.edges#canCall($Heap, this, os#0);
        assume {:id "id664"} let#0#0#0 == _module.Memory.edges($Heap, this, os#0);
        assume _module.Memory.edges#canCall($Heap, this, os#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TSet(Tclass._module.Edge()));
        assume {:id "id665"} edges#Z#0 == let#0#0#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##edges#0 := edges#Z#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##edges#0, TSet(Tclass._module.Edge()), $Heap);
        assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, edges#Z#0);
        assume {:id "id666"} _module.Memory.heapExternalsZeroOrOne($Heap, this, os#0)
           == _module.Memory.heapExternalsZeroOrOneEdges(this, edges#Z#0);
        assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, edges#Z#0);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.heapExternalsZeroOrOne($Heap, this, os#0), TBool);
        assert {:id "id667"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.heapExternalsZeroOrOneEdges
function _module.Memory.heapExternalsZeroOrOneEdges(this: ref, edges#0: Set) : bool
uses {
// definition axiom for _module.Memory.heapExternalsZeroOrOneEdges (revealed)
axiom {:id "id668"} 4 <= $FunctionContextHeight
   ==> (forall this: ref, edges#0: Set :: 
    { _module.Memory.heapExternalsZeroOrOneEdges(this, edges#0) } 
    _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, edges#0)
         || (4 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> _module.Memory.justHeapExternalEdges#canCall(this, edges#0)
         && (var heapExternalEdges#0 := _module.Memory.justHeapExternalEdges(this, edges#0); 
          (forall he#0: DatatypeType :: 
              { _module.Edge.t(he#0) } { Set#IsMember(heapExternalEdges#0, $Box(he#0)) } 
              $Is(he#0, Tclass._module.Edge())
                 ==> 
                Set#IsMember(heapExternalEdges#0, $Box(he#0))
                 ==> _module.Edge.Edge_q(he#0))
             && (var allRelevantHeapRegions#0 := Set#FromBoogieMap((lambda $y#1: Box :: 
                    (exists he#0: DatatypeType :: 
                      { _module.Edge.t(he#0) } { Set#IsMember(heapExternalEdges#0, $Box(he#0)) } 
                      $Is(he#0, Tclass._module.Edge())
                         && Set#IsMember(heapExternalEdges#0, $Box(he#0))
                         && $y#1 == $Box(_module.Object.region(_module.Edge.t(he#0)))))); 
              (forall r#0: DatatypeType :: 
                { _module.Memory.externalEdges(this, r#0, heapExternalEdges#0) } 
                  { Set#IsMember(allRelevantHeapRegions#0, $Box(r#0)) } 
                $Is(r#0, Tclass._module.Region())
                   ==> 
                  Set#IsMember(allRelevantHeapRegions#0, $Box(r#0))
                   ==> _module.Memory.externalEdges#canCall(this, r#0, heapExternalEdges#0))))
         && _module.Memory.heapExternalsZeroOrOneEdges(this, edges#0)
           == (var heapExternalEdges#0 := _module.Memory.justHeapExternalEdges(this, edges#0); 
            (var allRelevantHeapRegions#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
                    (exists he#0: DatatypeType :: 
                      { _module.Edge.t(he#0) } { Set#IsMember(heapExternalEdges#0, $Box(he#0)) } 
                      $Is(he#0, Tclass._module.Edge())
                         && Set#IsMember(heapExternalEdges#0, $Box(he#0))
                         && $y#0 == $Box(_module.Object.region(_module.Edge.t(he#0)))))); 
              (var heapExternalEdgesPartitionedByRegion#0 := Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
                        $IsBox($w#0, Tclass._module.Region())
                           && Set#IsMember(allRelevantHeapRegions#0, $w#0))), 
                    (lambda $w#0: Box :: 
                      $Box(_module.Memory.externalEdges(this, $Unbox($w#0): DatatypeType, heapExternalEdges#0))), 
                    TMap(Tclass._module.Region(), TSet(Tclass._module.Edge()))); 
                (forall hr#0: DatatypeType :: 
                  { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#0)[$Box(hr#0)]): Set } 
                    { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#0), $Box(hr#0)) } 
                  $Is(hr#0, Tclass._module.Region())
                       && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#0), $Box(hr#0))
                     ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#0)[$Box(hr#0)]): Set)
                       <= LitInt(1))))));
// definition axiom for _module.Memory.heapExternalsZeroOrOneEdges for decreasing-related literals (revealed)
axiom {:id "id669"} 4 <= $FunctionContextHeight
   ==> (forall this: ref, edges#0: Set :: 
    {:weight 3} { _module.Memory.heapExternalsZeroOrOneEdges(this, Lit(edges#0)) } 
    _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, Lit(edges#0))
         || (4 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> _module.Memory.justHeapExternalEdges#canCall(this, Lit(edges#0))
         && (var heapExternalEdges#1 := _module.Memory.justHeapExternalEdges(this, Lit(edges#0)); 
          (forall he#1: DatatypeType :: 
              { _module.Edge.t(he#1) } { Set#IsMember(heapExternalEdges#1, $Box(he#1)) } 
              $Is(he#1, Tclass._module.Edge())
                 ==> 
                Set#IsMember(heapExternalEdges#1, $Box(he#1))
                 ==> _module.Edge.Edge_q(he#1))
             && (var allRelevantHeapRegions#1 := Set#FromBoogieMap((lambda $y#3: Box :: 
                    (exists he#1: DatatypeType :: 
                      { _module.Edge.t(he#1) } { Set#IsMember(heapExternalEdges#1, $Box(he#1)) } 
                      $Is(he#1, Tclass._module.Edge())
                         && Set#IsMember(heapExternalEdges#1, $Box(he#1))
                         && $y#3 == $Box(_module.Object.region(_module.Edge.t(he#1)))))); 
              (forall r#0: DatatypeType :: 
                { _module.Memory.externalEdges(this, r#0, heapExternalEdges#1) } 
                  { Set#IsMember(allRelevantHeapRegions#1, $Box(r#0)) } 
                $Is(r#0, Tclass._module.Region())
                   ==> 
                  Set#IsMember(allRelevantHeapRegions#1, $Box(r#0))
                   ==> _module.Memory.externalEdges#canCall(this, r#0, heapExternalEdges#1))))
         && _module.Memory.heapExternalsZeroOrOneEdges(this, Lit(edges#0))
           == (var heapExternalEdges#1 := _module.Memory.justHeapExternalEdges(this, Lit(edges#0)); 
            (var allRelevantHeapRegions#1 := Set#FromBoogieMap((lambda $y#2: Box :: 
                    (exists he#1: DatatypeType :: 
                      { _module.Edge.t(he#1) } { Set#IsMember(heapExternalEdges#1, $Box(he#1)) } 
                      $Is(he#1, Tclass._module.Edge())
                         && Set#IsMember(heapExternalEdges#1, $Box(he#1))
                         && $y#2 == $Box(_module.Object.region(_module.Edge.t(he#1)))))); 
              (var heapExternalEdgesPartitionedByRegion#1 := Map#Glue(Set#FromBoogieMap((lambda $w#2: Box :: 
                        $IsBox($w#2, Tclass._module.Region())
                           && Set#IsMember(allRelevantHeapRegions#1, $w#2))), 
                    (lambda $w#2: Box :: 
                      $Box(_module.Memory.externalEdges(this, $Unbox($w#2): DatatypeType, heapExternalEdges#1))), 
                    TMap(Tclass._module.Region(), TSet(Tclass._module.Edge()))); 
                (forall hr#1: DatatypeType :: 
                  { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#1)[$Box(hr#1)]): Set } 
                    { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#1), $Box(hr#1)) } 
                  $Is(hr#1, Tclass._module.Region())
                       && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#1), $Box(hr#1))
                     ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#1)[$Box(hr#1)]): Set)
                       <= LitInt(1))))));
// definition axiom for _module.Memory.heapExternalsZeroOrOneEdges for all literals (revealed)
axiom {:id "id670"} 4 <= $FunctionContextHeight
   ==> (forall this: ref, edges#0: Set :: 
    {:weight 3} { _module.Memory.heapExternalsZeroOrOneEdges(Lit(this), Lit(edges#0)) } 
    _module.Memory.heapExternalsZeroOrOneEdges#canCall(Lit(this), Lit(edges#0))
         || (4 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> _module.Memory.justHeapExternalEdges#canCall(Lit(this), Lit(edges#0))
         && (var heapExternalEdges#2 := Lit(_module.Memory.justHeapExternalEdges(Lit(this), Lit(edges#0))); 
          (forall he#2: DatatypeType :: 
              { _module.Edge.t(he#2) } { Set#IsMember(heapExternalEdges#2, $Box(he#2)) } 
              $Is(he#2, Tclass._module.Edge())
                 ==> 
                Set#IsMember(heapExternalEdges#2, $Box(he#2))
                 ==> _module.Edge.Edge_q(he#2))
             && (var allRelevantHeapRegions#2 := Set#FromBoogieMap((lambda $y#5: Box :: 
                    (exists he#2: DatatypeType :: 
                      { _module.Edge.t(he#2) } { Set#IsMember(heapExternalEdges#2, $Box(he#2)) } 
                      $Is(he#2, Tclass._module.Edge())
                         && Set#IsMember(heapExternalEdges#2, $Box(he#2))
                         && $y#5 == $Box(_module.Object.region(_module.Edge.t(he#2)))))); 
              (forall r#0: DatatypeType :: 
                { _module.Memory.externalEdges(this, r#0, heapExternalEdges#2) } 
                  { Set#IsMember(allRelevantHeapRegions#2, $Box(r#0)) } 
                $Is(r#0, Tclass._module.Region())
                   ==> 
                  Set#IsMember(allRelevantHeapRegions#2, $Box(r#0))
                   ==> _module.Memory.externalEdges#canCall(Lit(this), r#0, heapExternalEdges#2))))
         && _module.Memory.heapExternalsZeroOrOneEdges(Lit(this), Lit(edges#0))
           == (var heapExternalEdges#2 := Lit(_module.Memory.justHeapExternalEdges(Lit(this), Lit(edges#0))); 
            (var allRelevantHeapRegions#2 := Set#FromBoogieMap((lambda $y#4: Box :: 
                    (exists he#2: DatatypeType :: 
                      { _module.Edge.t(he#2) } { Set#IsMember(heapExternalEdges#2, $Box(he#2)) } 
                      $Is(he#2, Tclass._module.Edge())
                         && Set#IsMember(heapExternalEdges#2, $Box(he#2))
                         && $y#4 == $Box(_module.Object.region(_module.Edge.t(he#2)))))); 
              (var heapExternalEdgesPartitionedByRegion#2 := Map#Glue(Set#FromBoogieMap((lambda $w#4: Box :: 
                        $IsBox($w#4, Tclass._module.Region())
                           && Set#IsMember(allRelevantHeapRegions#2, $w#4))), 
                    (lambda $w#4: Box :: 
                      $Box(_module.Memory.externalEdges(Lit(this), $Unbox($w#4): DatatypeType, heapExternalEdges#2))), 
                    TMap(Tclass._module.Region(), TSet(Tclass._module.Edge()))); 
                (forall hr#2: DatatypeType :: 
                  { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#2)[$Box(hr#2)]): Set } 
                    { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#2), $Box(hr#2)) } 
                  $Is(hr#2, Tclass._module.Region())
                       && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#2), $Box(hr#2))
                     ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#2)[$Box(hr#2)]): Set)
                       <= LitInt(1))))));
}

function _module.Memory.heapExternalsZeroOrOneEdges#canCall(this: ref, edges#0: Set) : bool;

function _module.Memory.heapExternalsZeroOrOneEdges#requires(ref, Set) : bool;

// #requires axiom for _module.Memory.heapExternalsZeroOrOneEdges
axiom (forall this: ref, edges#0: Set :: 
  { _module.Memory.heapExternalsZeroOrOneEdges#requires(this, edges#0) } 
  this != null
       && $Is(this, Tclass._module.Memory())
       && $Is(edges#0, TSet(Tclass._module.Edge()))
     ==> _module.Memory.heapExternalsZeroOrOneEdges#requires(this, edges#0) == true);

procedure {:verboseName "Memory.heapExternalsZeroOrOneEdges (well-formedness)"} CheckWellformed$$_module.Memory.heapExternalsZeroOrOneEdges(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    edges#0: Set where $Is(edges#0, TSet(Tclass._module.Edge())));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.heapExternalsZeroOrOneEdges (well-formedness)"} CheckWellformed$$_module.Memory.heapExternalsZeroOrOneEdges(this: ref, edges#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var heapExternalEdges#Z#0: Set;
  var let#0#0#0: Set;
  var ##edges#0: Set;
  var allRelevantHeapRegions#Z#0: Set;
  var let#1#0#0: Set;
  var he#3: DatatypeType;
  var heapExternalEdgesPartitionedByRegion#Z#0: Map;
  var let#2#0#0: Map;
  var r#1: DatatypeType;
  var ##o#0: DatatypeType;
  var ##edges#1: Set;
  var hr#3: DatatypeType;


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
        havoc heapExternalEdges#Z#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##edges#0 := edges#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##edges#0, TSet(Tclass._module.Edge()), $Heap);
        assume _module.Memory.justHeapExternalEdges#canCall(this, edges#0);
        assume {:id "id671"} let#0#0#0 == _module.Memory.justHeapExternalEdges(this, edges#0);
        assume _module.Memory.justHeapExternalEdges#canCall(this, edges#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TSet(Tclass._module.Edge()));
        assume {:id "id672"} heapExternalEdges#Z#0 == let#0#0#0;
        havoc allRelevantHeapRegions#Z#0;
        // Begin Comprehension WF check
        havoc he#3;
        if ($Is(he#3, Tclass._module.Edge()) && $IsAlloc(he#3, Tclass._module.Edge(), $Heap))
        {
            if (Set#IsMember(heapExternalEdges#Z#0, $Box(he#3)))
            {
                assume _module.Edge.Edge_q(he#3);
                assert {:id "id673"} _module.Edge.t(he#3) != null;
            }
        }

        // End Comprehension WF check
        assume {:id "id674"} let#1#0#0
           == Set#FromBoogieMap((lambda $y#7: Box :: 
              (exists he#4: DatatypeType :: 
                { _module.Edge.t(he#4) } { Set#IsMember(heapExternalEdges#Z#0, $Box(he#4)) } 
                $Is(he#4, Tclass._module.Edge())
                   && Set#IsMember(heapExternalEdges#Z#0, $Box(he#4))
                   && $y#7 == $Box(_module.Object.region(_module.Edge.t(he#4))))));
        assume (forall he#4: DatatypeType :: 
          { _module.Edge.t(he#4) } { Set#IsMember(heapExternalEdges#Z#0, $Box(he#4)) } 
          $Is(he#4, Tclass._module.Edge())
             ==> 
            Set#IsMember(heapExternalEdges#Z#0, $Box(he#4))
             ==> _module.Edge.Edge_q(he#4));
        // CheckWellformedWithResult: any expression
        assume $Is(let#1#0#0, TSet(Tclass._module.Region()));
        assume {:id "id675"} allRelevantHeapRegions#Z#0 == let#1#0#0;
        havoc heapExternalEdgesPartitionedByRegion#Z#0;
        // Begin Comprehension WF check
        havoc r#1;
        if ($Is(r#1, Tclass._module.Region())
           && $IsAlloc(r#1, Tclass._module.Region(), $Heap))
        {
            if (Set#IsMember(allRelevantHeapRegions#Z#0, $Box(r#1)))
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
                ##o#0 := r#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##o#0, Tclass._module.Region(), $Heap);
                ##edges#1 := heapExternalEdges#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##edges#1, TSet(Tclass._module.Edge()), $Heap);
                assume _module.Memory.externalEdges#canCall(this, r#1, heapExternalEdges#Z#0);
            }
        }

        // End Comprehension WF check
        assume {:id "id676"} let#2#0#0
           == Map#Glue(Set#FromBoogieMap((lambda $w#7: Box :: 
                $IsBox($w#7, Tclass._module.Region())
                   && Set#IsMember(allRelevantHeapRegions#Z#0, $w#7))), 
            (lambda $w#7: Box :: 
              $Box(_module.Memory.externalEdges(this, $Unbox($w#7): DatatypeType, heapExternalEdges#Z#0))), 
            TMap(Tclass._module.Region(), TSet(Tclass._module.Edge())));
        assume (forall r#0: DatatypeType :: 
          { _module.Memory.externalEdges(this, r#0, heapExternalEdges#Z#0) } 
            { Set#IsMember(allRelevantHeapRegions#Z#0, $Box(r#0)) } 
          $Is(r#0, Tclass._module.Region())
             ==> 
            Set#IsMember(allRelevantHeapRegions#Z#0, $Box(r#0))
             ==> _module.Memory.externalEdges#canCall(this, r#0, heapExternalEdges#Z#0));
        // CheckWellformedWithResult: any expression
        assume $Is(let#2#0#0, TMap(Tclass._module.Region(), TSet(Tclass._module.Edge())));
        assume {:id "id677"} heapExternalEdgesPartitionedByRegion#Z#0 == let#2#0#0;
        // Begin Comprehension WF check
        havoc hr#3;
        if ($Is(hr#3, Tclass._module.Region())
           && $IsAlloc(hr#3, Tclass._module.Region(), $Heap))
        {
            if (Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#Z#0), $Box(hr#3)))
            {
                assert {:id "id678"} Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#Z#0), $Box(hr#3));
            }
        }

        // End Comprehension WF check
        assume {:id "id679"} _module.Memory.heapExternalsZeroOrOneEdges(this, edges#0)
           == (forall hr#4: DatatypeType :: 
            { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#Z#0)[$Box(hr#4)]): Set } 
              { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#Z#0), $Box(hr#4)) } 
            $Is(hr#4, Tclass._module.Region())
                 && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#Z#0), $Box(hr#4))
               ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#Z#0)[$Box(hr#4)]): Set)
                 <= LitInt(1));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.heapExternalsZeroOrOneEdges(this, edges#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module.Memory.heapExternalsZeroOrOneXXX
function _module.Memory.heapExternalsZeroOrOneXXX($heap: Heap, this: ref, os#0: Set) : bool
uses {
// definition axiom for _module.Memory.heapExternalsZeroOrOneXXX (revealed)
axiom {:id "id680"} 5 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { _module.Memory.heapExternalsZeroOrOneXXX($Heap, this, os#0), $IsGoodHeap($Heap) } 
    _module.Memory.heapExternalsZeroOrOneXXX#canCall($Heap, this, os#0)
         || (5 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> _module.Memory.edges#canCall($Heap, this, os#0)
         && _module.Memory.partitionOfJustHeapRegions#canCall(this, os#0)
         && _module.Memory.heapExternalsZeroOrOneXXX($Heap, this, os#0)
           == (var edges#0 := _module.Memory.edges($Heap, this, os#0); 
            (var heapRegionPartitions#0 := _module.Memory.partitionOfJustHeapRegions(this, os#0); 
              (forall hr#0: DatatypeType :: 
                { $Unbox(Map#Elements(heapRegionPartitions#0)[$Box(hr#0)]): Set } 
                  { Set#IsMember(Map#Domain(heapRegionPartitions#0), $Box(hr#0)) } 
                $Is(hr#0, Tclass._module.Region())
                     && Set#IsMember(Map#Domain(heapRegionPartitions#0), $Box(hr#0))
                   ==> Set#Card($Unbox(Map#Elements(heapRegionPartitions#0)[$Box(hr#0)]): Set)
                     <= LitInt(1)))));
}

function _module.Memory.heapExternalsZeroOrOneXXX#canCall($heap: Heap, this: ref, os#0: Set) : bool;

// frame axiom for _module.Memory.heapExternalsZeroOrOneXXX
axiom (forall $h0: Heap, $h1: Heap, this: ref, os#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.heapExternalsZeroOrOneXXX($h1, this, os#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && (_module.Memory.heapExternalsZeroOrOneXXX#canCall($h0, this, os#0)
         || $Is(os#0, TSet(Tclass._module.Object())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(os#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.heapExternalsZeroOrOneXXX($h0, this, os#0)
       == _module.Memory.heapExternalsZeroOrOneXXX($h1, this, os#0));

function _module.Memory.heapExternalsZeroOrOneXXX#requires(Heap, ref, Set) : bool;

// #requires axiom for _module.Memory.heapExternalsZeroOrOneXXX
axiom (forall $Heap: Heap, this: ref, os#0: Set :: 
  { _module.Memory.heapExternalsZeroOrOneXXX#requires($Heap, this, os#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $Heap)
       && $Is(os#0, TSet(Tclass._module.Object()))
     ==> _module.Memory.heapExternalsZeroOrOneXXX#requires($Heap, this, os#0) == true);

procedure {:verboseName "Memory.heapExternalsZeroOrOneXXX (well-formedness)"} CheckWellformed$$_module.Memory.heapExternalsZeroOrOneXXX(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set where $Is(os#0, TSet(Tclass._module.Object())));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.heapExternalsZeroOrOneXXX (well-formedness)"} CheckWellformed$$_module.Memory.heapExternalsZeroOrOneXXX(this: ref, os#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var edges#Z#0: Set;
  var let#0#0#0: Set;
  var ##os#0: Set;
  var heapRegionPartitions#Z#0: Map;
  var let#1#0#0: Map;
  var ##os#1: Set;
  var hr#1: DatatypeType;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(os#0, $Box($o)));
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
        havoc edges#Z#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##os#0 := os#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#0, TSet(Tclass._module.Object()), $Heap);
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember(##os#0, $Box($o))
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Memory.edges#canCall($Heap, this, os#0);
        assume {:id "id681"} let#0#0#0 == _module.Memory.edges($Heap, this, os#0);
        assume _module.Memory.edges#canCall($Heap, this, os#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TSet(Tclass._module.Edge()));
        assume {:id "id682"} edges#Z#0 == let#0#0#0;
        havoc heapRegionPartitions#Z#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##os#1 := os#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#1, TSet(Tclass._module.Object()), $Heap);
        assume _module.Memory.partitionOfJustHeapRegions#canCall(this, os#0);
        assume {:id "id683"} let#1#0#0 == _module.Memory.partitionOfJustHeapRegions(this, os#0);
        assume _module.Memory.partitionOfJustHeapRegions#canCall(this, os#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#1#0#0, TMap(Tclass._module.Region(), TSet(Tclass._module.Object())));
        assume {:id "id684"} heapRegionPartitions#Z#0 == let#1#0#0;
        // Begin Comprehension WF check
        havoc hr#1;
        if ($Is(hr#1, Tclass._module.Region())
           && $IsAlloc(hr#1, Tclass._module.Region(), $Heap))
        {
            if (Set#IsMember(Map#Domain(heapRegionPartitions#Z#0), $Box(hr#1)))
            {
                assert {:id "id685"} Set#IsMember(Map#Domain(heapRegionPartitions#Z#0), $Box(hr#1));
            }
        }

        // End Comprehension WF check
        assume {:id "id686"} _module.Memory.heapExternalsZeroOrOneXXX($Heap, this, os#0)
           == (forall hr#2: DatatypeType :: 
            { $Unbox(Map#Elements(heapRegionPartitions#Z#0)[$Box(hr#2)]): Set } 
              { Set#IsMember(Map#Domain(heapRegionPartitions#Z#0), $Box(hr#2)) } 
            $Is(hr#2, Tclass._module.Region())
                 && Set#IsMember(Map#Domain(heapRegionPartitions#Z#0), $Box(hr#2))
               ==> Set#Card($Unbox(Map#Elements(heapRegionPartitions#Z#0)[$Box(hr#2)]): Set)
                 <= LitInt(1));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.heapExternalsZeroOrOneXXX($Heap, this, os#0), TBool);
        assert {:id "id687"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.isosRefCountZeroOrOne
function _module.Memory.isosRefCountZeroOrOne($heap: Heap, this: ref, os#0: Set) : bool
uses {
// definition axiom for _module.Memory.isosRefCountZeroOrOne (revealed)
axiom {:id "id688"} 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { _module.Memory.isosRefCountZeroOrOne($Heap, this, os#0), $IsGoodHeap($Heap) } 
    _module.Memory.isosRefCountZeroOrOne#canCall($Heap, this, os#0)
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> _module.Memory.edges#canCall($Heap, this, os#0)
         && (var edges#0 := _module.Memory.edges($Heap, this, os#0); 
          _module.Memory.justTheIsos#canCall($Heap, this, os#0)
             && (var isos#0 := _module.Memory.justTheIsos($Heap, this, os#0); 
              (forall i#0: ref :: 
                { _module.Memory.refCountEdges(this, i#0, edges#0) } 
                  { Set#IsMember(isos#0, $Box(i#0)) } 
                $Is(i#0, Tclass._module.Object())
                   ==> 
                  Set#IsMember(isos#0, $Box(i#0))
                   ==> _module.Memory.refCountEdges#canCall(this, i#0, edges#0))))
         && _module.Memory.isosRefCountZeroOrOne($Heap, this, os#0)
           == (var edges#0 := _module.Memory.edges($Heap, this, os#0); 
            (var isos#0 := _module.Memory.justTheIsos($Heap, this, os#0); 
              (forall i#0: ref :: 
                { _module.Memory.refCountEdges(this, i#0, edges#0) } 
                  { Set#IsMember(isos#0, $Box(i#0)) } 
                $Is(i#0, Tclass._module.Object()) && Set#IsMember(isos#0, $Box(i#0))
                   ==> _module.Memory.refCountEdges(this, i#0, edges#0) <= LitInt(1)))));
}

function _module.Memory.isosRefCountZeroOrOne#canCall($heap: Heap, this: ref, os#0: Set) : bool;

// frame axiom for _module.Memory.isosRefCountZeroOrOne
axiom (forall $h0: Heap, $h1: Heap, this: ref, os#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.isosRefCountZeroOrOne($h1, this, os#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && (_module.Memory.isosRefCountZeroOrOne#canCall($h0, this, os#0)
         || $Is(os#0, TSet(Tclass._module.Object())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(os#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.isosRefCountZeroOrOne($h0, this, os#0)
       == _module.Memory.isosRefCountZeroOrOne($h1, this, os#0));

function _module.Memory.isosRefCountZeroOrOne#requires(Heap, ref, Set) : bool;

// #requires axiom for _module.Memory.isosRefCountZeroOrOne
axiom (forall $Heap: Heap, this: ref, os#0: Set :: 
  { _module.Memory.isosRefCountZeroOrOne#requires($Heap, this, os#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $Heap)
       && $Is(os#0, TSet(Tclass._module.Object()))
     ==> _module.Memory.isosRefCountZeroOrOne#requires($Heap, this, os#0) == true);

procedure {:verboseName "Memory.isosRefCountZeroOrOne (well-formedness)"} CheckWellformed$$_module.Memory.isosRefCountZeroOrOne(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set where $Is(os#0, TSet(Tclass._module.Object())));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.isosRefCountZeroOrOne (well-formedness)"} CheckWellformed$$_module.Memory.isosRefCountZeroOrOne(this: ref, os#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var edges#Z#0: Set;
  var let#0#0#0: Set;
  var ##os#0: Set;
  var isos#Z#0: Set;
  var let#1#0#0: Set;
  var ##os#1: Set;
  var i#1: ref;
  var ##t#0: ref;
  var ##edges#0: Set;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(os#0, $Box($o)));
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
        havoc edges#Z#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##os#0 := os#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#0, TSet(Tclass._module.Object()), $Heap);
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember(##os#0, $Box($o))
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Memory.edges#canCall($Heap, this, os#0);
        assume {:id "id689"} let#0#0#0 == _module.Memory.edges($Heap, this, os#0);
        assume _module.Memory.edges#canCall($Heap, this, os#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TSet(Tclass._module.Edge()));
        assume {:id "id690"} edges#Z#0 == let#0#0#0;
        havoc isos#Z#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##os#1 := os#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#1, TSet(Tclass._module.Object()), $Heap);
        b$reqreads#1 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember(##os#1, $Box($o))
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Memory.justTheIsos#canCall($Heap, this, os#0);
        assume {:id "id691"} let#1#0#0 == _module.Memory.justTheIsos($Heap, this, os#0);
        assume _module.Memory.justTheIsos#canCall($Heap, this, os#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#1#0#0, TSet(Tclass._module.Object()));
        assume {:id "id692"} isos#Z#0 == let#1#0#0;
        // Begin Comprehension WF check
        havoc i#1;
        if ($Is(i#1, Tclass._module.Object())
           && $IsAlloc(i#1, Tclass._module.Object(), $Heap))
        {
            if (Set#IsMember(isos#Z#0, $Box(i#1)))
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
                ##t#0 := i#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0, Tclass._module.Object(), $Heap);
                ##edges#0 := edges#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##edges#0, TSet(Tclass._module.Edge()), $Heap);
                assume _module.Memory.refCountEdges#canCall(this, i#1, edges#Z#0);
            }
        }

        // End Comprehension WF check
        assume {:id "id693"} _module.Memory.isosRefCountZeroOrOne($Heap, this, os#0)
           == (forall i#2: ref :: 
            { _module.Memory.refCountEdges(this, i#2, edges#Z#0) } 
              { Set#IsMember(isos#Z#0, $Box(i#2)) } 
            $Is(i#2, Tclass._module.Object()) && Set#IsMember(isos#Z#0, $Box(i#2))
               ==> _module.Memory.refCountEdges(this, i#2, edges#Z#0) <= LitInt(1));
        assume (forall i#2: ref :: 
          { _module.Memory.refCountEdges(this, i#2, edges#Z#0) } 
            { Set#IsMember(isos#Z#0, $Box(i#2)) } 
          $Is(i#2, Tclass._module.Object())
             ==> 
            Set#IsMember(isos#Z#0, $Box(i#2))
             ==> _module.Memory.refCountEdges#canCall(this, i#2, edges#Z#0));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.isosRefCountZeroOrOne($Heap, this, os#0), TBool);
        assert {:id "id694"} b$reqreads#0;
        assert {:id "id695"} b$reqreads#1;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.wholeEnchiladaNEW
function _module.Memory.wholeEnchiladaNEW($heap: Heap, this: ref, os#0: Set) : bool
uses {
// definition axiom for _module.Memory.wholeEnchiladaNEW (revealed)
axiom {:id "id696"} 7 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { _module.Memory.wholeEnchiladaNEW($Heap, this, os#0), $IsGoodHeap($Heap) } 
    _module.Memory.wholeEnchiladaNEW#canCall($Heap, this, os#0)
         || (7 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> _module.Memory.allRegions#canCall(this, os#0)
         && 
        _module.Memory.edges#canCall($Heap, this, os#0)
         && _module.Memory.wholeEnchilada#canCall($Heap, this, os#0)
         && _module.Memory.wholeEnchiladaNEW($Heap, this, os#0)
           == (var ns#0 := _module.Memory.allRegions(this, os#0); 
            (var es#0 := _module.Memory.edges($Heap, this, os#0); 
              _module.Memory.wholeEnchilada($Heap, this, os#0))));
}

function _module.Memory.wholeEnchiladaNEW#canCall($heap: Heap, this: ref, os#0: Set) : bool;

// frame axiom for _module.Memory.wholeEnchiladaNEW
axiom (forall $h0: Heap, $h1: Heap, this: ref, os#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.wholeEnchiladaNEW($h1, this, os#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && (_module.Memory.wholeEnchiladaNEW#canCall($h0, this, os#0)
         || $Is(os#0, TSet(Tclass._module.Object())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(os#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.wholeEnchiladaNEW($h0, this, os#0)
       == _module.Memory.wholeEnchiladaNEW($h1, this, os#0));

function _module.Memory.wholeEnchiladaNEW#requires(Heap, ref, Set) : bool;

// #requires axiom for _module.Memory.wholeEnchiladaNEW
axiom (forall $Heap: Heap, this: ref, os#0: Set :: 
  { _module.Memory.wholeEnchiladaNEW#requires($Heap, this, os#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $Heap)
       && $Is(os#0, TSet(Tclass._module.Object()))
     ==> _module.Memory.wholeEnchiladaNEW#requires($Heap, this, os#0) == true);

procedure {:verboseName "Memory.wholeEnchiladaNEW (well-formedness)"} CheckWellformed$$_module.Memory.wholeEnchiladaNEW(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set where $Is(os#0, TSet(Tclass._module.Object())));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.wholeEnchiladaNEW (well-formedness)"} CheckWellformed$$_module.Memory.wholeEnchiladaNEW(this: ref, os#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ns#Z#0: Set;
  var let#0#0#0: Set;
  var ##os#0: Set;
  var es#Z#0: Set;
  var let#1#0#0: Set;
  var ##os#1: Set;
  var ##os#2: Set;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(os#0, $Box($o)));
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
        havoc ns#Z#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##os#0 := os#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#0, TSet(Tclass._module.Object()), $Heap);
        assume _module.Memory.allRegions#canCall(this, os#0);
        assume {:id "id697"} let#0#0#0 == _module.Memory.allRegions(this, os#0);
        assume _module.Memory.allRegions#canCall(this, os#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TSet(Tclass._module.Region()));
        assume {:id "id698"} ns#Z#0 == let#0#0#0;
        havoc es#Z#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##os#1 := os#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#1, TSet(Tclass._module.Object()), $Heap);
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember(##os#1, $Box($o))
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Memory.edges#canCall($Heap, this, os#0);
        assume {:id "id699"} let#1#0#0 == _module.Memory.edges($Heap, this, os#0);
        assume _module.Memory.edges#canCall($Heap, this, os#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#1#0#0, TSet(Tclass._module.Edge()));
        assume {:id "id700"} es#Z#0 == let#1#0#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##os#2 := os#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#2, TSet(Tclass._module.Object()), $Heap);
        b$reqreads#1 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember(##os#2, $Box($o))
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Memory.wholeEnchilada#canCall($Heap, this, os#0);
        assume {:id "id701"} _module.Memory.wholeEnchiladaNEW($Heap, this, os#0)
           == _module.Memory.wholeEnchilada($Heap, this, os#0);
        assume _module.Memory.wholeEnchilada#canCall($Heap, this, os#0);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.wholeEnchiladaNEW($Heap, this, os#0), TBool);
        assert {:id "id702"} b$reqreads#0;
        assert {:id "id703"} b$reqreads#1;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.externalEdges
function _module.Memory.externalEdges(this: ref, o#0: DatatypeType, edges#0: Set) : Set
uses {
// consequence axiom for _module.Memory.externalEdges
axiom 3 <= $FunctionContextHeight
   ==> (forall this: ref, o#0: DatatypeType, edges#0: Set :: 
    { _module.Memory.externalEdges(this, o#0, edges#0) } 
    _module.Memory.externalEdges#canCall(this, o#0, edges#0)
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(o#0, Tclass._module.Region())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> Set#Subset(_module.Memory.externalEdges(this, o#0, edges#0), edges#0)
         && $Is(_module.Memory.externalEdges(this, o#0, edges#0), TSet(Tclass._module.Edge())));
// alloc consequence axiom for _module.Memory.externalEdges
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, o#0: DatatypeType, edges#0: Set :: 
    { $IsAlloc(_module.Memory.externalEdges(this, o#0, edges#0), 
        TSet(Tclass._module.Edge()), 
        $Heap) } 
    (_module.Memory.externalEdges#canCall(this, o#0, edges#0)
           || (3 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass._module.Memory(), $Heap)
             && 
            $Is(o#0, Tclass._module.Region())
             && $IsAlloc(o#0, Tclass._module.Region(), $Heap)
             && 
            $Is(edges#0, TSet(Tclass._module.Edge()))
             && $IsAlloc(edges#0, TSet(Tclass._module.Edge()), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.Memory.externalEdges(this, o#0, edges#0), 
        TSet(Tclass._module.Edge()), 
        $Heap));
// definition axiom for _module.Memory.externalEdges (revealed)
axiom {:id "id704"} 3 <= $FunctionContextHeight
   ==> (forall this: ref, o#0: DatatypeType, edges#0: Set :: 
    { _module.Memory.externalEdges(this, o#0, edges#0) } 
    _module.Memory.externalEdges#canCall(this, o#0, edges#0)
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(o#0, Tclass._module.Region())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> (forall e#0: DatatypeType :: 
          { _module.Edge.f(e#0) } 
            { _module.Edge.t(e#0) } 
            { Set#IsMember(edges#0, $Box(e#0)) } 
          $Is(e#0, Tclass._module.Edge())
             ==> 
            Set#IsMember(edges#0, $Box(e#0))
             ==> $IsA#_module.Region(_module.Object.region(_module.Edge.t(e#0)))
               && $IsA#_module.Region(o#0)
               && _module.Edge.Edge_q(e#0)
               && (_module.Region#Equal(_module.Object.region(_module.Edge.t(e#0)), o#0)
                 ==> $IsA#_module.Region(_module.Object.region(_module.Edge.f(e#0)))
                   && $IsA#_module.Region(o#0)
                   && _module.Edge.Edge_q(e#0)))
         && _module.Memory.externalEdges(this, o#0, edges#0)
           == Set#FromBoogieMap((lambda $y#0: Box :: 
              $IsBox($y#0, Tclass._module.Edge())
                 && 
                Set#IsMember(edges#0, $y#0)
                 && 
                _module.Region#Equal(_module.Object.region(_module.Edge.t($Unbox($y#0): DatatypeType)), o#0)
                 && !_module.Region#Equal(_module.Object.region(_module.Edge.f($Unbox($y#0): DatatypeType)), o#0))));
// definition axiom for _module.Memory.externalEdges for decreasing-related literals (revealed)
axiom {:id "id705"} 3 <= $FunctionContextHeight
   ==> (forall this: ref, o#0: DatatypeType, edges#0: Set :: 
    {:weight 3} { _module.Memory.externalEdges(this, Lit(o#0), Lit(edges#0)) } 
    _module.Memory.externalEdges#canCall(this, Lit(o#0), Lit(edges#0))
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(o#0, Tclass._module.Region())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> (forall e#1: DatatypeType :: 
          { _module.Edge.f(e#1) } 
            { _module.Edge.t(e#1) } 
            { Set#IsMember(edges#0, $Box(e#1)) } 
          $Is(e#1, Tclass._module.Edge())
             ==> 
            Set#IsMember(Lit(edges#0), $Box(e#1))
             ==> $IsA#_module.Region(_module.Object.region(_module.Edge.t(e#1)))
               && $IsA#_module.Region(Lit(o#0))
               && _module.Edge.Edge_q(e#1)
               && (_module.Region#Equal(_module.Object.region(_module.Edge.t(e#1)), o#0)
                 ==> $IsA#_module.Region(_module.Object.region(_module.Edge.f(e#1)))
                   && $IsA#_module.Region(Lit(o#0))
                   && _module.Edge.Edge_q(e#1)))
         && _module.Memory.externalEdges(this, Lit(o#0), Lit(edges#0))
           == Set#FromBoogieMap((lambda $y#1: Box :: 
              $IsBox($y#1, Tclass._module.Edge())
                 && 
                Set#IsMember(Lit(edges#0), $y#1)
                 && 
                _module.Region#Equal(_module.Object.region(_module.Edge.t($Unbox($y#1): DatatypeType)), o#0)
                 && !_module.Region#Equal(_module.Object.region(_module.Edge.f($Unbox($y#1): DatatypeType)), o#0))));
// definition axiom for _module.Memory.externalEdges for all literals (revealed)
axiom {:id "id706"} 3 <= $FunctionContextHeight
   ==> (forall this: ref, o#0: DatatypeType, edges#0: Set :: 
    {:weight 3} { _module.Memory.externalEdges(Lit(this), Lit(o#0), Lit(edges#0)) } 
    _module.Memory.externalEdges#canCall(Lit(this), Lit(o#0), Lit(edges#0))
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(o#0, Tclass._module.Region())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> (forall e#2: DatatypeType :: 
          { _module.Edge.f(e#2) } 
            { _module.Edge.t(e#2) } 
            { Set#IsMember(edges#0, $Box(e#2)) } 
          $Is(e#2, Tclass._module.Edge())
             ==> 
            Set#IsMember(Lit(edges#0), $Box(e#2))
             ==> $IsA#_module.Region(_module.Object.region(_module.Edge.t(e#2)))
               && $IsA#_module.Region(Lit(o#0))
               && _module.Edge.Edge_q(e#2)
               && (_module.Region#Equal(_module.Object.region(_module.Edge.t(e#2)), o#0)
                 ==> $IsA#_module.Region(_module.Object.region(_module.Edge.f(e#2)))
                   && $IsA#_module.Region(Lit(o#0))
                   && _module.Edge.Edge_q(e#2)))
         && _module.Memory.externalEdges(Lit(this), Lit(o#0), Lit(edges#0))
           == Set#FromBoogieMap((lambda $y#2: Box :: 
              $IsBox($y#2, Tclass._module.Edge())
                 && 
                Set#IsMember(Lit(edges#0), $y#2)
                 && 
                _module.Region#Equal(_module.Object.region(_module.Edge.t($Unbox($y#2): DatatypeType)), o#0)
                 && !_module.Region#Equal(_module.Object.region(_module.Edge.f($Unbox($y#2): DatatypeType)), o#0))));
}

function _module.Memory.externalEdges#canCall(this: ref, o#0: DatatypeType, edges#0: Set) : bool;

function _module.Memory.externalEdges#requires(ref, DatatypeType, Set) : bool;

// #requires axiom for _module.Memory.externalEdges
axiom (forall this: ref, o#0: DatatypeType, edges#0: Set :: 
  { _module.Memory.externalEdges#requires(this, o#0, edges#0) } 
  this != null
       && $Is(this, Tclass._module.Memory())
       && $Is(o#0, Tclass._module.Region())
       && $Is(edges#0, TSet(Tclass._module.Edge()))
     ==> _module.Memory.externalEdges#requires(this, o#0, edges#0) == true);

procedure {:verboseName "Memory.externalEdges (well-formedness)"} CheckWellformed$$_module.Memory.externalEdges(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: DatatypeType where $Is(o#0, Tclass._module.Region()), 
    edges#0: Set where $Is(edges#0, TSet(Tclass._module.Edge())))
   returns (rs#0: Set);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id707"} Set#Subset(rs#0, edges#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.externalEdges (well-formedness)"} CheckWellformed$$_module.Memory.externalEdges(this: ref, o#0: DatatypeType, edges#0: Set) returns (rs#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var e#3: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Memory.externalEdges(this, o#0, edges#0), TSet(Tclass._module.Edge()));
        assume $Is(rs#0, TSet(Tclass._module.Edge()));
        assume {:id "id708"} Set#Subset(rs#0, edges#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc e#3;
        if ($Is(e#3, Tclass._module.Edge()) && $IsAlloc(e#3, Tclass._module.Edge(), $Heap))
        {
            if (Set#IsMember(edges#0, $Box(e#3)))
            {
                assume _module.Edge.Edge_q(e#3);
                assert {:id "id709"} _module.Edge.t(e#3) != null;
                if (_module.Region#Equal(_module.Object.region(_module.Edge.t(e#3)), o#0))
                {
                    assume _module.Edge.Edge_q(e#3);
                    assert {:id "id710"} _module.Edge.f(e#3) != null;
                }
            }

            if (Set#IsMember(edges#0, $Box(e#3))
               && 
              _module.Region#Equal(_module.Object.region(_module.Edge.t(e#3)), o#0)
               && !_module.Region#Equal(_module.Object.region(_module.Edge.f(e#3)), o#0))
            {
            }
        }

        // End Comprehension WF check
        assume {:id "id711"} _module.Memory.externalEdges(this, o#0, edges#0)
           == Set#FromBoogieMap((lambda $y#4: Box :: 
              $IsBox($y#4, Tclass._module.Edge())
                 && 
                Set#IsMember(edges#0, $y#4)
                 && 
                _module.Region#Equal(_module.Object.region(_module.Edge.t($Unbox($y#4): DatatypeType)), o#0)
                 && !_module.Region#Equal(_module.Object.region(_module.Edge.f($Unbox($y#4): DatatypeType)), o#0)));
        assume (forall e#4: DatatypeType :: 
          { _module.Edge.f(e#4) } 
            { _module.Edge.t(e#4) } 
            { Set#IsMember(edges#0, $Box(e#4)) } 
          $Is(e#4, Tclass._module.Edge())
             ==> 
            Set#IsMember(edges#0, $Box(e#4))
             ==> $IsA#_module.Region(_module.Object.region(_module.Edge.t(e#4)))
               && $IsA#_module.Region(o#0)
               && _module.Edge.Edge_q(e#4)
               && (_module.Region#Equal(_module.Object.region(_module.Edge.t(e#4)), o#0)
                 ==> $IsA#_module.Region(_module.Object.region(_module.Edge.f(e#4)))
                   && $IsA#_module.Region(o#0)
                   && _module.Edge.Edge_q(e#4)));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.externalEdges(this, o#0, edges#0), TSet(Tclass._module.Edge()));
        assume {:id "id712"} _module.Memory.externalEdges(this, o#0, edges#0) == rs#0;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.justHeapExternalEdges
function _module.Memory.justHeapExternalEdges(this: ref, edges#0: Set) : Set
uses {
// consequence axiom for _module.Memory.justHeapExternalEdges
axiom 3 <= $FunctionContextHeight
   ==> (forall this: ref, edges#0: Set :: 
    { _module.Memory.justHeapExternalEdges(this, edges#0) } 
    _module.Memory.justHeapExternalEdges#canCall(this, edges#0)
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> Set#Subset(_module.Memory.justHeapExternalEdges(this, edges#0), edges#0)
         && $Is(_module.Memory.justHeapExternalEdges(this, edges#0), TSet(Tclass._module.Edge())));
// alloc consequence axiom for _module.Memory.justHeapExternalEdges
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, edges#0: Set :: 
    { $IsAlloc(_module.Memory.justHeapExternalEdges(this, edges#0), 
        TSet(Tclass._module.Edge()), 
        $Heap) } 
    (_module.Memory.justHeapExternalEdges#canCall(this, edges#0)
           || (3 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass._module.Memory(), $Heap)
             && 
            $Is(edges#0, TSet(Tclass._module.Edge()))
             && $IsAlloc(edges#0, TSet(Tclass._module.Edge()), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.Memory.justHeapExternalEdges(this, edges#0), 
        TSet(Tclass._module.Edge()), 
        $Heap));
// definition axiom for _module.Memory.justHeapExternalEdges (revealed)
axiom {:id "id713"} 3 <= $FunctionContextHeight
   ==> (forall this: ref, edges#0: Set :: 
    { _module.Memory.justHeapExternalEdges(this, edges#0) } 
    _module.Memory.justHeapExternalEdges#canCall(this, edges#0)
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> (forall e#0: DatatypeType :: 
          { _module.Edge.t(e#0) } 
            { _module.Edge.f(e#0) } 
            { Set#IsMember(edges#0, $Box(e#0)) } 
          $Is(e#0, Tclass._module.Edge())
             ==> 
            Set#IsMember(edges#0, $Box(e#0))
             ==> $IsA#_module.Region(_module.Object.region(_module.Edge.f(e#0)))
               && $IsA#_module.Region(_module.Object.region(_module.Edge.t(e#0)))
               && 
              _module.Edge.Edge_q(e#0)
               && _module.Edge.Edge_q(e#0)
               && (!_module.Region#Equal(_module.Object.region(_module.Edge.f(e#0)), 
                  _module.Object.region(_module.Edge.t(e#0)))
                 ==> _module.Edge.Edge_q(e#0)))
         && _module.Memory.justHeapExternalEdges(this, edges#0)
           == Set#FromBoogieMap((lambda $y#0: Box :: 
              $IsBox($y#0, Tclass._module.Edge())
                 && 
                Set#IsMember(edges#0, $y#0)
                 && 
                !_module.Region#Equal(_module.Object.region(_module.Edge.f($Unbox($y#0): DatatypeType)), 
                  _module.Object.region(_module.Edge.t($Unbox($y#0): DatatypeType)))
                 && _module.Region.Heap_q(_module.Object.region(_module.Edge.t($Unbox($y#0): DatatypeType))))));
// definition axiom for _module.Memory.justHeapExternalEdges for decreasing-related literals (revealed)
axiom {:id "id714"} 3 <= $FunctionContextHeight
   ==> (forall this: ref, edges#0: Set :: 
    {:weight 3} { _module.Memory.justHeapExternalEdges(this, Lit(edges#0)) } 
    _module.Memory.justHeapExternalEdges#canCall(this, Lit(edges#0))
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> (forall e#1: DatatypeType :: 
          { _module.Edge.t(e#1) } 
            { _module.Edge.f(e#1) } 
            { Set#IsMember(edges#0, $Box(e#1)) } 
          $Is(e#1, Tclass._module.Edge())
             ==> 
            Set#IsMember(Lit(edges#0), $Box(e#1))
             ==> $IsA#_module.Region(_module.Object.region(_module.Edge.f(e#1)))
               && $IsA#_module.Region(_module.Object.region(_module.Edge.t(e#1)))
               && 
              _module.Edge.Edge_q(e#1)
               && _module.Edge.Edge_q(e#1)
               && (!_module.Region#Equal(_module.Object.region(_module.Edge.f(e#1)), 
                  _module.Object.region(_module.Edge.t(e#1)))
                 ==> _module.Edge.Edge_q(e#1)))
         && _module.Memory.justHeapExternalEdges(this, Lit(edges#0))
           == Set#FromBoogieMap((lambda $y#1: Box :: 
              $IsBox($y#1, Tclass._module.Edge())
                 && 
                Set#IsMember(Lit(edges#0), $y#1)
                 && 
                !_module.Region#Equal(_module.Object.region(_module.Edge.f($Unbox($y#1): DatatypeType)), 
                  _module.Object.region(_module.Edge.t($Unbox($y#1): DatatypeType)))
                 && _module.Region.Heap_q(_module.Object.region(_module.Edge.t($Unbox($y#1): DatatypeType))))));
// definition axiom for _module.Memory.justHeapExternalEdges for all literals (revealed)
axiom {:id "id715"} 3 <= $FunctionContextHeight
   ==> (forall this: ref, edges#0: Set :: 
    {:weight 3} { _module.Memory.justHeapExternalEdges(Lit(this), Lit(edges#0)) } 
    _module.Memory.justHeapExternalEdges#canCall(Lit(this), Lit(edges#0))
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(edges#0, TSet(Tclass._module.Edge())))
       ==> (forall e#2: DatatypeType :: 
          { _module.Edge.t(e#2) } 
            { _module.Edge.f(e#2) } 
            { Set#IsMember(edges#0, $Box(e#2)) } 
          $Is(e#2, Tclass._module.Edge())
             ==> 
            Set#IsMember(Lit(edges#0), $Box(e#2))
             ==> $IsA#_module.Region(_module.Object.region(_module.Edge.f(e#2)))
               && $IsA#_module.Region(_module.Object.region(_module.Edge.t(e#2)))
               && 
              _module.Edge.Edge_q(e#2)
               && _module.Edge.Edge_q(e#2)
               && (!_module.Region#Equal(_module.Object.region(_module.Edge.f(e#2)), 
                  _module.Object.region(_module.Edge.t(e#2)))
                 ==> _module.Edge.Edge_q(e#2)))
         && _module.Memory.justHeapExternalEdges(Lit(this), Lit(edges#0))
           == Set#FromBoogieMap((lambda $y#2: Box :: 
              $IsBox($y#2, Tclass._module.Edge())
                 && 
                Set#IsMember(Lit(edges#0), $y#2)
                 && 
                !_module.Region#Equal(_module.Object.region(_module.Edge.f($Unbox($y#2): DatatypeType)), 
                  _module.Object.region(_module.Edge.t($Unbox($y#2): DatatypeType)))
                 && _module.Region.Heap_q(_module.Object.region(_module.Edge.t($Unbox($y#2): DatatypeType))))));
}

function _module.Memory.justHeapExternalEdges#canCall(this: ref, edges#0: Set) : bool;

function _module.Memory.justHeapExternalEdges#requires(ref, Set) : bool;

// #requires axiom for _module.Memory.justHeapExternalEdges
axiom (forall this: ref, edges#0: Set :: 
  { _module.Memory.justHeapExternalEdges#requires(this, edges#0) } 
  this != null
       && $Is(this, Tclass._module.Memory())
       && $Is(edges#0, TSet(Tclass._module.Edge()))
     ==> _module.Memory.justHeapExternalEdges#requires(this, edges#0) == true);

procedure {:verboseName "Memory.justHeapExternalEdges (well-formedness)"} CheckWellformed$$_module.Memory.justHeapExternalEdges(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    edges#0: Set where $Is(edges#0, TSet(Tclass._module.Edge())))
   returns (rs#0: Set);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id716"} Set#Subset(rs#0, edges#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.justHeapExternalEdges (well-formedness)"} CheckWellformed$$_module.Memory.justHeapExternalEdges(this: ref, edges#0: Set) returns (rs#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var e#3: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Memory.justHeapExternalEdges(this, edges#0), TSet(Tclass._module.Edge()));
        assume $Is(rs#0, TSet(Tclass._module.Edge()));
        assume {:id "id717"} Set#Subset(rs#0, edges#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc e#3;
        if ($Is(e#3, Tclass._module.Edge()) && $IsAlloc(e#3, Tclass._module.Edge(), $Heap))
        {
            if (Set#IsMember(edges#0, $Box(e#3)))
            {
                assume _module.Edge.Edge_q(e#3);
                assert {:id "id718"} _module.Edge.f(e#3) != null;
                assume _module.Edge.Edge_q(e#3);
                assert {:id "id719"} _module.Edge.t(e#3) != null;
                if (!_module.Region#Equal(_module.Object.region(_module.Edge.f(e#3)), 
                  _module.Object.region(_module.Edge.t(e#3))))
                {
                    assume _module.Edge.Edge_q(e#3);
                    assert {:id "id720"} _module.Edge.t(e#3) != null;
                }
            }

            if (Set#IsMember(edges#0, $Box(e#3))
               && 
              !_module.Region#Equal(_module.Object.region(_module.Edge.f(e#3)), 
                _module.Object.region(_module.Edge.t(e#3)))
               && _module.Region.Heap_q(_module.Object.region(_module.Edge.t(e#3))))
            {
            }
        }

        // End Comprehension WF check
        assume {:id "id721"} _module.Memory.justHeapExternalEdges(this, edges#0)
           == Set#FromBoogieMap((lambda $y#4: Box :: 
              $IsBox($y#4, Tclass._module.Edge())
                 && 
                Set#IsMember(edges#0, $y#4)
                 && 
                !_module.Region#Equal(_module.Object.region(_module.Edge.f($Unbox($y#4): DatatypeType)), 
                  _module.Object.region(_module.Edge.t($Unbox($y#4): DatatypeType)))
                 && _module.Region.Heap_q(_module.Object.region(_module.Edge.t($Unbox($y#4): DatatypeType)))));
        assume (forall e#4: DatatypeType :: 
          { _module.Edge.t(e#4) } 
            { _module.Edge.f(e#4) } 
            { Set#IsMember(edges#0, $Box(e#4)) } 
          $Is(e#4, Tclass._module.Edge())
             ==> 
            Set#IsMember(edges#0, $Box(e#4))
             ==> $IsA#_module.Region(_module.Object.region(_module.Edge.f(e#4)))
               && $IsA#_module.Region(_module.Object.region(_module.Edge.t(e#4)))
               && 
              _module.Edge.Edge_q(e#4)
               && _module.Edge.Edge_q(e#4)
               && (!_module.Region#Equal(_module.Object.region(_module.Edge.f(e#4)), 
                  _module.Object.region(_module.Edge.t(e#4)))
                 ==> _module.Edge.Edge_q(e#4)));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.justHeapExternalEdges(this, edges#0), TSet(Tclass._module.Edge()));
        assume {:id "id722"} _module.Memory.justHeapExternalEdges(this, edges#0) == rs#0;
        return;

        assume false;
    }
}



procedure {:verboseName "Memory.fAddObject (well-formedness)"} CheckWellFormed$$_module.Memory.fAddObject(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    nu#0: ref
       where $Is(nu#0, Tclass._module.Object())
         && $IsAlloc(nu#0, Tclass._module.Object(), $Heap));
  free requires 9 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.fAddObject (well-formedness)"} CheckWellFormed$$_module.Memory.fAddObject(this: ref, nu#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: fAddObject, CheckWellFormed$$_module.Memory.fAddObject
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this && $f == _module.Memory.objects);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assume _module.Memory.Valid#canCall($Heap, this);
    assume {:id "id723"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    assert {:id "id724"} nu#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(nu#0), Tclass._module.Object?(), $Heap);
    assume _module.Object.Valid#canCall($Heap, nu#0);
    assume {:id "id725"} _module.Object.Valid(reveal__module.Object.Valid, $Heap, nu#0);
    assert {:id "id726"} nu#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(nu#0), Tclass._module.Object?(), $Heap);
    assume _module.Object.size#canCall($Heap, nu#0);
    assume {:id "id727"} _module.Object.size($Heap, nu#0) == LitInt(0);
    assume {:id "id728"} !Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(nu#0));
    assert {:id "id729"} this != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
           || ($o == this && $f == _module.Memory.objects));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assert {:id "id730"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
    assume {:id "id731"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
    assert {:id "id732"} $IsAlloc(nu#0, Tclass._module.Object(), old($Heap));
    assume {:id "id733"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null ==> $o == nu#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    assert {:id "id734"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume {:id "id735"} Set#Equal($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
      Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
        Set#UnionOne(Set#Empty(): Set, $Box(nu#0))));
}



procedure {:verboseName "Memory.fAddObject (call)"} Call$$_module.Memory.fAddObject(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    nu#0: ref
       where $Is(nu#0, Tclass._module.Object())
         && $IsAlloc(nu#0, Tclass._module.Object(), $Heap));
  // user-defined preconditions
  requires {:id "id736"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  requires {:id "id737"} _module.Object.Valid(reveal__module.Object.Valid, $Heap, nu#0);
  requires {:id "id738"} _module.Object.size($Heap, nu#0) == LitInt(0);
  requires {:id "id739"} !Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(nu#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
  ensures {:id "id740"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
  free ensures true;
  ensures {:id "id741"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null ==> $o == nu#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures true;
  ensures {:id "id742"} Set#Equal($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
    Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(nu#0))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == this && $f == _module.Memory.objects));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Memory.fAddObject (correctness)"} Impl$$_module.Memory.fAddObject(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    nu#0: ref
       where $Is(nu#0, Tclass._module.Object())
         && $IsAlloc(nu#0, Tclass._module.Object(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 9 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id743"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  requires {:id "id744"} _module.Object.Valid(reveal__module.Object.Valid, $Heap, nu#0);
  requires {:id "id745"} _module.Object.size($Heap, nu#0) == LitInt(0);
  requires {:id "id746"} !Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(nu#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
  ensures {:id "id747"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
  free ensures true;
  ensures {:id "id748"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null ==> $o == nu#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures true;
  ensures {:id "id749"} Set#Equal($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
    Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(nu#0))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == this && $f == _module.Memory.objects));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.fAddObject (correctness)"} Impl$$_module.Memory.fAddObject(this: ref, nu#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##os#0: Set;
  var $rhs#0: Set;
  var ##os#1: Set;
  var ##os#2: Set;
  var ##os#3: Set;
  var ##os#4: Set;
  var ##os#5: Set;
  var ##os#6: Set;
  var ##edges#0: Set;
  var ##os#7: Set;
  var ##edges#1: Set;
  var ##os#8: Set;
  var ##edges#2: Set;
  var ##os#9: Set;
  var ##edges#3: Set;
  var ##os#10: Set;
  var ##edges#4: Set;
  var ##os#11: Set;
  var ##edges#5: Set;
  var ##os#12: Set;
  var ##os#13: Set;

    // AddMethodImpl: fAddObject, Impl$$_module.Memory.fAddObject
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this && $f == _module.Memory.objects);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(375,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(375,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id750"} Call$$_module.Memory.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(376,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assume _module.Memory.Valid#canCall($Heap, this);
    assume _module.Memory.Valid#canCall($Heap, this);
    assert {:id "id751"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(378,1)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#0 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#0, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assert {:id "id752"} {:subsumption 0} _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
       ==> _module.Memory.heapExternalsZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
         || (var edges#0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set); 
          _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, edges#0)
             ==> _module.Memory.heapExternalsZeroOrOneEdges(this, edges#0)
               || (var heapExternalEdges#0 := _module.Memory.justHeapExternalEdges(this, edges#0); 
                (var allRelevantHeapRegions#0 := Set#FromBoogieMap((lambda $y#1: Box :: 
                        (exists he#0: DatatypeType :: 
                          { _module.Edge.t(he#0) } { Set#IsMember(heapExternalEdges#0, $Box(he#0)) } 
                          $Is(he#0, Tclass._module.Edge())
                             && Set#IsMember(heapExternalEdges#0, $Box(he#0))
                             && $y#1 == $Box(_module.Object.region(_module.Edge.t(he#0)))))); 
                  (var heapExternalEdgesPartitionedByRegion#0 := Map#Glue(Set#FromBoogieMap((lambda $w#2: Box :: 
                            $IsBox($w#2, Tclass._module.Region())
                               && Set#IsMember(allRelevantHeapRegions#0, $w#2))), 
                        (lambda $w#2: Box :: 
                          $Box(_module.Memory.externalEdges(this, $Unbox($w#2): DatatypeType, heapExternalEdges#0))), 
                        TMap(Tclass._module.Region(), TSet(Tclass._module.Edge()))); 
                    (forall hr#0: DatatypeType :: 
                      { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#0)[$Box(hr#0)]): Set } 
                        { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#0), $Box(hr#0)) } 
                      $Is(hr#0, Tclass._module.Region())
                           && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#0), $Box(hr#0))
                         ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#0)[$Box(hr#0)]): Set)
                           <= LitInt(1))))));
    assume {:id "id753"} _module.Memory.heapExternalsZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(380,15)
    assume true;
    assert {:id "id754"} $_ModifiesFrame[this, _module.Memory.objects];
    assume true;
    $rhs#0 := Set#Union($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(nu#0)));
    $Heap := update($Heap, this, _module.Memory.objects, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(382,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#1 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#1, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assert {:id "id757"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    ##os#2 := Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(nu#0)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#2, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, 
      this, 
      Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
        Set#UnionOne(Set#Empty(): Set, $Box(nu#0))));
    if (Set#Equal(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
      _module.Memory.edges($Heap, 
        this, 
        Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(nu#0))))))
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        assert {:id "id758"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        ##os#3 := Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(nu#0)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#3, TSet(Tclass._module.Object()), $Heap);
        assume _module.Memory.edges#canCall($Heap, 
          this, 
          Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
            Set#UnionOne(Set#Empty(): Set, $Box(nu#0))));
        assert {:id "id759"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        ##os#4 := $Unbox(read(old($Heap), this, _module.Memory.objects)): Set;
        assert {:id "id760"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        assert {:id "id761"} $IsAlloc($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
          TSet(Tclass._module.Object()), 
          old($Heap));
        assume _module.Memory.edges#canCall(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
    }

    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
       && _module.Memory.edges#canCall($Heap, 
        this, 
        Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(nu#0))))
       && (Set#Equal(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
          _module.Memory.edges($Heap, 
            this, 
            Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
              Set#UnionOne(Set#Empty(): Set, $Box(nu#0)))))
         ==> _module.Memory.edges#canCall($Heap, 
            this, 
            Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
              Set#UnionOne(Set#Empty(): Set, $Box(nu#0))))
           && _module.Memory.edges#canCall(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set));
    assert {:id "id762"} {:subsumption 0} Set#Equal(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
      _module.Memory.edges($Heap, 
        this, 
        Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(nu#0)))));
    assert {:id "id763"} {:subsumption 0} Set#Equal(_module.Memory.edges($Heap, 
        this, 
        Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(nu#0)))), 
      _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set));
    assume {:id "id764"} Set#Equal(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
        _module.Memory.edges($Heap, 
          this, 
          Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
            Set#UnionOne(Set#Empty(): Set, $Box(nu#0)))))
       && Set#Equal(_module.Memory.edges($Heap, 
          this, 
          Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
            Set#UnionOne(Set#Empty(): Set, $Box(nu#0)))), 
        _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(384,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#5 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#5, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.partitionOfJustHeapRegions#canCall(this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assert {:id "id765"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    ##os#6 := Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(nu#0)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#6, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.partitionOfJustHeapRegions#canCall(this, 
      Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
        Set#UnionOne(Set#Empty(): Set, $Box(nu#0))));
    assume _module.Memory.partitionOfJustHeapRegions#canCall(this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
       && _module.Memory.partitionOfJustHeapRegions#canCall(this, 
        Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(nu#0))));
    assert {:id "id766"} Map#Equal(_module.Memory.partitionOfJustHeapRegions(this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
      _module.Memory.partitionOfJustHeapRegions(this, 
        Set#Union($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(nu#0)))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(387,1)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#7 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#7, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    ##edges#0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#0, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.justHeapExternalEdges#canCall(this, 
      _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assert {:id "id767"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    ##os#8 := $Unbox(read(old($Heap), this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#8, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
    ##edges#1 := _module.Memory.edges($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#1, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.justHeapExternalEdges#canCall(this, 
      _module.Memory.edges($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set));
    if (Set#Equal(_module.Memory.justHeapExternalEdges(this, 
        _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)), 
      _module.Memory.justHeapExternalEdges(this, 
        _module.Memory.edges($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set))))
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        assert {:id "id768"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        ##os#9 := $Unbox(read(old($Heap), this, _module.Memory.objects)): Set;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#9, TSet(Tclass._module.Object()), $Heap);
        assume _module.Memory.edges#canCall($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
        ##edges#2 := _module.Memory.edges($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
        // assume allocatedness for argument to function
        assume $IsAlloc(##edges#2, TSet(Tclass._module.Edge()), $Heap);
        assume _module.Memory.justHeapExternalEdges#canCall(this, 
          _module.Memory.edges($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set));
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        assert {:id "id769"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        ##os#10 := $Unbox(read(old($Heap), this, _module.Memory.objects)): Set;
        assert {:id "id770"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        assert {:id "id771"} $IsAlloc($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
          TSet(Tclass._module.Object()), 
          old($Heap));
        assume _module.Memory.edges#canCall(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
        ##edges#3 := _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
        // assume allocatedness for argument to function
        assume $IsAlloc(##edges#3, TSet(Tclass._module.Edge()), $Heap);
        assume _module.Memory.justHeapExternalEdges#canCall(this, 
          _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set));
    }

    if (Set#Equal(_module.Memory.justHeapExternalEdges(this, 
          _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)), 
        _module.Memory.justHeapExternalEdges(this, 
          _module.Memory.edges($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)))
       && Set#Equal(_module.Memory.justHeapExternalEdges(this, 
          _module.Memory.edges($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)), 
        _module.Memory.justHeapExternalEdges(this, 
          _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set))))
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        assert {:id "id772"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        ##os#11 := $Unbox(read(old($Heap), this, _module.Memory.objects)): Set;
        assert {:id "id773"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        assert {:id "id774"} $IsAlloc($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
          TSet(Tclass._module.Object()), 
          old($Heap));
        assume _module.Memory.edges#canCall(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
        ##edges#4 := _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
        // assume allocatedness for argument to function
        assume $IsAlloc(##edges#4, TSet(Tclass._module.Edge()), $Heap);
        assume _module.Memory.justHeapExternalEdges#canCall(this, 
          _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set));
        assert {:id "id775"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        ##os#12 := $Unbox(read(old($Heap), this, _module.Memory.objects)): Set;
        assert {:id "id776"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        assert {:id "id777"} $IsAlloc($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
          TSet(Tclass._module.Object()), 
          old($Heap));
        assume _module.Memory.edges#canCall(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
        ##edges#5 := _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
        assert {:id "id778"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        assert {:id "id779"} $IsAlloc(_module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set), 
          TSet(Tclass._module.Edge()), 
          old($Heap));
        assume _module.Memory.justHeapExternalEdges#canCall(this, 
          _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set));
    }

    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
       && _module.Memory.justHeapExternalEdges#canCall(this, 
        _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set))
       && 
      _module.Memory.edges#canCall($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)
       && _module.Memory.justHeapExternalEdges#canCall(this, 
        _module.Memory.edges($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set))
       && (Set#Equal(_module.Memory.justHeapExternalEdges(this, 
            _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)), 
          _module.Memory.justHeapExternalEdges(this, 
            _module.Memory.edges($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)))
         ==> _module.Memory.edges#canCall($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)
           && _module.Memory.justHeapExternalEdges#canCall(this, 
            _module.Memory.edges($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set))
           && 
          _module.Memory.edges#canCall(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)
           && _module.Memory.justHeapExternalEdges#canCall(this, 
            _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set))
           && (Set#Equal(_module.Memory.justHeapExternalEdges(this, 
                _module.Memory.edges($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)), 
              _module.Memory.justHeapExternalEdges(this, 
                _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)))
             ==> _module.Memory.edges#canCall(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)
               && _module.Memory.justHeapExternalEdges#canCall(this, 
                _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set))
               && 
              _module.Memory.edges#canCall(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)
               && _module.Memory.justHeapExternalEdges#canCall(this, 
                _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set))));
    assert {:id "id780"} {:subsumption 0} Set#Equal(_module.Memory.justHeapExternalEdges(this, 
        _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)), 
      _module.Memory.justHeapExternalEdges(this, 
        _module.Memory.edges($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)));
    assert {:id "id781"} {:subsumption 0} Set#Equal(_module.Memory.justHeapExternalEdges(this, 
        _module.Memory.edges($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)), 
      _module.Memory.justHeapExternalEdges(this, 
        _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)));
    assert {:id "id782"} {:subsumption 0} Set#Equal(_module.Memory.justHeapExternalEdges(this, 
        _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)), 
      _module.Memory.justHeapExternalEdges(this, 
        _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)));
    assume {:id "id783"} Set#Equal(_module.Memory.justHeapExternalEdges(this, 
          _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)), 
        _module.Memory.justHeapExternalEdges(this, 
          _module.Memory.edges($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)))
       && Set#Equal(_module.Memory.justHeapExternalEdges(this, 
          _module.Memory.edges($Heap, this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)), 
        _module.Memory.justHeapExternalEdges(this, 
          _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)))
       && Set#Equal(_module.Memory.justHeapExternalEdges(this, 
          _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)), 
        _module.Memory.justHeapExternalEdges(this, 
          _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set)));
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(392,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(392,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id784"} Call$$_module.Memory.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(393,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(393,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id785"} Call$$_module.Memory.reveal__Valid2(old($Heap), $Heap);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(395,1)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#13 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#13, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assert {:id "id786"} {:subsumption 0} _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
       ==> _module.Memory.heapExternalsZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
         || (var edges#1 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set); 
          _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, edges#1)
             ==> _module.Memory.heapExternalsZeroOrOneEdges(this, edges#1)
               || (var heapExternalEdges#1 := _module.Memory.justHeapExternalEdges(this, edges#1); 
                (var allRelevantHeapRegions#1 := Set#FromBoogieMap((lambda $y#4: Box :: 
                        (exists he#1: DatatypeType :: 
                          { _module.Edge.t(he#1) } { Set#IsMember(heapExternalEdges#1, $Box(he#1)) } 
                          $Is(he#1, Tclass._module.Edge())
                             && Set#IsMember(heapExternalEdges#1, $Box(he#1))
                             && $y#4 == $Box(_module.Object.region(_module.Edge.t(he#1)))))); 
                  (var heapExternalEdgesPartitionedByRegion#1 := Map#Glue(Set#FromBoogieMap((lambda $w#6: Box :: 
                            $IsBox($w#6, Tclass._module.Region())
                               && Set#IsMember(allRelevantHeapRegions#1, $w#6))), 
                        (lambda $w#6: Box :: 
                          $Box(_module.Memory.externalEdges(this, $Unbox($w#6): DatatypeType, heapExternalEdges#1))), 
                        TMap(Tclass._module.Region(), TSet(Tclass._module.Edge()))); 
                    (forall hr#1: DatatypeType :: 
                      { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#1)[$Box(hr#1)]): Set } 
                        { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#1), $Box(hr#1)) } 
                      $Is(hr#1, Tclass._module.Region())
                           && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#1), $Box(hr#1))
                         ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#1)[$Box(hr#1)]): Set)
                           <= LitInt(1))))));
    assume {:id "id787"} _module.Memory.heapExternalsZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(397,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assert {:id "id788"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
    assert {:id "id789"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
}



// function declaration for _module.Memory.fExists
function _module.Memory.fExists($heap: Heap, this: ref, o#0: ref, n#0: Seq) : bool
uses {
// definition axiom for _module.Memory.fExists (revealed)
axiom {:id "id790"} 8 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, o#0: ref, n#0: Seq :: 
    { _module.Memory.fExists($Heap, this, o#0, n#0), $IsGoodHeap($Heap) } 
    _module.Memory.fExists#canCall($Heap, this, o#0, n#0)
         || (8 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && $Is(o#0, Tclass._module.Object())
           && $Is(n#0, TSeq(TChar))
           && 
          Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0))
           && _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this))
       ==> _module.Memory.fExists($Heap, this, o#0, n#0)
         == Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0)));
}

function _module.Memory.fExists#canCall($heap: Heap, this: ref, o#0: ref, n#0: Seq) : bool;

// frame axiom for _module.Memory.fExists
axiom (forall $h0: Heap, $h1: Heap, this: ref, o#0: ref, n#0: Seq :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.fExists($h1, this, o#0, n#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && (_module.Memory.fExists#canCall($h0, this, o#0, n#0)
         || ($Is(o#0, Tclass._module.Object()) && $Is(n#0, TSeq(TChar))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            ($o == this && $f == _module.Memory.objects)
             || Set#IsMember($Unbox(read($h0, this, _module.Memory.objects)): Set, $Box($o))
             || ($o == o#0 && $f == _module.Object.fields))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.fExists($h0, this, o#0, n#0)
       == _module.Memory.fExists($h1, this, o#0, n#0));

function _module.Memory.fExists#requires(Heap, ref, ref, Seq) : bool;

// #requires axiom for _module.Memory.fExists
axiom (forall $Heap: Heap, this: ref, o#0: ref, n#0: Seq :: 
  { _module.Memory.fExists#requires($Heap, this, o#0, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $Heap)
       && $Is(o#0, Tclass._module.Object())
       && $Is(n#0, TSeq(TChar))
     ==> _module.Memory.fExists#requires($Heap, this, o#0, n#0)
       == (Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0))
         && _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this)));

procedure {:verboseName "Memory.fExists (well-formedness)"} CheckWellformed$$_module.Memory.fExists(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref where $Is(o#0, Tclass._module.Object()), 
    n#0: Seq where $Is(n#0, TSeq(TChar)));
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.fExists (well-formedness)"} CheckWellformed$$_module.Memory.fExists(this: ref, o#0: ref, n#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> ($o == this && $f == _module.Memory.objects)
           || Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
           || ($o == o#0 && $f == _module.Object.fields));
    // Check well-formedness of preconditions, and then assume them
    b$reqreads#0 := $_ReadsFrame[this, _module.Memory.objects];
    assume {:id "id791"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    b$reqreads#1 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (($o == this && $f == _module.Memory.objects)
             || Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o)))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.Memory.Valid#canCall($Heap, this);
    assume {:id "id792"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    assert {:id "id793"} b$reqreads#0;
    assert {:id "id794"} b$reqreads#1;
    // Check well-formedness of the reads clause
    assert {:id "id795"} this != null;
    b$reqreads#2 := $_ReadsFrame[this, _module.Memory.objects];
    assert {:id "id796"} o#0 != null;
    assert {:id "id797"} b$reqreads#2;
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
        assert {:id "id798"} o#0 != null;
        b$reqreads#3 := $_ReadsFrame[o#0, _module.Object.fields];
        assume {:id "id799"} _module.Memory.fExists($Heap, this, o#0, n#0)
           == Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.fExists($Heap, this, o#0, n#0), TBool);
        assert {:id "id800"} b$reqreads#3;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.fRead
function _module.Memory.fRead($heap: Heap, this: ref, o#0: ref, n#0: Seq) : ref
uses {
// consequence axiom for _module.Memory.fRead
axiom 8 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, o#0: ref, n#0: Seq :: 
    { _module.Memory.fRead($Heap, this, o#0, n#0) } 
    _module.Memory.fRead#canCall($Heap, this, o#0, n#0)
         || (8 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && 
          $Is(o#0, Tclass._module.Object())
           && $IsAlloc(o#0, Tclass._module.Object(), $Heap)
           && 
          $Is(n#0, TSeq(TChar))
           && $IsAlloc(n#0, TSeq(TChar), $Heap)
           && 
          Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0))
           && _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this)
           && Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0)))
       ==> $Is(_module.Memory.fRead($Heap, this, o#0, n#0), Tclass._module.Object()));
// alloc consequence axiom for _module.Memory.fRead
axiom 8 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, o#0: ref, n#0: Seq :: 
    { $IsAlloc(_module.Memory.fRead($Heap, this, o#0, n#0), Tclass._module.Object(), $Heap) } 
    _module.Memory.fRead#canCall($Heap, this, o#0, n#0)
         || (8 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && this != null
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && 
          $Is(o#0, Tclass._module.Object())
           && $IsAlloc(o#0, Tclass._module.Object(), $Heap)
           && 
          $Is(n#0, TSeq(TChar))
           && $IsAlloc(n#0, TSeq(TChar), $Heap)
           && 
          Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0))
           && _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this)
           && Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0)))
       ==> $IsAlloc(_module.Memory.fRead($Heap, this, o#0, n#0), Tclass._module.Object(), $Heap));
// definition axiom for _module.Memory.fRead (revealed)
axiom {:id "id801"} 8 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, o#0: ref, n#0: Seq :: 
    { _module.Memory.fRead($Heap, this, o#0, n#0), $IsGoodHeap($Heap) } 
    _module.Memory.fRead#canCall($Heap, this, o#0, n#0)
         || (8 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && $Is(o#0, Tclass._module.Object())
           && $Is(n#0, TSeq(TChar))
           && 
          Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0))
           && _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this)
           && Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0)))
       ==> _module.Memory.fRead($Heap, this, o#0, n#0)
         == $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref);
}

function _module.Memory.fRead#canCall($heap: Heap, this: ref, o#0: ref, n#0: Seq) : bool;

// frame axiom for _module.Memory.fRead
axiom (forall $h0: Heap, $h1: Heap, this: ref, o#0: ref, n#0: Seq :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.fRead($h1, this, o#0, n#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && (_module.Memory.fRead#canCall($h0, this, o#0, n#0)
         || ($Is(o#0, Tclass._module.Object()) && $Is(n#0, TSeq(TChar))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            ($o == this && $f == _module.Memory.objects)
             || Set#IsMember($Unbox(read($h0, this, _module.Memory.objects)): Set, $Box($o))
             || ($o == o#0 && $f == _module.Object.fields)
             || ($o == this && $f == _module.Memory.objects)
             || Set#IsMember($Unbox(read($h0, this, _module.Memory.objects)): Set, $Box($o))
             || ($o == o#0 && $f == _module.Object.fields))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.fRead($h0, this, o#0, n#0)
       == _module.Memory.fRead($h1, this, o#0, n#0));

function _module.Memory.fRead#requires(Heap, ref, ref, Seq) : bool;

// #requires axiom for _module.Memory.fRead
axiom (forall $Heap: Heap, this: ref, o#0: ref, n#0: Seq :: 
  { _module.Memory.fRead#requires($Heap, this, o#0, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $Heap)
       && $Is(o#0, Tclass._module.Object())
       && $Is(n#0, TSeq(TChar))
     ==> _module.Memory.fRead#requires($Heap, this, o#0, n#0)
       == (
        Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0))
         && _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this)
         && Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0))));

procedure {:verboseName "Memory.fRead (well-formedness)"} CheckWellformed$$_module.Memory.fRead(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref where $Is(o#0, Tclass._module.Object()), 
    n#0: Seq where $Is(n#0, TSeq(TChar)))
   returns (r#0: ref);
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.fRead (well-formedness)"} CheckWellformed$$_module.Memory.fRead(this: ref, o#0: ref, n#0: Seq) returns (r#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> ($o == this && $f == _module.Memory.objects)
           || Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
           || ($o == o#0 && $f == _module.Object.fields)
           || ($o == this && $f == _module.Memory.objects)
           || Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
           || ($o == o#0 && $f == _module.Object.fields));
    // Check well-formedness of preconditions, and then assume them
    b$reqreads#0 := $_ReadsFrame[this, _module.Memory.objects];
    assume {:id "id802"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    b$reqreads#1 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (($o == this && $f == _module.Memory.objects)
             || Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o)))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.Memory.Valid#canCall($Heap, this);
    assume {:id "id803"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    assert {:id "id804"} o#0 != null;
    b$reqreads#2 := $_ReadsFrame[o#0, _module.Object.fields];
    assume {:id "id805"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0));
    assert {:id "id806"} b$reqreads#0;
    assert {:id "id807"} b$reqreads#1;
    assert {:id "id808"} b$reqreads#2;
    // Check well-formedness of the reads clause
    assert {:id "id809"} this != null;
    b$reqreads#3 := $_ReadsFrame[this, _module.Memory.objects];
    assert {:id "id810"} o#0 != null;
    assert {:id "id811"} this != null;
    b$reqreads#4 := $_ReadsFrame[this, _module.Memory.objects];
    assert {:id "id812"} o#0 != null;
    assert {:id "id813"} b$reqreads#3;
    assert {:id "id814"} b$reqreads#4;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Memory.fRead($Heap, this, o#0, n#0), Tclass._module.Object());
        assume $Is(r#0, Tclass._module.Object());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id815"} o#0 != null;
        b$reqreads#5 := $_ReadsFrame[o#0, _module.Object.fields];
        assert {:id "id816"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0));
        assume {:id "id817"} _module.Memory.fRead($Heap, this, o#0, n#0)
           == $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.fRead($Heap, this, o#0, n#0), Tclass._module.Object());
        assume {:id "id818"} _module.Memory.fRead($Heap, this, o#0, n#0) == r#0;
        assert {:id "id819"} b$reqreads#5;
        return;

        assume false;
    }
}



procedure {:verboseName "Memory.fInitialise (well-formedness)"} {:timeLimit 15} CheckWellFormed$$_module.Memory.fInitialise(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref
       where $Is(o#0, Tclass._module.Object())
         && $IsAlloc(o#0, Tclass._module.Object(), $Heap), 
    f#0: Seq where $Is(f#0, TSeq(TChar)) && $IsAlloc(f#0, TSeq(TChar), $Heap), 
    t#0: ref
       where $Is(t#0, Tclass._module.Object())
         && $IsAlloc(t#0, Tclass._module.Object(), $Heap));
  free requires 9 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.fInitialise (well-formedness)"} {:timeLimit 15} CheckWellFormed$$_module.Memory.fInitialise(this: ref, o#0: ref, f#0: Seq, t#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##t#0: ref;
  var ##edges#0: Set;
  var ##os#0: Set;
  var ##x#0: bool;
  var ##f#0: ref;
  var ##t#1: ref;
  var ##o#0: ref;
  var ##t#2: DatatypeType;
  var $unchanged#x0: ref;


    // AddMethodImpl: fInitialise, CheckWellFormed$$_module.Memory.fInitialise
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == o#0 && $f == _module.Object.fields);
    assume {:id "id820"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0));
    assert {:id "id821"} o#0 != null;
    assume {:id "id822"} Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(f#0));
    assert {:id "id823"} o#0 != null;
    assume {:id "id824"} !Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(f#0));
    assume {:id "id825"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(t#0));
    if (*)
    {
        assert {:id "id826"} t#0 != null;
        assume {:id "id827"} _module.Region.Isolate_q(_module.Object.region(t#0));
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##t#0 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0, Tclass._module.Object(), $Heap);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##os#0 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#0, TSet(Tclass._module.Object()), $Heap);
        assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        ##edges#0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        // assume allocatedness for argument to function
        assume $IsAlloc(##edges#0, TSet(Tclass._module.Edge()), $Heap);
        assume _module.Memory.refCountEdges#canCall(this, 
          t#0, 
          _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set));
        assume {:id "id828"} _module.Memory.refCountEdges(this, 
            t#0, 
            _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set))
           == LitInt(0);
    }
    else
    {
        assume {:id "id829"} _module.Region.Isolate_q(_module.Object.region(t#0))
           ==> _module.Memory.refCountEdges(this, 
              t#0, 
              _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set))
             == LitInt(0);
    }

    assert {:id "id830"} o#0 != null;
    assert {:id "id831"} Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(f#0));
    assume {:id "id832"} _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType, 
      #_module.Mode.Mut());
    if (*)
    {
        assert {:id "id833"} o#0 != null;
        assert {:id "id834"} t#0 != null;
        assume {:id "id835"} _module.Region#Equal(_module.Object.region(o#0), _module.Object.region(t#0));
    }
    else
    {
        assume {:id "id836"} !_module.Region#Equal(_module.Object.region(o#0), _module.Object.region(t#0));
        assert {:id "id837"} t#0 != null;
        assume {:id "id838"} _module.Region#Equal(_module.Object.region(t#0), #_module.Region.Frozen());
    }

    assert {:id "id839"} o#0 != null;
    ##x#0 := _module.Region.Frozen_q(_module.Object.region(o#0));
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TBool, $Heap);
    assume _module.__default.not#canCall(_module.Region.Frozen_q(_module.Object.region(o#0)));
    assume {:id "id840"} _module.__default.not(_module.Region.Frozen_q(_module.Object.region(o#0)));
    ##f#0 := o#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#0, Tclass._module.Object(), $Heap);
    ##t#1 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#1, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(o#0, t#0);
    assume {:id "id841"} _module.__default.VeniceReferenceOK(o#0, t#0);
    ##o#0 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##o#0, Tclass._module.Object(), $Heap);
    assert {:id "id842"} o#0 != null;
    assert {:id "id843"} Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(f#0));
    ##t#2 := $Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#2, Tclass._module.Mode(), $Heap);
    assume _module.__default.AssignmentCompatible#canCall(t#0, 
      $Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType);
    assume {:id "id844"} _module.__default.AssignmentCompatible(t#0, 
      $Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assume _module.Memory.Valid#canCall($Heap, this);
    assume {:id "id845"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    assert {:id "id846"} o#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == o#0);
    assume (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
           || ($o == o#0 && $f == _module.Object.fields));
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id847"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume {:id "id848"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null
         ==> 
        $o == this && ($f == _module.Memory.objects || $f == alloc)
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    assert {:id "id849"} o#0 != null;
    assume {:id "id850"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(f#0));
    assert {:id "id851"} o#0 != null;
    assert {:id "id852"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(f#0));
    assume {:id "id853"} $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(f#0)]): ref
       == t#0;
    havoc $unchanged#x0;
    assert {:id "id854"} Set#IsMember(Set#Difference($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(o#0))), 
        $Box($unchanged#x0))
       ==> $IsAlloc($unchanged#x0, Tclass._module.Object(), old($Heap));
    assume {:id "id855"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
           && $o != o#0
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    assert {:id "id856"} o#0 != null;
    assert {:id "id857"} o#0 != null;
    assert {:id "id858"} $IsAlloc(o#0, Tclass._module.Object(), old($Heap));
    assume {:id "id859"} Map#Equal($Unbox(read($Heap, o#0, _module.Object.fields)): Map, 
      Map#Build($Unbox(read(old($Heap), o#0, _module.Object.fields)): Map, $Box(f#0), $Box(t#0)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assert {:id "id860"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
    assume {:id "id861"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
}



procedure {:verboseName "Memory.fInitialise (call)"} {:timeLimit 15} Call$$_module.Memory.fInitialise(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref
       where $Is(o#0, Tclass._module.Object())
         && $IsAlloc(o#0, Tclass._module.Object(), $Heap), 
    f#0: Seq where $Is(f#0, TSeq(TChar)) && $IsAlloc(f#0, TSeq(TChar), $Heap), 
    t#0: ref
       where $Is(t#0, Tclass._module.Object())
         && $IsAlloc(t#0, Tclass._module.Object(), $Heap));
  // user-defined preconditions
  requires {:id "id862"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0));
  requires {:id "id863"} Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(f#0));
  requires {:id "id864"} !Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(f#0));
  requires {:id "id865"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(t#0));
  requires {:id "id866"} _module.Region.Isolate_q(_module.Object.region(t#0))
     ==> _module.Memory.refCountEdges(this, 
        t#0, 
        _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set))
       == LitInt(0);
  requires {:id "id867"} _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType, 
    #_module.Mode.Mut());
  requires {:id "id868"} _module.Region#Equal(_module.Object.region(o#0), _module.Object.region(t#0))
     || _module.Region#Equal(_module.Object.region(t#0), #_module.Region.Frozen());
  requires {:id "id869"} _module.__default.not#canCall(_module.Region.Frozen_q(_module.Object.region(o#0)))
     ==> _module.__default.not(_module.Region.Frozen_q(_module.Object.region(o#0)))
       || !_module.Region.Frozen_q(_module.Object.region(o#0));
  requires {:id "id870"} _module.__default.VeniceReferenceOK#canCall(o#0, t#0)
     ==> _module.__default.VeniceReferenceOK(o#0, t#0)
       || (_module.Region.Frozen_q(_module.Object.region(t#0)) ==> Lit(true));
  requires {:id "id871"} _module.__default.VeniceReferenceOK#canCall(o#0, t#0)
     ==> _module.__default.VeniceReferenceOK(o#0, t#0)
       || (!_module.Region.Frozen_q(_module.Object.region(t#0))
         ==> 
        _module.Region.Heap_q(_module.Object.region(o#0))
         ==> _module.Region.Isolate_q(_module.Object.region(t#0))
           || (_module.Region.Heap_q(_module.Object.region(t#0))
             && _module.Region.region(_module.Object.region(t#0))
               == _module.Region.region(_module.Object.region(o#0))));
  requires {:id "id872"} _module.__default.VeniceReferenceOK#canCall(o#0, t#0)
     ==> _module.__default.VeniceReferenceOK(o#0, t#0)
       || (!_module.Region.Frozen_q(_module.Object.region(t#0))
         ==> 
        !_module.Region.Heap_q(_module.Object.region(o#0))
         ==> 
        _module.Region.Isolate_q(_module.Object.region(o#0))
         ==> _module.Region.Isolate_q(_module.Object.region(t#0))
           || (_module.Region.Heap_q(_module.Object.region(t#0))
             && _module.Region.region(_module.Object.region(t#0)) == o#0));
  requires {:id "id873"} _module.__default.VeniceReferenceOK#canCall(o#0, t#0)
     ==> _module.__default.VeniceReferenceOK(o#0, t#0)
       || (!_module.Region.Frozen_q(_module.Object.region(t#0))
         ==> 
        !_module.Region.Heap_q(_module.Object.region(o#0))
         ==> 
        !_module.Region.Isolate_q(_module.Object.region(o#0))
         ==> Lit(false));
  requires {:id "id874"} _module.__default.AssignmentCompatible#canCall(t#0, 
      $Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
     ==> _module.__default.AssignmentCompatible(t#0, 
        $Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
       || (var r#0 := _module.Object.region(t#0); 
        _module.Mode.Imm_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
           ==> _module.Region.Frozen_q(r#0));
  requires {:id "id875"} _module.__default.AssignmentCompatible#canCall(t#0, 
      $Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
     ==> _module.__default.AssignmentCompatible(t#0, 
        $Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
       || (var r#0 := _module.Object.region(t#0); 
        !_module.Mode.Imm_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
           ==> 
          _module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
           ==> _module.Region.Isolate_q(r#0));
  requires {:id "id876"} _module.__default.AssignmentCompatible#canCall(t#0, 
      $Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
     ==> _module.__default.AssignmentCompatible(t#0, 
        $Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
       || (var r#0 := _module.Object.region(t#0); 
        !_module.Mode.Imm_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
           ==> 
          !_module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
           ==> 
          _module.Mode.Mut_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
           ==> _module.Region.Heap_q(r#0));
  requires {:id "id877"} _module.__default.AssignmentCompatible#canCall(t#0, 
      $Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
     ==> _module.__default.AssignmentCompatible(t#0, 
        $Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
       || (var r#0 := _module.Object.region(t#0); 
        !_module.Mode.Imm_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
           ==> 
          !_module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
           ==> 
          !_module.Mode.Mut_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
           ==> 
          _module.Mode.Tmp_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
           ==> _module.Region.Stack_q(r#0));
  requires {:id "id878"} _module.__default.AssignmentCompatible#canCall(t#0, 
      $Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
     ==> _module.__default.AssignmentCompatible(t#0, 
        $Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
       || (var r#0 := _module.Object.region(t#0); 
        !_module.Mode.Imm_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
           ==> 
          !_module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
           ==> 
          !_module.Mode.Mut_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
           ==> 
          !_module.Mode.Tmp_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
           ==> _module.Region.Heap_q(r#0) || _module.Region.Stack_q(r#0));
  requires {:id "id879"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id880"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      $o == this && ($f == _module.Memory.objects || $f == alloc)
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures true;
  ensures {:id "id881"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(f#0));
  free ensures true;
  ensures {:id "id882"} $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(f#0)]): ref
     == t#0;
  free ensures true;
  ensures {:id "id883"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
         && $o != o#0
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures true;
  ensures {:id "id884"} Map#Equal($Unbox(read($Heap, o#0, _module.Object.fields)): Map, 
    Map#Build($Unbox(read(old($Heap), o#0, _module.Object.fields)): Map, $Box(f#0), $Box(t#0)));
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
  ensures {:id "id885"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == o#0);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == o#0 && $f == _module.Object.fields));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Memory.fInitialise (correctness)"} {:timeLimit 15} Impl$$_module.Memory.fInitialise(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref
       where $Is(o#0, Tclass._module.Object())
         && $IsAlloc(o#0, Tclass._module.Object(), $Heap), 
    f#0: Seq where $Is(f#0, TSeq(TChar)) && $IsAlloc(f#0, TSeq(TChar), $Heap), 
    t#0: ref
       where $Is(t#0, Tclass._module.Object())
         && $IsAlloc(t#0, Tclass._module.Object(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 9 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id886"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0));
  requires {:id "id887"} Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(f#0));
  requires {:id "id888"} !Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(f#0));
  requires {:id "id889"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(t#0));
  requires {:id "id890"} _module.Region.Isolate_q(_module.Object.region(t#0))
     ==> _module.Memory.refCountEdges(this, 
        t#0, 
        _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set))
       == LitInt(0);
  requires {:id "id891"} _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType, 
    #_module.Mode.Mut());
  requires {:id "id892"} _module.Region#Equal(_module.Object.region(o#0), _module.Object.region(t#0))
     || _module.Region#Equal(_module.Object.region(t#0), #_module.Region.Frozen());
  free requires {:id "id893"} _module.__default.not#canCall(_module.Region.Frozen_q(_module.Object.region(o#0)))
     && 
    _module.__default.not(_module.Region.Frozen_q(_module.Object.region(o#0)))
     && !_module.Region.Frozen_q(_module.Object.region(o#0));
  free requires {:id "id894"} _module.__default.VeniceReferenceOK#canCall(o#0, t#0)
     && 
    _module.__default.VeniceReferenceOK(o#0, t#0)
     && (if _module.Region.Frozen_q(_module.Object.region(t#0))
       then true
       else (if _module.Region.Heap_q(_module.Object.region(o#0))
         then _module.Region.Isolate_q(_module.Object.region(t#0))
           || (_module.Region.Heap_q(_module.Object.region(t#0))
             && _module.Region.region(_module.Object.region(t#0))
               == _module.Region.region(_module.Object.region(o#0)))
         else (if _module.Region.Isolate_q(_module.Object.region(o#0))
           then _module.Region.Isolate_q(_module.Object.region(t#0))
             || (_module.Region.Heap_q(_module.Object.region(t#0))
               && _module.Region.region(_module.Object.region(t#0)) == o#0)
           else false)));
  free requires {:id "id895"} _module.__default.AssignmentCompatible#canCall(t#0, 
      $Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
     && 
    _module.__default.AssignmentCompatible(t#0, 
      $Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
     && (var r#1 := _module.Object.region(t#0); 
      (if _module.Mode.Imm_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
         then _module.Region.Frozen_q(r#1)
         else (if _module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
           then _module.Region.Isolate_q(r#1)
           else (if _module.Mode.Mut_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
             then _module.Region.Heap_q(r#1)
             else (if _module.Mode.Tmp_q($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(f#0)]): DatatypeType)
               then _module.Region.Stack_q(r#1)
               else _module.Region.Heap_q(r#1) || _module.Region.Stack_q(r#1))))));
  requires {:id "id896"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id897"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      $o == this && ($f == _module.Memory.objects || $f == alloc)
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures true;
  ensures {:id "id898"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(f#0));
  free ensures true;
  ensures {:id "id899"} $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(f#0)]): ref
     == t#0;
  free ensures true;
  ensures {:id "id900"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
         && $o != o#0
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures true;
  ensures {:id "id901"} Map#Equal($Unbox(read($Heap, o#0, _module.Object.fields)): Map, 
    Map#Build($Unbox(read(old($Heap), o#0, _module.Object.fields)): Map, $Box(f#0), $Box(t#0)));
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
  ensures {:id "id902"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == o#0);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == o#0 && $f == _module.Object.fields));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.fInitialise (correctness)"} {:timeLimit 15} Impl$$_module.Memory.fInitialise(this: ref, o#0: ref, f#0: Seq, t#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##os#1: Set;
  var xedges#0: Set
     where $Is(xedges#0, TSet(Tclass._module.Edge()))
       && $IsAlloc(xedges#0, TSet(Tclass._module.Edge()), $Heap);
  var ##os#2: Set;
  var xisos#0: Set
     where $Is(xisos#0, TSet(Tclass._module.Object()))
       && $IsAlloc(xisos#0, TSet(Tclass._module.Object()), $Heap);
  var ##os#3: Set;
  var ##edges#1: Set;
  var $rhs#0: Map;
  var ##os#4: Set;
  var zedges#0: Set
     where $Is(zedges#0, TSet(Tclass._module.Edge()))
       && $IsAlloc(zedges#0, TSet(Tclass._module.Edge()), $Heap);
  var ##os#5: Set;
  var zisos#0: Set
     where $Is(zisos#0, TSet(Tclass._module.Object()))
       && $IsAlloc(zisos#0, TSet(Tclass._module.Object()), $Heap);
  var ##os#6: Set;
  var ##t#3: ref;
  var ##edges#2: Set;
  var ##t#4: ref;
  var ##edges#3: Set;
  var ##t#5: ref;
  var ##edges#4: Set;
  var oo##0: Set;
  var aa##0: Set;
  var bb##0: Set;
  var oo##1: Set;
  var aa##1: Set;
  var bb##1: Set;
  var ##edges#5: Set;
  var ##edges#6: Set;
  var ##edges#7: Set;
  var ##edges#8: Set;
  var ##edges#9: Set;
  var ##os#7: Set;

    // AddMethodImpl: fInitialise, Impl$$_module.Memory.fInitialise
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == o#0 && $f == _module.Object.fields);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(454,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(454,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id903"} Call$$_module.Memory.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(455,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(455,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id904"} Call$$_module.Object.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(456,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(456,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id905"} Call$$_module.Memory.reveal__Valid2(old($Heap), $Heap);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(458,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assume _module.Memory.Valid#canCall($Heap, this);
    assume _module.Memory.Valid#canCall($Heap, this);
    assert {:id "id906"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(459,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#1 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#1, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.wholeEnchilada#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.wholeEnchilada#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assert {:id "id907"} {:subsumption 0} _module.Memory.wholeEnchilada#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
       ==> _module.Memory.wholeEnchilada($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
         || (_module.Memory.isosRefCountZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
           ==> _module.Memory.isosRefCountZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
             || (var edges#0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set); 
              (var isos#0 := _module.Memory.justTheIsos($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set); 
                (forall i#0: ref :: 
                  { _module.Memory.refCountEdges(this, i#0, edges#0) } 
                    { Set#IsMember(isos#0, $Box(i#0)) } 
                  $Is(i#0, Tclass._module.Object()) && Set#IsMember(isos#0, $Box(i#0))
                     ==> _module.Memory.refCountEdges(this, i#0, edges#0) <= LitInt(1)))));
    assert {:id "id908"} {:subsumption 0} _module.Memory.wholeEnchilada#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
       ==> _module.Memory.wholeEnchilada($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
         || (_module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
           ==> _module.Memory.heapExternalsZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
             || (var edges#1 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set); 
              _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, edges#1)
                 ==> _module.Memory.heapExternalsZeroOrOneEdges(this, edges#1)
                   || (var heapExternalEdges#0 := _module.Memory.justHeapExternalEdges(this, edges#1); 
                    (var allRelevantHeapRegions#0 := Set#FromBoogieMap((lambda $y#1: Box :: 
                            (exists he#0: DatatypeType :: 
                              { _module.Edge.t(he#0) } { Set#IsMember(heapExternalEdges#0, $Box(he#0)) } 
                              $Is(he#0, Tclass._module.Edge())
                                 && Set#IsMember(heapExternalEdges#0, $Box(he#0))
                                 && $y#1 == $Box(_module.Object.region(_module.Edge.t(he#0)))))); 
                      (var heapExternalEdgesPartitionedByRegion#0 := Map#Glue(Set#FromBoogieMap((lambda $w#2: Box :: 
                                $IsBox($w#2, Tclass._module.Region())
                                   && Set#IsMember(allRelevantHeapRegions#0, $w#2))), 
                            (lambda $w#2: Box :: 
                              $Box(_module.Memory.externalEdges(this, $Unbox($w#2): DatatypeType, heapExternalEdges#0))), 
                            TMap(Tclass._module.Region(), TSet(Tclass._module.Edge()))); 
                        (forall hr#0: DatatypeType :: 
                          { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#0)[$Box(hr#0)]): Set } 
                            { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#0), $Box(hr#0)) } 
                          $Is(hr#0, Tclass._module.Region())
                               && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#0), $Box(hr#0))
                             ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#0)[$Box(hr#0)]): Set)
                               <= LitInt(1)))))));
    assume {:id "id909"} _module.Memory.wholeEnchilada($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(461,18)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#2 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#2, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    xedges#0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(462,17)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#3 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#3, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.justTheIsos#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.justTheIsos#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    xisos#0 := _module.Memory.justTheIsos($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(464,1)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##edges#1 := xedges#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#1, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, xedges#0);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, xedges#0);
    assert {:id "id912"} {:subsumption 0} _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, xedges#0)
       ==> _module.Memory.heapExternalsZeroOrOneEdges(this, xedges#0)
         || (var heapExternalEdges#1 := _module.Memory.justHeapExternalEdges(this, xedges#0); 
          (var allRelevantHeapRegions#1 := Set#FromBoogieMap((lambda $y#4: Box :: 
                  (exists he#1: DatatypeType :: 
                    { _module.Edge.t(he#1) } { Set#IsMember(heapExternalEdges#1, $Box(he#1)) } 
                    $Is(he#1, Tclass._module.Edge())
                       && Set#IsMember(heapExternalEdges#1, $Box(he#1))
                       && $y#4 == $Box(_module.Object.region(_module.Edge.t(he#1)))))); 
            (var heapExternalEdgesPartitionedByRegion#1 := Map#Glue(Set#FromBoogieMap((lambda $w#6: Box :: 
                      $IsBox($w#6, Tclass._module.Region())
                         && Set#IsMember(allRelevantHeapRegions#1, $w#6))), 
                  (lambda $w#6: Box :: 
                    $Box(_module.Memory.externalEdges(this, $Unbox($w#6): DatatypeType, heapExternalEdges#1))), 
                  TMap(Tclass._module.Region(), TSet(Tclass._module.Edge()))); 
              (forall hr#1: DatatypeType :: 
                { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#1)[$Box(hr#1)]): Set } 
                  { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#1), $Box(hr#1)) } 
                $Is(hr#1, Tclass._module.Region())
                     && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#1), $Box(hr#1))
                   ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#1)[$Box(hr#1)]): Set)
                     <= LitInt(1)))));
    assume {:id "id913"} _module.Memory.heapExternalsZeroOrOneEdges(this, xedges#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(467,16)
    assert {:id "id914"} o#0 != null;
    assume true;
    assert {:id "id915"} $_ModifiesFrame[o#0, _module.Object.fields];
    assert {:id "id916"} o#0 != null;
    assume true;
    $rhs#0 := Map#Build($Unbox(read($Heap, o#0, _module.Object.fields)): Map, $Box(f#0), $Box(t#0));
    $Heap := update($Heap, o#0, _module.Object.fields, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(469,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#4 := Set#UnionOne(Set#Empty(): Set, $Box(o#0));
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#4, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.ObjectsAreValid#canCall($Heap, this, Set#UnionOne(Set#Empty(): Set, $Box(o#0)));
    assume _module.Memory.ObjectsAreValid#canCall($Heap, this, Set#UnionOne(Set#Empty(): Set, $Box(o#0)));
    assert {:id "id919"} {:subsumption 0} _module.Memory.ObjectsAreValid#canCall($Heap, this, Set#UnionOne(Set#Empty(): Set, $Box(o#0)))
       ==> _module.Memory.ObjectsAreValid($Heap, this, Set#UnionOne(Set#Empty(): Set, $Box(o#0)))
         || (forall o#1: ref :: 
          { _module.Object.Valid(reveal__module.Object.Valid, $Heap, o#1) } 
            { Set#IsMember(Set#UnionOne(Set#Empty(): Set, $Box(o#0)), $Box(o#1)) } 
          $Is(o#1, Tclass._module.Object())
               && Set#IsMember(Set#UnionOne(Set#Empty(): Set, $Box(o#0)), $Box(o#1))
             ==> _module.Object.Valid(reveal__module.Object.Valid, $Heap, o#1));
    assume {:id "id920"} _module.Memory.ObjectsAreValid($Heap, this, Set#UnionOne(Set#Empty(): Set, $Box(o#0)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(471,18)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#5 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#5, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    zedges#0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(472,17)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#6 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#6, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.justTheIsos#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.justTheIsos#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    zisos#0 := _module.Memory.justTheIsos($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(474,7)
    assert {:id "id923"} {:subsumption 0} t#0 != null;
    if (_module.Region.Isolate_q(_module.Object.region(t#0)))
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##t#3 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#3, Tclass._module.Object(), $Heap);
        ##edges#2 := xedges#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##edges#2, TSet(Tclass._module.Edge()), $Heap);
        assume _module.Memory.refCountEdges#canCall(this, t#0, xedges#0);
    }

    assume _module.Region.Isolate_q(_module.Object.region(t#0))
       ==> _module.Memory.refCountEdges#canCall(this, t#0, xedges#0);
    assert {:id "id924"} {:subsumption 0} _module.Region.Isolate_q(_module.Object.region(t#0))
       ==> _module.Memory.refCountEdges(this, t#0, xedges#0) == LitInt(0);
    assume {:id "id925"} _module.Region.Isolate_q(_module.Object.region(t#0))
       ==> _module.Memory.refCountEdges(this, t#0, xedges#0) == LitInt(0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(477,7)
    if (o#0 != t#0)
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##t#4 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#4, Tclass._module.Object(), $Heap);
        ##edges#3 := Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(t#0, f#0, o#0)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##edges#3, TSet(Tclass._module.Edge()), $Heap);
        assume _module.Memory.incomingEdges#canCall(this, 
          t#0, 
          Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(t#0, f#0, o#0))));
    }

    assume o#0 != t#0
       ==> _module.Memory.incomingEdges#canCall(this, 
        t#0, 
        Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(t#0, f#0, o#0))));
    assert {:id "id926"} {:subsumption 0} o#0 != t#0
       ==> !Set#Equal(_module.Memory.incomingEdges(this, 
          t#0, 
          Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(t#0, f#0, o#0)))), 
        Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(o#0, f#0, t#0))));
    assume {:id "id927"} o#0 != t#0
       ==> !Set#Equal(_module.Memory.incomingEdges(this, 
          t#0, 
          Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(t#0, f#0, o#0)))), 
        Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(o#0, f#0, t#0))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(478,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##t#5 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#5, Tclass._module.Object(), $Heap);
    ##edges#4 := Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(o#0, f#0, t#0)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#4, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.incomingEdges#canCall(this, 
      t#0, 
      Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(o#0, f#0, t#0))));
    assume _module.Memory.incomingEdges#canCall(this, 
      t#0, 
      Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(o#0, f#0, t#0))));
    assert {:id "id928"} Set#Equal(_module.Memory.incomingEdges(this, 
        t#0, 
        Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(o#0, f#0, t#0)))), 
      Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(o#0, f#0, t#0))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(480,43)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    oo##0 := zisos#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    aa##0 := xedges#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    bb##0 := Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(o#0, f#0, t#0)));
    call {:id "id929"} Call$$_module.Memory.RefCountDistributesOverDisjointEdges(this, oo##0, aa##0, bb##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(482,37)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    oo##1 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    assume true;
    // ProcessCallStmt: CheckSubrange
    aa##1 := xedges#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    bb##1 := Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(o#0, f#0, t#0)));
    call {:id "id930"} Call$$_module.Memory.externalDistributesOverDisjointEdges(this, oo##1, aa##1, bb##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(484,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##edges#5 := xedges#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#5, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, xedges#0);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, xedges#0);
    assert {:id "id931"} {:subsumption 0} _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, xedges#0)
       ==> _module.Memory.heapExternalsZeroOrOneEdges(this, xedges#0)
         || (var heapExternalEdges#2 := _module.Memory.justHeapExternalEdges(this, xedges#0); 
          (var allRelevantHeapRegions#2 := Set#FromBoogieMap((lambda $y#7: Box :: 
                  (exists he#2: DatatypeType :: 
                    { _module.Edge.t(he#2) } { Set#IsMember(heapExternalEdges#2, $Box(he#2)) } 
                    $Is(he#2, Tclass._module.Edge())
                       && Set#IsMember(heapExternalEdges#2, $Box(he#2))
                       && $y#7 == $Box(_module.Object.region(_module.Edge.t(he#2)))))); 
            (var heapExternalEdgesPartitionedByRegion#2 := Map#Glue(Set#FromBoogieMap((lambda $w#10: Box :: 
                      $IsBox($w#10, Tclass._module.Region())
                         && Set#IsMember(allRelevantHeapRegions#2, $w#10))), 
                  (lambda $w#10: Box :: 
                    $Box(_module.Memory.externalEdges(this, $Unbox($w#10): DatatypeType, heapExternalEdges#2))), 
                  TMap(Tclass._module.Region(), TSet(Tclass._module.Edge()))); 
              (forall hr#2: DatatypeType :: 
                { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#2)[$Box(hr#2)]): Set } 
                  { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#2), $Box(hr#2)) } 
                $Is(hr#2, Tclass._module.Region())
                     && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#2), $Box(hr#2))
                   ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#2)[$Box(hr#2)]): Set)
                     <= LitInt(1)))));
    assume {:id "id932"} _module.Memory.heapExternalsZeroOrOneEdges(this, xedges#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(486,3)
    assume true;
    assert {:id "id933"} Set#Equal(zedges#0, 
      Set#Union(xedges#0, 
        Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(o#0, f#0, t#0)))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(487,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##edges#6 := Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(o#0, f#0, t#0)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#6, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.justHeapExternalEdges#canCall(this, Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(o#0, f#0, t#0))));
    assume _module.Memory.justHeapExternalEdges#canCall(this, Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(o#0, f#0, t#0))));
    assert {:id "id934"} Set#Equal(_module.Memory.justHeapExternalEdges(this, Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(o#0, f#0, t#0)))), 
      Set#Empty(): Set);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(488,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##edges#7 := zedges#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#7, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.justHeapExternalEdges#canCall(this, zedges#0);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##edges#8 := xedges#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#8, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.justHeapExternalEdges#canCall(this, xedges#0);
    assume _module.Memory.justHeapExternalEdges#canCall(this, zedges#0)
       && _module.Memory.justHeapExternalEdges#canCall(this, xedges#0);
    assert {:id "id935"} Set#Equal(_module.Memory.justHeapExternalEdges(this, zedges#0), 
      _module.Memory.justHeapExternalEdges(this, xedges#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(490,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##edges#9 := zedges#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#9, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, zedges#0);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, zedges#0);
    assert {:id "id936"} {:subsumption 0} _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, zedges#0)
       ==> _module.Memory.heapExternalsZeroOrOneEdges(this, zedges#0)
         || (var heapExternalEdges#3 := _module.Memory.justHeapExternalEdges(this, zedges#0); 
          (var allRelevantHeapRegions#3 := Set#FromBoogieMap((lambda $y#10: Box :: 
                  (exists he#3: DatatypeType :: 
                    { _module.Edge.t(he#3) } { Set#IsMember(heapExternalEdges#3, $Box(he#3)) } 
                    $Is(he#3, Tclass._module.Edge())
                       && Set#IsMember(heapExternalEdges#3, $Box(he#3))
                       && $y#10 == $Box(_module.Object.region(_module.Edge.t(he#3)))))); 
            (var heapExternalEdgesPartitionedByRegion#3 := Map#Glue(Set#FromBoogieMap((lambda $w#14: Box :: 
                      $IsBox($w#14, Tclass._module.Region())
                         && Set#IsMember(allRelevantHeapRegions#3, $w#14))), 
                  (lambda $w#14: Box :: 
                    $Box(_module.Memory.externalEdges(this, $Unbox($w#14): DatatypeType, heapExternalEdges#3))), 
                  TMap(Tclass._module.Region(), TSet(Tclass._module.Edge()))); 
              (forall hr#3: DatatypeType :: 
                { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#3)[$Box(hr#3)]): Set } 
                  { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#3), $Box(hr#3)) } 
                $Is(hr#3, Tclass._module.Region())
                     && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#3), $Box(hr#3))
                   ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#3)[$Box(hr#3)]): Set)
                     <= LitInt(1)))));
    assume {:id "id937"} _module.Memory.heapExternalsZeroOrOneEdges(this, zedges#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(491,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#7 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#7, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.wholeEnchilada#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.wholeEnchilada#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assert {:id "id938"} {:subsumption 0} _module.Memory.wholeEnchilada#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
       ==> _module.Memory.wholeEnchilada($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
         || (_module.Memory.isosRefCountZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
           ==> _module.Memory.isosRefCountZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
             || (var edges#2 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set); 
              (var isos#1 := _module.Memory.justTheIsos($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set); 
                (forall i#1: ref :: 
                  { _module.Memory.refCountEdges(this, i#1, edges#2) } 
                    { Set#IsMember(isos#1, $Box(i#1)) } 
                  $Is(i#1, Tclass._module.Object()) && Set#IsMember(isos#1, $Box(i#1))
                     ==> _module.Memory.refCountEdges(this, i#1, edges#2) <= LitInt(1)))));
    assert {:id "id939"} {:subsumption 0} _module.Memory.wholeEnchilada#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
       ==> _module.Memory.wholeEnchilada($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
         || (_module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
           ==> _module.Memory.heapExternalsZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
             || (var edges#3 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set); 
              _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, edges#3)
                 ==> _module.Memory.heapExternalsZeroOrOneEdges(this, edges#3)
                   || (var heapExternalEdges#4 := _module.Memory.justHeapExternalEdges(this, edges#3); 
                    (var allRelevantHeapRegions#4 := Set#FromBoogieMap((lambda $y#13: Box :: 
                            (exists he#4: DatatypeType :: 
                              { _module.Edge.t(he#4) } { Set#IsMember(heapExternalEdges#4, $Box(he#4)) } 
                              $Is(he#4, Tclass._module.Edge())
                                 && Set#IsMember(heapExternalEdges#4, $Box(he#4))
                                 && $y#13 == $Box(_module.Object.region(_module.Edge.t(he#4)))))); 
                      (var heapExternalEdgesPartitionedByRegion#4 := Map#Glue(Set#FromBoogieMap((lambda $w#18: Box :: 
                                $IsBox($w#18, Tclass._module.Region())
                                   && Set#IsMember(allRelevantHeapRegions#4, $w#18))), 
                            (lambda $w#18: Box :: 
                              $Box(_module.Memory.externalEdges(this, $Unbox($w#18): DatatypeType, heapExternalEdges#4))), 
                            TMap(Tclass._module.Region(), TSet(Tclass._module.Edge()))); 
                        (forall hr#4: DatatypeType :: 
                          { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#4)[$Box(hr#4)]): Set } 
                            { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#4), $Box(hr#4)) } 
                          $Is(hr#4, Tclass._module.Region())
                               && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#4), $Box(hr#4))
                             ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#4)[$Box(hr#4)]): Set)
                               <= LitInt(1)))))));
    assume {:id "id940"} _module.Memory.wholeEnchilada($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(492,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assert {:id "id941"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
    assert {:id "id942"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
}



procedure {:verboseName "Memory.externalDistributesOverDisjointEdges (well-formedness)"} CheckWellFormed$$_module.Memory.externalDistributesOverDisjointEdges(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    oo#0: Set
       where $Is(oo#0, TSet(Tclass._module.Object()))
         && $IsAlloc(oo#0, TSet(Tclass._module.Object()), $Heap), 
    aa#0: Set
       where $Is(aa#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(aa#0, TSet(Tclass._module.Edge()), $Heap), 
    bb#0: Set
       where $Is(bb#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(bb#0, TSet(Tclass._module.Edge()), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Memory.externalDistributesOverDisjointEdges (call)"} Call$$_module.Memory.externalDistributesOverDisjointEdges(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    oo#0: Set
       where $Is(oo#0, TSet(Tclass._module.Object()))
         && $IsAlloc(oo#0, TSet(Tclass._module.Object()), $Heap), 
    aa#0: Set
       where $Is(aa#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(aa#0, TSet(Tclass._module.Edge()), $Heap), 
    bb#0: Set
       where $Is(bb#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(bb#0, TSet(Tclass._module.Edge()), $Heap));
  // user-defined preconditions
  requires {:id "id948"} Set#Disjoint(aa#0, bb#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType :: 
    { _module.Memory.externalEdges(this, n#1, bb#0) } 
      { _module.Memory.externalEdges(this, n#1, aa#0) } 
      { _module.Memory.externalEdges(this, n#1, Set#Union(aa#0, bb#0)) } 
      { Set#IsMember(_module.Memory.allRegions(this, oo#0), $Box(n#1)) } 
    $Is(n#1, Tclass._module.Region())
       ==> _module.Memory.allRegions#canCall(this, oo#0)
         && (Set#IsMember(_module.Memory.allRegions(this, oo#0), $Box(n#1))
           ==> _module.Memory.externalEdges#canCall(this, n#1, Set#Union(aa#0, bb#0))
             && 
            _module.Memory.externalEdges#canCall(this, n#1, aa#0)
             && _module.Memory.externalEdges#canCall(this, n#1, bb#0)));
  ensures {:id "id949"} (forall n#1: DatatypeType :: 
    { _module.Memory.externalEdges(this, n#1, bb#0) } 
      { _module.Memory.externalEdges(this, n#1, aa#0) } 
      { _module.Memory.externalEdges(this, n#1, Set#Union(aa#0, bb#0)) } 
      { Set#IsMember(_module.Memory.allRegions(this, oo#0), $Box(n#1)) } 
    $Is(n#1, Tclass._module.Region())
         && Set#IsMember(_module.Memory.allRegions(this, oo#0), $Box(n#1))
       ==> Set#Equal(_module.Memory.externalEdges(this, n#1, Set#Union(aa#0, bb#0)), 
        Set#Union(_module.Memory.externalEdges(this, n#1, aa#0), 
          _module.Memory.externalEdges(this, n#1, bb#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Memory.externalDistributesOverDisjointEdges (correctness)"} Impl$$_module.Memory.externalDistributesOverDisjointEdges(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    oo#0: Set
       where $Is(oo#0, TSet(Tclass._module.Object()))
         && $IsAlloc(oo#0, TSet(Tclass._module.Object()), $Heap), 
    aa#0: Set
       where $Is(aa#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(aa#0, TSet(Tclass._module.Edge()), $Heap), 
    bb#0: Set
       where $Is(bb#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(bb#0, TSet(Tclass._module.Edge()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id950"} Set#Disjoint(aa#0, bb#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType :: 
    { _module.Memory.externalEdges(this, n#1, bb#0) } 
      { _module.Memory.externalEdges(this, n#1, aa#0) } 
      { _module.Memory.externalEdges(this, n#1, Set#Union(aa#0, bb#0)) } 
      { Set#IsMember(_module.Memory.allRegions(this, oo#0), $Box(n#1)) } 
    $Is(n#1, Tclass._module.Region())
       ==> _module.Memory.allRegions#canCall(this, oo#0)
         && (Set#IsMember(_module.Memory.allRegions(this, oo#0), $Box(n#1))
           ==> _module.Memory.externalEdges#canCall(this, n#1, Set#Union(aa#0, bb#0))
             && 
            _module.Memory.externalEdges#canCall(this, n#1, aa#0)
             && _module.Memory.externalEdges#canCall(this, n#1, bb#0)));
  ensures {:id "id951"} (forall n#1: DatatypeType :: 
    { _module.Memory.externalEdges(this, n#1, bb#0) } 
      { _module.Memory.externalEdges(this, n#1, aa#0) } 
      { _module.Memory.externalEdges(this, n#1, Set#Union(aa#0, bb#0)) } 
      { Set#IsMember(_module.Memory.allRegions(this, oo#0), $Box(n#1)) } 
    $Is(n#1, Tclass._module.Region())
         && Set#IsMember(_module.Memory.allRegions(this, oo#0), $Box(n#1))
       ==> Set#Equal(_module.Memory.externalEdges(this, n#1, Set#Union(aa#0, bb#0)), 
        Set#Union(_module.Memory.externalEdges(this, n#1, aa#0), 
          _module.Memory.externalEdges(this, n#1, bb#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.externalDistributesOverDisjointEdges (correctness)"} Impl$$_module.Memory.externalDistributesOverDisjointEdges(this: ref, oo#0: Set, aa#0: Set, bb#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: externalDistributesOverDisjointEdges, Impl$$_module.Memory.externalDistributesOverDisjointEdges
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "Memory.RefCountDistributesOverDisjointEdges (well-formedness)"} CheckWellFormed$$_module.Memory.RefCountDistributesOverDisjointEdges(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    oo#0: Set
       where $Is(oo#0, TSet(Tclass._module.Object()))
         && $IsAlloc(oo#0, TSet(Tclass._module.Object()), $Heap), 
    aa#0: Set
       where $Is(aa#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(aa#0, TSet(Tclass._module.Edge()), $Heap), 
    bb#0: Set
       where $Is(bb#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(bb#0, TSet(Tclass._module.Edge()), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Memory.RefCountDistributesOverDisjointEdges (call)"} Call$$_module.Memory.RefCountDistributesOverDisjointEdges(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    oo#0: Set
       where $Is(oo#0, TSet(Tclass._module.Object()))
         && $IsAlloc(oo#0, TSet(Tclass._module.Object()), $Heap), 
    aa#0: Set
       where $Is(aa#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(aa#0, TSet(Tclass._module.Edge()), $Heap), 
    bb#0: Set
       where $Is(bb#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(bb#0, TSet(Tclass._module.Edge()), $Heap));
  // user-defined preconditions
  requires {:id "id957"} Set#Disjoint(aa#0, bb#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall i#1: ref :: 
    { _module.Memory.refCountEdges(this, i#1, bb#0) } 
      { _module.Memory.refCountEdges(this, i#1, aa#0) } 
      { _module.Memory.refCountEdges(this, i#1, Set#Union(aa#0, bb#0)) } 
      { Set#IsMember(oo#0, $Box(i#1)) } 
    $Is(i#1, Tclass._module.Object())
       ==> 
      Set#IsMember(oo#0, $Box(i#1))
       ==> _module.Memory.refCountEdges#canCall(this, i#1, Set#Union(aa#0, bb#0))
         && 
        _module.Memory.refCountEdges#canCall(this, i#1, aa#0)
         && _module.Memory.refCountEdges#canCall(this, i#1, bb#0));
  ensures {:id "id958"} (forall i#1: ref :: 
    { _module.Memory.refCountEdges(this, i#1, bb#0) } 
      { _module.Memory.refCountEdges(this, i#1, aa#0) } 
      { _module.Memory.refCountEdges(this, i#1, Set#Union(aa#0, bb#0)) } 
      { Set#IsMember(oo#0, $Box(i#1)) } 
    $Is(i#1, Tclass._module.Object()) && Set#IsMember(oo#0, $Box(i#1))
       ==> _module.Memory.refCountEdges(this, i#1, Set#Union(aa#0, bb#0))
         == _module.Memory.refCountEdges(this, i#1, aa#0)
           + _module.Memory.refCountEdges(this, i#1, bb#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Memory.RefCountDistributesOverDisjointEdges (correctness)"} Impl$$_module.Memory.RefCountDistributesOverDisjointEdges(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    oo#0: Set
       where $Is(oo#0, TSet(Tclass._module.Object()))
         && $IsAlloc(oo#0, TSet(Tclass._module.Object()), $Heap), 
    aa#0: Set
       where $Is(aa#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(aa#0, TSet(Tclass._module.Edge()), $Heap), 
    bb#0: Set
       where $Is(bb#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(bb#0, TSet(Tclass._module.Edge()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id959"} Set#Disjoint(aa#0, bb#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall i#1: ref :: 
    { _module.Memory.refCountEdges(this, i#1, bb#0) } 
      { _module.Memory.refCountEdges(this, i#1, aa#0) } 
      { _module.Memory.refCountEdges(this, i#1, Set#Union(aa#0, bb#0)) } 
      { Set#IsMember(oo#0, $Box(i#1)) } 
    $Is(i#1, Tclass._module.Object())
       ==> 
      Set#IsMember(oo#0, $Box(i#1))
       ==> _module.Memory.refCountEdges#canCall(this, i#1, Set#Union(aa#0, bb#0))
         && 
        _module.Memory.refCountEdges#canCall(this, i#1, aa#0)
         && _module.Memory.refCountEdges#canCall(this, i#1, bb#0));
  ensures {:id "id960"} (forall i#1: ref :: 
    { _module.Memory.refCountEdges(this, i#1, bb#0) } 
      { _module.Memory.refCountEdges(this, i#1, aa#0) } 
      { _module.Memory.refCountEdges(this, i#1, Set#Union(aa#0, bb#0)) } 
      { Set#IsMember(oo#0, $Box(i#1)) } 
    $Is(i#1, Tclass._module.Object()) && Set#IsMember(oo#0, $Box(i#1))
       ==> _module.Memory.refCountEdges(this, i#1, Set#Union(aa#0, bb#0))
         == _module.Memory.refCountEdges(this, i#1, aa#0)
           + _module.Memory.refCountEdges(this, i#1, bb#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.RefCountDistributesOverDisjointEdges (correctness)"} Impl$$_module.Memory.RefCountDistributesOverDisjointEdges(this: ref, oo#0: Set, aa#0: Set, bb#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#2: ref;
  var e#0: DatatypeType;
  var e#1: DatatypeType;
  var e#2: DatatypeType;
  var i#4: ref;
  var ##t#3: ref;
  var ##edges#3: Set;
  var ##t#4: ref;
  var ##edges#4: Set;
  var ##t#5: ref;
  var ##edges#5: Set;
  var i#6: ref;
  var ##t#6: ref;
  var ##edges#6: Set;
  var ##t#7: ref;
  var ##edges#7: Set;
  var ##t#8: ref;
  var ##edges#8: Set;

    // AddMethodImpl: RefCountDistributesOverDisjointEdges, Impl$$_module.Memory.RefCountDistributesOverDisjointEdges
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(524,8)
    // Begin Comprehension WF check
    havoc i#2;
    if ($Is(i#2, Tclass._module.Object())
       && $IsAlloc(i#2, Tclass._module.Object(), $Heap))
    {
        if (Set#IsMember(oo#0, $Box(i#2)))
        {
            // Begin Comprehension WF check
            havoc e#0;
            if ($Is(e#0, Tclass._module.Edge()) && $IsAlloc(e#0, Tclass._module.Edge(), $Heap))
            {
                if (Set#IsMember(aa#0, $Box(e#0)))
                {
                    assume _module.Edge.Edge_q(e#0);
                }

                if (Set#IsMember(aa#0, $Box(e#0)) && _module.Edge.t(e#0) == i#2)
                {
                }
            }

            // End Comprehension WF check
            // Begin Comprehension WF check
            havoc e#1;
            if ($Is(e#1, Tclass._module.Edge()) && $IsAlloc(e#1, Tclass._module.Edge(), $Heap))
            {
                if (Set#IsMember(bb#0, $Box(e#1)))
                {
                    assume _module.Edge.Edge_q(e#1);
                }

                if (Set#IsMember(bb#0, $Box(e#1)) && _module.Edge.t(e#1) == i#2)
                {
                }
            }

            // End Comprehension WF check
            // Begin Comprehension WF check
            havoc e#2;
            if ($Is(e#2, Tclass._module.Edge()) && $IsAlloc(e#2, Tclass._module.Edge(), $Heap))
            {
                if (Set#IsMember(Set#Union(aa#0, bb#0), $Box(e#2)))
                {
                    assume _module.Edge.Edge_q(e#2);
                }

                if (Set#IsMember(Set#Union(aa#0, bb#0), $Box(e#2)) && _module.Edge.t(e#2) == i#2)
                {
                }
            }

            // End Comprehension WF check
        }
    }

    // End Comprehension WF check
    assume (forall i#3: ref :: 
      { Set#IsMember(oo#0, $Box(i#3)) } 
      $Is(i#3, Tclass._module.Object())
         ==> 
        Set#IsMember(oo#0, $Box(i#3))
         ==> (forall e#3: DatatypeType :: 
            { _module.Edge.t(e#3) } { Set#IsMember(aa#0, $Box(e#3)) } 
            $Is(e#3, Tclass._module.Edge())
               ==> 
              Set#IsMember(aa#0, $Box(e#3))
               ==> _module.Edge.Edge_q(e#3))
           && (forall e#4: DatatypeType :: 
            { _module.Edge.t(e#4) } { Set#IsMember(bb#0, $Box(e#4)) } 
            $Is(e#4, Tclass._module.Edge())
               ==> 
              Set#IsMember(bb#0, $Box(e#4))
               ==> _module.Edge.Edge_q(e#4))
           && (forall e#5: DatatypeType :: 
            { _module.Edge.t(e#5) } { Set#IsMember(Set#Union(aa#0, bb#0), $Box(e#5)) } 
            $Is(e#5, Tclass._module.Edge())
               ==> 
              Set#IsMember(Set#Union(aa#0, bb#0), $Box(e#5))
               ==> _module.Edge.Edge_q(e#5)));
    assert {:id "id961"} (forall i#3: ref :: 
      { Set#IsMember(oo#0, $Box(i#3)) } 
      $Is(i#3, Tclass._module.Object()) && Set#IsMember(oo#0, $Box(i#3))
         ==> Set#Equal(Set#Union(Set#FromBoogieMap((lambda $y#3: Box :: 
                $IsBox($y#3, Tclass._module.Edge())
                   && 
                  Set#IsMember(aa#0, $y#3)
                   && _module.Edge.t($Unbox($y#3): DatatypeType) == i#3)), 
            Set#FromBoogieMap((lambda $y#4: Box :: 
                $IsBox($y#4, Tclass._module.Edge())
                   && 
                  Set#IsMember(bb#0, $y#4)
                   && _module.Edge.t($Unbox($y#4): DatatypeType) == i#3))), 
          Set#FromBoogieMap((lambda $y#5: Box :: 
              $IsBox($y#5, Tclass._module.Edge())
                 && 
                Set#IsMember(Set#Union(aa#0, bb#0), $y#5)
                 && _module.Edge.t($Unbox($y#5): DatatypeType) == i#3))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(527,8)
    // Begin Comprehension WF check
    havoc i#4;
    if ($Is(i#4, Tclass._module.Object())
       && $IsAlloc(i#4, Tclass._module.Object(), $Heap))
    {
        if (Set#IsMember(oo#0, $Box(i#4)))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##t#3 := i#4;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#3, Tclass._module.Object(), $Heap);
            ##edges#3 := aa#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##edges#3, TSet(Tclass._module.Edge()), $Heap);
            assume _module.Memory.incomingEdges#canCall(this, i#4, aa#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##t#4 := i#4;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#4, Tclass._module.Object(), $Heap);
            ##edges#4 := bb#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##edges#4, TSet(Tclass._module.Edge()), $Heap);
            assume _module.Memory.incomingEdges#canCall(this, i#4, bb#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##t#5 := i#4;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#5, Tclass._module.Object(), $Heap);
            ##edges#5 := Set#Union(aa#0, bb#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##edges#5, TSet(Tclass._module.Edge()), $Heap);
            assume _module.Memory.incomingEdges#canCall(this, i#4, Set#Union(aa#0, bb#0));
        }
    }

    // End Comprehension WF check
    assume (forall i#5: ref :: 
      { _module.Memory.incomingEdges(this, i#5, Set#Union(aa#0, bb#0)) } 
        { _module.Memory.incomingEdges(this, i#5, bb#0) } 
        { _module.Memory.incomingEdges(this, i#5, aa#0) } 
        { Set#IsMember(oo#0, $Box(i#5)) } 
      $Is(i#5, Tclass._module.Object())
         ==> 
        Set#IsMember(oo#0, $Box(i#5))
         ==> _module.Memory.incomingEdges#canCall(this, i#5, aa#0)
           && _module.Memory.incomingEdges#canCall(this, i#5, bb#0)
           && _module.Memory.incomingEdges#canCall(this, i#5, Set#Union(aa#0, bb#0)));
    assert {:id "id962"} (forall i#5: ref :: 
      { _module.Memory.incomingEdges(this, i#5, Set#Union(aa#0, bb#0)) } 
        { _module.Memory.incomingEdges(this, i#5, bb#0) } 
        { _module.Memory.incomingEdges(this, i#5, aa#0) } 
        { Set#IsMember(oo#0, $Box(i#5)) } 
      $Is(i#5, Tclass._module.Object()) && Set#IsMember(oo#0, $Box(i#5))
         ==> Set#Equal(Set#Union(_module.Memory.incomingEdges(this, i#5, aa#0), 
            _module.Memory.incomingEdges(this, i#5, bb#0)), 
          _module.Memory.incomingEdges(this, i#5, Set#Union(aa#0, bb#0))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(530,8)
    // Begin Comprehension WF check
    havoc i#6;
    if ($Is(i#6, Tclass._module.Object())
       && $IsAlloc(i#6, Tclass._module.Object(), $Heap))
    {
        if (Set#IsMember(oo#0, $Box(i#6)))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##t#6 := i#6;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#6, Tclass._module.Object(), $Heap);
            ##edges#6 := aa#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##edges#6, TSet(Tclass._module.Edge()), $Heap);
            assume _module.Memory.refCountEdges#canCall(this, i#6, aa#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##t#7 := i#6;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#7, Tclass._module.Object(), $Heap);
            ##edges#7 := bb#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##edges#7, TSet(Tclass._module.Edge()), $Heap);
            assume _module.Memory.refCountEdges#canCall(this, i#6, bb#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##t#8 := i#6;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#8, Tclass._module.Object(), $Heap);
            ##edges#8 := Set#Union(aa#0, bb#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##edges#8, TSet(Tclass._module.Edge()), $Heap);
            assume _module.Memory.refCountEdges#canCall(this, i#6, Set#Union(aa#0, bb#0));
        }
    }

    // End Comprehension WF check
    assume (forall i#7: ref :: 
      { _module.Memory.refCountEdges(this, i#7, Set#Union(aa#0, bb#0)) } 
        { _module.Memory.refCountEdges(this, i#7, bb#0) } 
        { _module.Memory.refCountEdges(this, i#7, aa#0) } 
        { Set#IsMember(oo#0, $Box(i#7)) } 
      $Is(i#7, Tclass._module.Object())
         ==> 
        Set#IsMember(oo#0, $Box(i#7))
         ==> _module.Memory.refCountEdges#canCall(this, i#7, aa#0)
           && _module.Memory.refCountEdges#canCall(this, i#7, bb#0)
           && _module.Memory.refCountEdges#canCall(this, i#7, Set#Union(aa#0, bb#0)));
    assert {:id "id963"} (forall i#7: ref :: 
      { _module.Memory.refCountEdges(this, i#7, Set#Union(aa#0, bb#0)) } 
        { _module.Memory.refCountEdges(this, i#7, bb#0) } 
        { _module.Memory.refCountEdges(this, i#7, aa#0) } 
        { Set#IsMember(oo#0, $Box(i#7)) } 
      $Is(i#7, Tclass._module.Object()) && Set#IsMember(oo#0, $Box(i#7))
         ==> _module.Memory.refCountEdges(this, i#7, aa#0)
             + _module.Memory.refCountEdges(this, i#7, bb#0)
           == _module.Memory.refCountEdges(this, i#7, Set#Union(aa#0, bb#0)));
}



procedure {:verboseName "Memory.BiggerIsBigger (well-formedness)"} CheckWellFormed$$_module.Memory.BiggerIsBigger(_module.Memory.BiggerIsBigger$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    aa#0: Set
       where $Is(aa#0, TSet(_module.Memory.BiggerIsBigger$T))
         && $IsAlloc(aa#0, TSet(_module.Memory.BiggerIsBigger$T), $Heap), 
    bb#0: Set
       where $Is(bb#0, TSet(_module.Memory.BiggerIsBigger$T))
         && $IsAlloc(bb#0, TSet(_module.Memory.BiggerIsBigger$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Memory.BiggerIsBigger (call)"} Call$$_module.Memory.BiggerIsBigger(_module.Memory.BiggerIsBigger$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    aa#0: Set
       where $Is(aa#0, TSet(_module.Memory.BiggerIsBigger$T))
         && $IsAlloc(aa#0, TSet(_module.Memory.BiggerIsBigger$T), $Heap), 
    bb#0: Set
       where $Is(bb#0, TSet(_module.Memory.BiggerIsBigger$T))
         && $IsAlloc(bb#0, TSet(_module.Memory.BiggerIsBigger$T), $Heap));
  // user-defined preconditions
  requires {:id "id966"} Set#Subset(bb#0, aa#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id967"} Set#Card(aa#0) >= Set#Card(bb#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Memory.BiggerIsBigger (correctness)"} Impl$$_module.Memory.BiggerIsBigger(_module.Memory.BiggerIsBigger$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    aa#0: Set
       where $Is(aa#0, TSet(_module.Memory.BiggerIsBigger$T))
         && $IsAlloc(aa#0, TSet(_module.Memory.BiggerIsBigger$T), $Heap), 
    bb#0: Set
       where $Is(bb#0, TSet(_module.Memory.BiggerIsBigger$T))
         && $IsAlloc(bb#0, TSet(_module.Memory.BiggerIsBigger$T), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id968"} Set#Subset(bb#0, aa#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id969"} Set#Card(aa#0) >= Set#Card(bb#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.BiggerIsBigger (correctness)"} Impl$$_module.Memory.BiggerIsBigger(_module.Memory.BiggerIsBigger$T: Ty, this: ref, aa#0: Set, bb#0: Set)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var xs#0: Set
     where $Is(xs#0, TSet(_module.Memory.BiggerIsBigger$T))
       && $IsAlloc(xs#0, TSet(_module.Memory.BiggerIsBigger$T), $Heap);

    // AddMethodImpl: BiggerIsBigger, Impl$$_module.Memory.BiggerIsBigger
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(542,10)
    assume true;
    assume true;
    xs#0 := Set#Difference(aa#0, bb#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(543,3)
    assume true;
    assert {:id "id971"} Set#Card(aa#0) == Set#Card(bb#0) + Set#Card(xs#0);
}



procedure {:verboseName "Memory.RefCountIsMonotonic (well-formedness)"} CheckWellFormed$$_module.Memory.RefCountIsMonotonic(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    oo#0: Set
       where $Is(oo#0, TSet(Tclass._module.Object()))
         && $IsAlloc(oo#0, TSet(Tclass._module.Object()), $Heap), 
    aa#0: Set
       where $Is(aa#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(aa#0, TSet(Tclass._module.Edge()), $Heap), 
    bb#0: Set
       where $Is(bb#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(bb#0, TSet(Tclass._module.Edge()), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Memory.RefCountIsMonotonic (call)"} Call$$_module.Memory.RefCountIsMonotonic(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    oo#0: Set
       where $Is(oo#0, TSet(Tclass._module.Object()))
         && $IsAlloc(oo#0, TSet(Tclass._module.Object()), $Heap), 
    aa#0: Set
       where $Is(aa#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(aa#0, TSet(Tclass._module.Edge()), $Heap), 
    bb#0: Set
       where $Is(bb#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(bb#0, TSet(Tclass._module.Edge()), $Heap));
  // user-defined preconditions
  requires {:id "id977"} Set#Subset(bb#0, aa#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall i#1: ref :: 
    { _module.Memory.refCountEdges(this, i#1, bb#0) } 
      { _module.Memory.refCountEdges(this, i#1, aa#0) } 
      { Set#IsMember(oo#0, $Box(i#1)) } 
    $Is(i#1, Tclass._module.Object())
       ==> 
      Set#IsMember(oo#0, $Box(i#1))
       ==> _module.Memory.refCountEdges#canCall(this, i#1, aa#0)
         && _module.Memory.refCountEdges#canCall(this, i#1, bb#0));
  ensures {:id "id978"} (forall i#1: ref :: 
    { _module.Memory.refCountEdges(this, i#1, bb#0) } 
      { _module.Memory.refCountEdges(this, i#1, aa#0) } 
      { Set#IsMember(oo#0, $Box(i#1)) } 
    $Is(i#1, Tclass._module.Object()) && Set#IsMember(oo#0, $Box(i#1))
       ==> _module.Memory.refCountEdges(this, i#1, aa#0)
         >= _module.Memory.refCountEdges(this, i#1, bb#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Memory.RefCountIsMonotonic (correctness)"} Impl$$_module.Memory.RefCountIsMonotonic(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    oo#0: Set
       where $Is(oo#0, TSet(Tclass._module.Object()))
         && $IsAlloc(oo#0, TSet(Tclass._module.Object()), $Heap), 
    aa#0: Set
       where $Is(aa#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(aa#0, TSet(Tclass._module.Edge()), $Heap), 
    bb#0: Set
       where $Is(bb#0, TSet(Tclass._module.Edge()))
         && $IsAlloc(bb#0, TSet(Tclass._module.Edge()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id979"} Set#Subset(bb#0, aa#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall i#1: ref :: 
    { _module.Memory.refCountEdges(this, i#1, bb#0) } 
      { _module.Memory.refCountEdges(this, i#1, aa#0) } 
      { Set#IsMember(oo#0, $Box(i#1)) } 
    $Is(i#1, Tclass._module.Object())
       ==> 
      Set#IsMember(oo#0, $Box(i#1))
       ==> _module.Memory.refCountEdges#canCall(this, i#1, aa#0)
         && _module.Memory.refCountEdges#canCall(this, i#1, bb#0));
  ensures {:id "id980"} (forall i#1: ref :: 
    { _module.Memory.refCountEdges(this, i#1, bb#0) } 
      { _module.Memory.refCountEdges(this, i#1, aa#0) } 
      { Set#IsMember(oo#0, $Box(i#1)) } 
    $Is(i#1, Tclass._module.Object()) && Set#IsMember(oo#0, $Box(i#1))
       ==> _module.Memory.refCountEdges(this, i#1, aa#0)
         >= _module.Memory.refCountEdges(this, i#1, bb#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.RefCountIsMonotonic (correctness)"} Impl$$_module.Memory.RefCountIsMonotonic(this: ref, oo#0: Set, aa#0: Set, bb#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#2: ref;
  var e#0: DatatypeType;
  var e#1: DatatypeType;
  var i#0_0: ref;
  var ##t#0_0: ref;
  var ##edges#0_0: Set;
  var ##t#0_1: ref;
  var ##edges#0_1: Set;
  var aa##0_0: Set;
  var ##t#0_2: ref;
  var ##edges#0_2: Set;
  var bb##0_0: Set;
  var ##t#0_3: ref;
  var ##edges#0_3: Set;
  var i#4: ref;
  var ##t#2: ref;
  var ##edges#2: Set;
  var ##t#3: ref;
  var ##edges#3: Set;
  var i#6: ref;
  var ##t#4: ref;
  var ##edges#4: Set;
  var ##t#5: ref;
  var ##edges#5: Set;

    // AddMethodImpl: RefCountIsMonotonic, Impl$$_module.Memory.RefCountIsMonotonic
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(552,7)
    assume true;
    assert {:id "id981"} Set#Subset(bb#0, aa#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(553,7)
    // Begin Comprehension WF check
    havoc i#2;
    if ($Is(i#2, Tclass._module.Object())
       && $IsAlloc(i#2, Tclass._module.Object(), $Heap))
    {
        if (Set#IsMember(oo#0, $Box(i#2)))
        {
            // Begin Comprehension WF check
            havoc e#0;
            if ($Is(e#0, Tclass._module.Edge()) && $IsAlloc(e#0, Tclass._module.Edge(), $Heap))
            {
                if (Set#IsMember(aa#0, $Box(e#0)))
                {
                    assume _module.Edge.Edge_q(e#0);
                }

                if (Set#IsMember(aa#0, $Box(e#0)) && _module.Edge.t(e#0) == i#2)
                {
                }
            }

            // End Comprehension WF check
            // Begin Comprehension WF check
            havoc e#1;
            if ($Is(e#1, Tclass._module.Edge()) && $IsAlloc(e#1, Tclass._module.Edge(), $Heap))
            {
                if (Set#IsMember(bb#0, $Box(e#1)))
                {
                    assume _module.Edge.Edge_q(e#1);
                }

                if (Set#IsMember(bb#0, $Box(e#1)) && _module.Edge.t(e#1) == i#2)
                {
                }
            }

            // End Comprehension WF check
        }
    }

    // End Comprehension WF check
    assume (forall i#3: ref :: 
      { Set#IsMember(oo#0, $Box(i#3)) } 
      $Is(i#3, Tclass._module.Object())
         ==> 
        Set#IsMember(oo#0, $Box(i#3))
         ==> (forall e#2: DatatypeType :: 
            { _module.Edge.t(e#2) } { Set#IsMember(aa#0, $Box(e#2)) } 
            $Is(e#2, Tclass._module.Edge())
               ==> 
              Set#IsMember(aa#0, $Box(e#2))
               ==> _module.Edge.Edge_q(e#2))
           && (forall e#3: DatatypeType :: 
            { _module.Edge.t(e#3) } { Set#IsMember(bb#0, $Box(e#3)) } 
            $Is(e#3, Tclass._module.Edge())
               ==> 
              Set#IsMember(bb#0, $Box(e#3))
               ==> _module.Edge.Edge_q(e#3)));
    assert {:id "id982"} (forall i#3: ref :: 
      { Set#IsMember(oo#0, $Box(i#3)) } 
      $Is(i#3, Tclass._module.Object()) && Set#IsMember(oo#0, $Box(i#3))
         ==> Set#Subset(Set#FromBoogieMap((lambda $y#3: Box :: 
              $IsBox($y#3, Tclass._module.Edge())
                 && 
                Set#IsMember(bb#0, $y#3)
                 && _module.Edge.t($Unbox($y#3): DatatypeType) == i#3)), 
          Set#FromBoogieMap((lambda $y#2: Box :: 
              $IsBox($y#2, Tclass._module.Edge())
                 && 
                Set#IsMember(aa#0, $y#2)
                 && _module.Edge.t($Unbox($y#2): DatatypeType) == i#3))));
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(556,7)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#0_0;
        assume $Is(i#0_0, Tclass._module.Object());
        assume true;
        assume {:id "id983"} Set#IsMember(oo#0, $Box(i#0_0));
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##t#0_0 := i#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0_0, Tclass._module.Object(), $Heap);
            ##edges#0_0 := aa#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##edges#0_0, TSet(Tclass._module.Edge()), $Heap);
            assume _module.Memory.incomingEdges#canCall(this, i#0_0, aa#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##t#0_1 := i#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0_1, Tclass._module.Object(), $Heap);
            ##edges#0_1 := bb#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##edges#0_1, TSet(Tclass._module.Edge()), $Heap);
            assume _module.Memory.incomingEdges#canCall(this, i#0_0, bb#0);
            assume _module.Memory.incomingEdges#canCall(this, i#0_0, aa#0)
               && _module.Memory.incomingEdges#canCall(this, i#0_0, bb#0);
            assume {:id "id984"} Set#Card(_module.Memory.incomingEdges(this, i#0_0, aa#0))
               >= Set#Card(_module.Memory.incomingEdges(this, i#0_0, bb#0));
            assume false;
        }

        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(559,24)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##t#0_2 := i#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0_2, Tclass._module.Object(), $Heap);
        ##edges#0_2 := aa#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##edges#0_2, TSet(Tclass._module.Edge()), $Heap);
        assume _module.Memory.incomingEdges#canCall(this, i#0_0, aa#0);
        assume _module.Memory.incomingEdges#canCall(this, i#0_0, aa#0);
        // ProcessCallStmt: CheckSubrange
        aa##0_0 := _module.Memory.incomingEdges(this, i#0_0, aa#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##t#0_3 := i#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0_3, Tclass._module.Object(), $Heap);
        ##edges#0_3 := bb#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##edges#0_3, TSet(Tclass._module.Edge()), $Heap);
        assume _module.Memory.incomingEdges#canCall(this, i#0_0, bb#0);
        assume _module.Memory.incomingEdges#canCall(this, i#0_0, bb#0);
        // ProcessCallStmt: CheckSubrange
        bb##0_0 := _module.Memory.incomingEdges(this, i#0_0, bb#0);
        call {:id "id985"} Call$$_module.Memory.BiggerIsBigger(Tclass._module.Edge(), this, aa##0_0, bb##0_0);
        // TrCallStmt: After ProcessCallStmt
        pop;
        assert {:id "id986"} Set#Card(_module.Memory.incomingEdges(this, i#0_0, aa#0))
           >= Set#Card(_module.Memory.incomingEdges(this, i#0_0, bb#0));
        assume false;
    }
    else
    {
        assume (forall i#0_1: ref :: 
          { _module.Memory.incomingEdges(this, i#0_1, bb#0) } 
            { _module.Memory.incomingEdges(this, i#0_1, aa#0) } 
            { Set#IsMember(oo#0, $Box(i#0_1)) } 
          $Is(i#0_1, Tclass._module.Object()) && Set#IsMember(oo#0, $Box(i#0_1))
             ==> Set#Card(_module.Memory.incomingEdges(this, i#0_1, aa#0))
               >= Set#Card(_module.Memory.incomingEdges(this, i#0_1, bb#0)));
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(561,7)
    // Begin Comprehension WF check
    havoc i#4;
    if ($Is(i#4, Tclass._module.Object())
       && $IsAlloc(i#4, Tclass._module.Object(), $Heap))
    {
        if (Set#IsMember(oo#0, $Box(i#4)))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##t#2 := i#4;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#2, Tclass._module.Object(), $Heap);
            ##edges#2 := aa#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##edges#2, TSet(Tclass._module.Edge()), $Heap);
            assume _module.Memory.incomingEdges#canCall(this, i#4, aa#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##t#3 := i#4;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#3, Tclass._module.Object(), $Heap);
            ##edges#3 := bb#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##edges#3, TSet(Tclass._module.Edge()), $Heap);
            assume _module.Memory.incomingEdges#canCall(this, i#4, bb#0);
        }
    }

    // End Comprehension WF check
    assume (forall i#5: ref :: 
      { _module.Memory.incomingEdges(this, i#5, bb#0) } 
        { _module.Memory.incomingEdges(this, i#5, aa#0) } 
        { Set#IsMember(oo#0, $Box(i#5)) } 
      $Is(i#5, Tclass._module.Object())
         ==> 
        Set#IsMember(oo#0, $Box(i#5))
         ==> _module.Memory.incomingEdges#canCall(this, i#5, aa#0)
           && _module.Memory.incomingEdges#canCall(this, i#5, bb#0));
    assert {:id "id987"} (forall i#5: ref :: 
      { _module.Memory.incomingEdges(this, i#5, bb#0) } 
        { _module.Memory.incomingEdges(this, i#5, aa#0) } 
        { Set#IsMember(oo#0, $Box(i#5)) } 
      $Is(i#5, Tclass._module.Object()) && Set#IsMember(oo#0, $Box(i#5))
         ==> Set#Card(_module.Memory.incomingEdges(this, i#5, aa#0))
           >= Set#Card(_module.Memory.incomingEdges(this, i#5, bb#0)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(563,7)
    // Begin Comprehension WF check
    havoc i#6;
    if ($Is(i#6, Tclass._module.Object())
       && $IsAlloc(i#6, Tclass._module.Object(), $Heap))
    {
        if (Set#IsMember(oo#0, $Box(i#6)))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##t#4 := i#6;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#4, Tclass._module.Object(), $Heap);
            ##edges#4 := aa#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##edges#4, TSet(Tclass._module.Edge()), $Heap);
            assume _module.Memory.refCountEdges#canCall(this, i#6, aa#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##t#5 := i#6;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#5, Tclass._module.Object(), $Heap);
            ##edges#5 := bb#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##edges#5, TSet(Tclass._module.Edge()), $Heap);
            assume _module.Memory.refCountEdges#canCall(this, i#6, bb#0);
        }
    }

    // End Comprehension WF check
    assume (forall i#7: ref :: 
      { _module.Memory.refCountEdges(this, i#7, bb#0) } 
        { _module.Memory.refCountEdges(this, i#7, aa#0) } 
        { Set#IsMember(oo#0, $Box(i#7)) } 
      $Is(i#7, Tclass._module.Object())
         ==> 
        Set#IsMember(oo#0, $Box(i#7))
         ==> _module.Memory.refCountEdges#canCall(this, i#7, aa#0)
           && _module.Memory.refCountEdges#canCall(this, i#7, bb#0));
    assert {:id "id988"} (forall i#7: ref :: 
      { _module.Memory.refCountEdges(this, i#7, bb#0) } 
        { _module.Memory.refCountEdges(this, i#7, aa#0) } 
        { Set#IsMember(oo#0, $Box(i#7)) } 
      $Is(i#7, Tclass._module.Object()) && Set#IsMember(oo#0, $Box(i#7))
         ==> _module.Memory.refCountEdges(this, i#7, aa#0)
           >= _module.Memory.refCountEdges(this, i#7, bb#0));
}



// function declaration for _module.Memory.ownedBy
function _module.Memory.ownedBy(this: ref, os#0: Set, region#0: DatatypeType) : Set
uses {
// consequence axiom for _module.Memory.ownedBy
axiom 3 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set, region#0: DatatypeType :: 
    { _module.Memory.ownedBy(this, os#0, region#0) } 
    _module.Memory.ownedBy#canCall(this, os#0, region#0)
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object()))
           && $Is(region#0, Tclass._module.Region()))
       ==> (forall o#0: ref :: 
          { Set#IsMember(_module.Memory.ownedBy(this, os#0, region#0), $Box(o#0)) } 
            { _module.Object.region(o#0) } 
            { Set#IsMember(os#0, $Box(o#0)) } 
          $Is(o#0, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#0))
             ==> _module.Region#Equal(_module.Object.region(o#0), region#0)
               == Set#IsMember(_module.Memory.ownedBy(this, os#0, region#0), $Box(o#0)))
         && $Is(_module.Memory.ownedBy(this, os#0, region#0), TSet(Tclass._module.Object())));
// alloc consequence axiom for _module.Memory.ownedBy
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set, region#0: DatatypeType :: 
    { $IsAlloc(_module.Memory.ownedBy(this, os#0, region#0), 
        TSet(Tclass._module.Object()), 
        $Heap) } 
    (_module.Memory.ownedBy#canCall(this, os#0, region#0)
           || (3 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass._module.Memory(), $Heap)
             && 
            $Is(os#0, TSet(Tclass._module.Object()))
             && $IsAlloc(os#0, TSet(Tclass._module.Object()), $Heap)
             && 
            $Is(region#0, Tclass._module.Region())
             && $IsAlloc(region#0, Tclass._module.Region(), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.Memory.ownedBy(this, os#0, region#0), 
        TSet(Tclass._module.Object()), 
        $Heap));
// definition axiom for _module.Memory.ownedBy (revealed)
axiom {:id "id989"} 3 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set, region#0: DatatypeType :: 
    { _module.Memory.ownedBy(this, os#0, region#0) } 
    _module.Memory.ownedBy#canCall(this, os#0, region#0)
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object()))
           && $Is(region#0, Tclass._module.Region()))
       ==> (forall o#1: ref :: 
          { _module.Object.region(o#1) } { Set#IsMember(os#0, $Box(o#1)) } 
          $Is(o#1, Tclass._module.Object())
             ==> 
            Set#IsMember(os#0, $Box(o#1))
             ==> $IsA#_module.Region(_module.Object.region(o#1)) && $IsA#_module.Region(region#0))
         && _module.Memory.ownedBy(this, os#0, region#0)
           == Set#FromBoogieMap((lambda $y#0: Box :: 
              $IsBox($y#0, Tclass._module.Object())
                 && 
                Set#IsMember(os#0, $y#0)
                 && _module.Region#Equal(_module.Object.region($Unbox($y#0): ref), region#0))));
// definition axiom for _module.Memory.ownedBy for decreasing-related literals (revealed)
axiom {:id "id990"} 3 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set, region#0: DatatypeType :: 
    {:weight 3} { _module.Memory.ownedBy(this, Lit(os#0), Lit(region#0)) } 
    _module.Memory.ownedBy#canCall(this, Lit(os#0), Lit(region#0))
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object()))
           && $Is(region#0, Tclass._module.Region()))
       ==> (forall o#2: ref :: 
          { _module.Object.region(o#2) } { Set#IsMember(os#0, $Box(o#2)) } 
          $Is(o#2, Tclass._module.Object())
             ==> 
            Set#IsMember(Lit(os#0), $Box(o#2))
             ==> $IsA#_module.Region(_module.Object.region(o#2))
               && $IsA#_module.Region(Lit(region#0)))
         && _module.Memory.ownedBy(this, Lit(os#0), Lit(region#0))
           == Set#FromBoogieMap((lambda $y#1: Box :: 
              $IsBox($y#1, Tclass._module.Object())
                 && 
                Set#IsMember(Lit(os#0), $y#1)
                 && _module.Region#Equal(_module.Object.region($Unbox($y#1): ref), region#0))));
// definition axiom for _module.Memory.ownedBy for all literals (revealed)
axiom {:id "id991"} 3 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set, region#0: DatatypeType :: 
    {:weight 3} { _module.Memory.ownedBy(Lit(this), Lit(os#0), Lit(region#0)) } 
    _module.Memory.ownedBy#canCall(Lit(this), Lit(os#0), Lit(region#0))
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object()))
           && $Is(region#0, Tclass._module.Region()))
       ==> (forall o#3: ref :: 
          { _module.Object.region(o#3) } { Set#IsMember(os#0, $Box(o#3)) } 
          $Is(o#3, Tclass._module.Object())
             ==> 
            Set#IsMember(Lit(os#0), $Box(o#3))
             ==> $IsA#_module.Region(_module.Object.region(o#3))
               && $IsA#_module.Region(Lit(region#0)))
         && _module.Memory.ownedBy(Lit(this), Lit(os#0), Lit(region#0))
           == Set#FromBoogieMap((lambda $y#2: Box :: 
              $IsBox($y#2, Tclass._module.Object())
                 && 
                Set#IsMember(Lit(os#0), $y#2)
                 && _module.Region#Equal(_module.Object.region($Unbox($y#2): ref), region#0))));
}

function _module.Memory.ownedBy#canCall(this: ref, os#0: Set, region#0: DatatypeType) : bool;

function _module.Memory.ownedBy#requires(ref, Set, DatatypeType) : bool;

// #requires axiom for _module.Memory.ownedBy
axiom (forall this: ref, os#0: Set, region#0: DatatypeType :: 
  { _module.Memory.ownedBy#requires(this, os#0, region#0) } 
  this != null
       && $Is(this, Tclass._module.Memory())
       && $Is(os#0, TSet(Tclass._module.Object()))
       && $Is(region#0, Tclass._module.Region())
     ==> _module.Memory.ownedBy#requires(this, os#0, region#0) == true);

procedure {:verboseName "Memory.ownedBy (well-formedness)"} CheckWellformed$$_module.Memory.ownedBy(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set where $Is(os#0, TSet(Tclass._module.Object())), 
    region#0: DatatypeType where $Is(region#0, Tclass._module.Region()))
   returns (owned#0: Set);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id992"} (forall o#4: ref :: 
    { Set#IsMember(owned#0, $Box(o#4)) } 
      { _module.Object.region(o#4) } 
      { Set#IsMember(os#0, $Box(o#4)) } 
    $Is(o#4, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#4))
       ==> _module.Region#Equal(_module.Object.region(o#4), region#0)
         == Set#IsMember(owned#0, $Box(o#4)));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.ownedBy (well-formedness)"} CheckWellformed$$_module.Memory.ownedBy(this: ref, os#0: Set, region#0: DatatypeType) returns (owned#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var o#5: ref;
  var o#6: ref;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Memory.ownedBy(this, os#0, region#0), TSet(Tclass._module.Object()));
        assume $Is(owned#0, TSet(Tclass._module.Object()));
        havoc o#5;
        assume $Is(o#5, Tclass._module.Object())
           && $IsAlloc(o#5, Tclass._module.Object(), $Heap);
        if (*)
        {
            assume {:id "id993"} Set#IsMember(os#0, $Box(o#5));
            assert {:id "id994"} o#5 != null;
            assume {:id "id995"} _module.Region#Equal(_module.Object.region(o#5), region#0)
               == Set#IsMember(owned#0, $Box(o#5));
        }
        else
        {
            assume {:id "id996"} Set#IsMember(os#0, $Box(o#5))
               ==> _module.Region#Equal(_module.Object.region(o#5), region#0)
                 == Set#IsMember(owned#0, $Box(o#5));
        }

        assume {:id "id997"} (forall o#4: ref :: 
          { Set#IsMember(owned#0, $Box(o#4)) } 
            { _module.Object.region(o#4) } 
            { Set#IsMember(os#0, $Box(o#4)) } 
          $Is(o#4, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#4))
             ==> _module.Region#Equal(_module.Object.region(o#4), region#0)
               == Set#IsMember(owned#0, $Box(o#4)));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc o#6;
        if ($Is(o#6, Tclass._module.Object())
           && $IsAlloc(o#6, Tclass._module.Object(), $Heap))
        {
            if (Set#IsMember(os#0, $Box(o#6)))
            {
                assert {:id "id998"} o#6 != null;
            }

            if (Set#IsMember(os#0, $Box(o#6))
               && _module.Region#Equal(_module.Object.region(o#6), region#0))
            {
            }
        }

        // End Comprehension WF check
        assume {:id "id999"} _module.Memory.ownedBy(this, os#0, region#0)
           == Set#FromBoogieMap((lambda $y#4: Box :: 
              $IsBox($y#4, Tclass._module.Object())
                 && 
                Set#IsMember(os#0, $y#4)
                 && _module.Region#Equal(_module.Object.region($Unbox($y#4): ref), region#0)));
        assume (forall o#7: ref :: 
          { _module.Object.region(o#7) } { Set#IsMember(os#0, $Box(o#7)) } 
          $Is(o#7, Tclass._module.Object())
             ==> 
            Set#IsMember(os#0, $Box(o#7))
             ==> $IsA#_module.Region(_module.Object.region(o#7)) && $IsA#_module.Region(region#0));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.ownedBy(this, os#0, region#0), TSet(Tclass._module.Object()));
        assume {:id "id1000"} _module.Memory.ownedBy(this, os#0, region#0) == owned#0;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.allRegions
function _module.Memory.allRegions(this: ref, os#0: Set) : Set
uses {
// consequence axiom for _module.Memory.allRegions
axiom 3 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set :: 
    { _module.Memory.allRegions(this, os#0) } 
    _module.Memory.allRegions#canCall(this, os#0)
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> (forall o#0: ref :: 
          { _module.Object.region(o#0) } { Set#IsMember(os#0, $Box(o#0)) } 
          $Is(o#0, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#0))
             ==> Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(_module.Object.region(o#0))))
         && $Is(_module.Memory.allRegions(this, os#0), TSet(Tclass._module.Region())));
// alloc consequence axiom for _module.Memory.allRegions
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { $IsAlloc(_module.Memory.allRegions(this, os#0), TSet(Tclass._module.Region()), $Heap) } 
    (_module.Memory.allRegions#canCall(this, os#0)
           || (3 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass._module.Memory(), $Heap)
             && 
            $Is(os#0, TSet(Tclass._module.Object()))
             && $IsAlloc(os#0, TSet(Tclass._module.Object()), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.Memory.allRegions(this, os#0), TSet(Tclass._module.Region()), $Heap));
// definition axiom for _module.Memory.allRegions (revealed)
axiom {:id "id1001"} 3 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set :: 
    { _module.Memory.allRegions(this, os#0) } 
    _module.Memory.allRegions#canCall(this, os#0)
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> _module.Memory.allRegions(this, os#0)
         == Set#FromBoogieMap((lambda $y#0: Box :: 
            (exists o#1: ref :: 
              { _module.Object.region(o#1) } { Set#IsMember(os#0, $Box(o#1)) } 
              $Is(o#1, Tclass._module.Object())
                 && Set#IsMember(os#0, $Box(o#1))
                 && $y#0 == $Box(_module.Object.region(o#1))))));
// definition axiom for _module.Memory.allRegions for decreasing-related literals (revealed)
axiom {:id "id1002"} 3 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set :: 
    {:weight 3} { _module.Memory.allRegions(this, Lit(os#0)) } 
    _module.Memory.allRegions#canCall(this, Lit(os#0))
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> _module.Memory.allRegions(this, Lit(os#0))
         == Set#FromBoogieMap((lambda $y#1: Box :: 
            (exists o#2: ref :: 
              { _module.Object.region(o#2) } { Set#IsMember(os#0, $Box(o#2)) } 
              $Is(o#2, Tclass._module.Object())
                 && Set#IsMember(Lit(os#0), $Box(o#2))
                 && $y#1 == $Box(_module.Object.region(o#2))))));
// definition axiom for _module.Memory.allRegions for all literals (revealed)
axiom {:id "id1003"} 3 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set :: 
    {:weight 3} { _module.Memory.allRegions(Lit(this), Lit(os#0)) } 
    _module.Memory.allRegions#canCall(Lit(this), Lit(os#0))
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> _module.Memory.allRegions(Lit(this), Lit(os#0))
         == Set#FromBoogieMap((lambda $y#2: Box :: 
            (exists o#3: ref :: 
              { _module.Object.region(o#3) } { Set#IsMember(os#0, $Box(o#3)) } 
              $Is(o#3, Tclass._module.Object())
                 && Set#IsMember(Lit(os#0), $Box(o#3))
                 && $y#2 == $Box(_module.Object.region(o#3))))));
}

function _module.Memory.allRegions#canCall(this: ref, os#0: Set) : bool;

function _module.Memory.allRegions#requires(ref, Set) : bool;

// #requires axiom for _module.Memory.allRegions
axiom (forall this: ref, os#0: Set :: 
  { _module.Memory.allRegions#requires(this, os#0) } 
  this != null
       && $Is(this, Tclass._module.Memory())
       && $Is(os#0, TSet(Tclass._module.Object()))
     ==> _module.Memory.allRegions#requires(this, os#0) == true);

procedure {:verboseName "Memory.allRegions (well-formedness)"} CheckWellformed$$_module.Memory.allRegions(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set where $Is(os#0, TSet(Tclass._module.Object())));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id1004"} (forall o#4: ref :: 
    { _module.Object.region(o#4) } { Set#IsMember(os#0, $Box(o#4)) } 
    $Is(o#4, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#4))
       ==> Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(_module.Object.region(o#4))));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.allRegions (well-formedness)"} CheckWellformed$$_module.Memory.allRegions(this: ref, os#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var o#5: ref;
  var ##os#0: Set;
  var o#6: ref;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Memory.allRegions(this, os#0), TSet(Tclass._module.Region()));
        havoc o#5;
        assume $Is(o#5, Tclass._module.Object())
           && $IsAlloc(o#5, Tclass._module.Object(), $Heap);
        if (*)
        {
            assume {:id "id1005"} Set#IsMember(os#0, $Box(o#5));
            assert {:id "id1006"} o#5 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##os#0 := os#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##os#0, TSet(Tclass._module.Object()), $Heap);
            assert {:id "id1007"} (this == this && Set#Equal(os#0, os#0))
               || (Set#Subset(##os#0, os#0) && !Set#Subset(os#0, ##os#0));
            assume (this == this && Set#Equal(os#0, os#0))
               || _module.Memory.allRegions#canCall(this, os#0);
            assume {:id "id1008"} Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(_module.Object.region(o#5)));
        }
        else
        {
            assume {:id "id1009"} Set#IsMember(os#0, $Box(o#5))
               ==> Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(_module.Object.region(o#5)));
        }

        assume {:id "id1010"} (forall o#4: ref :: 
          { _module.Object.region(o#4) } { Set#IsMember(os#0, $Box(o#4)) } 
          $Is(o#4, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#4))
             ==> Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(_module.Object.region(o#4))));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc o#6;
        if ($Is(o#6, Tclass._module.Object())
           && $IsAlloc(o#6, Tclass._module.Object(), $Heap))
        {
            if (Set#IsMember(os#0, $Box(o#6)))
            {
                assert {:id "id1011"} o#6 != null;
            }
        }

        // End Comprehension WF check
        assume {:id "id1012"} _module.Memory.allRegions(this, os#0)
           == Set#FromBoogieMap((lambda $y#4: Box :: 
              (exists o#7: ref :: 
                { _module.Object.region(o#7) } { Set#IsMember(os#0, $Box(o#7)) } 
                $Is(o#7, Tclass._module.Object())
                   && Set#IsMember(os#0, $Box(o#7))
                   && $y#4 == $Box(_module.Object.region(o#7)))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.allRegions(this, os#0), TSet(Tclass._module.Region()));
        return;

        assume false;
    }
}



procedure {:verboseName "Memory.ownershipRegionsAreDisjoint (well-formedness)"} CheckWellFormed$$_module.Memory.ownershipRegionsAreDisjoint(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set
       where $Is(os#0, TSet(Tclass._module.Object()))
         && $IsAlloc(os#0, TSet(Tclass._module.Object()), $Heap), 
    o1#0: DatatypeType
       where $Is(o1#0, Tclass._module.Region())
         && $IsAlloc(o1#0, Tclass._module.Region(), $Heap)
         && $IsA#_module.Region(o1#0), 
    o2#0: DatatypeType
       where $Is(o2#0, Tclass._module.Region())
         && $IsAlloc(o2#0, Tclass._module.Region(), $Heap)
         && $IsA#_module.Region(o2#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Memory.ownershipRegionsAreDisjoint (call)"} Call$$_module.Memory.ownershipRegionsAreDisjoint(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set
       where $Is(os#0, TSet(Tclass._module.Object()))
         && $IsAlloc(os#0, TSet(Tclass._module.Object()), $Heap), 
    o1#0: DatatypeType
       where $Is(o1#0, Tclass._module.Region())
         && $IsAlloc(o1#0, Tclass._module.Region(), $Heap)
         && $IsA#_module.Region(o1#0), 
    o2#0: DatatypeType
       where $Is(o2#0, Tclass._module.Region())
         && $IsAlloc(o2#0, Tclass._module.Region(), $Heap)
         && $IsA#_module.Region(o2#0));
  // user-defined preconditions
  requires {:id "id1015"} !_module.Region#Equal(o1#0, o2#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Memory.ownedBy#canCall(this, os#0, o1#0)
     && _module.Memory.ownedBy#canCall(this, os#0, o2#0);
  ensures {:id "id1016"} Set#Disjoint(_module.Memory.ownedBy(this, os#0, o1#0), 
    _module.Memory.ownedBy(this, os#0, o2#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Memory.ownershipRegionsAreDisjoint (correctness)"} Impl$$_module.Memory.ownershipRegionsAreDisjoint(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set
       where $Is(os#0, TSet(Tclass._module.Object()))
         && $IsAlloc(os#0, TSet(Tclass._module.Object()), $Heap), 
    o1#0: DatatypeType
       where $Is(o1#0, Tclass._module.Region())
         && $IsAlloc(o1#0, Tclass._module.Region(), $Heap)
         && $IsA#_module.Region(o1#0), 
    o2#0: DatatypeType
       where $Is(o2#0, Tclass._module.Region())
         && $IsAlloc(o2#0, Tclass._module.Region(), $Heap)
         && $IsA#_module.Region(o2#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1017"} !_module.Region#Equal(o1#0, o2#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Memory.ownedBy#canCall(this, os#0, o1#0)
     && _module.Memory.ownedBy#canCall(this, os#0, o2#0);
  ensures {:id "id1018"} Set#Disjoint(_module.Memory.ownedBy(this, os#0, o1#0), 
    _module.Memory.ownedBy(this, os#0, o2#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.ownershipRegionsAreDisjoint (correctness)"} Impl$$_module.Memory.ownershipRegionsAreDisjoint(this: ref, os#0: Set, o1#0: DatatypeType, o2#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: ownershipRegionsAreDisjoint, Impl$$_module.Memory.ownershipRegionsAreDisjoint
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



// function declaration for _module.Memory.partitionIntoRegions
function _module.Memory.partitionIntoRegions(this: ref, os#0: Set) : Map
uses {
// consequence axiom for _module.Memory.partitionIntoRegions
axiom 4 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set :: 
    { _module.Memory.partitionIntoRegions(this, os#0) } 
    _module.Memory.partitionIntoRegions#canCall(this, os#0)
         || (4 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> (forall o#0: ref :: 
          { _module.Object.region(o#0) } { Set#IsMember(os#0, $Box(o#0)) } 
          $Is(o#0, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#0))
             ==> Set#IsMember(Map#Domain(_module.Memory.partitionIntoRegions(this, os#0)), 
              $Box(_module.Object.region(o#0))))
         && (forall o#1: ref :: 
          { _module.Object.region(o#1) } { Set#IsMember(os#0, $Box(o#1)) } 
          $Is(o#1, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#1))
             ==> Set#IsMember($Unbox(Map#Elements(_module.Memory.partitionIntoRegions(this, os#0))[$Box(_module.Object.region(o#1))]): Set, 
              $Box(o#1)))
         && (forall o1#0: DatatypeType, o2#0: DatatypeType :: 
          { $Unbox(Map#Elements(_module.Memory.partitionIntoRegions(this, os#0))[$Box(o2#0)]): Set, $Unbox(Map#Elements(_module.Memory.partitionIntoRegions(this, os#0))[$Box(o1#0)]): Set } 
            { $Unbox(Map#Elements(_module.Memory.partitionIntoRegions(this, os#0))[$Box(o2#0)]): Set, Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#0)) } 
            { $Unbox(Map#Elements(_module.Memory.partitionIntoRegions(this, os#0))[$Box(o1#0)]): Set, Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#0)) } 
            { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#0)), Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#0)) } 
          $Is(o1#0, Tclass._module.Region())
               && $Is(o2#0, Tclass._module.Region())
               && 
              Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#0))
               && Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#0))
             ==> (if _module.Region#Equal(o1#0, o2#0)
               then Set#Equal($Unbox(Map#Elements(_module.Memory.partitionIntoRegions(this, os#0))[$Box(o1#0)]): Set, 
                $Unbox(Map#Elements(_module.Memory.partitionIntoRegions(this, os#0))[$Box(o2#0)]): Set)
               else Set#Disjoint($Unbox(Map#Elements(_module.Memory.partitionIntoRegions(this, os#0))[$Box(o1#0)]): Set, 
                $Unbox(Map#Elements(_module.Memory.partitionIntoRegions(this, os#0))[$Box(o2#0)]): Set)))
         && $Is(_module.Memory.partitionIntoRegions(this, os#0), 
          TMap(Tclass._module.Region(), TSet(Tclass._module.Object()))));
// alloc consequence axiom for _module.Memory.partitionIntoRegions
axiom 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { $IsAlloc(_module.Memory.partitionIntoRegions(this, os#0), 
        TMap(Tclass._module.Region(), TSet(Tclass._module.Object())), 
        $Heap) } 
    (_module.Memory.partitionIntoRegions#canCall(this, os#0)
           || (4 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass._module.Memory(), $Heap)
             && 
            $Is(os#0, TSet(Tclass._module.Object()))
             && $IsAlloc(os#0, TSet(Tclass._module.Object()), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.Memory.partitionIntoRegions(this, os#0), 
        TMap(Tclass._module.Region(), TSet(Tclass._module.Object())), 
        $Heap));
// definition axiom for _module.Memory.partitionIntoRegions (revealed)
axiom {:id "id1019"} 4 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set :: 
    { _module.Memory.partitionIntoRegions(this, os#0) } 
    _module.Memory.partitionIntoRegions#canCall(this, os#0)
         || (4 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> (forall region#0: DatatypeType :: 
          { _module.Memory.ownedBy(this, os#0, region#0) } 
            { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(region#0)) } 
          $Is(region#0, Tclass._module.Region())
             ==> _module.Memory.allRegions#canCall(this, os#0)
               && (Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(region#0))
                 ==> _module.Memory.ownedBy#canCall(this, os#0, region#0)))
         && _module.Memory.partitionIntoRegions(this, os#0)
           == Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
                $IsBox($w#0, Tclass._module.Region())
                   && Set#IsMember(_module.Memory.allRegions(this, os#0), $w#0))), 
            (lambda $w#0: Box :: 
              $Box(_module.Memory.ownedBy(this, os#0, $Unbox($w#0): DatatypeType))), 
            TMap(Tclass._module.Region(), TSet(Tclass._module.Object()))));
// definition axiom for _module.Memory.partitionIntoRegions for decreasing-related literals (revealed)
axiom {:id "id1020"} 4 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set :: 
    {:weight 3} { _module.Memory.partitionIntoRegions(this, Lit(os#0)) } 
    _module.Memory.partitionIntoRegions#canCall(this, Lit(os#0))
         || (4 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> (forall region#0: DatatypeType :: 
          { _module.Memory.ownedBy(this, os#0, region#0) } 
            { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(region#0)) } 
          $Is(region#0, Tclass._module.Region())
             ==> _module.Memory.allRegions#canCall(this, Lit(os#0))
               && (Set#IsMember(_module.Memory.allRegions(this, Lit(os#0)), $Box(region#0))
                 ==> _module.Memory.ownedBy#canCall(this, Lit(os#0), region#0)))
         && _module.Memory.partitionIntoRegions(this, Lit(os#0))
           == Map#Glue(Set#FromBoogieMap((lambda $w#1: Box :: 
                $IsBox($w#1, Tclass._module.Region())
                   && Set#IsMember(_module.Memory.allRegions(this, Lit(os#0)), $w#1))), 
            (lambda $w#1: Box :: 
              $Box(_module.Memory.ownedBy(this, Lit(os#0), $Unbox($w#1): DatatypeType))), 
            TMap(Tclass._module.Region(), TSet(Tclass._module.Object()))));
// definition axiom for _module.Memory.partitionIntoRegions for all literals (revealed)
axiom {:id "id1021"} 4 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set :: 
    {:weight 3} { _module.Memory.partitionIntoRegions(Lit(this), Lit(os#0)) } 
    _module.Memory.partitionIntoRegions#canCall(Lit(this), Lit(os#0))
         || (4 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> (forall region#0: DatatypeType :: 
          { _module.Memory.ownedBy(this, os#0, region#0) } 
            { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(region#0)) } 
          $Is(region#0, Tclass._module.Region())
             ==> _module.Memory.allRegions#canCall(Lit(this), Lit(os#0))
               && (Set#IsMember(Lit(_module.Memory.allRegions(Lit(this), Lit(os#0))), $Box(region#0))
                 ==> _module.Memory.ownedBy#canCall(Lit(this), Lit(os#0), region#0)))
         && _module.Memory.partitionIntoRegions(Lit(this), Lit(os#0))
           == Map#Glue(Set#FromBoogieMap((lambda $w#2: Box :: 
                $IsBox($w#2, Tclass._module.Region())
                   && Set#IsMember(Lit(_module.Memory.allRegions(Lit(this), Lit(os#0))), $w#2))), 
            (lambda $w#2: Box :: 
              $Box(_module.Memory.ownedBy(Lit(this), Lit(os#0), $Unbox($w#2): DatatypeType))), 
            TMap(Tclass._module.Region(), TSet(Tclass._module.Object()))));
}

function _module.Memory.partitionIntoRegions#canCall(this: ref, os#0: Set) : bool;

function _module.Memory.partitionIntoRegions#requires(ref, Set) : bool;

// #requires axiom for _module.Memory.partitionIntoRegions
axiom (forall this: ref, os#0: Set :: 
  { _module.Memory.partitionIntoRegions#requires(this, os#0) } 
  this != null
       && $Is(this, Tclass._module.Memory())
       && $Is(os#0, TSet(Tclass._module.Object()))
     ==> _module.Memory.partitionIntoRegions#requires(this, os#0) == true);

procedure {:verboseName "Memory.partitionIntoRegions (well-formedness)"} CheckWellformed$$_module.Memory.partitionIntoRegions(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set where $Is(os#0, TSet(Tclass._module.Object())))
   returns (partition#0: Map);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id1022"} (forall o#2: ref :: 
    { _module.Object.region(o#2) } { Set#IsMember(os#0, $Box(o#2)) } 
    $Is(o#2, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#2))
       ==> Set#IsMember(Map#Domain(partition#0), $Box(_module.Object.region(o#2))));
  ensures {:id "id1023"} (forall o#3: ref :: 
    { _module.Object.region(o#3) } { Set#IsMember(os#0, $Box(o#3)) } 
    $Is(o#3, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#3))
       ==> Set#IsMember($Unbox(Map#Elements(partition#0)[$Box(_module.Object.region(o#3))]): Set, 
        $Box(o#3)));
  ensures {:id "id1024"} (forall o1#1: DatatypeType, o2#1: DatatypeType :: 
    { $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set, $Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set } 
      { $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set, Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#1)) } 
      { $Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set, Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#1)) } 
      { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#1)), Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#1)) } 
    $Is(o1#1, Tclass._module.Region())
         && $Is(o2#1, Tclass._module.Region())
         && 
        Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#1))
         && Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#1))
       ==> (if _module.Region#Equal(o1#1, o2#1)
         then Set#Equal($Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set, 
          $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set)
         else Set#Disjoint($Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set, 
          $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set)));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.partitionIntoRegions (well-formedness)"} CheckWellformed$$_module.Memory.partitionIntoRegions(this: ref, os#0: Set) returns (partition#0: Map)
{
  var $_ReadsFrame: [ref,Field]bool;
  var o#4: ref;
  var o#5: ref;
  var o1#2: DatatypeType;
  var o2#2: DatatypeType;
  var ##os#0: Set;
  var ##os#1: Set;
  var region#1: DatatypeType;
  var ##os#2: Set;
  var ##os#3: Set;
  var ##region#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Memory.partitionIntoRegions(this, os#0), 
          TMap(Tclass._module.Region(), TSet(Tclass._module.Object())));
        assume $Is(partition#0, TMap(Tclass._module.Region(), TSet(Tclass._module.Object())));
        havoc o#4;
        assume $Is(o#4, Tclass._module.Object())
           && $IsAlloc(o#4, Tclass._module.Object(), $Heap);
        if (*)
        {
            assume {:id "id1025"} Set#IsMember(os#0, $Box(o#4));
            assert {:id "id1026"} o#4 != null;
            assume {:id "id1027"} Set#IsMember(Map#Domain(partition#0), $Box(_module.Object.region(o#4)));
        }
        else
        {
            assume {:id "id1028"} Set#IsMember(os#0, $Box(o#4))
               ==> Set#IsMember(Map#Domain(partition#0), $Box(_module.Object.region(o#4)));
        }

        assume {:id "id1029"} (forall o#2: ref :: 
          { _module.Object.region(o#2) } { Set#IsMember(os#0, $Box(o#2)) } 
          $Is(o#2, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#2))
             ==> Set#IsMember(Map#Domain(partition#0), $Box(_module.Object.region(o#2))));
        havoc o#5;
        assume $Is(o#5, Tclass._module.Object())
           && $IsAlloc(o#5, Tclass._module.Object(), $Heap);
        if (*)
        {
            assume {:id "id1030"} Set#IsMember(os#0, $Box(o#5));
            assert {:id "id1031"} o#5 != null;
            assert {:id "id1032"} Set#IsMember(Map#Domain(partition#0), $Box(_module.Object.region(o#5)));
            assume {:id "id1033"} Set#IsMember($Unbox(Map#Elements(partition#0)[$Box(_module.Object.region(o#5))]): Set, 
              $Box(o#5));
        }
        else
        {
            assume {:id "id1034"} Set#IsMember(os#0, $Box(o#5))
               ==> Set#IsMember($Unbox(Map#Elements(partition#0)[$Box(_module.Object.region(o#5))]): Set, 
                $Box(o#5));
        }

        assume {:id "id1035"} (forall o#3: ref :: 
          { _module.Object.region(o#3) } { Set#IsMember(os#0, $Box(o#3)) } 
          $Is(o#3, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#3))
             ==> Set#IsMember($Unbox(Map#Elements(partition#0)[$Box(_module.Object.region(o#3))]): Set, 
              $Box(o#3)));
        havoc o1#2;
        havoc o2#2;
        assume $Is(o1#2, Tclass._module.Region())
           && $IsAlloc(o1#2, Tclass._module.Region(), $Heap)
           && 
          $Is(o2#2, Tclass._module.Region())
           && $IsAlloc(o2#2, Tclass._module.Region(), $Heap);
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##os#0 := os#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##os#0, TSet(Tclass._module.Object()), $Heap);
            assume _module.Memory.allRegions#canCall(this, os#0);
            assume {:id "id1036"} Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#2));
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##os#1 := os#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##os#1, TSet(Tclass._module.Object()), $Heap);
            assume _module.Memory.allRegions#canCall(this, os#0);
            assume {:id "id1037"} Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#2));
            if (*)
            {
                assume {:id "id1038"} _module.Region#Equal(o1#2, o2#2);
                assert {:id "id1039"} Set#IsMember(Map#Domain(partition#0), $Box(o1#2));
                assert {:id "id1040"} Set#IsMember(Map#Domain(partition#0), $Box(o2#2));
                assume {:id "id1041"} Set#Equal($Unbox(Map#Elements(partition#0)[$Box(o1#2)]): Set, 
                  $Unbox(Map#Elements(partition#0)[$Box(o2#2)]): Set);
            }
            else
            {
                assume {:id "id1042"} !_module.Region#Equal(o1#2, o2#2);
                assert {:id "id1043"} Set#IsMember(Map#Domain(partition#0), $Box(o1#2));
                assert {:id "id1044"} Set#IsMember(Map#Domain(partition#0), $Box(o2#2));
                assume {:id "id1045"} Set#Disjoint($Unbox(Map#Elements(partition#0)[$Box(o1#2)]): Set, 
                  $Unbox(Map#Elements(partition#0)[$Box(o2#2)]): Set);
            }
        }
        else
        {
            assume {:id "id1046"} Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#2))
                 && Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#2))
               ==> (if _module.Region#Equal(o1#2, o2#2)
                 then Set#Equal($Unbox(Map#Elements(partition#0)[$Box(o1#2)]): Set, 
                  $Unbox(Map#Elements(partition#0)[$Box(o2#2)]): Set)
                 else Set#Disjoint($Unbox(Map#Elements(partition#0)[$Box(o1#2)]): Set, 
                  $Unbox(Map#Elements(partition#0)[$Box(o2#2)]): Set));
        }

        assume {:id "id1047"} (forall o1#1: DatatypeType, o2#1: DatatypeType :: 
          { $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set, $Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set } 
            { $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set, Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#1)) } 
            { $Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set, Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#1)) } 
            { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#1)), Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#1)) } 
          $Is(o1#1, Tclass._module.Region())
               && $Is(o2#1, Tclass._module.Region())
               && 
              Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#1))
               && Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#1))
             ==> (if _module.Region#Equal(o1#1, o2#1)
               then Set#Equal($Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set, 
                $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set)
               else Set#Disjoint($Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set, 
                $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set)));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc region#1;
        if ($Is(region#1, Tclass._module.Region())
           && $IsAlloc(region#1, Tclass._module.Region(), $Heap))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##os#2 := os#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##os#2, TSet(Tclass._module.Object()), $Heap);
            assume _module.Memory.allRegions#canCall(this, os#0);
            if (Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(region#1)))
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
                ##os#3 := os#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##os#3, TSet(Tclass._module.Object()), $Heap);
                ##region#0 := region#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##region#0, Tclass._module.Region(), $Heap);
                assume _module.Memory.ownedBy#canCall(this, os#0, region#1);
            }
        }

        // End Comprehension WF check
        assume {:id "id1048"} _module.Memory.partitionIntoRegions(this, os#0)
           == Map#Glue(Set#FromBoogieMap((lambda $w#4: Box :: 
                $IsBox($w#4, Tclass._module.Region())
                   && Set#IsMember(_module.Memory.allRegions(this, os#0), $w#4))), 
            (lambda $w#4: Box :: 
              $Box(_module.Memory.ownedBy(this, os#0, $Unbox($w#4): DatatypeType))), 
            TMap(Tclass._module.Region(), TSet(Tclass._module.Object())));
        assume (forall region#0: DatatypeType :: 
          { _module.Memory.ownedBy(this, os#0, region#0) } 
            { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(region#0)) } 
          $Is(region#0, Tclass._module.Region())
             ==> _module.Memory.allRegions#canCall(this, os#0)
               && (Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(region#0))
                 ==> _module.Memory.ownedBy#canCall(this, os#0, region#0)));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.partitionIntoRegions(this, os#0), 
          TMap(Tclass._module.Region(), TSet(Tclass._module.Object())));
        assume {:id "id1049"} _module.Memory.partitionIntoRegions(this, os#0) == partition#0;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.partitionOfJustHeapRegions
function _module.Memory.partitionOfJustHeapRegions(this: ref, os#0: Set) : Map
uses {
// consequence axiom for _module.Memory.partitionOfJustHeapRegions
axiom 4 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set :: 
    { _module.Memory.partitionOfJustHeapRegions(this, os#0) } 
    _module.Memory.partitionOfJustHeapRegions#canCall(this, os#0)
         || (4 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> (forall o#0: ref :: 
          { _module.Object.region(o#0) } { Set#IsMember(os#0, $Box(o#0)) } 
          $Is(o#0, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#0))
             ==> 
            _module.Region.Heap_q(_module.Object.region(o#0))
             ==> Set#IsMember(Map#Domain(_module.Memory.partitionOfJustHeapRegions(this, os#0)), 
              $Box(_module.Object.region(o#0))))
         && (forall o#1: ref :: 
          { _module.Object.region(o#1) } { Set#IsMember(os#0, $Box(o#1)) } 
          $Is(o#1, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#1))
             ==> 
            _module.Region.Heap_q(_module.Object.region(o#1))
             ==> Set#IsMember($Unbox(Map#Elements(_module.Memory.partitionOfJustHeapRegions(this, os#0))[$Box(_module.Object.region(o#1))]): Set, 
              $Box(o#1)))
         && (forall o1#0: DatatypeType, o2#0: DatatypeType :: 
          { $Unbox(Map#Elements(_module.Memory.partitionOfJustHeapRegions(this, os#0))[$Box(o2#0)]): Set, $Unbox(Map#Elements(_module.Memory.partitionOfJustHeapRegions(this, os#0))[$Box(o1#0)]): Set } 
            { $Unbox(Map#Elements(_module.Memory.partitionOfJustHeapRegions(this, os#0))[$Box(o2#0)]): Set, _module.Region.Heap_q(o1#0) } 
            { $Unbox(Map#Elements(_module.Memory.partitionOfJustHeapRegions(this, os#0))[$Box(o2#0)]): Set, Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#0)) } 
            { $Unbox(Map#Elements(_module.Memory.partitionOfJustHeapRegions(this, os#0))[$Box(o1#0)]): Set, _module.Region.Heap_q(o2#0) } 
            { $Unbox(Map#Elements(_module.Memory.partitionOfJustHeapRegions(this, os#0))[$Box(o1#0)]): Set, Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#0)) } 
            { _module.Region.Heap_q(o2#0), _module.Region.Heap_q(o1#0) } 
            { _module.Region.Heap_q(o2#0), Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#0)) } 
            { _module.Region.Heap_q(o1#0), Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#0)) } 
            { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#0)), Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#0)) } 
          $Is(o1#0, Tclass._module.Region())
               && $Is(o2#0, Tclass._module.Region())
               && 
              Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#0))
               && Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#0))
             ==> 
            _module.Region.Heap_q(o1#0) && _module.Region.Heap_q(o2#0)
             ==> (if _module.Region#Equal(o1#0, o2#0)
               then Set#Equal($Unbox(Map#Elements(_module.Memory.partitionOfJustHeapRegions(this, os#0))[$Box(o1#0)]): Set, 
                $Unbox(Map#Elements(_module.Memory.partitionOfJustHeapRegions(this, os#0))[$Box(o2#0)]): Set)
               else Set#Disjoint($Unbox(Map#Elements(_module.Memory.partitionOfJustHeapRegions(this, os#0))[$Box(o1#0)]): Set, 
                $Unbox(Map#Elements(_module.Memory.partitionOfJustHeapRegions(this, os#0))[$Box(o2#0)]): Set)))
         && $Is(_module.Memory.partitionOfJustHeapRegions(this, os#0), 
          TMap(Tclass._module.Region(), TSet(Tclass._module.Object()))));
// alloc consequence axiom for _module.Memory.partitionOfJustHeapRegions
axiom 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, os#0: Set :: 
    { $IsAlloc(_module.Memory.partitionOfJustHeapRegions(this, os#0), 
        TMap(Tclass._module.Region(), TSet(Tclass._module.Object())), 
        $Heap) } 
    (_module.Memory.partitionOfJustHeapRegions#canCall(this, os#0)
           || (4 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass._module.Memory(), $Heap)
             && 
            $Is(os#0, TSet(Tclass._module.Object()))
             && $IsAlloc(os#0, TSet(Tclass._module.Object()), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.Memory.partitionOfJustHeapRegions(this, os#0), 
        TMap(Tclass._module.Region(), TSet(Tclass._module.Object())), 
        $Heap));
// definition axiom for _module.Memory.partitionOfJustHeapRegions (revealed)
axiom {:id "id1050"} 4 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set :: 
    { _module.Memory.partitionOfJustHeapRegions(this, os#0) } 
    _module.Memory.partitionOfJustHeapRegions#canCall(this, os#0)
         || (4 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> _module.Memory.allRegions#canCall(this, os#0)
         && (forall region#0: DatatypeType :: 
          { _module.Memory.ownedBy(this, os#0, region#0) } 
            { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(region#0)) } 
          $Is(region#0, Tclass._module.Region())
             ==> _module.Memory.allRegions#canCall(this, os#0)
               && (Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(region#0))
                 ==> _module.Memory.ownedBy#canCall(this, os#0, region#0)))
         && _module.Memory.partitionOfJustHeapRegions(this, os#0)
           == (var heapOnwers#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
                  (exists o#2: DatatypeType :: 
                    { _module.Region.Heap_q(o#2) } 
                      { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o#2)) } 
                    $Is(o#2, Tclass._module.Region())
                       && Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o#2))
                       && $y#0 == $Box(_module.Region.Heap_q(o#2))))); 
            Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
                  $IsBox($w#0, Tclass._module.Region())
                     && Set#IsMember(_module.Memory.allRegions(this, os#0), $w#0))), 
              (lambda $w#0: Box :: 
                $Box(_module.Memory.ownedBy(this, os#0, $Unbox($w#0): DatatypeType))), 
              TMap(Tclass._module.Region(), TSet(Tclass._module.Object())))));
// definition axiom for _module.Memory.partitionOfJustHeapRegions for decreasing-related literals (revealed)
axiom {:id "id1051"} 4 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set :: 
    {:weight 3} { _module.Memory.partitionOfJustHeapRegions(this, Lit(os#0)) } 
    _module.Memory.partitionOfJustHeapRegions#canCall(this, Lit(os#0))
         || (4 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> _module.Memory.allRegions#canCall(this, Lit(os#0))
         && (forall region#0: DatatypeType :: 
          { _module.Memory.ownedBy(this, os#0, region#0) } 
            { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(region#0)) } 
          $Is(region#0, Tclass._module.Region())
             ==> _module.Memory.allRegions#canCall(this, Lit(os#0))
               && (Set#IsMember(_module.Memory.allRegions(this, Lit(os#0)), $Box(region#0))
                 ==> _module.Memory.ownedBy#canCall(this, Lit(os#0), region#0)))
         && _module.Memory.partitionOfJustHeapRegions(this, Lit(os#0))
           == (var heapOnwers#1 := Set#FromBoogieMap((lambda $y#2: Box :: 
                  (exists o#3: DatatypeType :: 
                    { _module.Region.Heap_q(o#3) } 
                      { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o#3)) } 
                    $Is(o#3, Tclass._module.Region())
                       && Set#IsMember(_module.Memory.allRegions(this, Lit(os#0)), $Box(o#3))
                       && $y#2 == $Box(_module.Region.Heap_q(o#3))))); 
            Map#Glue(Set#FromBoogieMap((lambda $w#1: Box :: 
                  $IsBox($w#1, Tclass._module.Region())
                     && Set#IsMember(_module.Memory.allRegions(this, Lit(os#0)), $w#1))), 
              (lambda $w#1: Box :: 
                $Box(_module.Memory.ownedBy(this, Lit(os#0), $Unbox($w#1): DatatypeType))), 
              TMap(Tclass._module.Region(), TSet(Tclass._module.Object())))));
// definition axiom for _module.Memory.partitionOfJustHeapRegions for all literals (revealed)
axiom {:id "id1052"} 4 <= $FunctionContextHeight
   ==> (forall this: ref, os#0: Set :: 
    {:weight 3} { _module.Memory.partitionOfJustHeapRegions(Lit(this), Lit(os#0)) } 
    _module.Memory.partitionOfJustHeapRegions#canCall(Lit(this), Lit(os#0))
         || (4 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.Memory())
           && $Is(os#0, TSet(Tclass._module.Object())))
       ==> _module.Memory.allRegions#canCall(Lit(this), Lit(os#0))
         && (forall region#0: DatatypeType :: 
          { _module.Memory.ownedBy(this, os#0, region#0) } 
            { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(region#0)) } 
          $Is(region#0, Tclass._module.Region())
             ==> _module.Memory.allRegions#canCall(Lit(this), Lit(os#0))
               && (Set#IsMember(Lit(_module.Memory.allRegions(Lit(this), Lit(os#0))), $Box(region#0))
                 ==> _module.Memory.ownedBy#canCall(Lit(this), Lit(os#0), region#0)))
         && _module.Memory.partitionOfJustHeapRegions(Lit(this), Lit(os#0))
           == (var heapOnwers#2 := Set#FromBoogieMap((lambda $y#4: Box :: 
                  (exists o#4: DatatypeType :: 
                    { _module.Region.Heap_q(o#4) } 
                      { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o#4)) } 
                    $Is(o#4, Tclass._module.Region())
                       && Set#IsMember(Lit(_module.Memory.allRegions(Lit(this), Lit(os#0))), $Box(o#4))
                       && $y#4 == $Box(_module.Region.Heap_q(o#4))))); 
            Map#Glue(Set#FromBoogieMap((lambda $w#2: Box :: 
                  $IsBox($w#2, Tclass._module.Region())
                     && Set#IsMember(Lit(_module.Memory.allRegions(Lit(this), Lit(os#0))), $w#2))), 
              (lambda $w#2: Box :: 
                $Box(_module.Memory.ownedBy(Lit(this), Lit(os#0), $Unbox($w#2): DatatypeType))), 
              TMap(Tclass._module.Region(), TSet(Tclass._module.Object())))));
}

function _module.Memory.partitionOfJustHeapRegions#canCall(this: ref, os#0: Set) : bool;

function _module.Memory.partitionOfJustHeapRegions#requires(ref, Set) : bool;

// #requires axiom for _module.Memory.partitionOfJustHeapRegions
axiom (forall this: ref, os#0: Set :: 
  { _module.Memory.partitionOfJustHeapRegions#requires(this, os#0) } 
  this != null
       && $Is(this, Tclass._module.Memory())
       && $Is(os#0, TSet(Tclass._module.Object()))
     ==> _module.Memory.partitionOfJustHeapRegions#requires(this, os#0) == true);

procedure {:verboseName "Memory.partitionOfJustHeapRegions (well-formedness)"} CheckWellformed$$_module.Memory.partitionOfJustHeapRegions(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    os#0: Set where $Is(os#0, TSet(Tclass._module.Object())))
   returns (partition#0: Map);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id1053"} (forall o#5: ref :: 
    { _module.Object.region(o#5) } { Set#IsMember(os#0, $Box(o#5)) } 
    $Is(o#5, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#5))
       ==> 
      _module.Region.Heap_q(_module.Object.region(o#5))
       ==> Set#IsMember(Map#Domain(partition#0), $Box(_module.Object.region(o#5))));
  ensures {:id "id1054"} (forall o#6: ref :: 
    { _module.Object.region(o#6) } { Set#IsMember(os#0, $Box(o#6)) } 
    $Is(o#6, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#6))
       ==> 
      _module.Region.Heap_q(_module.Object.region(o#6))
       ==> Set#IsMember($Unbox(Map#Elements(partition#0)[$Box(_module.Object.region(o#6))]): Set, 
        $Box(o#6)));
  ensures {:id "id1055"} (forall o1#1: DatatypeType, o2#1: DatatypeType :: 
    { $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set, $Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set } 
      { $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set, _module.Region.Heap_q(o1#1) } 
      { $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set, Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#1)) } 
      { $Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set, _module.Region.Heap_q(o2#1) } 
      { $Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set, Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#1)) } 
      { _module.Region.Heap_q(o2#1), _module.Region.Heap_q(o1#1) } 
      { _module.Region.Heap_q(o2#1), Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#1)) } 
      { _module.Region.Heap_q(o1#1), Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#1)) } 
      { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#1)), Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#1)) } 
    $Is(o1#1, Tclass._module.Region())
         && $Is(o2#1, Tclass._module.Region())
         && 
        Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#1))
         && Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#1))
       ==> 
      _module.Region.Heap_q(o1#1) && _module.Region.Heap_q(o2#1)
       ==> (if _module.Region#Equal(o1#1, o2#1)
         then Set#Equal($Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set, 
          $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set)
         else Set#Disjoint($Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set, 
          $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set)));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.partitionOfJustHeapRegions (well-formedness)"} CheckWellformed$$_module.Memory.partitionOfJustHeapRegions(this: ref, os#0: Set) returns (partition#0: Map)
{
  var $_ReadsFrame: [ref,Field]bool;
  var o#7: ref;
  var o#8: ref;
  var o1#2: DatatypeType;
  var o2#2: DatatypeType;
  var ##os#0: Set;
  var ##os#1: Set;
  var heapOnwers#Z#0: Set;
  var let#0#0#0: Set;
  var o#9: DatatypeType;
  var ##os#2: Set;
  var region#1: DatatypeType;
  var ##os#3: Set;
  var ##os#4: Set;
  var ##region#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Memory.partitionOfJustHeapRegions(this, os#0), 
          TMap(Tclass._module.Region(), TSet(Tclass._module.Object())));
        assume $Is(partition#0, TMap(Tclass._module.Region(), TSet(Tclass._module.Object())));
        havoc o#7;
        assume $Is(o#7, Tclass._module.Object())
           && $IsAlloc(o#7, Tclass._module.Object(), $Heap);
        if (*)
        {
            assume {:id "id1056"} Set#IsMember(os#0, $Box(o#7));
            if (*)
            {
                assert {:id "id1057"} o#7 != null;
                assume {:id "id1058"} _module.Region.Heap_q(_module.Object.region(o#7));
                assert {:id "id1059"} o#7 != null;
                assume {:id "id1060"} Set#IsMember(Map#Domain(partition#0), $Box(_module.Object.region(o#7)));
            }
            else
            {
                assume {:id "id1061"} _module.Region.Heap_q(_module.Object.region(o#7))
                   ==> Set#IsMember(Map#Domain(partition#0), $Box(_module.Object.region(o#7)));
            }
        }
        else
        {
            assume {:id "id1062"} Set#IsMember(os#0, $Box(o#7))
               ==> 
              _module.Region.Heap_q(_module.Object.region(o#7))
               ==> Set#IsMember(Map#Domain(partition#0), $Box(_module.Object.region(o#7)));
        }

        assume {:id "id1063"} (forall o#5: ref :: 
          { _module.Object.region(o#5) } { Set#IsMember(os#0, $Box(o#5)) } 
          $Is(o#5, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#5))
             ==> 
            _module.Region.Heap_q(_module.Object.region(o#5))
             ==> Set#IsMember(Map#Domain(partition#0), $Box(_module.Object.region(o#5))));
        havoc o#8;
        assume $Is(o#8, Tclass._module.Object())
           && $IsAlloc(o#8, Tclass._module.Object(), $Heap);
        if (*)
        {
            assume {:id "id1064"} Set#IsMember(os#0, $Box(o#8));
            if (*)
            {
                assert {:id "id1065"} o#8 != null;
                assume {:id "id1066"} _module.Region.Heap_q(_module.Object.region(o#8));
                assert {:id "id1067"} o#8 != null;
                assert {:id "id1068"} Set#IsMember(Map#Domain(partition#0), $Box(_module.Object.region(o#8)));
                assume {:id "id1069"} Set#IsMember($Unbox(Map#Elements(partition#0)[$Box(_module.Object.region(o#8))]): Set, 
                  $Box(o#8));
            }
            else
            {
                assume {:id "id1070"} _module.Region.Heap_q(_module.Object.region(o#8))
                   ==> Set#IsMember($Unbox(Map#Elements(partition#0)[$Box(_module.Object.region(o#8))]): Set, 
                    $Box(o#8));
            }
        }
        else
        {
            assume {:id "id1071"} Set#IsMember(os#0, $Box(o#8))
               ==> 
              _module.Region.Heap_q(_module.Object.region(o#8))
               ==> Set#IsMember($Unbox(Map#Elements(partition#0)[$Box(_module.Object.region(o#8))]): Set, 
                $Box(o#8));
        }

        assume {:id "id1072"} (forall o#6: ref :: 
          { _module.Object.region(o#6) } { Set#IsMember(os#0, $Box(o#6)) } 
          $Is(o#6, Tclass._module.Object()) && Set#IsMember(os#0, $Box(o#6))
             ==> 
            _module.Region.Heap_q(_module.Object.region(o#6))
             ==> Set#IsMember($Unbox(Map#Elements(partition#0)[$Box(_module.Object.region(o#6))]): Set, 
              $Box(o#6)));
        havoc o1#2;
        havoc o2#2;
        assume $Is(o1#2, Tclass._module.Region())
           && $IsAlloc(o1#2, Tclass._module.Region(), $Heap)
           && 
          $Is(o2#2, Tclass._module.Region())
           && $IsAlloc(o2#2, Tclass._module.Region(), $Heap);
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##os#0 := os#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##os#0, TSet(Tclass._module.Object()), $Heap);
            assume _module.Memory.allRegions#canCall(this, os#0);
            assume {:id "id1073"} Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#2));
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##os#1 := os#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##os#1, TSet(Tclass._module.Object()), $Heap);
            assume _module.Memory.allRegions#canCall(this, os#0);
            assume {:id "id1074"} Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#2));
            if (*)
            {
                if (_module.Region.Heap_q(o1#2))
                {
                }

                assume {:id "id1075"} _module.Region.Heap_q(o1#2) && _module.Region.Heap_q(o2#2);
                if (*)
                {
                    assume {:id "id1076"} _module.Region#Equal(o1#2, o2#2);
                    assert {:id "id1077"} Set#IsMember(Map#Domain(partition#0), $Box(o1#2));
                    assert {:id "id1078"} Set#IsMember(Map#Domain(partition#0), $Box(o2#2));
                    assume {:id "id1079"} Set#Equal($Unbox(Map#Elements(partition#0)[$Box(o1#2)]): Set, 
                      $Unbox(Map#Elements(partition#0)[$Box(o2#2)]): Set);
                }
                else
                {
                    assume {:id "id1080"} !_module.Region#Equal(o1#2, o2#2);
                    assert {:id "id1081"} Set#IsMember(Map#Domain(partition#0), $Box(o1#2));
                    assert {:id "id1082"} Set#IsMember(Map#Domain(partition#0), $Box(o2#2));
                    assume {:id "id1083"} Set#Disjoint($Unbox(Map#Elements(partition#0)[$Box(o1#2)]): Set, 
                      $Unbox(Map#Elements(partition#0)[$Box(o2#2)]): Set);
                }
            }
            else
            {
                assume {:id "id1084"} _module.Region.Heap_q(o1#2) && _module.Region.Heap_q(o2#2)
                   ==> (if _module.Region#Equal(o1#2, o2#2)
                     then Set#Equal($Unbox(Map#Elements(partition#0)[$Box(o1#2)]): Set, 
                      $Unbox(Map#Elements(partition#0)[$Box(o2#2)]): Set)
                     else Set#Disjoint($Unbox(Map#Elements(partition#0)[$Box(o1#2)]): Set, 
                      $Unbox(Map#Elements(partition#0)[$Box(o2#2)]): Set));
            }
        }
        else
        {
            assume {:id "id1085"} Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#2))
                 && Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#2))
               ==> 
              _module.Region.Heap_q(o1#2) && _module.Region.Heap_q(o2#2)
               ==> (if _module.Region#Equal(o1#2, o2#2)
                 then Set#Equal($Unbox(Map#Elements(partition#0)[$Box(o1#2)]): Set, 
                  $Unbox(Map#Elements(partition#0)[$Box(o2#2)]): Set)
                 else Set#Disjoint($Unbox(Map#Elements(partition#0)[$Box(o1#2)]): Set, 
                  $Unbox(Map#Elements(partition#0)[$Box(o2#2)]): Set));
        }

        assume {:id "id1086"} (forall o1#1: DatatypeType, o2#1: DatatypeType :: 
          { $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set, $Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set } 
            { $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set, _module.Region.Heap_q(o1#1) } 
            { $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set, Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#1)) } 
            { $Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set, _module.Region.Heap_q(o2#1) } 
            { $Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set, Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#1)) } 
            { _module.Region.Heap_q(o2#1), _module.Region.Heap_q(o1#1) } 
            { _module.Region.Heap_q(o2#1), Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#1)) } 
            { _module.Region.Heap_q(o1#1), Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#1)) } 
            { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#1)), Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#1)) } 
          $Is(o1#1, Tclass._module.Region())
               && $Is(o2#1, Tclass._module.Region())
               && 
              Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o1#1))
               && Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o2#1))
             ==> 
            _module.Region.Heap_q(o1#1) && _module.Region.Heap_q(o2#1)
             ==> (if _module.Region#Equal(o1#1, o2#1)
               then Set#Equal($Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set, 
                $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set)
               else Set#Disjoint($Unbox(Map#Elements(partition#0)[$Box(o1#1)]): Set, 
                $Unbox(Map#Elements(partition#0)[$Box(o2#1)]): Set)));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc heapOnwers#Z#0;
        // Begin Comprehension WF check
        havoc o#9;
        if ($Is(o#9, Tclass._module.Region())
           && $IsAlloc(o#9, Tclass._module.Region(), $Heap))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##os#2 := os#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##os#2, TSet(Tclass._module.Object()), $Heap);
            assume _module.Memory.allRegions#canCall(this, os#0);
            if (Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o#9)))
            {
            }
        }

        // End Comprehension WF check
        assume {:id "id1087"} let#0#0#0
           == Set#FromBoogieMap((lambda $y#7: Box :: 
              (exists o#10: DatatypeType :: 
                { _module.Region.Heap_q(o#10) } 
                  { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o#10)) } 
                $Is(o#10, Tclass._module.Region())
                   && Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(o#10))
                   && $y#7 == $Box(_module.Region.Heap_q(o#10)))));
        assume _module.Memory.allRegions#canCall(this, os#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TSet(TBool));
        assume {:id "id1088"} heapOnwers#Z#0 == let#0#0#0;
        // Begin Comprehension WF check
        havoc region#1;
        if ($Is(region#1, Tclass._module.Region())
           && $IsAlloc(region#1, Tclass._module.Region(), $Heap))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
            ##os#3 := os#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##os#3, TSet(Tclass._module.Object()), $Heap);
            assume _module.Memory.allRegions#canCall(this, os#0);
            if (Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(region#1)))
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
                ##os#4 := os#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##os#4, TSet(Tclass._module.Object()), $Heap);
                ##region#0 := region#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##region#0, Tclass._module.Region(), $Heap);
                assume _module.Memory.ownedBy#canCall(this, os#0, region#1);
            }
        }

        // End Comprehension WF check
        assume {:id "id1089"} _module.Memory.partitionOfJustHeapRegions(this, os#0)
           == Map#Glue(Set#FromBoogieMap((lambda $w#4: Box :: 
                $IsBox($w#4, Tclass._module.Region())
                   && Set#IsMember(_module.Memory.allRegions(this, os#0), $w#4))), 
            (lambda $w#4: Box :: 
              $Box(_module.Memory.ownedBy(this, os#0, $Unbox($w#4): DatatypeType))), 
            TMap(Tclass._module.Region(), TSet(Tclass._module.Object())));
        assume (forall region#0: DatatypeType :: 
          { _module.Memory.ownedBy(this, os#0, region#0) } 
            { Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(region#0)) } 
          $Is(region#0, Tclass._module.Region())
             ==> _module.Memory.allRegions#canCall(this, os#0)
               && (Set#IsMember(_module.Memory.allRegions(this, os#0), $Box(region#0))
                 ==> _module.Memory.ownedBy#canCall(this, os#0, region#0)));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.partitionOfJustHeapRegions(this, os#0), 
          TMap(Tclass._module.Region(), TSet(Tclass._module.Object())));
        assume {:id "id1090"} _module.Memory.partitionOfJustHeapRegions(this, os#0) == partition#0;
        return;

        assume false;
    }
}



procedure {:verboseName "Memory.fNullify (well-formedness)"} {:rlimit 30000000} {:vcs_split_on_every_assert} CheckWellFormed$$_module.Memory.fNullify(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref
       where $Is(o#0, Tclass._module.Object())
         && $IsAlloc(o#0, Tclass._module.Object(), $Heap), 
    f#0: Seq where $Is(f#0, TSeq(TChar)) && $IsAlloc(f#0, TSeq(TChar), $Heap));
  free requires 9 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.fNullify (well-formedness)"} {:rlimit 30000000} {:vcs_split_on_every_assert} CheckWellFormed$$_module.Memory.fNullify(this: ref, o#0: ref, f#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##os#0: Set;
  var $unchanged#x0: ref;
  var ##m#0: Map;
  var ##x#0: Seq;
  var ##os#1: Set;
  var ##os#2: Set;
  var ##os#3: Set;


    // AddMethodImpl: fNullify, CheckWellFormed$$_module.Memory.fNullify
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == o#0 && $f == _module.Object.fields);
    assume {:id "id1091"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0));
    assert {:id "id1092"} o#0 != null;
    assume {:id "id1093"} Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(f#0));
    assert {:id "id1094"} o#0 != null;
    assume {:id "id1095"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(f#0));
    assert {:id "id1096"} o#0 != null;
    assert {:id "id1097"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(f#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#0 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#0, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume {:id "id1098"} Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
      $Box(#_module.Edge.Edge(o#0, 
          f#0, 
          $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(f#0)]): ref)));
    assert {:id "id1099"} o#0 != null;
    assume {:id "id1100"} !_module.Region.Frozen_q(_module.Object.region(o#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assume _module.Memory.Valid#canCall($Heap, this);
    assume {:id "id1101"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    assert {:id "id1102"} o#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == o#0);
    assume (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
           || ($o == o#0 && $f == _module.Object.fields));
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id1103"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume {:id "id1104"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null
         ==> 
        $o == this && ($f == _module.Memory.objects || $f == alloc)
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    havoc $unchanged#x0;
    assert {:id "id1105"} Set#IsMember(Set#Difference($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(o#0))), 
        $Box($unchanged#x0))
       ==> $IsAlloc($unchanged#x0, Tclass._module.Object(), old($Heap));
    assume {:id "id1106"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
           && $o != o#0
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    assert {:id "id1107"} o#0 != null;
    assert {:id "id1108"} o#0 != null;
    assert {:id "id1109"} $IsAlloc(o#0, Tclass._module.Object(), old($Heap));
    ##m#0 := $Unbox(read(old($Heap), o#0, _module.Object.fields)): Map;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, TMap(TSeq(TChar), Tclass._module.Object()), $Heap);
    ##x#0 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TSeq(TChar), $Heap);
    assume _module.__default.RemoveKey#canCall(TSeq(TChar), 
      Tclass._module.Object(), 
      $Unbox(read(old($Heap), o#0, _module.Object.fields)): Map, 
      $Box(f#0));
    assume {:id "id1110"} Map#Equal($Unbox(read($Heap, o#0, _module.Object.fields)): Map, 
      _module.__default.RemoveKey(TSeq(TChar), 
        Tclass._module.Object(), 
        reveal__module._default.RemoveKey, 
        $Unbox(read(old($Heap), o#0, _module.Object.fields)): Map, 
        $Box(f#0)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#1 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#1, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assert {:id "id1111"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    ##os#2 := $Unbox(read(old($Heap), this, _module.Memory.objects)): Set;
    assert {:id "id1112"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assert {:id "id1113"} $IsAlloc($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
      TSet(Tclass._module.Object()), 
      old($Heap));
    assume _module.Memory.edges#canCall(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
    assume {:id "id1114"} Set#Subset(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
      _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set));
    assert {:id "id1115"} o#0 != null;
    assert {:id "id1116"} $IsAlloc(o#0, Tclass._module.Object(), old($Heap));
    assert {:id "id1117"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), o#0, _module.Object.fields)): Map), $Box(f#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#3 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#3, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume {:id "id1118"} !Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
      $Box(#_module.Edge.Edge(o#0, 
          f#0, 
          $Unbox(Map#Elements($Unbox(read(old($Heap), o#0, _module.Object.fields)): Map)[$Box(f#0)]): ref)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assert {:id "id1119"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
    assume {:id "id1120"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
}



procedure {:verboseName "Memory.fNullify (call)"} {:rlimit 30000000} {:vcs_split_on_every_assert} Call$$_module.Memory.fNullify(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref
       where $Is(o#0, Tclass._module.Object())
         && $IsAlloc(o#0, Tclass._module.Object(), $Heap), 
    f#0: Seq where $Is(f#0, TSeq(TChar)) && $IsAlloc(f#0, TSeq(TChar), $Heap));
  // user-defined preconditions
  requires {:id "id1121"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0));
  requires {:id "id1122"} Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(f#0));
  requires {:id "id1123"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(f#0));
  requires {:id "id1124"} Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
    $Box(#_module.Edge.Edge(o#0, 
        f#0, 
        $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(f#0)]): ref)));
  requires {:id "id1125"} !_module.Region.Frozen_q(_module.Object.region(o#0));
  requires {:id "id1126"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1127"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      $o == this && ($f == _module.Memory.objects || $f == alloc)
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures true;
  ensures {:id "id1128"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
         && $o != o#0
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures _module.__default.RemoveKey#canCall(TSeq(TChar), 
    Tclass._module.Object(), 
    $Unbox(read(old($Heap), o#0, _module.Object.fields)): Map, 
    $Box(f#0));
  ensures {:id "id1129"} Map#Equal($Unbox(read($Heap, o#0, _module.Object.fields)): Map, 
    _module.__default.RemoveKey(TSeq(TChar), 
      Tclass._module.Object(), 
      reveal__module._default.RemoveKey, 
      $Unbox(read(old($Heap), o#0, _module.Object.fields)): Map, 
      $Box(f#0)));
  free ensures _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
     && _module.Memory.edges#canCall(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
  ensures {:id "id1130"} Set#Subset(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
    _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set));
  free ensures _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
  ensures {:id "id1131"} !Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
    $Box(#_module.Edge.Edge(o#0, 
        f#0, 
        $Unbox(Map#Elements($Unbox(read(old($Heap), o#0, _module.Object.fields)): Map)[$Box(f#0)]): ref)));
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
  ensures {:id "id1132"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == o#0);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == o#0 && $f == _module.Object.fields));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Memory.fNullify (correctness)"} {:rlimit 30000000} {:vcs_split_on_every_assert} Impl$$_module.Memory.fNullify(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref
       where $Is(o#0, Tclass._module.Object())
         && $IsAlloc(o#0, Tclass._module.Object(), $Heap), 
    f#0: Seq where $Is(f#0, TSeq(TChar)) && $IsAlloc(f#0, TSeq(TChar), $Heap))
   returns ($_reverifyPost: bool);
  free requires 9 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1133"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0));
  requires {:id "id1134"} Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(f#0));
  requires {:id "id1135"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(f#0));
  requires {:id "id1136"} Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
    $Box(#_module.Edge.Edge(o#0, 
        f#0, 
        $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(f#0)]): ref)));
  requires {:id "id1137"} !_module.Region.Frozen_q(_module.Object.region(o#0));
  requires {:id "id1138"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1139"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      $o == this && ($f == _module.Memory.objects || $f == alloc)
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures true;
  ensures {:id "id1140"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
         && $o != o#0
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures _module.__default.RemoveKey#canCall(TSeq(TChar), 
    Tclass._module.Object(), 
    $Unbox(read(old($Heap), o#0, _module.Object.fields)): Map, 
    $Box(f#0));
  ensures {:id "id1141"} Map#Equal($Unbox(read($Heap, o#0, _module.Object.fields)): Map, 
    _module.__default.RemoveKey(TSeq(TChar), 
      Tclass._module.Object(), 
      reveal__module._default.RemoveKey, 
      $Unbox(read(old($Heap), o#0, _module.Object.fields)): Map, 
      $Box(f#0)));
  free ensures _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
     && _module.Memory.edges#canCall(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
  ensures {:id "id1142"} Set#Subset(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
    _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set));
  free ensures _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
  ensures {:id "id1143"} !Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
    $Box(#_module.Edge.Edge(o#0, 
        f#0, 
        $Unbox(Map#Elements($Unbox(read(old($Heap), o#0, _module.Object.fields)): Map)[$Box(f#0)]): ref)));
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
  ensures {:id "id1144"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == o#0);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == o#0 && $f == _module.Object.fields));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.fNullify (correctness)"} {:rlimit 30000000} {:vcs_split_on_every_assert} Impl$$_module.Memory.fNullify(this: ref, o#0: ref, f#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var xedges#0: Set
     where $Is(xedges#0, TSet(Tclass._module.Edge()))
       && $IsAlloc(xedges#0, TSet(Tclass._module.Edge()), $Heap);
  var ##os#4: Set;
  var xisos#0: Set
     where $Is(xisos#0, TSet(Tclass._module.Object()))
       && $IsAlloc(xisos#0, TSet(Tclass._module.Object()), $Heap);
  var ##os#5: Set;
  var defass#nedge#0: bool;
  var nedge#0: DatatypeType
     where defass#nedge#0
       ==> $Is(nedge#0, Tclass._module.Edge())
         && $IsAlloc(nedge#0, Tclass._module.Edge(), $Heap);
  var $rhs#0: Map;
  var ##m#1: Map;
  var ##x#1: Seq;
  var zedges#0: Set
     where $Is(zedges#0, TSet(Tclass._module.Edge()))
       && $IsAlloc(zedges#0, TSet(Tclass._module.Edge()), $Heap);
  var ##os#6: Set;
  var oo##0: Set;
  var aa##0: Set;
  var bb##0: Set;
  var ##edges#0: Set;
  var ##edges#1: Set;
  var ##edges#2: Set;

    // AddMethodImpl: fNullify, Impl$$_module.Memory.fNullify
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == o#0 && $f == _module.Object.fields);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(660,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(660,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1145"} Call$$_module.Memory.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(661,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(661,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id1146"} Call$$_module.Object.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(663,18)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#4 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#4, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    xedges#0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(664,17)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#5 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#5, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.justTheIsos#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.justTheIsos#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    xisos#0 := _module.Memory.justTheIsos($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(666,17)
    assume true;
    assert {:id "id1149"} o#0 != null;
    assert {:id "id1150"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(f#0));
    assume true;
    nedge#0 := #_module.Edge.Edge(o#0, 
      f#0, 
      $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(f#0)]): ref);
    defass#nedge#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(670,16)
    assert {:id "id1152"} o#0 != null;
    assume true;
    assert {:id "id1153"} $_ModifiesFrame[o#0, _module.Object.fields];
    assert {:id "id1154"} o#0 != null;
    ##m#1 := $Unbox(read($Heap, o#0, _module.Object.fields)): Map;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#1, TMap(TSeq(TChar), Tclass._module.Object()), $Heap);
    ##x#1 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TSeq(TChar), $Heap);
    assume _module.__default.RemoveKey#canCall(TSeq(TChar), 
      Tclass._module.Object(), 
      $Unbox(read($Heap, o#0, _module.Object.fields)): Map, 
      $Box(f#0));
    assume _module.__default.RemoveKey#canCall(TSeq(TChar), 
      Tclass._module.Object(), 
      $Unbox(read($Heap, o#0, _module.Object.fields)): Map, 
      $Box(f#0));
    $rhs#0 := _module.__default.RemoveKey(TSeq(TChar), 
      Tclass._module.Object(), 
      reveal__module._default.RemoveKey, 
      $Unbox(read($Heap, o#0, _module.Object.fields)): Map, 
      $Box(f#0));
    $Heap := update($Heap, o#0, _module.Object.fields, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(674,18)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#6 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#6, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    zedges#0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(678,26)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    oo##0 := xisos#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    aa##0 := xedges#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    bb##0 := zedges#0;
    call {:id "id1158"} Call$$_module.Memory.RefCountIsMonotonic(this, oo##0, aa##0, bb##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(689,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##edges#0 := xedges#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#0, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, xedges#0);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, xedges#0);
    assert {:id "id1159"} {:subsumption 0} _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, xedges#0)
       ==> _module.Memory.heapExternalsZeroOrOneEdges(this, xedges#0)
         || (var heapExternalEdges#0 := _module.Memory.justHeapExternalEdges(this, xedges#0); 
          (var allRelevantHeapRegions#0 := Set#FromBoogieMap((lambda $y#1: Box :: 
                  (exists he#0: DatatypeType :: 
                    { _module.Edge.t(he#0) } { Set#IsMember(heapExternalEdges#0, $Box(he#0)) } 
                    $Is(he#0, Tclass._module.Edge())
                       && Set#IsMember(heapExternalEdges#0, $Box(he#0))
                       && $y#1 == $Box(_module.Object.region(_module.Edge.t(he#0)))))); 
            (var heapExternalEdgesPartitionedByRegion#0 := Map#Glue(Set#FromBoogieMap((lambda $w#2: Box :: 
                      $IsBox($w#2, Tclass._module.Region())
                         && Set#IsMember(allRelevantHeapRegions#0, $w#2))), 
                  (lambda $w#2: Box :: 
                    $Box(_module.Memory.externalEdges(this, $Unbox($w#2): DatatypeType, heapExternalEdges#0))), 
                  TMap(Tclass._module.Region(), TSet(Tclass._module.Edge()))); 
              (forall hr#0: DatatypeType :: 
                { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#0)[$Box(hr#0)]): Set } 
                  { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#0), $Box(hr#0)) } 
                $Is(hr#0, Tclass._module.Region())
                     && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#0), $Box(hr#0))
                   ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#0)[$Box(hr#0)]): Set)
                     <= LitInt(1)))));
    assume {:id "id1160"} _module.Memory.heapExternalsZeroOrOneEdges(this, xedges#0);
    // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(692,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##edges#1 := zedges#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#1, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, zedges#0);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, zedges#0);
    assume {:id "id1161"} _module.Memory.heapExternalsZeroOrOneEdges(this, zedges#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(703,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##edges#2 := zedges#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#2, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, zedges#0);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, zedges#0);
    assert {:id "id1162"} {:subsumption 0} _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, zedges#0)
       ==> _module.Memory.heapExternalsZeroOrOneEdges(this, zedges#0)
         || (var heapExternalEdges#1 := _module.Memory.justHeapExternalEdges(this, zedges#0); 
          (var allRelevantHeapRegions#1 := Set#FromBoogieMap((lambda $y#4: Box :: 
                  (exists he#1: DatatypeType :: 
                    { _module.Edge.t(he#1) } { Set#IsMember(heapExternalEdges#1, $Box(he#1)) } 
                    $Is(he#1, Tclass._module.Edge())
                       && Set#IsMember(heapExternalEdges#1, $Box(he#1))
                       && $y#4 == $Box(_module.Object.region(_module.Edge.t(he#1)))))); 
            (var heapExternalEdgesPartitionedByRegion#1 := Map#Glue(Set#FromBoogieMap((lambda $w#6: Box :: 
                      $IsBox($w#6, Tclass._module.Region())
                         && Set#IsMember(allRelevantHeapRegions#1, $w#6))), 
                  (lambda $w#6: Box :: 
                    $Box(_module.Memory.externalEdges(this, $Unbox($w#6): DatatypeType, heapExternalEdges#1))), 
                  TMap(Tclass._module.Region(), TSet(Tclass._module.Edge()))); 
              (forall hr#1: DatatypeType :: 
                { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#1)[$Box(hr#1)]): Set } 
                  { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#1), $Box(hr#1)) } 
                $Is(hr#1, Tclass._module.Region())
                     && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#1), $Box(hr#1))
                   ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#1)[$Box(hr#1)]): Set)
                     <= LitInt(1)))));
    assume {:id "id1163"} _module.Memory.heapExternalsZeroOrOneEdges(this, zedges#0);
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(706,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(706,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1164"} Call$$_module.Memory.reveal__Valid2(old($Heap), $Heap);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Memory.fGC (well-formedness)"} CheckWellFormed$$_module.Memory.fGC(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    iso#0: ref
       where $Is(iso#0, Tclass._module.Object())
         && $IsAlloc(iso#0, Tclass._module.Object(), $Heap));
  free requires 9 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.fGC (well-formedness)"} CheckWellFormed$$_module.Memory.fGC(this: ref, iso#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##t#0: ref;
  var ##edges#0: Set;
  var ##os#0: Set;
  var ##os#1: Set;
  var ##region#0: DatatypeType;
  var ##os#2: Set;
  var ##region#1: DatatypeType;
  var $unchanged#x0: ref;


    // AddMethodImpl: fGC, CheckWellFormed$$_module.Memory.fGC
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(_module.Memory.ownedBy(this, 
            $Unbox(read($Heap, this, _module.Memory.objects)): Set, 
            _module.Object.region(iso#0)), 
          $Box($o)));
    assume {:id "id1165"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(iso#0));
    assert {:id "id1166"} iso#0 != null;
    assume {:id "id1167"} _module.Region.Heap_q(_module.Object.region(iso#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##t#0 := iso#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#0, Tclass._module.Object(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#0 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#0, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    ##edges#0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#0, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.refCountEdges#canCall(this, 
      iso#0, 
      _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set));
    assume {:id "id1168"} _module.Memory.refCountEdges(this, 
        iso#0, 
        _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set))
       == LitInt(0);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assume _module.Memory.Valid#canCall($Heap, this);
    assume {:id "id1169"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#1 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#1, TSet(Tclass._module.Object()), $Heap);
    assert {:id "id1170"} iso#0 != null;
    ##region#0 := _module.Object.region(iso#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##region#0, Tclass._module.Region(), $Heap);
    assume _module.Memory.ownedBy#canCall(this, 
      $Unbox(read($Heap, this, _module.Memory.objects)): Set, 
      _module.Object.region(iso#0));
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember(_module.Memory.ownedBy(this, 
              $Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
              _module.Object.region(iso#0)), 
            $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#2 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#2, TSet(Tclass._module.Object()), $Heap);
    assert {:id "id1171"} iso#0 != null;
    ##region#1 := _module.Object.region(iso#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##region#1, Tclass._module.Region(), $Heap);
    assume _module.Memory.ownedBy#canCall(this, 
      $Unbox(read($Heap, this, _module.Memory.objects)): Set, 
      _module.Object.region(iso#0));
    havoc $unchanged#x0;
    assert {:id "id1172"} Set#IsMember(Set#Difference($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
          _module.Memory.ownedBy(this, 
            $Unbox(read($Heap, this, _module.Memory.objects)): Set, 
            _module.Object.region(iso#0))), 
        $Box($unchanged#x0))
       ==> $IsAlloc($unchanged#x0, Tclass._module.Object(), old($Heap));
    assume {:id "id1173"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
           && !Set#IsMember(_module.Memory.ownedBy(this, 
              $Unbox(read($Heap, this, _module.Memory.objects)): Set, 
              _module.Object.region(iso#0)), 
            $Box($o))
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assert {:id "id1174"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
    assume {:id "id1175"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
}



procedure {:verboseName "Memory.fGC (call)"} Call$$_module.Memory.fGC(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    iso#0: ref
       where $Is(iso#0, Tclass._module.Object())
         && $IsAlloc(iso#0, Tclass._module.Object(), $Heap));
  // user-defined preconditions
  requires {:id "id1176"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(iso#0));
  requires {:id "id1177"} _module.Region.Heap_q(_module.Object.region(iso#0));
  requires {:id "id1178"} _module.Memory.refCountEdges(this, 
      iso#0, 
      _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set))
     == LitInt(0);
  requires {:id "id1179"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Memory.ownedBy#canCall(this, 
    $Unbox(read($Heap, this, _module.Memory.objects)): Set, 
    _module.Object.region(iso#0));
  ensures {:id "id1180"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
         && !Set#IsMember(_module.Memory.ownedBy(this, 
            $Unbox(read($Heap, this, _module.Memory.objects)): Set, 
            _module.Object.region(iso#0)), 
          $Box($o))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
  ensures {:id "id1181"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember(_module.Memory.ownedBy(this, 
            $Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
            _module.Object.region(iso#0)), 
          $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Memory.fGC (correctness)"} Impl$$_module.Memory.fGC(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    iso#0: ref
       where $Is(iso#0, Tclass._module.Object())
         && $IsAlloc(iso#0, Tclass._module.Object(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 9 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1182"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(iso#0));
  requires {:id "id1183"} _module.Region.Heap_q(_module.Object.region(iso#0));
  requires {:id "id1184"} _module.Memory.refCountEdges(this, 
      iso#0, 
      _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set))
     == LitInt(0);
  requires {:id "id1185"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Memory.ownedBy#canCall(this, 
    $Unbox(read($Heap, this, _module.Memory.objects)): Set, 
    _module.Object.region(iso#0));
  ensures {:id "id1186"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
         && !Set#IsMember(_module.Memory.ownedBy(this, 
            $Unbox(read($Heap, this, _module.Memory.objects)): Set, 
            _module.Object.region(iso#0)), 
          $Box($o))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
  ensures {:id "id1187"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember(_module.Memory.ownedBy(this, 
            $Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
            _module.Object.region(iso#0)), 
          $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.fGC (correctness)"} Impl$$_module.Memory.fGC(this: ref, iso#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var xedges#0: Set
     where $Is(xedges#0, TSet(Tclass._module.Edge()))
       && $IsAlloc(xedges#0, TSet(Tclass._module.Edge()), $Heap);
  var ##os#3: Set;
  var xisos#0: Set
     where $Is(xisos#0, TSet(Tclass._module.Object()))
       && $IsAlloc(xisos#0, TSet(Tclass._module.Object()), $Heap);
  var ##os#4: Set;
  var objectsToGC#0: Set
     where $Is(objectsToGC#0, TSet(Tclass._module.Object?()))
       && $IsAlloc(objectsToGC#0, TSet(Tclass._module.Object?()), $Heap);
  var ##os#5: Set;
  var ##region#2: DatatypeType;
  var o#0_0: ref;
  var o#0_1: ref;
  var $prevHeap: Heap;
  var zedges#0: Set
     where $Is(zedges#0, TSet(Tclass._module.Edge()))
       && $IsAlloc(zedges#0, TSet(Tclass._module.Edge()), $Heap);
  var ##os#6: Set;
  var oo##0: Set;
  var aa##0: Set;
  var bb##0: Set;
  var ##edges#1: Set;

    // AddMethodImpl: fGC, Impl$$_module.Memory.fGC
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(_module.Memory.ownedBy(this, 
            $Unbox(read($Heap, this, _module.Memory.objects)): Set, 
            _module.Object.region(iso#0)), 
          $Box($o)));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(738,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(738,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1188"} Call$$_module.Memory.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(739,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(739,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id1189"} Call$$_module.Object.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(741,18)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#3 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#3, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    xedges#0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(742,17)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#4 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#4, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.justTheIsos#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.justTheIsos#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    xisos#0 := _module.Memory.justTheIsos($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(744,23)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#5 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#5, TSet(Tclass._module.Object()), $Heap);
    assert {:id "id1192"} iso#0 != null;
    ##region#2 := _module.Object.region(iso#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##region#2, Tclass._module.Region(), $Heap);
    assume _module.Memory.ownedBy#canCall(this, 
      $Unbox(read($Heap, this, _module.Memory.objects)): Set, 
      _module.Object.region(iso#0));
    assume _module.Memory.ownedBy#canCall(this, 
      $Unbox(read($Heap, this, _module.Memory.objects)): Set, 
      _module.Object.region(iso#0));
    objectsToGC#0 := _module.Memory.ownedBy(this, 
      $Unbox(read($Heap, this, _module.Memory.objects)): Set, 
      _module.Object.region(iso#0));
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(746,7)
    if (*)
    {
        // Assume Fuel Constant
        havoc o#0_0;
        assume $Is(o#0_0, Tclass._module.Object?())
           && $IsAlloc(o#0_0, Tclass._module.Object?(), $Heap);
        assume true;
        assume Set#IsMember(objectsToGC#0, $Box(o#0_0));
        assert {:id "id1194"} {:subsumption 0} o#0_0 != null;
        assume true;
        assert {:id "id1195"} $_ModifiesFrame[o#0_0, _module.Object.fields];
        assume true;
        havoc o#0_1;
        assume $Is(o#0_1, Tclass._module.Object?())
           && $IsAlloc(o#0_1, Tclass._module.Object?(), $Heap);
        assume Set#IsMember(objectsToGC#0, $Box(o#0_1));
        assume o#0_0 != o#0_1;
        assert {:id "id1196"} o#0_0 != o#0_1
           || _module.Object.fields != _module.Object.fields
           || Lit(Map#Empty(): Map) == Lit(Map#Empty(): Map);
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists o#0_2: ref :: 
              $Is(o#0_2, Tclass._module.Object?())
                 && Set#IsMember(objectsToGC#0, $Box(o#0_2))
                 && $o == o#0_2
                 && $f == _module.Object.fields));
        assume (forall o#inv#0_0: ref :: 
          { read($Heap, o#inv#0_0, _module.Object.fields) } 
          $Is(o#inv#0_0, Tclass._module.Object?())
               && Set#IsMember(objectsToGC#0, $Box(o#inv#0_0))
             ==> read($Heap, o#inv#0_0, _module.Object.fields) == $Box(Lit(Map#Empty(): Map)));
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(750,18)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#6 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#6, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    zedges#0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(752,26)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    oo##0 := xisos#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    aa##0 := xedges#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    bb##0 := zedges#0;
    call {:id "id1198"} Call$$_module.Memory.RefCountIsMonotonic(this, oo##0, aa##0, bb##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(754,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##edges#1 := zedges#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#1, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, zedges#0);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, zedges#0);
    assume {:id "id1199"} _module.Memory.heapExternalsZeroOrOneEdges(this, zedges#0);
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(756,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(756,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1200"} Call$$_module.Memory.reveal__Valid2(old($Heap), $Heap);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Memory.mutsPointIntoSameRegionOrImmOrIso (well-formedness)"} CheckWellFormed$$_module.Memory.mutsPointIntoSameRegionOrImmOrIso(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    f#0: ref
       where $Is(f#0, Tclass._module.Object())
         && $IsAlloc(f#0, Tclass._module.Object(), $Heap), 
    t#0: ref
       where $Is(t#0, Tclass._module.Object())
         && $IsAlloc(t#0, Tclass._module.Object(), $Heap));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.mutsPointIntoSameRegionOrImmOrIso (well-formedness)"} CheckWellFormed$$_module.Memory.mutsPointIntoSameRegionOrImmOrIso(this: ref, f#0: ref, t#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##f#0: ref;
  var ##t#0: ref;


    // AddMethodImpl: mutsPointIntoSameRegionOrImmOrIso, CheckWellFormed$$_module.Memory.mutsPointIntoSameRegionOrImmOrIso
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id1201"} f#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(f#0), Tclass._module.Object?(), $Heap);
    assume _module.Object.Valid#canCall($Heap, f#0);
    assume {:id "id1202"} _module.Object.Valid(reveal__module.Object.Valid, $Heap, f#0);
    assert {:id "id1203"} t#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(t#0), Tclass._module.Object?(), $Heap);
    assume _module.Object.Valid#canCall($Heap, t#0);
    assume {:id "id1204"} _module.Object.Valid(reveal__module.Object.Valid, $Heap, t#0);
    ##f#0 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#0, Tclass._module.Object(), $Heap);
    ##t#0 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#0, Tclass._module.Object(), $Heap);
    assume _module.__default.VeniceReferenceOK#canCall(f#0, t#0);
    assume {:id "id1205"} _module.__default.VeniceReferenceOK(f#0, t#0);
    assert {:id "id1206"} f#0 != null;
    assume {:id "id1207"} _module.Region.Heap_q(_module.Object.region(f#0));
    havoc $Heap;
    assume old($Heap) == $Heap;
    if (*)
    {
        if (*)
        {
            assert {:id "id1208"} t#0 != null;
            assume {:id "id1209"} _module.Region.Heap_q(_module.Object.region(t#0));
        }
        else
        {
            assume {:id "id1210"} !_module.Region.Heap_q(_module.Object.region(t#0));
            assert {:id "id1211"} t#0 != null;
            assume {:id "id1212"} _module.Region.Frozen_q(_module.Object.region(t#0));
        }
    }
    else
    {
        assume {:id "id1213"} !(_module.Region.Heap_q(_module.Object.region(t#0))
           || _module.Region.Frozen_q(_module.Object.region(t#0)));
        assert {:id "id1214"} t#0 != null;
        assume {:id "id1215"} _module.Region.Isolate_q(_module.Object.region(t#0));
    }

    if (*)
    {
        assert {:id "id1216"} t#0 != null;
        assume {:id "id1217"} _module.Region.Heap_q(_module.Object.region(t#0));
        assert {:id "id1218"} t#0 != null;
        assert {:id "id1219"} _module.Region.Heap_q(_module.Object.region(t#0))
           || _module.Region.Stack_q(_module.Object.region(t#0));
        assert {:id "id1220"} f#0 != null;
        assert {:id "id1221"} _module.Region.Heap_q(_module.Object.region(f#0))
           || _module.Region.Stack_q(_module.Object.region(f#0));
        assume {:id "id1222"} _module.Region.region(_module.Object.region(t#0))
           == _module.Region.region(_module.Object.region(f#0));
    }
    else
    {
        assume {:id "id1223"} _module.Region.Heap_q(_module.Object.region(t#0))
           ==> _module.Region.region(_module.Object.region(t#0))
             == _module.Region.region(_module.Object.region(f#0));
    }
}



procedure {:verboseName "Memory.mutsPointIntoSameRegionOrImmOrIso (call)"} Call$$_module.Memory.mutsPointIntoSameRegionOrImmOrIso(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    f#0: ref
       where $Is(f#0, Tclass._module.Object())
         && $IsAlloc(f#0, Tclass._module.Object(), $Heap), 
    t#0: ref
       where $Is(t#0, Tclass._module.Object())
         && $IsAlloc(t#0, Tclass._module.Object(), $Heap));
  // user-defined preconditions
  requires {:id "id1224"} _module.Object.Valid(reveal__module.Object.Valid, $Heap, f#0);
  requires {:id "id1225"} _module.Object.Valid(reveal__module.Object.Valid, $Heap, t#0);
  requires {:id "id1226"} _module.__default.VeniceReferenceOK#canCall(f#0, t#0)
     ==> _module.__default.VeniceReferenceOK(f#0, t#0)
       || (_module.Region.Frozen_q(_module.Object.region(t#0)) ==> Lit(true));
  requires {:id "id1227"} _module.__default.VeniceReferenceOK#canCall(f#0, t#0)
     ==> _module.__default.VeniceReferenceOK(f#0, t#0)
       || (!_module.Region.Frozen_q(_module.Object.region(t#0))
         ==> 
        _module.Region.Heap_q(_module.Object.region(f#0))
         ==> _module.Region.Isolate_q(_module.Object.region(t#0))
           || (_module.Region.Heap_q(_module.Object.region(t#0))
             && _module.Region.region(_module.Object.region(t#0))
               == _module.Region.region(_module.Object.region(f#0))));
  requires {:id "id1228"} _module.__default.VeniceReferenceOK#canCall(f#0, t#0)
     ==> _module.__default.VeniceReferenceOK(f#0, t#0)
       || (!_module.Region.Frozen_q(_module.Object.region(t#0))
         ==> 
        !_module.Region.Heap_q(_module.Object.region(f#0))
         ==> 
        _module.Region.Isolate_q(_module.Object.region(f#0))
         ==> _module.Region.Isolate_q(_module.Object.region(t#0))
           || (_module.Region.Heap_q(_module.Object.region(t#0))
             && _module.Region.region(_module.Object.region(t#0)) == f#0));
  requires {:id "id1229"} _module.__default.VeniceReferenceOK#canCall(f#0, t#0)
     ==> _module.__default.VeniceReferenceOK(f#0, t#0)
       || (!_module.Region.Frozen_q(_module.Object.region(t#0))
         ==> 
        !_module.Region.Heap_q(_module.Object.region(f#0))
         ==> 
        !_module.Region.Isolate_q(_module.Object.region(f#0))
         ==> Lit(false));
  requires {:id "id1230"} _module.Region.Heap_q(_module.Object.region(f#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1231"} _module.Region.Heap_q(_module.Object.region(t#0))
     || _module.Region.Frozen_q(_module.Object.region(t#0))
     || _module.Region.Isolate_q(_module.Object.region(t#0));
  free ensures true;
  ensures {:id "id1232"} _module.Region.Heap_q(_module.Object.region(t#0))
     ==> _module.Region.region(_module.Object.region(t#0))
       == _module.Region.region(_module.Object.region(f#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Memory.mutsPointIntoSameRegionOrImmOrIso (correctness)"} Impl$$_module.Memory.mutsPointIntoSameRegionOrImmOrIso(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    f#0: ref
       where $Is(f#0, Tclass._module.Object())
         && $IsAlloc(f#0, Tclass._module.Object(), $Heap), 
    t#0: ref
       where $Is(t#0, Tclass._module.Object())
         && $IsAlloc(t#0, Tclass._module.Object(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1233"} _module.Object.Valid(reveal__module.Object.Valid, $Heap, f#0);
  requires {:id "id1234"} _module.Object.Valid(reveal__module.Object.Valid, $Heap, t#0);
  free requires {:id "id1235"} _module.__default.VeniceReferenceOK#canCall(f#0, t#0)
     && 
    _module.__default.VeniceReferenceOK(f#0, t#0)
     && (if _module.Region.Frozen_q(_module.Object.region(t#0))
       then true
       else (if _module.Region.Heap_q(_module.Object.region(f#0))
         then _module.Region.Isolate_q(_module.Object.region(t#0))
           || (_module.Region.Heap_q(_module.Object.region(t#0))
             && _module.Region.region(_module.Object.region(t#0))
               == _module.Region.region(_module.Object.region(f#0)))
         else (if _module.Region.Isolate_q(_module.Object.region(f#0))
           then _module.Region.Isolate_q(_module.Object.region(t#0))
             || (_module.Region.Heap_q(_module.Object.region(t#0))
               && _module.Region.region(_module.Object.region(t#0)) == f#0)
           else false)));
  requires {:id "id1236"} _module.Region.Heap_q(_module.Object.region(f#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1237"} _module.Region.Heap_q(_module.Object.region(t#0))
     || _module.Region.Frozen_q(_module.Object.region(t#0))
     || _module.Region.Isolate_q(_module.Object.region(t#0));
  free ensures true;
  ensures {:id "id1238"} _module.Region.Heap_q(_module.Object.region(t#0))
     ==> _module.Region.region(_module.Object.region(t#0))
       == _module.Region.region(_module.Object.region(f#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.mutsPointIntoSameRegionOrImmOrIso (correctness)"} Impl$$_module.Memory.mutsPointIntoSameRegionOrImmOrIso(this: ref, f#0: ref, t#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: mutsPointIntoSameRegionOrImmOrIso, Impl$$_module.Memory.mutsPointIntoSameRegionOrImmOrIso
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "Memory.dynMove (well-formedness)"} {:timeLimit 1} CheckWellFormed$$_module.Memory.dynMove(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref
       where $Is(o#0, Tclass._module.Object())
         && $IsAlloc(o#0, Tclass._module.Object(), $Heap), 
    n#0: Seq where $Is(n#0, TSeq(TChar)) && $IsAlloc(n#0, TSeq(TChar), $Heap), 
    f#0: ref
       where $Is(f#0, Tclass._module.Object())
         && $IsAlloc(f#0, Tclass._module.Object(), $Heap), 
    m#0: Seq where $Is(m#0, TSeq(TChar)) && $IsAlloc(m#0, TSeq(TChar), $Heap))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.Status())
         && $IsAlloc(r#0, Tclass._module.Status(), $Heap));
  free requires 10 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.dynMove (well-formedness)"} {:timeLimit 1} CheckWellFormed$$_module.Memory.dynMove(this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq) returns (r#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##o#0: ref;
  var ##n#0: Seq;
  var ##f#0: ref;
  var ##m#0: Seq;


    // AddMethodImpl: dynMove, CheckWellFormed$$_module.Memory.dynMove
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> ($o == o#0 && $f == _module.Object.fields)
           || ($o == f#0 && $f == _module.Object.fields));
    assume {:id "id1239"} !Seq#Equal(n#0, m#0);
    assume {:id "id1240"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0));
    assume {:id "id1241"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(f#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assume _module.Memory.Valid#canCall($Heap, this);
    assume {:id "id1242"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    assert {:id "id1243"} o#0 != null;
    assert {:id "id1244"} f#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == o#0 || $o == f#0);
    assume (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
           || 
          ($o == o#0 && $f == _module.Object.fields)
           || ($o == f#0 && $f == _module.Object.fields));
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    assert {:id "id1245"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume {:id "id1246"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null
         ==> 
        $o == this && ($f == _module.Memory.objects || $f == alloc)
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    ##o#0 := o#0;
    ##n#0 := n#0;
    ##f#0 := f#0;
    ##m#0 := m#0;
    assert {:id "id1247"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assert {:id "id1248"} $IsAlloc(o#0, Tclass._module.Object(), old($Heap));
    assert {:id "id1249"} $IsAlloc(n#0, TSeq(TChar), old($Heap));
    assert {:id "id1250"} $IsAlloc(f#0, Tclass._module.Object(), old($Heap));
    assert {:id "id1251"} $IsAlloc(m#0, TSeq(TChar), old($Heap));
    assume _module.Memory.betterMoveDynamicCheck#canCall(old($Heap), this, o#0, n#0, f#0, m#0);
    assume {:id "id1252"} _module.Status.Success_q(r#0)
       == _module.Memory.betterMoveDynamicCheck(old($Heap), this, o#0, n#0, f#0, m#0);
    if (*)
    {
        assume {:id "id1253"} _module.Status.Success_q(r#0);
        assert {:id "id1254"} o#0 != null;
        assume {:id "id1255"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0));
    }
    else
    {
        assume {:id "id1256"} _module.Status.Success_q(r#0)
           ==> Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0));
    }

    if (*)
    {
        assume {:id "id1257"} _module.Status.Success_q(r#0);
        assert {:id "id1258"} f#0 != null;
        assert {:id "id1259"} $IsAlloc(f#0, Tclass._module.Object(), old($Heap));
        assume {:id "id1260"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map), $Box(m#0));
    }
    else
    {
        assume {:id "id1261"} _module.Status.Success_q(r#0)
           ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map), $Box(m#0));
    }

    if (*)
    {
        assume {:id "id1262"} _module.Status.Success_q(r#0);
        assert {:id "id1263"} f#0 != null;
        assume {:id "id1264"} !Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0));
    }
    else
    {
        assume {:id "id1265"} _module.Status.Success_q(r#0)
           ==> !Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0));
    }

    if (*)
    {
        assume {:id "id1266"} _module.Status.Success_q(r#0);
        assert {:id "id1267"} o#0 != null;
        assert {:id "id1268"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0));
        assert {:id "id1269"} f#0 != null;
        assert {:id "id1270"} $IsAlloc(f#0, Tclass._module.Object(), old($Heap));
        assert {:id "id1271"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map), $Box(m#0));
        assume {:id "id1272"} $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref
           == $Unbox(Map#Elements($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
    }
    else
    {
        assume {:id "id1273"} _module.Status.Success_q(r#0)
           ==> $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref
             == $Unbox(Map#Elements($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
    }

    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assert {:id "id1274"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
    assume {:id "id1275"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
}



procedure {:verboseName "Memory.dynMove (call)"} {:timeLimit 1} Call$$_module.Memory.dynMove(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref
       where $Is(o#0, Tclass._module.Object())
         && $IsAlloc(o#0, Tclass._module.Object(), $Heap), 
    n#0: Seq where $Is(n#0, TSeq(TChar)) && $IsAlloc(n#0, TSeq(TChar), $Heap), 
    f#0: ref
       where $Is(f#0, Tclass._module.Object())
         && $IsAlloc(f#0, Tclass._module.Object(), $Heap), 
    m#0: Seq where $Is(m#0, TSeq(TChar)) && $IsAlloc(m#0, TSeq(TChar), $Heap))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.Status())
         && $IsAlloc(r#0, Tclass._module.Status(), $Heap));
  // user-defined preconditions
  requires {:id "id1276"} !Seq#Equal(n#0, m#0);
  requires {:id "id1277"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0));
  requires {:id "id1278"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(f#0));
  requires {:id "id1279"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1280"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      $o == this && ($f == _module.Memory.objects || $f == alloc)
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures _module.Memory.betterMoveDynamicCheck#canCall(old($Heap), this, o#0, n#0, f#0, m#0);
  ensures {:id "id1281"} _module.Status.Success_q(r#0)
     == _module.Memory.betterMoveDynamicCheck(old($Heap), this, o#0, n#0, f#0, m#0);
  free ensures true;
  ensures {:id "id1282"} _module.Status.Success_q(r#0)
     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0));
  free ensures true;
  ensures {:id "id1283"} _module.Status.Success_q(r#0)
     ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map), $Box(m#0));
  free ensures true;
  ensures {:id "id1284"} _module.Status.Success_q(r#0)
     ==> !Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0));
  free ensures true;
  ensures {:id "id1285"} _module.Status.Success_q(r#0)
     ==> $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref
       == $Unbox(Map#Elements($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
  ensures {:id "id1286"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == o#0 || $o == f#0);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || 
        ($o == o#0 && $f == _module.Object.fields)
         || ($o == f#0 && $f == _module.Object.fields));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Memory.dynMove (correctness)"} {:timeLimit 1} Impl$$_module.Memory.dynMove(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref
       where $Is(o#0, Tclass._module.Object())
         && $IsAlloc(o#0, Tclass._module.Object(), $Heap), 
    n#0: Seq where $Is(n#0, TSeq(TChar)) && $IsAlloc(n#0, TSeq(TChar), $Heap), 
    f#0: ref
       where $Is(f#0, Tclass._module.Object())
         && $IsAlloc(f#0, Tclass._module.Object(), $Heap), 
    m#0: Seq where $Is(m#0, TSeq(TChar)) && $IsAlloc(m#0, TSeq(TChar), $Heap))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.Status())
         && $IsAlloc(r#0, Tclass._module.Status(), $Heap), 
    $_reverifyPost: bool);
  free requires 10 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1287"} !Seq#Equal(n#0, m#0);
  requires {:id "id1288"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0));
  requires {:id "id1289"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(f#0));
  requires {:id "id1290"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1291"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      $o == this && ($f == _module.Memory.objects || $f == alloc)
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures _module.Memory.betterMoveDynamicCheck#canCall(old($Heap), this, o#0, n#0, f#0, m#0);
  ensures {:id "id1292"} _module.Status.Success_q(r#0)
     == _module.Memory.betterMoveDynamicCheck(old($Heap), this, o#0, n#0, f#0, m#0);
  free ensures true;
  ensures {:id "id1293"} _module.Status.Success_q(r#0)
     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0));
  free ensures true;
  ensures {:id "id1294"} _module.Status.Success_q(r#0)
     ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map), $Box(m#0));
  free ensures true;
  ensures {:id "id1295"} _module.Status.Success_q(r#0)
     ==> !Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0));
  free ensures true;
  ensures {:id "id1296"} _module.Status.Success_q(r#0)
     ==> $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref
       == $Unbox(Map#Elements($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
  ensures {:id "id1297"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == o#0 || $o == f#0);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || 
        ($o == o#0 && $f == _module.Object.fields)
         || ($o == f#0 && $f == _module.Object.fields));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.dynMove (correctness)"} {:timeLimit 1} Impl$$_module.Memory.dynMove(this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq)
   returns (r#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##o#1: ref;
  var ##n#1: Seq;
  var ##f#1: ref;
  var ##m#1: Seq;
  var ##os#0_0: Set;
  var defass#value#0: bool;
  var value#0: ref
     where defass#value#0
       ==> $Is(value#0, Tclass._module.Object())
         && $IsAlloc(value#0, Tclass._module.Object(), $Heap);
  var ##o#2: ref;
  var ##n#2: Seq;
  var o##1_0: ref;
  var f##1_0: Seq;
  var xedges#0: Set
     where $Is(xedges#0, TSet(Tclass._module.Edge()))
       && $IsAlloc(xedges#0, TSet(Tclass._module.Edge()), $Heap);
  var ##os#0: Set;
  var o##0: ref;
  var f##0: Seq;
  var edges#2_0: Set
     where $Is(edges#2_0, TSet(Tclass._module.Edge()))
       && $IsAlloc(edges#2_0, TSet(Tclass._module.Edge()), $Heap);
  var ##os#2_0: Set;
  var ##t#2_0: ref;
  var ##edges#2_0: Set;
  var ##t#2_1: ref;
  var ##edges#2_1: Set;
  var oo##2_0: Set;
  var aa##2_0: Set;
  var bb##2_0: Set;
  var ##os#2_1: Set;
  var o##1: ref;
  var f##1: Seq;
  var t##0: ref;
  var ##os#1: Set;

    // AddMethodImpl: dynMove, Impl$$_module.Memory.dynMove
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> ($o == o#0 && $f == _module.Object.fields)
           || ($o == f#0 && $f == _module.Object.fields));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(821,8)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(821,15)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1298"} Call$$_module.Memory.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(822,8)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(822,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id1299"} Call$$_module.Object.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(823,8)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(823,15)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1300"} Call$$_module.Memory.reveal__Valid2(old($Heap), $Heap);
    // TrCallStmt: After ProcessCallStmt
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(825,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##o#1 := o#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##o#1, Tclass._module.Object(), $Heap);
    ##n#1 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, TSeq(TChar), $Heap);
    ##f#1 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#1, Tclass._module.Object(), $Heap);
    ##m#1 := m#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#1, TSeq(TChar), $Heap);
    assume _module.Memory.betterMoveDynamicCheck#canCall($Heap, this, o#0, n#0, f#0, m#0);
    assume _module.Memory.betterMoveDynamicCheck#canCall($Heap, this, o#0, n#0, f#0, m#0);
    if (!_module.Memory.betterMoveDynamicCheck($Heap, this, o#0, n#0, f#0, m#0))
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(826,14)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        assume _module.Memory.Valid#canCall($Heap, this);
        assume _module.Memory.Valid#canCall($Heap, this);
        assert {:id "id1301"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(827,14)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        assert {:id "id1302"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        assume _module.Memory.HeapObjectsAreMonotonic#canCall(old($Heap), $Heap, this);
        assume _module.Memory.HeapObjectsAreMonotonic#canCall(old($Heap), $Heap, this);
        assert {:id "id1303"} {:subsumption 0} _module.Memory.HeapObjectsAreMonotonic#canCall(old($Heap), $Heap, this)
           ==> _module.Memory.HeapObjectsAreMonotonic(old($Heap), $Heap, this)
             || Set#Subset($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
              $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        assume {:id "id1304"} _module.Memory.HeapObjectsAreMonotonic(old($Heap), $Heap, this);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(828,15)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        assert {:id "id1305"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        assume _module.Memory.AllImmutablesAreImmutable#canCall(old($Heap), $Heap, this);
        assume _module.Memory.AllImmutablesAreImmutable#canCall(old($Heap), $Heap, this);
        assert {:id "id1306"} {:subsumption 0} _module.Memory.AllImmutablesAreImmutable#canCall(old($Heap), $Heap, this)
           ==> _module.Memory.AllImmutablesAreImmutable(old($Heap), $Heap, this)
             || (forall o#0_0: ref :: 
              { $Unbox(read(old($Heap), o#0_0, _module.Object.fields)): Map } 
                { $Unbox(read($Heap, o#0_0, _module.Object.fields)): Map } 
                { _module.Object.region(o#0_0) } 
                { Set#IsMember(Set#Intersection($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
                    $Unbox(read(old($Heap), this, _module.Memory.objects)): Set), 
                  $Box(o#0_0)) } 
              $Is(o#0_0, Tclass._module.Object?())
                   && Set#IsMember(Set#Intersection($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
                      $Unbox(read(old($Heap), this, _module.Memory.objects)): Set), 
                    $Box(o#0_0))
                 ==> 
                _module.Region.Frozen_q(_module.Object.region(o#0_0))
                 ==> Map#Equal($Unbox(read($Heap, o#0_0, _module.Object.fields)): Map, 
                  $Unbox(read(old($Heap), o#0_0, _module.Object.fields)): Map));
        assume {:id "id1307"} _module.Memory.AllImmutablesAreImmutable(old($Heap), $Heap, this);
        // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(829,1)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##os#0_0 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#0_0, TSet(Tclass._module.Object()), $Heap);
        assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        assume {:id "id1308"} _module.Memory.heapExternalsZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(830,15)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        assert {:id "id1309"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
        assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
        assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
        assert {:id "id1310"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(832,14)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(832,14)
        assume true;
        assume true;
        r#0 := Lit(#_module.Status.Failure(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(70))), $Box(char#FromInt(85))), 
                      $Box(char#FromInt(67))), 
                    $Box(char#FromInt(75))), 
                  $Box(char#FromInt(69))), 
                $Box(char#FromInt(68))))));
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(834,9)
    assume true;
    assume true;
    r#0 := Lit(#_module.Status.Success());
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(836,17)
    assume true;
    assert {:id "id1313"} f#0 != null;
    assert {:id "id1314"} Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0));
    assume true;
    value#0 := $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
    defass#value#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(838,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##o#2 := o#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##o#2, Tclass._module.Object(), $Heap);
    ##n#2 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, TSeq(TChar), $Heap);
    assert {:id "id1316"} {:subsumption 0} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(##o#2));
    assume Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(##o#2));
    assert {:id "id1317"} {:subsumption 0} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    assume _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    assume _module.Memory.fExists#canCall($Heap, this, o#0, n#0);
    assume _module.Memory.fExists#canCall($Heap, this, o#0, n#0);
    if (_module.Memory.fExists($Heap, this, o#0, n#0))
    {
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(838,34)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        o##1_0 := o#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        f##1_0 := n#0;
        assert {:id "id1318"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && 
              $o == o##1_0
               && $f == _module.Object.fields
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id1319"} Call$$_module.Memory.fNullify(this, o##1_0, f##1_0);
        // TrCallStmt: After ProcessCallStmt
        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(840,18)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#0 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#0, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    xedges#0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(842,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##0 := f#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    f##0 := m#0;
    assert {:id "id1321"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && 
          $o == o##0
           && $f == _module.Object.fields
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1322"} Call$$_module.Memory.fNullify(this, o##0, f##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(845,7)
    assert {:id "id1323"} defass#value#0;
    assert {:id "id1324"} value#0 != null;
    assume true;
    if (_module.Region.Isolate_q(_module.Object.region(value#0)))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(846,19)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##os#2_0 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#2_0, TSet(Tclass._module.Object()), $Heap);
        assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        edges#2_0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(847,9)
        assert {:id "id1326"} defass#value#0;
        assume true;
        assert {:id "id1327"} Set#Equal(edges#2_0, 
          Set#Difference(xedges#0, 
            Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(f#0, m#0, value#0)))));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(848,9)
        assert {:id "id1328"} defass#value#0;
        assume true;
        assert {:id "id1329"} Set#Equal(xedges#0, 
          Set#Union(edges#2_0, 
            Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(f#0, m#0, value#0)))));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(849,9)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        assert {:id "id1330"} defass#value#0;
        ##t#2_0 := value#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#2_0, Tclass._module.Object(), $Heap);
        assert {:id "id1331"} defass#value#0;
        ##edges#2_0 := Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(f#0, m#0, value#0)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##edges#2_0, TSet(Tclass._module.Edge()), $Heap);
        assume _module.Memory.incomingEdges#canCall(this, 
          value#0, 
          Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(f#0, m#0, value#0))));
        assert {:id "id1332"} defass#value#0;
        assume _module.Memory.incomingEdges#canCall(this, 
          value#0, 
          Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(f#0, m#0, value#0))));
        assert {:id "id1333"} Set#Equal(_module.Memory.incomingEdges(this, 
            value#0, 
            Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(f#0, m#0, value#0)))), 
          Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(f#0, m#0, value#0))));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(850,9)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        assert {:id "id1334"} defass#value#0;
        ##t#2_1 := value#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#2_1, Tclass._module.Object(), $Heap);
        assert {:id "id1335"} defass#value#0;
        ##edges#2_1 := Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(f#0, m#0, value#0)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##edges#2_1, TSet(Tclass._module.Edge()), $Heap);
        assume _module.Memory.refCountEdges#canCall(this, 
          value#0, 
          Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(f#0, m#0, value#0))));
        assume _module.Memory.refCountEdges#canCall(this, 
          value#0, 
          Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(f#0, m#0, value#0))));
        assert {:id "id1336"} _module.Memory.refCountEdges(this, 
            value#0, 
            Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(f#0, m#0, value#0))))
           == LitInt(1);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(851,45)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id1337"} defass#value#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        oo##2_0 := Set#UnionOne(Set#Empty(): Set, $Box(value#0));
        assume true;
        // ProcessCallStmt: CheckSubrange
        aa##2_0 := edges#2_0;
        assert {:id "id1338"} defass#value#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        bb##2_0 := Set#UnionOne(Set#Empty(): Set, $Box(#_module.Edge.Edge(f#0, m#0, value#0)));
        call {:id "id1339"} Call$$_module.Memory.RefCountDistributesOverDisjointEdges(this, oo##2_0, aa##2_0, bb##2_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(855,1)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##os#2_1 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#2_1, TSet(Tclass._module.Object()), $Heap);
        assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        assume {:id "id1340"} _module.Memory.heapExternalsZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        pop;
    }
    else
    {
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(859,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##1 := o#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    f##1 := n#0;
    assert {:id "id1341"} defass#value#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := value#0;
    assert {:id "id1342"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && 
          $o == o##1
           && $f == _module.Object.fields
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1343"} Call$$_module.Memory.fInitialise(this, o##1, f##1, t##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(863,1)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#1 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#1, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume {:id "id1344"} _module.Memory.heapExternalsZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
}



// function declaration for _module.Memory.betterMoveDynamicCheck
function _module.Memory.betterMoveDynamicCheck($heap: Heap, this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq) : bool
uses {
// definition axiom for _module.Memory.betterMoveDynamicCheck (revealed)
axiom {:id "id1345"} 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq :: 
    { _module.Memory.betterMoveDynamicCheck($Heap, this, o#0, n#0, f#0, m#0), $IsGoodHeap($Heap) } 
    _module.Memory.betterMoveDynamicCheck#canCall($Heap, this, o#0, n#0, f#0, m#0)
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && $Is(o#0, Tclass._module.Object())
           && $Is(n#0, TSeq(TChar))
           && $Is(f#0, Tclass._module.Object())
           && $Is(m#0, TSeq(TChar)))
       ==> (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           ==> 
          Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
           ==> $IsA#_module.Mode($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType)
             && $IsA#_module.Mode($Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
             && (_module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
                $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0))
               ==> 
              Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
                Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)])
               ==> 
              !_module.Region.Frozen_q(_module.Object.region(o#0))
               ==> 
              !_module.Region.Frozen_q(_module.Object.region(f#0))
               ==> _module.__default.VeniceReferenceOK#canCall(o#0, 
                $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref)))
         && _module.Memory.betterMoveDynamicCheck($Heap, this, o#0, n#0, f#0, m#0)
           == (
            Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
             && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
             && _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
              $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
             && Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0))
             && Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
              Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)])
             && !_module.Region.Frozen_q(_module.Object.region(o#0))
             && !_module.Region.Frozen_q(_module.Object.region(f#0))
             && _module.__default.VeniceReferenceOK(o#0, 
              $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref)));
}

function _module.Memory.betterMoveDynamicCheck#canCall($heap: Heap, this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq) : bool;

// frame axiom for _module.Memory.betterMoveDynamicCheck
axiom (forall $h0: Heap, $h1: Heap, this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.betterMoveDynamicCheck($h1, this, o#0, n#0, f#0, m#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && (_module.Memory.betterMoveDynamicCheck#canCall($h0, this, o#0, n#0, f#0, m#0)
         || (
          $Is(o#0, Tclass._module.Object())
           && $Is(n#0, TSeq(TChar))
           && $Is(f#0, Tclass._module.Object())
           && $Is(m#0, TSeq(TChar))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && ($o == f#0 || ($o == this && $f == _module.Memory.objects))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.betterMoveDynamicCheck($h0, this, o#0, n#0, f#0, m#0)
       == _module.Memory.betterMoveDynamicCheck($h1, this, o#0, n#0, f#0, m#0));

function _module.Memory.betterMoveDynamicCheck#requires(Heap, ref, ref, Seq, ref, Seq) : bool;

// #requires axiom for _module.Memory.betterMoveDynamicCheck
axiom (forall $Heap: Heap, this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq :: 
  { _module.Memory.betterMoveDynamicCheck#requires($Heap, this, o#0, n#0, f#0, m#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $Heap)
       && $Is(o#0, Tclass._module.Object())
       && $Is(n#0, TSeq(TChar))
       && $Is(f#0, Tclass._module.Object())
       && $Is(m#0, TSeq(TChar))
     ==> _module.Memory.betterMoveDynamicCheck#requires($Heap, this, o#0, n#0, f#0, m#0)
       == true);

procedure {:verboseName "Memory.betterMoveDynamicCheck (well-formedness)"} CheckWellformed$$_module.Memory.betterMoveDynamicCheck(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref where $Is(o#0, Tclass._module.Object()), 
    n#0: Seq where $Is(n#0, TSeq(TChar)), 
    f#0: ref where $Is(f#0, Tclass._module.Object()), 
    m#0: Seq where $Is(m#0, TSeq(TChar)));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.betterMoveDynamicCheck (well-formedness)"} CheckWellformed$$_module.Memory.betterMoveDynamicCheck(this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##f#0: ref;
  var ##t#0: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == f#0 || ($o == this && $f == _module.Memory.objects));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    assert {:id "id1346"} this != null;
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
        assert {:id "id1347"} f#0 != null;
        if (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0)))
        {
            assert {:id "id1348"} o#0 != null;
        }

        if (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0)))
        {
            assert {:id "id1349"} o#0 != null;
            assert {:id "id1350"} Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0));
            assert {:id "id1351"} f#0 != null;
            assert {:id "id1352"} Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0));
        }

        if (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
           && _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
            $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType))
        {
            assert {:id "id1353"} f#0 != null;
            b$reqreads#0 := $_ReadsFrame[f#0, _module.Object.fields];
        }

        if (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
           && _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
            $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
           && Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0)))
        {
            assert {:id "id1354"} f#0 != null;
            b$reqreads#1 := $_ReadsFrame[f#0, _module.Object.fields];
            assert {:id "id1355"} Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0));
            b$reqreads#2 := $_ReadsFrame[this, _module.Memory.objects];
        }

        if (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
           && _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
            $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
           && Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0))
           && Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
            Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]))
        {
            assert {:id "id1356"} o#0 != null;
        }

        if (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
           && _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
            $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
           && Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0))
           && Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
            Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)])
           && !_module.Region.Frozen_q(_module.Object.region(o#0)))
        {
            assert {:id "id1357"} f#0 != null;
        }

        if (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
           && _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
            $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
           && Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0))
           && Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
            Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)])
           && !_module.Region.Frozen_q(_module.Object.region(o#0))
           && !_module.Region.Frozen_q(_module.Object.region(f#0)))
        {
            ##f#0 := o#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0, Tclass._module.Object(), $Heap);
            assert {:id "id1358"} f#0 != null;
            b$reqreads#3 := $_ReadsFrame[f#0, _module.Object.fields];
            assert {:id "id1359"} Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0));
            ##t#0 := $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0, Tclass._module.Object(), $Heap);
            assume _module.__default.VeniceReferenceOK#canCall(o#0, 
              $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref);
        }

        assume {:id "id1360"} _module.Memory.betterMoveDynamicCheck($Heap, this, o#0, n#0, f#0, m#0)
           == (
            Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
             && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
             && _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
              $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
             && Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0))
             && Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
              Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)])
             && !_module.Region.Frozen_q(_module.Object.region(o#0))
             && !_module.Region.Frozen_q(_module.Object.region(f#0))
             && _module.__default.VeniceReferenceOK(o#0, 
              $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref));
        assume Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           ==> 
          Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
           ==> $IsA#_module.Mode($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType)
             && $IsA#_module.Mode($Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
             && (_module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
                $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0))
               ==> 
              Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
                Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)])
               ==> 
              !_module.Region.Frozen_q(_module.Object.region(o#0))
               ==> 
              !_module.Region.Frozen_q(_module.Object.region(f#0))
               ==> _module.__default.VeniceReferenceOK#canCall(o#0, 
                $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.betterMoveDynamicCheck($Heap, this, o#0, n#0, f#0, m#0), TBool);
        assert {:id "id1361"} b$reqreads#0;
        assert {:id "id1362"} b$reqreads#1;
        assert {:id "id1363"} b$reqreads#2;
        assert {:id "id1364"} b$reqreads#3;
        return;

        assume false;
    }
}



// function declaration for _module.Memory.betterCopyDynamicCheck
function _module.Memory.betterCopyDynamicCheck($heap: Heap, this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq) : bool
uses {
// definition axiom for _module.Memory.betterCopyDynamicCheck (revealed)
axiom {:id "id1365"} 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq :: 
    { _module.Memory.betterCopyDynamicCheck($Heap, this, o#0, n#0, f#0, m#0), $IsGoodHeap($Heap) } 
    _module.Memory.betterCopyDynamicCheck#canCall($Heap, this, o#0, n#0, f#0, m#0)
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Memory())
           && $IsAlloc(this, Tclass._module.Memory(), $Heap)
           && $Is(o#0, Tclass._module.Object())
           && $Is(n#0, TSeq(TChar))
           && $Is(f#0, Tclass._module.Object())
           && $Is(m#0, TSeq(TChar)))
       ==> (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           ==> 
          Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
           ==> $IsA#_module.Mode($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType)
             && $IsA#_module.Mode($Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
             && (_module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
                $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0))
               ==> 
              Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
                Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)])
               ==> 
              !_module.Region.Frozen_q(_module.Object.region(o#0))
               ==> _module.__default.VeniceReferenceOK#canCall(o#0, 
                $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref)))
         && _module.Memory.betterCopyDynamicCheck($Heap, this, o#0, n#0, f#0, m#0)
           == (
            Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
             && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
             && _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
              $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
             && Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0))
             && Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
              Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)])
             && !_module.Region.Frozen_q(_module.Object.region(o#0))
             && _module.__default.VeniceReferenceOK(o#0, 
              $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref)
             && !_module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)));
}

function _module.Memory.betterCopyDynamicCheck#canCall($heap: Heap, this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq) : bool;

// frame axiom for _module.Memory.betterCopyDynamicCheck
axiom (forall $h0: Heap, $h1: Heap, this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Memory.betterCopyDynamicCheck($h1, this, o#0, n#0, f#0, m#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Memory())
       && (_module.Memory.betterCopyDynamicCheck#canCall($h0, this, o#0, n#0, f#0, m#0)
         || (
          $Is(o#0, Tclass._module.Object())
           && $Is(n#0, TSeq(TChar))
           && $Is(f#0, Tclass._module.Object())
           && $Is(m#0, TSeq(TChar))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && ($o == f#0 || ($o == this && $f == _module.Memory.objects))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Memory.betterCopyDynamicCheck($h0, this, o#0, n#0, f#0, m#0)
       == _module.Memory.betterCopyDynamicCheck($h1, this, o#0, n#0, f#0, m#0));

function _module.Memory.betterCopyDynamicCheck#requires(Heap, ref, ref, Seq, ref, Seq) : bool;

// #requires axiom for _module.Memory.betterCopyDynamicCheck
axiom (forall $Heap: Heap, this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq :: 
  { _module.Memory.betterCopyDynamicCheck#requires($Heap, this, o#0, n#0, f#0, m#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Memory())
       && $IsAlloc(this, Tclass._module.Memory(), $Heap)
       && $Is(o#0, Tclass._module.Object())
       && $Is(n#0, TSeq(TChar))
       && $Is(f#0, Tclass._module.Object())
       && $Is(m#0, TSeq(TChar))
     ==> _module.Memory.betterCopyDynamicCheck#requires($Heap, this, o#0, n#0, f#0, m#0)
       == true);

procedure {:verboseName "Memory.betterCopyDynamicCheck (well-formedness)"} CheckWellformed$$_module.Memory.betterCopyDynamicCheck(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref where $Is(o#0, Tclass._module.Object()), 
    n#0: Seq where $Is(n#0, TSeq(TChar)), 
    f#0: ref where $Is(f#0, Tclass._module.Object()), 
    m#0: Seq where $Is(m#0, TSeq(TChar)));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.betterCopyDynamicCheck (well-formedness)"} CheckWellformed$$_module.Memory.betterCopyDynamicCheck(this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##f#0: ref;
  var ##t#0: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == f#0 || ($o == this && $f == _module.Memory.objects));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    assert {:id "id1366"} this != null;
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
        assert {:id "id1367"} f#0 != null;
        if (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0)))
        {
            assert {:id "id1368"} o#0 != null;
        }

        if (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0)))
        {
            assert {:id "id1369"} o#0 != null;
            assert {:id "id1370"} Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0));
            assert {:id "id1371"} f#0 != null;
            assert {:id "id1372"} Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0));
        }

        if (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
           && _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
            $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType))
        {
            assert {:id "id1373"} f#0 != null;
            b$reqreads#0 := $_ReadsFrame[f#0, _module.Object.fields];
        }

        if (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
           && _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
            $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
           && Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0)))
        {
            assert {:id "id1374"} f#0 != null;
            b$reqreads#1 := $_ReadsFrame[f#0, _module.Object.fields];
            assert {:id "id1375"} Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0));
            b$reqreads#2 := $_ReadsFrame[this, _module.Memory.objects];
        }

        if (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
           && _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
            $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
           && Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0))
           && Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
            Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]))
        {
            assert {:id "id1376"} o#0 != null;
        }

        if (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
           && _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
            $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
           && Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0))
           && Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
            Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)])
           && !_module.Region.Frozen_q(_module.Object.region(o#0)))
        {
            ##f#0 := o#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0, Tclass._module.Object(), $Heap);
            assert {:id "id1377"} f#0 != null;
            b$reqreads#3 := $_ReadsFrame[f#0, _module.Object.fields];
            assert {:id "id1378"} Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0));
            ##t#0 := $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0, Tclass._module.Object(), $Heap);
            assume _module.__default.VeniceReferenceOK#canCall(o#0, 
              $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref);
        }

        if (Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
           && _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
            $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
           && Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0))
           && Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
            Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)])
           && !_module.Region.Frozen_q(_module.Object.region(o#0))
           && _module.__default.VeniceReferenceOK(o#0, 
            $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref))
        {
            assert {:id "id1379"} f#0 != null;
            assert {:id "id1380"} Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0));
        }

        assume {:id "id1381"} _module.Memory.betterCopyDynamicCheck($Heap, this, o#0, n#0, f#0, m#0)
           == (
            Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
             && Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
             && _module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
              $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
             && Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0))
             && Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
              Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)])
             && !_module.Region.Frozen_q(_module.Object.region(o#0))
             && _module.__default.VeniceReferenceOK(o#0, 
              $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref)
             && !_module.Mode.Iso_q($Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType));
        assume Set#IsMember(Map#Domain(_module.Object.fieldModes(f#0)), $Box(m#0))
           ==> 
          Set#IsMember(Map#Domain(_module.Object.fieldModes(o#0)), $Box(n#0))
           ==> $IsA#_module.Mode($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType)
             && $IsA#_module.Mode($Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
             && (_module.Mode#Equal($Unbox(Map#Elements(_module.Object.fieldModes(o#0))[$Box(n#0)]): DatatypeType, 
                $Unbox(Map#Elements(_module.Object.fieldModes(f#0))[$Box(m#0)]): DatatypeType)
               ==> 
              Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0))
               ==> 
              Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
                Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)])
               ==> 
              !_module.Region.Frozen_q(_module.Object.region(o#0))
               ==> _module.__default.VeniceReferenceOK#canCall(o#0, 
                $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Memory.betterCopyDynamicCheck($Heap, this, o#0, n#0, f#0, m#0), TBool);
        assert {:id "id1382"} b$reqreads#0;
        assert {:id "id1383"} b$reqreads#1;
        assert {:id "id1384"} b$reqreads#2;
        assert {:id "id1385"} b$reqreads#3;
        return;

        assume false;
    }
}



procedure {:verboseName "Memory.dynCopy (well-formedness)"} CheckWellFormed$$_module.Memory.dynCopy(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref
       where $Is(o#0, Tclass._module.Object())
         && $IsAlloc(o#0, Tclass._module.Object(), $Heap), 
    n#0: Seq where $Is(n#0, TSeq(TChar)) && $IsAlloc(n#0, TSeq(TChar), $Heap), 
    f#0: ref
       where $Is(f#0, Tclass._module.Object())
         && $IsAlloc(f#0, Tclass._module.Object(), $Heap), 
    m#0: Seq where $Is(m#0, TSeq(TChar)) && $IsAlloc(m#0, TSeq(TChar), $Heap))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.Status())
         && $IsAlloc(r#0, Tclass._module.Status(), $Heap));
  free requires 10 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.dynCopy (well-formedness)"} CheckWellFormed$$_module.Memory.dynCopy(this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq) returns (r#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##o#0: ref;
  var ##n#0: Seq;
  var ##f#0: ref;
  var ##m#0: Seq;


    // AddMethodImpl: dynCopy, CheckWellFormed$$_module.Memory.dynCopy
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> ($o == o#0 && $f == _module.Object.fields)
           || ($o == f#0 && $f == _module.Object.fields));
    assume {:id "id1386"} !Seq#Equal(n#0, m#0);
    assume {:id "id1387"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0));
    assume {:id "id1388"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(f#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assume _module.Memory.Valid#canCall($Heap, this);
    assume {:id "id1389"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    assert {:id "id1390"} o#0 != null;
    assert {:id "id1391"} f#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == o#0 || $o == f#0);
    assume (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
           || 
          ($o == o#0 && $f == _module.Object.fields)
           || ($o == f#0 && $f == _module.Object.fields));
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    assert {:id "id1392"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume {:id "id1393"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null
         ==> 
        $o == this && ($f == _module.Memory.objects || $f == alloc)
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    if (*)
    {
        assume {:id "id1394"} _module.Status.Success_q(r#0);
        assert {:id "id1395"} o#0 != null;
        assume {:id "id1396"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0));
    }
    else
    {
        assume {:id "id1397"} _module.Status.Success_q(r#0)
           ==> Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0));
    }

    if (*)
    {
        assume {:id "id1398"} _module.Status.Success_q(r#0);
        assert {:id "id1399"} f#0 != null;
        assert {:id "id1400"} $IsAlloc(f#0, Tclass._module.Object(), old($Heap));
        assume {:id "id1401"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map), $Box(m#0));
    }
    else
    {
        assume {:id "id1402"} _module.Status.Success_q(r#0)
           ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map), $Box(m#0));
    }

    if (*)
    {
        assume {:id "id1403"} _module.Status.Success_q(r#0);
        assert {:id "id1404"} f#0 != null;
        assume {:id "id1405"} Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0));
    }
    else
    {
        assume {:id "id1406"} _module.Status.Success_q(r#0)
           ==> Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0));
    }

    if (*)
    {
        assume {:id "id1407"} _module.Status.Success_q(r#0);
        assert {:id "id1408"} o#0 != null;
        assert {:id "id1409"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0));
        assert {:id "id1410"} f#0 != null;
        assert {:id "id1411"} $IsAlloc(f#0, Tclass._module.Object(), old($Heap));
        assert {:id "id1412"} Set#IsMember(Map#Domain($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map), $Box(m#0));
        assume {:id "id1413"} $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref
           == $Unbox(Map#Elements($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
    }
    else
    {
        assume {:id "id1414"} _module.Status.Success_q(r#0)
           ==> $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref
             == $Unbox(Map#Elements($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
    }

    if (*)
    {
        assume {:id "id1415"} _module.Status.Success_q(r#0);
        assert {:id "id1416"} o#0 != null;
        assert {:id "id1417"} Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0));
        assert {:id "id1418"} f#0 != null;
        assert {:id "id1419"} Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0));
        assume {:id "id1420"} $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref
           == $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
    }
    else
    {
        assume {:id "id1421"} _module.Status.Success_q(r#0)
           ==> $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref
             == $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
    }

    ##o#0 := o#0;
    ##n#0 := n#0;
    ##f#0 := f#0;
    ##m#0 := m#0;
    assert {:id "id1422"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assert {:id "id1423"} $IsAlloc(o#0, Tclass._module.Object(), old($Heap));
    assert {:id "id1424"} $IsAlloc(n#0, TSeq(TChar), old($Heap));
    assert {:id "id1425"} $IsAlloc(f#0, Tclass._module.Object(), old($Heap));
    assert {:id "id1426"} $IsAlloc(m#0, TSeq(TChar), old($Heap));
    assume _module.Memory.betterCopyDynamicCheck#canCall(old($Heap), this, o#0, n#0, f#0, m#0);
    assume {:id "id1427"} _module.Status.Success_q(r#0)
       == _module.Memory.betterCopyDynamicCheck(old($Heap), this, o#0, n#0, f#0, m#0);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assert {:id "id1428"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
    assume {:id "id1429"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
}



procedure {:verboseName "Memory.dynCopy (call)"} Call$$_module.Memory.dynCopy(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref
       where $Is(o#0, Tclass._module.Object())
         && $IsAlloc(o#0, Tclass._module.Object(), $Heap), 
    n#0: Seq where $Is(n#0, TSeq(TChar)) && $IsAlloc(n#0, TSeq(TChar), $Heap), 
    f#0: ref
       where $Is(f#0, Tclass._module.Object())
         && $IsAlloc(f#0, Tclass._module.Object(), $Heap), 
    m#0: Seq where $Is(m#0, TSeq(TChar)) && $IsAlloc(m#0, TSeq(TChar), $Heap))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.Status())
         && $IsAlloc(r#0, Tclass._module.Status(), $Heap));
  // user-defined preconditions
  requires {:id "id1430"} !Seq#Equal(n#0, m#0);
  requires {:id "id1431"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0));
  requires {:id "id1432"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(f#0));
  requires {:id "id1433"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1434"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      $o == this && ($f == _module.Memory.objects || $f == alloc)
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures true;
  ensures {:id "id1435"} _module.Status.Success_q(r#0)
     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0));
  free ensures true;
  ensures {:id "id1436"} _module.Status.Success_q(r#0)
     ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map), $Box(m#0));
  free ensures true;
  ensures {:id "id1437"} _module.Status.Success_q(r#0)
     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0));
  free ensures true;
  ensures {:id "id1438"} _module.Status.Success_q(r#0)
     ==> $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref
       == $Unbox(Map#Elements($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
  free ensures true;
  ensures {:id "id1439"} _module.Status.Success_q(r#0)
     ==> $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref
       == $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
  free ensures _module.Memory.betterCopyDynamicCheck#canCall(old($Heap), this, o#0, n#0, f#0, m#0);
  ensures {:id "id1440"} _module.Status.Success_q(r#0)
     == _module.Memory.betterCopyDynamicCheck(old($Heap), this, o#0, n#0, f#0, m#0);
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
  ensures {:id "id1441"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == o#0 || $o == f#0);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || 
        ($o == o#0 && $f == _module.Object.fields)
         || ($o == f#0 && $f == _module.Object.fields));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Memory.dynCopy (correctness)"} Impl$$_module.Memory.dynCopy(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    o#0: ref
       where $Is(o#0, Tclass._module.Object())
         && $IsAlloc(o#0, Tclass._module.Object(), $Heap), 
    n#0: Seq where $Is(n#0, TSeq(TChar)) && $IsAlloc(n#0, TSeq(TChar), $Heap), 
    f#0: ref
       where $Is(f#0, Tclass._module.Object())
         && $IsAlloc(f#0, Tclass._module.Object(), $Heap), 
    m#0: Seq where $Is(m#0, TSeq(TChar)) && $IsAlloc(m#0, TSeq(TChar), $Heap))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.Status())
         && $IsAlloc(r#0, Tclass._module.Status(), $Heap), 
    $_reverifyPost: bool);
  free requires 10 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1442"} !Seq#Equal(n#0, m#0);
  requires {:id "id1443"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(o#0));
  requires {:id "id1444"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(f#0));
  requires {:id "id1445"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1446"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      $o == this && ($f == _module.Memory.objects || $f == alloc)
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures true;
  ensures {:id "id1447"} _module.Status.Success_q(r#0)
     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, o#0, _module.Object.fields)): Map), $Box(n#0));
  free ensures true;
  ensures {:id "id1448"} _module.Status.Success_q(r#0)
     ==> Set#IsMember(Map#Domain($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map), $Box(m#0));
  free ensures true;
  ensures {:id "id1449"} _module.Status.Success_q(r#0)
     ==> Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0));
  free ensures true;
  ensures {:id "id1450"} _module.Status.Success_q(r#0)
     ==> $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref
       == $Unbox(Map#Elements($Unbox(read(old($Heap), f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
  free ensures true;
  ensures {:id "id1451"} _module.Status.Success_q(r#0)
     ==> $Unbox(Map#Elements($Unbox(read($Heap, o#0, _module.Object.fields)): Map)[$Box(n#0)]): ref
       == $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
  free ensures _module.Memory.betterCopyDynamicCheck#canCall(old($Heap), this, o#0, n#0, f#0, m#0);
  ensures {:id "id1452"} _module.Status.Success_q(r#0)
     == _module.Memory.betterCopyDynamicCheck(old($Heap), this, o#0, n#0, f#0, m#0);
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
  ensures {:id "id1453"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == o#0 || $o == f#0);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || 
        ($o == o#0 && $f == _module.Object.fields)
         || ($o == f#0 && $f == _module.Object.fields));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.dynCopy (correctness)"} Impl$$_module.Memory.dynCopy(this: ref, o#0: ref, n#0: Seq, f#0: ref, m#0: Seq)
   returns (r#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##o#1: ref;
  var ##n#1: Seq;
  var ##f#1: ref;
  var ##m#1: Seq;
  var defass#value#0: bool;
  var value#0: ref
     where defass#value#0
       ==> $Is(value#0, Tclass._module.Object())
         && $IsAlloc(value#0, Tclass._module.Object(), $Heap);
  var ##o#2: ref;
  var ##n#2: Seq;
  var o##1_0: ref;
  var f##1_0: Seq;
  var o##0: ref;
  var f##0: Seq;
  var t##0: ref;

    // AddMethodImpl: dynCopy, Impl$$_module.Memory.dynCopy
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> ($o == o#0 && $f == _module.Object.fields)
           || ($o == f#0 && $f == _module.Object.fields));
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(925,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(925,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1454"} Call$$_module.Memory.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(926,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(926,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id1455"} Call$$_module.Object.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(927,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(927,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1456"} Call$$_module.Memory.reveal__Valid2(old($Heap), $Heap);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(929,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assert {:id "id1457"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
    if (_module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this))
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        assume _module.Memory.Valid#canCall($Heap, this);
    }

    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this)
       && (_module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this)
         ==> _module.Memory.Valid#canCall($Heap, this));
    assert {:id "id1458"} {:subsumption 0} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this)
       ==> _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    assume {:id "id1459"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this)
       ==> _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(931,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##o#1 := o#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##o#1, Tclass._module.Object(), $Heap);
    ##n#1 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, TSeq(TChar), $Heap);
    ##f#1 := f#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#1, Tclass._module.Object(), $Heap);
    ##m#1 := m#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#1, TSeq(TChar), $Heap);
    assume _module.Memory.betterCopyDynamicCheck#canCall($Heap, this, o#0, n#0, f#0, m#0);
    assume _module.Memory.betterCopyDynamicCheck#canCall($Heap, this, o#0, n#0, f#0, m#0);
    if (!_module.Memory.betterCopyDynamicCheck($Heap, this, o#0, n#0, f#0, m#0))
    {
        push;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(933,15)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(933,15)
        assume true;
        assume true;
        r#0 := Lit(#_module.Status.Failure(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(70))), $Box(char#FromInt(85))), 
                        $Box(char#FromInt(67))), 
                      $Box(char#FromInt(75))), 
                    $Box(char#FromInt(69))), 
                  $Box(char#FromInt(68))), 
                $Box(char#FromInt(50))))));
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(935,9)
    assume true;
    assume true;
    r#0 := Lit(#_module.Status.Success());
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(937,17)
    assume true;
    assert {:id "id1462"} f#0 != null;
    assert {:id "id1463"} Set#IsMember(Map#Domain($Unbox(read($Heap, f#0, _module.Object.fields)): Map), $Box(m#0));
    assume true;
    value#0 := $Unbox(Map#Elements($Unbox(read($Heap, f#0, _module.Object.fields)): Map)[$Box(m#0)]): ref;
    defass#value#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(939,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##o#2 := o#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##o#2, Tclass._module.Object(), $Heap);
    ##n#2 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, TSeq(TChar), $Heap);
    assert {:id "id1465"} {:subsumption 0} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(##o#2));
    assume Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(##o#2));
    assert {:id "id1466"} {:subsumption 0} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    assume _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    assume _module.Memory.fExists#canCall($Heap, this, o#0, n#0);
    assume _module.Memory.fExists#canCall($Heap, this, o#0, n#0);
    if (_module.Memory.fExists($Heap, this, o#0, n#0))
    {
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(939,34)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        o##1_0 := o#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        f##1_0 := n#0;
        assert {:id "id1467"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && 
              $o == o##1_0
               && $f == _module.Object.fields
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id1468"} Call$$_module.Memory.fNullify(this, o##1_0, f##1_0);
        // TrCallStmt: After ProcessCallStmt
        pop;
    }
    else
    {
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(942,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##0 := o#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    f##0 := n#0;
    assert {:id "id1469"} defass#value#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := value#0;
    assert {:id "id1470"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && 
          $o == o##0
           && $f == _module.Object.fields
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id1471"} Call$$_module.Memory.fInitialise(this, o##0, f##0, t##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Memory.dynNukeObject (well-formedness)"} {:timeLimit 30} CheckWellFormed$$_module.Memory.dynNukeObject(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    iso#0: ref
       where $Is(iso#0, Tclass._module.Object())
         && $IsAlloc(iso#0, Tclass._module.Object(), $Heap));
  free requires 9 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.dynNukeObject (well-formedness)"} {:timeLimit 30} CheckWellFormed$$_module.Memory.dynNukeObject(this: ref, iso#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: bool;
  var $unchanged#x0: ref;
  var ##os#0: Set;
  var ##os#1: Set;
  var e#0: DatatypeType;
  var ##os#2: Set;


    // AddMethodImpl: dynNukeObject, CheckWellFormed$$_module.Memory.dynNukeObject
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == iso#0 && $f == _module.Object.fields);
    assume {:id "id1472"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(iso#0));
    assert {:id "id1473"} iso#0 != null;
    ##x#0 := _module.Region.Frozen_q(_module.Object.region(iso#0));
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TBool, $Heap);
    assume _module.__default.not#canCall(_module.Region.Frozen_q(_module.Object.region(iso#0)));
    assume {:id "id1474"} _module.__default.not(_module.Region.Frozen_q(_module.Object.region(iso#0)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assume _module.Memory.Valid#canCall($Heap, this);
    assume {:id "id1475"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
    assert {:id "id1476"} iso#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == iso#0);
    assume (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
           || ($o == iso#0 && $f == _module.Object.fields));
    assume $HeapSucc(old($Heap), $Heap);
    havoc $unchanged#x0;
    assert {:id "id1477"} Set#IsMember(Set#Difference($Unbox(read($Heap, this, _module.Memory.objects)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(iso#0))), 
        $Box($unchanged#x0))
       ==> $IsAlloc($unchanged#x0, Tclass._module.Object(), old($Heap));
    assume {:id "id1478"} (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
           && $o != iso#0
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    assert {:id "id1479"} iso#0 != null;
    assume {:id "id1480"} Map#Equal($Unbox(read($Heap, iso#0, _module.Object.fields)): Map, Map#Empty(): Map);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#0 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#0, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assert {:id "id1481"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    ##os#1 := $Unbox(read(old($Heap), this, _module.Memory.objects)): Set;
    assert {:id "id1482"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assert {:id "id1483"} $IsAlloc($Unbox(read(old($Heap), this, _module.Memory.objects)): Set, 
      TSet(Tclass._module.Object()), 
      old($Heap));
    assume _module.Memory.edges#canCall(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
    assume {:id "id1484"} Set#Subset(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
      _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set));
    havoc e#0;
    assume $Is(e#0, Tclass._module.Edge()) && $IsAlloc(e#0, Tclass._module.Edge(), $Heap);
    if (*)
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##os#2 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#2, TSet(Tclass._module.Object()), $Heap);
        assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        assume {:id "id1485"} Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
          $Box(e#0));
        assume _module.Edge.Edge_q(e#0);
        assume {:id "id1486"} _module.Edge.f(e#0) != iso#0;
    }
    else
    {
        assume {:id "id1487"} Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
            $Box(e#0))
           ==> _module.Edge.f(e#0) != iso#0;
    }

    assume {:id "id1488"} (forall e#1: DatatypeType :: 
      { _module.Edge.f(e#1) } 
        { Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
          $Box(e#1)) } 
      $Is(e#1, Tclass._module.Edge())
           && Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
            $Box(e#1))
         ==> _module.Edge.f(e#1) != iso#0);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assert {:id "id1489"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
    assume {:id "id1490"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
}



procedure {:verboseName "Memory.dynNukeObject (call)"} {:timeLimit 30} Call$$_module.Memory.dynNukeObject(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    iso#0: ref
       where $Is(iso#0, Tclass._module.Object())
         && $IsAlloc(iso#0, Tclass._module.Object(), $Heap));
  // user-defined preconditions
  requires {:id "id1491"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(iso#0));
  requires {:id "id1492"} _module.__default.not#canCall(_module.Region.Frozen_q(_module.Object.region(iso#0)))
     ==> _module.__default.not(_module.Region.Frozen_q(_module.Object.region(iso#0)))
       || !_module.Region.Frozen_q(_module.Object.region(iso#0));
  requires {:id "id1493"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1494"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
         && $o != iso#0
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures true;
  ensures {:id "id1495"} Map#Equal($Unbox(read($Heap, iso#0, _module.Object.fields)): Map, Map#Empty(): Map);
  free ensures _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
     && _module.Memory.edges#canCall(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
  ensures {:id "id1496"} Set#Subset(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
    _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set));
  free ensures (forall e#1: DatatypeType :: 
    { _module.Edge.f(e#1) } 
      { Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
        $Box(e#1)) } 
    $Is(e#1, Tclass._module.Edge())
       ==> _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
         && (Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
            $Box(e#1))
           ==> _module.Edge.Edge_q(e#1)));
  ensures {:id "id1497"} (forall e#1: DatatypeType :: 
    { _module.Edge.f(e#1) } 
      { Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
        $Box(e#1)) } 
    $Is(e#1, Tclass._module.Edge())
         && Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
          $Box(e#1))
       ==> _module.Edge.f(e#1) != iso#0);
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
  ensures {:id "id1498"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == iso#0);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == iso#0 && $f == _module.Object.fields));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Memory.dynNukeObject (correctness)"} {:timeLimit 30} Impl$$_module.Memory.dynNukeObject(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Memory())
         && $IsAlloc(this, Tclass._module.Memory(), $Heap), 
    iso#0: ref
       where $Is(iso#0, Tclass._module.Object())
         && $IsAlloc(iso#0, Tclass._module.Object(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 9 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id1499"} Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box(iso#0));
  free requires {:id "id1500"} _module.__default.not#canCall(_module.Region.Frozen_q(_module.Object.region(iso#0)))
     && 
    _module.__default.not(_module.Region.Frozen_q(_module.Object.region(iso#0)))
     && !_module.Region.Frozen_q(_module.Object.region(iso#0));
  requires {:id "id1501"} _module.Memory.Valid(reveal__module.Memory.Valid, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1502"} (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null
       ==> 
      Set#IsMember($Unbox(read($Heap, this, _module.Memory.objects)): Set, $Box($o))
         && $o != iso#0
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  free ensures true;
  ensures {:id "id1503"} Map#Equal($Unbox(read($Heap, iso#0, _module.Object.fields)): Map, Map#Empty(): Map);
  free ensures _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
     && _module.Memory.edges#canCall(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set);
  ensures {:id "id1504"} Set#Subset(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
    _module.Memory.edges(old($Heap), this, $Unbox(read(old($Heap), this, _module.Memory.objects)): Set));
  free ensures (forall e#1: DatatypeType :: 
    { _module.Edge.f(e#1) } 
      { Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
        $Box(e#1)) } 
    $Is(e#1, Tclass._module.Edge())
       ==> _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
         && (Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
            $Box(e#1))
           ==> _module.Edge.Edge_q(e#1)));
  ensures {:id "id1505"} (forall e#1: DatatypeType :: 
    { _module.Edge.f(e#1) } 
      { Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
        $Box(e#1)) } 
    $Is(e#1, Tclass._module.Edge())
         && Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
          $Box(e#1))
       ==> _module.Edge.f(e#1) != iso#0);
  free ensures _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
  ensures {:id "id1506"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == iso#0);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == iso#0 && $f == _module.Object.fields));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Memory.dynNukeObject (correctness)"} {:timeLimit 30} Impl$$_module.Memory.dynNukeObject(this: ref, iso#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##os#3: Set;
  var xedges#0: Set
     where $Is(xedges#0, TSet(Tclass._module.Edge()))
       && $IsAlloc(xedges#0, TSet(Tclass._module.Edge()), $Heap);
  var ##os#4: Set;
  var xisos#0: Set
     where $Is(xisos#0, TSet(Tclass._module.Object()))
       && $IsAlloc(xisos#0, TSet(Tclass._module.Object()), $Heap);
  var ##os#5: Set;
  var ##os#6: Set;
  var badEdges#0: Set
     where $Is(badEdges#0, TSet(Tclass._module.Edge()))
       && $IsAlloc(badEdges#0, TSet(Tclass._module.Edge()), $Heap);
  var e#2: DatatypeType;
  var ##os#7: Set;
  var $rhs#0: Map;
  var zedges#0: Set
     where $Is(zedges#0, TSet(Tclass._module.Edge()))
       && $IsAlloc(zedges#0, TSet(Tclass._module.Edge()), $Heap);
  var ##os#8: Set;
  var oo##0: Set;
  var aa##0: Set;
  var bb##0: Set;
  var ##edges#0: Set;
  var ##edges#1: Set;
  var ##edges#2: Set;
  var ##os#9: Set;

    // AddMethodImpl: dynNukeObject, Impl$$_module.Memory.dynNukeObject
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == iso#0 && $f == _module.Object.fields);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(966,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(966,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1507"} Call$$_module.Memory.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(967,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(967,18)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id1508"} Call$$_module.Object.reveal__Valid();
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(969,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#3 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#3, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assert {:id "id1509"} {:subsumption 0} _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
       ==> _module.Memory.heapExternalsZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
         || (var edges#0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set); 
          _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, edges#0)
             ==> _module.Memory.heapExternalsZeroOrOneEdges(this, edges#0)
               || (var heapExternalEdges#0 := _module.Memory.justHeapExternalEdges(this, edges#0); 
                (var allRelevantHeapRegions#0 := Set#FromBoogieMap((lambda $y#1: Box :: 
                        (exists he#0: DatatypeType :: 
                          { _module.Edge.t(he#0) } { Set#IsMember(heapExternalEdges#0, $Box(he#0)) } 
                          $Is(he#0, Tclass._module.Edge())
                             && Set#IsMember(heapExternalEdges#0, $Box(he#0))
                             && $y#1 == $Box(_module.Object.region(_module.Edge.t(he#0)))))); 
                  (var heapExternalEdgesPartitionedByRegion#0 := Map#Glue(Set#FromBoogieMap((lambda $w#2: Box :: 
                            $IsBox($w#2, Tclass._module.Region())
                               && Set#IsMember(allRelevantHeapRegions#0, $w#2))), 
                        (lambda $w#2: Box :: 
                          $Box(_module.Memory.externalEdges(this, $Unbox($w#2): DatatypeType, heapExternalEdges#0))), 
                        TMap(Tclass._module.Region(), TSet(Tclass._module.Edge()))); 
                    (forall hr#0: DatatypeType :: 
                      { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#0)[$Box(hr#0)]): Set } 
                        { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#0), $Box(hr#0)) } 
                      $Is(hr#0, Tclass._module.Region())
                           && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#0), $Box(hr#0))
                         ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#0)[$Box(hr#0)]): Set)
                           <= LitInt(1))))));
    assume {:id "id1510"} _module.Memory.heapExternalsZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(971,18)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#4 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#4, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    xedges#0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(972,17)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#5 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#5, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.justTheIsos#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.justTheIsos#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    xisos#0 := _module.Memory.justTheIsos($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(974,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#6 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#6, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assert {:id "id1513"} {:subsumption 0} _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
       ==> _module.Memory.heapExternalsZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
         || (var edges#1 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set); 
          _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, edges#1)
             ==> _module.Memory.heapExternalsZeroOrOneEdges(this, edges#1)
               || (var heapExternalEdges#1 := _module.Memory.justHeapExternalEdges(this, edges#1); 
                (var allRelevantHeapRegions#1 := Set#FromBoogieMap((lambda $y#4: Box :: 
                        (exists he#1: DatatypeType :: 
                          { _module.Edge.t(he#1) } { Set#IsMember(heapExternalEdges#1, $Box(he#1)) } 
                          $Is(he#1, Tclass._module.Edge())
                             && Set#IsMember(heapExternalEdges#1, $Box(he#1))
                             && $y#4 == $Box(_module.Object.region(_module.Edge.t(he#1)))))); 
                  (var heapExternalEdgesPartitionedByRegion#1 := Map#Glue(Set#FromBoogieMap((lambda $w#6: Box :: 
                            $IsBox($w#6, Tclass._module.Region())
                               && Set#IsMember(allRelevantHeapRegions#1, $w#6))), 
                        (lambda $w#6: Box :: 
                          $Box(_module.Memory.externalEdges(this, $Unbox($w#6): DatatypeType, heapExternalEdges#1))), 
                        TMap(Tclass._module.Region(), TSet(Tclass._module.Edge()))); 
                    (forall hr#1: DatatypeType :: 
                      { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#1)[$Box(hr#1)]): Set } 
                        { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#1), $Box(hr#1)) } 
                      $Is(hr#1, Tclass._module.Region())
                           && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#1), $Box(hr#1))
                         ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#1)[$Box(hr#1)]): Set)
                           <= LitInt(1))))));
    assume {:id "id1514"} _module.Memory.heapExternalsZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(978,19)
    assume true;
    // Begin Comprehension WF check
    havoc e#2;
    if ($Is(e#2, Tclass._module.Edge()) && $IsAlloc(e#2, Tclass._module.Edge(), $Heap))
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
        ##os#7 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
        // assume allocatedness for argument to function
        assume $IsAlloc(##os#7, TSet(Tclass._module.Object()), $Heap);
        assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
        if (Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
          $Box(e#2)))
        {
            assume _module.Edge.Edge_q(e#2);
        }

        if (Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
            $Box(e#2))
           && _module.Edge.f(e#2) == iso#0)
        {
        }
    }

    // End Comprehension WF check
    assume (forall e#3: DatatypeType :: 
      { _module.Edge.f(e#3) } 
        { Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
          $Box(e#3)) } 
      $Is(e#3, Tclass._module.Edge())
         ==> _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
           && (Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
              $Box(e#3))
             ==> _module.Edge.Edge_q(e#3)));
    badEdges#0 := Set#FromBoogieMap((lambda $y#6: Box :: 
        $IsBox($y#6, Tclass._module.Edge())
           && 
          Set#IsMember(_module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set), 
            $y#6)
           && _module.Edge.f($Unbox($y#6): DatatypeType) == iso#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(980,17)
    assert {:id "id1516"} iso#0 != null;
    assume true;
    assert {:id "id1517"} $_ModifiesFrame[iso#0, _module.Object.fields];
    assume true;
    $rhs#0 := Lit(Map#Empty(): Map);
    $Heap := update($Heap, iso#0, _module.Object.fields, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(982,18)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#8 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#8, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.edges#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    zedges#0 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(984,26)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    oo##0 := xisos#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    aa##0 := xedges#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    bb##0 := zedges#0;
    call {:id "id1521"} Call$$_module.Memory.RefCountIsMonotonic(this, oo##0, aa##0, bb##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(986,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##edges#0 := zedges#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#0, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.justHeapExternalEdges#canCall(this, zedges#0);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##edges#1 := xedges#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#1, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.justHeapExternalEdges#canCall(this, xedges#0);
    assume _module.Memory.justHeapExternalEdges#canCall(this, zedges#0)
       && _module.Memory.justHeapExternalEdges#canCall(this, xedges#0);
    assert {:id "id1522"} Set#Subset(_module.Memory.justHeapExternalEdges(this, zedges#0), 
      _module.Memory.justHeapExternalEdges(this, xedges#0));
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(989,7)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(989,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1523"} Call$$_module.Memory.reveal__Valid2(old($Heap), $Heap);
    // TrCallStmt: After ProcessCallStmt
    // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(991,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##edges#2 := zedges#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##edges#2, TSet(Tclass._module.Edge()), $Heap);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, zedges#0);
    assume _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, zedges#0);
    assume {:id "id1524"} _module.Memory.heapExternalsZeroOrOneEdges(this, zedges#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(993,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    ##os#9 := $Unbox(read($Heap, this, _module.Memory.objects)): Set;
    // assume allocatedness for argument to function
    assume $IsAlloc(##os#9, TSet(Tclass._module.Object()), $Heap);
    assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assume _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    assert {:id "id1525"} {:subsumption 0} _module.Memory.heapExternalsZeroOrOne#canCall($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
       ==> _module.Memory.heapExternalsZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set)
         || (var edges#2 := _module.Memory.edges($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set); 
          _module.Memory.heapExternalsZeroOrOneEdges#canCall(this, edges#2)
             ==> _module.Memory.heapExternalsZeroOrOneEdges(this, edges#2)
               || (var heapExternalEdges#2 := _module.Memory.justHeapExternalEdges(this, edges#2); 
                (var allRelevantHeapRegions#2 := Set#FromBoogieMap((lambda $y#8: Box :: 
                        (exists he#2: DatatypeType :: 
                          { _module.Edge.t(he#2) } { Set#IsMember(heapExternalEdges#2, $Box(he#2)) } 
                          $Is(he#2, Tclass._module.Edge())
                             && Set#IsMember(heapExternalEdges#2, $Box(he#2))
                             && $y#8 == $Box(_module.Object.region(_module.Edge.t(he#2)))))); 
                  (var heapExternalEdgesPartitionedByRegion#2 := Map#Glue(Set#FromBoogieMap((lambda $w#10: Box :: 
                            $IsBox($w#10, Tclass._module.Region())
                               && Set#IsMember(allRelevantHeapRegions#2, $w#10))), 
                        (lambda $w#10: Box :: 
                          $Box(_module.Memory.externalEdges(this, $Unbox($w#10): DatatypeType, heapExternalEdges#2))), 
                        TMap(Tclass._module.Region(), TSet(Tclass._module.Edge()))); 
                    (forall hr#2: DatatypeType :: 
                      { $Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#2)[$Box(hr#2)]): Set } 
                        { Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#2), $Box(hr#2)) } 
                      $Is(hr#2, Tclass._module.Region())
                           && Set#IsMember(Map#Domain(heapExternalEdgesPartitionedByRegion#2), $Box(hr#2))
                         ==> Set#Card($Unbox(Map#Elements(heapExternalEdgesPartitionedByRegion#2)[$Box(hr#2)]): Set)
                           <= LitInt(1))))));
    assume {:id "id1526"} _module.Memory.heapExternalsZeroOrOne($Heap, this, $Unbox(read($Heap, this, _module.Memory.objects)): Set);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3855.dfy(994,7)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Memory?(), $Heap);
    assert {:id "id1527"} $IsAlloc(this, Tclass._module.Memory(), old($Heap));
    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
    assume _module.Memory.Valid2#canCall(old($Heap), $Heap, this);
    assert {:id "id1528"} _module.Memory.Valid2(reveal__module.Memory.Valid2, old($Heap), $Heap, this);
}



procedure {:verboseName "Memory.reveal_Valid (well-formedness)"} {:verify false} CheckWellFormed$$_module.Memory.reveal__Valid();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Memory.reveal_Valid (call)"} {:verify false} Call$$_module.Memory.reveal__Valid();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module.Memory.Valid;



procedure {:verboseName "Memory.reveal_Valid2 (well-formedness)"} {:verify false} CheckWellFormed$$_module.Memory.reveal__Valid2(previous$Heap: Heap, current$Heap: Heap);
  free requires 0 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



procedure {:verboseName "Memory.reveal_Valid2 (call)"} {:verify false} Call$$_module.Memory.reveal__Valid2(previous$Heap: Heap, current$Heap: Heap);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module.Memory.Valid2;



// $Is axiom for non-null type _module.Memory
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Memory()) } { $Is(c#0, Tclass._module.Memory?()) } 
  $Is(c#0, Tclass._module.Memory())
     <==> $Is(c#0, Tclass._module.Memory?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Memory
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Memory(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Memory?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Memory(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Memory?(), $h));

// Constructor function declaration
function #_module.Status.Success() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Status.Success()) == ##_module.Status.Success;
// Constructor $Is
axiom $Is(#_module.Status.Success(), Tclass._module.Status());
// Constructor literal
axiom #_module.Status.Success() == Lit(#_module.Status.Success());
}

const unique ##_module.Status.Success: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Status.Success()) == ##_module.Status.Success;
}

function _module.Status.Success_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Status.Success_q(d) } 
  _module.Status.Success_q(d) <==> DatatypeCtorId(d) == ##_module.Status.Success);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Status.Success_q(d) } 
  _module.Status.Success_q(d) ==> d == #_module.Status.Success());

// Constructor function declaration
function #_module.Status.Failure(Seq) : DatatypeType;

const unique ##_module.Status.Failure: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Seq :: 
  { #_module.Status.Failure(a#4#0#0) } 
  DatatypeCtorId(#_module.Status.Failure(a#4#0#0)) == ##_module.Status.Failure);
}

function _module.Status.Failure_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Status.Failure_q(d) } 
  _module.Status.Failure_q(d) <==> DatatypeCtorId(d) == ##_module.Status.Failure);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Status.Failure_q(d) } 
  _module.Status.Failure_q(d)
     ==> (exists a#5#0#0: Seq :: d == #_module.Status.Failure(a#5#0#0)));

// Constructor $Is
axiom (forall a#6#0#0: Seq :: 
  { $Is(#_module.Status.Failure(a#6#0#0), Tclass._module.Status()) } 
  $Is(#_module.Status.Failure(a#6#0#0), Tclass._module.Status())
     <==> $Is(a#6#0#0, TSeq(TChar)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Status.error(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Status.Failure_q(d)
       && $IsAlloc(d, Tclass._module.Status(), $h)
     ==> $IsAlloc(_module.Status.error(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#7#0#0: Seq :: 
  { #_module.Status.Failure(Lit(a#7#0#0)) } 
  #_module.Status.Failure(Lit(a#7#0#0)) == Lit(#_module.Status.Failure(a#7#0#0)));

function _module.Status.error(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#8#0#0: Seq :: 
  { #_module.Status.Failure(a#8#0#0) } 
  _module.Status.error(#_module.Status.Failure(a#8#0#0)) == a#8#0#0);

// Inductive seq element rank
axiom (forall a#9#0#0: Seq, i: int :: 
  { Seq#Index(a#9#0#0, i), #_module.Status.Failure(a#9#0#0) } 
  0 <= i && i < Seq#Length(a#9#0#0)
     ==> DtRank($Unbox(Seq#Index(a#9#0#0, i)): DatatypeType)
       < DtRank(#_module.Status.Failure(a#9#0#0)));

// Inductive seq rank
axiom (forall a#10#0#0: Seq :: 
  { #_module.Status.Failure(a#10#0#0) } 
  Seq#Rank(a#10#0#0) < DtRank(#_module.Status.Failure(a#10#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Status(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Status())
     ==> $IsAlloc(d, Tclass._module.Status(), $h));

// Depth-one case-split function
function $IsA#_module.Status(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Status(d) } 
  $IsA#_module.Status(d)
     ==> _module.Status.Success_q(d) || _module.Status.Failure_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Status.Failure_q(d), $Is(d, Tclass._module.Status()) } 
    { _module.Status.Success_q(d), $Is(d, Tclass._module.Status()) } 
  $Is(d, Tclass._module.Status())
     ==> _module.Status.Success_q(d) || _module.Status.Failure_q(d));

// Datatype extensional equality declaration
function _module.Status#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Status.Success
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Status#Equal(a, b), _module.Status.Success_q(a) } 
    { _module.Status#Equal(a, b), _module.Status.Success_q(b) } 
  _module.Status.Success_q(a) && _module.Status.Success_q(b)
     ==> _module.Status#Equal(a, b));

// Datatype extensional equality definition: #_module.Status.Failure
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Status#Equal(a, b), _module.Status.Failure_q(a) } 
    { _module.Status#Equal(a, b), _module.Status.Failure_q(b) } 
  _module.Status.Failure_q(a) && _module.Status.Failure_q(b)
     ==> (_module.Status#Equal(a, b)
       <==> Seq#Equal(_module.Status.error(a), _module.Status.error(b))));

// Datatype extensionality axiom: _module.Status
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Status#Equal(a, b) } 
  _module.Status#Equal(a, b) <==> a == b);

const unique class._module.Status: ClassName;

// function declaration for _module.Status.IsFailure
function _module.Status.IsFailure(this: DatatypeType) : bool
uses {
// definition axiom for _module.Status.IsFailure (revealed)
axiom {:id "id1529"} 0 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    { _module.Status.IsFailure(this) } 
    _module.Status.IsFailure#canCall(this)
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.Status()))
       ==> _module.Status.IsFailure(this) == _module.Status.Failure_q(this));
// definition axiom for _module.Status.IsFailure for all literals (revealed)
axiom {:id "id1530"} 0 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    {:weight 3} { _module.Status.IsFailure(Lit(this)) } 
    _module.Status.IsFailure#canCall(Lit(this))
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.Status()))
       ==> _module.Status.IsFailure(Lit(this)) == Lit(_module.Status.Failure_q(Lit(this))));
}

function _module.Status.IsFailure#canCall(this: DatatypeType) : bool;

function _module.Status.IsFailure#requires(DatatypeType) : bool;

// #requires axiom for _module.Status.IsFailure
axiom (forall this: DatatypeType :: 
  { _module.Status.IsFailure#requires(this) } 
  $Is(this, Tclass._module.Status())
     ==> _module.Status.IsFailure#requires(this) == true);

procedure {:verboseName "Status.IsFailure (well-formedness)"} CheckWellformed$$_module.Status.IsFailure(this: DatatypeType
       where $Is(this, Tclass._module.Status())
         && $IsAlloc(this, Tclass._module.Status(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Status.PropagateFailure
function _module.Status.PropagateFailure(this: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.Status.PropagateFailure
axiom 1 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    { _module.Status.PropagateFailure(this) } 
    _module.Status.PropagateFailure#canCall(this)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Status())
           && _module.Status.IsFailure(this))
       ==> $Is(_module.Status.PropagateFailure(this), Tclass._module.Status()));
// definition axiom for _module.Status.PropagateFailure (revealed)
axiom {:id "id1532"} 1 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    { _module.Status.PropagateFailure(this) } 
    _module.Status.PropagateFailure#canCall(this)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Status())
           && _module.Status.IsFailure(this))
       ==> _module.Status.PropagateFailure(this)
         == #_module.Status.Failure(_module.Status.error(this)));
// definition axiom for _module.Status.PropagateFailure for all literals (revealed)
axiom {:id "id1533"} 1 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    {:weight 3} { _module.Status.PropagateFailure(Lit(this)) } 
    _module.Status.PropagateFailure#canCall(Lit(this))
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Status())
           && Lit(_module.Status.IsFailure(Lit(this))))
       ==> _module.Status.PropagateFailure(Lit(this))
         == Lit(#_module.Status.Failure(Lit(_module.Status.error(Lit(this))))));
}

function _module.Status.PropagateFailure#canCall(this: DatatypeType) : bool;

function _module.Status.PropagateFailure#requires(DatatypeType) : bool;

// #requires axiom for _module.Status.PropagateFailure
axiom (forall this: DatatypeType :: 
  { _module.Status.PropagateFailure#requires(this) } 
  $Is(this, Tclass._module.Status())
     ==> _module.Status.PropagateFailure#requires(this) == _module.Status.IsFailure(this));

procedure {:verboseName "Status.PropagateFailure (well-formedness)"} CheckWellformed$$_module.Status.PropagateFailure(this: DatatypeType
       where $Is(this, Tclass._module.Status())
         && $IsAlloc(this, Tclass._module.Status(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Status.PropagateFailure (well-formedness)"} CheckWellformed$$_module.Status.PropagateFailure(this: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Status(), $Heap);
    assume _module.Status.IsFailure#canCall(this);
    assume {:id "id1534"} _module.Status.IsFailure(this);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Status.PropagateFailure(this), Tclass._module.Status());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id1535"} _module.Status.Failure_q(this);
        assume {:id "id1536"} _module.Status.PropagateFailure(this)
           == #_module.Status.Failure(_module.Status.error(this));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Status.PropagateFailure(this), Tclass._module.Status());
        return;

        assume false;
    }
}



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

const unique tytagFamily$_#Func4: TyTagFamily;

const unique tytagFamily$_#PartialFunc4: TyTagFamily;

const unique tytagFamily$_#TotalFunc4: TyTagFamily;

const unique tytagFamily$Mode: TyTagFamily;

const unique tytagFamily$Object: TyTagFamily;

const unique tytagFamily$Region: TyTagFamily;

const unique tytagFamily$Memory: TyTagFamily;

const unique tytagFamily$Status: TyTagFamily;

const unique tytagFamily$Edge: TyTagFamily;

const unique field$fields: NameFamily;

const unique field$objects: NameFamily;
