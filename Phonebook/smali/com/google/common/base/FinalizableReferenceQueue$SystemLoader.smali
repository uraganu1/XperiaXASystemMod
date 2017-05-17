.class Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;
.super Ljava/lang/Object;
.source "FinalizableReferenceQueue.java"

# interfaces
.implements Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/FinalizableReferenceQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemLoader"
.end annotation


# static fields
.field static disabled:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFinalizer()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 246
    sget-boolean v3, Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;->disabled:Z

    if-eqz v3, :cond_0

    .line 247
    return-object v5

    .line 251
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 256
    .local v2, "systemLoader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_1

    .line 258
    :try_start_1
    const-string/jumbo v3, "com.google.common.base.internal.Finalizer"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 252
    .end local v2    # "systemLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/google/common/base/FinalizableReferenceQueue;->-get0()Ljava/util/logging/Logger;

    move-result-object v3

    const-string/jumbo v4, "Not allowed to access system class loader."

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 254
    return-object v5

    .line 259
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "systemLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    return-object v5

    .line 264
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    return-object v5
.end method
