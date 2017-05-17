.class final Lcom/google/common/collect/DiscreteDomain$IntegerDomain;
.super Lcom/google/common/collect/DiscreteDomain;
.source "DiscreteDomain.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/DiscreteDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntegerDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DiscreteDomain",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

.field private static final serialVersionUID:J


# direct methods
.method static synthetic -get0()Lcom/google/common/collect/DiscreteDomain$IntegerDomain;
    .locals 1

    sget-object v0, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;-><init>()V

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

    .line 57
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$IntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.IntegerDomain;"
    invoke-direct {p0}, Lcom/google/common/collect/DiscreteDomain;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$IntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.IntegerDomain;"
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 2
    .param p1, "start"    # Ljava/lang/Comparable;
    .param p2, "end"    # Ljava/lang/Comparable;

    .prologue
    .line 71
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$IntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.IntegerDomain;"
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "start":Ljava/lang/Comparable;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "end":Ljava/lang/Comparable;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->distance(Ljava/lang/Integer;Ljava/lang/Integer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public distance(Ljava/lang/Integer;Ljava/lang/Integer;)J
    .locals 4
    .param p1, "start"    # Ljava/lang/Integer;
    .param p2, "end"    # Ljava/lang/Integer;

    .prologue
    .line 72
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$IntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.IntegerDomain;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic maxValue()Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$IntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.IntegerDomain;"
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->maxValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public maxValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$IntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.IntegerDomain;"
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minValue()Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$IntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.IntegerDomain;"
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->minValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public minValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$IntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.IntegerDomain;"
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "value"    # Ljava/lang/Comparable;

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$IntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.IntegerDomain;"
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Comparable;
    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->next(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$IntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.IntegerDomain;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 63
    .local v0, "i":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "value"    # Ljava/lang/Comparable;

    .prologue
    .line 66
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$IntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.IntegerDomain;"
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Comparable;
    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->previous(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public previous(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$IntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.IntegerDomain;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 68
    .local v0, "i":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lcom/google/common/collect/DiscreteDomain$IntegerDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>.IntegerDomain;"
    const-string/jumbo v0, "DiscreteDomain.integers()"

    return-object v0
.end method
