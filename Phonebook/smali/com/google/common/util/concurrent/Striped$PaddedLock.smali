.class Lcom/google/common/util/concurrent/Striped$PaddedLock;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaddedLock"
.end annotation


# instance fields
.field q1:J

.field q2:J

.field q3:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 474
    .local p0, "this":Lcom/google/common/util/concurrent/Striped$PaddedLock;, "Lcom/google/common/util/concurrent/Striped<TL;>.PaddedLock;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 473
    return-void
.end method
