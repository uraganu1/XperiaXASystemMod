.class public Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;
.super Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;
.source "CallLogDetailActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;


# static fields
.field private static DIALOG_PERCENTAGE_SIZE:F

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFragment:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

.field private mIsDualPane:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->TAG:Ljava/lang/String;

    .line 53
    const v0, 0x3ecccccd    # 0.4f

    sput v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->DIALOG_PERCENTAGE_SIZE:F

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;-><init>()V

    return-void
.end method

.method private configureContentViewForPhone()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 112
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 114
    const/16 v1, 0xc

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 117
    :cond_0
    const v1, 0x7f040014

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->setContentView(I)V

    .line 110
    return-void
.end method

.method private configureContentViewForTablet()V
    .locals 5

    .prologue
    .line 96
    const v1, 0x7f040014

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->setContentView(I)V

    .line 99
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 100
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 101
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-lt v1, v2, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sget v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->DIALOG_PERCENTAGE_SIZE:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 103
    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sget v4, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->DIALOG_PERCENTAGE_SIZE:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 102
    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 95
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sget v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->DIALOG_PERCENTAGE_SIZE:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 106
    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sget v4, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->DIALOG_PERCENTAGE_SIZE:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 105
    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method


# virtual methods
.method public onCallLogDetailsSetupFailed()V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->finish()V

    .line 152
    return-void
.end method

.method public onCallLogItemDeleted()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->finish()V

    .line 147
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0e0056

    .line 57
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->mIsDualPane:Z

    .line 62
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->mIsDualPane:Z

    if-eqz v2, :cond_2

    .line 63
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->configureContentViewForTablet()V

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 68
    const-string/jumbo v3, "callLogConferenceCallItem"

    const/4 v4, 0x0

    .line 67
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isConferenceCallEnabled()Z

    move-result v1

    .line 71
    :goto_1
    if-nez p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 73
    .local v0, "fragmentTransaction":Landroid/app/FragmentTransaction;
    if-eqz v1, :cond_4

    .line 75
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    invoke-direct {v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;-><init>()V

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->TAG:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 76
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 87
    .end local v0    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_0
    :goto_2
    if-nez v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 88
    check-cast v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->mFragment:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    .line 90
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->mFragment:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->setData(Landroid/content/Intent;)V

    .line 92
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 56
    return-void

    .line 65
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->configureContentViewForPhone()V

    goto :goto_0

    .line 67
    :cond_3
    const/4 v1, 0x0

    .local v1, "isConferenceCall":Z
    goto :goto_1

    .line 80
    .end local v1    # "isConferenceCall":Z
    .restart local v0    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_4
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-direct {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;-><init>()V

    .line 81
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 82
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->mFragment:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 123
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->phoneIsIdle(Landroid/content/Context;)Z

    move-result v0

    .line 122
    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 125
    const v1, 0x7f0901cd

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    const v2, 0x7f0901d9

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    .line 127
    const-wide/16 v4, 0x0

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->mFragment:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    .line 129
    const/4 v0, 0x1

    return v0

    .line 131
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 136
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 138
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;->finish()V

    .line 140
    const/4 v1, 0x1

    return v1

    .line 143
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
