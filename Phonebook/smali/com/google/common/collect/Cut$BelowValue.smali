.class final Lcom/google/common/collect/Cut$BelowValue;
.super Lcom/google/common/collect/Cut;
.source "Cut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Cut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BelowValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/Cut",
        "<TC;>;"
    }
.end annotation


# static fields
.field private static synthetic -com_google_common_collect_BoundTypeSwitchesValues:[I

.field private static final serialVersionUID:J


# direct methods
.method private static synthetic -getcom_google_common_collect_BoundTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/google/common/collect/Cut$BelowValue;->-com_google_common_collect_BoundTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/collect/Cut$BelowValue;->-com_google_common_collect_BoundTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/BoundType;->values()[Lcom/google/common/collect/BoundType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-virtual {v1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-virtual {v1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/google/common/collect/Cut$BelowValue;->-com_google_common_collect_BoundTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lcom/google/common/collect/Cut$BelowValue;, "Lcom/google/common/collect/Cut<TC;>.BelowValue<TC;>;"
    .local p1, "endpoint":Ljava/lang/Comparable;, "TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-direct {p0, v0}, Lcom/google/common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    .line 239
    return-void
.end method


# virtual methods
.method describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 275
    .local p0, "this":Lcom/google/common/collect/Cut$BelowValue;, "Lcom/google/common/collect/Cut<TC;>.BelowValue<TC;>;"
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    return-void
.end method

.method describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 278
    .local p0, "this":Lcom/google/common/collect/Cut$BelowValue;, "Lcom/google/common/collect/Cut<TC;>.BelowValue<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    return-void
.end method

.method greatestValueBelow(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)TC;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lcom/google/common/collect/Cut$BelowValue;, "Lcom/google/common/collect/Cut<TC;>.BelowValue<TC;>;"
    .local p1, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/DiscreteDomain;->previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 287
    .local p0, "this":Lcom/google/common/collect/Cut$BelowValue;, "Lcom/google/common/collect/Cut<TC;>.BelowValue<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method isLessThan(Ljava/lang/Comparable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/Cut$BelowValue;, "Lcom/google/common/collect/Cut<TC;>.BelowValue<TC;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    const/4 v0, 0x0

    .line 244
    iget-object v1, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-static {v1, p1}, Lcom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method leastValueAbove(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)TC;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lcom/google/common/collect/Cut$BelowValue;, "Lcom/google/common/collect/Cut<TC;>.BelowValue<TC;>;"
    .local p1, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    .local p0, "this":Lcom/google/common/collect/Cut$BelowValue;, "Lcom/google/common/collect/Cut<TC;>.BelowValue<TC;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method typeAsLowerBound()Lcom/google/common/collect/BoundType;
    .locals 1

    .prologue
    .line 247
    .local p0, "this":Lcom/google/common/collect/Cut$BelowValue;, "Lcom/google/common/collect/Cut<TC;>.BelowValue<TC;>;"
    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method typeAsUpperBound()Lcom/google/common/collect/BoundType;
    .locals 1

    .prologue
    .line 250
    .local p0, "this":Lcom/google/common/collect/Cut$BelowValue;, "Lcom/google/common/collect/Cut<TC;>.BelowValue<TC;>;"
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method withLowerBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 3
    .param p1, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lcom/google/common/collect/Cut$BelowValue;, "Lcom/google/common/collect/Cut<TC;>.BelowValue<TC;>;"
    .local p2, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Cut$BelowValue;->-getcom_google_common_collect_BoundTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 260
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 255
    :pswitch_0
    return-object p0

    .line 257
    :pswitch_1
    iget-object v1, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p2, v1}, Lcom/google/common/collect/DiscreteDomain;->previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    .line 258
    .local v0, "previous":Ljava/lang/Comparable;, "TC;"
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/collect/Cut$AboveValue;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method withUpperBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 3
    .param p1, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lcom/google/common/collect/Cut$BelowValue;, "Lcom/google/common/collect/Cut<TC;>.BelowValue<TC;>;"
    .local p2, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Cut$BelowValue;->-getcom_google_common_collect_BoundTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 271
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 266
    :pswitch_0
    iget-object v1, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p2, v1}, Lcom/google/common/collect/DiscreteDomain;->previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    .line 267
    .local v0, "previous":Ljava/lang/Comparable;, "TC;"
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/collect/Cut$AboveValue;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    goto :goto_0

    .line 269
    .end local v0    # "previous":Ljava/lang/Comparable;, "TC;"
    :pswitch_1
    return-object p0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
