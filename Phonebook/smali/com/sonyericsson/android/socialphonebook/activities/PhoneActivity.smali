.class public Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "PhoneActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$OnPrefixInsertedListener;
.implements Lcom/sonyericsson/android/socialphonebook/DialpadFragment$DialpadContainer;
.implements Lcom/sonyericsson/android/socialphonebook/DialpadFragment$OnCallFinishedListener;
.implements Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppController;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$1;
    }
.end annotation


# static fields
.field private static final KEY_INTENT_RESOLVED:Ljava/lang/String; = "isIntentResolved"

.field private static final KEY_IS_DIALPAD_ADDED_TO_FRAGMENT_MANAGER:Ljava/lang/String; = "isDialpadAdded"

.field private static final KEY_IS_DIALPAD_SHOWN:Ljava/lang/String; = "isDialpadShown"

.field private static final REQUEST_CODE_SEARCH_PICK_CONTACT:I = 0x3e9

.field public static final TAG_DIALPAD_FRAGMENT:Ljava/lang/String; = "dialpad"


# instance fields
.field private final ANIM_DELAYED_TIME:I

.field private mAnimDelayedRunnable:Ljava/lang/Runnable;

.field private mAnimHandler:Landroid/os/Handler;

.field private mCallLogFragment:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

.field private mChameleonDataManager:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;

.field private mDialpadFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

.field private mEnterAnimationCompleted:Z

.field private mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

.field private mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

.field private mIntentResolved:Z

.field private final mIntentResolver:Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;

.field private mIsDialpadAddedToFragmentManger:Z

.field private mIsDialpadShown:Z

.field private mIsFromOtherApp:Z

.field private mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

.field private final mNewIntentListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field private mOnUserLeaveAppListener:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;

.field private mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

.field private mShouldShowDialPadOnResume:Z

.field private mToolbar:Landroid/widget/Toolbar;

.field private mToolbarContainer:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;)Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mEnterAnimationCompleted:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mNewIntentListeners:Ljava/util/Collection;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsDialpadAddedToFragmentManger:Z

    .line 116
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIntentResolver:Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;

    .line 126
    const/16 v0, 0x320

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->ANIM_DELAYED_TIME:I

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mAnimHandler:Landroid/os/Handler;

    .line 602
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mObserver:Landroid/database/ContentObserver;

    .line 62
    return-void
.end method

