.class public Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "WeakAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;,
        Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$WeakWorkerHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WeakTarget:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/content/AsyncQueryHandler;"
    }
.end annotation


# static fields
.field private static final EVENT_QUERY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WeakAsyncQueryHandler"


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TWeakTarget;>;"
        }
    .end annotation
.end field

.field mCanceled:Z

.field mLastToken:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;, "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler<TWeakTarget;>;"
    .local p1, "aActivity":Landroid/app/Activity;, "TWeakTarget;"
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;->mLastToken:I

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 79
    return-void
.end method


# virtual methods
.method public cancelLastQuery()V
    .locals 2

    .prologue
    .line 39
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;, "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler<TWeakTarget;>;"
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;->mLastToken:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 40
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;->mLastToken:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;->cancelOperation(I)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;->mCanceled:Z

    .line 38
    :cond_0
    return-void
.end method

.method protected final createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "aLooper"    # Landroid/os/Looper;

    .prologue
    .line 202
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;, "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler<TWeakTarget;>;"
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$WeakWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$WeakWorkerHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onPostQuery(Landroid/app/Activity;ILjava/lang/Object;Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;
    .locals 1
    .param p2, "aToken"    # I
    .param p3, "aCookie"    # Ljava/lang/Object;
    .param p4, "aCursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;I",
            "Ljava/lang/Object;",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;, "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler<TWeakTarget;>;"
    .local p1, "aActivity":Landroid/app/Activity;, "TWeakTarget;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "aToken"    # I
    .param p2, "aCookie"    # Ljava/lang/Object;
    .param p3, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 215
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;, "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler<TWeakTarget;>;"
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;->mLastToken:I

    .line 216
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 217
    .local v0, "activity":Landroid/app/Activity;, "TWeakTarget;"
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;->mCanceled:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    :cond_0
    if-eqz p3, :cond_1

    .line 220
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;->onQueryComplete(Landroid/app/Activity;ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected onQueryComplete(Landroid/app/Activity;ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "aToken"    # I
    .param p3, "aCookie"    # Ljava/lang/Object;
    .param p4, "aCursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;I",
            "Ljava/lang/Object;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;, "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler<TWeakTarget;>;"
    .local p1, "aActivity":Landroid/app/Activity;, "TWeakTarget;"
    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 49
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;, "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler<TWeakTarget;>;"
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;->mLastToken:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;->mCanceled:Z

    .line 51
    invoke-super/range {p0 .. p7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
