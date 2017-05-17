.class public Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;
.super Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;
.source "LockScreenActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$Listener;


# static fields
.field private static final REQUEST_CODE_CALL:I = 0x3e8


# instance fields
.field private mIsCallIntentSent:Z


# direct methods
.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;->mIsCallIntentSent:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 113
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;->mIsCallIntentSent:Z

    .line 110
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->onAttachedToWindow()V

    .line 106
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 104
    return-void
.end method

.method public onCallPhoneNumber(Ljava/lang/String;)V
    .locals 14
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 46
    const/4 v13, -0x1

    .line 47
    .local v13, "subscription":I
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v9

    .line 48
    .local v9, "checker":Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;
    invoke-interface {v9}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v9}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->bothSimsAreEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    invoke-interface {v9}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->getOnlyEnabledSim()I

    move-result v13

    .line 55
    :goto_0
    const/4 v0, -0x1

    if-ne v13, v0, :cond_0

    .line 56
    const/4 v13, 0x0

    .line 60
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;->mIsCallIntentSent:Z

    if-nez v0, :cond_1

    .line 61
    invoke-static {p0, p1, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    .line 63
    .local v8, "callIntent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    const-string/jumbo v1, "japanDialingIntent"

    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    .line 65
    .local v11, "japanDialingIntent":Landroid/content/Intent;
    if-eqz v11, :cond_3

    .line 67
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;

    invoke-direct {v6, p0, v11}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 68
    .local v6, "adapter":Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;
    new-instance v12, Landroid/widget/ListView;

    invoke-direct {v12, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v12, "listView":Landroid/widget/ListView;
    invoke-virtual {v12, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    invoke-virtual {v12, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 71
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f09038d

    .line 72
    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 75
    .local v10, "dialog":Landroid/app/AlertDialog;
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity$1;

    invoke-direct {v0, p0, v10, v6, v11}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;Landroid/app/AlertDialog;Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;Landroid/content/Intent;)V

    invoke-virtual {v12, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 45
    .end local v6    # "adapter":Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;
    .end local v7    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v8    # "callIntent":Landroid/content/Intent;
    .end local v10    # "dialog":Landroid/app/AlertDialog;
    .end local v11    # "japanDialingIntent":Landroid/content/Intent;
    .end local v12    # "listView":Landroid/widget/ListView;
    :cond_1
    :goto_1
    return-void

    .line 52
    :cond_2
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getIceCallSubscription(Landroid/content/Context;)I

    move-result v13

    goto :goto_0

    .line 92
    .restart local v8    # "callIntent":Landroid/content/Intent;
    .restart local v11    # "japanDialingIntent":Landroid/content/Intent;
    :cond_3
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;->mIsCallIntentSent:Z

    .line 93
    const-string/jumbo v0, "subscription"

    invoke-virtual {v8, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 95
    const v1, 0x7f0901cd

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    const v2, 0x7f0901db

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string/jumbo v3, ""

    const-wide/16 v4, 0x0

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 98
    const/16 v0, 0x3e8

    invoke-virtual {p0, v8, v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;->mIsCallIntentSent:Z

    .line 41
    const v0, 0x7f04009a

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;->setContentView(I)V

    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->onResume()V

    .line 121
    invoke-static {p0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    .line 119
    return-void
.end method
