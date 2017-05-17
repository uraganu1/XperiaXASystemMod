.class public Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;
.super Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;
.source "PhoneFloatingActionButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues:[I


# instance fields
.field private mCallButton:Landroid/view/View;

.field private mFloatingActionButtonAnimationCallback:Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;

.field private mIsDialpadShown:Z


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mCallButton:Landroid/view/View;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->-com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->-com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->values()[Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CALLLOG:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CONTACTS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->-com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sonymobile/fab/FloatingActionButton;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;Landroid/os/Bundle;Z)V
    .locals 2
    .param p1, "button"    # Lcom/sonymobile/fab/FloatingActionButton;
    .param p2, "tabState"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "isDialpadShown"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;-><init>(Lcom/sonymobile/fab/FloatingActionButton;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;Landroid/os/Bundle;)V

    .line 69
    iput-boolean p4, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mIsDialpadShown:Z

    .line 70
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;-><init>(Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mFloatingActionButtonAnimationCallback:Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->updateButtonAppearance()V

    .line 67
    return-void
.end method


# virtual methods
.method public onFloatingActionButtonClick(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 121
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->-getcom_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mCurrentTabState:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 128
    const-string/jumbo v1, "Invalid tab state when click on floating action button performed!"

    .line 127
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :pswitch_0
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->showDialpadFragment(Z)V

    .line 120
    return-void

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onShowDialpad(Landroid/app/Activity;Z)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dialpadShown"    # Z

    .prologue
    .line 93
    iput-boolean p2, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mIsDialpadShown:Z

    .line 95
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v0

    .line 97
    .local v0, "checker":Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;
    instance-of v1, p1, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 98
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->isVideoButtonShown()Z

    move-result v1

    .line 97
    if-eqz v1, :cond_0

    .line 99
    const v1, 0x7f0e0121

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mCallButton:Landroid/view/View;

    .line 107
    :goto_0
    if-eqz p2, :cond_2

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mFloatingActionButtonAnimationCallback:Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->scaleOut(Landroid/view/View;Lcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    .line 92
    :goto_1
    return-void

    .line 100
    :cond_0
    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->bothSimsAreEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->phoneIsIdle(Landroid/content/Context;)Z

    move-result v1

    .line 100
    if-eqz v1, :cond_1

    .line 102
    const v1, 0x7f0e0120

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mCallButton:Landroid/view/View;

    goto :goto_0

    .line 104
    :cond_1
    const v1, 0x7f0e011f

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mCallButton:Landroid/view/View;

    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mCallButton:Landroid/view/View;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mFloatingActionButtonAnimationCallback:Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController$FloatingActionButtonAnimationCallback;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->scaleOut(Landroid/view/View;Lcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    goto :goto_1
.end method

.method protected updateButtonAppearance()V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->-getcom_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mCurrentTabState:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    const-string/jumbo v1, "Invalid tab state used to update floating action button!"

    .line 87
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    const v1, 0x7f0e0081

    invoke-virtual {v0, v1}, Lcom/sonymobile/fab/FloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    const v1, 0x7f020032

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 79
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->mIsDialpadShown:Z

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->setVisibility(Z)V

    .line 74
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/common/fab/PhoneFloatingActionButtonController;->setVisibility(Z)V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
