.class final Lcom/google/common/base/CharMatcher$14;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endInclusive:C

.field final synthetic val$startInclusive:C


# direct methods
.method constructor <init>(Ljava/lang/String;CC)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;
    .param p2, "val$startInclusive"    # C
    .param p3, "val$endInclusive"    # C

    .prologue
    .line 559
    iput-char p2, p0, Lcom/google/common/base/CharMatcher$14;->val$startInclusive:C

    iput-char p3, p0, Lcom/google/common/base/CharMatcher$14;->val$endInclusive:C

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 561
    iget-char v1, p0, Lcom/google/common/base/CharMatcher$14;->val$startInclusive:C

    if-gt v1, p1, :cond_0

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$14;->val$endInclusive:C

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 2
    .param p1, "table"    # Ljava/util/BitSet;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 566
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$14;->val$startInclusive:C

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$14;->val$endInclusive:C

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    .line 565
    return-void
.end method
