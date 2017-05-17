.class public Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;
.super Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;
.source "ContactsFloatingActionButtonController.java"


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues:[I


# instance fields
.field private mShouldHideFabOnResume:Z


# direct methods
.method private static synthetic -getcom_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->-com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->-com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues:[I

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

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CONTACTS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->-com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues:[I

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

.method public constructor <init>(Lcom/sonymobile/fab/FloatingActionButton;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "button"    # Lcom/sonymobile/fab/FloatingActionButton;
    .param p2, "tabState"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;-><init>(Lcom/sonymobile/fab/FloatingActionButton;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;Landroid/os/Bundle;)V

    .line 36
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mIsFabVisible:Z

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mShouldHideFabOnResume:Z

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonymobile/fab/FloatingActionButton;->setVisibility(I)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public onFloatingActionButtonClick(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 99
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->-getcom_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mCurrentTabState:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 122
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 123
    const-string/jumbo v2, "Invalid tab state when click on floating action button performed!"

    .line 122
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.INSERT"

    .line 102
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 101
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    const/4 v2, 0x4

    .line 101
    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 98
    :goto_0
    return-void

    .line 106
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "disable_sim_account"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    const-string/jumbo v1, "isPickMultiContactsWithoutProfile"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    const-string/jumbo v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string/jumbo v1, "extraSkipFavorites"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v1, p1

    .line 111
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->getSelectedTabFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 113
    const/16 v2, 0x2b

    .line 111
    invoke-virtual {p1, v1, v0, v2}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_0

    .line 117
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    .line 118
    const-class v2, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    .line 117
    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V
    .locals 1
    .param p1, "tabState"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mCurrentTabState:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .line 50
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mShouldHideFabOnResume:Z

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->updateButtonAppearance()V

    .line 48
    :cond_0
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 1
    .param p1, "isSearchMode"    # Z

    .prologue
    .line 128
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->setVisibility(Z)V

    .line 129
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mShouldHideFabOnResume:Z

    .line 130
    if-nez p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->updateButtonAppearance()V

    .line 127
    :cond_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSelectionMode(Z)V
    .locals 1
    .param p1, "isSelectionMode"    # Z

    .prologue
    .line 136
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->setVisibility(Z)V

    .line 137
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mShouldHideFabOnResume:Z

    .line 138
    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->updateButtonAppearance()V

    .line 135
    :cond_0
    return-void

    .line 136
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateButtonAppearance()V
    .locals 4

    .prologue
    const v3, 0x7f0e0081

    const/4 v2, 0x1

    .line 57
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->-getcom_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mCurrentTabState:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 87
    const-string/jumbo v1, "Invalid tab state used to update floating action button!"

    .line 86
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->setVisibility(Z)V

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v0, v3}, Lcom/sonymobile/fab/FloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    const v1, 0x7f020027

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/sonymobile/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 64
    const v2, 0x7f0901c0

    .line 63
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/sonymobile/fab/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 56
    :goto_0
    return-void

    .line 68
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->setVisibility(Z)V

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v0, v3}, Lcom/sonymobile/fab/FloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 70
    const v1, 0x7f02002a

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    .line 72
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/sonymobile/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 73
    const v2, 0x7f0901c1

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/sonymobile/fab/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->setVisibility(Z)V

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v0, v3}, Lcom/sonymobile/fab/FloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    const v1, 0x7f02002b

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    .line 81
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/sonymobile/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 82
    const v2, 0x7f090265

    .line 81
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/sonymobile/fab/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