.method private hideDialpadFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 490
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mDialpadFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    if-nez v1, :cond_0

    .line 492
    const-string/jumbo v1, "dialpad"

    const-string/jumbo v2, "mDialpadFragment: null"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 494
    return-void

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mDialpadFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->clearDialpad()V

    .line 497
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsDialpadShown:Z

    if-nez v1, :cond_1

    .line 498
    const-string/jumbo v1, "dialpad"

    const-string/jumbo v2, "mIsDialPadShown: false"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 500
    return-void

    .line 503
    :cond_1
    invoke-interface {p0}, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;->isSafeToCommitTransactions()Z

    move-result v1

    if-nez v1, :cond_2

    .line 504
    const-string/jumbo v1, "dialpad"

    const-string/jumbo v2, "isSafeToCommitTransactions: false"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 506
    return-void

    .line 509
    :cond_2
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsDialpadShown:Z

    .line 511
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 512
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mDialpadFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 513
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 518
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->updateActionBar()V

    .line 520
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;

    invoke-virtual {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->onShowDialpad(Landroid/app/Activity;Z)V

    .line 523
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mCallLogFragment:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->setMenuVisibility(Z)V

    .line 524
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mCallLogFragment:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->setUserVisibleHint(Z)V

    .line 526
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mShouldShowDialPadOnResume:Z

    .line 527
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->setToolbarVisibility(I)V

    .line 528
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method private setToolbarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 542
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mToolbarContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method private showCallScreenIfNeed(Z)V
    .locals 2
    .param p1, "isRecreated"    # Z

    .prologue
    .line 378
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->isDialerIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 378
    if-eqz v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$5;-><init>(Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 376
    :cond_0
    return-void
.end method

.method private updateActionBar()V
    .locals 3

    .prologue
    .line 532
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 534
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 535
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 536
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 538
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method private updateDialpadVisibility()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 256
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;->isDialIntent(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIntentResolved:Z

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIntentResolved:Z

    .line 281
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 255
    return-void

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "internal_intent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 267
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "internal_intent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 266
    if-eqz v0, :cond_4

    .line 268
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mShouldShowDialPadOnResume:Z

    .line 269
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsFromOtherApp:Z

    goto :goto_0

    .line 264
    :cond_3
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mShouldShowDialPadOnResume:Z

    .line 265
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsFromOtherApp:Z

    goto :goto_0

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mDialpadFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mDialpadFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getEditText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 270
    if-eqz v0, :cond_0

    .line 276
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mShouldShowDialPadOnResume:Z

    .line 277
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsFromOtherApp:Z

    goto :goto_0
.end method


# virtual methods
.method public getChameleonDataManager()Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mChameleonDataManager:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;

    return-object v0
.end method

.method public getMenuPlugin()Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 549
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    return-object v0
.end method

.method public isDialpadShown()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsDialpadShown:Z

    return v0
.end method

.method public isVideoButtonShown()Z
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mDialpadFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->isVideoButtonShown()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 356
    const-string/jumbo v2, "dialpad"

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 357
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_1

    .line 358
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 359
    const-string/jumbo v2, "extra_phonenumber"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 361
    const/4 v3, 0x1

    .line 360
    invoke-static {v2, v1, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 362
    .local v0, "callIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 367
    .end local v0    # "callIntent":Landroid/content/Intent;
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v2, "dialpad"

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 355
    return-void

    .line 365
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 216
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 217
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 219
    instance-of v1, p1, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 220
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mDialpadFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    .line 221
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mDialpadFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->setOnCallFinishedListener(Lcom/sonyericsson/android/socialphonebook/DialpadFragment$OnCallFinishedListener;)V

    .line 222
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mShouldShowDialPadOnResume:Z

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 224
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mDialpadFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 225
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 231
    .end local v0    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    instance-of v1, p1, Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mNewIntentListeners:Ljava/util/Collection;

    check-cast p1, Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;

    .end local p1    # "fragment":Landroid/app/Fragment;
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_1
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 215
    return-void

    .line 227
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_2
    instance-of v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 228
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mCallLogFragment:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 408
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 409
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mEnterAnimationCompleted:Z

    if-nez v0, :cond_0

    .line 411
    return-void

    .line 413
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsFromOtherApp:Z

    if-nez v0, :cond_3

    .line 414
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsDialpadShown:Z

    if-eqz v0, :cond_1

    .line 415
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->hideDialpadFragment()V

    .line 426
    :goto_0
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 407
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mOnUserLeaveAppListener:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mOnUserLeaveAppListener:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;->onBackButtonPressed()V

    .line 421
    :cond_2
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0

    .line 424
    :cond_3
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCallFinished()V
    .locals 1

    .prologue
    .line 578
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->onBackPressed()V

    .line 580
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 402
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    invoke-interface {v1, p1}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 403
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 142
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 143
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 146
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mObserver:Landroid/database/ContentObserver;

    .line 145
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 148
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 150
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIntentResolver:Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 158
    const v1, 0x7f0400b3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->setContentView(I)V

    .line 160
    const v1, 0x7f0e00cc

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mToolbar:Landroid/widget/Toolbar;

    .line 161
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->updateActionBar()V

    .line 163
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsRecreatedInstance:Z

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->showCallScreenIfNeed(Z)V

    .line 167
    if-eqz p1, :cond_1

    .line 168
    const-string/jumbo v1, "isDialpadShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mShouldShowDialPadOnResume:Z

    .line 169
    const-string/jumbo v1, "isIntentResolved"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIntentResolved:Z

    .line 171
    const-string/jumbo v1, "isDialpadAdded"

    .line 170
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsDialpadAddedToFragmentManger:Z

    .line 175
    :cond_1
    const v1, 0x7f0e00ca

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/fab/FloatingActionButton;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    .line 177
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    .line 178
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CALLLOG:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .line 179
    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mShouldShowDialPadOnResume:Z

    .line 177
    invoke-direct {v1, v2, v3, p1, v4}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;-><init>(Lcom/sonymobile/fab/FloatingActionButton;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;Landroid/os/Bundle;Z)V

    .line 176
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

    .line 181
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;->CALL_LOG:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory;->newInstance(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;)Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    .line 183
    const v1, 0x7f0e00c8

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mToolbarContainer:Landroid/view/View;

    .line 184
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mToolbarContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/ThemeUtils;->getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 185
    const v1, 0x7f0e01d0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/ThemeUtils;->getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 185
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mChameleonDataManager:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    .line 190
    .local v0, "configuration":Lcom/sonyericsson/android/socialphonebook/Configuration;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isChameleonSpeedDialEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mChameleonDataManager:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;

    .line 191
    const/16 v3, 0x66

    invoke-virtual {v1, v3, v5, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Loader;->startLoading()V

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 196
    const v3, 0x7f0901be

    .line 195
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/fab/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 198
    const v1, 0x7f0e0077

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$2;-><init>(Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 394
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 395
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 397
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 440
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->resetMode()V

    .line 441
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 438
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .prologue
    .line 286
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onEnterAnimationComplete()V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mEnterAnimationCompleted:Z

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mAnimDelayedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mAnimDelayedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 285
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 239
    const-string/jumbo v2, "dialpad"

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 240
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 241
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->setIntent(Landroid/content/Intent;)V

    .line 244
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIntentResolver:Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    .line 246
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mNewIntentListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;

    .line 247
    .local v0, "listener":Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;
    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;->onNewIntent()V

    goto :goto_0

    .line 250
    .end local v0    # "listener":Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;
    :cond_0
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIntentResolved:Z

    .line 251
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->showCallScreenIfNeed(Z)V

    .line 252
    const-string/jumbo v2, "dialpad"

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 337
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 340
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public onPrefixInserted(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNumberWithPrefix"    # Ljava/lang/String;

    .prologue
    .line 554
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 555
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DIAL"

    .line 556
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 555
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 557
    const-string/jumbo v2, "internal_intent"

    const/4 v3, 0x1

    .line 555
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 558
    .local v0, "phoneNumberWithPrefixIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 559
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 295
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 296
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 297
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->updateDialpadVisibility()V

    .line 298
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mShouldShowDialPadOnResume:Z

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->showDialpadFragment(Z)V

    .line 303
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CALLLOG:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->onResume(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$3;-><init>(Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mEnterAnimationCompleted:Z

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mAnimDelayedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mAnimDelayedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mAnimDelayedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 332
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 294
    return-void

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->hideDialpadFragment()V

    goto :goto_0

    .line 324
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$4;-><init>(Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mAnimDelayedRunnable:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 345
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 346
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 347
    const-string/jumbo v0, "isDialpadShown"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsDialpadShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 348
    const-string/jumbo v0, "isIntentResolved"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIntentResolved:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 349
    const-string/jumbo v0, "isDialpadAdded"

    .line 350
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsDialpadAddedToFragmentManger:Z

    .line 349
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 351
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 134
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 135
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;->bind(Landroid/app/Activity;)Z

    .line 137
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 431
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;->unbind()V

    .line 433
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStop()V

    .line 434
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 594
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mOnUserLeaveAppListener:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mOnUserLeaveAppListener:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;->onUserLeaveAppHint()V

    .line 598
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onUserLeaveHint()V

    .line 599
    const-string/jumbo v0, "dialpad"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method public setChameleonDataManager(Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;)V
    .locals 0
    .param p1, "chameleonDataManager"    # Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 568
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mChameleonDataManager:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;

    .line 567
    return-void
.end method

.method public setOnUserLeaveAppObserver(Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mOnUserLeaveAppListener:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;

    .line 588
    return-void
.end method

.method public showDialpadFragment(Z)V
    .locals 7
    .param p1, "shouldAnimate"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 445
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 446
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsDialpadShown:Z

    if-eqz v1, :cond_0

    .line 447
    const-string/jumbo v1, "dialpad"

    const-string/jumbo v2, "mIsDialPadShown: true"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 449
    return-void

    .line 452
    :cond_0
    invoke-interface {p0}, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;->isSafeToCommitTransactions()Z

    move-result v1

    if-nez v1, :cond_1

    .line 453
    const-string/jumbo v1, "dialpad"

    const-string/jumbo v2, "isSafeToCommitTransactions(): false"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 455
    return-void

    .line 458
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsDialpadAddedToFragmentManger:Z

    if-nez v1, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 460
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-direct {v2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;-><init>()V

    const-string/jumbo v3, "dialpad"

    .line 459
    const v4, 0x7f0e01cd

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 461
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 462
    iput-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsDialpadAddedToFragmentManger:Z

    .line 465
    :cond_2
    iput-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mIsDialpadShown:Z

    .line 467
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 468
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mDialpadFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 469
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 471
    if-eqz p1, :cond_3

    .line 472
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;

    invoke-virtual {v1, p0, v5}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->onShowDialpad(Landroid/app/Activity;Z)V

    .line 481
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mCallLogFragment:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-virtual {v1, v6}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->setMenuVisibility(Z)V

    .line 482
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mCallLogFragment:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-virtual {v1, v6}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->setUserVisibleHint(Z)V

    .line 484
    iput-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mShouldShowDialPadOnResume:Z

    .line 485
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->setToolbarVisibility(I)V

    .line 486
    const-string/jumbo v1, "dialpad"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 444
    return-void

    .line 478
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->mDialpadFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v1, v5}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->setCallButtonVisible(Z)V

    goto :goto_0
.end method
