.class final Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;
.super Lcom/google/common/cache/LocalCache$WeakEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakAccessWriteEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$WeakEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile accessTime:J

.field nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field volatile writeTime:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 4
    .param p3, "hash"    # I
    .param p4    # Lcom/google/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WeakAccessWriteEntry<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 1494
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/LocalCache$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1499
    iput-wide v2, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->accessTime:J

    .line 1512
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1525
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1539
    iput-wide v2, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->writeTime:J

    .line 1552
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1565
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1493
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    .prologue
    .line 1503
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WeakAccessWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->accessTime:J

    return-wide v0
.end method

.method public getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1516
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WeakAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

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
    .line 1556
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WeakAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1529
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WeakAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

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
    .line 1569
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WeakAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .prologue
    .line 1543
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WeakAccessWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->writeTime:J

    return-wide v0
.end method

.method public setAccessTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1508
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WeakAccessWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->accessTime:J

    .line 1507
    return-void
.end method

.method public setNextInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1521
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WeakAccessWriteEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1520
    return-void
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
    .line 1561
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WeakAccessWriteEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1560
    return-void
.end method

.method public setPreviousInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1534
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WeakAccessWriteEntry<TK;TV;>;"
    .local p1, "previous":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1533
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
    .line 1574
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WeakAccessWriteEntry<TK;TV;>;"
    .local p1, "previous":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1573
    return-void
.end method

.method public setWriteTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1548
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WeakAccessWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->writeTime:J

    .line 1547
    return-void
.end method
