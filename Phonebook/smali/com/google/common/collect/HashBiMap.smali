.class public final Lcom/google/common/collect/HashBiMap;
.super Ljava/util/AbstractMap;
.source "HashBiMap.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$BiEntry;,
        Lcom/google/common/collect/HashBiMap$Itr;,
        Lcom/google/common/collect/HashBiMap$KeySet;,
        Lcom/google/common/collect/HashBiMap$EntrySet;,
        Lcom/google/common/collect/HashBiMap$Inverse;,
        Lcom/google/common/collect/HashBiMap$InverseSerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final LOAD_FACTOR:D = 1.0

.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Not needed in emulated source"
    .end annotation
.end field


# instance fields
.field private transient hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient inverse:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field private transient mask:I

.field private transient modCount:I

.field private transient size:I


# direct methods
.method static synthetic -get0(Lcom/google/common/collect/HashBiMap;)[Lcom/google/common/collect/HashBiMap$BiEntry;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    return-object v0
.end method

.method static synthetic -get1(Lcom/google/common/collect/HashBiMap;)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/google/common/collect/HashBiMap;)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "keyHash"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "valueHash"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "force"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/google/common/collect/HashBiMap$BiEntry;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/google/common/collect/HashBiMap$BiEntry;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .prologue
    .line 106
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 107
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->init(I)V

    .line 106
    return-void
.end method

.method public static create()Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 58
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/HashBiMap;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/HashBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    .line 77
    .local v0, "bimap":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/HashBiMap;->putAll(Ljava/util/Map;)V

    .line 78
    return-object v0
.end method

