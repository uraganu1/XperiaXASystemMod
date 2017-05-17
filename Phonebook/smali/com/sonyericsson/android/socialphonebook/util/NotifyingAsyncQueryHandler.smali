.class public Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NotifyingAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
    }
.end annotation


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler$AsyncQueryListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;->setQueryListener(Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 68
    .local v0, "listener":Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_1

    .line 69
    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler$AsyncQueryListener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    if-eqz p3, :cond_0

    .line 71
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public setQueryListener(Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .prologue
    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 60
    return-void
.end method
