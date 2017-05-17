.class Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceMedicalInfoListener;
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
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceMedicalInfoListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceMedicalInfoListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceMedicalInfoListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;)V

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
    .line 455
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceMedicalInfoListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

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
    .line 460
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationLoader;->getMedicalInfoData(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    move-result-object v0

    .line 461
    .local v0, "medicalInfo":Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceMedicalInfoListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->-get1(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;)Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->setMedicalInfo(Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;)V

    .line 462
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->isDataEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceMedicalInfoListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->-wrap1(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 459
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceMedicalInfoListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 468
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
