.class final Lcom/google/common/base/CharMatcher$12;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$chars:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;
    .param p2, "val$chars"    # [C

    .prologue
    .line 501
    iput-object p2, p0, Lcom/google/common/base/CharMatcher$12;->val$chars:[C

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 503
    iget-object v1, p0, Lcom/google/common/base/CharMatcher$12;->val$chars:[C

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 4
    .param p1, "table"    # Ljava/util/BitSet;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 509
    iget-object v2, p0, Lcom/google/common/base/CharMatcher$12;->val$chars:[C

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-char v0, v2, v1

    .line 510
    .local v0, "c":C
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    .end local v0    # "c":C
    :cond_0
    return-void
.end method
