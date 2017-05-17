.class public Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;
.super Landroid/app/Fragment;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sonyericsson/android/socialphonebook/TabStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowserActionListener;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$1;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;
    }
.end annotation


# static fields
.field public static final CREATE_GROUP:I = 0x1

.field private static final EXTRA_KEY_GROUP_URI:Ljava/lang/String; = "groups.groupUri"

.field private static final LOADER_GROUPS:I = 0x1

.field private static final LOADER_GROUPS_PHOTOS:I = 0x2


# instance fields
.field private mAdapter:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;

.field private mContext:Landroid/content/Context;

.field private mGroupBrowseItemClickListener:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;

.field private mGroupListCursor:Landroid/database/Cursor;

.field private final mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupPhotoListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDualPane:Z

.field private mIsVideoGroupSupported:Z

.field private mListView:Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

.field private mListener:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

.field private mRootView:Landroid/view/View;

.field private mSelectedGroupUri:Landroid/net/Uri;

.field private mSelectionToScreenRequested:Z

.field private mSelectionVisible:Z

.field private mSendGaGroupEvents:Z

.field private mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mIsDualPane:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mIsVideoGroupSupported:Z

    return v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSendGaGroupEvents:Z

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mGroupListCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "groupPhotoMap"    # Ljava/util/HashMap;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->bindGroupList(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->startGroupPhotoListLoader()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;Landroid/net/Uri;)V
    .locals 0
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->viewGroup(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSendGaGroupEvents:Z

    .line 236
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)V

    .line 235
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 266
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)V

    .line 265
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mGroupPhotoListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 131
    return-void
.end method

.method private bindGroupList(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "groupPhotoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mGroupListCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 322
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->setGroupPhotoMap(Ljava/util/HashMap;)V

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mGroupListCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->setCursor(Landroid/database/Cursor;)V

    .line 327
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z

    if-eqz v0, :cond_1

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 329
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->requestSelectionToScreen()V

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->getSelectedGroup()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    .line 333
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectionVisible:Z

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->viewGroup(Landroid/net/Uri;)V

    .line 320
    :cond_2
    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 367
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 368
    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 371
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 373
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 366
    return-void
.end method

.method private setSelectedGroup(Landroid/net/Uri;)V
    .locals 1
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->setSelectedGroup(Landroid/net/Uri;)V

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->invalidateViews()V

    .line 345
    return-void
.end method

.method private startGroupPhotoListLoader()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 258
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 259
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mGroupPhotoListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 257
    return-void
.end method

.method private updateVideoGroupsIfAvailable()V
    .locals 2

    .prologue
    .line 807
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mIsVideoGroupSupported:Z

    if-eqz v1, :cond_0

    .line 808
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getVideoGroupServiceUpdateCurrentStateIntent()Landroid/content/Intent;

    move-result-object v0

    .line 809
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 806
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private viewGroup(Landroid/net/Uri;)V
    .locals 1
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->setSelectedGroup(Landroid/net/Uri;)V

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowserActionListener;->onViewGroupAction(Landroid/net/Uri;)V

    .line 338
    :cond_0
    return-void
.end method


# virtual methods
.method public disableGaGroupTabPushEvents()V
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSendGaGroupEvents:Z

    .line 795
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 399
    packed-switch p1, :pswitch_data_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 401
    :pswitch_0
    if-eqz p3, :cond_0

    .line 402
    const-string/jumbo v1, "group_uri"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 403
    .local v0, "groupUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->viewGroup(Landroid/net/Uri;)V

    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 193
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    .line 195
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mIsDualPane:Z

    .line 196
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mIsDualPane:Z

    if-eqz v1, :cond_1

    instance-of v1, p1, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectionVisible:Z

    .line 197
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->isVideoCallingGroupSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mIsVideoGroupSupported:Z

    .line 198
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 199
    .local v0, "parentFragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    if-eqz v1, :cond_2

    .line 200
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    .end local v0    # "parentFragment":Landroid/app/Fragment;
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    .line 214
    :goto_1
    instance-of v1, p1, Lcom/sonyericsson/android/socialphonebook/TabStateController;

    if-eqz v1, :cond_0

    .line 215
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/TabStateController;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;

    .line 216
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-interface {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/TabStateController;->register(Lcom/sonyericsson/android/socialphonebook/TabStateObserver;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 191
    :cond_0
    return-void

    .line 196
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 201
    .restart local v0    # "parentFragment":Landroid/app/Fragment;
    :cond_2
    instance-of v1, p1, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 202
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    goto :goto_1

    .line 204
    :cond_3
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$3;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mGroupBrowseItemClickListener:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;

    .line 138
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->updateVideoGroupsIfAvailable()V

    .line 135
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 144
    if-eqz p3, :cond_0

    .line 145
    const-string/jumbo v0, "groups.groupUri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 149
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 153
    :cond_0
    const v0, 0x7f040080

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    .line 155
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->setSelectionVisible(Z)V

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->setSelectedGroup(Landroid/net/Uri;)V

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0e015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->setItemsCanFocus(Z)V

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    .line 221
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->hideSoftKeyboard()V

    .line 380
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mGroupBrowseItemClickListener:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 185
    const-string/jumbo v0, "groups.groupUri"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 183
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 229
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 227
    return-void
.end method

.method public onTabChanged(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;Z)V
    .locals 0
    .param p1, "tab"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .param p2, "selected"    # Z

    .prologue
    .line 801
    if-eqz p2, :cond_0

    .line 802
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->updateVideoGroupsIfAvailable()V

    .line 800
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    if-ne p1, v0, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->hideSoftKeyboard()V

    .line 394
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected requestSelectionToScreen()V
    .locals 3

    .prologue
    .line 352
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mSelectionVisible:Z

    if-nez v1, :cond_0

    .line 353
    return-void

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->getSelectedGroupPosition()I

    move-result v0

    .line 356
    .local v0, "selectedPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->requestPositionToScreen(IZ)V

    .line 351
    :cond_1
    return-void
.end method
