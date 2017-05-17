.class final Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;
.super Lcom/google/common/cache/LocalCache$StrongEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongAccessWriteEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$StrongEntry",
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
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 4
    .param p2, "hash"    # I
    .param p3    # Lcom/google/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.StrongAccessWriteEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 1202
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1207
    iput-wide v2, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->accessTime:J

    .line 1220
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1233
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1247
    iput-wide v2, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->writeTime:J

    .line 1260
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1273
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1201
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    .prologue
    .line 1211
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.StrongAccessWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->accessTime:J

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
    .line 1224
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.StrongAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

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
    .line 1264
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.StrongAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

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
    .line 1237
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.StrongAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

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
    .line 1277
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.StrongAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .prologue
    .line 1251
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.StrongAccessWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->writeTime:J

    return-wide v0
.end method

.method public setAccessTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1216
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.StrongAccessWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->accessTime:J

    .line 1215
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
    .line 1229
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.StrongAccessWriteEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1228
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
    .line 1269
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.StrongAccessWriteEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1268
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
    .line 1242
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.StrongAccessWriteEntry<TK;TV;>;"
    .local p1, "previous":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1241
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
    .line 1282
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.StrongAccessWriteEntry<TK;TV;>;"
    .local p1, "previous":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1281
    return-void
.end method

.method public setWriteTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1256
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.StrongAccessWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->writeTime:J

    .line 1255
    return-void
.end method
