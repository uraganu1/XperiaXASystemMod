.class abstract Lcom/google/common/cache/CacheBuilderSpec$DurationParser;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DurationParser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "spec"    # Lcom/google/common/cache/CacheBuilderSpec;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 416
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    const-string/jumbo v7, "value of key %s omitted"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v6, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 418
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 419
    .local v3, "lastChar":C
    const-wide/16 v4, 0x1

    .line 420
    .local v4, "multiplier":J
    sparse-switch v3, :sswitch_data_0

    .line 430
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 431
    const-string/jumbo v7, "key %s invalid format.  was %s, must end with one of [dDhHmMsS]"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 432
    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    .line 431
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 430
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v3    # "lastChar":C
    .end local v4    # "multiplier":J
    :catch_0
    move-exception v2

    .line 438
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 439
    const-string/jumbo v7, "key %s value set to %s, must be integer"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 438
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 416
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 422
    .restart local v3    # "lastChar":C
    .restart local v4    # "multiplier":J
    :sswitch_0
    const-wide/16 v4, 0x18

    .line 424
    :sswitch_1
    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    .line 426
    :sswitch_2
    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    .line 435
    :sswitch_3
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {p3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 436
    .local v0, "duration":J
    mul-long v6, v0, v4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v6, v7, v8}, Lcom/google/common/cache/CacheBuilderSpec$DurationParser;->parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 415
    return-void

    .line 420
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x68 -> :sswitch_1
        0x6d -> :sswitch_2
        0x73 -> :sswitch_3
    .end sparse-switch
.end method

.method protected abstract parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
.end method
