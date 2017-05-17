.class final Lcom/google/common/collect/Sets$SubSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final inputSet:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mask:I


# direct methods
.method static synthetic -get0(Lcom/google/common/collect/Sets$SubSet;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Sets$SubSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/google/common/collect/Sets$SubSet;)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    return v0
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1210
    .local p0, "this":Lcom/google/common/collect/Sets$SubSet;, "Lcom/google/common/collect/Sets$SubSet<TE;>;"
    .local p1, "inputSet":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<TE;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1211
    iput-object p1, p0, Lcom/google/common/collect/Sets$SubSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    .line 1212
    iput p2, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    .line 1210
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/Sets$SubSet;, "Lcom/google/common/collect/Sets$SubSet<TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1245
    iget-object v3, p0, Lcom/google/common/collect/Sets$SubSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1246
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    iget v3, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shl-int v4, v1, v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1217
    .local p0, "this":Lcom/google/common/collect/Sets$SubSet;, "Lcom/google/common/collect/Sets$SubSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/Sets$SubSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$SubSet$1;-><init>(Lcom/google/common/collect/Sets$SubSet;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1240
    .local p0, "this":Lcom/google/common/collect/Sets$SubSet;, "Lcom/google/common/collect/Sets$SubSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
