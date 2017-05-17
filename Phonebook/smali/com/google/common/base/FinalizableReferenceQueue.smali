.class public Lcom/google/common/base/FinalizableReferenceQueue;
.super Ljava/lang/Object;
.source "FinalizableReferenceQueue.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;,
        Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;,
        Lcom/google/common/base/FinalizableReferenceQueue$DecoupledLoader;,
        Lcom/google/common/base/FinalizableReferenceQueue$DirectLoader;
    }
.end annotation


# static fields
.field private static final FINALIZER_CLASS_NAME:Ljava/lang/String; = "com.google.common.base.internal.Finalizer"

.field private static final logger:Ljava/util/logging/Logger;

.field private static final startFinalizer:Ljava/lang/reflect/Method;


# instance fields
.field final frqRef:Ljava/lang/ref/PhantomReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/PhantomReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final threadStarted:Z


# direct methods
.method static synthetic -get0()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/common/base/FinalizableReferenceQueue;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 129
    const-class v1, Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/common/base/FinalizableReferenceQueue;->logger:Ljava/util/logging/Logger;

    .line 136
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;

    .line 137
    new-instance v2, Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;

    invoke-direct {v2}, Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/google/common/base/FinalizableReferenceQueue$DecoupledLoader;

    invoke-direct {v2}, Lcom/google/common/base/FinalizableReferenceQueue$DecoupledLoader;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/google/common/base/FinalizableReferenceQueue$DirectLoader;

    invoke-direct {v2}, Lcom/google/common/base/FinalizableReferenceQueue$DirectLoader;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 136
    invoke-static {v1}, Lcom/google/common/base/FinalizableReferenceQueue;->loadFinalizer([Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 138
    .local v0, "finalizer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/google/common/base/FinalizableReferenceQueue;->getStartFinalizer(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/common/base/FinalizableReferenceQueue;->startFinalizer:Ljava/lang/reflect/Method;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v3, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v3, p0, Lcom/google/common/base/FinalizableReferenceQueue;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 159
    new-instance v3, Ljava/lang/ref/PhantomReference;

    iget-object v4, p0, Lcom/google/common/base/FinalizableReferenceQueue;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, p0, v4}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v3, p0, Lcom/google/common/base/FinalizableReferenceQueue;->frqRef:Ljava/lang/ref/PhantomReference;

    .line 160
    const/4 v2, 0x0

    .line 162
    .local v2, "threadStarted":Z
    :try_start_0
    sget-object v3, Lcom/google/common/base/FinalizableReferenceQueue;->startFinalizer:Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-class v5, Lcom/google/common/base/FinalizableReference;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/google/common/base/FinalizableReferenceQueue;->queue:Ljava/lang/ref/ReferenceQueue;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/google/common/base/FinalizableReferenceQueue;->frqRef:Ljava/lang/ref/PhantomReference;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    const/4 v2, 0x1

    .line 171
    :goto_0
    iput-boolean v2, p0, Lcom/google/common/base/FinalizableReferenceQueue;->threadStarted:Z

    .line 156
    return-void

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/google/common/base/FinalizableReferenceQueue;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v5, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created."

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 164
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 165
    .local v0, "impossible":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method static getStartFinalizer(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "finalizer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string/jumbo v1, "startFinalizer"

    .line 349
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    .line 351
    const-class v3, Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 352
    const-class v3, Ljava/lang/ref/ReferenceQueue;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 353
    const-class v3, Ljava/lang/ref/PhantomReference;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 349
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static varargs loadFinalizer([Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;)Ljava/lang/Class;
    .locals 4
    .param p0, "loaders"    # [Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 211
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 212
    .local v1, "loader":Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;
    invoke-interface {v1}, Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;->loadFinalizer()Ljava/lang/Class;

    move-result-object v0

    .line 213
    .local v0, "finalizer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 214
    return-object v0

    .line 211
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "finalizer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "loader":Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method


# virtual methods
.method cleanUp()V
    .locals 5

    .prologue
    .line 186
    iget-boolean v2, p0, Lcom/google/common/base/FinalizableReferenceQueue;->threadStarted:Z

    if-eqz v2, :cond_0

    .line 187
    return-void

    .line 191
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/common/base/FinalizableReferenceQueue;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .local v0, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 198
    :try_start_0
    check-cast v0, Lcom/google/common/base/FinalizableReference;

    .end local v0    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    invoke-interface {v0}, Lcom/google/common/base/FinalizableReference;->finalizeReferent()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/google/common/base/FinalizableReferenceQueue;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v4, "Error cleaning up after reference."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 185
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/common/base/FinalizableReferenceQueue;->frqRef:Ljava/lang/ref/PhantomReference;

    invoke-virtual {v0}, Ljava/lang/ref/PhantomReference;->enqueue()Z

    .line 177
    invoke-virtual {p0}, Lcom/google/common/base/FinalizableReferenceQueue;->cleanUp()V

    .line 175
    return-void
.end method
