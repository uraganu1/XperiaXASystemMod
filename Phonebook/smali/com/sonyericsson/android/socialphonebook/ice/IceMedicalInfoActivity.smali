.class public Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "IceMedicalInfoActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$Listener;


# instance fields
.field mMedicalInfoFragment:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;->mMedicalInfoFragment:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->onDiscard()V

    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 27
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 30
    return-void

    .line 32
    :cond_0
    const v5, 0x7f0400a0

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 35
    const v6, 0x7f0e019c

    .line 34
    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;->mMedicalInfoFragment:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;

    .line 36
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 37
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 41
    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 43
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isActionBarWithCancelTextEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 45
    const v5, 0x7f040073

    .line 44
    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 50
    .local v2, "customActionBarView":Landroid/view/View;
    :goto_0
    const v5, 0x7f0e01c6

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 51
    .local v4, "saveMenuItem":Landroid/view/View;
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity$1;

    invoke-direct {v5, p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v5, 0x7f0e0141

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "cancelMenuItem":Landroid/view/View;
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity$2;

    invoke-direct {v5, p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity$2;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const/16 v5, 0x10

    .line 70
    const/16 v6, 0x18

    .line 69
    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 71
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 26
    .end local v1    # "cancelMenuItem":Landroid/view/View;
    .end local v2    # "customActionBarView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "saveMenuItem":Landroid/view/View;
    :cond_1
    return-void

    .line 47
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    const v5, 0x7f040072

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "customActionBarView":Landroid/view/View;
    goto :goto_0
.end method

.method public onDiscard()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;->finish()V

    .line 81
    return-void
.end method
