.class public Lcom/sonyericsson/android/socialphonebook/ice/IceContactsViewActivity;
.super Lcom/android/contacts/activities/TransactionSafeActivity;
.source "IceContactsViewActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactSelected(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 39
    .local v0, "detailViewIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v2, 0x7f040095

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsViewActivity;->setContentView(I)V

    .line 27
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getIceInfoEneteredFirstTime(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 29
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->setIceInfoEneteredFirstTime(Landroid/content/Context;Z)V

    .line 30
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->ABOUT_ICE:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->newInstance(Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;)Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;

    move-result-object v0

    .line 31
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 23
    .end local v0    # "dialog":Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;
    .end local v1    # "fragmentManager":Landroid/app/FragmentManager;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onResume()V

    .line 46
    invoke-static {p0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    .line 44
    return-void
.end method
