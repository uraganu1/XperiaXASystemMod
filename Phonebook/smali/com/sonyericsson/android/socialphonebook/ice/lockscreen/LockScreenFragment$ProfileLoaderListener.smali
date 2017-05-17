.class Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;
.super Ljava/lang/Object;
.source "LockScreenFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileLoaderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceProfileLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceProfileLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/ice/IceProfileLoader;->getContactInfo(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    move-result-object v0

    .line 297
    .local v0, "myself":Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->-wrap1(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)V

    .line 295
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;Z)Z

    .line 299
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->-wrap3(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;)V

    .line 300
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 301
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;

    move-result-object v3

    .line 300
    const/16 v4, 0x3ea

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 295
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
