.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "ContactPickMainActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowserActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$1;,
        Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$2;
    }
.end annotation


# static fields
.field private static final ALL_TAG:Ljava/lang/String; = "tab-all-contacts"

.field private static final CALL_LOG_TAG:Ljava/lang/String; = "tab-call-log"

.field public static final EXTRAS_CONTACT_PICK_FOCUS_SEARCH:Ljava/lang/String; = "focus_search_field"

.field private static final FAVORITE_TAG:Ljava/lang/String; = "tab-favorite-contacts"

.field private static final GROUPS_TAG:Ljava/lang/String; = "tab-groups-contacts"

.field private static final KEY_TAB_INDEX:Ljava/lang/String; = "tab-index"

.field private static final LOADER_MEMBERS:I = 0x1

.field private static final LOADER_METADATA:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountNameString:Ljava/lang/String;

.field private mAccountTypeString:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

.field private mCallLogFragment:Landroid/app/Fragment;

.field private mCurrentFragment:Landroid/app/Fragment;

.field private mFavoriteFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

.field private mGroupFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

.field private mGroupId:J

.field private mGroupMemberIdList:[J

.field private final mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupUri:Landroid/net/Uri;

.field private mHasTab:Z

.field private mInitialized:Z

.field private mIsCallLogEnabled:Z

.field private mSavedTabIndex:I

.field private mSelectedTab:Landroid/widget/TextView;

.field private mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

.field private mTabWidgetBottom:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupId:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mSelectedTab:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)Lcom/android/contacts/list/ViewPagerTabStrip;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAccountNameString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAccountTypeString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupId:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;ILjava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->selectTab(ILjava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->startGroupMembersLoader()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->startPicker()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->updateMemberList(Landroid/database/Cursor;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mTabWidgetBottom:I

    .line 74
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .line 75
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mFavoriteFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .line 77
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCallLogFragment:Landroid/app/Fragment;

    .line 78
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    .line 81
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mIsCallLogEnabled:Z

    .line 82
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mSavedTabIndex:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mHasTab:Z

    .line 401
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 437
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$2;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 52
    return-void
.end method

.method private addTab(IILjava/lang/String;)V
    .locals 6
    .param p1, "titleRes"    # I
    .param p2, "position"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 522
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 523
    const v2, 0x7f040040

    const/4 v3, 0x0

    .line 522
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 524
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 525
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 526
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$3;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$3;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;ILjava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/list/ViewPagerTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mSavedTabIndex:I

    if-gez v1, :cond_1

    .line 540
    if-nez p2, :cond_0

    .line 541
    invoke-direct {p0, p2, p3, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->selectTab(ILjava/lang/String;Landroid/widget/TextView;)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mSavedTabIndex:I

    if-ne p2, v1, :cond_0

    .line 544
    invoke-direct {p0, p2, p3, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->selectTab(ILjava/lang/String;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private calculateTabWidgetBottom()V
    .locals 3

    .prologue
    .line 330
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 331
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 332
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    .line 333
    .local v1, "widgetHeight":I
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mTabWidgetBottom:I

    .line 329
    return-void
.end method

.method private selectTab(ILjava/lang/String;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 549
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mSelectedTab:Landroid/widget/TextView;

    .line 550
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mSavedTabIndex:I

    .line 551
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 552
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->updateFragmentsVisibility(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method private startGroupMembersLoader()V
    .locals 4

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 431
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 429
    return-void
.end method

.method private startGroupMetadataLoader(Landroid/net/Uri;)V
    .locals 4
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupUri:Landroid/net/Uri;

    .line 395
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 393
    return-void
.end method

.method private startPicker()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 472
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupMemberIdList:[J

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupMemberIdList:[J

    array-length v5, v5

    if-nez v5, :cond_1

    .line 473
    :cond_0
    return-void

    .line 475
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "group_account_type"

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAccountTypeString:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string/jumbo v5, "group_account_name"

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAccountNameString:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string/jumbo v5, "has_tab"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 479
    const-string/jumbo v5, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 480
    const-string/jumbo v7, "android.intent.extra.ALLOW_MULTIPLE"

    .line 479
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 482
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "extraNumbersForFiltering"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, "numbers":[Ljava/lang/String;
    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    .line 484
    const-string/jumbo v5, "extraNumbersForFiltering"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupMemberIdList:[J

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupMemberIdList:[J

    array-length v5, v5

    if-lez v5, :cond_3

    .line 488
    const-string/jumbo v5, "group_member_ids"

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupMemberIdList:[J

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 491
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string/jumbo v5, "android.intent.action.PICK"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 495
    const-string/jumbo v5, "com.sonyericsson.android.socialphonebook.action.PICK"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 494
    if-nez v5, :cond_4

    .line 496
    const-string/jumbo v5, "com.sonyericsson.android.socialphonebook.PICK"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 494
    if-eqz v5, :cond_6

    .line 497
    :cond_4
    const-string/jumbo v5, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 494
    if-eqz v5, :cond_6

    .line 498
    const-string/jumbo v5, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    :cond_5
    :goto_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_1
    return-void

    .line 499
    :cond_6
    const-string/jumbo v5, "com.sonyericsson.android.socialphonebook.action.PICK_CONVERSATIONS_TARGET"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 500
    const-string/jumbo v5, "com.sonyericsson.contacts.PICK_CONVERSATIONS_TARGET"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 499
    if-eqz v5, :cond_5

    .line 501
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "com.sonyericsson.android.socialphonebook.intent.extra.MAX_RECIPIENT"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 502
    .local v3, "maxMmsRecipientNum":I
    if-nez v3, :cond_8

    .line 503
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "max_recipient"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 505
    :cond_8
    const-string/jumbo v5, "com.sonyericsson.android.socialphonebook.intent.extra.MAX_RECIPIENT"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 510
    .end local v3    # "maxMmsRecipientNum":I
    :catch_0
    move-exception v1

    .line 511
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Cannot found Acitivity to handle intent!"

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateFragmentsVisibility(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 226
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 227
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const/high16 v2, 0x10b0000

    const v3, 0x10b0001

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 229
    const-string/jumbo v2, "tab-favorite-contacts"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 231
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 232
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mFavoriteFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 233
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mFavoriteFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 254
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 256
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 224
    :cond_1
    return-void

    .line 234
    :cond_2
    const-string/jumbo v2, "tab-groups-contacts"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 236
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mFavoriteFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 237
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 238
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCurrentFragment:Landroid/app/Fragment;

    goto :goto_0

    .line 239
    :cond_3
    const-string/jumbo v2, "tab-all-contacts"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 240
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mIsCallLogEnabled:Z

    if-eqz v2, :cond_4

    .line 241
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCallLogFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 246
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 247
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCurrentFragment:Landroid/app/Fragment;

    goto :goto_0

    .line 243
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mFavoriteFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 244
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 248
    :cond_5
    const-string/jumbo v2, "tab-call-log"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 250
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCallLogFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 251
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCallLogFragment:Landroid/app/Fragment;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCurrentFragment:Landroid/app/Fragment;

    goto :goto_0
.end method

.method private updateMemberList(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 458
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupMemberIdList:[J

    .line 459
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupMemberIdList:[J

    .line 462
    const/4 v0, 0x0

    .line 464
    .local v0, "index":I
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "rawId":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupMemberIdList:[J

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 466
    add-int/lit8 v0, v0, 0x1

    .line 467
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 457
    .end local v0    # "index":I
    .end local v1    # "rawId":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 313
    .local v0, "fragment":Landroid/app/Fragment;
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mHasTab:Z

    if-eqz v1, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->calculateTabWidgetBottom()V

    .line 316
    :cond_0
    instance-of v1, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    if-eqz v1, :cond_2

    .line 317
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mHasTab:Z

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->isRecipientsDrawerOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mTabWidgetBottom:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 319
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->closeRecipientsDrawer()V

    .line 320
    return v3

    .line 321
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_1
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    return v3

    .line 326
    :cond_2
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public getCurrentFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCurrentFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "aRequestCode"    # I
    .param p2, "aResultCode"    # I
    .param p3, "aData"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 375
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 376
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v2, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    if-eqz v2, :cond_1

    .line 377
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 379
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_1
    if-ne p2, v3, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGroupsEvent;->pushContactPickerEvent(Landroid/content/Context;)V

    .line 382
    invoke-virtual {p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v1

    .line 383
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0, v3, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->setResult(ILandroid/content/Intent;)V

    .line 385
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 343
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    if-eqz v1, :cond_0

    .line 344
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    return-void

    .line 348
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onBackPressed()V

    .line 341
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f0e00df

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getLoaderManager()Landroid/app/LoaderManager;

    .line 111
    iput-boolean v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mInitialized:Z

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 113
    .local v4, "intent":Landroid/content/Intent;
    const/4 v6, -0x1

    iput v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mSavedTabIndex:I

    .line 115
    if-eqz v4, :cond_3

    .line 116
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "has_tab"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mHasTab:Z

    .line 118
    const-string/jumbo v6, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 119
    const-string/jumbo v6, "android.intent.action.GET_CONTENT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 118
    if-nez v6, :cond_1

    .line 120
    const-string/jumbo v6, "android.intent.action.PICK"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 118
    if-nez v6, :cond_1

    .line 121
    const-string/jumbo v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 118
    if-eqz v6, :cond_2

    .line 122
    :cond_1
    iput-boolean v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mHasTab:Z

    .line 124
    :cond_2
    const-string/jumbo v6, "com.sonyericsson.android.socialphonebook.extra.ENABLE_CALL_LOG"

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mIsCallLogEnabled:Z

    .line 126
    .end local v0    # "action":Ljava/lang/String;
    :cond_3
    const v6, 0x7f040052

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->setContentView(I)V

    .line 127
    const v6, 0x7f0e00cc

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar;

    .line 128
    .local v5, "toolbar":Landroid/widget/Toolbar;
    invoke-virtual {v5, v7}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/util/ThemeUtils;->getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mActionBar:Landroid/app/ActionBar;

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 134
    .local v2, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "focus_search_field"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 137
    .local v1, "focusSearchField":Z
    iget-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mHasTab:Z

    if-eqz v6, :cond_f

    .line 138
    const v6, 0x7f0e00dd

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ViewPagerTabStrip;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    .line 139
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    invoke-virtual {v6, v9}, Lcom/android/contacts/list/ViewPagerTabStrip;->setVisibility(I)V

    .line 140
    const-string/jumbo v6, "tab-all-contacts"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .line 141
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    if-nez v6, :cond_4

    .line 142
    invoke-static {v8, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->newInstance(IZ)Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .line 145
    :cond_4
    iget-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mIsCallLogEnabled:Z

    if-nez v6, :cond_b

    .line 147
    const-string/jumbo v6, "tab-favorite-contacts"

    .line 146
    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mFavoriteFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .line 148
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mFavoriteFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    if-nez v6, :cond_5

    .line 150
    const/4 v6, 0x2

    .line 149
    invoke-static {v6, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->newInstance(IZ)Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mFavoriteFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .line 153
    :cond_5
    const-string/jumbo v6, "tab-groups-contacts"

    .line 152
    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    .line 154
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    if-nez v6, :cond_6

    .line 155
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-direct {v6}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;-><init>()V

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    .line 159
    :cond_6
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->disableGaGroupTabPushEvents()V

    .line 166
    :cond_7
    :goto_0
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 168
    .local v3, "ft":Landroid/app/FragmentTransaction;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_8

    .line 169
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    const-string/jumbo v7, "tab-all-contacts"

    invoke-virtual {v3, v10, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 171
    :cond_8
    iget-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mIsCallLogEnabled:Z

    if-eqz v6, :cond_c

    .line 172
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCallLogFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_9

    .line 173
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCallLogFragment:Landroid/app/Fragment;

    const-string/jumbo v7, "tab-call-log"

    invoke-virtual {v3, v10, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 183
    :cond_9
    :goto_1
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v3, v6}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 184
    iget-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mIsCallLogEnabled:Z

    if-nez v6, :cond_e

    .line 185
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mFavoriteFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v3, v6}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 186
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-virtual {v3, v6}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 190
    :goto_2
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 191
    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 193
    if-eqz p1, :cond_a

    .line 194
    const-string/jumbo v6, "tab-index"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mSavedTabIndex:I

    .line 216
    :cond_a
    :goto_3
    const v6, 0x7f0e00c8

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/contacts/common/util/ViewUtil;->addRectangularOutlineProvider(Landroid/view/View;Landroid/content/res/Resources;)V

    .line 98
    return-void

    .line 161
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    :cond_b
    const-string/jumbo v6, "tab-call-log"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCallLogFragment:Landroid/app/Fragment;

    .line 162
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCallLogFragment:Landroid/app/Fragment;

    if-nez v6, :cond_7

    .line 163
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;

    invoke-direct {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;-><init>()V

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCallLogFragment:Landroid/app/Fragment;

    goto :goto_0

    .line 176
    .restart local v3    # "ft":Landroid/app/FragmentTransaction;
    :cond_c
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mFavoriteFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_d

    .line 177
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mFavoriteFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    const-string/jumbo v7, "tab-favorite-contacts"

    invoke-virtual {v3, v10, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 179
    :cond_d
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_9

    .line 180
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mGroupFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    const-string/jumbo v7, "tab-groups-contacts"

    invoke-virtual {v3, v10, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 188
    :cond_e
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCallLogFragment:Landroid/app/Fragment;

    invoke-virtual {v3, v6}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_2

    .line 197
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    :cond_f
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 198
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 200
    const-string/jumbo v6, "tab-all-contacts"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .line 201
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    if-nez v6, :cond_10

    .line 204
    const v6, 0x7f0e00de

    .line 202
    invoke-static {v8, v1, v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->newInstance(IZI)Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .line 206
    :cond_10
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 207
    .restart local v3    # "ft":Landroid/app/FragmentTransaction;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_11

    .line 208
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    const-string/jumbo v7, "tab-all-contacts"

    invoke-virtual {v3, v10, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 210
    :cond_11
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 211
    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 212
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mCurrentFragment:Landroid/app/Fragment;

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 262
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->getInstance()Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->removeRecipientItemStore(Landroid/app/Activity;)V

    .line 263
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onDestroy()V

    .line 261
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 299
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 301
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->finish()V

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mHasTab:Z

    if-eqz v0, :cond_0

    .line 354
    const-string/jumbo v0, "tab-index"

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mSavedTabIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 352
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 268
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onStart()V

    .line 269
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mInitialized:Z

    if-eqz v2, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mHasTab:Z

    if-eqz v2, :cond_3

    .line 273
    const-string/jumbo v2, "tab-all-contacts"

    const v3, 0x7f0903a1

    invoke-direct {p0, v3, v4, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->addTab(IILjava/lang/String;)V

    .line 274
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mIsCallLogEnabled:Z

    if-nez v2, :cond_2

    .line 275
    const-string/jumbo v2, "tab-favorite-contacts"

    const v3, 0x7f0903a2

    invoke-direct {p0, v3, v6, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->addTab(IILjava/lang/String;)V

    .line 276
    const-string/jumbo v2, "tab-groups-contacts"

    const v3, 0x7f0903a4

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->addTab(IILjava/lang/String;)V

    .line 280
    :goto_0
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mSavedTabIndex:I

    if-eqz v2, :cond_1

    .line 281
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mSavedTabIndex:I

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/contacts/list/ViewPagerTabStrip;->onPageScrolled(IFI)V

    .line 294
    :cond_1
    :goto_1
    iput-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mInitialized:Z

    .line 267
    return-void

    .line 278
    :cond_2
    const-string/jumbo v2, "tab-call-log"

    const v3, 0x7f0903a3

    invoke-direct {p0, v3, v6, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->addTab(IILjava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 285
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 287
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_4

    .line 288
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    const-string/jumbo v3, "tab-all-contacts"

    const v4, 0x1020002

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 290
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 291
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 292
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_1
.end method

.method public onViewGroupAction(Landroid/net/Uri;)V
    .locals 0
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->startGroupMetadataLoader(Landroid/net/Uri;)V

    .line 517
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->mAllContactFragment:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->onWindowFocusChanged(Z)V

    .line 220
    return-void
.end method
