.class public final Lcom/google/common/primitives/Booleans;
.super Ljava/lang/Object;
.source "Booleans.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Booleans$LexicographicalComparator;,
        Lcom/google/common/primitives/Booleans$BooleanArrayAsList;
    }
.end annotation


# direct methods
.method static synthetic -wrap0([ZZII)I
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "target"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1([ZZII)I
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "target"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I

    move-result v0

    return v0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asList([Z)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    array-length v0, p0

    if-nez v0, :cond_0

    .line 348
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 350
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([Z)V

    return-object v0
.end method

.method public static compare(ZZ)I
    .locals 1
    .param p0, "a"    # Z
    .param p1, "b"    # Z

    .prologue
    .line 77
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs concat([[Z)[Z
    .locals 8
    .param p0, "arrays"    # [[Z

    .prologue
    const/4 v5, 0x0

    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, "length":I
    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p0, v4

    .line 197
    .local v0, "array":[Z
    array-length v7, v0

    add-int/2addr v1, v7

    .line 196
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "array":[Z
    :cond_0
    new-array v3, v1, [Z

    .line 200
    .local v3, "result":[Z
    const/4 v2, 0x0

    .line 201
    .local v2, "pos":I
    array-length v6, p0

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, p0, v4

    .line 202
    .restart local v0    # "array":[Z
    array-length v7, v0

    invoke-static {v0, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    array-length v7, v0

    add-int/2addr v2, v7

    .line 201
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 205
    .end local v0    # "array":[Z
    :cond_1
    return-object v3
.end method

.method public static contains([ZZ)Z
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "target"    # Z

    .prologue
    const/4 v2, 0x0

    .line 95
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-boolean v0, p0, v1

    .line 96
    .local v0, "value":Z
    if-ne v0, p1, :cond_0

    .line 97
    const/4 v1, 0x1

    return v1

    .line 95
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "value":Z
    :cond_1
    return v2
.end method

.method private static copyOf([ZI)[Z
    .locals 3
    .param p0, "original"    # [Z
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 235
    new-array v0, p1, [Z

    .line 236
    .local v0, "copy":[Z
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    return-object v0
.end method

.method public static varargs countTrue([Z)I
    .locals 4
    .param p0, "values"    # [Z
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, "count":I
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-boolean v1, p0, v2

    .line 485
    .local v1, "value":Z
    if-eqz v1, :cond_0

    .line 486
    add-int/lit8 v0, v0, 0x1

    .line 484
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "value":Z
    :cond_1
    return v0
.end method

.method public static ensureCapacity([ZII)[Z
    .locals 6
    .param p0, "array"    # [Z
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 227
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string/jumbo v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 228
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 229
    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Booleans;->copyOf([ZI)[Z

    move-result-object p0

    .line 228
    .end local p0    # "array":[Z
    :cond_0
    return-object p0

    .restart local p0    # "array":[Z
    :cond_1
    move v0, v2

    .line 226
    goto :goto_0

    :cond_2
    move v0, v2

    .line 227
    goto :goto_1
.end method

.method public static hashCode(Z)I
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 60
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public static indexOf([ZZ)I
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "target"    # Z

    .prologue
    .line 117
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I

    move-result v0

    return v0
.end method

.method private static indexOf([ZZII)I
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "target"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 123
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 124
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 125
    return v0

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static indexOf([Z[Z)I
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "target"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 143
    const-string/jumbo v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    array-length v2, p1

    if-nez v2, :cond_0

    .line 146
    return v3

    .line 150
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 151
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 152
    add-int v2, v0, v1

    aget-boolean v2, p0, v2

    aget-boolean v3, p1, v1

    if-eq v2, v3, :cond_1

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_2
    return v0

    .line 158
    .end local v1    # "j":I
    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method public static varargs join(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 4
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    array-length v2, p1

    if-nez v2, :cond_0

    .line 252
    const-string/jumbo v2, ""

    return-object v2

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 257
    .local v0, "builder":Ljava/lang/StringBuilder;
    aget-boolean v2, p1, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 259
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-boolean v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static lastIndexOf([ZZ)I
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "target"    # Z

    .prologue
    .line 171
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([ZZII)I
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "target"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 177
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 178
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 179
    return v0

    .line 177
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 182
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[Z>;"
        }
    .end annotation

    .prologue
    .line 281
    sget-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Boolean;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    if-eqz v4, :cond_0

    .line 319
    check-cast p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->toBooleanArray()[Z

    move-result-object v4

    return-object v4

    .line 322
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Boolean;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 323
    .local v1, "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 324
    .local v3, "len":I
    new-array v0, v3, [Z

    .line 325
    .local v0, "array":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 327
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    aput-boolean v4, v0, v2

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    :cond_1
    return-object v0
.end method
