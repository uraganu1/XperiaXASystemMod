.class public Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.super Landroid/app/Fragment;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListenerProvider;,
        Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;,
        Lcom/sonyericsson/conversations/ui/ConversationListFragment$XtmTransferListener;,
        Lcom/sonyericsson/conversations/ui/ConversationListFragment$1;,
        Lcom/sonyericsson/conversations/ui/ConversationListFragment$2;,
        Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;,
        Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;,
        Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;,
        Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;,
        Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;,
        Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;,
        Lcom/sonyericsson/conversations/ui/ConversationListFragment$9;,
        Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAllowDeleteObsoleteThreads:Z

.field private mClosedByUser:Z

.field private mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

.field mConvListFragmentMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

.field private mConversationEventListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

.field protected mConversationListEmptyText:Landroid/widget/TextView;

.field private mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

.field protected mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

.field protected mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

.field protected mDefaultSmsAppBannerView:Landroid/widget/LinearLayout;

.field private mDeleteConversationsMenu:Landroid/view/MenuItem;

.field private mFocusedMessageUri:Landroid/net/Uri;

.field private mFragmentLayoutId:I

.field private mFragmentListViewId:I

.field protected mHandler:Landroid/os/Handler;

.field private mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

.field private mIsMenuVisible:Z

.field private mLastUsedConvKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListViewChoiceMode:I

.field private mLoaderType:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

.field private mMultiSelectionMode:Landroid/view/ActionMode;

.field private mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

.field private mNewConversationButton:Landroid/widget/ImageButton;

.field private final mNewConversationClickListener:Landroid/view/View$OnClickListener;

.field private mNewGroupChatMenu:Landroid/view/MenuItem;

.field private mNormalModeItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private mOpenConversation:Ljava/lang/Runnable;

.field private mPd:Landroid/app/ProgressDialog;

.field private mQueryString:Ljava/lang/String;

.field private mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mReloadConversations:Ljava/lang/Runnable;

.field protected mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

.field private mSearchMenu:Landroid/view/MenuItem;

.field private mSearchModeItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSearchRequestedByUser:Z

.field private mSearchString:Ljava/lang/String;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSettingsMenu:Landroid/view/MenuItem;

.field private mShowXperiaTransferFooter:Z

.field private mStarredMessageMenu:Landroid/view/MenuItem;

.field private mSwipeableLayout:Lcom/sonyericsson/conversations/view/SwipeableLayout;

.field private mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

.field private mWaitingForLoadedDataIdler:Lcom/sonymobile/conversations/espresso/IdlingConversationsResource;

.field protected mXperiaTransferFooterView:Landroid/view/View;

