.class final Lcom/google/common/base/CharMatcher$13;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->isEither(CC)Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match1:C

.field final synthetic val$match2:C


# direct methods
.method constructor <init>(Ljava/lang/String;CC)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;
    .param p2, "val$match1"    # C
    .param p3, "val$match2"    # C

    .prologue
    .line 521
    iput-char p2, p0, Lcom/google/common/base/CharMatcher$13;->val$match1:C

    iput-char p3, p0, Lcom/google/common/base/CharMatcher$13;->val$match2:C

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 523
    iget-char v1, p0, Lcom/google/common/base/CharMatcher$13;->val$match1:C

    if-eq p1, v1, :cond_0

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$13;->val$match2:C

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 1
    .param p1, "table"    # Ljava/util/BitSet;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 528
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$13;->val$match1:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 529
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$13;->val$match2:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 527
    return-void
.end method
