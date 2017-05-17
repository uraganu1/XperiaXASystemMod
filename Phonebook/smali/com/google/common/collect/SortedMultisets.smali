.class final Lcom/google/common/collect/SortedMultisets;
.super Ljava/lang/Object;
.source "SortedMultisets.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/SortedMultisets$ElementSet;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0, "entry"    # Lcom/google/common/collect/Multiset$Entry;

    .prologue
    invoke-static {p0}, Lcom/google/common/collect/SortedMultisets;->getElementOrThrow(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getElementOrNull(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/google/common/collect/Multiset$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .local p0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    const/4 v0, 0x0

    .line 92
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static getElementOrThrow(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    if-nez p0, :cond_0

    .line 86
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 88
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
