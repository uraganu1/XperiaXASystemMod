.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;
.super Landroid/app/ListFragment;
.source "SmartSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;
.implements Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SearchDataChangeListener;
.implements Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$CapabilitiesRunnable;,
        Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$1;,
        Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;
    }
.end annotation


# static fields
.field private static final ENRICHED_CAPABILITES_DELAY_IN_MILLIS:I = 0x3e8

.field private static final FOOTER_ADD_TO_CONTACT_VIEW_ID:I = 0x2

.field private static final FOOTER_PREPARE_CALL_ID:I = 0x3

.field private static final FOOTER_SEND_MSG_VIEW_ID:I = 0x1

.field private static final KEY_LIST_STATE:Ljava/lang/String; = "listState"

.field private static final KEY_PRESSED_CONTACT_URI:Ljava/lang/String; = "pressedContactUri"

.field private static final MIN_INPUT_LENGTH_FOR_ENRICHED_CAPABILITES:I = 0x6

.field public static final RESULT_ITEM_MENU_ID_ADD_TO_CONTACT:I = 0x67

.field private static final RESULT_ITEM_MENU_ID_BASE:I = 0x64

.field public static final RESULT_ITEM_MENU_ID_EDIT_BEFORE_CALL:I = 0x66

.field public static final RESULT_ITEM_MENU_ID_SEND_MSG:I = 0x65

.field public static final RESULT_ITEM_MENU_ID_VIDEO_CALL:I = 0x69

.field public static final RESULT_ITEM_MENU_ID_VIEW_CONTACT:I = 0x68

.field private static final SEARCH_DELAY_MILLIS:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static final sNumberCapabilitiesHandler:Landroid/os/Handler;


# instance fields
.field private mAddToContactItemView:Landroid/view/View;

.field private mBidiFormatter:Landroid/text/BidiFormatter;

.field private mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

.field private final mCallPlusServiceListener:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

.field private mContactSearch:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;

.field private mCurrentSearchKey:Ljava/lang/String;

.field private mEmptyLabel:Landroid/widget/TextView;

.field private mEnableSmartSearch:Z

.field private mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

.field private mIsCallingAllowed:Z

.field private mIsSearching:Z

.field private mIsSmsAllowed:Z

.field private mIsSmsCapable:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mOnCallingFromListListener:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$OnCallingFromListListener;

.field private mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

.field private mPrepareCallView:Landroid/view/View;

.field private mPreviouslyPressedContactsUri:Landroid/net/Uri;

.field private mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

.field private mSearchDataSync:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

.field private mSendMsgItemView:Landroid/view/View;

.field private mShowVideoButtons:Z

.field private mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCurrentSearchKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mEnableSmartSearch:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Lcom/sonyericsson/android/socialphonebook/DialpadFragment;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPrepareCallView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPreviouslyPressedContactsUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mShowVideoButtons:Z

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPreviouslyPressedContactsUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->doDisplayResult()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->handleShowingVideoCallButton(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->resolveCallComposerAvailability()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->restoreListState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->TAG:Ljava/lang/String;

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->sNumberCapabilitiesHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mEnableSmartSearch:Z

    .line 166
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mOnCallingFromListListener:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$OnCallingFromListListener;

    .line 187
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)V

    .line 186
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCallPlusServiceListener:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    .line 78
    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 654
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 670
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPrepareCallView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 673
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSendMsgItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 674
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSmsAllowed:Z

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mAddToContactItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 679
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 652
    return-void

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$4;-><init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 665
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPreviouslyPressedContactsUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private constructActionView(Landroid/view/LayoutInflater;II)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "iconId"    # I
    .param p3, "textId"    # I

    .prologue
    .line 751
    const v3, 0x7f0400c9

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 752
    .local v1, "result":Landroid/view/View;
    const v3, 0x7f0e004f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 753
    .local v0, "icon":Landroid/widget/ImageView;
    const v3, 0x1020014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 754
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 755
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 756
    return-object v1
.end method

