.class Lcom/google/common/cache/LocalCache$WriteQueue$1;
.super Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$WriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/LocalCache$AbstractReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/cache/LocalCache$WriteQueue;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache$WriteQueue;)V
    .locals 0

    .prologue
    .line 3592
    .local p1, "this$1":Lcom/google/common/cache/LocalCache$WriteQueue;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WriteQueue<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->this$1:Lcom/google/common/cache/LocalCache$WriteQueue;

    invoke-direct {p0}, Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    .line 3602
    iput-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3614
    iput-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3592
    return-void
.end method


# virtual methods
.method public getNextInWriteQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3606
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInWriteQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3618
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .prologue
    .line 3596
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public setNextInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3611
    .local p1, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3610
    return-void
.end method

.method public setPreviousInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3623
    .local p1, "previous":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3622
    return-void
.end method

.method public setWriteTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 3600
    return-void
.end method
