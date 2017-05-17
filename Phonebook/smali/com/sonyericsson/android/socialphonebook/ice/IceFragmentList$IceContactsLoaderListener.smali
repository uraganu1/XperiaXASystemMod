.class Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;
.super Ljava/lang/Object;
.source "IceFragmentList.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IceContactsLoaderListener"
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
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;)V

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
    .line 516
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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
    .line 521
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsLoader;->getContactsInfo(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    .line 522
    .local v0, "iceContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;>;"
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->-set0(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;I)I

    .line 523
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->-get0(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;)I

    move-result v1

    if-lez v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->-wrap1(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;)V

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->-wrap2(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;Ljava/util/List;)V

    .line 520
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 520
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 530
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
