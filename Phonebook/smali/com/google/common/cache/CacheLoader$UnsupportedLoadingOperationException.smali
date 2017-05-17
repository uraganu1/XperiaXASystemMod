.class final Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
.super Ljava/lang/UnsupportedOperationException;
.source "CacheLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsupportedLoadingOperationException"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 228
    .local p0, "this":Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;, "Lcom/google/common/cache/CacheLoader<TK;TV;>.UnsupportedLoadingOperationException;"
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    return-void
.end method