.method private createTable(I)[Lcom/google/common/collect/HashBiMap$BiEntry;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    new-array v0, p1, [Lcom/google/common/collect/HashBiMap$BiEntry;

    return-object v0
.end method

.method private delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget v4, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    iget v5, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int v1, v4, v5

    .line 126
    .local v1, "keyBucket":I
    const/4 v2, 0x0

    .line 127
    .local v2, "prevBucketEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    aget-object v0, v4, v1

    .line 129
    .end local v2    # "prevBucketEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    .local v0, "bucketEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :goto_0
    if-ne v0, p1, :cond_1

    .line 130
    if-nez v2, :cond_0

    .line 131
    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v5, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    aput-object v5, v4, v1

    .line 140
    :goto_1
    iget v4, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    iget v5, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int v3, v4, v5

    .line 141
    .local v3, "valueBucket":I
    const/4 v2, 0x0

    .line 142
    .restart local v2    # "prevBucketEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    aget-object v0, v4, v3

    .line 144
    .end local v2    # "prevBucketEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :goto_2
    if-ne v0, p1, :cond_3

    .line 145
    if-nez v2, :cond_2

    .line 146
    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v5, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    aput-object v5, v4, v3

    .line 155
    :goto_3
    iget v4, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 156
    iget v4, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 124
    return-void

    .line 133
    .end local v3    # "valueBucket":I
    :cond_0
    iget-object v4, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    iput-object v4, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    goto :goto_1

    .line 137
    :cond_1
    move-object v2, v0

    .line 128
    .local v2, "prevBucketEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    goto :goto_0

    .line 148
    .end local v2    # "prevBucketEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    .restart local v3    # "valueBucket":I
    :cond_2
    iget-object v4, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    iput-object v4, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    goto :goto_3

    .line 152
    :cond_3
    move-object v2, v0

    .line 143
    .restart local v2    # "prevBucketEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    goto :goto_2
.end method

.method private static hash(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 173
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private init(I)V
    .locals 5
    .param p1, "expectedSize"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 111
    const-string/jumbo v1, "expectedSize"

    invoke-static {p1, v1}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 112
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v2, v3}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    .line 113
    .local v0, "tableSize":I
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 114
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 115
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    .line 116
    iput v4, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 117
    iput v4, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 110
    return-void
.end method

.method private insert(Lcom/google/common/collect/HashBiMap$BiEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget v2, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int v0, v2, v3

    .line 161
    .local v0, "keyBucket":I
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    aget-object v2, v2, v0

    iput-object v2, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 162
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    aput-object p1, v2, v0

    .line 164
    iget v2, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int v1, v2, v3

    .line 165
    .local v1, "valueBucket":I
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    aget-object v2, v2, v1

    iput-object v2, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 166
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    aput-object p1, v2, v1

    .line 168
    iget v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 169
    iget v2, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 159
    return-void
.end method

.method private put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 224
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 225
    .local v0, "keyHash":I
    invoke-static {p2}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v4

    .line 227
    .local v4, "valueHash":I
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v2

    .line 228
    .local v2, "oldEntryForKey":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-eqz v2, :cond_0

    iget v6, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    if-ne v4, v6, :cond_0

    .line 229
    iget-object v6, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 228
    if-eqz v6, :cond_0

    .line 230
    return-object p2

    .line 233
    :cond_0
    invoke-direct {p0, p2, v4}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v3

    .line 234
    .local v3, "oldEntryForValue":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-eqz v3, :cond_1

    .line 235
    if-eqz p3, :cond_3

    .line 236
    invoke-direct {p0, v3}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 242
    :cond_1
    if-eqz v2, :cond_2

    .line 243
    invoke-direct {p0, v2}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 245
    :cond_2
    new-instance v1, Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-direct {v1, p1, v0, p2, v4}, Lcom/google/common/collect/HashBiMap$BiEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 246
    .local v1, "newEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    invoke-direct {p0, v1}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 247
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap;->rehashIfNecessary()V

    .line 248
    if-nez v2, :cond_4

    :goto_0
    return-object v5

    .line 238
    .end local v1    # "newEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "value already present: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 248
    .restart local v1    # "newEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_4
    iget-object v5, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method private putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;Z)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 253
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v4

    .line 254
    .local v4, "valueHash":I
    invoke-static {p2}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 256
    .local v0, "keyHash":I
    invoke-direct {p0, p1, v4}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v3

    .line 257
    .local v3, "oldEntryForValue":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-eqz v3, :cond_0

    iget v6, v3, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    if-ne v0, v6, :cond_0

    .line 258
    iget-object v6, v3, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    invoke-static {p2, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 257
    if-eqz v6, :cond_0

    .line 259
    return-object p2

    .line 262
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v2

    .line 263
    .local v2, "oldEntryForKey":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-eqz v2, :cond_1

    .line 264
    if-eqz p3, :cond_3

    .line 265
    invoke-direct {p0, v2}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 271
    :cond_1
    if-eqz v3, :cond_2

    .line 272
    invoke-direct {p0, v3}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 274
    :cond_2
    new-instance v1, Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-direct {v1, p2, v0, p1, v4}, Lcom/google/common/collect/HashBiMap$BiEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 275
    .local v1, "newEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    invoke-direct {p0, v1}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 276
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap;->rehashIfNecessary()V

    .line 277
    if-nez v3, :cond_4

    :goto_0
    return-object v5

    .line 267
    .end local v1    # "newEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "value already present: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    .restart local v1    # "newEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_4
    iget-object v5, v3, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 659
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 660
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 661
    .local v0, "size":I
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->init(I)V

    .line 662
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->populateMap(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    .line 658
    return-void
.end method

.method private rehashIfNecessary()V
    .locals 10

    .prologue
    .line 281
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 282
    .local v4, "oldKToV":[Lcom/google/common/collect/HashBiMap$BiEntry;, "[Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget v5, p0, Lcom/google/common/collect/HashBiMap;->size:I

    array-length v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6, v8, v9}, Lcom/google/common/collect/Hashing;->needsResizing(IID)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 283
    array-length v5, v4

    mul-int/lit8 v2, v5, 0x2

    .line 285
    .local v2, "newTableSize":I
    invoke-direct {p0, v2}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v5

    iput-object v5, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 286
    invoke-direct {p0, v2}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v5

    iput-object v5, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 287
    add-int/lit8 v5, v2, -0x1

    iput v5, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    .line 288
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 290
    const/4 v0, 0x0

    .local v0, "bucket":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 291
    aget-object v1, v4, v0

    .line 292
    .local v1, "entry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :goto_1
    if-eqz v1, :cond_0

    .line 293
    iget-object v3, v1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 294
    .local v3, "nextEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    invoke-direct {p0, v1}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 295
    move-object v1, v3

    goto :goto_1

    .line 290
    .end local v3    # "nextEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "entry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_1
    iget v5, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 280
    .end local v0    # "bucket":I
    .end local v2    # "newTableSize":I
    :cond_2
    return-void
.end method

.method private seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "keyHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 177
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v2, p2

    aget-object v0, v1, v2

    .local v0, "entry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 179
    iget v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    return-object v0

    .line 178
    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    goto :goto_0

    .line 183
    :cond_1
    return-object v3
.end method

.method private seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "valueHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 187
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v2, p2

    aget-object v0, v1, v2

    .local v0, "entry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 189
    iget v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    return-object v0

    .line 188
    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    goto :goto_0

    .line 193
    :cond_1
    return-object v3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 654
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMap(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 652
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 321
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 319
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 198
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 203
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/HashBiMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/HashBiMap$EntrySet;-><init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$EntrySet;)V

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 209
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    .line 210
    .local v0, "entry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 483
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/HashBiMap$Inverse;-><init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$Inverse;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/HashBiMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$KeySet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 309
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    .line 310
    .local v0, "entry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 311
    return-object v2

    .line 313
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 314
    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 328
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 417
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
