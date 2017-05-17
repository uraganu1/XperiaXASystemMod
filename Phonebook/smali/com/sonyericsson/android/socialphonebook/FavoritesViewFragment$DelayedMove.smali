.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$DelayedMove;
.super Ljava/lang/Object;
.source "FavoritesViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelayedMove"
.end annotation


# instance fields
.field mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;)V
    .locals 1
    .param p1, "myTransferTarget"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;

    .prologue
    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$DelayedMove;->mTarget:Ljava/lang/ref/WeakReference;

    .line 786
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 792
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$DelayedMove;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;

    .line 794
    .local v0, "target":Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;
    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->onDelayedMove()V

    .line 791
    :cond_0
    return-void
.end method
