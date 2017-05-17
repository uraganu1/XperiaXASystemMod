.class Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment$SdnQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SdnContactsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SdnQueryHandler"
.end annotation


# instance fields
.field mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 195
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment$SdnQueryHandler;->mFragment:Ljava/lang/ref/WeakReference;

    .line 193
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 200
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 201
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment$SdnQueryHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    .line 203
    .local v0, "fragment":Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;
    if-eqz v0, :cond_1

    .line 204
    invoke-static {v0, p3}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->-wrap1(Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;Landroid/database/Cursor;)V

    .line 205
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;Z)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    if-eqz p3, :cond_0

    .line 207
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