.method private doDisplayResult()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 734
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 735
    return-void

    .line 738
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    if-gtz v1, :cond_2

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSearching:Z

    if-eqz v1, :cond_2

    .line 739
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSmsAllowed:Z

    if-eqz v1, :cond_1

    .line 740
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSendMsgItemView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 742
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mAddToContactItemView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 745
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSearching:Z

    if-eqz v2, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 747
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 733
    return-void

    .line 745
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private handleShowingVideoCallButton(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 578
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->isTriggeredBySmartSearchSelection()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 579
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPreviouslyPressedContactsUri:Landroid/net/Uri;

    if-eqz v10, :cond_0

    :goto_0
    invoke-virtual {v9, v7}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->updateVideoCallButtonVisibility(Z)V

    .line 580
    return-void

    :cond_0
    move v7, v8

    .line 579
    goto :goto_0

    .line 582
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-eq v9, v7, :cond_3

    .line 585
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->updateVideoCallButtonVisibility(Z)V

    .line 586
    return-void

    .line 588
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 589
    const/16 v9, 0xd

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 590
    .local v5, "resultType":I
    if-eqz v5, :cond_4

    .line 591
    if-ne v5, v7, :cond_5

    .line 594
    :cond_4
    const/4 v9, 0x3

    .line 593
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, "number":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getEditText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "dialpadNumber":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 599
    const/4 v9, 0x5

    .line 598
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 601
    .local v0, "contactId":I
    const/16 v9, 0x9

    .line 600
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, "lookupKey":Ljava/lang/String;
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 602
    invoke-static {v9, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 604
    .local v6, "uri":Landroid/net/Uri;
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 605
    .local v3, "lookupUri":Landroid/net/Uri;
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPreviouslyPressedContactsUri:Landroid/net/Uri;

    .line 609
    .end local v0    # "contactId":I
    .end local v1    # "dialpadNumber":Ljava/lang/String;
    .end local v2    # "lookupKey":Ljava/lang/String;
    .end local v3    # "lookupUri":Landroid/net/Uri;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "resultType":I
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_5
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPreviouslyPressedContactsUri:Landroid/net/Uri;

    if-eqz v10, :cond_6

    :goto_1
    invoke-virtual {v9, v7}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->updateVideoCallButtonVisibility(Z)V

    .line 575
    return-void

    :cond_6
    move v7, v8

    .line 609
    goto :goto_1
.end method

.method private resolveCallComposerAvailability()V
    .locals 4

    .prologue
    .line 625
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resolving CallComposer availability for number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCurrentSearchKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 628
    return-void

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCurrentSearchKey:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 633
    return-void

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCurrentSearchKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 638
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not available CallComposer, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCurrentSearchKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is too short."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    return-void

    .line 643
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Posting delayed capabilities handler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCurrentSearchKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$CapabilitiesRunnable;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCurrentSearchKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$CapabilitiesRunnable;-><init>(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;Ljava/lang/String;)V

    .line 645
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->sNumberCapabilitiesHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 624
    return-void
.end method

.method private restoreListState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 760
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 761
    :cond_0
    return-void

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 764
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListState:Landroid/os/Parcelable;

    .line 759
    return-void
.end method

.method private search(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 713
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mEnableSmartSearch:Z

    if-nez v1, :cond_0

    return-void

    .line 714
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->updateVideoCallButtonVisibility(Z)V

    .line 716
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSearching:Z

    .line 717
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->clear()V

    .line 718
    return-void

    .line 720
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 721
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "search("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSearching:Z

    .line 725
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    invoke-direct {v0, p1, p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;-><init>(Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;)V

    .line 726
    .local v0, "searchKey":Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mContactSearch:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->sendSearchMessage(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;J)V

    .line 727
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCurrentSearchKey:Ljava/lang/String;

    .line 712
    return-void
.end method

.method private toggleTextMessaging()V
    .locals 4

    .prologue
    .line 367
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSendMsgItemView:Landroid/view/View;

    const v3, 0x7f0e004f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 368
    .local v0, "sendTextMessageImage":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSendMsgItemView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 369
    .local v1, "sendTextMessageText":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSendMsgItemView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSmsCapable:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 370
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSmsCapable:Z

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 371
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSmsCapable:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 366
    return-void
.end method


# virtual methods
.method public notifyChange()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCurrentSearchKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCurrentSearchKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->search(Ljava/lang/String;)V

    .line 614
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 254
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    .line 255
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 256
    const-string/jumbo v2, "layout_inflater"

    .line 255
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 258
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isSmsAllowed(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSmsAllowed:Z

    .line 259
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isOutgoingCallsAllowed(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsCallingAllowed:Z

    .line 260
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSmsAllowed:Z

    if-eqz v1, :cond_0

    .line 261
    const v1, 0x7f0200d7

    .line 262
    const v2, 0x7f090096

    .line 261
    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->constructActionView(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSendMsgItemView:Landroid/view/View;

    .line 263
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSendMsgItemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 264
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSendMsgItemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    :cond_0
    const v1, 0x7f0200ad

    .line 268
    const v2, 0x7f090099

    .line 267
    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->constructActionView(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mAddToContactItemView:Landroid/view/View;

    .line 269
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mAddToContactItemView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 270
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mAddToContactItemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsCallingAllowed:Z

    if-eqz v1, :cond_1

    .line 273
    const v1, 0x7f020012

    .line 274
    const v2, 0x7f090398

    .line 273
    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->constructActionView(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPrepareCallView:Landroid/view/View;

    .line 275
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPrepareCallView:Landroid/view/View;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPrepareCallView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0214

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mEmptyLabel:Landroid/widget/TextView;

    .line 252
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 284
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 286
    invoke-static {p1}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 288
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    if-nez v1, :cond_0

    .line 290
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCallPlusServiceListener:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    .line 291
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->connect()V

    .line 296
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-direct {v1, p1, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/photomanager/ContactPhotoManager;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    .line 297
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->setCallPlusConnector(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)V

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mContactSearch:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;

    if-nez v1, :cond_2

    .line 302
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mContactSearch:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;

    .line 305
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchDataSync:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    if-nez v1, :cond_3

    .line 306
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchDataSync:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    .line 308
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchDataSync:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->setListener(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SearchDataChangeListener;)V

    .line 310
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->getInstance()Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;

    move-result-object v0

    .line 313
    .local v0, "highlightFactory":Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 314
    const v2, 0x1010039

    const/4 v3, -0x1

    .line 313
    invoke-static {v1, v2, v3}, Lcom/android/contacts/util/ThemeUtils;->getThemeColor(Landroid/content/Context;II)I

    move-result v1

    .line 315
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 316
    const v3, 0x1010435

    const v4, 0x7f080032

    .line 315
    invoke-static {v2, v3, v4}, Lcom/android/contacts/util/ThemeUtils;->getThemeColor(Landroid/content/Context;II)I

    move-result v2

    .line 312
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->setHighlight(II)V

    .line 318
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 319
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->setViltePlugin(Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;)V

    .line 283
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 525
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 539
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClick wrong item"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 527
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getEditText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 530
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getEditText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->launchAddToContacts(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 533
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getEditText()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonymobile/holla/CallPlusIntents;->getCallComposerIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChange(Z)V
    .locals 2
    .param p1, "isVilteSupportChanged"    # Z

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 770
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPreviouslyPressedContactsUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->updateVideoCallButtonVisibility(Z)V

    .line 768
    return-void

    .line 770
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 239
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->addListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V

    .line 241
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    .line 242
    if-eqz p1, :cond_0

    .line 244
    const-string/jumbo v0, "pressedContactUri"

    .line 243
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPreviouslyPressedContactsUri:Landroid/net/Uri;

    .line 245
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPreviouslyPressedContactsUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->updateVideoCallButtonVisibility(Z)V

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 247
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isVideoCallButtonAlwaysVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mShowVideoButtons:Z

    .line 237
    return-void

    .line 245
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 18
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 424
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .local v5, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    if-eqz v13, :cond_0

    .line 431
    iget v13, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v14}, Landroid/widget/ListView;->getCount()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v15}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v15

    sub-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    if-le v13, v14, :cond_1

    .line 432
    :cond_0
    sget-object v13, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "bad index"

    invoke-static {v13, v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void

    .line 425
    .end local v5    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :catch_0
    move-exception v4

    .line 426
    .local v4, "e":Ljava/lang/ClassCastException;
    sget-object v13, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "bad menu"

    invoke-static {v13, v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void

    .line 436
    .end local v4    # "e":Ljava/lang/ClassCastException;
    .restart local v5    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    iget v14, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v13, v14}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 437
    .local v2, "c":Landroid/database/Cursor;
    if-nez v2, :cond_2

    .line 438
    return-void

    .line 441
    :cond_2
    const/4 v10, 0x0

    .line 442
    .local v10, "number":Ljava/lang/String;
    const/4 v9, 0x0

    .line 443
    .local v9, "name":Ljava/lang/String;
    const/4 v3, -0x1

    .line 444
    .local v3, "contactId":I
    const/16 v13, 0xd

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 445
    .local v12, "resultType":I
    if-nez v12, :cond_4

    .line 446
    const/4 v13, 0x3

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 447
    .local v10, "number":Ljava/lang/String;
    const/4 v13, 0x4

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 448
    .local v9, "name":Ljava/lang/String;
    const/4 v13, 0x5

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 456
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "number":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 457
    sget-object v13, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "number empty"

    invoke-static {v13, v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-void

    .line 449
    .local v9, "name":Ljava/lang/String;
    .local v10, "number":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 450
    const/4 v13, 0x3

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 451
    .local v10, "number":Ljava/lang/String;
    const/4 v13, 0x4

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 452
    .local v9, "name":Ljava/lang/String;
    const/4 v13, 0x5

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto :goto_0

    .line 453
    .local v9, "name":Ljava/lang/String;
    .local v10, "number":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 454
    const/4 v13, 0x1

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "number":Ljava/lang/String;
    goto :goto_0

    .line 461
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "number":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    .line 462
    .local v11, "numberUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 463
    .local v8, "isVoicemail":Z
    const/4 v7, 0x0

    .line 465
    .local v7, "isCommonNumber":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13, v10}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isVoiceMailNumberOrUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getVoicemailDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 468
    .restart local v10    # "number":Ljava/lang/String;
    const-string/jumbo v13, "voicemail:x"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 469
    .local v11, "numberUri":Landroid/net/Uri;
    const/4 v8, 0x1

    .line 479
    .end local v10    # "number":Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_7

    .line 481
    if-ltz v3, :cond_e

    .line 482
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.VIEW"

    .line 483
    sget-object v14, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v0, v3

    move-wide/from16 v16, v0

    .line 482
    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 484
    .local v6, "intent":Landroid/content/Intent;
    const/4 v13, 0x0

    const/16 v14, 0x68

    const/4 v15, 0x0

    const v16, 0x7f09006c

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v13

    invoke-interface {v13, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 497
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_7
    :goto_2
    if-eqz v7, :cond_8

    .line 498
    const/4 v13, 0x0

    const/16 v14, 0x66

    const/4 v15, 0x0

    .line 499
    const v16, 0x7f090098

    .line 498
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v13

    .line 500
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v15, "android.intent.action.DIAL"

    invoke-direct {v14, v15, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 501
    const-string/jumbo v15, "internal_intent"

    const/16 v16, 0x1

    .line 500
    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v14

    .line 498
    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 505
    :cond_8
    if-nez v8, :cond_9

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSmsCapable:Z

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSmsAllowed:Z

    if-eqz v13, :cond_9

    .line 506
    const/4 v13, 0x0

    const/16 v14, 0x65

    const/4 v15, 0x0

    const v16, 0x7f090096

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v13

    .line 507
    invoke-static {v10}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getSendMessageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 506
    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 511
    :cond_9
    if-nez v8, :cond_a

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v13}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->isVilteSupported()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 512
    const/4 v13, 0x0

    const/16 v14, 0x69

    const/4 v15, 0x0

    const v16, 0x7f090372

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v13

    .line 513
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v14, v10}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 512
    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 516
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mBidiFormatter:Landroid/text/BidiFormatter;

    invoke-virtual {v13, v9}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 517
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 517
    invoke-static {v13, v10}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .end local v9    # "name":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 520
    invoke-super/range {p0 .. p3}, Landroid/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 421
    return-void

    .line 470
    .local v11, "numberUri":Landroid/net/Uri;
    :cond_c
    invoke-static {v10}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 472
    const-string/jumbo v13, "sip"

    const/4 v14, 0x0

    invoke-static {v13, v10, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .local v11, "numberUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 475
    .local v11, "numberUri":Landroid/net/Uri;
    :cond_d
    const-string/jumbo v13, "tel"

    const/4 v14, 0x0

    invoke-static {v13, v10, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 476
    .local v11, "numberUri":Landroid/net/Uri;
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 490
    :cond_e
    invoke-static {v10, v9}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getAddToContactsIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 491
    .restart local v6    # "intent":Landroid/content/Intent;
    const/4 v13, 0x0

    const/16 v14, 0x67

    const/4 v15, 0x0

    .line 492
    const v16, 0x7f090099

    .line 491
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v13

    invoke-interface {v13, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 230
    if-eqz p3, :cond_0

    .line 231
    const-string/jumbo v0, "listState"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListState:Landroid/os/Parcelable;

    .line 233
    :cond_0
    const v0, 0x7f0400d7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->removeListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V

    .line 401
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchDataSync:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchDataSync:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->destroy()V

    .line 403
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchDataSync:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mContactSearch:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mContactSearch:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->destroy()V

    .line 408
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mContactSearch:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->destroy()V

    .line 413
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    .line 415
    :cond_2
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    .line 416
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->sNumberCapabilitiesHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 417
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 399
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-super {p0}, Landroid/app/ListFragment;->onDetach()V

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->destroy()V

    .line 328
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    .line 330
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchDataSync:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchDataSync:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->setListener(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SearchDataChangeListener;)V

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->disconnect()V

    .line 338
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    .line 323
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->setOnCallingFromListListener(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$OnCallingFromListListener;)V

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 388
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mCurrentSearchKey:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public onQueryComplete(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    :cond_0
    if-eqz p1, :cond_1

    .line 570
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 545
    :cond_1
    :goto_0
    return-void

    .line 547
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSearching:Z

    .line 546
    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;-><init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 351
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 352
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->initLocaleType()I

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mOnCallingFromListListener:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$OnCallingFromListListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->setOnCallingFromListListener(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$OnCallingFromListListener;)V

    .line 354
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSmsCapable:Z

    .line 355
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSmsAllowed:Z

    if-eqz v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->toggleTextMessaging()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 359
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->isSmartSearchEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mEnableSmartSearch:Z

    .line 360
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mIsSearching:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mEnableSmartSearch:Z

    if-eqz v0, :cond_1

    .line 363
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->refreshEmptyLabelText()V

    .line 350
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListState:Landroid/os/Parcelable;

    .line 377
    const-string/jumbo v0, "listState"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 378
    const-string/jumbo v0, "pressedContactUri"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPreviouslyPressedContactsUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 380
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 375
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 782
    const-string/jumbo v0, "smart_search_enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    const-string/jumbo v0, "smart_search_enabled"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mEnableSmartSearch:Z

    .line 783
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mEnableSmartSearch:Z

    .line 785
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->refreshEmptyLabelText()V

    .line 781
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 344
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 345
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 343
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 393
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 394
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 392
    return-void
.end method

.method public onVideoCallEntityChange()V
    .locals 2

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 776
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPreviouslyPressedContactsUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->updateVideoCallButtonVisibility(Z)V

    .line 777
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mSearchAdapter:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->notifyDataSetChanged()V

    .line 774
    return-void

    .line 776
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 688
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mEnableSmartSearch:Z

    if-eqz v0, :cond_2

    .line 689
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mFragment:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->isTriggeredBySmartSearchSelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPreviouslyPressedContactsUri:Landroid/net/Uri;

    .line 695
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->sNumberCapabilitiesHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPrepareCallView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 700
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->search(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->refreshCache()V

    .line 687
    :goto_0
    return-void

    .line 703
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->onQueryComplete(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public refreshEmptyLabelText()V
    .locals 2

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mEnableSmartSearch:Z

    if-nez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mEmptyLabel:Landroid/widget/TextView;

    const v1, 0x7f090366

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 789
    :goto_0
    return-void

    .line 792
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->isSmartSearchLanguageSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mEmptyLabel:Landroid/widget/TextView;

    const v1, 0x7f090365

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mEmptyLabel:Landroid/widget/TextView;

    const v1, 0x7f090364

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setEnableSmartSearch(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 621
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->mEnableSmartSearch:Z

    .line 620
    return-void
.end method