.field private mXperiaTransferFooterVisible:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic -get11(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchRequestedByUser:Z

    return v0
.end method

.method static synthetic -get12(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/view/SwipeableLayout;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSwipeableLayout:Lcom/sonyericsson/conversations/view/SwipeableLayout;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mClosedByUser:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationEventListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/model/ConversationListModel;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mLoaderType:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mReloadConversations:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isXperiaTransferInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;
    .locals 1

    invoke-static {}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getLoaderType()Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->showNewGroupChatTooltip()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->switchToViewMode()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->updateNewConversationButton(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->writeNewMessage()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->DEBUG:Z

    .line 95
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 241
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    .line 249
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mIsMenuVisible:Z

    .line 251
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mClosedByUser:Z

    .line 253
    iput v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mListViewChoiceMode:I

    .line 257
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    .line 259
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    .line 261
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mQueryString:Ljava/lang/String;

    .line 263
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchRequestedByUser:Z

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mLastUsedConvKeys:Ljava/util/List;

    .line 271
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    .line 275
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mAllowDeleteObsoleteThreads:Z

    .line 277
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mWaitingForLoadedDataIdler:Lcom/sonymobile/conversations/espresso/IdlingConversationsResource;

    .line 280
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    .line 289
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mReloadConversations:Ljava/lang/Runnable;

    .line 295
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mOpenConversation:Ljava/lang/Runnable;

    .line 297
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNormalModeItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 309
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchModeItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 316
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    .line 340
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNewConversationClickListener:Landroid/view/View$OnClickListener;

    .line 360
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 410
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 455
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$9;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$9;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    .line 1543
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConvListFragmentMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    .line 95
    return-void
.end method

.method private animateListChangesIfNeeded(Landroid/database/Cursor;Landroid/widget/CursorAdapter;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "adapter"    # Landroid/widget/CursorAdapter;

    .prologue
    .line 1392
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    if-ne p2, v1, :cond_0

    .line 1393
    return-void

    .line 1395
    :cond_0
    if-nez p2, :cond_1

    .line 1396
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Adapter must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1399
    :cond_1
    invoke-virtual {p2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isConversationListChanged(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1400
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    .line 1401
    const/high16 v2, 0x7f060000

    .line 1400
    invoke-virtual {v1, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v0

    .line 1402
    .local v0, "transition":Landroid/transition/Transition;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/transition/TransitionHelper;->beginOrIgnoreDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 1391
    .end local v0    # "transition":Landroid/transition/Transition;
    :cond_2
    return-void
.end method

.method private declared-synchronized getAllowDeleteObsoleteThreads()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1037
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mAllowDeleteObsoleteThreads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getConvListContentAreaVisibility()Z
    .locals 2

    .prologue
    .line 984
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 985
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 986
    const/4 v1, 0x0

    return v1

    .line 988
    :cond_0
    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isConvListContentAreaVisible()Z

    move-result v1

    return v1
.end method

.method private getDeleteConversationsMenuVisibility()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1025
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mShowXperiaTransferFooter:Z

    if-eqz v2, :cond_1

    .line 1026
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/SafeListView;->getCount()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1028
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/SafeListView;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getGroupChatMenuVisibility()Z
    .locals 1

    .prologue
    .line 1018
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v0

    return v0
.end method

.method private static getLoaderType()Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;
    .locals 3

    .prologue
    .line 488
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v0

    .line 490
    .local v0, "isDefaultSmsPackage":Z
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v1

    .line 491
    .local v1, "isRcseConfigured":Z
    if-eqz v0, :cond_1

    .line 492
    if-eqz v1, :cond_0

    sget-object v2, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->INTEGRATED:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->XMS:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    goto :goto_0

    .line 494
    :cond_1
    if-eqz v1, :cond_2

    sget-object v2, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->JOYN:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    :goto_1
    return-object v2

    :cond_2
    sget-object v2, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->XMS:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    goto :goto_1
.end method

.method private getMenuVisibility()Z
    .locals 1

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mIsMenuVisible:Z

    return v0
.end method

.method private getSearchMenuVisibility()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 960
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    if-nez v4, :cond_0

    .line 961
    return v2

    .line 964
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getConvListContentAreaVisibility()Z

    move-result v0

    .line 969
    .local v0, "isConvListContentAreaVisible":Z
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isUsingSearchAdapter()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 970
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getMenuVisibility()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_2

    .line 971
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/SafeListView;->getHeaderViewsCount()I

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 970
    :cond_2
    return v2

    .line 973
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_7

    :cond_4
    const/4 v1, 0x1

    .line 976
    .local v1, "isConversationListEmpty":Z
    :goto_0
    if-nez v1, :cond_6

    .line 977
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getMenuVisibility()Z

    move-result v4

    if-nez v4, :cond_5

    .line 976
    if-eqz v0, :cond_6

    .line 978
    :cond_5
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/SafeListView;->getHeaderViewsCount()I

    move-result v4

    if-nez v4, :cond_6

    move v2, v3

    .line 976
    :cond_6
    return v2

    .line 973
    .end local v1    # "isConversationListEmpty":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "isConversationListEmpty":Z
    goto :goto_0
.end method

.method private hasConversations()Z
    .locals 2

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isUsingSearchAdapter()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1104
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1105
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/SafeListView;->getHeaderViewsCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 1110
    .local v0, "hasConversations":Z
    :goto_0
    return v0

    .line 1104
    .end local v0    # "hasConversations":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "hasConversations":Z
    goto :goto_0

    .line 1105
    .end local v0    # "hasConversations":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "hasConversations":Z
    goto :goto_0

    .line 1107
    .end local v0    # "hasConversations":Z
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1108
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/SafeListView;->getHeaderViewsCount()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "hasConversations":Z
    goto :goto_0

    .line 1107
    .end local v0    # "hasConversations":Z
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "hasConversations":Z
    goto :goto_0

    .line 1108
    .end local v0    # "hasConversations":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "hasConversations":Z
    goto :goto_0
.end method

.method private hideEmptyListHint()V
    .locals 2

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1296
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SafeListView;->setEmptyView(Landroid/view/View;)V

    .line 1292
    return-void
.end method

.method private initNewConversationButton()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 642
    const v1, 0x7f0d002d

    .line 641
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNewConversationButton:Landroid/widget/ImageButton;

    .line 643
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNewConversationButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNewConversationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    return-void
.end method

.method private isConversationListChanged(Landroid/database/Cursor;)Z
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 1413
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1416
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1417
    .local v1, "currConvKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "conversation_key"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1419
    .local v2, "keyIdx":I
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1420
    .local v0, "conversationKey":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1421
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1422
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1424
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mLastUsedConvKeys:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1425
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mLastUsedConvKeys:Ljava/util/List;

    .line 1426
    const/4 v3, 0x1

    return v3

    .line 1414
    .end local v0    # "conversationKey":Ljava/lang/String;
    .end local v1    # "currConvKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "keyIdx":I
    :cond_1
    return v4

    .line 1428
    .restart local v0    # "conversationKey":Ljava/lang/String;
    .restart local v1    # "currConvKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "keyIdx":I
    :cond_2
    return v4
.end method

.method private isXperiaTransferInstalled()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1239
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1241
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v2, "com.sonymobile.xperiatransfermobile"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    return v4

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method private launchConversationListSettingsActivity()V
    .locals 3

    .prologue
    .line 860
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sonyericsson/conversations/ui/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 861
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x42

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 859
    return-void
.end method

.method private launchStarredMessageListActivity()V
    .locals 3

    .prologue
    .line 855
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 856
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 854
    return-void
.end method

.method public static newInstance(II)Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .locals 1
    .param p0, "fragmentLayoutId"    # I
    .param p1, "listViewId"    # I

    .prologue
    .line 452
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->newInstance(III)Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(III)Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .locals 4
    .param p0, "fragmentLayoutId"    # I
    .param p1, "listViewId"    # I
    .param p2, "listViewChoiceMode"    # I

    .prologue
    .line 477
    new-instance v1, Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;-><init>()V

    .line 478
    .local v1, "convListFrag":Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 479
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v2, "LayoutId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    const-string/jumbo v2, "ListViewId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 481
    const-string/jumbo v2, "ListViewChoiceMode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    const-string/jumbo v2, "LoaderType"

    invoke-static {}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getLoaderType()Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 484
    return-object v1
.end method

.method private onDeleteObsoleteThreadsComplete(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "result"    # I

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->isDeleteTaskRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1441
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->dismissProgressDialog()V

    .line 1443
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1444
    packed-switch p1, :pswitch_data_0

    .line 1437
    :cond_1
    :goto_0
    return-void

    .line 1446
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    .line 1447
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1448
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->asyncDeleteObsoleteThreads()V

    goto :goto_0

    .line 1458
    :pswitch_1
    if-lez p2, :cond_1

    .line 1459
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->forceLoad()V

    goto :goto_0

    .line 1444
    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPostDelete(I)V
    .locals 4
    .param p1, "deleteCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1061
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1063
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1064
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->dismissProgressDialog()V

    .line 1067
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->asyncDeleteObsoleteThreads()V

    .line 1069
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->reload()V

    .line 1071
    if-ne p1, v3, :cond_2

    .line 1072
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    .line 1073
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 1074
    const v1, 0x7f0b00cc

    .line 1073
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 1060
    :cond_1
    :goto_0
    return-void

    .line 1076
    :cond_2
    if-le p1, v3, :cond_1

    .line 1077
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    .line 1078
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 1079
    const v1, 0x7f0b00cd

    .line 1078
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method private onPreDelete(I)V
    .locals 5
    .param p1, "deleteCount"    # I

    .prologue
    const/16 v4, 0x67

    const/16 v3, 0x65

    const/4 v2, 0x1

    .line 1047
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1048
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1049
    const/4 v0, 0x0

    .line 1050
    .local v0, "message":Landroid/os/Message;
    if-ne p1, v2, :cond_2

    .line 1051
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1055
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1056
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1046
    :cond_1
    return-void

    .line 1052
    .restart local v0    # "message":Landroid/os/Message;
    :cond_2
    if-le p1, v2, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    goto :goto_0
.end method

.method private openConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 4
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mOpenConversation:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mOpenConversation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 783
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$12;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$12;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mOpenConversation:Ljava/lang/Runnable;

    .line 794
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mOpenConversation:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 779
    return-void
.end method

.method private pickContactsForGroupChat()V
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationEventListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;->onPickContactsForGroupChat()V

    .line 844
    return-void
.end method

.method private setupDefaultSmsAppBanner()V
    .locals 8

    .prologue
    .line 1249
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v0

    .line 1250
    .local v0, "accentColor":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mDefaultSmsAppBannerView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1251
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1252
    const v7, 0x7f0d00f0

    .line 1251
    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1253
    .local v2, "bannerButtonBar":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1255
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0d00ef

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 1256
    .local v4, "doNotShowAgainCheckBox":Landroid/widget/CheckBox;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1257
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1258
    const v7, 0x7f0d00ee

    .line 1257
    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1259
    .local v3, "bannerTurnOnText":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1261
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 1262
    const v7, 0x7f0d00f3

    .line 1261
    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1263
    .local v1, "activateButton":Landroid/widget/Button;
    new-instance v6, Lcom/sonyericsson/conversations/ui/ConversationListFragment$16;

    invoke-direct {v6, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$16;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1272
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1274
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 1275
    const v7, 0x7f0d00f1

    .line 1274
    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1276
    .local v5, "laterButton":Landroid/widget/Button;
    new-instance v6, Lcom/sonyericsson/conversations/ui/ConversationListFragment$17;

    invoke-direct {v6, p0, v4}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$17;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1289
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1248
    return-void
.end method

.method private setupXperiaTransferFooter()V
    .locals 4

    .prologue
    .line 1177
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mShowXperiaTransferFooter:Z

    if-nez v2, :cond_0

    .line 1178
    return-void

    .line 1181
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 1182
    const v3, 0x7f0d009c

    .line 1181
    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1183
    .local v1, "declineButton":Landroid/widget/Button;
    new-instance v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment$14;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$14;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1190
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 1191
    const v3, 0x7f0d009d

    .line 1190
    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1192
    .local v0, "acceptButton":Landroid/widget/Button;
    new-instance v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment$15;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$15;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1214
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isXperiaTransferInstalled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1216
    const v2, 0x7f0b0254

    .line 1215
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1176
    :goto_0
    return-void

    .line 1219
    :cond_1
    const v2, 0x7f0b0255

    .line 1218
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private shouldEnableGroupChatMenu()Z
    .locals 2

    .prologue
    .line 1006
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImPermissionApi()Lcom/sonymobile/jms/permission/ImPermissionApi;

    move-result-object v0

    .line 1007
    .local v0, "imPermissionApi":Lcom/sonymobile/jms/permission/ImPermissionApi;
    if-nez v0, :cond_0

    .line 1008
    const/4 v1, 0x0

    return v1

    .line 1011
    :cond_0
    invoke-interface {v0}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAllowedToStartGroupConversation()Z

    move-result v1

    return v1
.end method

.method private showEmptyListHint()V
    .locals 8

    .prologue
    .line 1114
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1115
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1116
    .local v5, "r":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isUsingSearchAdapter()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1117
    const v6, 0x7f0b0174

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1118
    .local v1, "descriptionText":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1134
    .end local v1    # "descriptionText":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Lcom/sonyericsson/conversations/ui/SafeListView;->setEmptyView(Landroid/view/View;)V

    .line 1113
    return-void

    .line 1123
    :cond_0
    const v6, 0x7f0b00d0

    .line 1122
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, "accessibilityText":Ljava/lang/String;
    const v6, 0x7f0b00d1

    .line 1124
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1126
    .local v2, "displayText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1127
    const v7, 0x7f0200c0

    .line 1126
    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1129
    .local v4, "newMessageIcon":Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v4}, Lcom/sonyericsson/conversations/util/SpannableStringUtil;->merge(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v3

    .line 1131
    .local v3, "emptyListHint":Landroid/text/SpannableString;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showNewGroupChatTooltip()V
    .locals 4

    .prologue
    .line 1845
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d013e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1846
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isRemoving()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1844
    :cond_0
    :goto_0
    return-void

    .line 1847
    :cond_1
    new-instance v1, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;-><init>()V

    .line 1848
    .local v1, "builder":Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->setAnchorView(Landroid/view/View;)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    move-result-object v2

    .line 1849
    const v3, 0x7f0c00fd

    .line 1848
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->setWidth(I)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    move-result-object v2

    .line 1850
    const v3, 0x7f0b0250

    .line 1848
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->setText(I)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    move-result-object v2

    .line 1851
    const v3, 0x7f0c00fe

    .line 1848
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->setTooltipYOffsetResId(I)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    move-result-object v2

    .line 1852
    const/4 v3, 0x0

    .line 1848
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->placeToolTipAboveAnchor(Z)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    move-result-object v2

    .line 1853
    new-instance v3, Lcom/sonyericsson/conversations/ui/ConversationListFragment$19;

    invoke-direct {v3, p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$19;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Landroid/view/View;)V

    .line 1848
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->setOnTooltipDismissListener(Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    .line 1862
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->build(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/TooltipDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    .line 1863
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->showToolTip()V

    goto :goto_0
.end method

.method private startDeleteConversations()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 850
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->switchToMultiSelectMode(I)V

    .line 848
    :cond_0
    return-void
.end method

.method private switchToMultiSelectMode(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1488
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 1489
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    .line 1490
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/conversations/ui/SafeListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1489
    :goto_0
    invoke-virtual {v2, p1, v0}, Lcom/sonyericsson/conversations/ui/SafeListView;->setItemChecked(IZ)V

    .line 1491
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1492
    return-void

    :cond_0
    move v0, v1

    .line 1490
    goto :goto_0

    .line 1495
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->updateNewConversationButton(Z)V

    .line 1496
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationEventListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;->onStartDeleteConversations()V

    .line 1497
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->switchCursorAdapterMode(I)V

    .line 1500
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/SafeListView;->setChoiceMode(I)V

    .line 1501
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->notifyDataSetChanged()V

    .line 1503
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SafeListView;->clearChoices()V

    .line 1504
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 1505
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/conversations/ui/SafeListView;->setItemChecked(IZ)V

    .line 1508
    :cond_2
    new-instance v0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    .line 1509
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConvListFragmentMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setMarkCallBackListener(Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;)V

    .line 1510
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 1511
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConvListFragmentMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;->onUpdateActionMenu()V

    .line 1487
    return-void
.end method

.method private switchToViewMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1515
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mListViewChoiceMode:I

    if-ne v2, v4, :cond_1

    .line 1516
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    .line 1517
    const/4 v3, 0x4

    .line 1516
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->switchCursorAdapterMode(I)V

    .line 1527
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/SafeListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1528
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/ui/SafeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1529
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    .line 1530
    check-cast v1, Landroid/widget/Checkable;

    .end local v1    # "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1527
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1520
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->switchCursorAdapterMode(I)V

    goto :goto_0

    .line 1534
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/SafeListView;->clearChoices()V

    .line 1535
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    iget v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mListViewChoiceMode:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/SafeListView;->setChoiceMode(I)V

    .line 1536
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->notifyDataSetChanged()V

    .line 1537
    iput-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 1538
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setMarkCallBackListener(Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;)V

    .line 1539
    iput-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    .line 1540
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->updateNewConversationButton(Z)V

    .line 1514
    return-void
.end method

.method private updateDefaultSmsBannerVisibility()V
    .locals 2

    .prologue
    .line 1835
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->shallDisplayChangeDefaultSmsAppBanner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mDefaultSmsAppBannerView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1838
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setupDefaultSmsAppBanner()V

    .line 1834
    :goto_0
    return-void

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mDefaultSmsAppBannerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateListAdapterIfChanged(Landroid/widget/CursorAdapter;)V
    .locals 2
    .param p1, "newAdapter"    # Landroid/widget/CursorAdapter;

    .prologue
    .line 1381
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/SafeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1383
    .local v0, "currAdapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 1384
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "currAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1386
    .restart local v0    # "currAdapter":Landroid/widget/ListAdapter;
    :cond_0
    if-eq v0, p1, :cond_1

    .line 1387
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/ui/SafeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1380
    :cond_1
    return-void
.end method

.method private updateNewConversationButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 446
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNewConversationButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 447
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNewConversationButton:Landroid/widget/ImageButton;

    .line 448
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNewConversationClickListener:Landroid/view/View$OnClickListener;

    .line 447
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    return-void

    .line 446
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 448
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateNewGroupChatMenuItem(Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "newGroupChatMenu"    # Landroid/view/MenuItem;

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->shouldEnableGroupChatMenu()Z

    move-result v0

    .line 947
    .local v0, "enableGroupChatMenu":Z
    if-eqz v0, :cond_0

    const v1, 0x7f02005a

    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 945
    return-void

    .line 948
    :cond_0
    const v1, 0x7f020059

    goto :goto_0
.end method

.method private updateOptionMenuAndExpandView(Ljava/lang/String;)V
    .locals 2
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationEventListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;->onSearchViewExpand()V

    .line 1699
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/ConversationListFragment$18;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$18;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1693
    return-void
.end method

.method private writeNewMessage()V
    .locals 1

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->hideSearchView()V

    .line 841
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationEventListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;->onWriteNewMessage()V

    .line 839
    return-void
.end method


# virtual methods
.method public asyncDeleteObsoleteThreads()V
    .locals 1

    .prologue
    .line 1041
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getAllowDeleteObsoleteThreads()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->asyncDeleteObsoleteThreads()V

    .line 1040
    :cond_0
    return-void
.end method

.method public changeToNormalMode()V
    .locals 2

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->changeToNormalMode()V

    .line 1726
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNormalModeItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SafeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1724
    return-void
.end method

.method public changeToSearchMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 1752
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1751
    :cond_0
    :goto_0
    return-void

    .line 1753
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchString:Ljava/lang/String;

    .line 1754
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel;->changeToSearchMode(Ljava/lang/String;)V

    .line 1755
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchModeItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SafeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1756
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->setSearchString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dismissProgressDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 803
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 806
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    .line 802
    return-void
.end method

.method public expandSearchView(Ljava/lang/String;)V
    .locals 1
    .param p1, "restoredString"    # Ljava/lang/String;

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1684
    :cond_0
    :goto_0
    return-void

    .line 1686
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->updateOptionMenuAndExpandView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConversationIdAtPosition(I)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1373
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isUsingSearchAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->getConversationIdAtPosition(I)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    return-object v0

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->getConversationIdAtPosition(I)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    return-object v0
.end method

.method public getFocusedMessageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchString:Ljava/lang/String;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 517
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 515
    :goto_0
    return-void

    .line 519
    :pswitch_0
    const v0, 0x7f0b00cf

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->showProgressDialog(I)V

    goto :goto_0

    .line 523
    :pswitch_1
    const v0, 0x7f0b00ec

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->showProgressDialog(I)V

    goto :goto_0

    .line 526
    :pswitch_2
    const v0, 0x7f0b00ce

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->showProgressDialog(I)V

    goto :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hideSearchView()V
    .locals 1

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1468
    :cond_0
    return-void
.end method

.method public isSearchBoxVisible()Z
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsingSearchAdapter()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1822
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    if-nez v4, :cond_0

    .line 1823
    return v3

    .line 1825
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/SafeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1826
    .local v0, "currentAdapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_2

    instance-of v4, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v4, :cond_2

    .line 1828
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "currentAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 1829
    .local v1, "wrappedAdapter":Landroid/widget/ListAdapter;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    if-ne v1, v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 1831
    .end local v1    # "wrappedAdapter":Landroid/widget/ListAdapter;
    .restart local v0    # "currentAdapter":Landroid/widget/ListAdapter;
    :cond_2
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    if-ne v0, v4, :cond_3

    move v3, v2

    :cond_3
    return v3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 601
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 603
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 604
    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserAllowedToUseMessaging()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 605
    :cond_0
    return-void

    .line 607
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onCreateListCursorAdapter(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    .line 608
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    if-eqz v2, :cond_4

    .line 609
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mListViewChoiceMode:I

    if-eqz v2, :cond_2

    .line 610
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    iget v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mListViewChoiceMode:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/SafeListView;->setChoiceMode(I)V

    .line 612
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/conversations/ui/SafeListView;->setItemsCanFocus(Z)V

    .line 613
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mShowXperiaTransferFooter:Z

    if-eqz v2, :cond_3

    .line 614
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mXperiaTransferFooterView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/SafeListView;->addFooterView(Landroid/view/View;)V

    .line 616
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/SafeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 617
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v2, p0}, Lcom/sonyericsson/conversations/ui/SafeListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 618
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNormalModeItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/SafeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 621
    :cond_4
    new-instance v2, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v4, v4}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    .line 622
    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setHasOptionsMenu(Z)V

    .line 624
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 625
    .local v1, "message":Landroid/os/Message;
    if-eqz v1, :cond_5

    .line 626
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 628
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    if-nez v2, :cond_6

    .line 629
    new-instance v2, Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/model/ConversationListModel;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    .line 631
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ConversationsApp;

    .line 632
    .local v0, "app":Lcom/sonyericsson/conversations/ConversationsApp;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mLoaderType:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0, p0, v3, v4}, Lcom/sonyericsson/conversations/model/ConversationListModel;->initModel(Lcom/sonyericsson/conversations/ConversationsApp;Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;Landroid/app/Activity;)V

    .line 635
    .end local v0    # "app":Lcom/sonyericsson/conversations/ConversationsApp;
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->initNewConversationButton()V

    .line 636
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->updateDefaultSmsBannerVisibility()V

    .line 637
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setupXperiaTransferFooter()V

    .line 600
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 751
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 752
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 753
    const/16 v0, 0x1337

    if-ne p1, v0, :cond_1

    .line 755
    :cond_0
    const-string/jumbo v0, "Conversation list"

    invoke-static {v0}, Lcom/sonymobile/conversations/analytics/Analytics;->pushAppView(Ljava/lang/String;)V

    .line 757
    :cond_1
    const v0, 0xbada

    if-ne p1, v0, :cond_2

    .line 758
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mDefaultSmsAppBannerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 750
    :cond_2
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 500
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 501
    check-cast p1, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListenerProvider;

    .end local p1    # "context":Landroid/content/Context;
    invoke-interface {p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListenerProvider;->getConversationEventListener()Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationEventListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    .line 499
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 554
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 556
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 557
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 558
    const-string/jumbo v1, "LayoutId"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mFragmentLayoutId:I

    .line 559
    const-string/jumbo v1, "ListViewId"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mFragmentListViewId:I

    .line 560
    const-string/jumbo v1, "ListViewChoiceMode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mListViewChoiceMode:I

    .line 561
    invoke-static {}, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->values()[Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    move-result-object v1

    const-string/jumbo v2, "LoaderType"

    .line 562
    sget-object v3, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->XMS:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->ordinal()I

    move-result v3

    .line 561
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mLoaderType:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    .line 553
    :cond_0
    return-void
.end method

.method protected onCreateListCursorAdapter(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 541
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mListViewChoiceMode:I

    if-ne v0, v2, :cond_0

    .line 542
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 543
    const/4 v2, 0x4

    .line 542
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;II)V

    return-object v0

    .line 546
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;II)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflate"    # Landroid/view/MenuInflater;

    .prologue
    .line 886
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 887
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 888
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 890
    const v1, 0x7f0d013e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNewGroupChatMenu:Landroid/view/MenuItem;

    .line 891
    const v1, 0x7f0d0142

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSettingsMenu:Landroid/view/MenuItem;

    .line 892
    const v1, 0x7f0d0140

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mDeleteConversationsMenu:Landroid/view/MenuItem;

    .line 893
    const v1, 0x7f0d0141

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mStarredMessageMenu:Landroid/view/MenuItem;

    .line 894
    const v1, 0x7f0d013f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    .line 896
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 898
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    .line 900
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 901
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 885
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 575
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->showXperiaTransferFooter()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mShowXperiaTransferFooter:Z

    .line 576
    iget v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mFragmentLayoutId:I

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 577
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 578
    iget v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mFragmentListViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/SafeListView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    .line 580
    const v1, 0x7f0d009f

    .line 579
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    .line 582
    const v1, 0x7f0d009e

    .line 581
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mDefaultSmsAppBannerView:Landroid/widget/LinearLayout;

    .line 583
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mShowXperiaTransferFooter:Z

    if-eqz v1, :cond_0

    .line 585
    const v1, 0x7f030038

    .line 584
    invoke-virtual {p1, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mXperiaTransferFooterView:Landroid/view/View;

    .line 586
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mXperiaTransferFooterView:Landroid/view/View;

    .line 587
    const v2, 0x7f0d0099

    .line 586
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/view/SwipeableLayout;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSwipeableLayout:Lcom/sonyericsson/conversations/view/SwipeableLayout;

    .line 588
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSwipeableLayout:Lcom/sonyericsson/conversations/view/SwipeableLayout;

    new-instance v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment$11;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$11;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/view/SwipeableLayout;->setDismissListener(Lcom/sonyericsson/conversations/view/SwipeableLayout$DismissListener;)V

    .line 596
    :cond_0
    return-object v0
.end method

.method public onDataLoaded(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1300
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/ConversationListModel;->isDeleteTaskRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1301
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->dismissProgressDialog()V

    .line 1306
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1308
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1309
    const/4 p1, 0x0

    .line 1312
    .end local p1    # "data":Landroid/database/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    .line 1314
    .local v0, "adapter":Landroid/widget/CursorAdapter;
    instance-of v1, p1, Lcom/sonyericsson/conversations/ui/util/SearchCursor;

    if-eqz v1, :cond_2

    .line 1315
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    .line 1318
    :cond_2
    if-eqz v0, :cond_3

    .line 1319
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->animateListChangesIfNeeded(Landroid/database/Cursor;Landroid/widget/CursorAdapter;)V

    .line 1321
    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1322
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->updateListAdapterIfChanged(Landroid/widget/CursorAdapter;)V

    .line 1325
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1326
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/ConversationListModel;->isDeleteTaskFinished()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1327
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationEventListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    invoke-interface {v1, v3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;->onFinishDeleteConversationsActionMode(Z)V

    .line 1328
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/ConversationListModel;->removeDeleteTask()V

    .line 1336
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onUpdateContainerView()V

    .line 1340
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_4

    .line 1341
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 1345
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1354
    .end local v0    # "adapter":Landroid/widget/CursorAdapter;
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mWaitingForLoadedDataIdler:Lcom/sonymobile/conversations/espresso/IdlingConversationsResource;

    if-eqz v1, :cond_6

    .line 1355
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mWaitingForLoadedDataIdler:Lcom/sonymobile/conversations/espresso/IdlingConversationsResource;

    invoke-virtual {v1}, Lcom/sonymobile/conversations/espresso/IdlingConversationsResource;->setIdling()V

    .line 1358
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mXperiaTransferFooterView:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mShowXperiaTransferFooter:Z

    if-eqz v1, :cond_7

    .line 1359
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mXperiaTransferFooterVisible:Z

    if-eqz v1, :cond_b

    .line 1299
    :cond_7
    :goto_2
    return-void

    .line 1330
    .restart local v0    # "adapter":Landroid/widget/CursorAdapter;
    :cond_8
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationEventListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;->onConvListLoadFinished()V

    goto :goto_0

    .line 1347
    .end local v0    # "adapter":Landroid/widget/CursorAdapter;
    .restart local p1    # "data":Landroid/database/Cursor;
    :cond_9
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    if-eqz v1, :cond_a

    .line 1348
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1350
    :cond_a
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    if-eqz v1, :cond_5

    .line 1351
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_1

    .line 1360
    .end local p1    # "data":Landroid/database/Cursor;
    :cond_b
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mXperiaTransferFooterView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1361
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mXperiaTransferFooterVisible:Z

    goto :goto_2
.end method

.method public onDataReset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1366
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1367
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1365
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 713
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->dismissProgressDialog()V

    .line 715
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mClosedByUser:Z

    .line 725
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 726
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 729
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    if-eqz v0, :cond_3

    .line 730
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SafeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 731
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SafeListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 732
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SafeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 733
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    .line 736
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    if-eqz v0, :cond_4

    .line 737
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->close()V

    .line 740
    :cond_4
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationEventListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    .line 742
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    if-eqz v0, :cond_5

    .line 743
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->uninitModel(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 744
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    .line 746
    :cond_5
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 712
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->dismissProgressDialog()V

    .line 708
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 706
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 1478
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isUsingSearchAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1479
    const/4 v0, 0x0

    return v0

    .line 1481
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->hideSearchView()V

    .line 1482
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->switchToMultiSelectMode(I)V

    .line 1483
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Lcom/sonyericsson/conversations/conversation/ConversationId;I)V
    .locals 1
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p2, "position"    # I

    .prologue
    .line 765
    invoke-static {}, Lcom/sonymobile/conversations/util/LogUtil;->isTestLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    const-string/jumbo v0, "Performance - List item is clicked"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 764
    :goto_0
    return-void

    .line 771
    :cond_1
    if-gez p2, :cond_2

    .line 773
    return-void

    .line 775
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->openConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    goto :goto_0
.end method

.method public varargs onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "obj"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 1788
    const-string/jumbo v3, "ConversationListModel_data_reset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1790
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onDataReset()V

    .line 1787
    :goto_0
    return-void

    .line 1788
    :cond_0
    const-string/jumbo v3, "ConversationListModel_data_loaded"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1793
    aget-object v3, p2, v4

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onDataLoaded(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1788
    :cond_1
    const-string/jumbo v3, "ConversationListModel_delete_obsolete_threads_complete"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1796
    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1797
    .local v2, "token":I
    const/4 v3, 0x2

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1798
    .local v1, "result":I
    invoke-direct {p0, v2, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onDeleteObsoleteThreadsComplete(II)V

    goto :goto_0

    .line 1788
    .end local v1    # "result":I
    .end local v2    # "token":I
    :cond_2
    const-string/jumbo v3, "ConversationListModel_pre_delete"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1801
    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1802
    .local v0, "deleteCount":I
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onPreDelete(I)V

    goto :goto_0

    .line 1788
    .end local v0    # "deleteCount":I
    :cond_3
    const-string/jumbo v3, "ConversationListModel_cancel_delete"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1806
    :cond_4
    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1807
    .restart local v0    # "deleteCount":I
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onPostDelete(I)V

    goto :goto_0

    .line 1788
    .end local v0    # "deleteCount":I
    :cond_5
    const-string/jumbo v3, "ConversationListModel_post_delete"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Event not handled by onModelChange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 811
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 835
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 813
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->launchConversationListSettingsActivity()V

    .line 814
    return v4

    .line 816
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->startDeleteConversations()V

    .line 817
    return v4

    .line 819
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->launchStarredMessageListActivity()V

    .line 820
    return v4

    .line 822
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onSearchRequested()Z

    .line 823
    return v4

    .line 825
    :pswitch_4
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->shouldEnableGroupChatMenu()Z

    move-result v0

    .line 826
    .local v0, "groupChatMenuEnabled":Z
    if-eqz v0, :cond_0

    .line 827
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->pickContactsForGroupChat()V

    .line 833
    :goto_0
    return v4

    .line 829
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 830
    const v2, 0x7f0b0232

    .line 831
    const/4 v3, 0x0

    .line 829
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 811
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d013e
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 907
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getMenuVisibility()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getGroupChatMenuVisibility()Z

    move-result v0

    .line 908
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNewGroupChatMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNewGroupChatMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->updateNewGroupChatMenuItem(Landroid/view/MenuItem;)V

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNewGroupChatMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 914
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNewGroupChatMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 915
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSettingsMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getMenuVisibility()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 916
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mDeleteConversationsMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getMenuVisibility()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 917
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getDeleteConversationsMenuVisibility()Z

    move-result v1

    .line 916
    :goto_1
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 918
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mStarredMessageMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getMenuVisibility()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 919
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getSearchMenuVisibility()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->shouldEnableGroupChatMenu()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 923
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->shouldShowNewGroupChatTooltip()Z

    move-result v1

    .line 922
    if-eqz v1, :cond_2

    .line 924
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 905
    :cond_2
    :goto_2
    return-void

    .line 907
    :cond_3
    const/4 v0, 0x0

    .local v0, "groupChatMenuVisibility":Z
    goto :goto_0

    .line 916
    .end local v0    # "groupChatMenuVisibility":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 928
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment$13;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$13;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 658
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 659
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .line 660
    .local v0, "conversationListActivity":Lcom/sonyericsson/conversations/ui/ConversationListActivity;
    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v4

    if-nez v4, :cond_2

    .line 662
    :cond_0
    sget-boolean v4, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 663
    const-string/jumbo v4, "NullPointer, ConversationActivityUiController not created as user is no authorised!"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 667
    :cond_1
    return-void

    .line 670
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getConvListContentAreaVisibility()Z

    move-result v3

    .line 672
    .local v3, "isConvListContentAreaVisible":Z
    if-eqz v3, :cond_3

    .line 673
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 674
    const-string/jumbo v5, "input_method"

    .line 673
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 675
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 676
    .local v1, "focusView":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 677
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 682
    .end local v1    # "focusView":Landroid/view/View;
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->asyncDeleteObsoleteThreads()V

    .line 686
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->reload()V

    .line 657
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 507
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 506
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 867
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 870
    :cond_0
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchRequestedByUser:Z

    .line 871
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->updateOptionMenuAndExpandView(Ljava/lang/String;)V

    .line 872
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->updateNewConversationButton(Z)V

    .line 873
    return v2
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 648
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 649
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v0

    .line 650
    .local v0, "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    if-eqz v0, :cond_0

    .line 651
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    invoke-interface {v0, v1}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->registerImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V

    .line 653
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/util/ContactLookup;->addContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 647
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 691
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 693
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->dismiss()V

    .line 697
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v0

    .line 698
    .local v0, "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    if-eqz v0, :cond_1

    .line 700
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    .line 699
    invoke-interface {v0, v1}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->unregisterImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V

    .line 702
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/util/ContactLookup;->removeContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 690
    return-void
.end method

.method public onUpdateContainerView()V
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    if-eqz v0, :cond_0

    .line 1088
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->hasConversations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1089
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->hideEmptyListHint()V

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->showEmptyListHint()V

    goto :goto_0
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 877
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;

    move-result-object v0

    .line 879
    .local v0, "conversationItemManager":Lcom/sonyericsson/conversations/conversation/ConversationItemApi;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->isConversationItemsLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/ConversationListModel;->forceLoad()V

    .line 876
    :cond_0
    return-void
.end method

.method public reloadData()V
    .locals 4

    .prologue
    .line 1736
    invoke-static {}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getLoaderType()Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mLoaderType:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    .line 1737
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->uninitModel(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 1738
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    .line 1739
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ConversationsApp;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mLoaderType:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    .line 1740
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 1738
    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/sonyericsson/conversations/model/ConversationListModel;->initModel(Lcom/sonyericsson/conversations/ConversationsApp;Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;Landroid/app/Activity;)V

    .line 1741
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->restartLoadData()V

    .line 1742
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->updateDefaultSmsBannerVisibility()V

    .line 1735
    return-void
.end method

.method public removeXperiaTransferFooter()V
    .locals 4

    .prologue
    .line 1227
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mXperiaTransferFooterView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1228
    return-void

    .line 1231
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mXperiaTransferFooterView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/SafeListView;->removeFooterView(Landroid/view/View;)Z

    .line 1232
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1233
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1234
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "pref_key_xperia_transfer_show"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1226
    return-void
.end method

.method public declared-synchronized setAllowDeleteObsoleteThreads(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    monitor-enter p0

    .line 1033
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mAllowDeleteObsoleteThreads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1032
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMenuVisibleFlag(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 938
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mIsMenuVisible:Z

    .line 937
    return-void
.end method

.method protected showProgressDialog(I)V
    .locals 4
    .param p1, "messageResourceId"    # I

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->dismissProgressDialog()V

    .line 799
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    .line 797
    return-void
.end method

.method public showXperiaTransferFooter()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 1143
    invoke-static {}, Lcom/android/mms/MmsConfig;->isXperiaTransferPromoEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1144
    return v10

    .line 1148
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 1147
    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1150
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "pref_key_xperia_transfer_show"

    const/4 v8, 0x1

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1152
    .local v4, "showIt":Z
    if-nez v4, :cond_1

    .line 1153
    return v4

    .line 1156
    :cond_1
    const-string/jumbo v5, "pref_key_xperia_transfer_time"

    invoke-interface {v3, v5, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1158
    .local v6, "timeSaved":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1160
    .local v0, "currentTime":J
    cmp-long v5, v6, v12

    if-eqz v5, :cond_3

    .line 1161
    const-wide/32 v8, 0x240c8400

    add-long/2addr v8, v6

    cmp-long v5, v8, v0

    if-gez v5, :cond_2

    .line 1162
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1163
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "pref_key_xperia_transfer_show"

    invoke-interface {v2, v5, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1164
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1165
    const/4 v4, 0x0

    .line 1173
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "showIt":Z
    :cond_2
    :goto_0
    return v4

    .line 1168
    .restart local v4    # "showIt":Z
    :cond_3
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1169
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "pref_key_xperia_transfer_time"

    invoke-interface {v2, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1170
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
