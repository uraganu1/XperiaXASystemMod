.class Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$IceMedicalInfoListener;
.super Ljava/lang/Object;
.source "IceMedicalInfoFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IceMedicalInfoListener"
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
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$IceMedicalInfoListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$IceMedicalInfoListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$IceMedicalInfoListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;)V

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
    .line 191
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$IceMedicalInfoListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationLoader;-><init>(Landroid/content/Context;)V

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
    .line 196
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$IceMedicalInfoListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationLoader;->getMedicalInfoData(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;)V

    .line 195
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 195
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$IceMedicalInfoListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 200
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
