.class public Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$IceLoaderListener;
.super Ljava/lang/Object;
.source "IceContactRemovalDialog.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IceLoaderListener"
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
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$IceLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 136
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$IceLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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
    .line 141
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsLoader;->getContactsInfo(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    .local v0, "iceContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;>;"
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$IceLoaderListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->updateContactView(Ljava/util/List;)V

    .line 140
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 140
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$IceLoaderListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 146
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
