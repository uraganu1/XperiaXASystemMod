.class Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;
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
    name = "LockScreenContactsListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)V

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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 320
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;->onLoadFinished(Landroid/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;>;>;"
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->setContacts(Ljava/util/ArrayList;)V

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)V

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;Z)Z

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 331
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;

    move-result-object v2

    .line 330
    const/16 v3, 0x3eb

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 321
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->-wrap1(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;>;>;"
    return-void
.end method
