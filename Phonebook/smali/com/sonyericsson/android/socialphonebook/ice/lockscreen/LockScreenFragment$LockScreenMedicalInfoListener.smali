.class Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;
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
    name = "LockScreenMedicalInfoListener"
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
    .line 267
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)V

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
    .line 271
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getActivity()Landroid/app/Activity;

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
    .line 276
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationLoader;->getMedicalInfoData(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    move-result-object v0

    .line 277
    .local v0, "medicalInfo":Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->updateMedicalInfo(Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;)V

    .line 278
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->-wrap2(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)V

    .line 275
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 275
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 282
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
