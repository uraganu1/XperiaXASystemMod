.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/Striped64$Cell;,
        Lcom/google/common/cache/Striped64$HashCode;,
        Lcom/google/common/cache/Striped64$ThreadHashCode;
    }
.end annotation


# static fields
.field static final NCPU:I

.field private static final baseUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lcom/google/common/cache/Striped64;",
            ">;"
        }
    .end annotation
.end field

.field private static final busyUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lcom/google/common/cache/Striped64;",
            ">;"
        }
    .end annotation
.end field

.field static final threadHashCode:Lcom/google/common/cache/Striped64$ThreadHashCode;


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/Striped64$Cell;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/google/common/cache/Striped64$ThreadHashCode;

    invoke-direct {v0}, Lcom/google/common/cache/Striped64$ThreadHashCode;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->threadHashCode:Lcom/google/common/cache/Striped64$ThreadHashCode;

    .line 140
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/common/cache/Striped64;->NCPU:I

    .line 290
    const-class v0, Lcom/google/common/cache/Striped64;

    const-string/jumbo v1, "base"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    .line 289
    sput-object v0, Lcom/google/common/cache/Striped64;->baseUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 292
    const-class v0, Lcom/google/common/cache/Striped64;

    const-string/jumbo v1, "busy"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 291
    sput-object v0, Lcom/google/common/cache/Striped64;->busyUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 23
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method


# virtual methods
.method final casBase(JJ)Z
    .locals 7
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    .prologue
    .line 168
    sget-object v0, Lcom/google/common/cache/Striped64;->baseUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    return v0
.end method

.method final casBusy()Z
    .locals 3

    .prologue
    .line 175
    sget-object v0, Lcom/google/common/cache/Striped64;->busyUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
.end method

.method final internalReset(J)V
    .locals 5
    .param p1, "initialValue"    # J

    .prologue
    .line 279
    iget-object v1, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 280
    .local v1, "as":[Lcom/google/common/cache/Striped64$Cell;
    iput-wide p1, p0, Lcom/google/common/cache/Striped64;->base:J

    .line 281
    if-eqz v1, :cond_1

    .line 282
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 283
    .local v0, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_0

    .line 284
    iput-wide p1, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    .line 282
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "a":Lcom/google/common/cache/Striped64$Cell;
    :cond_1
    return-void
.end method

.method final retryUpdate(JLcom/google/common/cache/Striped64$HashCode;Z)V
    .locals 23
    .param p1, "x"    # J
    .param p3, "hc"    # Lcom/google/common/cache/Striped64$HashCode;
    .param p4, "wasUncontended"    # Z

    .prologue
    .line 201
    move-object/from16 v0, p3

    iget v10, v0, Lcom/google/common/cache/Striped64$HashCode;->code:I

    .line 202
    .local v10, "h":I
    const/4 v8, 0x0

    .line 205
    .end local p4    # "wasUncontended":Z
    .local v8, "collide":Z
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .local v7, "as":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v7, :cond_b

    array-length v14, v7

    .local v14, "n":I
    if-lez v14, :cond_b

    .line 206
    add-int/lit8 v17, v14, -0x1

    and-int v17, v17, v10

    aget-object v6, v7, v17

    .local v6, "a":Lcom/google/common/cache/Striped64$Cell;
    if-nez v6, :cond_5

    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 208
    new-instance v15, Lcom/google/common/cache/Striped64$Cell;

    move-wide/from16 v0, p1

    invoke-direct {v15, v0, v1}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    .line 209
    .local v15, "r":Lcom/google/common/cache/Striped64$Cell;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v17, v0

    if-nez v17, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 210
    const/4 v9, 0x0

    .line 213
    .local v9, "created":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v16, v0

    .local v16, "rs":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v16, :cond_1

    .line 214
    move-object/from16 v0, v16

    array-length v13, v0

    .local v13, "m":I
    if-lez v13, :cond_1

    .line 215
    add-int/lit8 v17, v13, -0x1

    and-int v12, v17, v10

    .local v12, "j":I
    aget-object v17, v16, v12

    if-nez v17, :cond_1

    .line 216
    aput-object v15, v16, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    const/4 v9, 0x1

    .line 220
    .end local v12    # "j":I
    .end local v13    # "m":I
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 222
    if-eqz v9, :cond_0

    .line 272
    .end local v6    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v9    # "created":Z
    .end local v14    # "n":I
    .end local v15    # "r":Lcom/google/common/cache/Striped64$Cell;
    .end local v16    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_2
    :goto_1
    move-object/from16 v0, p3

    iput v10, v0, Lcom/google/common/cache/Striped64$HashCode;->code:I

    .line 200
    return-void

    .line 219
    .restart local v6    # "a":Lcom/google/common/cache/Striped64$Cell;
    .restart local v9    # "created":Z
    .restart local v14    # "n":I
    .restart local v15    # "r":Lcom/google/common/cache/Striped64$Cell;
    :catchall_0
    move-exception v17

    .line 220
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 219
    throw v17

    .line 227
    .end local v9    # "created":Z
    .end local v15    # "r":Lcom/google/common/cache/Striped64$Cell;
    :cond_3
    const/4 v8, 0x0

    .line 250
    :cond_4
    :goto_2
    shl-int/lit8 v17, v10, 0xd

    xor-int v10, v10, v17

    .line 251
    ushr-int/lit8 v17, v10, 0x11

    xor-int v10, v10, v17

    .line 252
    shl-int/lit8 v17, v10, 0x5

    xor-int v10, v10, v17

    .line 205
    goto :goto_0

    .line 229
    :cond_5
    if-nez p4, :cond_6

    .line 230
    const/16 p4, 0x1

    .local p4, "wasUncontended":Z
    goto :goto_2

    .line 231
    .end local p4    # "wasUncontended":Z
    :cond_6
    iget-wide v0, v6, Lcom/google/common/cache/Striped64$Cell;->value:J

    move-wide/from16 v18, v0

    .local v18, "v":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v17

    if-nez v17, :cond_2

    .line 233
    sget v17, Lcom/google/common/cache/Striped64;->NCPU:I

    move/from16 v0, v17

    if-ge v14, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_8

    .line 234
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 235
    :cond_8
    if-nez v8, :cond_9

    .line 236
    const/4 v8, 0x1

    goto :goto_2

    .line 237
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v17, v0

    if-nez v17, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 239
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v0, v7, :cond_a

    .line 240
    shl-int/lit8 v17, v14, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v16, v0

    .line 241
    .restart local v16    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    const/16 v17, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v7, v0, v1, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    .end local v16    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_a
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 247
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 244
    :catchall_1
    move-exception v17

    .line 245
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 244
    throw v17

    .line 254
    .end local v6    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v14    # "n":I
    .end local v18    # "v":J
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v0, v7, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 255
    const/4 v11, 0x0

    .line 257
    .local v11, "init":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v0, v7, :cond_c

    .line 258
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v16, v0

    .line 259
    .restart local v16    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    and-int/lit8 v17, v10, 0x1

    new-instance v20, Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    aput-object v20, v16, v17

    .line 260
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 261
    const/4 v11, 0x1

    .line 264
    .end local v16    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_c
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 266
    if-eqz v11, :cond_0

    goto/16 :goto_1

    .line 263
    :catchall_2
    move-exception v17

    .line 264
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 263
    throw v17

    .line 269
    .end local v11    # "init":Z
    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/common/cache/Striped64;->base:J

    move-wide/from16 v18, v0

    .restart local v18    # "v":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v17

    if-eqz v17, :cond_0

    goto/16 :goto_1
.end method
