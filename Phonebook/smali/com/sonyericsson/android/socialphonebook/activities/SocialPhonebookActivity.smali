.class public Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;
.super Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;
.source "SocialPhonebookActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$OnFavoritesRearrangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContactQueryListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

.field private mContactQueryListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterText:Ljava/lang/String;

.field private mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mContactQueryListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)Lcom/android/contacts/list/ViewPagerTabs;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->-com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->-com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues:[I

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
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->-com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->TAG:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mContactQueryListeners:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mContactQueryListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    .line 54
    return-void
.end method


# virtual methods
.method protected addPhoneTabs()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CONTACTS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    const v2, 0x7f0903a1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->addTab(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;I)V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    const v2, 0x7f0903a2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->addTab(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;I)V

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    const v2, 0x7f0903a4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->addTab(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;I)V

    .line 104
    return-void
.end method

.method protected addTabletTabs()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CONTACTS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    const v2, 0x7f0903a1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->addTab(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;I)V

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    const v2, 0x7f0903a2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->addTab(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;I)V

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    const v2, 0x7f0903a4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->addTab(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;I)V

    .line 95
    return-void
.end method

.method public final getAndClearFilterText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mFilterText:Ljava/lang/String;

    .line 348
    .local v0, "filterText":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mFilterText:Ljava/lang/String;

    .line 349
    return-object v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 188
    instance-of v0, p1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mContactQueryListeners:Ljava/util/ArrayList;

    check-cast p1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    .end local p1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 144
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->startGawServiceIfNeeded(Landroid/content/Context;)V

    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;

    .line 149
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTab()Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v2

    .line 148
    invoke-direct {v0, v1, v2, p1}, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;-><init>(Lcom/sonymobile/fab/FloatingActionButton;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

    .line 150
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$2;-><init>(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)V

    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsFactory;->getInstance(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    .line 164
    if-nez p1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->connect()V

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->requestCapabilitiesRefresh([Ljava/lang/String;)V

    .line 136
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->disconnect()V

    .line 234
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    .line 236
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->onDestroy()V

    .line 227
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 264
    sparse-switch p1, :sswitch_data_0

    .line 298
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTab()Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CONTACTS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    if-eq v3, v4, :cond_5

    .line 314
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 266
    :sswitch_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTab()Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v1

    .line 267
    .local v1, "tabState":Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v3}, Lcom/sonymobile/fab/FloatingActionButton;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_2

    .line 268
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CONTACTS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 269
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 267
    if-eqz v3, :cond_2

    .line 270
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v3}, Lcom/sonymobile/fab/FloatingActionButton;->requestFocus()Z

    goto :goto_0

    .line 272
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->requestFocus()Z

    .line 273
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTabPosition()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/ViewPagerTabs;->getRtlPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 278
    .end local v1    # "tabState":Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    :sswitch_2
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTab()Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v1

    .line 279
    .restart local v1    # "tabState":Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 280
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v3}, Lcom/sonymobile/fab/FloatingActionButton;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_3

    .line 281
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTabPosition()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/ViewPagerTabs;->getRtlPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 284
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->requestFocus()Z

    goto :goto_0

    .line 286
    :cond_4
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->requestFocus()Z

    .line 288
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTabPosition()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/ViewPagerTabs;->getRtlPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 303
    .end local v1    # "tabState":Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 304
    .local v2, "unicodeChar":I
    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    new-instance v0, Ljava/lang/String;

    new-array v3, v5, [I

    aput v2, v3, v6

    invoke-direct {v0, v3, v6, v5}, Ljava/lang/String;-><init>([III)V

    .line 306
    .local v0, "query":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 307
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v3, v5, v0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->setSearchMode(ZLjava/lang/String;)V

    .line 308
    return v5

    .line 264
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->setSearchMode(Z)V

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->connect()V

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->requestCapabilitiesRefresh([Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 255
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 244
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->isUpShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->onBackPressed()V

    .line 258
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 251
    :sswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->onSearchRequested()Z

    goto :goto_0

    .line 241
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0e023e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->setListener(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;)V

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->pause()V

    .line 223
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->onPause()V

    .line 218
    return-void
.end method

.method public onRearrangeStarted()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->stopSwiping(Z)V

    .line 318
    return-void
.end method

.method public onRearrangeStopped()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->stopSwiping(Z)V

    .line 323
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->onResume()V

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mContactQueryListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->setListener(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;)V

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->resume()V

    .line 199
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->setSearchMode(Z)V

    .line 209
    return v1
.end method

.method public onSelectionModeEntered(Z)V
    .locals 4
    .param p1, "isSelectionMode"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->setSelectionMode(Z)V

    .line 355
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mToolbar:Landroid/widget/Toolbar;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ViewPagerTabs;->setVisibility(I)V

    .line 352
    return-void

    :cond_0
    move v0, v2

    .line 355
    goto :goto_0

    :cond_1
    move v1, v2

    .line 356
    goto :goto_1
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->onStart()V

    .line 213
    return-void
.end method

.method protected phoneTabStateToFragmentClass(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)Ljava/lang/Class;
    .locals 2
    .param p1, "tabState"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->-getcom_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$TabStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 116
    :pswitch_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mIsDualPane:Z

    if-eqz v0, :cond_0

    .line 117
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;

    return-object v0

    .line 119
    :cond_0
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFragment;

    return-object v0

    .line 122
    :pswitch_1
    const-class v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    return-object v0

    .line 124
    :pswitch_2
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mIsDualPane:Z

    if-eqz v0, :cond_1

    .line 125
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;

    return-object v0

    .line 127
    :cond_1
    const-class v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    return-object v0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setLayout()V
    .locals 1

    .prologue
    .line 195
    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->setContentView(I)V

    .line 194
    return-void
.end method

.method public stopSwiping(Z)V
    .locals 2
    .param p1, "stopped"    # Z

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    if-eqz v0, :cond_0

    .line 335
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->setEnabled(Z)V

    .line 333
    :cond_0
    return-void

    .line 335
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
