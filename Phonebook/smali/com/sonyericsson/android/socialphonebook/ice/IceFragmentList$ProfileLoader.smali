.class Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;
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
    name = "ProfileLoader"
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
    .line 473
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;)V

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
    .line 477
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceProfileLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceProfileLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 7
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
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v6, 0x0

    .line 482
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/ice/IceProfileLoader;->getContactInfo(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    move-result-object v2

    .line 483
    .local v2, "myselfInfo":Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;
    const/4 v1, 0x0

    .line 484
    .local v1, "isMyselfContactNameSet":Z
    if-eqz v2, :cond_0

    .line 485
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    .line 486
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->-get2(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;)Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->bind(Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;)V

    .line 487
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->-get1(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;)Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->setHasContactName(Z)V

    .line 490
    :cond_0
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 493
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 495
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getShouldShowEnableIceToast(Landroid/content/Context;)Z

    move-result v3

    .line 498
    .local v3, "shouldShowEnableIceToast":Z
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 499
    const v4, 0x7f09034d

    .line 500
    const/4 v5, 0x1

    .line 499
    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 501
    invoke-static {v0, v6}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->setShouldShowEnableIceToast(Landroid/content/Context;Z)V

    .line 481
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v3    # "shouldShowEnableIceToast":Z
    :cond_1
    :goto_1
    return-void

    .line 485
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 491
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;

    invoke-static {v4, v6}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->-wrap0(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;Z)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 481
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 507
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
